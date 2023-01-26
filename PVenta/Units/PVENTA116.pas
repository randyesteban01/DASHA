unit PVENTA116;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, DB, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB;

type
  TfrmEscala = class(TForm)
    Label1: TLabel;
    edProd: TEdit;
    SpeedButton1: TSpeedButton;
    tProd: TEdit;
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
    dsProductos: TDataSource;
    QEscalas: TADOQuery;
    QEscalasALM_CODIGO: TIntegerField;
    QEscalasEMP_CODIGO: TIntegerField;
    QEscalasESC_ESCALA: TIBStringField;
    QEscalasESC_EXISTENCIA: TFloatField;
    QEscalasESC_SECUENCIA: TIntegerField;
    QEscalasPRO_CODIGO: TIntegerField;
    dsEscala: TDataSource;
    Grid: TDBGrid;
    btPost: TBitBtn;
    btClose: TBitBtn;
    procedure SpeedButton1Click(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridEnter(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPostClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Prod : Integer;
  end;

var
  frmEscala: TfrmEscala;

implementation

uses SIGMA01, PVENTA33;

{$R *.dfm}

procedure TfrmEscala.SpeedButton1Click(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       edProd.text := inttostr(frmBuscaProducto.QProductosPRO_CODIGO.value)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       edProd.text := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       edProd.text := frmBuscaProducto.QProductosPRO_RORIGINAL.value;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre, pro_codigo from productos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       dm.Query1.sql.add('and pro_codigo = '+edProd.text)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
    Prod := dm.Query1.FieldByName('pro_codigo').AsInteger;

    QProductos.Close;
    QProductos.Parameters.ParamByName('prod').Value := frmBuscaProducto.QProductosPRO_CODIGO.value;
    QProductos.Open;
    if not QEscalas.Active then QEscalas.Open;
  end;
  frmBuscaProducto.release;
end;

procedure TfrmEscala.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProd.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre, pro_codigo from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         dm.Query1.sql.add('and pro_codigo = '+edProd.text)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('ESTE PRODUCTO NO EXISTE',mterror,[mbyes,mbno],0);
        edProd.setfocus;
      end
      else
      begin
        tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
        Prod := dm.Query1.FieldByName('pro_codigo').AsInteger;
        QProductos.Close;
        QProductos.Parameters.ParamByName('prod').Value := dm.Query1.FieldByName('pro_codigo').AsInteger;
        QProductos.Open;
        if not QEscalas.Active then QEscalas.Open;
      end;
    end;
  end;
end;

procedure TfrmEscala.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := 0;
end;

procedure TfrmEscala.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Grid.SelectedIndex <> 2 then
      Grid.SelectedIndex := Grid.SelectedIndex + 1
    else
    begin
      Grid.SelectedIndex := 0;
      QEscalas.Append;
    end;
  end;
end;

procedure TfrmEscala.btPostClick(Sender: TObject);
var
  a : integer;
begin
  QEscalas.DisableControls;
  QEscalas.Edit;
  QEscalas.Post;
  QEscalas.First;
  a := 0;
  while not QEscalas.Eof do
  begin
    a := a + 1;
    QEscalas.Edit;
    QEscalasEMP_CODIGO.Value    := dm.QParametrosPAR_INVEMPRESA.Value;
    QEscalasPRO_CODIGO.Value    := QProductosPRO_CODIGO.Value;
    QEscalasESC_SECUENCIA.Value := a;
    QEscalas.Post;
    QEscalas.Next;
  end;
  QEscalas.First;
  QEscalas.EnableControls;
  QEscalas.UpdateBatch;
end;

procedure TfrmEscala.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEscala.btCloseClick(Sender: TObject);
begin
  Close;
end;

end.
