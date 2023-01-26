unit RH18;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmClasificacionNiveles = class(TForm)
    QClasificacion: TADOQuery;
    dsClasificacion: TDataSource;
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
    QClasificacionemp_codigo: TIntegerField;
    QClasificacioncla_codigo: TIntegerField;
    QClasificacioncla_nombre: TStringField;
    QClasificacioncla_nivel: TIntegerField;
    QClasificacioncla_nivel_padre: TIntegerField;
    QClasificacioncla_nivel_correspondiente: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnivel1: TSpeedButton;
    btnivel2: TSpeedButton;
    btnivel3: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    tNivel: TEdit;
    DBEdit4: TDBEdit;
    tNivelpadre: TEdit;
    DBEdit5: TDBEdit;
    tnivelcor: TEdit;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QListadoemp_codigo: TIntegerField;
    QListadocla_codigo: TIntegerField;
    QListadocla_nombre: TStringField;
    QListadocla_nivel: TIntegerField;
    QListadocla_nivel_padre: TIntegerField;
    QListadocla_nivel_correspondiente: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QClasificacionAfterDelete(DataSet: TDataSet);
    procedure QClasificacionAfterPost(DataSet: TDataSet);
    procedure QClasificacionNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsClasificacionStateChange(Sender: TObject);
    procedure QClasificacionBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnivel1Click(Sender: TObject);
    procedure btnivel2Click(Sender: TObject);
    procedure btnivel3Click(Sender: TObject);
    procedure QClasificacioncla_nivelGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QClasificacioncla_nivel_padreGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QClasificacioncla_nivel_correspondienteGetText(
      Sender: TField; var Text: String; DisplayText: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClasificacionNiveles: TfrmClasificacionNiveles;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmClasificacionNiveles.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmClasificacionNiveles.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmClasificacionNiveles.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmClasificacionNiveles.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmClasificacionNiveles.QClasificacionAfterDelete(DataSet: TDataSet);
begin
  QClasificacion.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmClasificacionNiveles.QClasificacionAfterPost(DataSet: TDataSet);
begin
  QClasificacion.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmClasificacionNiveles.QClasificacionNewRecord(DataSet: TDataSet);
begin
  QClasificacionEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmClasificacionNiveles.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cla_nombre, cla_codigo');
  Search.Query.Add('from clasificacion_niveles');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.ResultField := 'cla_codigo';
  Search.Title := 'Clasificacion de Niveles';
  if search.execute then
     QClasificacion.locate('cla_codigo',search.valuefield,[]);
end;

procedure TfrmClasificacionNiveles.btPostClick(Sender: TObject);
begin
  QClasificacion.post;
end;

procedure TfrmClasificacionNiveles.btCancelClick(Sender: TObject);
begin
  QClasificacion.cancel;
end;

procedure TfrmClasificacionNiveles.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QClasificacion.delete;
end;

procedure TfrmClasificacionNiveles.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QClasificacion.edit;
end;

procedure TfrmClasificacionNiveles.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QClasificacion.insert;
end;

procedure TfrmClasificacionNiveles.btpriorClick(Sender: TObject);
begin
  if not QClasificacion.Bof then QClasificacion.prior;
end;

procedure TfrmClasificacionNiveles.btnextClick(Sender: TObject);
begin
  if not QClasificacion.eof then QClasificacion.next;
end;

procedure TfrmClasificacionNiveles.FormActivate(Sender: TObject);
begin
  if not QClasificacion.active then
  begin
    QClasificacion.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QClasificacion;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmClasificacionNiveles.dsClasificacionStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsClasificacion.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btnivel1.Enabled  := not btInsert.enabled;
  btnivel2.Enabled  := not btInsert.enabled;
  btnivel3.Enabled  := not btInsert.enabled;
end;

procedure TfrmClasificacionNiveles.QClasificacionBeforePost(DataSet: TDataSet);
begin
  if trim(QClasificacionCLA_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QClasificacion.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(cla_codigo),0) as maximo');
    dm.query1.sql.add('from clasificacion_niveles');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QClasificacioncla_codigo.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmClasificacionNiveles.FormCreate(Sender: TObject);
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

procedure TfrmClasificacionNiveles.btnivel1Click(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select niv_nombre, niv_codigo');
  Search.query.add('from niveles');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'niv_codigo';
  Search.Title := 'Niveles Jerarquicos';
  if search.execute then
  begin
     QClasificacioncla_nivel.Value := StrToInt(Search.ValueField);
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmClasificacionNiveles.btnivel2Click(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select niv_nombre, niv_codigo');
  Search.query.add('from niveles');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'niv_codigo';
  Search.Title := 'Niveles Jerarquicos';
  if search.execute then
  begin
     QClasificacioncla_nivel_padre.Value := StrToInt(Search.ValueField);
     DBEdit4.SetFocus;
  end;
end;

procedure TfrmClasificacionNiveles.btnivel3Click(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select niv_nombre, niv_codigo');
  Search.query.add('from niveles');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'niv_codigo';
  Search.Title := 'Niveles Jerarquicos';
  if search.execute then
  begin
     QClasificacioncla_nivel_correspondiente.Value := StrToInt(Search.ValueField);
     DBEdit5.SetFocus;
  end;
end;

procedure TfrmClasificacionNiveles.QClasificacioncla_nivelGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QClasificacioncla_nivel.IsNull then
  begin
    Text := IntToStr(QClasificacioncla_nivel.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select niv_nombre from niveles');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and niv_codigo = :niv');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('niv').Value := QClasificacioncla_nivel.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tNivel.Text := dm.Query1.FieldByName('niv_nombre').AsString;
    end
    else
      tNivel.Text := '';
  end
  else
    tNivel.Text := '';
end;

procedure TfrmClasificacionNiveles.QClasificacioncla_nivel_padreGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QClasificacioncla_nivel_padre.IsNull then
  begin
    Text := IntToStr(QClasificacioncla_nivel_padre.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select niv_nombre from niveles');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and niv_codigo = :niv');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('niv').Value := QClasificacioncla_nivel_padre.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tNivelpadre.Text := dm.Query1.FieldByName('niv_nombre').AsString;
    end
    else
      tNivelpadre.Text := '';
  end
  else
    tNivelpadre.Text := '';
end;

procedure TfrmClasificacionNiveles.QClasificacioncla_nivel_correspondienteGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QClasificacioncla_nivel_correspondiente.IsNull then
  begin
    Text := IntToStr(QClasificacioncla_nivel_correspondiente.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select niv_nombre from niveles');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and niv_codigo = :niv');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('niv').Value := QClasificacioncla_nivel_correspondiente.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tnivelcor.Text := dm.Query1.FieldByName('niv_nombre').AsString;
    end
    else
      tnivelcor.Text := '';
  end
  else
    tnivelcor.Text := '';
end;

procedure TfrmClasificacionNiveles.DBGrid1DblClick(Sender: TObject);
begin
  QClasificacion.Locate('cla_codigo',QListadocla_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
