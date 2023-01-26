unit RH43;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ActnList, DB, ADODB, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TfrmPreguntasRespuestas = class(TForm)
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
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton11: TToolButton;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    QPreguntas: TADOQuery;
    dsPreguntas: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    QPreguntasemp_codigo: TIntegerField;
    QPreguntastip_codigo: TIntegerField;
    QPreguntaspre_secuencia: TIntegerField;
    QPreguntaspre_tipo: TIntegerField;
    QPreguntaspre_porciento: TBCDField;
    QTipo: TADOQuery;
    QTipocodigo: TIntegerField;
    QTiponombre: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    dsTipo: TDataSource;
    QClasif: TADOQuery;
    QClasiftip_nombre: TStringField;
    QClasiftip_codigo: TIntegerField;
    dsClasif: TDataSource;
    StaticText1: TStaticText;
    DBGrid1: TDBGrid;
    QRespuestas: TADOQuery;
    QRespuestasemp_codigo: TIntegerField;
    QRespuestastip_codigo: TIntegerField;
    QRespuestaspre_secuencia: TIntegerField;
    QRespuestasres_secuencia: TIntegerField;
    QRespuestasres_descripcion: TStringField;
    QRespuestasres_puntuacion: TBCDField;
    dsRespuestas: TDataSource;
    QPreguntaspre_descripcion: TStringField;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    procedure btInsertExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btEditExecute(Sender: TObject);
    procedure btDeleteExecute(Sender: TObject);
    procedure btPostExecute(Sender: TObject);
    procedure btCancelExecute(Sender: TObject);
    procedure QPreguntasAfterPost(DataSet: TDataSet);
    procedure QPreguntasAfterDelete(DataSet: TDataSet);
    procedure QPreguntasBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btCloseExecute(Sender: TObject);
    procedure dsPreguntasStateChange(Sender: TObject);
    procedure QPreguntasNewRecord(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure QRespuestasNewRecord(DataSet: TDataSet);
    procedure QRespuestasBeforePost(DataSet: TDataSet);
    procedure QRespuestasAfterPost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QRespuestasAfterDelete(DataSet: TDataSet);
    procedure btPriorExecute(Sender: TObject);
    procedure btNextExecute(Sender: TObject);
    procedure QRespuestasAfterInsert(DataSet: TDataSet);
    procedure QRespuestasBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipo : integer;
  end;

var
  frmPreguntasRespuestas: TfrmPreguntasRespuestas;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmPreguntasRespuestas.btInsertExecute(Sender: TObject);
begin
  QPreguntas.Insert;
  DBLookupComboBox2.SetFocus;
end;

procedure TfrmPreguntasRespuestas.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if (ActiveControl.ClassType <> TDBGrid) and (ActiveControl.ClassType <> TDBMemo) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmPreguntasRespuestas.btEditExecute(Sender: TObject);
begin
  QPreguntas.Edit;
  DBLookupComboBox2.SetFocus;
end;

procedure TfrmPreguntasRespuestas.btDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
    QPreguntas.Delete;
end;

procedure TfrmPreguntasRespuestas.btPostExecute(Sender: TObject);
begin
  QPreguntas.Post;
end;

procedure TfrmPreguntasRespuestas.btCancelExecute(Sender: TObject);
begin
  QPreguntas.Cancel;
end;

procedure TfrmPreguntasRespuestas.QPreguntasAfterPost(DataSet: TDataSet);
begin
  QPreguntas.UpdateBatch;
  if QPreguntaspre_tipo.Value = 2 then
  begin
    QRespuestas.DisableControls;
    QRespuestas.Append;
    QRespuestasres_descripcion.Value := 'Falso';
    QRespuestas.Post;

    QRespuestas.Append;
    QRespuestasres_descripcion.Value := 'Verdadero';
    QRespuestas.Post;

    QRespuestas.EnableControls;
  end;
end;

procedure TfrmPreguntasRespuestas.QPreguntasAfterDelete(DataSet: TDataSet);
begin
  QPreguntas.UpdateBatch;
end;

procedure TfrmPreguntasRespuestas.QPreguntasBeforePost(DataSet: TDataSet);
begin
  if QPreguntas.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select max(pre_secuencia) as maximo');
    dm.Query1.SQL.Add('from preguntas_evaluacion');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tip').Value := tipo;
    dm.Query1.Open;
    QPreguntaspre_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmPreguntasRespuestas.FormActivate(Sender: TObject);
begin
  if not QPreguntas.Active then
  begin
    QPreguntas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QPreguntas.Parameters.ParamByName('tip').Value := tipo;
    QPreguntas.Open;

    QTipo.Open;
    QClasif.Open;
    QRespuestas.Open;
  end;
end;

procedure TfrmPreguntasRespuestas.btCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPreguntasRespuestas.dsPreguntasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsPreguntas.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  DBGrid1.Visible   := btInsert.Enabled;  
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
end;

procedure TfrmPreguntasRespuestas.QPreguntasNewRecord(DataSet: TDataSet);
begin
  QPreguntasemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QPreguntastip_codigo.Value := tipo;
end;

procedure TfrmPreguntasRespuestas.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if DBGrid1.SelectedIndex <> 1 then
      DBGrid1.SelectedIndex := DBGrid1.SelectedIndex + 1
    else
    begin
      DBGrid1.SelectedIndex := 0;
      QRespuestas.Append;
    end;
  end;
end;

procedure TfrmPreguntasRespuestas.QRespuestasNewRecord(DataSet: TDataSet);
begin
  QRespuestasemp_codigo.Value    := QPreguntasemp_codigo.Value;
  QRespuestastip_codigo.Value    := QPreguntastip_codigo.Value;
  QRespuestaspre_secuencia.Value := QPreguntaspre_secuencia.Value;
end;

procedure TfrmPreguntasRespuestas.QRespuestasBeforePost(DataSet: TDataSet);
begin
  if QRespuestas.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select max(res_secuencia) as maximo');
    dm.Query1.SQL.Add('from respuestas_evaluacion');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.SQL.Add('and pre_secuencia = :pre');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tip').Value := QPreguntastip_codigo.Value;
    dm.Query1.Parameters.ParamByName('pre').Value := QPreguntaspre_secuencia.Value;
    dm.Query1.Open;
    QRespuestasres_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmPreguntasRespuestas.QRespuestasAfterPost(DataSet: TDataSet);
begin
  QRespuestas.UpdateBatch;
end;

procedure TfrmPreguntasRespuestas.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
    QRespuestas.Delete;
end;

procedure TfrmPreguntasRespuestas.QRespuestasAfterDelete(
  DataSet: TDataSet);
begin
  QRespuestas.UpdateBatch;
end;

procedure TfrmPreguntasRespuestas.btPriorExecute(Sender: TObject);
begin
  if not QPreguntas.Bof then QPreguntas.prior;
end;

procedure TfrmPreguntasRespuestas.btNextExecute(Sender: TObject);
begin
  if not QPreguntas.eof then QPreguntas.next;
end;

procedure TfrmPreguntasRespuestas.QRespuestasAfterInsert(
  DataSet: TDataSet);
begin
  if (QRespuestas.RecordCount = 2) and  (QPreguntaspre_tipo.Value = 2) then
    QRespuestas.Cancel;
end;

procedure TfrmPreguntasRespuestas.QRespuestasBeforeDelete(
  DataSet: TDataSet);
begin
  if (QRespuestas.RecordCount = 2) and  (QPreguntaspre_tipo.Value = 2) then
    Abort;
end;

procedure TfrmPreguntasRespuestas.DBGrid1Enter(Sender: TObject);
begin
  if QPreguntaspre_tipo.Value = 2 then DBGrid1.SelectedIndex := 1;
end;

procedure TfrmPreguntasRespuestas.DBGrid1ColEnter(Sender: TObject);
begin
  if (QPreguntaspre_tipo.Value = 2) and (DBGrid1.SelectedIndex <> 1) then
    DBGrid1.SelectedIndex := 1;
end;

end.
