unit RH21;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmPlanesSeguro = class(TForm)
    QPlanes: TADOQuery;
    dsPlanes: TDataSource;
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
    QPlanesemp_codigo: TIntegerField;
    QPlanestse_codigo: TIntegerField;
    QPlanespla_codigo: TIntegerField;
    QPlanespla_nombre: TStringField;
    QPlanespla_tarifa_basica: TBCDField;
    QPlanespla_porciento_empresa: TBCDField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    bttipo: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    ttipo: TEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    ttipo2: TEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    QDepend: TADOQuery;
    QDependtse_codigo: TIntegerField;
    QDependpla_codigo: TIntegerField;
    QDependdep_secuencia: TIntegerField;
    QDependdep_cantidad: TIntegerField;
    QDependdep_tarifa: TBCDField;
    QDependemp_codigo: TIntegerField;
    DBGrid1: TDBGrid;
    dsDepend: TDataSource;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QPlanesAfterDelete(DataSet: TDataSet);
    procedure QPlanesAfterPost(DataSet: TDataSet);
    procedure QPlanesNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsPlanesStateChange(Sender: TObject);
    procedure QPlanesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure bttipoClick(Sender: TObject);
    procedure QPlanestse_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure QDependNewRecord(DataSet: TDataSet);
    procedure QDependBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QDependAfterPost(DataSet: TDataSet);
    procedure QDependAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlanesSeguro: TfrmPlanesSeguro;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmPlanesSeguro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmPlanesSeguro.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPlanesSeguro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmPlanesSeguro.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPlanesSeguro.QPlanesAfterDelete(DataSet: TDataSet);
begin
  QPlanes.UpdateBatch;
end;

procedure TfrmPlanesSeguro.QPlanesAfterPost(DataSet: TDataSet);
begin
  QPlanes.UpdateBatch;
end;

procedure TfrmPlanesSeguro.QPlanesNewRecord(DataSet: TDataSet);
begin
  QPlanesEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmPlanesSeguro.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select pla_nombre, pla_codigo');
  Search.Query.Add('from planes_Seguro');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.ResultField := 'pla_codigo';
  Search.Title := 'Planes de Seguro';
  if search.execute then
     QPlanes.locate('pla_codigo',search.valuefield,[]);
end;

procedure TfrmPlanesSeguro.btPostClick(Sender: TObject);
begin
  QPlanes.post;
end;

procedure TfrmPlanesSeguro.btCancelClick(Sender: TObject);
begin
  QPlanes.cancel;
end;

procedure TfrmPlanesSeguro.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QPlanes.delete;
end;

procedure TfrmPlanesSeguro.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QPlanes.edit;
end;

procedure TfrmPlanesSeguro.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QPlanes.insert;
end;

procedure TfrmPlanesSeguro.btpriorClick(Sender: TObject);
begin
  if not QPlanes.Bof then QPlanes.prior;
end;

procedure TfrmPlanesSeguro.btnextClick(Sender: TObject);
begin
  if not QPlanes.eof then QPlanes.next;
end;

procedure TfrmPlanesSeguro.FormActivate(Sender: TObject);
begin
  if not QPlanes.active then
  begin
    QPlanes.open;
    QDepend.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QPlanes;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmPlanesSeguro.dsPlanesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsPlanes.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  bttipo.Enabled    := not btInsert.enabled;
end;

procedure TfrmPlanesSeguro.QPlanesBeforePost(DataSet: TDataSet);
begin
  if trim(QPlanespla_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QPlanes.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(pla_codigo),0) as maximo');
    dm.query1.sql.add('from planes_seguro');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.sql.add('and tse_codigo = :tse');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.Parameters.parambyname('tse').Value := QPlanestse_codigo.Value;
    dm.query1.open;
    QPlanespla_codigo.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmPlanesSeguro.FormCreate(Sender: TObject);
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

procedure TfrmPlanesSeguro.bttipoClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select tse_nombre, tse_codigo');
  Search.query.add('from tipo_seguros');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'tse_codigo';
  Search.Title := 'Tipos de seguro';
  if search.execute then
  begin
     QPlanestse_codigo.Value := StrToInt(Search.ValueField);
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmPlanesSeguro.QPlanestse_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QPlanestse_codigo.IsNull then
  begin
    Text := IntToStr(QPlanestse_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tse_nombre from tipo_seguros');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tse_codigo = :tip');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tip').Value := QPlanestse_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      ttipo.Text := dm.Query1.FieldByName('tse_nombre').AsString;
      ttipo2.Text := dm.Query1.FieldByName('tse_nombre').AsString;
    end
    else
    begin
      ttipo.Text := '';
      ttipo2.Text := '';
    end;
  end
  else
  begin
    ttipo.Text := '';
    ttipo2.Text := '';
  end;
end;

procedure TfrmPlanesSeguro.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if DBGrid1.SelectedIndex <> 1 then
      DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
    else
    begin
      DBGrid1.SelectedIndex := 0;
      QDepend.Append;
    end;
  end;
end;

procedure TfrmPlanesSeguro.QDependNewRecord(DataSet: TDataSet);
begin
  QDependtse_codigo.Value := QPlanestse_codigo.Value;
  QDependpla_codigo.Value := QPlanespla_codigo.Value;
  QDependemp_codigo.Value := QPlanesemp_codigo.Value;
end;

procedure TfrmPlanesSeguro.QDependBeforePost(DataSet: TDataSet);
begin
  if QDepend.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select max(dep_secuencia) as maximo from planes_dependientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tse_codigo = :tse');
    dm.Query1.SQL.Add('and pla_codigo = :pla');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tse').Value := QPlanestse_codigo.Value;
    dm.Query1.Parameters.ParamByName('pla').Value := QPlanespla_codigo.Value;
    dm.Query1.Open;
    QDependdep_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmPlanesSeguro.SpeedButton1Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?', mtConfirmation, [mbyes, mbno],0) = mryes then
    QDepend.Delete;
end;

procedure TfrmPlanesSeguro.QDependAfterPost(DataSet: TDataSet);
begin
  QDepend.UpdateBatch;
end;

procedure TfrmPlanesSeguro.QDependAfterDelete(DataSet: TDataSet);
begin
  QDepend.UpdateBatch;
end;

end.
