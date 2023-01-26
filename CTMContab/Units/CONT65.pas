unit CONT65;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DateUtils, ExtCtrls, DBCtrls, DB,
  ADODB;

type
  TfrmNCFUnico = class(TForm)
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
    cbGrupo: TRadioGroup;
    CheckBox1: TCheckBox;
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
  frmNCFUnico: TfrmNCFUnico;

implementation

uses SIGMA01, SIGMA00, RCONT25, RCONT28;

{$R *.dfm}

procedure TfrmNCFUnico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmNCFUnico.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNCFUnico.FormCreate(Sender: TObject);
begin
  Fecha.Date := Date;
end;

procedure TfrmNCFUnico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if (ssCtrl in Shift) and (ord(key) = 66) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 1;
  if (ssCtrl in Shift) and (ord(key) = 65) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 0;
  if (ssCtrl in Shift) and (ord(key) = 84) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 2;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmNCFUnico.FormActivate(Sender: TObject);
begin
  if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
  (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
     cbGrupo.ItemIndex := 0
  else
     cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);

  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmNCFUnico.BitBtn2Click(Sender: TObject);
var
  NCF_Fijo : string;
  NCF_Sec, NCF_Ini, NCF_Fin  : double;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select count(*) as cantidad');
  dm.Query1.SQL.Add('from ncf_unico_ingreso');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.SQL.Add('and com_fecha = convert(datetime, :fec, 105)');
  dm.Query1.SQL.Add('and com_forma = :for');
  dm.Query1.Parameters.ParamByName('emp').Value    := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec').Value    := Fecha.Date;
  dm.Query1.Parameters.ParamByName('for').Value    := cbGrupo.Items[cbGrupo.ItemIndex];
  dm.Query1.Open;

  if dm.Query1.FieldByName('cantidad').AsInteger = 0 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia, ncf_inicial, ncf_final from ncf_unico');
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
      dm.Query1.SQL.Add('insert into NCF_unico_ingreso');
      dm.Query1.SQL.Add('(emp_codigo, suc_codigo, com_fecha, com_forma, ncf_fijo,');
      dm.Query1.SQL.Add('ncf_secuencia)');
      dm.Query1.SQL.Add('values (:emp, :suc, convert(datetime,:fec,105), :for, :fij, :sec)');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
      dm.Query1.Parameters.ParamByName('fec').Value := Fecha.Date;
      dm.Query1.Parameters.ParamByName('for').Value := cbGrupo.Items[cbGrupo.ItemIndex];
      dm.Query1.Parameters.ParamByName('fij').Value := NCF_Fijo;
      dm.Query1.Parameters.ParamByName('sec').Value := NCF_Sec;
      dm.Query1.ExecSQL;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('update ncf_unico set ncf_Secuencia = :sec');
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
    dm.Query1.SQL.Add('select ncf_fijo, ncf_secuencia from ncf_unico_ingreso');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and com_fecha = convert(Datetime,:fec,105)');
    dm.Query1.SQL.Add('and com_forma = :for');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
    dm.Query1.Parameters.ParamByName('fec').Value := Fecha.Date;
    dm.Query1.Parameters.ParamByName('for').Value := cbGrupo.Items[cbGrupo.ItemIndex];
    dm.Query1.Open;
    NCF_Fijo := dm.Query1.FieldByName('ncf_fijo').Value;
    NCF_Sec  := dm.Query1.FieldByName('ncf_secuencia').Value;
  end;

  if CheckBox1.Checked then
  begin
    Application.CreateForm(tRNCF_Unico, RNCF_Unico);
    RNCF_Unico.lbfecha.Caption := 'Fecha emision: '+DateToStr(Date);
    RNCF_Unico.lbncf.Caption   := 'NCF: '+NCF_Fijo+FormatFloat('00000000',NCF_Sec);
    RNCF_Unico.QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RNCF_Unico.QDetalle.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    RNCF_Unico.QDetalle.Parameters.ParamByName('fec').DataType := ftDate;
    RNCF_Unico.QDetalle.Parameters.ParamByName('fec').Value := Fecha.Date;
    RNCF_Unico.QDetalle.Parameters.ParamByName('for').Value := cbGrupo.Items[cbGrupo.ItemIndex];
    RNCF_Unico.QDetalle.Open;
    RNCF_Unico.PrinterSetup;
    RNCF_Unico.Preview;
    RNCF_Unico.Destroy;
  end
  else
  begin
    Application.CreateForm(tRNCF_Unico_Resumen, RNCF_Unico_Resumen);
    RNCF_Unico_Resumen.lbfecha.Caption := 'Fecha emision: '+DateToStr(Date);
    RNCF_Unico_Resumen.lbncf.Caption   := 'NCF: '+NCF_Fijo+FormatFloat('00000000',NCF_Sec);
    RNCF_Unico_Resumen.QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RNCF_Unico_Resumen.QDetalle.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    RNCF_Unico_Resumen.QDetalle.Parameters.ParamByName('fec').DataType := ftDate;
    RNCF_Unico_Resumen.QDetalle.Parameters.ParamByName('fec').Value := Fecha.Date;
    RNCF_Unico_Resumen.QDetalle.Open;
    RNCF_Unico_Resumen.PrinterSetup;
    RNCF_Unico_Resumen.Preview;
    RNCF_Unico_Resumen.Destroy;
  end;

end;

end.




