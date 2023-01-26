unit CONT13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ComCtrls, Grids, DBGrids, ADODB,
  QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmNumEntradas = class(TForm)
    Search: TQrySearchDlgADO;
    QEntradas: TADOQuery;
    dsEntradas: TDataSource;
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QEntradasEMP_CODIGO: TIntegerField;
    QEntradasENT_NOMBRE: TIBStringField;
    QEntradasENT_NUMERO: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    QEntradasTDO_CODIGO: TIBStringField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFindClick(Sender: TObject);
    procedure QEntradasAfterDelete(DataSet: TDataSet);
    procedure QEntradasAfterPost(DataSet: TDataSet);
    procedure QEntradasNewRecord(DataSet: TDataSet);
    procedure QEntradasBeforePost(DataSet: TDataSet);
    procedure dsEntradasStateChange(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QEntradasENT_NUMEROChange(Sender: TField);
    procedure btTipoClick(Sender: TObject);
    procedure QEntradasTDO_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNumEntradas: TfrmNumEntradas;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmNumEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmNumEntradas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmNumEntradas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmNumEntradas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmNumEntradas.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'ent_numero';
  Search.Title := 'Números de Entrada';
  Search.query.clear;
  Search.query.add('select ent_nombre, ent_numero');
  Search.query.add('from contentradas');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
     QEntradas.locate('ent_numero',search.valuefield,[]);
end;

procedure TfrmNumEntradas.QEntradasAfterDelete(DataSet: TDataSet);
begin
  QEntradas.UpdateBatch;
end;

procedure TfrmNumEntradas.QEntradasAfterPost(DataSet: TDataSet);
begin
  QEntradas.UpdateBatch;
end;

procedure TfrmNumEntradas.QEntradasNewRecord(DataSet: TDataSet);
begin
  QEntradasEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmNumEntradas.QEntradasBeforePost(DataSet: TDataSet);
begin
  if trim(QEntradasENT_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QEntradasENT_NUMERO.value = 0 then
  begin
    showmessage('EL NUMERO NO PUEDE SER CERO');
    DBEdit1.setfocus;
    abort;
  end;
end;

procedure TfrmNumEntradas.dsEntradasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsEntradas.State = dsbrowse;
  DBEdit1.Enabled   := dsEntradas.State <> dsEdit;
  btTipo.enabled    := not btInsert.enabled;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmNumEntradas.btPostClick(Sender: TObject);
begin
  QEntradas.post;
end;

procedure TfrmNumEntradas.btCancelClick(Sender: TObject);
begin
  QEntradas.cancel;
end;

procedure TfrmNumEntradas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QEntradas.delete;
end;

procedure TfrmNumEntradas.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QEntradas.edit;
end;

procedure TfrmNumEntradas.btInsertClick(Sender: TObject);
begin
  DBEdit1.setfocus;
  QEntradas.insert;
end;

procedure TfrmNumEntradas.btpriorClick(Sender: TObject);
begin
  if not QEntradas.bof then
    QEntradas.prior;
end;

procedure TfrmNumEntradas.btnextClick(Sender: TObject);
begin
  if not QEntradas.eof then
    QEntradas.next;
end;

procedure TfrmNumEntradas.FormActivate(Sender: TObject);
begin
  if not QEntradas.active then QEntradas.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QEntradas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmNumEntradas.FormCreate(Sender: TObject);
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

procedure TfrmNumEntradas.QEntradasENT_NUMEROChange(Sender: TField);
begin
  if not QEntradasENT_NUMERO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ent_numero from contentradas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ent_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QEntradasENT_NUMERO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      MessageDlg('ESTE NUMERO DE ENTRADA EXISTE',mtError,[mbok],0);
      QEntradasENT_NUMERO.Clear;
      Abort;
    end;
  end;
end;

procedure TfrmNumEntradas.btTipoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'tdo_codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QEntradasTDO_CODIGO.Value := Search.ValueField;
    DBEdit3.SetFocus;
  end;
end;

procedure TfrmNumEntradas.QEntradasTDO_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QEntradasTDO_CODIGO.IsNull then
  begin
    Text := QEntradasTDO_CODIGO.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from TiposDoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_codigo = :cod');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cod').Value  := QEntradasTDO_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tTipo.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tTipo.Text := ' ';
  end
  else
    tTipo.Text := ' ';
end;

end.
