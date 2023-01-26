unit CONT21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, StdCtrls, Spin, Buttons, ExtCtrls, IdMessageClient,
  IdSMTP, idMessage, QRPDFFilt, QuickRpt, QRCtrls, DBCtrls, DB, ADODB;

type
  TfrmRepBalComprobacion = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    spAno: TSpinEdit;
    cbMes: TComboBox;
    rgTipo: TRadioGroup;
    ckDetallado: TCheckBox;
    ckConsol: TCheckBox;
    ckmail: TCheckBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    cksucursal: TCheckBox;
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
  frmRepBalComprobacion: TfrmRepBalComprobacion;

implementation

uses RCONT11, SIGMA01, RCONT23, SIGMA00, RCONT33;

{$R *.dfm}

procedure TfrmRepBalComprobacion.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  cbMes.ItemIndex := MonthOf(Date)-1;
end;

procedure TfrmRepBalComprobacion.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepBalComprobacion.BitBtn2Click(Sender: TObject);
var
  Mes : String;
  Tipo : String;
begin
  screen.Cursor := crHourGlass;
  if rgTipo.ItemIndex = 0 then
  begin
    Application.CreateForm(tRepBalanceComp, RepBalanceComp);
    Mes := UpperCase(DMes[cbMes.ItemIndex+1]);
    RepBalanceComp.Detalle := ckDetallado.Checked;
    RepBalanceComp.lbFecha.Caption := 'Al '+IntToStr(DaysInAMonth(spAno.Value,
                                      cbMes.ItemIndex+1))+' De '+
                                      DMes[cbMes.ItemIndex+1]+' Del '+
                                      IntToStr(spAno.Value);
    RepBalanceComp.QCuentas.Close;
    //RepBalanceComp.QCuentas.SQL.Clear;
    if ckConsol.Checked then
    begin
      //RepBalanceComp.QCuentas.SQL.Add('SELECT * FROM');
      //RepBalanceComp.QCuentas.SQL.Add('CONTPR_BCE_COMP_CONS (:ANO, :suc, :mes)');
      //RepBalanceComp.QCuentas.Parameters.ParamByName('mes').Value := cbMes.ItemIndex+1;
   RepBalanceComp.QCuentas.Parameters.ParamByName('TIPO').Value := 1;
    end
    else
    begin
      //RepBalanceComp.QCuentas.SQL.Add('SELECT * FROM');
      //RepBalanceComp.QCuentas.SQL.Add('contprbalance_comprobacion (:EMP, :SUC, :ANO, :mes)');
      //RepBalanceComp.QCuentas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      //RepBalanceComp.QCuentas.Parameters.ParamByName('mes').Value := cbMes.ItemIndex+1;
    RepBalanceComp.QCuentas.Parameters.ParamByName('TIPO').Value := 2;
    end;
    RepBalanceComp.QCuentas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RepBalanceComp.QCuentas.Parameters.ParamByName('mes').Value := cbMes.ItemIndex+1;
    RepBalanceComp.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;

    RepBalanceComp.lbConsol.Enabled := ckConsol.Checked;
    if cksucursal.Checked then
    begin
      RepBalanceComp.QCuentas.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      if QSucursal.RecordCount > 1 then
      begin
        RepBalanceComp.lbConsol.Enabled := true;
        RepBalanceComp.lbConsol.Caption := DBLookupComboBox2.Text;
      end;
    end
    else
    begin
      RepBalanceComp.QCuentas.Parameters.ParamByName('suc').Value := 0;
      RepBalanceComp.lbConsol.Enabled := true;
      RepBalanceComp.lbConsol.Caption := '* CONSOLIDADO SUCURSAL *';
    end;

    RepBalanceComp.QCuentas.Open;

    if ckmail.Checked then
      try
        screen.Cursor := crDefault;
        EnvioMail(RepBalanceComp);
      finally
        RepBalanceComp.destroy;
      end
    else
    begin
      screen.Cursor := crDefault;
      RepBalanceComp.PrinterSetup;
      RepBalanceComp.Preview;
      RepBalanceComp.Destroy;
    end;
  end
  else
  begin
    {Application.CreateForm(tRepBceComparativo, RepBceComparativo);
    Mes := UpperCase(DMes[cbMes.ItemIndex+1]);
    RepBceComparativo.lbFecha.Caption := 'Al '+IntToStr(DaysInAMonth(spAno.Value,
                                      cbMes.ItemIndex+1))+' De '+
                                      DMes[cbMes.ItemIndex+1]+' Del '+
                                      IntToStr(spAno.Value);

    if ckConsol.Checked then
    begin
      RepBceComparativo.QNivel.SQL.Clear;
      RepBceComparativo.QNivel.SQL.Add('SELECT DISTINCT B.BCE_NIVEL, C.CAT_NOMBRE');
      RepBceComparativo.QNivel.SQL.Add('FROM CONTCFG_BCECOMP_NIVEL B, CONTCATALOGO C,');
      RepBceComparativo.QNivel.SQL.Add('EMPRESAS E');
      RepBceComparativo.QNivel.SQL.Add('WHERE B.EMP_CODIGO = C.EMP_CODIGO');
      RepBceComparativo.QNivel.SQL.Add('AND B.CAT_CUENTA = C.CAT_CUENTA');
      RepBceComparativo.QNivel.SQL.Add('AND C.EMP_CODIGO = E.EMP_CODIGO');
      RepBceComparativo.QNivel.SQL.Add('AND E.EMP_CONSOLIDAR = '+#39+'True'+#39);
      RepBceComparativo.QNivel.SQL.Add('ORDER BY C.CAT_CUENTA');

      RepBceComparativo.QCuentas.SQL.Clear;
      RepBceComparativo.QCuentas.SQL.Add('SELECT * FROM');
      RepBceComparativo.QCuentas.SQL.Add('CONTPR_BCECOMP_COMPCONSOL (:ANO, :suc, :mes)');
      RepBceComparativo.QCuentas.SQL.Add('WHERE NIVEL = :BCE_NIVEL');
      RepBceComparativo.QCuentas.SQL.Add('ORDER BY CUENTA');
      RepBceComparativo.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;
      RepBceComparativo.QCuentas.Parameters.ParamByName('mes').Value := cbMes.ItemIndex+1;
    end
    else
    begin
      RepBceComparativo.QCuentas.SQL.Clear;
      RepBceComparativo.QCuentas.SQL.Add('SELECT * FROM');
      RepBceComparativo.QCuentas.SQL.Add('CONTPR_BCECOMP_COMP (:emp_codigo, :suc, :ano, :mes)');
      RepBceComparativo.QCuentas.SQL.Add('WHERE NIVEL = :BCE_NIVEL');
      RepBceComparativo.QCuentas.SQL.Add('ORDER BY CUENTA');
      RepBceComparativo.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;
      RepBceComparativo.QCuentas.Parameters.ParamByName('mes').Value := cbMes.ItemIndex+1;
      RepBceComparativo.QNivel.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
      RepBceComparativo.QCuentas.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
    end;
    RepBceComparativo.QNivel.Open;
    RepBceComparativo.QCuentas.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    RepBceComparativo.QCuentas.Open;
    RepBceComparativo.lbConsol.Enabled := ckConsol.Checked;
    if ckmail.Checked then
      try
        screen.Cursor := crDefault;
        EnvioMail(RepBceComparativo);
      finally
        RepBceComparativo.destroy;
      end
    else
    begin
      screen.Cursor := crDefault;
      RepBceComparativo.PrinterSetup;
      RepBceComparativo.Preview;
      RepBceComparativo.Destroy;
    end;                          }
  Application.CreateForm(tRepBalanceCompAnual, RepBalanceCompAnual);
    Mes := UpperCase(DMes[cbMes.ItemIndex+1]);
    RepBalanceCompAnual.Detalle := ckDetallado.Checked;
    case dm.QContabPAR_CONT_BALANU_COMPROB.Value of
    0:RepBalanceCompAnual.lbFecha.Caption := 'Al 31 de Marzo '+IntToStr(spAno.Value);
    1:RepBalanceCompAnual.lbFecha.Caption := 'Al 30 de Junio '+IntToStr(spAno.Value);
    2:RepBalanceCompAnual.lbFecha.Caption := 'Al 30 de Septiembre '+IntToStr(spAno.Value);
    3:RepBalanceCompAnual.lbFecha.Caption := 'Al 31 de Diciembre '+IntToStr(spAno.Value);
    end;
    RepBalanceCompAnual.QCuentas.Close;
    //RepBalanceComp.QCuentas.SQL.Clear;
    RepBalanceCompAnual.QCuentas.Parameters.ParamByName('TIPO').Value := dm.QContabPAR_CONT_BALANU_COMPROB.Value;
    RepBalanceCompAnual.QCuentas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RepBalanceCompAnual.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;

    if cksucursal.Checked then
    RepBalanceCompAnual.QCuentas.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue ELSE
    RepBalanceCompAnual.QCuentas.Parameters.ParamByName('suc').Value := 1;
    RepBalanceCompAnual.QCuentas.Open;

    if ckmail.Checked then
      try
        screen.Cursor := crDefault;
        EnvioMail(RepBalanceCompAnual);
      finally
        RepBalanceCompAnual.destroy;
      end
    else
    begin
      screen.Cursor := crDefault;
      RepBalanceCompAnual.PrinterSetup;
      RepBalanceCompAnual.Preview;
      RepBalanceCompAnual.Destroy;
    end;
  end;
end;

procedure TfrmRepBalComprobacion.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  ckConsol.Visible := dm.QEmpresasEMP_PUEDECONSOLIDAR.Value = 'True';
end;

procedure TfrmRepBalComprobacion.EnvioMail(Rep: TQuickRep);
var
   MailMsg : TIdMessage;
   Archivo : TIdAttachment;
   nArchivo : string;
begin
   nArchivo := InputBox('Envio de Mail','Correo : ','');
   if trim(nArchivo) <> '' then
   begin
     frmMain.filtroreporte := TQRPDFDocumentFilter.Create('c:\BalanceComprobacion.pdf');
     Rep.ExportToFilter(frmMain.filtroreporte);
     if frmMain.IdSMTP1.Connected then frmMain.IdSMTP1.Disconnect;
     MailMsg := TidMessage.Create(frmMain.IdSMTP1);
     MailMsg.Subject      := 'Balance de Comprobacion';
     MailMsg.From.Address := dm.QParametrospar_mailcorreo.Value;
     MailMsg.From.Name    := dm.QParametrospar_mailcorreo.Value;
     MailMsg.ReplyTo.EMailAddresses :=  dm.QParametrospar_mailcorreo.Value;
     MailMsg.Recipients.Add;
     MailMsg.Recipients.Items[0].Address := nArchivo;
     TIdAttachment.Create(MailMsg.MessageParts, 'c:\BalanceComprobacion.pdf');
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

procedure TfrmRepBalComprobacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
