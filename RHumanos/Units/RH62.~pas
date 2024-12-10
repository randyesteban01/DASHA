unit RH62;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB, ADODB, Grids, DBGrids;

type
  TfrmConsNomina = class(TForm)
    Panel1: TPanel;
    QTipoNomina: TADOQuery;
    QTipoNominatno_codigo: TIntegerField;
    QTipoNominatno_nombre: TStringField;
    dsTipoNomina: TDataSource;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    btvolantes: TBitBtn;
    btClose: TBitBtn;
    gnominas: TDBGrid;
    QNominas: TADOQuery;
    BitBtn2: TBitBtn;
    QTipoNominaemp_codigo: TIntegerField;
    QNominasnom_codigo: TIntegerField;
    QNominasemp_codigo: TIntegerField;
    QNominastno_codigo: TIntegerField;
    QNominasnom_fecha_desde: TDateTimeField;
    QNominasnom_fecha_hasta: TDateTimeField;
    QNominasnom_fecha_acreditar: TDateTimeField;
    QNominasIngresos: TBCDField;
    QNominasDescuentos: TBCDField;
    dsNominas: TDataSource;
    QNovedades: TADOQuery;
    QNovedadestin_nombre: TStringField;
    QNovedadestde_nombre: TStringField;
    QNovedadesdet_monto: TBCDField;
    QNovedadestin_codigo: TIntegerField;
    QNovedadestde_codigo: TIntegerField;
    dsNovedades: TDataSource;
    DBGrid1: TDBGrid;
    QNovedadesDescripcion: TStringField;
    QNovedadesIngreso: TFloatField;
    QNovedadesDescuento: TFloatField;
    Splitter1: TSplitter;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QNovedadesCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsNomina: TfrmConsNomina;

implementation

uses SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmConsNomina.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmConsNomina.QNovedadesCalcFields(DataSet: TDataSet);
begin
  if QNovedadestde_codigo.AsInteger > 0 then
  begin
    QNovedadesDescuento.Value   := QNovedadesdet_monto.Value;
    QNovedadesDescripcion.Value := QNovedadestde_nombre.Value;
  end
  else
  begin
    QNovedadesIngreso.Value     := QNovedadesdet_monto.Value;
    QNovedadesDescripcion.Value := QNovedadestin_nombre.Value;
  end;
end;

procedure TfrmConsNomina.FormActivate(Sender: TObject);
begin
  if not QTipoNomina.Active then
  begin
    QTipoNomina.Open;
    QNominas.Open;
    QNovedades.Open;
  end;
end;

procedure TfrmConsNomina.FormPaint(Sender: TObject);
begin
  with frmConsNomina do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsNomina.BitBtn2Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('execute PR_GENERA_ASISNTO_NOMINA :emp, :tno, :nom');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tno').Value := QNominastno_codigo.Value;
  dm.Query1.Parameters.ParamByName('nom').Value := QNominasnom_codigo.Value;
  dm.Query1.ExecSQL;
  MessageDlg('Asiento contable generado',mtInformation,[mbok],0);
end;

end.
