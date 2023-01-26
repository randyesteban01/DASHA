unit CONT66;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DateUtils, ExtCtrls, DBCtrls, DB,
  ADODB;

type
  TfrmNCFGastosMenores = class(TForm)
    StaticText1: TStaticText;
    Label1: TLabel;
    Fecha: TDateTimePicker;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QCajas: TADOQuery;
    QCajascaj_codigo: TIntegerField;
    QCajascaj_nombre: TStringField;
    dsCajas: TDataSource;
    Label3: TLabel;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNCFGastosMenores: TfrmNCFGastosMenores;

implementation

uses SIGMA01, SIGMA00, RCONT25, RCONT26;

{$R *.dfm}

procedure TfrmNCFGastosMenores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmNCFGastosMenores.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNCFGastosMenores.FormCreate(Sender: TObject);
begin
  Fecha.Date := Date;
  Fecha1.date := date;
  Fecha2.date := date;
end;

procedure TfrmNCFGastosMenores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmNCFGastosMenores.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    QCajas.Open;
    DBLookupComboBox1.KeyValue := QCajascaj_codigo.Value;
  end;
end;

procedure TfrmNCFGastosMenores.BitBtn2Click(Sender: TObject);
var
  NCF_Fijo : string;
  NCF_Sec, NCF_Ini, NCF_Fin  : double;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sum(des_monto) as monto');
  dm.Query1.SQL.Add('from desembolsos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.SQL.Add('and des_caja = :caj');
  dm.Query1.SQL.Add('and des_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
  dm.Query1.SQL.Add('and des_gasto_menor = '+QuotedStr('True'));
  dm.Query1.SQL.Add('and des_ncf is null');
  dm.Query1.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
  dm.Query1.Parameters.ParamByName('caj').Value    := DBLookupComboBox1.KeyValue;
  dm.Query1.Open;

  if dm.Query1.FieldByName('monto').AsFloat = 0 then
    MessageDlg('NO EXISTEN DESEMBOLSOS PARA ESTA CAJA EN ESTE PERIODO', mtError, [mbok], 0)
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select count(*) as cantidad');
    dm.Query1.SQL.Add('from ncf_Gastos_Menores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and com_fecha = convert(datetime, :fec, 105)');
    dm.Query1.SQL.Add('and caj_codigo = :caj');
    dm.Query1.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
    dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
    dm.Query1.Parameters.ParamByName('caj').Value    := DBLookupComboBox1.KeyValue;
    dm.Query1.Open;

    if dm.Query1.FieldByName('cantidad').AsInteger = 0 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia, ncf_inicial, ncf_final from ncf_menores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        NCF_Fijo := dm.Query1.FieldByName('ncf_fijo').AsString;
        NCF_Sec  := dm.Query1.FieldByName('ncf_secuencia').AsFloat;
        NCF_Ini  := dm.Query1.FieldByName('ncf_inicial').AsFloat;
        NCF_FIn  := dm.Query1.FieldByName('ncf_final').AsFloat;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('insert into NCF_Gastos_Menores');
        dm.Query1.SQL.Add('(emp_codigo, suc_codigo, com_fecha, caj_codigo, ncf_fijo,');
        dm.Query1.SQL.Add('ncf_secuencia, com_fecha_ini, com_fecha_fin)');
        dm.Query1.SQL.Add('values (:emp, :suc, convert(datetime,:fec,105), :caj, :fij, :sec, :fec1, :fec2)');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
        dm.Query1.Parameters.ParamByName('fec').Value := Fecha.Date;
        dm.Query1.Parameters.ParamByName('caj').Value := DBLookupComboBox1.KeyValue;
        dm.Query1.Parameters.ParamByName('fij').Value := NCF_Fijo;
        dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
        dm.Query1.Parameters.ParamByName('fec1').Value := Fecha1.Date;
        dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
        dm.Query1.Parameters.ParamByName('fec2').Value := Fecha2.Date;
        dm.Query1.Parameters.ParamByName('sec').Value := NCF_Sec;
        dm.Query1.ExecSQL;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('update ncf_menores set ncf_Secuencia = :sec');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.SQL.Add('and ncf_fijo = :fij');
        dm.Query1.SQL.Add('and ncf_inicial = :ini');
        dm.Query1.SQL.Add('and ncf_final = :fin');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        dm.Query1.Parameters.ParamByName('fij').Value := NCF_Fijo;
        dm.Query1.Parameters.ParamByName('ini').Value := NCF_Ini;
        dm.Query1.Parameters.ParamByName('fin').Value := NCF_Fin;
        dm.Query1.Parameters.ParamByName('sec').Value := NCF_Sec + 1;
        dm.Query1.ExecSQL;
      end;
    end
    else
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from ncf_Gastos_Menores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.SQL.Add('and com_fecha = convert(Datetime,:fec,105)');
      dm.Query1.SQL.Add('and caj_codigo = :caj');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
      dm.Query1.Parameters.ParamByName('fec').Value := Fecha.Date;
      dm.Query1.Parameters.ParamByName('caj').Value := DBLookupComboBox1.KeyValue;
      dm.Query1.Open;
      NCF_Fijo := dm.Query1.FieldByName('ncf_fijo').Value;
      NCF_Sec  := dm.Query1.FieldByName('ncf_secuencia').Value;
    end;

    Application.CreateForm(tRNCF_Gastos_Menores, RNCF_Gastos_Menores);
    RNCF_Gastos_Menores.lbperiodo.caption := 'Periodo: '+DateToStr(fecha1.Date)+' Al '+ DateToStr(fecha2.Date);
    RNCF_Gastos_Menores.lbfecha.Caption := 'Fecha emision: '+DateToStr(Fecha.Date);
    RNCF_Gastos_Menores.lbncf.Caption   := 'NCF: '+NCF_Fijo+FormatFloat('00000000',NCF_Sec);
    RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec').DataType := ftDate;
    RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec').Value := Fecha.Date;
    RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('caj').Value := DBLookupComboBox1.KeyValue;
    RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec1').DataType := ftDate;
    RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec2').DataType := ftDate;
    RNCF_Gastos_Menores.QDetalle.Parameters.ParamByName('fec2').Value := Fecha2.Date;
    RNCF_Gastos_Menores.QDetalle.Open;
    RNCF_Gastos_Menores.PrinterSetup;
    RNCF_Gastos_Menores.Preview;
    RNCF_Gastos_Menores.Destroy;
  end;
end;

end.




