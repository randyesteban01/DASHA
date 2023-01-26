unit PVENTA207;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmCamiones = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    QCamiones: TADOQuery;
    dsCamiones: TDataSource;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    DBEdit4: TDBEdit;
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
    QCamionesCamionID: TAutoIncField;
    QCamionesMarca: TStringField;
    QCamionesModelo: TStringField;
    QCamionesPlaca: TStringField;
    QCamionesChofer: TStringField;
    QCamionesMetraje: TBCDField;
    QCamionesCompania: TStringField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure QCamionesAfterDelete(DataSet: TDataSet);
    procedure QCamionesAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure dsCamionesStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QCamionesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCamiones: TfrmCamiones;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCamiones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCamiones.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCamiones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCamiones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCamiones.btPostClick(Sender: TObject);
begin
  QCamiones.post;
end;

procedure TfrmCamiones.btCancelClick(Sender: TObject);
begin
  QCamiones.cancel;
end;

procedure TfrmCamiones.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QCamiones.delete;
end;

procedure TfrmCamiones.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCamiones.edit;
end;

procedure TfrmCamiones.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QCamiones.insert;
end;

procedure TfrmCamiones.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Marca, Modelo, Chofer, Compania, CamionID');
  Search.Query.Add('from Camiones');
  if search.execute then
     QCamiones.locate('CamionID',search.valuefield,[]);
end;

procedure TfrmCamiones.btpriorClick(Sender: TObject);
begin
  if not QCamiones.Bof then QCamiones.prior;
end;

procedure TfrmCamiones.btnextClick(Sender: TObject);
begin
  if not QCamiones.eof then QCamiones.next;
end;

procedure TfrmCamiones.QCamionesAfterDelete(DataSet: TDataSet);
begin
  QCamiones.UpdateBatch;
end;

procedure TfrmCamiones.QCamionesAfterPost(DataSet: TDataSet);
begin
  QCamiones.UpdateBatch;
end;

procedure TfrmCamiones.FormActivate(Sender: TObject);
begin                        
  if not QCamiones.active then QCamiones.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QCamiones;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCamiones.dsCamionesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsCamiones.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCamiones.FormCreate(Sender: TObject);
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

procedure TfrmCamiones.QCamionesBeforePost(DataSet: TDataSet);
begin
  if QCamionesPlaca.IsNull then
  begin
    MessageDlg('DEBE DIGITAR LA PLACA', mtError, [mbok], 0);
    Abort;
    DBEdit4.SetFocus;
  end;
  if QCamiones.State = dsinsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select count(*) as cant from camiones');
    dm.Query1.SQL.Add('where placa = :num');
    dm.Query1.Parameters.ParamByName('num').Value := QCamionesPlaca.AsString;
    dm.Query1.Open;
    if dm.Query1.FieldByName('cant').AsInteger > 0 then
    begin
      MessageDlg('ESTA PLACA YA EXISTE', mtError, [mbok], 0);
      Abort;
      DBEdit4.SetFocus;
    end;
  end;
end;

end.
