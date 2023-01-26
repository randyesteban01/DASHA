unit CONT55;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls, ComCtrls, ADODB, DBCtrls;

type
  TfrmGenerarCheques = class(TForm)
    QSolicitud: TADOQuery;
    QSolicitudBAN_NOMBRE: TIBStringField;
    QSolicitudSOL_NUMERO: TIntegerField;
    QSolicitudSOL_FECHA: TDateTimeField;
    QSolicitudSOL_CONCEPTO1: TIBStringField;
    QSolicitudSOL_CONCEPTO2: TIBStringField;
    QSolicitudSOL_BENEF: TIBStringField;
    QSolicitudSOL_MONTO: TFloatField;
    QSolicitudSOL_STATUS: TIBStringField;
    QSolicitudSOL_TIPO: TIBStringField;
    QSolicitudUSU_NOMBRE: TIBStringField;
    QSolicitudEMP_CODIGO: TIntegerField;
    QSolicitudBAN_CODIGO: TIntegerField;
    QSolicitudSOL_CHEQUE: TIntegerField;
    dsSolicitud: TDataSource;
    QSolicitudSOL_GENERACHEQUE: TIBStringField;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    lbCantidad: TLabel;
    btClose: TBitBtn;
    btRefresh: TBitBtn;
    StaticText1: TStaticText;
    gbancos: TDBGrid;
    QBancos: TADOQuery;
    QBancosBANCO: TIBStringField;
    QBancosBALANCE: TFloatField;
    dsBancos: TDataSource;
    QBancosMONTOGENERAR: TFloatField;
    QSolicitudgenerar: TStringField;
    btgenera: TBitBtn;
    Query1: TADOQuery;
    Label1: TLabel;
    fecha: TDateTimePicker;
    QSolicitudSOL_CONCEPTO3: TStringField;
    QBancosid: TAutoIncField;
    QSolicitudSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Panel2: TPanel;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    procedure btCloseClick(Sender: TObject);
    procedure QSolicitudAfterOpen(DataSet: TDataSet);
    procedure btRefreshClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QSolicitudCalcFields(DataSet: TDataSet);
    procedure btgeneraClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenerarCheques: TfrmGenerarCheques;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmGenerarCheques.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmGenerarCheques.QSolicitudAfterOpen(DataSet: TDataSet);
begin
  lbCantidad.Caption := IntToStr(QSolicitud.RecordCount)+' Solicitudes';
  QBancos.Close;
  QBancos.Parameters.ParamByName('fecha').DataType := ftDate;
  QBancos.Parameters.ParamByName('fecha').Value := Date;
  QBancos.Open;
end;

procedure TfrmGenerarCheques.btRefreshClick(Sender: TObject);
begin
  QSolicitud.Close;
  QSolicitud.Open;
  gbancos.SetFocus;
end;

procedure TfrmGenerarCheques.FormPaint(Sender: TObject);
begin
  frmGenerarCheques.Top  := 3;
  frmGenerarCheques.left := 1;
end;

procedure TfrmGenerarCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmGenerarCheques.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  t : TBookmark;
begin
  if key = vk_f2 then
  begin
    t := QSolicitud.GetBookmark;
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    if QSolicitudSOL_GENERACHEQUE.Value = 'S' then
      DM.Query1.SQL.Add('update solicitud set SOL_GENERACHEQUE = '+#39+'N'+#39)
    else
      DM.Query1.SQL.Add('update solicitud set SOL_GENERACHEQUE = '+#39+'S'+#39);
    DM.Query1.SQL.Add('where emp_codigo = :emp');
    DM.Query1.SQL.Add('and suc_codigo = :suc');
    DM.Query1.SQL.Add('and sol_numero = :num');
    DM.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    DM.Query1.Parameters.ParamByName('num').Value := QSolicitudSOL_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    DM.Query1.ExecSQL;
    QSolicitud.Close;
    QSolicitud.Open;
    QSolicitud.GotoBookmark(t);
  end;
end;

procedure TfrmGenerarCheques.QSolicitudCalcFields(DataSet: TDataSet);
begin
  if QSolicitudSOL_GENERACHEQUE.Value = 'N' then
    QSolicitudgenerar.Value := ''
  else
    QSolicitudgenerar.Value := 'S';
end;

procedure TfrmGenerarCheques.btgeneraClick(Sender: TObject);
begin
  if MessageDlg('DESEA GENERAR LOS CHEQUES?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sol_numero');
    dm.Query1.SQL.Add('from solicitud');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_status = '+#39+'EMI'+#39);
    dm.Query1.SQL.Add('and sol_generacheque = '+#39+'S'+#39);
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('order by sol_numero');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('execute CONTPR_APRUEBA_SOLICITUD_SELC :emp, :suc, :sol, :fec');
      Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
      Query1.Parameters.ParamByName('sol').Value := dm.Query1.FieldByName('sol_numero').AsInteger;
      Query1.Parameters.ParamByName('fec').Value    := fecha.Date;
      Query1.ExecSQL;
      dm.Query1.Next;
    end;
    QSolicitud.Close;
    QSolicitud.Open;
  end;
  gbancos.SetFocus;
end;
procedure TfrmGenerarCheques.FormCreate(Sender: TObject);
begin
  fecha.Date := date;
end;

procedure TfrmGenerarCheques.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if QSolicitudSOL_GENERACHEQUE.Value = 'S' then
  begin
     DBGrid1.canvas.font.color := clRed;
     DBGrid1.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmGenerarCheques.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  btgenera.Enabled := dm.QParametrosPAR_SOLGENERACHEQUE.Value = 'False';
end;

end.
