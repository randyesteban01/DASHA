unit RH44;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DBCtrls, DB, ADODB, Grids, DBGrids;

type
  TfrmInclusionSeguro = class(TForm)
    PageControl1: TPageControl;
    btClose: TBitBtn;
    TabSheet1: TTabSheet;
    QEmpleados: TADOQuery;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosNombres: TStringField;
    dsEmpleado: TDataSource;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    QDepend: TADOQuery;
    dsDepend: TDataSource;
    QEmpleadosemp_codigo: TIntegerField;
    QDependemp_codigo: TIntegerField;
    QDependemp_numero: TIntegerField;
    QDependdep_numero: TIntegerField;
    QDependdep_nombre: TStringField;
    QTIpoSeguro: TADOQuery;
    QTIpoSeguroemp_codigo: TIntegerField;
    QTIpoSegurotse_codigo: TIntegerField;
    QTIpoSegurotse_nombre: TStringField;
    dsTipoSeguro: TDataSource;
    QPlanes: TADOQuery;
    dsPlanes: TDataSource;
    QPlanesemp_codigo: TIntegerField;
    QPlanestse_codigo: TIntegerField;
    QPlanespla_codigo: TIntegerField;
    QPlanespla_nombre: TStringField;
    QSeguroEmp: TADOQuery;
    QSeguroEmptse_nombre: TStringField;
    QSeguroEmppla_nombre: TStringField;
    dsSeguroEmp: TDataSource;
    DBGrid1: TDBGrid;
    Query1: TADOQuery;
    StaticText1: TStaticText;
    lbtotal: TStaticText;
    QSeguroEmppla_tarifa_basica: TBCDField;
    QSeguroEmppla_porciento_empresa: TBCDField;
    QSeguroDep: TADOQuery;
    dsSeguroDep: TDataSource;
    DBGrid2: TDBGrid;
    QSeguroDeptse_nombre: TStringField;
    QSeguroDeppla_nombre: TStringField;
    QSeguroDeppla_tarifa_basica: TBCDField;
    QSeguroDeppla_porciento_empresa: TBCDField;
    QSeguroDepdep_nombre: TStringField;
    QSeguroEmptse_codigo: TIntegerField;
    QSeguroEmpemp_codigo: TIntegerField;
    QSeguroEmpemp_numero: TIntegerField;
    QSeguroEmppla_codigo: TIntegerField;
    QSeguroDepemp_numero: TIntegerField;
    QSeguroDeptse_codigo: TIntegerField;
    QSeguroDeppla_codigo: TIntegerField;
    QSeguroDepdep_numero: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dsEmpleadoDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure totalizar;
  end;

var
  frmInclusionSeguro: TfrmInclusionSeguro;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmInclusionSeguro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmInclusionSeguro.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmInclusionSeguro.FormActivate(Sender: TObject);
begin
  if not QEmpleados.Active then
  begin
    QSeguroEmp.Open;
    QSeguroDep.Open;
    QEmpleados.Open;
    QDepend.Open;
    QTipoSeguro.Open;
    QPlanes.Open;

    DBLookupComboBox1.KeyValue := QEmpleadosemp_numero.Value;
  end;
end;

procedure TfrmInclusionSeguro.SpeedButton1Click(Sender: TObject);
var
  sec : integer;
begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select max(seg_secuencia) as maximo');
  Query1.SQL.Add('from empleado_planes_seguro');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and emp_numero = :num');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('num').Value := DBLookupComboBox1.KeyValue;
  Query1.Open;
  sec := Query1.FieldByName('maximo').AsInteger;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select pla_tarifa_basica, pla_porciento_empresa');
  Query1.SQL.Add('from planes_seguro');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and tse_codigo = :tse');
  Query1.SQL.Add('and pla_codigo = :pla');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('tse').Value := DBLookupComboBox2.KeyValue;
  Query1.Parameters.ParamByName('pla').Value := DBLookupComboBox3.KeyValue;
  Query1.Open;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into empleado_planes_seguro');
  dm.Query1.SQL.Add('(emp_codigo, tse_codigo, emp_numero,');
  dm.Query1.SQL.Add('pla_codigo, seg_secuencia,');
  dm.Query1.SQL.Add('pla_tarifa_basica, pla_porciento_empresa)');
  dm.Query1.SQL.Add('values (:emp, :tse, :num, :pla, :sec,:tar, :por)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tse').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('num').Value := DBLookupComboBox1.KeyValue;
  dm.Query1.Parameters.ParamByName('pla').Value := DBLookupComboBox3.KeyValue;
  dm.Query1.Parameters.ParamByName('sec').Value := sec + 1;
  dm.Query1.Parameters.ParamByName('tar').Value := Query1.FieldByName('pla_tarifa_basica').AsFloat;
  dm.Query1.Parameters.ParamByName('por').Value := Query1.FieldByName('pla_porciento_empresa').AsFloat;
  dm.Query1.ExecSQL;

  QSeguroEmp.Close;
  QSeguroEmp.Open;

  totalizar;
end;

procedure TfrmInclusionSeguro.totalizar;
var
  total : double;
