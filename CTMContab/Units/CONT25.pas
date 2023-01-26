unit CONT25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, StdCtrls, Spin, Buttons, ExtCtrls, IdMessageClient,
  IdSMTP, idMessage, QRPDFFilt, QuickRpt, QRCtrls, DBCtrls, DB, ADODB;

type
  TfrmRepSituacion = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    spAno: TSpinEdit;
    cbMes: TComboBox;
    ckConsol: TCheckBox;
    ckmail: TCheckBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label15: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label1: TLabel;
    edinvfinal: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnvioMail (Rep : TQuickRep);
  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');

var
  frmRepSituacion: TfrmRepSituacion;

implementation

uses RCONT11, RCONT14, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmRepSituacion.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  cbMes.ItemIndex := MonthOf(Date)-1;
  edinvfinal.Text := '0.00';
end;

procedure TfrmRepSituacion.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepSituacion.BitBtn2Click(Sender: TObject);
var
  Mes : String;
begin
  Application.CreateForm(tRepEstadoSituacion, RepEstadoSituacion);
  Mes := UpperCase(DMes[cbMes.ItemIndex+1]);
  RepEstadoSituacion.lbFecha.Caption := 'Al '+IntToStr(DaysInAMonth(spAno.Value,
                                    cbMes.ItemIndex+1))+' De '+
                                    DMes[cbMes.ItemIndex+1]+' Del '+
                                    IntToStr(spAno.Value);
  RepEstadoSituacion.QCuentas.SQL.Clear;
  if ckConsol.Checked then
  begin
    RepEstadoSituacion.QCuentas.SQL.Add('SELECT cuenta, nombre, balance, isnull(nivel,0) as nivel, isnull(negrita,'+QuotedStr('N')+') as negrita,');
    RepEstadoSituacion.QCuentas.SQL.Add('balancecontrol from ');
    RepEstadoSituacion.QCuentas.SQL.Add('contpr_estadosituacion'+Copy(Mes,1,3)+
                                    ' (:ano)');
    RepEstadoSituacion.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;
  end
  else
  begin
    RepEstadoSituacion.QCuentas.SQL.Add('SELECT cuenta, nombre, balance, isnull(nivel,0) as nivel, isnull(negrita,'+QuotedStr('N')+') as negrita,');
    RepEstadoSituacion.QCuentas.SQL.Add('balancecontrol from ');
    RepEstadoSituacion.QCuentas.SQL.Add('contpr_estadosituacion (:emp, :suc, :ano, :mes, '+edinvfinal.Text+')');
    RepEstadoSituacion.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;
    RepEstadoSituacion.QCuentas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RepEstadoSituacion.QCuentas.Parameters.ParamByName('mes').Value := cbMes.ItemIndex + 1;
    RepEstadoSituacion.QCuentas.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  end;
  RepEstadoSituacion.lbConsol.Enabled := ckConsol.Checked;
  RepEstadoSituacion.QCuentas.Open;
  if ckmail.Checked then
    try
      EnvioMail(RepEstadoSituacion);
    finally
      RepEstadoSituacion.destroy;
    end
  else
  begin
    RepEstadoSituacion.PrinterSetup;
    RepEstadoSituacion.Preview;
    RepEstadoSituacion.Destroy;
  end;
end;

procedure TfrmRepSituacion.FormActivate(Sender: TObject);
begin
  edinvfinal.Visible := dm.QContabpar_estado_resultado_inventario.Value = 'True';
  Label1.Visible := dm.QContabpar_estado_resultado_inventario.Value = 'True';
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  ckConsol.Visible := dm.QEmpresasEMP_PUEDECONSOLIDAR.Value = 'True';
end;

procedure TfrmRepSituacion.EnvioMail(Rep: TQuickRep);
var
   MailMsg : TIdMessage;
   Archivo : TIdAttachment;
   nArchivo : string;
begin
   nArchivo := InputBox('Envio de Mail','Correo : ','');
   if trim(nArchivo) <> '' then
   begin
     frmMain.filtroreporte := TQRPDFDocumentFilter.Create('c:\EstadoSituacion.pdf');
     Rep.ExportToFilter(frmMain.filtroreporte);
     if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
     MailMsg := TidMessage.Create(frmMain.IdSMTP1);
     MailMsg.Subject      := 'Estado de Situacion';
     MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
     MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
     MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
     MailMsg.Recipients.Add;
     MailMsg.Recipients.Items[0].Address := nArchivo;
     //TIdAttachment.Create(MailMsg.MessageParts, 'c:\EstadoSituacion.pdf');
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

procedure TfrmRepSituacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
