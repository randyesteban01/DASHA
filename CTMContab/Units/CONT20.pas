unit CONT20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DateUtils, ExtCtrls, IdMessageClient,
  IdSMTP, idMessage, QRPDFFilt, QuickRpt, QRCtrls, DB, ADODB, DBCtrls;

type
  TfrmRepResultado = class(TForm)
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    spAno: TSpinEdit;
    cbMes: TComboBox;
    rbTipo: TRadioGroup;
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
    procedure rbTipoClick(Sender: TObject);
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
  frmRepResultado: TfrmRepResultado;

implementation

uses RCONT09, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmRepResultado.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  cbMes.ItemIndex := MonthOf(Date)-1;
  edinvfinal.Text := '0.00';
end;

procedure TfrmRepResultado.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepResultado.BitBtn2Click(Sender: TObject);
var
  Mes : String;
  mes1, mes2 : integer;
begin
  if Trim(edinvfinal.Text) = '' then edinvfinal.Text := '0.00';
  
  Application.CreateForm(tRepEstResultado, RepEstResultado);
  RepEstResultado.ano := spAno.Value;
  RepEstResultado.mes := cbMes.ItemIndex + 1;
  RepEstResultado.QCuentas.SQL.Clear;
  RepEstResultado.QCuentas.Parameters.Clear;
  RepEstResultado.QCuentas.SQL.Add('SELECT *');
  RepEstResultado.QCuentas.SQL.Add('FROM');
  Mes := UpperCase(DMes[cbMes.ItemIndex+1]);
  if rbTipo.ItemIndex = 0 then
  begin
    RepEstResultado.lbFecha.Caption := 'Al '+IntToStr(DaysInAMonth(spAno.Value,
                                    cbMes.ItemIndex+1))+' De '+
                                    DMes[cbMes.ItemIndex+1]+' Del '+
                                    IntToStr(spAno.Value);

    if not ckConsol.Checked then
       RepEstResultado.QCuentas.SQL.Add('CONTPR_ESTRESULTADO (:emp_codigo, :suc, :ano, :mes, '+edinvfinal.Text+')')
    else
       RepEstResultado.QCuentas.SQL.Add('CONTPR_ESTRESCONSOL (:suc, :ano, :mes)');

    RepEstResultado.QCuentas.Parameters.ParamByName('mes').Value := cbMes.ItemIndex + 1;
  end
  else if rbTipo.ItemIndex = 1 then
  begin
    RepEstResultado.QCuentas.SQL.Add('CONTPR_ESTRESULTADOTRI (:emp_codigo, :suc, :ano, :mes1, :mes2)');
    RepEstResultado.QCuentas.Parameters.ParamByName('mes1').DataType := ftInteger;
    RepEstResultado.QCuentas.Parameters.ParamByName('mes2').DataType := ftInteger;

    case cbMes.ItemIndex of
    0 : begin
          RepEstResultado.QCuentas.Parameters.ParamByName('mes1').Value := 1;
          RepEstResultado.QCuentas.Parameters.ParamByName('mes2').Value := 3;
          mes1 := 1;
          mes2 := 3;
          RepEstResultado.lbFecha.Caption := 'Trimestre '+DMes[1]+'-'+DMes[3]+
                                             ' Del '+IntToStr(spAno.Value);
          RepEstResultado.lbFec2.Caption := IntToStr(DayOf(EndOfAMonth(spAno.value,3)))+
                                            '/'+DMes[3]+'/'+IntToStr(spAno.Value);
          RepEstResultado.lbAnt2.Caption := Copy(DMes[10],1,3)+'/'+IntToStr(spAno.Value-1)+'-'+
                                            Copy(DMes[12],1,3)+'/'+IntToStr(spAno.Value-1);
        end;
    1 : begin
          RepEstResultado.QCuentas.Parameters.ParamByName('mes1').Value := 4;
          RepEstResultado.QCuentas.Parameters.ParamByName('mes2').Value := 6;
          mes1 := 4;
          mes2 := 6;
          RepEstResultado.lbFecha.Caption := 'Trimestre '+DMes[4]+'-'+DMes[6]+
                                             ' Del '+IntToStr(spAno.Value);
          RepEstResultado.lbFec2.Caption := IntToStr(DayOf(EndOfAMonth(spAno.value,6)))+
                                            '/'+DMes[6]+'/'+IntToStr(spAno.Value);
          RepEstResultado.lbAnt2.Caption := Copy(DMes[1],1,3)+'/'+IntToStr(spAno.Value)+'-'+
                                            Copy(DMes[3],1,3)+'/'+IntToStr(spAno.Value);
        end;
    2 : begin
          RepEstResultado.QCuentas.Parameters.ParamByName('mes1').Value := 7;
          RepEstResultado.QCuentas.Parameters.ParamByName('mes2').Value := 9;
          mes1 := 7;
          mes2 := 9;
          RepEstResultado.lbFecha.Caption := 'Trimestre '+DMes[7]+'-'+DMes[9]+
                                             ' Del '+IntToStr(spAno.Value);
          RepEstResultado.lbFec2.Caption := IntToStr(DayOf(EndOfAMonth(spAno.value,9)))+
                                            '/'+DMes[9]+'/'+IntToStr(spAno.Value);
          RepEstResultado.lbAnt2.Caption := Copy(DMes[4],1,3)+'/'+IntToStr(spAno.Value)+'-'+
                                            Copy(DMes[6],1,3)+'/'+IntToStr(spAno.Value);
        end;
    3 : begin
          RepEstResultado.QCuentas.Parameters.ParamByName('mes1').Value := 10;
          RepEstResultado.QCuentas.Parameters.ParamByName('mes2').Value := 12;
          mes1 := 10;
          mes2 := 12;
          RepEstResultado.lbFecha.Caption := 'Trimestre '+DMes[10]+'-'+DMes[12]+
                                             ' Del '+IntToStr(spAno.Value);
          RepEstResultado.lbFec2.Caption := IntToStr(DayOf(EndOfAMonth(spAno.value,12)))+
                                            '/'+DMes[12]+'/'+IntToStr(spAno.Value);
          RepEstResultado.lbAnt2.Caption := Copy(DMes[7],1,3)+'/'+IntToStr(spAno.Value)+'-'+
                                            Copy(DMes[9],1,3)+'/'+IntToStr(spAno.Value);
        end;
    end;
    RepEstResultado.lbFec1.Caption := 'Balance al';
    RepEstResultado.lbAnt1.Caption := 'Trimestre';
    RepEstResultado.lbAct1.Caption := 'Trimestre';
    RepEstResultado.lbAct2.Caption := Copy(DMes[mes1],1,3)+'/'+
                                      IntToStr(spAno.Value)+'-'+
                                      Copy(DMes[mes2],1,3)+'/'+
                                      IntToStr(spAno.Value);
  end
  else if rbTipo.ItemIndex = 2 then
  begin
    RepEstResultado.QCuentas.SQL.Add('CONTPR_ESTRESULTADOSEM (:emp_codigo, :suc, :ano, :mes1, :mes2)');
    RepEstResultado.QCuentas.Parameters.ParamByName('mes1').DataType := ftInteger;
    RepEstResultado.QCuentas.Parameters.ParamByName('mes2').DataType := ftInteger;

    case cbMes.ItemIndex of
    0 : begin
          RepEstResultado.QCuentas.Parameters.ParamByName('mes1').Value := 1;
          RepEstResultado.QCuentas.Parameters.ParamByName('mes2').Value := 6;
          mes1 := 1;
          mes2 := 6;
          RepEstResultado.lbFecha.Caption := 'Semestre '+DMes[1]+'-'+DMes[6]+
                                             ' Del '+IntToStr(spAno.Value);
          RepEstResultado.lbFec2.Caption := IntToStr(DayOf(EndOfAMonth(spAno.value,6)))+
                                            '/'+DMes[6]+'/'+IntToStr(spAno.Value);
          RepEstResultado.lbAnt2.Caption := Copy(DMes[7],1,3)+'/'+IntToStr(spAno.Value-1)+'-'+
                                            Copy(DMes[12],1,3)+'/'+IntToStr(spAno.Value-1);
        end;
    1 : begin
          RepEstResultado.QCuentas.Parameters.ParamByName('mes1').Value := 7;
          RepEstResultado.QCuentas.Parameters.ParamByName('mes2').Value := 12;
          mes1 := 7;
          mes2 := 12;
          RepEstResultado.lbFecha.Caption := 'Semestre '+DMes[7]+'-'+DMes[12]+
                                             ' Del '+IntToStr(spAno.Value);
          RepEstResultado.lbFec2.Caption := IntToStr(DayOf(EndOfAMonth(spAno.value,12)))+
                                            '/'+DMes[12]+'/'+IntToStr(spAno.Value);
          RepEstResultado.lbAnt2.Caption := Copy(DMes[1],1,3)+'/'+IntToStr(spAno.Value)+'-'+
                                            Copy(DMes[6],1,3)+'/'+IntToStr(spAno.Value);
        end;
    end;
    RepEstResultado.lbFec1.Caption := 'Balance al';
    RepEstResultado.lbAnt1.Caption := 'Semestre';
    RepEstResultado.lbAct1.Caption := 'Semestre';
    RepEstResultado.lbAct2.Caption := Copy(DMes[mes1],1,3)+'/'+
                                      IntToStr(spAno.Value)+'-'+
                                      Copy(DMes[mes2],1,3)+'/'+
                                      IntToStr(spAno.Value);
  end;
  if not ckConsol.Checked then
     RepEstResultado.QCuentas.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;

  RepEstResultado.lbConsol.Enabled := ckConsol.Checked;
  RepEstResultado.QCuentas.Parameters.ParamByName('ano').DataType := ftInteger;
  RepEstResultado.QCuentas.Parameters.ParamByName('suc').DataType := ftInteger;
  RepEstResultado.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;
  RepEstResultado.QCuentas.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RepEstResultado.QCuentas.Open;
  if ckmail.Checked then
    try
      EnvioMail(RepEstResultado);
    finally
      RepEstResultado.destroy;
    end
  else
  begin
    RepEstResultado.PrinterSetup;
    RepEstResultado.Preview;
    RepEstResultado.Destroy;
  end;
