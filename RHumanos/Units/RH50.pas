unit RH50;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmTipoDescuentos = class(TForm)
    QDescuentos: TADOQuery;
    dsDescuentos: TDataSource;
    Search: TQrySearchDlgADO;
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
    QGrupo: TADOQuery;
    dsGrupo: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    QForma: TADOQuery;
    QFormacodigo: TStringField;
    QFormaNombre: TStringField;
    dsForma: TDataSource;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QDescuentosemp_codigo: TIntegerField;
    QDescuentostde_codigo: TIntegerField;
    QDescuentostde_nombre: TStringField;
    QDescuentosgru_codigo: TIntegerField;
    QDescuentostde_prestamo: TStringField;
    QListadotde_codigo: TIntegerField;
    QListadotde_nombre: TStringField;
    QDescuentostde_forma: TStringField;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QGrupogru_codigo: TIntegerField;
    QGrupogru_nombre: TStringField;
    DBCheckBox1: TDBCheckBox;
    btinsertnom: TSpeedButton;
    btdeletenom: TSpeedButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBLookupListBox1: TDBLookupListBox;
    DBLookupListBox2: TDBLookupListBox;
    StaticText3: TStaticText;
    QTipoNomina: TADOQuery;
    QTipoNominatno_codigo: TIntegerField;
    QTipoNominatno_nombre: TStringField;
    dsTipoNomina: TDataSource;
    QNominaDesc: TADOQuery;
    QNominaDesctno_nombre: TStringField;
    QNominaDesctno_codigo: TIntegerField;
    dsNominaDesc: TDataSource;
    QDescuentostde_regalia_bonificacion: TStringField;
    DBCheckBox2: TDBCheckBox;
    QDescuentostde_visualizar: TStringField;
    DBCheckBox3: TDBCheckBox;
    QListadotde_visualizar: TStringField;
    QListadotde_secuencia_nomina: TIntegerField;
    QDescuentostde_secuencia_nomina: TIntegerField;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    QPeriodo: TADOQuery;
    QPeriodocodigo: TStringField;
    QPeriodoNombre: TStringField;
    dsPeriodo: TDataSource;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QDescuentosdes_periodo_descuento: TStringField;
    btCuenta: TSpeedButton;
    Label6: TLabel;
    tCuenta: TEdit;
    DBEdit4: TDBEdit;
    QDescuentoscat_cuenta: TStringField;
    QDescuentostde_afecta_ARS: TStringField;
    QDescuentostde_afecta_AFP: TStringField;
    dbchktde_afecta_AFP: TDBCheckBox;
    dbchktde_afecta_ARS: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QDescuentosAfterDelete(DataSet: TDataSet);
    procedure QDescuentosAfterPost(DataSet: TDataSet);
    procedure QDescuentosNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsDescuentosStateChange(Sender: TObject);
    procedure QDescuentosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btinsertnomClick(Sender: TObject);
    procedure btdeletenomClick(Sender: TObject);
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure dsTipoNominaDataChange(Sender: TObject; Field: TField);
    procedure btCuentaClick(Sender: TObject);
    procedure QDescuentoscat_cuentaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoDescuentos: TfrmTipoDescuentos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoDescuentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoDescuentos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoDescuentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoDescuentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.ClassType <> TDBGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmTipoDescuentos.QDescuentosAfterDelete(DataSet: TDataSet);
begin
  QDescuentos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmTipoDescuentos.QDescuentosAfterPost(DataSet: TDataSet);
begin
  QDescuentos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmTipoDescuentos.QDescuentosNewRecord(DataSet: TDataSet);
begin
  QDescuentosemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QDescuentostde_forma.Value  := '1';
  QDescuentostde_prestamo.Value := 'False';
  QDescuentostde_regalia_bonificacion.Value := 'False';
  QDescuentostde_visualizar.Value := 'True';
  QDescuentosdes_periodo_descuento.Value := '3';
  QDescuentostde_afecta_ARS.Value := 'False';
  QDescuentostde_afecta_AFP.Value := 'False';
end;

procedure TfrmTipoDescuentos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tde_nombre, tde_Codigo');
  Search.Query.Add('from tipo_descuentos');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
    QDescuentos.Locate('tde_codigo',Search.ValueField,[]);
