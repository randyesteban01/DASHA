unit PVENTA88;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, DB,
  IBCustomDataSet, IBQuery, ADODB;

type
  TfrmConsTransferencia = class(TForm)
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    Panel1: TPanel;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    DBGrid1: TDBGrid;
    GridMov: TDBGrid;
    QTrans: TADOQuery;
    QTransEMP_CODIGO: TIntegerField;
    QTransTRA_ALMACEN1: TIntegerField;
    QTransTRA_ALMACEN2: TIntegerField;
    QTransTRA_CONCEPTO: TIBStringField;
    QTransTRA_FECHA: TDateTimeField;
    QTransTRA_NUMERO: TIntegerField;
    QTransTRA_STATUS: TIBStringField;
    QTransUSU_CODIGO: TIntegerField;
    dsTrans: TDataSource;
    QDetalle: TADOQuery;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleTRA_NUMERO: TIntegerField;
    rbTipo: TRadioGroup;
    dsDetalle: TDataSource;
    Memo1: TMemo;
    Splitter1: TSplitter;
    btpostear: TBitBtn;
    btAnula: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure QTransAfterOpen(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure btpostearClick(Sender: TObject);
    procedure dsTransDataChange(Sender: TObject; Field: TField);
    procedure btAnulaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsTransferencia: TfrmConsTransferencia;

implementation

uses RVENTA55, SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmConsTransferencia.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsTransferencia.FormCreate(Sender: TObject);
begin
  Fecha1.date := date;
  Fecha2.date := date;
  Memo1.Lines := QTrans.SQL;
end;

procedure TfrmConsTransferencia.FormPaint(Sender: TObject);
begin
  with frmConsTransferencia do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsTransferencia.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsTransferencia.btRefreshClick(Sender: TObject);
begin
  QTrans.Close;
  QTrans.SQL.Clear;
  QTrans.SQL := Memo1.Lines;
  if rbTipo.ItemIndex = 1 then
     QTrans.SQL.Add('and tra_status = '+#39+'PRO'+#39)
  else if rbTipo.ItemIndex = 2 then
     QTrans.SQL.Add('and tra_status = '+#39+'EMI'+#39);
  QTrans.SQL.Add('order by tra_numero');
  QTrans.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QTrans.Parameters.ParamByName('fecha1').DataType := ftDate;
  QTrans.Parameters.ParamByName('fecha2').DataType := ftDate;
  QTrans.Parameters.ParamByName('fecha1').Value := Fecha1.date;
  QTrans.Parameters.ParamByName('fecha2').Value := Fecha2.date;
  QTrans.Open;
  lbCantidad.Caption := IntToStr(QTrans.RecordCount)+' Transferencias';
  DBGrid1.SetFocus;
end;

procedure TfrmConsTransferencia.QTransAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active then QDetalle.Open;
end;

procedure TfrmConsTransferencia.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsTransferencia, RConsTransferencia);
  RConsTransferencia.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsTransferencia.QTrans.SQL := QTrans.SQL;
  RConsTransferencia.QTrans.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RConsTransferencia.QTrans.Parameters.ParamByName('fecha1').DataType := ftDate;
  RConsTransferencia.QTrans.Parameters.ParamByName('fecha2').DataType := ftDate;
  RConsTransferencia.QTrans.Parameters.ParamByName('fecha1').Value := Fecha1.date;
  RConsTransferencia.QTrans.Parameters.ParamByName('fecha2').Value := Fecha2.date;
  RConsTransferencia.QTrans.Open;
  RConsTransferencia.PrinterSetup;
  RConsTransferencia.Preview;
  RConsTransferencia.Destroy;
end;

procedure TfrmConsTransferencia.btpostearClick(Sender: TObject);
var
  t : tbookmark;
begin
  if MessageDlg('Esta seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    t := QTrans.GetBookmark;
    Screen.Cursor := crSQLWait;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.add('execute PR_PROCESA_TRANS :emp, :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := QTransTRA_NUMERO.Value;
    dm.Query1.ExecSQL;
    Screen.Cursor := crDefault;
    MessageDlg('TRANSFERENCIA PROCESADA',mtInformation,[mbok],0);
    QTrans.GotoBookmark(t);
  end;
end;

procedure TfrmConsTransferencia.dsTransDataChange(Sender: TObject;
  Field: TField);
begin
  btpostear.Enabled := QTransTRA_STATUS.Value = 'EMI';
  btAnula.Enabled   := QTransTRA_STATUS.Value = 'EMI';
end;

procedure TfrmConsTransferencia.btAnulaClick(Sender: TObject);
var
  t : tbookmark;
begin
  if MessageDlg('Esta seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    t := QTrans.GetBookmark;
    Screen.Cursor := crSQLWait;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.add('update transfer set tra_status = :st where emp_codigo = :emp and tra_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := QTransTRA_NUMERO.Value;
    dm.Query1.ExecSQL;
    Screen.Cursor := crDefault;
    MessageDlg('TRANSFERENCIA ANULADA',mtInformation,[mbok],0);
    QTrans.GotoBookmark(t);
  end;
end;

end.
