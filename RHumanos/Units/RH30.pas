unit RH30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmEvaluacionSolicitud = class(TForm)
    QEvaluacion: TADOQuery;
    dsEvaluacion: TDataSource;
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
    QEvaluacionemp_codigo: TIntegerField;
    QEvaluacioneva_secuencia: TIntegerField;
    QEvaluacionsol_numero: TIntegerField;
    QEvaluacionsuc_codigo: TIntegerField;
    QEvaluacioneva_fecha: TDateTimeField;
    QEvaluacioneva_puntuacion: TBCDField;
    QEvaluacioneva_comentario: TMemoField;
    QEvaluacioneva_evaluador: TStringField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    QPosiciones: TADOQuery;
    QPosicionespos_Codigo: TIntegerField;
    QPosicionesPosicion: TStringField;
    dsPosiciones: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    QEvaluacionpos_codigo: TIntegerField;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    btsolicitud: TSpeedButton;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    QListadoeva_fecha: TDateTimeField;
    QListadoNombre: TStringField;
    QListadoeva_evaluador: TStringField;
    QListadoeva_secuencia: TIntegerField;
    dsListado: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QEvaluacionAfterDelete(DataSet: TDataSet);
    procedure QEvaluacionAfterPost(DataSet: TDataSet);
    procedure QEvaluacionNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsEvaluacionStateChange(Sender: TObject);
    procedure QEvaluacionBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btsolicitudClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEvaluacionSolicitud: TfrmEvaluacionSolicitud;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmEvaluacionSolicitud.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEvaluacionSolicitud.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEvaluacionSolicitud.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmEvaluacionSolicitud.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if (ActiveControl.ClassType <> TDBMemo) and (ActiveControl.ClassType <> TDBGrid) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmEvaluacionSolicitud.QEvaluacionAfterDelete(DataSet: TDataSet);
begin
  QEvaluacion.UpdateBatch;
end;

procedure TfrmEvaluacionSolicitud.QEvaluacionAfterPost(DataSet: TDataSet);
begin
  QEvaluacion.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEvaluacionSolicitud.QEvaluacionNewRecord(DataSet: TDataSet);
begin
  QEvaluacionemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QEvaluacioneva_fecha.Value  := Date;
  QEvaluacionsuc_codigo.Value := QSucursalsuc_codigo.Value;
  QEvaluacionpos_codigo.Value := QPosicionespos_Codigo.Value;
end;

procedure TfrmEvaluacionSolicitud.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select eva_fecha, sol_numero, eva_secuencia');
  Search.Query.Add('from evaluacion_solicitud');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Fecha');
  Search.AliasFields.Add('Solicitud');
  Search.AliasFields.Add('Evaluacion');
  Search.ResultField := 'eva_secuencia';
  Search.Title := 'Evaluación Solicitud';
  if search.execute then
  begin
    QEvaluacion.Close;
    QEvaluacion.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    QEvaluacion.Open;
  end;
  DBEdit2.SetFocus;
end;

procedure TfrmEvaluacionSolicitud.btPostClick(Sender: TObject);
begin
  QEvaluacion.post;
end;

procedure TfrmEvaluacionSolicitud.btCancelClick(Sender: TObject);
begin
  QEvaluacion.cancel;
end;

procedure TfrmEvaluacionSolicitud.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QEvaluacion.delete;
end;

procedure TfrmEvaluacionSolicitud.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QEvaluacion.edit;
end;

procedure TfrmEvaluacionSolicitud.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QEvaluacion.insert;
end;

procedure TfrmEvaluacionSolicitud.btpriorClick(Sender: TObject);
begin
  if not QEvaluacion.Bof then QEvaluacion.prior;
end;

procedure TfrmEvaluacionSolicitud.btnextClick(Sender: TObject);
begin
  if not QEvaluacion.eof then QEvaluacion.next;
end;

procedure TfrmEvaluacionSolicitud.FormActivate(Sender: TObject);
begin
  if not QEvaluacion.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    QEvaluacion.Parameters.ParamByName('num').Value := -1;
    QEvaluacion.Open;
    QPosiciones.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QPosiciones;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmEvaluacionSolicitud.dsEvaluacionStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsEvaluacion.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btsolicitud.Enabled := not btInsert.Enabled;
end;

procedure TfrmEvaluacionSolicitud.QEvaluacionBeforePost(DataSet: TDataSet);
begin
  if (QEvaluacionsol_numero.value = 0) or (QEvaluacionsol_numero.IsNull) then
  begin
    showmessage('DEBE ESPECIFICAR EL NUMERO DE SOLICITUD');
    DBEdit2.setfocus;
    abort;
  end;
  if QEvaluacion.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(eva_secuencia),0) as maximo');
    dm.query1.sql.add('from evaluacion_solicitud');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QEvaluacioneva_secuencia.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmEvaluacionSolicitud.FormCreate(Sender: TObject);
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

procedure TfrmEvaluacionSolicitud.btsolicitudClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select sol_nombre, sol_apellido_paterno, sol_numero');
  Search.Query.Add('from solicitud_empleo');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Apellido');
  Search.AliasFields.Add('Número');
  Search.ResultField := 'sol_numero';
  Search.Title := 'Solicitud de Empleo';
  if search.execute then
  begin
    QEvaluacionsol_numero.Value := StrToInt(Search.ValueField);
    DBEdit2.SetFocus;
  end;
end;

procedure TfrmEvaluacionSolicitud.DBGrid1DblClick(Sender: TObject);
begin
  QEvaluacion.Close;
  QEvaluacion.Parameters.ParamByName('num').Value := QListadoeva_secuencia.Value;
  QEvaluacion.Open;
  PageControl1.ActivePageIndex := 0;
end;

end.
