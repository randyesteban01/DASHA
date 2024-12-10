unit RVENTA43;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids,
  IBCustomDataSet, IBUpdateSQL, DB, IBQuery, ADODB;

type
  TfrmAbono = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btClose: TBitBtn;
    QFormasPago: TADOQuery;
    QFormasPagoEMP_CODIGO: TIntegerField;
    QFormasPagoFOR_DESCRIPCION: TIBStringField;
    QFormasPagoFOR_MONTO: TFloatField;
    QFormasPagoFPA_CODIGO: TIntegerField;
    QFormasPagoREC_NUMERO: TIntegerField;
    QFormasPagoForma: TStringField;
    dsFormaPago: TDataSource;
    GridForma: TDBGrid;
    QForma: TADOQuery;
    QFormaFPA_CODIGO: TIntegerField;
    QFormaFPA_NOMBRE: TIBStringField;
    dsForma: TDataSource;
    Query1: TADOQuery;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleREC_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    dsDetalle: TDataSource;
    QFormasPagoSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    procedure btCloseClick(Sender: TObject);
    procedure QFormasPagoAfterInsert(DataSet: TDataSet);
    procedure QFormasPagoAfterPost(DataSet: TDataSet);
    procedure QFormasPagoBeforeDelete(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridFormaEnter(Sender: TObject);
    procedure GridFormaColEnter(Sender: TObject);
    procedure GridFormaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QFormasPagoNewRecord(DataSet: TDataSet);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    Ins, Totaliza : Boolean;
    Pendiente, Total : Double;
    procedure totalizar;
  end;

var
  frmAbono: TfrmAbono;

implementation

uses PVENTA18, SIGMA01;


{$R *.dfm}

procedure TfrmAbono.btCloseClick(Sender: TObject);
begin
  if StrToFloat(Format('%10.2f',[frmFactura.QFacturaFAC_TOTAL.value])) <
  StrToFloat(Format('%10.2f',[Total])) then
  begin
    MessageDlg('EL MONTO NO PUEDE SER MAYOR A '+Format('%n',[frmFactura.QFacturaFAC_TOTAL.value]),mtError,[mbok],0);
    GridForma.SetFocus;
  end
  else
    if MessageDlg('DESEA SALIR?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      btClose.SetFocus;
      Close;
    end
    else
      DBEdit1.SetFocus;
end;

procedure TfrmAbono.QFormasPagoAfterInsert(DataSet: TDataSet);
begin
  if Ins = false then QFormasPago.cancel;
end;

procedure TfrmAbono.QFormasPagoAfterPost(DataSet: TDataSet);
begin
  if Totaliza = True then
    Totalizar;
end;

procedure TfrmAbono.QFormasPagoBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TfrmAbono.FormActivate(Sender: TObject);
begin
  if not QFormasPago.Active then
  begin
    Ins := True;
    QFormasPago.Open;
    QForma.Open;
    QDetalle.Open;

    //formas de pago
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fpa_codigo, fpa_nombre');
    dm.Query1.sql.add('from formaspago');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('order by fpa_codigo');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;

    dm.Query1.disablecontrols;
    while not dm.Query1.eof do
    begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select fpa_codigo from clirestfpago');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.SQL.Add('and cli_codigo = :cli');
      Query1.SQL.Add('and fpa_codigo = :fpa');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Parameters.ParamByName('cli').Value := frmFactura.QFacturaCLI_CODIGO.Value;
      Query1.Parameters.ParamByName('fpa').Value := dm.Query1.FieldByName('fpa_codigo').AsInteger;
      Query1.Open;
      if Query1.RecordCount = 0 then
      begin
        QFormasPago.append;
        QFormasPagoEMP_CODIGO.value := dm.vp_cia;
        QFormasPagoFPA_CODIGO.value := dm.Query1.fieldbyname('fpa_codigo').asinteger;
        QFormasPagoSUC_CODIGO.Value := frmFactura.QFacturaSUC_CODIGO.Value;
        QFormasPago.post;
      end;
      dm.Query1.next;
    end;
    dm.Query1.enablecontrols;
    QFormasPago.first;
    Ins := False;
  end;
end;

procedure TfrmAbono.FormCreate(Sender: TObject);
begin
  Ins := True;
  Totaliza := True;
end;

procedure TfrmAbono.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ssAlt in shift then key := 0;
end;

procedure TfrmAbono.totalizar;
var
  punt : TBookmark;
begin
  Total := 0;
  punt := QFormasPago.GetBookmark;
  QFormasPago.DisableControls;
  QFormasPago.first;
  while not QFormasPago.Eof do
  begin
    Total := Total + QFormasPagoFOR_MONTO.Value;

    if (QFormasPagoFOR_MONTO.value > 0) and (not QFormasPagoFOR_MONTO.IsNull) then
    begin
      //Cuenta contable
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cat_cuenta from formaspago');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and fpa_codigo = :fpa');
      dm.Query1.SQL.Add('and (cat_cuenta is not null or cat_cuenta <> '+#39+'ACT'+#39+')');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('fpa').Value := QFormasPagoFPA_CODIGO.Value;
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        if QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
        begin
          QDetalle.Edit;
          QDetalleDET_MONTO.Value := QFormasPagoFOR_MONTO.value;
          QDetalle.Post;
        end
        else
        begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
          QDetalleDET_MONTO.Value  := QFormasPagoFOR_MONTO.value;
          QDetalleDET_ORIGEN.Value := 'Debito';
          QDetalleSUC_CODIGO.Value := frmFactura.QFacturaSUC_CODIGO.Value;
          QDetalle.Post;
        end;
      end;
    end;

    QFormasPago.Next;
  end;
  QFormasPago.EnableControls;
  QFormasPago.GotoBookmark(punt);
  frmFactura.QFacturaFAC_ABONO.Value := Total;
  Pendiente := frmFactura.QFacturaFAC_TOTAL.Value-frmFactura.QFacturaFAC_ABONO.Value;

end;

procedure TfrmAbono.GridFormaEnter(Sender: TObject);
begin
  GridForma.selectedindex := 1;
end;

procedure TfrmAbono.GridFormaColEnter(Sender: TObject);
begin
  if GridForma.selectedindex = 0 then
     GridForma.selectedindex := 1;
end;

procedure TfrmAbono.GridFormaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QFormasPago.edit;
    QFormasPago.post;
  end;
end;

procedure TfrmAbono.QFormasPagoNewRecord(DataSet: TDataSet);
begin
  QFormasPagoEMP_CODIGO.Value := dm.vp_cia;
end;

procedure TfrmAbono.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QDetalleCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QDetalle.Edit;
      QDetalleCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
    end;
  end;
end;

end.