end;

procedure TfrmRepResultado.rbTipoClick(Sender: TObject);
var
  a : integer;
begin
//  spAno.Value := YearOf(Date);
  cbMes.Items.Clear;
  Case rbTipo.ItemIndex of
  0 : Begin
        for a := 1 to 12 do
           cbMes.Items.Add(DMes[a]);
        cbMes.ItemIndex := MonthOf(Date)-1;
      End;
  1 : Begin
        cbMes.Items.Add('Enero - Marzo');
        cbMes.Items.Add('Abril - Junio');
        cbMes.Items.Add('Julio - Septiembre');
        cbMes.Items.Add('Octubre - Diciembre');
        if MonthOf(Date) in [1,2,3] then
          cbMes.ItemIndex := 0
        else if MonthOf(Date) in [4,5,6] then
          cbMes.ItemIndex := 1
        else if MonthOf(Date) in [7,8,9] then
          cbMes.ItemIndex := 2
        else if MonthOf(Date) in [10,11,12] then
          cbMes.ItemIndex := 3;
      End;
  2 : Begin
        cbMes.Items.Add('Enero - Junio');
        cbMes.Items.Add('Julio - Diciembre');
        if MonthOf(Date) in [1,2,3,4,5,6] then
          cbMes.ItemIndex := 0
        else if MonthOf(Date) in [7,8,9,10,11,12] then
          cbMes.ItemIndex := 1;
      End;
  End;