begin
  QSeguroEmp.DisableControls;
  QSeguroEmp.First;
  total := 0;
  while not QSeguroEmp.Eof do
  begin
    total := total + QSeguroEmppla_tarifa_basica.Value -
            ((QSeguroEmppla_tarifa_basica.Value*QSeguroEmppla_porciento_empresa.Value)/100);
    QSeguroEmp.Next;
  end;
  QSeguroEmp.EnableControls;

  QSeguroDep.DisableControls;
  QSeguroDep.First;
  while not QSeguroDep.Eof do
  begin
    total := total + QSeguroDeppla_tarifa_basica.Value;
    QSeguroDep.Next;
  end;
  QSeguroDep.EnableControls;

  lbtotal.Caption := format('%n',[total]);
end;

procedure TfrmInclusionSeguro.dsEmpleadoDataChange(Sender: TObject;
  Field: TField);
begin
  totalizar;
end;

procedure TfrmInclusionSeguro.SpeedButton3Click(Sender: TObject);
var
  sec : integer;
  Tarifa : Double;
begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select max(seg_secuencia) as maximo');
  Query1.SQL.Add('from empleado_planes_seguro');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and emp_numero = :num');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('num').Value := DBLookupComboBox1.KeyValue;
  Query1.Open;
  sec := Query1.FieldByName('maximo').AsInteger;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select dep_tarifa');
  Query1.SQL.Add('from Planes_Dependientes');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and tse_codigo = :tse');
  Query1.SQL.Add('and pla_codigo = :pla');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('tse').Value := DBLookupComboBox5.KeyValue;
  Query1.Parameters.ParamByName('pla').Value := DBLookupComboBox6.KeyValue;
  Query1.Open;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into empleado_planes_seguro');
  dm.Query1.SQL.Add('(emp_codigo, tse_codigo, emp_numero,');
  dm.Query1.SQL.Add('pla_codigo, seg_secuencia,');
  dm.Query1.SQL.Add('pla_tarifa_basica, pla_porciento_empresa, dep_numero)');
  dm.Query1.SQL.Add('values (:emp, :tse, :num, :pla, :sec, :tar, 0, :dep)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tse').Value := DBLookupComboBox5.KeyValue;
  dm.Query1.Parameters.ParamByName('num').Value := DBLookupComboBox1.KeyValue;
  dm.Query1.Parameters.ParamByName('pla').Value := DBLookupComboBox6.KeyValue;
  dm.Query1.Parameters.ParamByName('sec').Value := sec + 1;
  dm.Query1.Parameters.ParamByName('tar').Value := Query1.FieldByName('dep_tarifa').AsFloat;
  dm.Query1.Parameters.ParamByName('dep').Value := DBLookupComboBox4.KeyValue;
  dm.Query1.ExecSQL;

  QSeguroDep.Close;
  QSeguroDep.Open;

{  while not QSeguroDep.eof do
  begin
    tarifa := Query1.FieldByName('tarifa').AsFloat;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('update empleado_planes_seguro');
    Query1.SQL.Add('set pla_tarifa_basica = :tar');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and tse_codigo = :tse');
    Query1.SQL.Add('and pla_codigo = :pla');
    Query1.SQL.Add('and emp_numero = :num');
    Query1.SQL.Add('and dep_numero = :dep');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('tse').Value := QSeguroDeptse_codigo.Value;
    Query1.Parameters.ParamByName('pla').Value := QSeguroDeppla_codigo.Value;
    Query1.Parameters.ParamByName('num').Value := QSeguroDepemp_numero.Value;
    Query1.Parameters.ParamByName('dep').Value := QSeguroDepdep_numero.Value;
    Query1.ExecSQL;

    QSeguroDep.next;
  end;

  QSeguroDep.Close;
  QSeguroDep.Open;}

  totalizar;
end;

procedure TfrmInclusionSeguro.DBLookupComboBox2Click(Sender: TObject);
begin
  QPlanes.Close;
  QPlanes.Open;
end;

procedure TfrmInclusionSeguro.SpeedButton2Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from empleado_planes_seguro');
  dm.Query1.SQL.Add('where emp_codigo = :emp and tse_codigo = :tse');
  dm.Query1.SQL.Add('and emp_numero = :num and pla_codigo = :pla');
  dm.Query1.SQL.Add('and dep_numero is null');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tse').Value := QSeguroEmptse_codigo.Value;
  dm.Query1.Parameters.ParamByName('num').Value := QSeguroEmpemp_numero.Value;
  dm.Query1.Parameters.ParamByName('pla').Value := QSeguroEmppla_codigo.Value;
  dm.Query1.ExecSQL;

  QSeguroEmp.Close;
  QSeguroEmp.Open;

  totalizar;
end;

procedure TfrmInclusionSeguro.SpeedButton4Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from empleado_planes_seguro');
  dm.Query1.SQL.Add('where emp_codigo = :emp and tse_codigo = :tse');
  dm.Query1.SQL.Add('and emp_numero = :num and pla_codigo = :pla');
  dm.Query1.SQL.Add('and dep_numero = :dep');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tse').Value := QSeguroDeptse_codigo.Value;
  dm.Query1.Parameters.ParamByName('num').Value := QSeguroDepemp_numero.Value;
  dm.Query1.Parameters.ParamByName('pla').Value := QSeguroDeppla_codigo.Value;
  dm.Query1.Parameters.ParamByName('dep').Value := QSeguroDepdep_numero.Value;
  dm.Query1.ExecSQL;

  QSeguroDep.Close;
  QSeguroDep.Open;
end;

end.
