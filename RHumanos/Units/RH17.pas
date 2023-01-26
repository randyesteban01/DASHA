unit RH17;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmTipoIngresos = class(TForm)
    QTipos: TADOQuery;
    dsTipo: TDataSource;
    Search: TQrySearchDlgADO;
    QTiposemp_codigo: TIntegerField;
    QTipostin_codigo: TIntegerField;
    QTipostin_nombre: TStringField;
    QTipostin_prestaciones: TStringField;
    QTipostin_isr: TStringField;
    QTipostin_regalia: TStringField;
    ActionList2: TActionList;
    btPrior: TAction;
    btNext: TAction;
    btInsert: TAction;
    btEdit: TAction;
    btDelete: TAction;
    btPost: TAction;
    btCancel: TAction;
    btFind: TAction;
    btPrint: TAction;
    btClose: TAction;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton13: TToolButton;
    ToolButton12: TToolButton;
    ToolButton14: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit1: TDBEdit;
    btinsertnom: TSpeedButton;
    btdeletenom: TSpeedButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBLookupListBox1: TDBLookupListBox;
    DBLookupListBox2: TDBLookupListBox;
    StaticText3: TStaticText;
    DBGrid1: TDBGrid;
    QTipoNomina: TADOQuery;
    QTipoNominatno_codigo: TIntegerField;
    QTipoNominatno_nombre: TStringField;
    dsTipoNomina: TDataSource;
    dsNominaIng: TDataSource;
    QNominaIng: TADOQuery;
    QNominaIngtno_nombre: TStringField;
    QNominaIngtno_codigo: TIntegerField;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QListadotin_codigo: TIntegerField;
    QListadotin_nombre: TStringField;
    btCuenta: TSpeedButton;
    Label6: TLabel;
    tCuenta: TEdit;
    DBEdit4: TDBEdit;
    QTiposcat_cuenta: TStringField;
    dbchktin_afecta_AFP: TDBCheckBox;
    dbchktin_afecta_ARS: TDBCheckBox;
    QTipostde_afecta_ARS: TStringField;
    QTipostde_afecta_AFP: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QTiposAfterDelete(DataSet: TDataSet);
    procedure QTiposAfterPost(DataSet: TDataSet);
    procedure QTiposNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsTipoStateChange(Sender: TObject);
    procedure QTiposBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btinsertnomClick(Sender: TObject);
    procedure btdeletenomClick(Sender: TObject);
    procedure dsTipoNominaDataChange(Sender: TObject; Field: TField);
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QTiposcat_cuentaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoIngresos: TfrmTipoIngresos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoIngresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoIngresos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoIngresos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoIngresos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoIngresos.QTiposAfterDelete(DataSet: TDataSet);
begin
  QTipos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmTipoIngresos.QTiposAfterPost(DataSet: TDataSet);
begin
  QTipos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmTipoIngresos.QTiposNewRecord(DataSet: TDataSet);
begin
  QTiposEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QTipostin_prestaciones.Value := 'False';
  QTipostin_isr.Value := 'False';
  QTipostin_regalia.Value := 'False';
end;

procedure TfrmTipoIngresos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tin_nombre, tin_codigo');
  Search.Query.Add('from tipo_ingresos');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QTipos.locate('tin_codigo',search.valuefield,[]);
end;

procedure TfrmTipoIngresos.btPostClick(Sender: TObject);
begin
  QTipos.post;
end;

procedure TfrmTipoIngresos.btCancelClick(Sender: TObject);
begin
  QTipos.cancel;
end;

procedure TfrmTipoIngresos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipos.delete;
end;

procedure TfrmTipoIngresos.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QTipos.edit;
end;

procedure TfrmTipoIngresos.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QTipos.insert;
end;

procedure TfrmTipoIngresos.btpriorClick(Sender: TObject);
begin
  if not QTipos.Bof then QTipos.prior;
end;

procedure TfrmTipoIngresos.btnextClick(Sender: TObject);
begin
  if not QTipos.eof then QTipos.next;
end;

procedure TfrmTipoIngresos.FormActivate(Sender: TObject);
begin
  if not QTipos.active then
  begin
    QTipos.open;
    QNominaIng.Open;
    QTipoNomina.Open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QTipos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoIngresos.dsTipoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipo.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btCuenta.enabled  := not btInsert.enabled;
end;

procedure TfrmTipoIngresos.QTiposBeforePost(DataSet: TDataSet);
begin
  if trim(QTipostin_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTipos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tin_codigo),0) as maximo');
    dm.query1.sql.add('from tipo_ingresos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QTipostin_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoIngresos.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
end;

procedure TfrmTipoIngresos.btinsertnomClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into tipo_ingresos_nomina');
  dm.Query1.SQL.Add('(emp_codigo, tin_codigo, tno_codigo)');
  dm.Query1.SQL.Add('values (:emp, :tin, :tno)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tin').Value := QTipostin_codigo.Value;
  dm.Query1.Parameters.ParamByName('tno').Value := DBLookupListBox1.KeyValue;
  dm.Query1.ExecSQL;

  QNominaIng.Close;
  QNominaIng.Open;
end;

procedure TfrmTipoIngresos.btdeletenomClick(Sender: TObject);
begin
  if QNominaIng.RecordCount > 0 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from tipo_ingresos_nomina');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tin_codigo = :tin');
    dm.Query1.SQL.Add('and tno_codigo = :tno');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tin').Value := QTipostin_codigo.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupListBox2.KeyValue;
    dm.Query1.ExecSQL;

    QNominaIng.Close;
    QNominaIng.Open;

    if QNominaIng.Locate('tno_codigo',QTipoNominatno_codigo.Value,[]) then
      btinsertnom.Enabled := false
    else
      btinsertnom.Enabled := true;
  end;
end;

procedure TfrmTipoIngresos.dsTipoNominaDataChange(Sender: TObject;
  Field: TField);
begin
  if QNominaIng.Locate('tno_codigo',QTipoNominatno_codigo.Value,[]) then
    btinsertnom.Enabled := false
  else
    btinsertnom.Enabled := true;
end;

procedure TfrmTipoIngresos.DBLookupListBox1Click(Sender: TObject);
begin
  if QNominaIng.Locate('tno_codigo',QTipoNominatno_codigo.Value,[]) then
    btinsertnom.Enabled := false
  else
    btinsertnom.Enabled := true;
end;

procedure TfrmTipoIngresos.DBGrid1DblClick(Sender: TObject);
begin
  QTipos.locate('tin_codigo',QListadotin_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmTipoIngresos.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QTiposcat_cuenta.Value := Search.ValueField;
     DBEdit4.SetFocus;
  end;
end;

procedure TfrmTipoIngresos.QTiposcat_cuentaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTiposcat_cuenta.IsNull then
  begin
    Text := QTiposcat_cuenta.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QTiposcat_cuenta.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tCuenta.Text := '';
  end
  else
    tCuenta.Text := '';
end;

end.
