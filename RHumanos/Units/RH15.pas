unit RH15;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmTipoEvaluacion = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QTipos: TADOQuery;
    dsTipos: TDataSource;
    Search: TQrySearchDlgADO;
    QTiposemp_codigo: TIntegerField;
    QTipostip_codigo: TIntegerField;
    QTipostip_nombre: TStringField;
    QTipostip_puntuacion_maxima: TBCDField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
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
    StaticText1: TStaticText;
    DBGrid1: TDBGrid;
    QPreguntas: TADOQuery;
    QPreguntasemp_codigo: TIntegerField;
    QPreguntastip_codigo: TIntegerField;
    QPreguntaspre_secuencia: TIntegerField;
    QPreguntaspre_porciento: TBCDField;
    dsPreguntas: TDataSource;
    QPreguntasTipo: TStringField;
    btinsertares: TSpeedButton;
    QPreguntaspre_descripcion: TStringField;
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
    procedure dsTiposStateChange(Sender: TObject);
    procedure QTiposBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btinsertaresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoEvaluacion: TfrmTipoEvaluacion;

implementation

uses SIGMA01, SIGMA00, RH43;


{$R *.DFM}

procedure TfrmTipoEvaluacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoEvaluacion.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoEvaluacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoEvaluacion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoEvaluacion.QTiposAfterDelete(DataSet: TDataSet);
begin
  QTipos.UpdateBatch;
end;

procedure TfrmTipoEvaluacion.QTiposAfterPost(DataSet: TDataSet);
begin
  QTipos.UpdateBatch;
end;

procedure TfrmTipoEvaluacion.QTiposNewRecord(DataSet: TDataSet);
begin
  QTiposEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmTipoEvaluacion.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tip_nombre, tip_codigo');
  Search.Query.Add('from tipo_evaluacion');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QTipos.locate('tip_codigo',search.valuefield,[]);
end;

procedure TfrmTipoEvaluacion.btPostClick(Sender: TObject);
begin
  QTipos.post;
end;

procedure TfrmTipoEvaluacion.btCancelClick(Sender: TObject);
begin
  QTipos.cancel;
end;

procedure TfrmTipoEvaluacion.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipos.delete;
end;

procedure TfrmTipoEvaluacion.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipos.edit;
end;

procedure TfrmTipoEvaluacion.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipos.insert;
end;

procedure TfrmTipoEvaluacion.btpriorClick(Sender: TObject);
begin
  if not QTipos.Bof then QTipos.prior;
end;

procedure TfrmTipoEvaluacion.btnextClick(Sender: TObject);
begin
  if not QTipos.eof then QTipos.next;
end;

procedure TfrmTipoEvaluacion.FormActivate(Sender: TObject);
begin
  if not QTipos.active then
  begin
    QTipos.open;
    QPreguntas.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QTipos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoEvaluacion.dsTiposStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmTipoEvaluacion.QTiposBeforePost(DataSet: TDataSet);
begin
  if trim(QTipostip_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTipos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tip_codigo),0) as maximo');
    dm.query1.sql.add('from tipo_evaluacion');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QTipostip_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoEvaluacion.FormCreate(Sender: TObject);
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

procedure TfrmTipoEvaluacion.btinsertaresClick(Sender: TObject);
begin
  Application.CreateForm(tfrmPreguntasRespuestas, frmPreguntasRespuestas);
  frmPreguntasRespuestas.tipo := QTipostip_codigo.Value;
  frmPreguntasRespuestas.ShowModal;
  QPreguntas.Close;
  QPreguntas.Open;
  frmPreguntasRespuestas.Release;
end;

end.
