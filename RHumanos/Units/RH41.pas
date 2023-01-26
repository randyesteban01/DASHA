unit RH41;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList, DateUtils;

type
  TfrmVacaciones = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QVacaciones: TADOQuery;
    dsVacaciones: TDataSource;
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
    QVacacionesemp_codigo: TIntegerField;
    QVacacionesvac_secuencia: TIntegerField;
    QVacacionesvac_fecha: TDateTimeField;
    QVacacionesvac_autorizado: TStringField;
    QVacacionesemp_numero: TIntegerField;
    QVacacionesvac_desde: TDateTimeField;
    QVacacionesvac_hasta: TDateTimeField;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    QEmpleados: TADOQuery;
    QEmpleadosNombres: TStringField;
    QEmpleadosemp_fecha_entrada: TDateTimeField;
    QEmpleadosgru_nombre: TStringField;
    QEmpleadoscla_nombre: TStringField;
    QEmpleadosniv_nombre: TStringField;
    dsEmpleados: TDataSource;
    QEmpleadosemp_numero: TIntegerField;
    QVacacionesdias: TFloatField;
    QEmpleadosTiempoAno: TFloatField;
    QEmpleadosTiempoMes: TFloatField;
    QEmpleadosTiempoDias: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QVacacionesAfterDelete(DataSet: TDataSet);
    procedure QVacacionesAfterPost(DataSet: TDataSet);
    procedure QVacacionesNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsVacacionesStateChange(Sender: TObject);
    procedure QVacacionesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QVacacionesCalcFields(DataSet: TDataSet);
    procedure QEmpleadosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVacaciones: TfrmVacaciones;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmVacaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmVacaciones.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmVacaciones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmVacaciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmVacaciones.QVacacionesAfterDelete(DataSet: TDataSet);
begin
  QVacaciones.UpdateBatch;
end;

procedure TfrmVacaciones.QVacacionesAfterPost(DataSet: TDataSet);
begin
  QVacaciones.UpdateBatch;
end;

procedure TfrmVacaciones.QVacacionesNewRecord(DataSet: TDataSet);
begin
  QVacacionesemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QVacacionesvac_fecha.Value  := Date;
  QVacacionesemp_numero.Value := QEmpleadosemp_numero.Value;
end;

procedure TfrmVacaciones.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select e.emp_nombres+'+#39+' '+#39+'+e.emp_apellido_paterno+'+#39+' '+#39+'+e.emp_apellido_materno as Nombres,');
  Search.Query.Add('v.vac_secuencia');
  Search.Query.Add('from vacaciones v, empleados e');
  Search.Query.Add('where v.emp_codigo = e.emp_codigo');
  Search.Query.Add('and v.emp_numero = e.emp_numero');
  Search.Query.Add('and v.emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
  begin
    QEmpleados.Open;

    QVacaciones.Close;
    QVacaciones.Parameters.ParamByName('vac').Value := StrToInt(Search.ValueField);
    QVacaciones.Open;
  end;
end;

procedure TfrmVacaciones.btPostClick(Sender: TObject);
begin
  QVacaciones.post;
end;

procedure TfrmVacaciones.btCancelClick(Sender: TObject);
begin
  QVacaciones.cancel;
end;

procedure TfrmVacaciones.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QVacaciones.delete;
end;

procedure TfrmVacaciones.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QEmpleados.Open;
  QVacaciones.edit;
end;

procedure TfrmVacaciones.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QEmpleados.Open;
  QVacaciones.insert;
end;

procedure TfrmVacaciones.btpriorClick(Sender: TObject);
begin
  if not QVacaciones.Bof then QVacaciones.prior;
end;

procedure TfrmVacaciones.btnextClick(Sender: TObject);
begin
  if not QVacaciones.eof then QVacaciones.next;
end;

procedure TfrmVacaciones.FormActivate(Sender: TObject);
begin
  if not QVacaciones.active then
  begin
    QVacaciones.Parameters.ParamByName('vac').Value := -1;
    QVacaciones.open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QVacaciones;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmVacaciones.dsVacacionesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsVacaciones.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmVacaciones.QVacacionesBeforePost(DataSet: TDataSet);
begin
  if QVacacionesemp_numero.IsNull then
  begin
    showmessage('DEBE SELECCIONAR EL EMPLEADO');
    DBLookupComboBox1.setfocus;
    abort;
  end;
  if QVacaciones.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(vac_secuencia),0) as maximo');
    dm.query1.sql.add('from vacaciones');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QVacacionesvac_secuencia.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmVacaciones.FormCreate(Sender: TObject);
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

procedure TfrmVacaciones.QVacacionesCalcFields(DataSet: TDataSet);
begin
  if (not QVacacionesvac_desde.IsNull) and (not QVacacionesvac_hasta.IsNull) then
    QVacacionesdias.Value := DaysBetween(QVacacionesvac_desde.Value, QVacacionesvac_hasta.Value)
  else
    QVacacionesdias.Value := 0;
end;

procedure TfrmVacaciones.QEmpleadosCalcFields(DataSet: TDataSet);
begin
  if not QEmpleadosemp_fecha_entrada.IsNull then
  begin
    QEmpleadosTiempoAno.Value  := YearsBetween(Date, QEmpleadosemp_fecha_entrada.Value);
    QEmpleadosTiempoMes.Value  := MonthsBetween(Date, QEmpleadosemp_fecha_entrada.Value) -
                                  (12*QEmpleadosTiempoAno.Value);
    QEmpleadosTiempoDias.Value := DaysBetween(Date, QEmpleadosemp_fecha_entrada.Value) -
                                  ((365*QEmpleadosTiempoAno.Value) + QEmpleadosTiempoMes.Value * 30);
  end;
end;

end.
