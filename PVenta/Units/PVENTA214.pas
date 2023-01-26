unit PVENTA214;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, IBCustomDataSet,
  Mask, DBCtrls;

type
  TfrmPreciosUnidadMedida = class(TForm)
    QMedidas: TADOQuery;
    QMedidasUnidadID: TStringField;
    QMedidasNombre: TStringField;
    dsMedida: TDataSource;
    QUnidades: TADOQuery;
    QUnidadesemp_codigo: TIntegerField;
    QUnidadespro_codigo: TIntegerField;
    QUnidadesUnidadID: TStringField;
    QUnidadesCantidad: TBCDField;
    QUnidadesSecuencia: TIntegerField;
    QUnidadesNombre: TStringField;
    QUnidadesPrecio: TBCDField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    dsUnidades: TDataSource;
    gunidades: TDBGrid;
    BitBtn1: TBitBtn;
    QProductos: TADOQuery;
    QProductosEMP_CODIGO: TIntegerField;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosFAM_CODIGO: TIntegerField;
    QProductosCOL_CODIGO: TIntegerField;
    QProductosPRO_BARRA: TIBStringField;
    QProductosPRO_DESCMAX: TFloatField;
    QProductosPRO_ULTCOSTO: TFloatField;
    QProductosPRO_COSTO: TFloatField;
    QProductosPRO_PRECIO1: TFloatField;
    QProductosPRO_PRECIO2: TFloatField;
    QProductosPRO_PRECIO3: TFloatField;
    QProductosPRO_PRECIO4: TFloatField;
    QProductosPRO_DISPLAY: TIBStringField;
    QProductosPRO_STATUS: TIBStringField;
    QProductosPRO_INVINICIAL: TFloatField;
    QProductosPRO_EXISTENCIA: TFloatField;
    QProductosPRO_UBICACION: TIBStringField;
    QProductosPRO_STKMINIMO: TFloatField;
    QProductosPRO_STKMAXIMO: TFloatField;
    QProductosPRO_INVFISICO: TFloatField;
    QProductosPRO_PEDIDOPRV: TFloatField;
    QProductosPRO_PEDIDOCLI: TFloatField;
    QProductosPRO_CTAINVENT: TIBStringField;
    QProductosPRO_CTACOSTO: TIBStringField;
    QProductosDEP_CODIGO: TIntegerField;
    QProductosPRO_ITBIS: TIBStringField;
    QProductosPRO_BENEFICIO: TFloatField;
    QProductosPRO_ESCALA: TIBStringField;
    QProductosPRO_SERVICIO: TIBStringField;
    QProductosMAR_CODIGO: TIntegerField;
    QProductosPRO_COMISION: TFloatField;
    QProductosPRO_VENCE: TIBStringField;
    QProductosPRO_BENEFICIO2: TFloatField;
    QProductosPRO_BENEFICIO3: TFloatField;
    QProductosPRO_BENEFICIO4: TFloatField;
    QProductosPRO_USO: TIBStringField;
    QProductosSUP_CODIGO: TIntegerField;
    QProductosPRO_NUEVOUSADO: TIBStringField;
    QProductosPRO_COSTOUS: TFloatField;
    QProductosPRO_TASACOMPRA: TFloatField;
    QProductosPRO_TASAVENTA: TFloatField;
    QProductosPRO_PRECIOMENOR: TFloatField;
    QProductosPRO_EXISTEMPAQUE: TFloatField;
    QProductosPRO_CANTEMPAQUE: TFloatField;
    QProductosPRO_COSTOEMPAQUE: TFloatField;
    QProductosPRO_COMBO: TIBStringField;
    QProductosPRO_INVINICIALEMP: TFloatField;
    QProductosPRO_STKMINIMOEMP: TFloatField;
    QProductosPRO_STKMAXIMOEMP: TFloatField;
    QProductosPRO_PRECIOMENOREMP: TFloatField;
    QProductosPRO_ALMACENBAR: TIntegerField;
    QProductosMON_CODIGO: TIntegerField;
    QProductosPRO_COMISIONDESCUENTO: TBCDField;
    QProductosPRO_CONTROLADO: TStringField;
    QProductosPRO_DETALLADO: TStringField;
    QProductospro_realizar_pedido: TStringField;
    QProductosCalcCosto: TFloatField;
    QProductosCalcCostoEmp: TFloatField;
    QProductosValor: TFloatField;
    QProductosValorEmp: TFloatField;
    QProductosusu_codigo: TIntegerField;
    QProductospro_fecha_modifico: TDateTimeField;
    QProductospro_comentario: TMemoField;
    QProductospro_foto: TStringField;
    QProductospro_selectivo_ad: TBCDField;
    QProductospro_selectivo_con: TBCDField;
    QProductospro_unidad_medida: TStringField;
    QProductospro_minimo_venta: TBCDField;
    QProductospro_volumen: TBCDField;
    QProductosger_codigo: TIntegerField;
    QProductosgon_codigo: TIntegerField;
    QProductospro_patrocinador: TStringField;
    QProductosUnidadID: TStringField;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit43: TDBEdit;
    dsProductos: TDataSource;
    QProductospro_montoitbis: TBCDField;
    procedure BitBtn1Click(Sender: TObject);
    procedure gunidadesKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure QMedidasBeforePost(DataSet: TDataSet);
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure DBEdit43Enter(Sender: TObject);
    procedure QUnidadesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreciosUnidadMedida: TfrmPreciosUnidadMedida;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmPreciosUnidadMedida.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPreciosUnidadMedida.gunidadesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if gunidades.SelectedIndex <> 5 then
      gunidades.SelectedIndex := gunidades.SelectedIndex + 1
    else
    begin
      QUnidades.Append;
      gunidades.SelectedIndex := 0;
    end;
  end;
