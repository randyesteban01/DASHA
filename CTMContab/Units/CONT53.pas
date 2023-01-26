unit CONT53;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls, ADODB, QuerySearchDlgADO;

type
  TfrmCFGBceComparativo = class(TForm)
    GridNiveles: TDBGrid;
    QNivel: TADOQuery;
    QNivelBCE_NIVEL: TIntegerField;
    QNivelCAT_CUENTA: TIBStringField;
    QNivelEMP_CODIGO: TIntegerField;
    dsNivel: TDataSource;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    btElimina: TBitBtn;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    QNivelCAT_NOMBRE: TIBStringField;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btClose: TBitBtn;
    QCuentas: TADOQuery;
    dsCuentas: TDataSource;
    QCuentasBCE_NIVEL: TIntegerField;
    QCuentasCAT_CUENTA: TIBStringField;
    QCuentasEMP_CODIGO: TIntegerField;
    QCuentasCAT_NOMBRE: TIBStringField;
    Search: TQrySearchDlgADO;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure QNivelAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCFGBceComparativo: TfrmCFGBceComparativo;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmCFGBceComparativo.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCFGBceComparativo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCFGBceComparativo.BitBtn1Click(Sender: TObject);
var
  Nivel : Integer;
begin
  Search.Title := 'Catalogo de Cuentas';
  Search.ResultField := 'CAT_CUENTA';
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(bce_nivel),0) as maximo');
    dm.Query1.SQL.Add('from CONTCFG_BCECOMP_NIVEL');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    Nivel := dm.Query1.FieldByName('maximo').AsInteger + 1;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into CONTCFG_BCECOMP_NIVEL');
    dm.Query1.SQL.Add('(emp_codigo, bce_nivel, cat_cuenta)');
    dm.Query1.SQL.Add('values (:emp, :niv, :cta)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('niv').Value := Nivel;
    dm.Query1.Parameters.ParamByName('cta').Value  := Search.ValueField;
    dm.Query1.ExecSQL;

    QNivel.Close;
    QNivel.Open;
  end;
end;

procedure TfrmCFGBceComparativo.BitBtn3Click(Sender: TObject);
var
  Nivel : Integer;
begin
  Search.Title := 'Catalogo de Cuentas';
  Search.ResultField := 'CAT_CUENTA';
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into CONTCFG_BCECOMP_CTAS');
    dm.Query1.SQL.Add('(emp_codigo, bce_nivel, cat_cuenta)');
    dm.Query1.SQL.Add('values (:emp, :niv, :cta)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('niv').Value := QNivelBCE_NIVEL.Value;
    dm.Query1.Parameters.ParamByName('cta').Value  := Search.ValueField;
    dm.Query1.ExecSQL;

    QCuentas.Close;
    QCuentas.Open;
  end;
end;

procedure TfrmCFGBceComparativo.FormActivate(Sender: TObject);
begin
  if not QNivel.Active then
  begin
    QNivel.Open;
    QCuentas.Open;
    btElimina.Enabled := QCuentas.RecordCount = 0;
  end;
end;

procedure TfrmCFGBceComparativo.FormPaint(Sender: TObject);
begin
  frmCFGBceComparativo.Top := 6;
  frmCFGBceComparativo.Left := 4;
end;

procedure TfrmCFGBceComparativo.btEliminaClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from');
  dm.Query1.SQL.Add('CONTCFG_BCECOMP_NIVEL');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and bce_nivel = :niv');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('niv').Value := QNivelBCE_NIVEL.Value;
  dm.Query1.Open;
  QNivel.Close;
  QNivel.Open;
end;

procedure TfrmCFGBceComparativo.BitBtn4Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from');
  dm.Query1.SQL.Add('CONTCFG_BCECOMP_CTAS');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and bce_nivel = :niv');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('niv').Value := QNivelBCE_NIVEL.Value;
  dm.Query1.Parameters.ParamByName('cta').Value  := QCuentasCAT_CUENTA.Value;
  dm.Query1.Open;
  QCuentas.Close;
  QCuentas.Open;
end;

procedure TfrmCFGBceComparativo.QNivelAfterScroll(DataSet: TDataSet);
begin
  btElimina.Enabled := QCuentas.RecordCount = 0;
end;

end.
