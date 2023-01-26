unit PVENTA145;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB, Mask, Buttons;

type
  TfrmPrecioSucursal = class(TForm)
    lbprod: TStaticText;
    Label1: TLabel;
    cbSucursal: TDBLookupComboBox;
    QPrecios: TADOQuery;
    dsPrecios: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    edCosto: TEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    btexit: TBitBtn;
    btgrabar: TBitBtn;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSucursal: TDataSource;
    QPreciosemp_codigo: TIntegerField;
    QPreciossuc_codigo: TIntegerField;
    QPreciospro_codigo: TIntegerField;
    QPreciosprecio1: TBCDField;
    QPreciosprecio2: TBCDField;
    QPreciosprecio3: TBCDField;
    QPreciosprecio4: TBCDField;
    QPreciosbeneficio1: TBCDField;
    QPreciosbeneficio2: TBCDField;
    QPreciosbeneficio3: TBCDField;
    QPreciosbeneficio4: TBCDField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btgrabarClick(Sender: TObject);
    procedure btexitClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QPreciosbeneficio1Change(Sender: TField);
    procedure QPreciosbeneficio2Change(Sender: TField);
    procedure QPreciosbeneficio3Change(Sender: TField);
    procedure QPreciosbeneficio4Change(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    Costo : double;
  end;

var
  frmPrecioSucursal: TfrmPrecioSucursal;

implementation

uses SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmPrecioSucursal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
   begin
     perform(wm_nextdlgctl, 0, 0);
     key := #0;
   end;
end;

procedure TfrmPrecioSucursal.btgrabarClick(Sender: TObject);
begin
  QPrecios.Post;
  QPrecios.UpdateBatch;
  Close;
end;

procedure TfrmPrecioSucursal.btexitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrecioSucursal.FormActivate(Sender: TObject);
begin
  edCosto.Text := format('%n',[Costo]);
end;

procedure TfrmPrecioSucursal.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
end;

procedure TfrmPrecioSucursal.QPreciosbeneficio1Change(Sender: TField);
begin
  if not QPreciosbeneficio1.IsNull then
    QPreciosprecio1.Value := Costo + ((Costo*QPreciosbeneficio1.Value)/100);
end;

procedure TfrmPrecioSucursal.QPreciosbeneficio2Change(Sender: TField);
begin
  if not QPreciosbeneficio2.IsNull then
    QPreciosprecio2.Value := Costo + ((Costo*QPreciosbeneficio2.Value)/100);
end;

procedure TfrmPrecioSucursal.QPreciosbeneficio3Change(Sender: TField);
begin
  if not QPreciosbeneficio3.IsNull then
    QPreciosprecio3.Value := Costo + ((Costo*QPreciosbeneficio3.Value)/100);
end;

procedure TfrmPrecioSucursal.QPreciosbeneficio4Change(Sender: TField);
begin
  if not QPreciosbeneficio4.IsNull then
    QPreciosprecio4.Value := Costo + ((Costo*QPreciosbeneficio4.Value)/100);
end;

end.
