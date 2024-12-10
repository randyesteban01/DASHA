unit PVENTA205;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, ADODB, QRCtrls,
  QuickRpt, ComCtrls, QuerySearchDlgADO, DBCtrls;

type
  TfrmRepIngresos = class(TForm)
    Panel2: TPanel;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    QIngresos: TADOQuery;
    Panel1: TPanel;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Search: TQrySearchDlgADO;
    dsBonos: TDataSource;
    BitBtn1: TBitBtn;
    QIngresoscodcajero: TIntegerField;
    QIngresoscajero: TStringField;
    QIngresoscaja: TIntegerField;
    QIngresosefectivo: TBCDField;
    QIngresoscheque: TBCDField;
    QIngresostarjeta: TBCDField;
    QIngresoscredito: TBCDField;
    QIngresosbonos: TBCDField;
    QIngresostotal: TBCDField;
    QIngresosNombreCaja: TStringField;
    QIngresosValor: TFloatField;
    QIngresosOtros: TCurrencyField;
    QIngresosNC: TCurrencyField;
    dsSuc: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure QIngresosCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cliente : integer;
  end;

var
  frmRepIngresos: TfrmRepIngresos;

implementation

uses SIGMA00, RVENTA110, SIGMA01;

{$R *.dfm}

procedure TfrmRepIngresos.FormPaint(Sender: TObject);
begin
  with frmRepIngresos do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmRepIngresos.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmRepIngresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmRepIngresos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepIngresos.btRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QIngresos.Close;
  QIngresos.Parameters.ParamByName('suc_codigo').DataType := ftInteger;
  QIngresos.Parameters.ParamByName('fec1').DataType := ftDate;
  QIngresos.Parameters.ParamByName('fec2').DataType := ftDate;
  QIngresos.Parameters.ParamByName('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  QIngresos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QIngresos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  QIngresos.Open;
  Screen.Cursor := crDefault;
  DBGrid1.SetFocus;
end;

procedure TfrmRepIngresos.QIngresosCalcFields(DataSet: TDataSet);
begin
  QIngresosValor.Value := QIngresosefectivo.Value + QIngresoscheque.Value + QIngresostarjeta.Value +
                          QIngresosOtros.Value + QIngresosbonos.Value ;
end;

procedure TfrmRepIngresos.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tRepIngresos, RepIngresos);
  RepIngresos.lbFecha.Caption := 'Del '+DateToStr(fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  Screen.Cursor := crHourGlass;
  RepIngresos.QIngresos.Close;
  RepIngresos.QIngresos.Parameters.ParamByName('fec1').DataType := ftDate;
  RepIngresos.QIngresos.Parameters.ParamByName('fec2').DataType := ftDate;
  RepIngresos.QIngresos.Parameters.ParamByName('suc_codigo').DataType := ftInteger;
  RepIngresos.QIngresos.Parameters.ParamByName('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  RepIngresos.QIngresos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepIngresos.QIngresos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepIngresos.QIngresos.Open;
  Screen.Cursor := crDefault;

  RepIngresos.PrinterSetup;
  RepIngresos.Preview;
  RepIngresos.Destroy;
end;

procedure TfrmRepIngresos.FormActivate(Sender: TObject);
begin
if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

end.
