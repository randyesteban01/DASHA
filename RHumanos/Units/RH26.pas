unit RH26;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmEntrevistas = class(TForm)
    Panel2: TPanel;
    QEntrevistas: TADOQuery;
    dsEntrevistas: TDataSource;
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
    QEntrevistasemp_codigo: TIntegerField;
    QEntrevistassuc_codigo: TIntegerField;
    QEntrevistassol_numero: TIntegerField;
    QEntrevistasent_secuencia: TIntegerField;
    QEntrevistasent_fecha: TDateTimeField;
    QEntrevistasent_comentario: TMemoField;
    QEntrevistaspos_codigo: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    QPosiciones: TADOQuery;
    QPosicionespos_codigo: TIntegerField;
    QPosicionespos_nombre: TStringField;
    dsPosiciones: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    btsolicitud: TSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    QListado: TADOQuery;
    QListadoent_fecha: TDateTimeField;
    QListadoNombre: TStringField;
    dsListado: TDataSource;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    QListadoent_secuencia: TIntegerField;
    QEntrevistasent_entrevistador: TStringField;
    QListadoent_entrevistador: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QEntrevistasAfterDelete(DataSet: TDataSet);
    procedure QEntrevistasAfterPost(DataSet: TDataSet);
    procedure QEntrevistasNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsEntrevistasStateChange(Sender: TObject);
    procedure QEntrevistasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btsolicitudClick(Sender: TObject);
    procedure QEntrevistassol_numeroChange(Sender: TField);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntrevistas: TfrmEntrevistas;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmEntrevistas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEntrevistas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmEntrevistas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmEntrevistas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmEntrevistas.QEntrevistasAfterDelete(DataSet: TDataSet);
begin
  QEntrevistas.UpdateBatch;
end;

procedure TfrmEntrevistas.QEntrevistasAfterPost(DataSet: TDataSet);
begin
  QEntrevistas.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmEntrevistas.QEntrevistasNewRecord(DataSet: TDataSet);
begin
  QEntrevistasemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QEntrevistasent_fecha.Value  := Date;
end;

procedure TfrmEntrevistas.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select ent_fecha, ent_secuencia');
  Search.Query.Add('from Entrevistas');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.ResultField := 'ent_secuencia';
  Search.Title := 'Entrevistas';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Fecha');
  Search.AliasFields.Add('Número');
  if search.execute then
  begin
    QEntrevistas.Close;
    QEntrevistas.Parameters.ParamByName('sec').Value := StrToInt(Search.ValueField);
    QEntrevistas.Open;
    PageControl1.ActivePageIndex := 0;
  end;
end;

procedure TfrmEntrevistas.btPostClick(Sender: TObject);
begin
  QEntrevistas.post;
end;

procedure TfrmEntrevistas.btCancelClick(Sender: TObject);
begin
  QEntrevistas.cancel;
end;

procedure TfrmEntrevistas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QEntrevistas.delete;
end;

procedure TfrmEntrevistas.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit3.setfocus;
  QEntrevistas.edit;
end;

procedure TfrmEntrevistas.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit3.setfocus;
  QEntrevistas.insert;
end;

procedure TfrmEntrevistas.btpriorClick(Sender: TObject);
begin
  if not QEntrevistas.Bof then QEntrevistas.prior;
end;

procedure TfrmEntrevistas.btnextClick(Sender: TObject);
begin
  if not QEntrevistas.eof then QEntrevistas.next;
end;

procedure TfrmEntrevistas.FormActivate(Sender: TObject);
begin
  if not QEntrevistas.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    QEntrevistas.Parameters.ParamByName('sec').Value := -1;
    QEntrevistas.Open;
    QPosiciones.open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QEntrevistas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmEntrevistas.dsEntrevistasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsEntrevistas.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btsolicitud.Enabled := not btInsert.Enabled;
end;

procedure TfrmEntrevistas.QEntrevistasBeforePost(DataSet: TDataSet);
begin
  if QEntrevistas.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(ent_secuencia),0) as maximo');
    dm.query1.sql.add('from entrevistas');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QEntrevistasent_secuencia.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmEntrevistas.FormCreate(Sender: TObject);
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

procedure TfrmEntrevistas.btsolicitudClick(Sender: TObject);
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
    QEntrevistassol_numero.Value := StrToInt(Search.ValueField);
    DBEdit3.SetFocus;
  end;
end;

procedure TfrmEntrevistas.QEntrevistassol_numeroChange(Sender: TField);
begin
  if not QEntrevistassol_numero.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_codigo from solicitud_empleo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_numero = :sol');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sol').Value := QEntrevistassol_numero.Value;
    dm.Query1.Open;
    if not dm.Query1.FieldByName('suc_codigo').IsNull then
      QEntrevistassuc_codigo.Value := dm.Query1.FieldByName('suc_codigo').AsInteger;
   end;
end;

procedure TfrmEntrevistas.DBGrid1DblClick(Sender: TObject);
begin
  QEntrevistas.Close;
  QEntrevistas.Parameters.ParamByName('sec').Value := QListadoent_secuencia.Value;
  QEntrevistas.Open;
  PageControl1.ActivePageIndex := 0;
end;

end.
