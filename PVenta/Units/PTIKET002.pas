unit PTIKET002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, ADODB, ExtCtrls, ComCtrls, ToolWin, StdCtrls,
  Mask, DBCtrls, QuerySearchDlgADO;

type
  TfrmBoletoPrecio = class(TForm)
    QBoletoPrecio: TADOQuery;
    dsBoletoPrecio: TDataSource;
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
    Panel1: TPanel;
    QBoletoPreciodescripcion: TStringField;
    QBoletoPreciosuc_cod_origen: TIntegerField;
    QBoletoPreciosuc_cod_destino: TIntegerField;
    QBoletoPrecioprecio: TBCDField;
    QBoletoPreciostatus: TStringField;
    QBoletoPreciousu_codigo: TIntegerField;
    QBoletoPreciofecha: TDateTimeField;
    QBoletoPrecionum_orden: TIntegerField;
    QBoletoPreciopre_codigo: TAutoIncField;
    QBoletoPrecioemp_codigo: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Search: TQrySearchDlgADO;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    dsSuc_Origen: TDataSource;
    QSucursal_Origen: TADOQuery;
    QSucursal_Origensuc_codigo: TIntegerField;
    QSucursal_Origensuc_nombre: TStringField;
    QSucursal_Origenemp_codigo: TIntegerField;
    dsSuc_Destino: TDataSource;
    QSucursal_Destino: TADOQuery;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    QSucursal_Destinosuc_codigo: TIntegerField;
    QSucursal_Destinosuc_nombre: TStringField;
    QSucursal_Destinoemp_codigo: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btPriorExecute(Sender: TObject);
    procedure btNextExecute(Sender: TObject);
    procedure btInsertExecute(Sender: TObject);
    procedure btEditExecute(Sender: TObject);
    procedure btDeleteExecute(Sender: TObject);
    procedure btPostExecute(Sender: TObject);
    procedure btCancelExecute(Sender: TObject);
    procedure btFindExecute(Sender: TObject);
    procedure btCloseExecute(Sender: TObject);
    procedure QBoletoPrecioNewRecord(DataSet: TDataSet);
    procedure QBoletoPrecioAfterPost(DataSet: TDataSet);
    procedure dsSuc_OrigenDataChange(Sender: TObject; Field: TField);
    PROCEDURE ActivarBotones;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBoletoPrecio: TfrmBoletoPrecio;

implementation

uses SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmBoletoPrecio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmBoletoPrecio.FormActivate(Sender: TObject);
begin
  if not QBoletoPrecio.active then QBoletoPrecio.open;
  if not QSucursal_Origen.active then
     begin
      QSucursal_Origen.Parameters.ParamByName('usu').Value := dm.Usuario;
      QSucursal_Origen.Open;
     end;
  if not QSucursal_Destino.active then
     begin
      QSucursal_Destino.Open;
     end;
  frmMain.ExportXLS.FileName            := 'Boleto.xls';
  frmMain.ExportXLS.Sheets[1].DataSet   := QBoletoPrecio;
  frmMain.ExportXLS.Sheets[0].Exported  := False;
  frmMain.ExportXLS.Sheets[2].Exported  := False;
  frmMain.ExportXLS.Sheets[1].Exported  := True;
end;

procedure TfrmBoletoPrecio.FormCreate(Sender: TObject);
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

procedure TfrmBoletoPrecio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmBoletoPrecio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmBoletoPrecio.btPriorExecute(Sender: TObject);
begin
  if not QBoletoPrecio.bof then
    QBoletoPrecio.prior;
end;

procedure TfrmBoletoPrecio.btNextExecute(Sender: TObject);
begin
  if not QBoletoPrecio.eof then
    QBoletoPrecio.next;
end;

procedure TfrmBoletoPrecio.btInsertExecute(Sender: TObject);
begin
  DBEdit2.setfocus;
  QBoletoPrecio.insert;
  ActivarBotones;
end;

procedure TfrmBoletoPrecio.btEditExecute(Sender: TObject);
begin
  DBEdit2.setfocus;
  QBoletoPrecio.edit;
  ActivarBotones;
end;

procedure TfrmBoletoPrecio.btDeleteExecute(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QBoletoPrecio.delete;
end;

procedure TfrmBoletoPrecio.btPostExecute(Sender: TObject);
begin
  QBoletoPrecio.post;
  ActivarBotones;
end;

procedure TfrmBoletoPrecio.btCancelExecute(Sender: TObject);
begin
  QBoletoPrecio.cancel;
  ActivarBotones;
end;

procedure TfrmBoletoPrecio.btFindExecute(Sender: TObject);
begin
  Search.query.clear;
  Search.ResultField := 'pre_codigo';
  Search.query.add('select descripcion, pre_codigo');
  Search.query.add('from boleto_precio');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosEMP_CODIGO.value));
  if search.execute then
     QBoletoPrecio.locate('pre_codigo',search.valuefield,[]);
end;

procedure TfrmBoletoPrecio.btCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmBoletoPrecio.QBoletoPrecioNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('fecha').AsDateTime := now;
  DataSet.FieldByName('status').AsString := 'A';
  DataSet.FieldByName('usu_codigo').Value := dm.Usuario;
end;

procedure TfrmBoletoPrecio.QBoletoPrecioAfterPost(DataSet: TDataSet);
begin
  QBoletoPrecio.UpdateBatch; 
end;

procedure TfrmBoletoPrecio.dsSuc_OrigenDataChange(Sender: TObject;
  Field: TField);
begin
  QSucursal_Destino.Close;
  QSucursal_Destino.Parameters.ParamByName('emp_codigo').Value := QSucursal_Origenemp_codigo.Value;
  QSucursal_Destino.Parameters.ParamByName('suc_codigo').Value := QSucursal_Origensuc_codigo.Value;
  QSucursal_Destino.Open;

end;

procedure TfrmBoletoPrecio.ActivarBotones;
begin
if dsBoletoPrecio.State in [dsedit,dsinsert] then begin
  btPrior.Enabled  := False;
  btNext.Enabled   := btPrior.Enabled;
  btInsert.Enabled := btPrior.Enabled;
  btEdit.Enabled   := btPrior.Enabled;
  btDelete.Enabled := btPrior.Enabled;
  btFind.Enabled   := btPrior.Enabled;
  btPrint.Enabled  := btPrior.Enabled;
  btPost.Enabled   := True;
  btCancel.Enabled := btPost.Enabled;
end
else
begin
  btPrior.Enabled  := True;
  btNext.Enabled   := btPrior.Enabled;
  btInsert.Enabled := btPrior.Enabled;
  btEdit.Enabled   := btPrior.Enabled;
  btDelete.Enabled := btPrior.Enabled;
  btFind.Enabled   := btPrior.Enabled;
  btPrint.Enabled  := btPrior.Enabled;
  btPost.Enabled   := False;
  btCancel.Enabled := btPost.Enabled;
end;
end;

end.
