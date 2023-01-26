unit PVENTA42;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, IBCustomDataSet, IBQuery,
  ExtCtrls, ADODB;

type
  TfrmBuscaFactura = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    edNumero: TEdit;
    BitBtn1: TBitBtn;
    btClose: TBitBtn;
    QTipo: TADOQuery;
    QTipoTFA_CODIGO: TIntegerField;
    QTipoTFA_NOMBRE: TIBStringField;
    dsTipo: TDataSource;
    rbForma: TRadioGroup;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Busco : boolean;
  end;

var
  frmBuscaFactura: TfrmBuscaFactura;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmBuscaFactura.btCloseClick(Sender: TObject);
begin
  Busco := false;
  close;
end;

procedure TfrmBuscaFactura.BitBtn1Click(Sender: TObject);
begin
  Busco := true;
  close;
end;

procedure TfrmBuscaFactura.FormCreate(Sender: TObject);
begin
  Busco := false;
  QTipo.open;
  QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
  QSucursal.Open;
end;

end.
