unit RH19;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmHabilidades = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QHabilidad: TADOQuery;
    dsHabilidad: TDataSource;
    Search: TQrySearchDlgADO;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    QHabilidadcat_codigo: TIntegerField;
    QHabilidadhab_codigo: TIntegerField;
    QHabilidadhab_nombre: TStringField;
    Label3: TLabel;
    btcat: TSpeedButton;
    DBEdit3: TDBEdit;
    tcategoria: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QHabilidadAfterDelete(DataSet: TDataSet);
    procedure QHabilidadAfterPost(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsHabilidadStateChange(Sender: TObject);
    procedure QHabilidadBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btcatClick(Sender: TObject);
    procedure QHabilidadcat_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHabilidades: TfrmHabilidades;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmHabilidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmHabilidades.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmHabilidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmHabilidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmHabilidades.QHabilidadAfterDelete(DataSet: TDataSet);
begin
  QHabilidad.UpdateBatch;
end;

procedure TfrmHabilidades.QHabilidadAfterPost(DataSet: TDataSet);
begin
  QHabilidad.UpdateBatch;
end;

procedure TfrmHabilidades.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select hab_nombre, hab_codigo');
  Search.Query.Add('from habilidades');
  Search.ResultField := 'hab_codigo';
  Search.Title := 'Habilidades';
  if search.execute then
     QHabilidad.locate('hab_codigo',search.valuefield,[]);
end;

procedure TfrmHabilidades.btPostClick(Sender: TObject);
begin
  QHabilidad.post;
end;

procedure TfrmHabilidades.btCancelClick(Sender: TObject);
begin
  QHabilidad.cancel;
end;

procedure TfrmHabilidades.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QHabilidad.delete;
end;

procedure TfrmHabilidades.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QHabilidad.edit;
end;

procedure TfrmHabilidades.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QHabilidad.insert;
end;

procedure TfrmHabilidades.btpriorClick(Sender: TObject);
begin
  if not QHabilidad.Bof then QHabilidad.prior;
end;

procedure TfrmHabilidades.btnextClick(Sender: TObject);
begin
  if not QHabilidad.eof then QHabilidad.next;
end;

procedure TfrmHabilidades.FormActivate(Sender: TObject);
begin
  if not QHabilidad.active then QHabilidad.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QHabilidad;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmHabilidades.dsHabilidadStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsHabilidad.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btcat.Enabled     := not btInsert.enabled;
end;

procedure TfrmHabilidades.QHabilidadBeforePost(DataSet: TDataSet);
begin
  if trim(QHabilidadhab_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QHabilidad.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(hab_codigo),0) as maximo');
    dm.query1.sql.add('from habilidades');
    dm.query1.open;
    QHabilidadhab_codigo.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmHabilidades.FormCreate(Sender: TObject);
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

procedure TfrmHabilidades.btcatClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_codigo');
  Search.query.add('from categoria_empleados');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_codigo';
  Search.Title := 'Categorias';
  if search.execute then
  begin
     QHabilidadcat_codigo.Value := StrToInt(Search.ValueField);
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmHabilidades.QHabilidadcat_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QHabilidadcat_codigo.IsNull then
  begin
    Text := IntToStr(QHabilidadcat_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from categoria_empleados');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_codigo = :cat');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cat').Value := QHabilidadcat_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tcategoria.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tcategoria.Text := '';
  end
  else
    tcategoria.Text := '';
end;

end.
