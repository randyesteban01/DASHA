unit CONT57;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ActnList, ToolWin;

type
  TfrmCategorias = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QCategoria: TADOQuery;
    dsCategorias: TDataSource;
    Search: TQrySearchDlgADO;
    QCategoriaCAT_CUENTA: TIBStringField;
    btCuenta: TSpeedButton;
    Label3: TLabel;
    tCuenta: TEdit;
    DBEdit3: TDBEdit;
    QCategoriaEMP_CODIGO: TIntegerField;
    QCategoriaCAT_CODIGO: TIntegerField;
    QCategoriaCAT_NOMBRE: TStringField;
    QCategoriaCAT_DEPRECIACION: TBCDField;
    QCategoriaUSU_CODIGO: TIntegerField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    QCategoriacat_ctadepracumulada: TStringField;
    QCategoriacat_ctagastodepreciacion: TStringField;
    btCuenta2: TSpeedButton;
    Label5: TLabel;
    tCuenta2: TEdit;
    DBEdit5: TDBEdit;
    btCuenta3: TSpeedButton;
    Label6: TLabel;
    tCuenta3: TEdit;
    DBEdit6: TDBEdit;
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    procedure QCategoriaAfterDelete(DataSet: TDataSet);
    procedure QCategoriaAfterPost(DataSet: TDataSet);
    procedure QCategoriaNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsCategoriasStateChange(Sender: TObject);
    procedure QCategoriaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QCategoriaCAT_CUENTAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btCuenta2Click(Sender: TObject);
    procedure btCuenta3Click(Sender: TObject);
    procedure QCategoriacat_ctadepracumuladaGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QCategoriacat_ctagastodepreciacionGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategorias: TfrmCategorias;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCategorias.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCategorias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCategorias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCategorias.QCategoriaAfterDelete(DataSet: TDataSet);
begin
  QCategoria.UpdateBatch;
end;

procedure TfrmCategorias.QCategoriaAfterPost(DataSet: TDataSet);
begin
  QCategoria.UpdateBatch;
end;

procedure TfrmCategorias.QCategoriaNewRecord(DataSet: TDataSet);
begin
  QCategoriaEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QCategoriaUSU_CODIGO.Value := dm.Usuario;
end;

procedure TfrmCategorias.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_codigo');
  Search.Query.Add('from categoria_activos');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QCategoria.locate('cat_codigo',search.valuefield,[]);
end;

procedure TfrmCategorias.btPostClick(Sender: TObject);
begin
  QCategoria.post;
end;

procedure TfrmCategorias.btCancelClick(Sender: TObject);
begin
  QCategoria.cancel;
end;

procedure TfrmCategorias.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QCategoria.delete;
end;

procedure TfrmCategorias.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCategoria.edit;
end;

procedure TfrmCategorias.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCategoria.insert;
end;

procedure TfrmCategorias.btpriorClick(Sender: TObject);
begin
  if not QCategoria.Bof then QCategoria.prior;
end;

procedure TfrmCategorias.btnextClick(Sender: TObject);
begin
  if not QCategoria.eof then QCategoria.next;
end;

procedure TfrmCategorias.FormActivate(Sender: TObject);
begin
  if not QCategoria.active then QCategoria.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QCategoria;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCategorias.dsCategoriasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCategorias.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btCuenta.enabled    := not btInsert.enabled;
  btCuenta2.enabled    := not btInsert.enabled;
  btCuenta3.enabled    := not btInsert.enabled;
end;

procedure TfrmCategorias.QCategoriaBeforePost(DataSet: TDataSet);
begin
  if trim(QCategoriaCAT_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QCategoria.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(cat_codigo),0) as maximo');
    dm.query1.sql.add('from categoria_activos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QCategoriaCAT_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCategorias.FormCreate(Sender: TObject);
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

procedure TfrmCategorias.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QCategoriaCAT_CUENTA.Value := Search.ValueField;
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmCategorias.QCategoriaCAT_CUENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QCategoriaCAT_CUENTA.IsNull then
  begin
    Text := QCategoriaCAT_CUENTA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QCategoriaCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tCuenta.Text := '';
  end
  else
    tCuenta.Text := '';
end;

procedure TfrmCategorias.btCuenta2Click(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QCategoriacat_ctadepracumulada.Value := Search.ValueField;
     DBEdit5.SetFocus;
  end;

end;

procedure TfrmCategorias.btCuenta3Click(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
     QCategoriacat_ctagastodepreciacion.Value := Search.ValueField;
     DBEdit6.SetFocus;
  end;

end;

procedure TfrmCategorias.QCategoriacat_ctadepracumuladaGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QCategoriacat_ctadepracumulada.IsNull then
  begin
    Text := QCategoriacat_ctadepracumulada.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QCategoriacat_ctadepracumulada.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tCuenta2.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tCuenta2.Text := '';
  end
  else
    tCuenta2.Text := '';
end;

procedure TfrmCategorias.QCategoriacat_ctagastodepreciacionGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if not QCategoriacat_ctagastodepreciacion.IsNull then
  begin
    Text := QCategoriacat_ctagastodepreciacion.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QCategoriacat_ctagastodepreciacion.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tCuenta3.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tCuenta3.Text := '';
  end
  else
    tCuenta3.Text := '';
end;

end.
