unit CONT22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, IBCustomDataSet, IBQuery,
  Spin, DateUtils, ComCtrls, ADODB, DBCtrls;

type
  TfrmCierreMes = class(TForm)
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    QMeses: TADOQuery;
    QMesesEMP_CODIGO: TIntegerField;
    QMesesANO: TIntegerField;
    QMesesMES: TIntegerField;
    QMesesSTATUS: TIBStringField;
    dsMeses: TDataSource;
    QMesesDMes: TStringField;
    QMesesEstado: TStringField;
    btReversa: TBitBtn;
    btCerrar: TBitBtn;
    Label3: TLabel;
    spAno: TSpinEdit;
    QMesesFECHA: TDateTimeField;
    Fecha: TDateTimePicker;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label15: TLabel;
    QMesesSUC_CODIGO: TIntegerField;
    QSucursalemp_Codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure dsMesesDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure spAnoChange(Sender: TObject);
    procedure QMesesCalcFields(DataSet: TDataSet);
    procedure btCerrarClick(Sender: TObject);
    procedure btReversaClick(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');

var
  frmCierreMes: TfrmCierreMes;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmCierreMes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCierreMes.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCierreMes.dsMesesDataChange(Sender: TObject; Field: TField);
begin
  btCerrar.Enabled  := QMesesSTATUS.Value <> 'C';
  btReversa.Enabled := QMesesSTATUS.Value = 'C';
end;

procedure TfrmCierreMes.FormActivate(Sender: TObject);
begin
  if not QMeses.Active then QMeses.Open;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
    spAno.Value  := YearOf(Date);
  end;
end;

procedure TfrmCierreMes.spAnoChange(Sender: TObject);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select emp_codigo as cant');
  dm.Query1.SQL.Add('from contmeses');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ano = :ano');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ano').Value := spAno.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Open;
  if dm.Query1.RecordCount = 0 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into contmeses (emp_codigo, suc_codigo, ano, mes, fecha)');
    dm.Query1.SQL.Add('values (:emp, :suc, :ano, :mes, :fec)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ano').Value := spAno.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    for a := 1 to 12 do
    begin
      dm.Query1.Parameters.ParamByName('mes').Value := a;
      Fecha.Date := DateOf(EndOfAMonth(spAno.Value, a));
      dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
      dm.Query1.ExecSQL;
    end;
  end;
  QMeses.Close;
  QMeses.Parameters.ParamByName('ano').Value := spAno.Value;
  QMeses.Open;
end;

procedure TfrmCierreMes.QMesesCalcFields(DataSet: TDataSet);
begin
  QMesesDMes.Value := DMes[QMesesMES.value];
  if QMesesSTATUS.Value = 'C' then QMesesEstado.Value := 'Cerrado';
end;

procedure TfrmCierreMes.btCerrarClick(Sender: TObject);
var
  nMes : Integer;
begin
  nMes := QMesesMES.Value;
  Screen.Cursor := crHourGlass;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('execute CONTPR_CIERRE_MES :emp, :suc, :ano, :mes');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ano').Value := spAno.Value;
  dm.Query1.Parameters.ParamByName('mes').Value := QMesesMES.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.ExecSQL;
  QMeses.Close;
  QMeses.Open;
  QMeses.Locate('MES',IntToStr(nMes),[]);
  Screen.Cursor := crDefault;
end;

procedure TfrmCierreMes.btReversaClick(Sender: TObject);
var
  nMes : Integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select count(mes) as cant from contmeses');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and fecha > :fec');
  dm.Query1.SQL.Add('and status = '+#39+'C'+#39);
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fec').Value    := QMesesFECHA.Value;
  dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cant').AsInteger > 0 then
    MessageDlg('EXISTEN MESES POSTERIORES QUE ESTAN CERRADOS'+#13+
               'DEBE DE REVERSARLOS',mtError,[mbok],0)
  else
  Begin
    Screen.Cursor := crHourGlass;
    nMes := QMesesMES.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute CONTPR_REVERSA_MES :emp, :suc, :ano, :mes');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ano').Value := spAno.Value;
    dm.Query1.Parameters.ParamByName('mes').Value := QMesesMES.Value;
    dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
    dm.Query1.ExecSQL;
    QMeses.Close;
    QMeses.Open;
    QMeses.Locate('MES',IntToStr(nMes),[]);
    Screen.Cursor := crDefault;
  End;
end;

procedure TfrmCierreMes.DBLookupComboBox2Click(Sender: TObject);
begin
  spAnoChange(self);
end;

end.
