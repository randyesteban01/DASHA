unit PVENTA219;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmTipoProveedor = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QTipo: TADOQuery;
    dsTipo: TDataSource;
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
    QTipoemp_codigo: TIntegerField;
    QTipotip_codigo: TIntegerField;
    QTipotip_nombre: TStringField;
    QTipoCashflow_Grupo: TIntegerField;
    QTipoCashflow_Subgrupo: TIntegerField;
    QTipoCashflow_Concepto: TIntegerField;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    btgrupo: TSpeedButton;
    btsubgrupo: TSpeedButton;
    btconcepto: TSpeedButton;
    DBEdit10: TDBEdit;
    tgrupo: TEdit;
    DBEdit11: TDBEdit;
    tsubgrupo: TEdit;
    DBEdit13: TDBEdit;
    tconcepto: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure QTipoAfterDelete(DataSet: TDataSet);
    procedure QTipoAfterPost(DataSet: TDataSet);
    procedure QTipoNewRecord(DataSet: TDataSet);
    procedure QTipoBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dsTipoStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btgrupoClick(Sender: TObject);
    procedure btsubgrupoClick(Sender: TObject);
    procedure btconceptoClick(Sender: TObject);
    procedure QTipoCashflow_GrupoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QTipoCashflow_SubgrupoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QTipoCashflow_ConceptoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoProveedor: TfrmTipoProveedor;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoProveedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoProveedor.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoProveedor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoProveedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoProveedor.btPostClick(Sender: TObject);
begin
  QTipo.post;
end;

procedure TfrmTipoProveedor.btCancelClick(Sender: TObject);
begin
  QTipo.cancel;
end;

procedure TfrmTipoProveedor.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipo.delete;
end;

procedure TfrmTipoProveedor.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.edit;
end;

procedure TfrmTipoProveedor.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.insert;
end;

procedure TfrmTipoProveedor.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tip_nombre, tip_codigo');
  Search.Query.Add('from tipo_proveedor');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QTipo.locate('tip_codigo',search.valuefield,[]);
end;

procedure TfrmTipoProveedor.btpriorClick(Sender: TObject);
begin
  if not QTipo.Bof then QTipo.prior;
end;

procedure TfrmTipoProveedor.btnextClick(Sender: TObject);
begin
  if not QTipo.eof then QTipo.next;
end;

procedure TfrmTipoProveedor.QTipoAfterDelete(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoProveedor.QTipoAfterPost(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoProveedor.QTipoNewRecord(DataSet: TDataSet);
begin
  QTipoEMP_CODIGO.value := dm.vp_cia;
end;

procedure TfrmTipoProveedor.QTipoBeforePost(DataSet: TDataSet);
begin
  if trim(QTipoTIP_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTipo.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tip_codigo),0) as maximo');
    dm.query1.sql.add('from tipo_proveedor');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QTipoTIP_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoProveedor.FormActivate(Sender: TObject);
begin
  if not QTipo.active then QTipo.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QTipo;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoProveedor.dsTipoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipo.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btgrupo.enabled   := not btInsert.enabled;
  btsubgrupo.enabled  := not btInsert.enabled;
  btconcepto.enabled  := not btInsert.enabled;
end;

procedure TfrmTipoProveedor.FormCreate(Sender: TObject);
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

procedure TfrmTipoProveedor.btgrupoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Nombre, GrupoID');
  Search.Query.Add('from Cashflow_Grupo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'GrupoID';
  Search.Title := 'Cashflow - Grupos';
  if Search.execute then
  begin
    QTipoCashflow_Grupo.Value := StrToInt(Search.ValueField);
    DBEdit10.SetFocus;
  end;
end;

procedure TfrmTipoProveedor.btsubgrupoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Nombre, SubgrupoID');
  Search.Query.Add('from Cashflow_Subgrupo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and GrupoID = '+DBEdit10.Text);
  Search.ResultField := 'SubgrupoID';
  Search.Title := 'Cashflow - Subgrupos';
  if Search.execute then
  begin
    QTipoCashflow_Subgrupo.Value := StrToInt(Search.ValueField);
    DBEdit11.SetFocus;
  end;
end;

procedure TfrmTipoProveedor.btconceptoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Nombre, ConceptoID');
  Search.Query.Add('from Cashflow_Conceptos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and GrupoID = '+DBEdit10.Text);
  Search.Query.Add('and SubgrupoID = '+DBEdit11.Text);
  Search.ResultField := 'ConceptoID';
  Search.Title := 'Cashflow - Conceptos';
  if Search.execute then
  begin
    QTipoCashflow_Concepto.Value := StrToInt(Search.ValueField);
    DBEdit13.SetFocus;
  end;
end;

procedure TfrmTipoProveedor.QTipoCashflow_GrupoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoCashflow_Grupo.IsNull then
  begin
    Text := inttostr(QTipoCashflow_Grupo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from Cashflow_Grupo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and GrupoID = :gru');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('gru').Value := QTipoCashflow_Grupo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tgrupo.Text := dm.Query1.FieldByName('Nombre').AsString
    else
      tgrupo.Text := '';
  end
  else
    tgrupo.Text := '';
end;

procedure TfrmTipoProveedor.QTipoCashflow_SubgrupoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoCashflow_Subgrupo.IsNull then
  begin
    Text := inttostr(QTipoCashflow_Subgrupo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from Cashflow_Subgrupo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and SubgrupoID = :sub');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sub').Value := QTipoCashflow_Subgrupo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tsubgrupo.Text := dm.Query1.FieldByName('Nombre').AsString
    else
      tsubgrupo.Text := '';
  end
  else
    tsubgrupo.Text := '';
end;

procedure TfrmTipoProveedor.QTipoCashflow_ConceptoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoCashflow_Concepto.IsNull then
  begin
    Text := inttostr(QTipoCashflow_Subgrupo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from Cashflow_Conceptos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ConceptoID = :sub');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sub').Value := QTipoCashflow_Concepto.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tconcepto.Text := dm.Query1.FieldByName('Nombre').AsString
    else
      tconcepto.Text := '';
  end
  else
    tconcepto.Text := '';
end;

end.