end;

procedure TfrmTipoDescuentos.btPostClick(Sender: TObject);
begin
  QDescuentos.post;
end;

procedure TfrmTipoDescuentos.btCancelClick(Sender: TObject);
begin
  QDescuentos.cancel;
end;

procedure TfrmTipoDescuentos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QDescuentos.delete;
end;

procedure TfrmTipoDescuentos.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit3.setfocus;
  QDescuentos.edit;
end;

procedure TfrmTipoDescuentos.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit3.setfocus;
  QDescuentos.insert;
end;

procedure TfrmTipoDescuentos.btpriorClick(Sender: TObject);
begin
  if not QDescuentos.Bof then QDescuentos.prior;
end;

procedure TfrmTipoDescuentos.btnextClick(Sender: TObject);
begin
  if not QDescuentos.eof then QDescuentos.next;
end;

procedure TfrmTipoDescuentos.FormActivate(Sender: TObject);
begin
  if not QDescuentos.active then
  begin
    QPeriodo.Open;
    QDescuentos.open;
    QGrupo.Open;
    QForma.Open;
    QNominaDesc.Open;
    QTipoNomina.Open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QDescuentos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoDescuentos.dsDescuentosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsDescuentos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btcuenta.enabled  := not btInsert.enabled;
end;

procedure TfrmTipoDescuentos.QDescuentosBeforePost(DataSet: TDataSet);
begin
  if Trim(QDescuentostde_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QDescuentos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tde_codigo),0) as maximo');
    dm.query1.sql.add('from tipo_descuentos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QDescuentostde_codigo .value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoDescuentos.FormCreate(Sender: TObject);
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

procedure TfrmTipoDescuentos.DBGrid1DblClick(Sender: TObject);
begin
  QDescuentos.Locate('tde_codigo',QListadotde_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmTipoDescuentos.btinsertnomClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into tipo_descuentos_nomina');
  dm.Query1.SQL.Add('(emp_codigo, tde_codigo, tno_codigo)');
  dm.Query1.SQL.Add('values (:emp, :tde, :tno)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tde').Value := QDescuentostde_codigo.Value;
  dm.Query1.Parameters.ParamByName('tno').Value := DBLookupListBox1.KeyValue;
  dm.Query1.ExecSQL;

  QNominaDesc.Close;
  QNominaDesc.Open;
end;

procedure TfrmTipoDescuentos.btdeletenomClick(Sender: TObject);
begin
  if QNominaDesc.RecordCount > 0 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from tipo_descuentos_nomina');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tde_codigo = :tde');
    dm.Query1.SQL.Add('and tno_codigo = :tno');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tde').Value := QDescuentostde_codigo.Value;
    dm.Query1.Parameters.ParamByName('tno').Value := DBLookupListBox2.KeyValue;
    dm.Query1.ExecSQL;

    QNominaDesc.Close;
    QNominaDesc.Open;

    if QNominaDesc.Locate('tno_codigo',QTipoNominatno_codigo.Value,[]) then
      btinsertnom.Enabled := false
    else
      btinsertnom.Enabled := true;
  end;
end;

procedure TfrmTipoDescuentos.DBLookupListBox1Click(Sender: TObject);
begin
  if QNominaDesc.Locate('tno_codigo',QTipoNominatno_codigo.Value,[]) then
    btinsertnom.Enabled := false
  else
    btinsertnom.Enabled := true;
end;

procedure TfrmTipoDescuentos.dsTipoNominaDataChange(Sender: TObject;
  Field: TField);
begin
  if QNominaDesc.Locate('tno_codigo',QTipoNominatno_codigo.Value,[]) then
    btinsertnom.Enabled := false
  else
    btinsertnom.Enabled := true;
end;

procedure TfrmTipoDescuentos.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QDescuentoscat_cuenta.Value := Search.ValueField;
     DBEdit4.SetFocus;
  end;
end;

procedure TfrmTipoDescuentos.QDescuentoscat_cuentaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QDescuentoscat_cuenta.IsNull then
  begin
    Text := QDescuentoscat_cuenta.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QDescuentoscat_cuenta.Value;
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
