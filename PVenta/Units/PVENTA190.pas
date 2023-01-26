unit PVENTA190;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, ADODB, ComCtrls,
  QuerySearchDlgADO;

type
  TfrmConsLiquidaciones = class(TForm)
    Panel1: TPanel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    QLiquidacion: TADOQuery;
    QLiquidacionemp_codigo: TIntegerField;
    QLiquidacionliq_numero: TIntegerField;
    QLiquidacionsup_codigo: TIntegerField;
    QLiquidacionliq_fecha: TDateTimeField;
    QLiquidacionliq_Agencia: TStringField;
    QLiquidacionliq_container: TStringField;
    QLiquidacionliq_factura: TStringField;
    QLiquidacionliq_taza: TBCDField;
    QLiquidacionalm_codigo: TIntegerField;
    QLiquidacionliq_factor: TBCDField;
    QLiquidacionusu_codigo: TIntegerField;
    QLiquidacionliq_status: TStringField;
    QLiquidacionped_tipo: TStringField;
    QLiquidacionped_numero: TIntegerField;
    QLiquidacionmon_codigo: TIntegerField;
    QLiquidacionliq_gastos: TBCDField;
    dsLiq: TDataSource;
    QLiquidacionsup_nombre: TStringField;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    QLiquidacionTotalUS: TBCDField;
    QLiquidacionTotalRD: TBCDField;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    GridCuentas: TDBGrid;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    QCuentas: TADOQuery;
    QCuentasemp_codigo: TIntegerField;
    QCuentasliq_numero: TIntegerField;
    QCuentasdet_secuencia: TIntegerField;
    QCuentascat_nombre: TStringField;
    QCuentasdet_monto: TBCDField;
    QCuentasdet_origen: TStringField;
    QCuentascat_cuenta: TStringField;
    dsCuentas: TDataSource;
    Search: TQrySearchDlgADO;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btRefreshClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure QCuentascat_cuentaChange(Sender: TField);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QCuentasAfterDelete(DataSet: TDataSet);
    procedure QCuentasAfterEdit(DataSet: TDataSet);
    procedure QCuentasAfterInsert(DataSet: TDataSet);
    procedure QCuentasAfterPost(DataSet: TDataSet);
    procedure QCuentasBeforeDelete(DataSet: TDataSet);
    procedure QCuentasBeforePost(DataSet: TDataSet);
    procedure QCuentasNewRecord(DataSet: TDataSet);
    procedure btEliminaClick(Sender: TObject);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure QLiquidacionAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitos, Creditos : Double;
    Modifica, Elimina : Boolean;
    Procedure Totalizar;
  end;

var
  frmConsLiquidaciones: TfrmConsLiquidaciones;

implementation

uses SIGMA01, RVENTA68, SIGMA00;

{$R *.dfm}

procedure TfrmConsLiquidaciones.FormPaint(Sender: TObject);
begin
  with frmConsLiquidaciones do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsLiquidaciones.FormCreate(Sender: TObject);
begin
  fecha1.Date := Date;
  fecha2.Date := Date;
end;

procedure TfrmConsLiquidaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsLiquidaciones.btRefreshClick(Sender: TObject);
begin
  QLiquidacion.Close;
  QLiquidacion.Parameters.ParamByName('fec1').DataType := ftDate;
  QLiquidacion.Parameters.ParamByName('fec2').DataType := ftDate;
  QLiquidacion.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QLiquidacion.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  QLiquidacion.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  QLiquidacion.Open;
  DBGrid1.SetFocus;
end;

procedure TfrmConsLiquidaciones.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRLiquidacion, RLiquidacion);
  RLiquidacion.QLiquidacion.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RLiquidacion.QLiquidacion.Parameters.ParamByName('num').Value := QLiquidacionliq_numero.Value;
  RLiquidacion.QLiquidacion.Open;
  RLiquidacion.QDetalle.Open;
  RLiquidacion.QGastos.Open;
  RLiquidacion.PrinterSetup;
  RLiquidacion.Preview;
  RLiquidacion.Destroy;
  DBGrid1.SetFocus;
end;

procedure TfrmConsLiquidaciones.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsLiquidaciones.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsLiquidaciones.QCuentascat_cuentaChange(Sender: TField);
begin
  if not QCuentascat_cuenta.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QCuentascat_cuenta.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QCuentascat_cuenta.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QCuentascat_cuenta.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QCuentas.Edit;
      QCuentasCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsLiquidaciones.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsLiquidaciones.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsLiquidaciones.GridCuentasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 2 then
  begin
    if key = 68 then
    begin
      QCuentas.Edit;
      QCuentasDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 3;
    end
    else if key = 67 then
    begin
      QCuentas.Edit;
      QCuentasDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 3;
    end;
  end;
  if key = vk_f5 then btBuscaCtaClick(Self);
  if key = vk_f4 then btEliminaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 3 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 0;
       QCuentas.Append;
     end;
end;

procedure TfrmConsLiquidaciones.QCuentasAfterDelete(DataSet: TDataSet);
begin
  QCuentas.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsLiquidaciones.QCuentasAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QCuentas.Cancel;
end;

procedure TfrmConsLiquidaciones.QCuentasAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QCuentas.Cancel;
end;

procedure TfrmConsLiquidaciones.QCuentasAfterPost(DataSet: TDataSet);
begin
  QCuentas.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsLiquidaciones.QCuentasBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

procedure TfrmConsLiquidaciones.QCuentasBeforePost(DataSet: TDataSet);
begin
  if QCuentas.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from contdet_liquidacion');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and liq_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := QLiquidacionliq_numero.Value;
    dm.Query1.Open;
    QCuentasDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsLiquidaciones.QCuentasNewRecord(DataSet: TDataSet);
begin
  QCuentasEMP_CODIGO.Value := dm.vp_cia;
  QCuentasliq_NUMERO.Value := QLiquidacionliq_numero.Value;
end;

procedure TfrmConsLiquidaciones.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCuentas.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsLiquidaciones.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QCuentas.Edit;
    QCuentasCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmConsLiquidaciones.Totalizar;
var
  Punt : TBookMark;
begin
  if not QCuentas.Active then QCuentas.Open;
  Debitos  := 0;
  Creditos := 0;
  Punt := QCuentas.GetBookmark;
  QCuentas.DisableControls;
  QCuentas.First;
  while not QCuentas.Eof do
  begin
    if QCuentasDET_ORIGEN.Value = 'Debito' then
      Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QCuentasDET_MONTO.Value]))
    else
      Creditos := Creditos + StrToFloat(Format('%10.2f',[QCuentasDET_MONTO.Value]));
    QCuentas.Next;
  end;
  QCuentas.GotoBookmark(Punt);
  QCuentas.EnableControls;
  lbCR.Caption  := Format('%n',[Creditos]);
  lbDB.Caption  := Format('%n',[Debitos]);
  lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmConsLiquidaciones.QLiquidacionAfterOpen(DataSet: TDataSet);
begin
  if not QCuentas.Active then QCuentas.Open;
end;

end.
