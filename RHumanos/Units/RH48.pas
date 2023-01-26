unit RH48;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmHorasTrabajadas = class(TForm)
    QHoras: TADOQuery;
    dsHoras: TDataSource;
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
    QEmpleados: TADOQuery;
    QEmpleadosNombres: TStringField;
    QEmpleadosemp_fecha_entrada: TDateTimeField;
    QEmpleadosgru_nombre: TStringField;
    QEmpleadoscla_nombre: TStringField;
    QEmpleadosniv_nombre: TStringField;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosTiempoAno: TFloatField;
    QEmpleadosTiempoMes: TFloatField;
    QEmpleadosTiempoDias: TFloatField;
    dsEmpleados: TDataSource;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QTipo: TADOQuery;
    dsTipo: TDataSource;
    QHorasemp_codigo: TIntegerField;
    QHorashor_codigo: TIntegerField;
    QHorasemp_numero: TIntegerField;
    QHorashor_fecha: TDateTimeField;
    QHorastho_codigo: TIntegerField;
    QHorashor_horas: TBCDField;
    QHorashor_status: TStringField;
    Label8: TLabel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    QTipotho_codigo: TIntegerField;
    QTipotho_nombre: TStringField;
    QListadoNombres: TStringField;
    QListadohor_horas: TBCDField;
    QListadohor_fecha: TDateTimeField;
    QListadohor_status: TStringField;
    QListadohor_codigo: TIntegerField;
    QListadotho_nombre: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QHorasAfterDelete(DataSet: TDataSet);
    procedure QHorasAfterPost(DataSet: TDataSet);
    procedure QHorasNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsHorasStateChange(Sender: TObject);
    procedure QHorasBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHorasTrabajadas: TfrmHorasTrabajadas;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmHorasTrabajadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmHorasTrabajadas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmHorasTrabajadas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmHorasTrabajadas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmHorasTrabajadas.QHorasAfterDelete(DataSet: TDataSet);
begin
  QHoras.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmHorasTrabajadas.QHorasAfterPost(DataSet: TDataSet);
begin
  QHoras.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmHorasTrabajadas.QHorasNewRecord(DataSet: TDataSet);
begin
  QHorasemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QHorashor_fecha.Value  := Date;
  QHorashor_status.Value := 'PEN';
end;

procedure TfrmHorasTrabajadas.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select e.emp_nombres+'+#39+' '+#39+'+e.emp_apellido_paterno+'+#39+' '+#39+'+e.emp_apellido_materno as Nombres,');
  Search.Query.Add('t.tho_nombre, h.hor_codigo');
  Search.Query.Add('from horas_trabajadas t, empleados e, tipo_horas_trabajadas t');
  Search.Query.Add('where h.emp_codigo = e.emp_codigo');
  Search.Query.Add('and h.emp_numero = e.emp_numero');
  Search.Query.Add('and h.emp_codigo = t.emp_codigo');
  Search.Query.Add('and h.tho_codigo = t.tho_codigo');
  Search.Query.Add('and h.emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
  begin
    QHoras.Close;
    QHoras.Parameters.ParamByName('hor').Value := StrToInt(Search.ValueField);
    QHoras.Open;
  end;
end;

procedure TfrmHorasTrabajadas.btPostClick(Sender: TObject);
begin
  QHoras.post;
end;

procedure TfrmHorasTrabajadas.btCancelClick(Sender: TObject);
begin
  QHoras.cancel;
end;

procedure TfrmHorasTrabajadas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QHoras.delete;
end;

procedure TfrmHorasTrabajadas.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QHoras.edit;
end;

procedure TfrmHorasTrabajadas.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QHoras.insert;
end;

procedure TfrmHorasTrabajadas.btpriorClick(Sender: TObject);
begin
  if not QHoras.Bof then QHoras.prior;
end;

procedure TfrmHorasTrabajadas.btnextClick(Sender: TObject);
begin
  if not QHoras.eof then QHoras.next;
end;

procedure TfrmHorasTrabajadas.FormActivate(Sender: TObject);
begin
  if not QHoras.active then
  begin
    QHoras.open;
    QEmpleados.Open;
    QTipo.Open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QHoras;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmHorasTrabajadas.dsHorasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsHoras.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmHorasTrabajadas.QHorasBeforePost(DataSet: TDataSet);
begin
  if QHorashor_horas.value <= 0 then
  begin
    showmessage('LAS HORAS NO PUEDE ESTAR EN BLANCO');
    DBEdit3.setfocus;
    abort;
  end;
  if QHoras.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(hor_codigo),0) as maximo');
    dm.query1.sql.add('from horas_trabajadas');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QHorashor_codigo .value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmHorasTrabajadas.FormCreate(Sender: TObject);
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

procedure TfrmHorasTrabajadas.DBGrid1DblClick(Sender: TObject);
begin
  QHoras.Close;
  QHoras.Parameters.ParamByName('hor').Value := QListadohor_codigo.Value;
  QHoras.Open;
  PageControl1.ActivePageIndex := 0;
end;

end.
