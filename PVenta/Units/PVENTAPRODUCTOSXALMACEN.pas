unit PVENTAPRODUCTOSXALMACEN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, IBCustomDataSet, ADODB, StdCtrls,
  Buttons, DBCtrls;

type
  TfrmProductosXAlmacen = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    QExist: TADOQuery;
    QExistALM_NOMBRE: TIBStringField;
    QExistEXI_CANTIDAD: TFloatField;
    QExistEXI_FISICO: TFloatField;
    QExistEXI_EMPAQUE: TFloatField;
    QExistexi_minimo: TBCDField;
    QExistexi_maximo: TBCDField;
    dsExist: TDataSource;
    DBGrid6: TDBGrid;
    DBNavigator1: TDBNavigator;
    btClose: TBitBtn;
    lblDescripcion: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
  private
    FProducto: Integer;
    FEmpresa: integer;
    procedure setDescripcion(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property Descripcion :String write setDescripcion;
    property idEmpresa :integer write FEmpresa ;
    property idProducto :Integer write FProducto ;


  end;

var
  frmProductosXAlmacen: TfrmProductosXAlmacen;

implementation

{$R *.dfm}

{ TfrmProductosXAlmacen }

procedure TfrmProductosXAlmacen.setDescripcion(const Value: String);
begin
  
  lblDescripcion.caption := Value;
end;

procedure TfrmProductosXAlmacen.FormShow(Sender: TObject);
begin
  With QExist do begin
    close;
    Parameters.ParamByName('emp_codigo').value := FEmpresa;
    Parameters.ParamByName('pro_codigo').value := FProducto;
    open;
    

  end;

end;

procedure TfrmProductosXAlmacen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QExist.close();
end;

procedure TfrmProductosXAlmacen.btCloseClick(Sender: TObject);
begin
  close();
end;

end.