end;

procedure TfrmPreciosUnidadMedida.BitBtn2Click(Sender: TObject);
var
  a : integer;
begin
  //Grabando unidades
  if dm.QParametrospar_inv_unidad_medida.Value = 'True' then
  begin
    QUnidades.DisableControls;
    QUnidades.First;
    a := 1;
    while not QUnidades.Eof do
    begin
      QUnidades.Edit;
      QUnidadesemp_codigo.Value := dm.QParametrosPAR_INVEMPRESA.Value;
      QUnidadespro_codigo.Value := QProductosPRO_CODIGO.Value;
      QUnidadesSecuencia.Value  := a;
      QUnidades.Post;
      a := a + 1;
      QUnidades.Next;
    end;
    QUnidades.EnableControls;
    QUnidades.UpdateBatch;
  end;
end;

procedure TfrmPreciosUnidadMedida.QMedidasBeforePost(DataSet: TDataSet);
begin
  QUnidadesUnidadID.Value := UpperCase(QUnidadesUnidadID.Value);
end;

procedure TfrmPreciosUnidadMedida.QProductosCalcFields(DataSet: TDataSet);
begin
  if QProductosPRO_ITBIS.Value = 'S' then
  begin
    QProductosCalcCosto.Value    := (QProductosPRO_COSTO.Value * QProductospro_montoitbis.Value)/100;
    QProductosCalcCostoemp.Value := (QProductosPRO_COSTOEMPAQUE.Value * QProductospro_montoitbis.Value)/100;
  end
  else
  begin
    QProductosCalcCosto.Value    := 0;
    QProductosCalcCostoemp.Value := 0;
  end;
  QProductosValor.value    := QProductosCalcCosto.Value + QProductosPRO_COSTO.Value;
  QProductosValorEmp.value := QProductosCalcCostoEmp.Value + QProductosPRO_COSTOEMPAQUE.Value;
end;

procedure TfrmPreciosUnidadMedida.DBEdit43Enter(Sender: TObject);
begin
  gunidades.SetFocus;
end;

procedure TfrmPreciosUnidadMedida.QUnidadesBeforePost(DataSet: TDataSet);
begin
  QUnidadesUnidadID.Value := UpperCase(QUnidadesUnidadID.Value);
end;

end.
