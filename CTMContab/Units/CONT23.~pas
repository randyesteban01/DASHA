unit CONT23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DateUtils,  QuerySearchDlgADO, Db, IdMessageClient,
  IdSMTP, idMessage, QRPDFFilt, QuickRpt, QRCtrls, DBCtrls, ADODB;

type
  TfrmRepMayorGeneral = class(TForm)
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Label1: TLabel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    btCuenta1: TSpeedButton;
    btCuenta2: TSpeedButton;
    Label4: TLabel;
    edCuenta1: TEdit;
    tCuenta1: TEdit;
    edCuenta2: TEdit;
    tCuenta2: TEdit;
    ckBalance: TCheckBox;
    Search: TQrySearchDlgADO;
    ckSumar: TCheckBox;
    ckmail: TCheckBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btCuenta1Click(Sender: TObject);
    procedure btCuenta2Click(Sender: TObject);
    procedure edCuenta1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCuenta2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnvioMail (Rep : TQuickRep);
  end;

var
  frmRepMayorGeneral: TfrmRepMayorGeneral;

implementation

uses RCONT10, SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmRepMayorGeneral.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmRepMayorGeneral.FormCreate(Sender: TObject);
begin
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_cuenta, cat_nombre from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('order by cat_cuenta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Open;
  edCuenta1.Text := dm.Query1.FieldByName('cat_cuenta').AsString;
  tCuenta1.Text  := dm.Query1.FieldByName('cat_nombre').AsString;
  dm.Query1.Last;
  edCuenta2.Text := dm.Query1.FieldByName('cat_cuenta').AsString;
  tCuenta2.Text  := dm.Query1.FieldByName('cat_nombre').AsString;
end;

procedure TfrmRepMayorGeneral.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepMayorGeneral.btCuenta1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    edCuenta1.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value  := Trim(edCuenta1.Text);
    dm.Query1.Open;
    tCuenta1.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    edCuenta1.SetFocus;
  end;
end;

procedure TfrmRepMayorGeneral.btCuenta2Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    edCuenta2.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value  := Trim(edCuenta2.Text);
    dm.Query1.Open;
    tCuenta2.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    edCuenta2.SetFocus;
  end;
end;

procedure TfrmRepMayorGeneral.edCuenta1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCuenta1.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cat_cuenta = :cta');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('cta').Value  := Trim(edCuenta1.Text);
      dm.Query1.Open;
      tCuenta1.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end;
  end;
end;

procedure TfrmRepMayorGeneral.edCuenta2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCuenta2.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cat_cuenta = :cta');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('cta').Value  := Trim(edCuenta2.Text);
      dm.Query1.Open;
      tCuenta2.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end;
  end;
end;

procedure TfrmRepMayorGeneral.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRepMayorGeneral, RepMayorGeneral);
  RepMayorGeneral.ckBalance := ckBalance.Checked;
  RepMayorGeneral.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+
                                     DateToStr(Fecha2.Date);
  RepMayorGeneral.Fecha1 := Fecha1.Date;
  RepMayorGeneral.Fecha2 := Fecha2.Date;
  RepMayorGeneral.lbTotal1.Enabled := ckSumar.Checked;
  RepMayorGeneral.lbTotal4.Enabled := ckSumar.Checked;
  RepMayorGeneral.Suc := DBLookupComboBox2.KeyValue;
  RepMayorGeneral.QCatalogo.Parameters.ParamByName('cta1').Value := edCuenta1.Text;
  RepMayorGeneral.QCatalogo.Parameters.ParamByName('cta2').Value := edCuenta2.Text;
  RepMayorGeneral.QCatalogo.Open;
  RepMayorGeneral.QDoc.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepMayorGeneral.QDoc.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepMayorGeneral.QDoc.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepMayorGeneral.QDoc.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RepMayorGeneral.QDoc.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RepMayorGeneral.QDoc.Open;
  if ckmail.Checked then
    try
      EnvioMail(RepMayorGeneral);
    finally
      RepMayorGeneral.destroy;
    end
  else
  begin
    RepMayorGeneral.PrinterSetup;
    RepMayorGeneral.Preview;
    RepMayorGeneral.Destroy;
  end;
end;

procedure TfrmRepMayorGeneral.EnvioMail(Rep: TQuickRep);
var
   MailMsg : TIdMessage;
   //Archivo : TIdAttachment;
   nArchivo : string;
begin
   nArchivo := InputBox('Envio de Mail','Correo : ','');
   if trim(nArchivo) <> '' then
   begin
     frmMain.filtroreporte := TQRPDFDocumentFilter.Create('c:\MayorGeneral.pdf');
     Rep.ExportToFilter(frmMain.filtroreporte);
     if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
     MailMsg := TidMessage.Create(frmMain.IdSMTP1);
     MailMsg.Subject      := 'Mayor General';
     MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
     MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
     MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
     MailMsg.Recipients.Add;
     MailMsg.Recipients.Items[0].Address := nArchivo;

  //   TIdAttachmentFile.Create(MailMsg.MessageParts, 'c:\MayorGeneral.pdf');

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

procedure TfrmRepMayorGeneral.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.PAramByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepMayorGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
