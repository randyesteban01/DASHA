unit RH20;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmPosicionClasificacion = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QPosicion: TADOQuery;
    dsPosicion: TDataSource;
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
    QPosicionemp_codigo: TIntegerField;
    QPosicionniv_codigo: TIntegerField;
    QPosicionpos_codigo: TIntegerField;
    QPosicioncla_codigo: TIntegerField;
    QPosicioncla_nombre: TStringField;
    QPosicioncla_salario_desde: TBCDField;
    QPosicioncla_salario_hasta: TBCDField;
    QPosicioncla_plazas: TIntegerField;
    QPosicionpos_secuencia: TIntegerField;
    Label3: TLabel;
    btnivel: TSpeedButton;
    DBEdit3: TDBEdit;
    tNivel: TEdit;
    Label4: TLabel;
    btclasif: TSpeedButton;
    DBEdit4: TDBEdit;
    tclasif: TEdit;
    Label5: TLabel;
    btpos: TSpeedButton;
    DBEdit5: TDBEdit;
    tposicion: TEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QPosicionAfterDelete(DataSet: TDataSet);
    procedure QPosicionAfterPost(DataSet: TDataSet);
    procedure QPosicionNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsPosicionStateChange(Sender: TObject);
    procedure QPosicionBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnivelClick(Sender: TObject);
    procedure btclasifClick(Sender: TObject);
    procedure btposClick(Sender: TObject);
    procedure QPosicionniv_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QPosicionpos_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QPosicioncla_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPosicionClasificacion: TfrmPosicionClasificacion;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmPosicionClasificacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmPosicionClasificacion.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPosicionClasificacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmPosicionClasificacion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmPosicionClasificacion.QPosicionAfterDelete(DataSet: TDataSet);
begin
  QPosicion.UpdateBatch;
end;

procedure TfrmPosicionClasificacion.QPosicionAfterPost(DataSet: TDataSet);
begin
  QPosicion.UpdateBatch;
end;

procedure TfrmPosicionClasificacion.QPosicionNewRecord(DataSet: TDataSet);
begin
  QPosicionEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmPosicionClasificacion.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cla_nombre, pos_secuencia');
  Search.Query.Add('from posicion_clasificacion');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.ResultField := 'pos_secuencia';
  Search.Title := 'Posiciones por Clasificacion';                                                                                          
  if search.execute then
     QPosicion.locate('pos_secuencia',search.valuefield,[]);
end;

procedure TfrmPosicionClasificacion.btPostClick(Sender: TObject);
begin
  QPosicion.post;
end;

procedure TfrmPosicionClasificacion.btCancelClick(Sender: TObject);
begin
  QPosicion.cancel;
end;

procedure TfrmPosicionClasificacion.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QPosicion.delete;
end;

procedure TfrmPosicionClasificacion.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QPosicion.edit;
end;

procedure TfrmPosicionClasificacion.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QPosicion.insert;
end;

procedure TfrmPosicionClasificacion.btpriorClick(Sender: TObject);
begin
  if not QPosicion.Bof then QPosicion.prior;
end;

procedure TfrmPosicionClasificacion.btnextClick(Sender: TObject);
begin
  if not QPosicion.eof then QPosicion.next;
end;

procedure TfrmPosicionClasificacion.FormActivate(Sender: TObject);
begin
  if not QPosicion.active then QPosicion.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QPosicion;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmPosicionClasificacion.dsPosicionStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsPosicion.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btnivel.Enabled   := not btInsert.enabled;
  btclasif.Enabled  := not btInsert.enabled;
  btpos.Enabled     := not btInsert.enabled;
end;

procedure TfrmPosicionClasificacion.QPosicionBeforePost(DataSet: TDataSet);
begin
  if trim(QPosicioncla_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QPosicion.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(pos_secuencia),0) as maximo');
    dm.query1.sql.add('from posicion_clasificacion');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QPosicionpos_secuencia.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmPosicionClasificacion.FormCreate(Sender: TObject);
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

procedure TfrmPosicionClasificacion.btnivelClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select niv_nombre, niv_codigo');
  Search.query.add('from niveles');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'niv_codigo';
  Search.Title := 'Niveles Jerarquicos';
  if search.execute then
  begin
     QPosicionniv_codigo.Value := StrToInt(Search.ValueField);
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmPosicionClasificacion.btclasifClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select distinct n.niv_nombre, c.cla_nivel');
  Search.query.add('from clasificacion_niveles c, niveles n');
  Search.query.add('where c.emp_codigo = n.emp_codigo');
  Search.query.add('and c.cla_nivel = n.niv_codigo');
  Search.query.add('and c.emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cla_nivel';
  Search.Title := 'Clasificacion de Niveles';
  if search.execute then
  begin
     QPosicioncla_codigo.Value := StrToInt(Search.ValueField);
     DBEdit4.SetFocus;
  end;
end;

procedure TfrmPosicionClasificacion.btposClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select pos_nombre, pos_codigo');
  Search.query.add('from posiciones');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'pos_codigo';
  Search.Title := 'Posiciones';
  if search.execute then
  begin
     QPosicionpos_codigo.Value := StrToInt(Search.ValueField);
     DBEdit5.SetFocus;
  end;
end;

procedure TfrmPosicionClasificacion.QPosicionniv_codigoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QPosicionniv_codigo.IsNull then
  begin
    Text := IntToStr(QPosicionniv_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select niv_nombre from niveles');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and niv_codigo = :niv');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('niv').Value := QPosicionniv_codigo.Value;
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

procedure TfrmPosicionClasificacion.QPosicionpos_codigoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QPosicionpos_codigo.IsNull then
  begin
    Text := IntToStr(QPosicionpos_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select pos_nombre from posiciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pos_codigo = :pos');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('pos').Value := QPosicionpos_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tposicion.Text := dm.Query1.FieldByName('pos_nombre').AsString;
    end
    else
      tposicion.Text := '';
  end
  else
    tposicion.Text := '';
end;

procedure TfrmPosicionClasificacion.QPosicioncla_codigoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QPosicioncla_codigo.IsNull then
  begin
    Text := IntToStr(QPosicioncla_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select n.niv_nombre from clasificacion_niveles c, niveles n');
    dm.Query1.SQL.Add('where n.emp_codigo = c.emp_codigo');
    dm.Query1.SQL.Add('and n.niv_codigo = c.cla_nivel');
    dm.Query1.SQL.Add('and c.emp_codigo = :emp');
    dm.Query1.SQL.Add('and c.cla_nivel = :cla');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cla').Value := QPosicioncla_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tclasif.Text := dm.Query1.FieldByName('niv_nombre').AsString;
    end
    else
      tclasif.Text := '';
  end
  else
    tclasif.Text := '';
end;

end.
