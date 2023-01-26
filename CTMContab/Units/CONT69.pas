unit CONT69;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ADODB, QuerySearchDlgADO, dxNavBar, dxNavBarCollns,
  cxClasses, dxNavBarBase, ComCtrls, ToolWin, ImgList, ActnList;

type
  TfrmTipoBienesServicios = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QTipo: TADOQuery;
    Search: TQrySearchDlgADO;
    dsTipo: TDataSource;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
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
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ActionList1: TActionList;
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
    QTipoTIP_CODIGO: TIntegerField;
    QTipoTIP_NOMBRE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QTipoAfterPost(DataSet: TDataSet);
    procedure QTipoAfterDelete(DataSet: TDataSet);
    procedure QTipoBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsTipoStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmTipoBienesServicios: TfrmTipoBienesServicios;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoBienesServicios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoBienesServicios.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoBienesServicios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoBienesServicios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoBienesServicios.QTipoAfterPost(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoBienesServicios.QTipoAfterDelete(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoBienesServicios.QTipoBeforePost(DataSet: TDataSet);
begin
  if trim(QTipotip_NOMBRE.value) = '' then
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
    dm.query1.sql.add('from Tipo_Bienes_Servicios');
    dm.query1.open;
    QTipotip_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoBienesServicios.btPostClick(Sender: TObject);
begin
  QTipo.post;
end;

procedure TfrmTipoBienesServicios.btCancelClick(Sender: TObject);
begin
  QTipo.cancel;
end;

procedure TfrmTipoBienesServicios.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipo.delete;
end;

procedure TfrmTipoBienesServicios.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.edit;
end;

procedure TfrmTipoBienesServicios.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.insert;
end;

procedure TfrmTipoBienesServicios.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select tip_nombre, tip_codigo');
  Search.query.add('from Tipo_Bienes_Servicios');
  if search.execute then
     QTipo.locate('tip_codigo',search.valuefield,[]);
end;

procedure TfrmTipoBienesServicios.btpriorClick(Sender: TObject);
begin
  if not QTipo.bof then
    QTipo.prior;
end;

procedure TfrmTipoBienesServicios.btnextClick(Sender: TObject);
begin
  if not QTipo.eof then
    QTipo.next;
end;

procedure TfrmTipoBienesServicios.FormActivate(Sender: TObject);
begin
  if not QTipo.active then QTipo.open;
  frmMain.ExportXLS.FileName := 'Tipo_Bienes_Servicio.xls';
  frmMain.ExportXLS.Sheets[1].DataSet := QTipo;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoBienesServicios.dsTipoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipo.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmTipoBienesServicios.FormCreate(Sender: TObject);
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
