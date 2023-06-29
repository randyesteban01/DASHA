unit PVENTA250;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, DBCtrls;

type
  TfrmRepCxcGeneralSucursal = class(TForm)
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    btPrint: TBitBtn;
    btClose: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btPrintClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepCxcGeneralSucursal: TfrmRepCxcGeneralSucursal;

implementation

uses SIGMA01, RVENTA31;

{$R *.dfm}

procedure TfrmRepCxcGeneralSucursal.FormActivate(Sender: TObject);
begin
 if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepCxcGeneralSucursal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRepCxcGeneralSucursal.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepCxcGeneralSucursal.btPrintClick(Sender: TObject);
begin
    Application.CreateForm(tRCxC, RCxC);
    RCxC.QDocs.Parameters.ParamByName('suc_codigo').Value := DBLookupComboBox2.KeyValue;
    RCxC.QClientes.Open;
    RCxC.QDocs.Open;
    RCxC.lbFecha.Caption := 'Al '+DateToStr(Date);
    RCxC.PrinterSetup;
    RCxC.Preview;
    RCxC.Destroy;
end;

procedure TfrmRepCxcGeneralSucursal.btCloseClick(Sender: TObject);
begin
  Close;
end;

end.
