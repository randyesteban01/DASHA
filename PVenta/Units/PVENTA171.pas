unit PVENTA171;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls, DB, ADODB;

type
  TfrmRepOfertasOtorgadas = class(TForm)
    btPrint: TBitBtn;
    btClose: TBitBtn;
    Label2: TLabel;
    Label8: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepOfertasOtorgadas: TfrmRepOfertasOtorgadas;

implementation

uses SIGMA01, RVENTA87;

{$R *.dfm}

procedure TfrmRepOfertasOtorgadas.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepOfertasOtorgadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepOfertasOtorgadas.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmRepOfertasOtorgadas.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepOfertasOtorgadas.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRRepOfertasOtorgadas, RRepOfertasOtorgadas);
  RRepOfertasOtorgadas.lbFecha.Caption := 'Del ' + DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RRepOfertasOtorgadas.QProductos.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RRepOfertasOtorgadas.QProductos.Parameters.ParamByName('fecha1').DataType := ftDate;
  RRepOfertasOtorgadas.QProductos.Parameters.ParamByName('fecha2').DataType := ftDate;
  RRepOfertasOtorgadas.QProductos.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RRepOfertasOtorgadas.QProductos.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RRepOfertasOtorgadas.QProductos.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;

  RRepOfertasOtorgadas.QClientes.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RRepOfertasOtorgadas.QClientes.Parameters.ParamByName('fecha1').DataType := ftDate;
  RRepOfertasOtorgadas.QClientes.Parameters.ParamByName('fecha2').DataType := ftDate;
  RRepOfertasOtorgadas.QClientes.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RRepOfertasOtorgadas.QClientes.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RRepOfertasOtorgadas.QClientes.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;

  RRepOfertasOtorgadas.QProductos.Open;
  RRepOfertasOtorgadas.QClientes.Open;
  RRepOfertasOtorgadas.QRLSUCURSAL.Caption := UpperCase(DBLookupComboBox2.Text);
  RRepOfertasOtorgadas.PrinterSetup;
  RRepOfertasOtorgadas.Preview;
  RRepOfertasOtorgadas.Destroy;
end;

end.