end;

procedure TfrmRepResultado.FormActivate(Sender: TObject);
begin
  edinvfinal.Visible := dm.QContabpar_estado_resultado_inventario.Value = 'True';
  Label1.Visible := dm.QContabpar_estado_resultado_inventario.Value = 'True';

  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByNAme('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  ckConsol.Visible := dm.QEmpresasEMP_PUEDECONSOLIDAR.Value = 'True';
end;

procedure TfrmRepResultado.EnvioMail(Rep: TQuickRep);
var
   MailMsg : TIdMessage;
   Archivo : TIdAttachment;
   nArchivo : string;
begin
   nArchivo := InputBox('Envio de Mail','Correo : ','');
   if trim(nArchivo) <> '' then
   begin
     frmMain.filtroreporte := TQRPDFDocumentFilter.Create('c:\EstadoResultado.pdf');
     Rep.ExportToFilter(frmMain.filtroreporte);
     if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
     MailMsg := TidMessage.Create(frmMain.IdSMTP1);
     MailMsg.Subject      := 'Estado de Resultado';
     MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
     MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
     MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
     MailMsg.Recipients.Add;
     MailMsg.Recipients.Items[0].Address := nArchivo;
     //TIdAttachment.Create(MailMsg.MessageParts, 'c:\EstadoResultado.pdf');
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

procedure TfrmRepResultado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
