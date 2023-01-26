unit PVENTA40;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, IBUpdateSQL,
  StdCtrls, Buttons, ADODB;

type
  TfrmOtrosFac = class(TForm)
    GridCargos: TDBGrid;
    dsCargosFac: TDataSource;
    QCargosFAC: TADOQuery;
    QCargosFACCAR_CODIGO: TIntegerField;
    QCargosFACCAR_MONTO: TFloatField;
    QCargosFACEMP_CODIGO: TIntegerField;
    QCargosFACFAC_FORMA: TIBStringField;
    QCargosFACFAC_NUMERO: TIntegerField;
    QCargosFACTFA_CODIGO: TIntegerField;
    QCargos: TADOQuery;
    QCargosCAR_CODIGO: TIntegerField;
    QCargosCAR_MONTO: TFloatField;
    QCargosCAR_NOMBRE: TIBStringField;
    QCargosFACCargo: TStringField;
    dsCargos: TDataSource;
    Lista: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btClose: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure GridCargosEnter(Sender: TObject);
    procedure GridCargosColEnter(Sender: TObject);
    procedure GridCargosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure QCargosFACNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOtrosFac: TfrmOtrosFac;

implementation

uses PVENTA18, SIGMA01;

{$R *.dfm}

procedure TfrmOtrosFac.FormActivate(Sender: TObject);
begin
  QCargos.open;
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select car_nombre from cargos');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  dm.Query1.open;
  dm.Query1.disablecontrols;
  Lista.Items.clear;
  while not dm.Query1.eof do
  begin
    Lista.Items.add(dm.Query1.fieldbyname('car_nombre').asstring);
    dm.Query1.next;
  end;
  dm.Query1.enablecontrols;
  QCargosFAC.first;
  while not QCargosFAC.eof do
  begin
    Lista.Items.Delete(Lista.items.IndexOf(QCargosFACCargo.value));
    frmFactura.TotalOtros := frmFactura.TotalOtros + QCargosFACCAR_MONTO.value;
    QCargosFAC.next;
  end;
  if QCargosFAC.recordcount = 0 then
     dsCargosFac.AutoEdit := false
  else
     dsCargosFac.AutoEdit := true;
end;

procedure TfrmOtrosFac.GridCargosEnter(Sender: TObject);
begin
  GridCargos.selectedindex := 2;
end;

procedure TfrmOtrosFac.GridCargosColEnter(Sender: TObject);
begin
  if GridCargos.selectedindex <> 2 then
    GridCargos.selectedindex := 2;
end;

procedure TfrmOtrosFac.GridCargosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if not QCargosFACCAR_CODIGO.isnull then
    begin
      QCargosFAC.edit;
      QCargosFAC.post;
    end;
  end;
end;

procedure TfrmOtrosFac.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOtrosFac.QCargosFACNewRecord(DataSet: TDataSet);
begin
  QCargosFACEMP_CODIGO.value := dm.vp_cia;
  QCargosFACFAC_FORMA.value  := frmFactura.QFacturaFAC_FORMA.value;
end;

procedure TfrmOtrosFac.BitBtn1Click(Sender: TObject);
begin
  if Lista.Items.Count >= 0 then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select car_nombre, car_codigo, car_monto');
    dm.Query1.sql.add('from cargos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and car_nombre = :nombre');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('nombre').Value := Lista.items[lista.itemindex];
    dm.Query1.open;
    QCargosFAC.Append;
    QCargosFACCAR_CODIGO.value := dm.Query1.fieldbyname('car_codigo').asinteger;
    QCargosFACCAR_MONTO.value  := dm.Query1.fieldbyname('car_monto').asfloat;
    QCargosFAC.post;
    Lista.DeleteSelected;
    if QCargosFAC.recordcount = 0 then
       dsCargosFac.AutoEdit := false
    else
       dsCargosFac.AutoEdit := true;
    frmFactura.TotalOtros := frmFactura.TotalOtros + QCargosFACCAR_MONTO.value;
  end;
end;

procedure TfrmOtrosFac.BitBtn2Click(Sender: TObject);
begin
  if QCargosFAC.recordcount > 0 then
  begin
    Lista.Items.add(QCargosFACCargo.value);
    QCargosFAC.Delete;
    if QCargosFAC.recordcount = 0 then
       dsCargosFac.AutoEdit := false
    else
       dsCargosFac.AutoEdit := true;
    frmFactura.TotalOtros := frmFactura.TotalOtros - QCargosFACCAR_MONTO.value;
  end;
end;

end.
