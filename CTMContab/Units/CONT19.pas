unit CONT19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DateUtils,
  QuerySearchDlgADO, IdMessageClient, 
  IdSMTP, idMessage, QRPDFFilt, QuickRpt, QRCtrls, DBCtrls, DB, ADODB;

type
  TfrmRepDiario = class(TForm)
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Label1: TLabel;
    Label3: TLabel;
    edEntrada1: TEdit;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    edEntrada2: TEdit;
    Label2: TLabel;
    btCuenta1: TSpeedButton;
    edCuenta1: TEdit;
    tCuenta1: TEdit;
    btCuenta2: TSpeedButton;
    edCuenta2: TEdit;
    tCuenta2: TEdit;
    Label4: TLabel;
    Search: TQrySearchDlgADO;
    Label5: TLabel;
    Lista: TListBox;
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
    procedure BitBtn2Click(Sender: TObject);
    procedure btCuenta1Click(Sender: TObject);
    procedure btCuenta2Click(Sender: TObject);
    procedure edCuenta1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCuenta2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnvioMail (Rep : TQuickRep);
  end;

var
  frmRepDiario: TfrmRepDiario;

implementation

uses RCONT08, IBQuery, SIGMA00, SIGMA01, RCONT23;

{$R *.dfm}

procedure TfrmRepDiario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmRepDiario.FormCreate(Sender: TObject);
begin
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);
  Lista.ItemIndex := 4;

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

procedure TfrmRepDiario.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepDiario.BitBtn2Click(Sender: TObject);
var
  a : integer;
begin
  if (Trim(edEntrada1.Text) <> '') and (Trim(edEntrada2.Text) <> '') then
  Begin
    Screen.Cursor := crSQLWait;
    Application.CreateForm(tRepDiarioGeneral, RepDiarioGeneral);
    RepDiarioGeneral.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+
                                        DateToStr(Fecha2.Date);
    RepDiarioGeneral.lbCuenta.Caption  := edCuenta1.Text+' - '+tCuenta1.Text;
    RepDiarioGeneral.lbCuenta2.Caption := edCuenta2.Text+' - '+tCuenta2.Text;
    Case Lista.ItemIndex of
    0 : RepDiarioGeneral.QTrans.SQL.Add('ORDER BY E.ENT_NUMERO');
    1 : RepDiarioGeneral.QTrans.SQL.Add('ORDER BY E.TRA_FECHA');
    2 : RepDiarioGeneral.QTrans.SQL.Add('ORDER BY E.TRA_DOC');
    3 : RepDiarioGeneral.QTrans.SQL.Add('ORDER BY E.TDO_CODIGO');
    4 : RepDiarioGeneral.QTrans.SQL.Add('ORDER BY E.ENT_NUMERO, E.TRA_FECHA');
    5 : RepDiarioGeneral.QTrans.SQL.Add('ORDER BY E.ENT_NUMERO, E.TRA_FECHA, E.TRA_DOC');
    6 : RepDiarioGeneral.QTrans.SQL.Add('ORDER BY E.ENT_NUMERO, E.TRA_DOC');
    7 : RepDiarioGeneral.QTrans.SQL.Add('ORDER BY E.TRA_FECHA, E.TRA_DOC');
    8 : RepDiarioGeneral.QTrans.SQL.Add('ORDER BY E.TDO_CODIGO, E.TRA_FECHA');
    9 : RepDiarioGeneral.QTrans.SQL.Add('ORDER BY E.TDO_CODIGO, E.TRA_DOC');
    End;
    RepDiarioGeneral.QTrans.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    RepDiarioGeneral.QTrans.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    RepDiarioGeneral.QTrans.Parameters.ParamByName('ent1').Value := StrToInt(Trim(edEntrada1.Text));
    RepDiarioGeneral.QTrans.Parameters.ParamByName('ent2').Value := StrToInt(Trim(edEntrada2.Text));
    RepDiarioGeneral.QTrans.Parameters.ParamByName('cuenta1').Value  := Trim(edCuenta1.Text);
    RepDiarioGeneral.QTrans.Parameters.ParamByName('cuenta2').Value  := Trim(edCuenta2.Text);
    RepDiarioGeneral.QTrans.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
    RepDiarioGeneral.QTrans.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
    RepDiarioGeneral.QTrans.Open;
    RepDiarioGeneral.QDetalle.Open;
    Screen.Cursor := crDefault;
    if ckmail.Checked then
      try
        EnvioMail(RepDiarioGeneral);
      finally
        RepDiarioGeneral.destroy;
      end
    else
    begin
      RepDiarioGeneral.PrinterSetup;
      RepDiarioGeneral.Preview;
      RepDiarioGeneral.Destroy;
    end;
  end
  else
    MessageDlg('DEBE ESPECIFICAR LOS NUMEROS DE ENTRADA',mtError,[mbok],0);
end;

procedure TfrmRepDiario.btCuenta1Click(Sender: TObject);
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

procedure TfrmRepDiario.btCuenta2Click(Sender: TObject);
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

procedure TfrmRepDiario.edCuenta1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmRepDiario.edCuenta2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmRepDiario.EnvioMail(Rep: TQuickRep);
var
   MailMsg : TIdMessage;
   Archivo : TIdAttachment;
   nArchivo : string;
begin
   nArchivo := InputBox('Envio de Mail','Correo : ','');
   if trim(nArchivo) <> '' then
   begin
     frmMain.filtroreporte := TQRPDFDocumentFilter.Create('c:\DiarioGeneral.pdf');
     Rep.ExportToFilter(frmMain.filtroreporte);
     if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
     MailMsg := TidMessage.Create(frmMain.IdSMTP1);
     MailMsg.Subject      := 'Diario General';
     MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
     MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
     MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
     MailMsg.Recipients.Add;
     MailMsg.Recipients.Items[0].Address := nArchivo;
     //TIdAttachment.Create(MailMsg.MessageParts, 'c:\DiarioGeneral.pdf');
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

procedure TfrmRepDiario.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
