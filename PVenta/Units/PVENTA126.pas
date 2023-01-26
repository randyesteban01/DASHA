unit PVENTA126;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TfrmCantidadCombo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    btClose: TBitBtn;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    btPost: TBitBtn;
    ednombre: TEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCantidadCombo: TfrmCantidadCombo;

implementation

uses PVENTA15, PVENTA33;

{$R *.dfm}

procedure TfrmCantidadCombo.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCantidadCombo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmCantidadCombo.SpeedButton1Click(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    ednombre.Text := frmBuscaProducto.QProductosPRO_NOMBRE.Value;
    frmProductos.QComboCOM_PRECIO.Value   := frmBuscaProducto.QProductosPRO_PRECIO1.Value;
    frmProductos.QComboCOM_PRODUCTO.Value := frmBuscaProducto.QProductosPRO_CODIGO.value;
    frmProductos.QComboCOM_CANTIDAD.Value := 1;
    frmProductos.QComboCOM_COSTO.Value    := frmBuscaProducto.QProductosPRO_COSTO.value;
  end;
  frmBuscaProducto.release;
  DBEdit1.SetFocus;
end;

procedure TfrmCantidadCombo.btPostClick(Sender: TObject);
begin
  frmProductos.QCombo.Post;
  close;
end;

end.
