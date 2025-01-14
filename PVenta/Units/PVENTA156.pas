unit PVENTA156;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, ComCtrls, DB, ADODB,
  QuerySearchDlgADO, QuickRpt, idMessage, QRPDFFilt, QRCtrls;

type
  TfrmRepHistorialSuplidor = class(TForm)
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    edHasta: TEdit;
    tHasta: TEdit;
    Label5: TLabel;
    Fecha1: TDateTimePicker;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    cbDestino: TRadioGroup;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    ckmail: TCheckBox;
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label1: TLabel;
    Fecha2: TDateTimePicker;
    procedure FormActivate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edHastaChange(Sender: TObject);
    procedure edHastaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Bal : Double;
    procedure EnvioMail (Rep : TQuickRep);
  end;

var
  frmRepHistorialSuplidor: TfrmRepHistorialSuplidor;

implementation

uses SIGMA01, RVENTA78, SIGMA00;

{$R *.dfm}

procedure TfrmRepHistorialSuplidor.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepHistorialSuplidor.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRepHistorialSuplidor.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmRepHistorialSuplidor.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'sup_Codigo';
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edHasta.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_nombre, sup_codigo, sup_balance from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = '+trim(edHasta.text));
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVEEDOR NO EXISTE',mterror,[mbok],0)
    else
    begin
      tHasta.text := dm.Query1.fieldbyname('sup_nombre').asstring;
      Bal := dm.Query1.fieldbyname('sup_balance').ASFloat;
    end;
    edHasta.setfocus;
  end;
end;

procedure TfrmRepHistorialSuplidor.edHastaChange(Sender: TObject);
begin
  if trim(edHasta.text) = '' then tHasta.text := '';
end;

procedure TfrmRepHistorialSuplidor.edHastaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edHasta.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_nombre, sup_balance from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_codigo = '+Trim(edHasta.Text));
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVEEDOR NO EXISTE',mterror,[mbok],0);
        edHasta.SetFocus;
      end
      else
      begin
        tHasta.text := dm.Query1.fieldbyname('sup_nombre').asstring;
        Bal := dm.Query1.fieldbyname('sup_balance').ASFloat;
      end;
    end;
  end;
end;

procedure TfrmRepHistorialSuplidor.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRRepHistorialSup, RRepHistorialSup);
  RRepHistorialSup.lbBalance.Caption := 'Balance: '+format('%n',[Bal]);
  RRepHistorialSup.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+ ' Al ' + DateToStr(Fecha2.Date);
  RRepHistorialSup.lbSuplidor.Caption := tHasta.Text;
  RRepHistorialSup.QHistorial.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  RRepHistorialSup.QHistorial.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  RRepHistorialSup.QHistorial.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RRepHistorialSup.QHistorial.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RRepHistorialSup.QHistorial.Parameters.ParamByName('sup').Value  := StrToInt(edHasta.Text);
  RRepHistorialSup.QHistorial.Open;
  if ckmail.Checked then
    try
      EnvioMail(RRepHistorialSup);
    finally
      RRepHistorialSup.destroy;
    end
  else
  begin
    RRepHistorialSup.PrinterSetup;
    if cbDestino.ItemIndex = 0 then
      RRepHistorialSup.Preview
    else
      RRepHistorialSup.print;
    RRepHistorialSup.Destroy;
  end;
end;

procedure TfrmRepHistorialSuplidor.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepHistorialSuplidor.EnvioMail(Rep: TQuickRep);
var
   MailMsg : TIdMessage;
   //Archivo : TIdAttachment;
   nArchivo : string;
begin
   nArchivo := InputBox('Envio de Mail','Correo : ','');
   if trim(nArchivo) <> '' then
   begin
     frmMain.filtroreporte := TQRPDFDocumentFilter.Create('c:\historialproveedor.pdf');
     Rep.ExportToFilter(frmMain.filtroreporte);
     if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
     MailMsg := TidMessage.Create(frmMain.IdSMTP1);
     MailMsg.Subject      := 'Historial';
     MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
     MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
     MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
     MailMsg.Recipients.Add;
     MailMsg.Recipients.Items[0].Address := nArchivo;
    // TIdAttachmentFile.Create(MailMsg.MessageParts, 'c:\historialproveedor.pdf');
     frmMain.IdSMTP1.Host := dm.QParametrospar_mailservidor.Value;
     frmMain.IdSMTP1.Port := dm.QParametrospar_mailpuerto.AsInteger;
     frmMain.IdSMTP1.Username := dm.QParametrospar_mailusuario.Value;
     frmMain.IdSMTP1.Password := dm.QParametrospar_mailclave.Value;
     frmMain.IdSMTP1.Connect();
     frmMain.IdSMTP1.Send(MailMsg);
     frmMain.IdSMTP1.Disconnect;
     MailMsg.Free;
     frmMain.filtroreporte.Free;
   end;
end;

procedure TfrmRepHistorialSuplidor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
