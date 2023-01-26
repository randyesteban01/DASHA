unit CONT93;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids, DBCtrls, ComCtrls,
  ExtCtrls, frxClass, frxDBSet, QuerySearchDlgADO;

type
  TfrmDispBanco = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    btBanco: TSpeedButton;
    Label14: TLabel;
    Fecha1: TDateTimePicker;
    edBanco: TEdit;
    tBanco: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    qBalBanco: TADOQuery;
    dsBalBanco: TDataSource;
    qBalBancoBANCO: TIntegerField;
    qBalBancoBANCONOMBRE: TStringField;
    qBalBancoBALANTERIOR: TCurrencyField;
    qBalBancoDEPOSITOS: TCurrencyField;
    qBalBancoCARGOSCRED: TCurrencyField;
    qBalBancoCARGOSDEB: TCurrencyField;
    qBalBancoCHEQUES: TCurrencyField;
    qBalBancoBALANCELIBRO: TCurrencyField;
    qBalBancoCHEQUESTRANS: TCurrencyField;
    qBalBancoDEPOSTRANS: TCurrencyField;
    qBalBancoBANCODISP: TCurrencyField;
    btRefresh: TBitBtn;
    BitBtn2: TBitBtn;
    dsSuc: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    DBBalBanco: TfrxDBDataset;
    Rpt_BalanceBanco: TfrxReport;
    Search: TQrySearchDlgADO;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure qBalBancoAfterOpen(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure edBancoChange(Sender: TObject);
    procedure edBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBancoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDispBanco: TfrmDispBanco;

implementation

uses SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmDispBanco.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmDispBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmDispBanco.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  BitBtn2.Enabled := False;
end;

procedure TfrmDispBanco.btRefreshClick(Sender: TObject);
begin
with qBalBanco do begin
Close;
Parameters.ParamByName('EMP').Value   := DM.vp_cia;
Parameters.ParamByName('SUC').Value   := DBLookupComboBox2.KeyValue;
IF edBanco.Text = '' THEN
Parameters.ParamByName('BANCO').Value := 0 ELSE
Parameters.ParamByName('BANCO').Value := Trim(edBanco.Text);
Parameters.ParamByName('FECHA').Value := Fecha1.Date;
Open;
end;
end;

procedure TfrmDispBanco.qBalBancoAfterOpen(DataSet: TDataSet);
begin
if qBalBanco.RecordCount > 0 then
BitBtn2.Enabled := True else
BitBtn2.Enabled := False;
end;

procedure TfrmDispBanco.BitBtn2Click(Sender: TObject);
begin
if qBalBanco.RecordCount > 0 then
Rpt_BalanceBanco.ShowReport();
end;

procedure TfrmDispBanco.edBancoChange(Sender: TObject);
begin
  if Trim(edBanco.Text) = '' then tBanco.Text := '';
end;

procedure TfrmDispBanco.edBancoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edBanco.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :cod');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmDispBanco.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Bancos';
  Search.ResultField := 'ban_codigo';
  if Search.execute then
  begin
    edBanco.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :cod');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

end.
