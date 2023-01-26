unit PVENTA247;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, ADODB, ExtDlgs, QuerySearchDlgADO, ComCtrls,
  ToolWin, StdCtrls, DBCtrls, Mask, Buttons;

type
  TfrmLocalidades = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    LbLocSuc: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
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
    dsLocalidades: TDataSource;
    Search: TQrySearchDlgADO;
    OpenDLG: TOpenPictureDialog;
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
    DBLookupCombox1: TDBLookupComboBox;
    QLocalidades: TADOQuery;
    QLocalidadesEMP_CODIGO: TIntegerField;
    QLocalidadesSUC_CODIGO: TIntegerField;
    QLocalidadesloc_codigo: TIntegerField;
    QLocalidadesloc_nombre: TStringField;
    QLocalidadesloc_descripcion: TStringField;
    QLocalidadesfechaC: TDateTimeField;
    QLocalidadesusu_creacion: TIntegerField;
    QLocalidadesfechaM: TDateTimeField;
    QLocalidadesusu_modifica: TIntegerField;
    procedure btPriorExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btInsertExecute(Sender: TObject);
    procedure btEditExecute(Sender: TObject);
    procedure btDeleteExecute(Sender: TObject);
    procedure btPostExecute(Sender: TObject);
    procedure btCancelExecute(Sender: TObject);
    procedure btFindExecute(Sender: TObject);
    procedure btCloseExecute(Sender: TObject);
    procedure QLocalidadesAfterDelete(DataSet: TDataSet);
    procedure QLocalidadesAfterPost(DataSet: TDataSet);
    procedure QLocalidadesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalidades: TfrmLocalidades;

implementation

uses
  SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmLocalidades.btPriorExecute(Sender: TObject);
begin
  if not QLocalidades.bof then
    QLocalidades.prior;
end;

procedure TfrmLocalidades.FormActivate(Sender: TObject);
begin
  if not QLocalidades.active then
     QLocalidades.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QLocalidades;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmLocalidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmLocalidades.FormCreate(Sender: TObject);
var
  a : Integer;
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

procedure TfrmLocalidades.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmLocalidades.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmLocalidades.btInsertExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QLocalidades.Insert;
end;

procedure TfrmLocalidades.btEditExecute(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QLocalidades.edit;
end;

procedure TfrmLocalidades.btDeleteExecute(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QLocalidades.delete;
end;

procedure TfrmLocalidades.btPostExecute(Sender: TObject);
begin
  QLocalidades.post;
end;

procedure TfrmLocalidades.btCancelExecute(Sender: TObject);
begin
  QLocalidades.cancel;
end;

procedure TfrmLocalidades.btFindExecute(Sender: TObject);
begin
  search.Query.Clear;
  if NOT dm.QParametrospar_banca_apuestas.Value = True then
  search.Query.Add('select suc_nombre, suc_codigo') ELSE
  search.Query.Add('select suc_nombre, suc_codigo, cont_numeroSucursal Localidad');
  search.Query.Add('from sucursales where emp_Codigo = '+dm.QEmpresasEMP_CODIGO.AsString);
  search.Title := 'Sucursales';
  search.ResultField := 'suc_codigo';
  if search.execute then
     QLocalidades.locate('suc_codigo',search.valuefield,[]);
end;

procedure TfrmLocalidades.btCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalidades.QLocalidadesAfterDelete(DataSet: TDataSet);
begin
  QLocalidades.UpdateBatch;
end;

procedure TfrmLocalidades.QLocalidadesAfterPost(DataSet: TDataSet);
begin
  QLocalidades.UpdateBatch;
end;

procedure TfrmLocalidades.QLocalidadesBeforePost(DataSet: TDataSet);
begin
  if trim(DBEdit2.Text) = '' then
 begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if DBLookupCombox1.KeyValue = 0 then
  begin
    showmessage('DEBE SELECCIONAR LA SUCURSAL');
    DBLookupCombox1.setfocus;
    abort;
  end;
  if QLocalidades.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(loc_codigo),0) as maximo');
    dm.query1.sql.add('from Localidades');
    dm.query1.open;
    QLocalidadesloc_codigo.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

end.
