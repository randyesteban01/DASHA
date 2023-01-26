unit CONT59;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmFamiliaActivos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QFamilia: TADOQuery;
    dsFamilia: TDataSource;
    Search: TQrySearchDlgADO;
    QFamiliaEMP_CODIGO: TIntegerField;
    QFamiliaFAM_CODIGO: TIntegerField;
    QFamiliaFAM_NOMBRE: TStringField;
    QFamiliaUSU_CODIGO: TIntegerField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QFamiliaAfterDelete(DataSet: TDataSet);
    procedure QFamiliaAfterPost(DataSet: TDataSet);
    procedure QFamiliaNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsFamiliaStateChange(Sender: TObject);
    procedure QFamiliaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFamiliaActivos: TfrmFamiliaActivos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmFamiliaActivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmFamiliaActivos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFamiliaActivos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmFamiliaActivos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmFamiliaActivos.QFamiliaAfterDelete(DataSet: TDataSet);
begin
  QFamilia.UpdateBatch;
end;

procedure TfrmFamiliaActivos.QFamiliaAfterPost(DataSet: TDataSet);
begin
  QFamilia.UpdateBatch;
end;

procedure TfrmFamiliaActivos.QFamiliaNewRecord(DataSet: TDataSet);
begin
  QFamiliaEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QFamiliaUSU_CODIGO.Value := dm.Usuario;
end;

procedure TfrmFamiliaActivos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select fam_nombre, fam_codigo');
  Search.Query.Add('from familia_activos');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QFamilia.locate('fam_codigo',search.valuefield,[]);
end;

procedure TfrmFamiliaActivos.btPostClick(Sender: TObject);
begin
  QFamilia.post;
end;

procedure TfrmFamiliaActivos.btCancelClick(Sender: TObject);
begin
  QFamilia.cancel;
end;

procedure TfrmFamiliaActivos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QFamilia.delete;
end;

procedure TfrmFamiliaActivos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QFamilia.edit;
end;

procedure TfrmFamiliaActivos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QFamilia.insert;
end;

procedure TfrmFamiliaActivos.btpriorClick(Sender: TObject);
begin
  if not QFamilia.Bof then QFamilia.prior;
end;

procedure TfrmFamiliaActivos.btnextClick(Sender: TObject);
begin
  if not QFamilia.eof then QFamilia.next;
end;

procedure TfrmFamiliaActivos.FormActivate(Sender: TObject);
begin
  if not QFamilia.active then QFamilia.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QFamilia;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmFamiliaActivos.dsFamiliaStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsFamilia.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmFamiliaActivos.QFamiliaBeforePost(DataSet: TDataSet);
begin
  if trim(QFamiliaFAM_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QFamilia.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(fam_codigo),0) as maximo');
    dm.query1.sql.add('from familia_activos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QFamiliaFAM_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmFamiliaActivos.FormCreate(Sender: TObject);
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

end.
