unit PVENTA200;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, DBCtrls, QuerySearchDlgADO;

type
  TfrmAntiguedadCxC = class(TForm)
    BitBtn1: TBitBtn;
    btClose: TBitBtn;
    QAntiguedad: TADOQuery;
    CheckBox1: TCheckBox;
    QAntiguedadDescripcion: TStringField;
    QAntiguedadDesde: TIntegerField;
    QAntiguedadHasta: TIntegerField;
    dsAntiguedad: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Search: TQrySearchDlgADO;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAntiguedadCxC: TfrmAntiguedadCxC;

implementation

uses SIGMA01, PVENTA74;

{$R *.dfm}

procedure TfrmAntiguedadCxC.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAntiguedadCxC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmAntiguedadCxC.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tRAntigSaldo, RAntigSaldo);
  RAntigSaldo.lbVendedor.Caption := ' ';
  if CheckBox1.Checked then
    RAntigSaldo.Dia := DBLookupComboBox1.KeyValue
  else
    RAntigSaldo.Dia := 0;
  if MessageDLG('Desea Seleccionar un Vendedor?', mtConfirmation, [mbyes,mbno],0) = mryes then
  begin
    Search.Query.Clear;
    Search.AliasFields.Clear;
    Search.Query.Add('select ven_nombre, ven_codigo');
    Search.Query.Add('from vendedores');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Codigo');
    Search.ResultField := 'ven_codigo';
    Search.Title := 'vendedores';
    if Search.execute then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ven_nombre from vendedores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ven_codigo = :ven');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('ven').Value := StrToInt(Search.ValueField);
      dm.Query1.Open;

      RAntigSaldo.lbVendedor.Caption := dm.Query1.FieldByName('ven_nombre').Value;
      RAntigSaldo.QClientes.SQL.Add('where cli_codigo in (select cli_codigo from clientes');
      RAntigSaldo.QClientes.SQL.Add('where emp_codigo = '+inttostr(dm.vp_cia));
      RAntigSaldo.QClientes.SQL.Add('and ven_codigo = '+Search.ValueField+')');
    end;
  end;
  RAntigSaldo.lbFecha.Caption := 'Al '+DateToStr(Date);
  RAntigSaldo.QClientes.Parameters.ParamByName('Fecha').DataType := ftDate;
  RAntigSaldo.QClientes.Parameters.ParamByName('Fecha').Value := Date;
  screen.Cursor := crHourGlass;
  RAntigSaldo.QClientes.Open;
  screen.Cursor := crDefault;
  RAntigSaldo.PrinterSetup;
  RAntigSaldo.Preview;
  RAntigSaldo.Destroy;
end;

procedure TfrmAntiguedadCxC.FormActivate(Sender: TObject);
begin
  if not QAntiguedad.Active then QAntiguedad.Open;
end;

end.
