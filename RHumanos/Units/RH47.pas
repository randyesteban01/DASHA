unit RH47;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids, ToolEdit, CurrEdit;

type
  TfrmIngresos = class(TForm)
    QIngresos: TADOQuery;
    dsIngresos: TDataSource;
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
    Label6: TLabel;
    DBMemo1: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    Label7: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    QPeriodo: TADOQuery;
    QPeriodocodigo: TStringField;
    QPeriodoNombre: TStringField;
    dsPeriodo: TDataSource;
    QIngresosemp_codigo: TIntegerField;
    QIngresosing_codigo: TIntegerField;
    QIngresosemp_numero: TIntegerField;
    QIngresostin_codigo: TIntegerField;
    QIngresosing_fecha: TDateTimeField;
    QIngresosing_valor: TBCDField;
    QIngresosing_descripcion: TMemoField;
    QIngresosing_periodo_pago: TStringField;
    QIngresosing_fijo_variable: TStringField;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    QListadoNombres: TStringField;
    QListadotin_nombre: TStringField;
    QListadoing_fecha: TDateTimeField;
    QListadoing_valor: TBCDField;
    QListadoing_fijo_variable: TStringField;
    QListadoing_codigo: TIntegerField;
    dsListado: TDataSource;
    QTipo: TADOQuery;
    QTipotin_codigo: TIntegerField;
    QTipotin_nombre: TStringField;
    dsTipo: TDataSource;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosemp_codigo: TIntegerField;
    QEmpleadosNombres: TStringField;
    QEmpleadosferiado: TCurrencyField;
    QEmpleadoshe: TCurrencyField;
    QEmpleadoshn: TCurrencyField;
    lblCantidad: TLabel;
    QIngresosing_valor_cant: TCurrencyField;
    QIngresosValor: TCurrencyField;
    DBEdt_ing_valor_cant: TDBEdit;
    DBEdt_Valor: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QIngresosAfterDelete(DataSet: TDataSet);
    procedure QIngresosAfterPost(DataSet: TDataSet);
    procedure QIngresosNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsIngresosStateChange(Sender: TObject);
    procedure QIngresosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure QIngresostin_codigoChange(Sender: TField);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure QIngresosCalcFields(DataSet: TDataSet);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
  private
   vl_he, vl_hn, vl_fer : Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIngresos: TfrmIngresos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmIngresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmIngresos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmIngresos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmIngresos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmIngresos.QIngresosAfterDelete(DataSet: TDataSet);
begin
  QIngresos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmIngresos.QIngresosAfterPost(DataSet: TDataSet);
begin
  QIngresos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmIngresos.QIngresosNewRecord(DataSet: TDataSet);
begin
  QIngresosemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QIngresosing_fecha.Value  := Date;
  QIngresosing_fijo_variable.Value := 'V';
  QIngresosing_periodo_pago.Value  := '1';
end;

procedure TfrmIngresos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select e.emp_nombres+'+#39+' '+#39+'+e.emp_apellido_paterno+'+#39+' '+#39+'+e.emp_apellido_materno as Nombres,');
  Search.Query.Add('t.tin_nombre, i.ing_codigo');
  Search.Query.Add('from ingresos i, empleados e, tipo_ingresos t');
  Search.Query.Add('where i.emp_codigo = e.emp_codigo');
  Search.Query.Add('and i.emp_numero = e.emp_numero');
  Search.Query.Add('and i.emp_codigo = t.emp_codigo');
  Search.Query.Add('and i.tin_codigo = t.tin_codigo');
  Search.Query.Add('and i.emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
  begin
    QIngresos.Close;
    QIngresos.Parameters.ParamByName('ing').Value := StrToInt(Search.ValueField);
    QIngresos.Open;
  end;
end;

procedure TfrmIngresos.btPostClick(Sender: TObject);
begin
  QIngresos.post;
end;

procedure TfrmIngresos.btCancelClick(Sender: TObject);
begin
  QIngresos.cancel;
end;

procedure TfrmIngresos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QIngresos.delete;
end;

procedure TfrmIngresos.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QIngresos.edit;
  DBLookupComboBox2CloseUp(Sender);
end;

procedure TfrmIngresos.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QIngresos.insert;
end;

procedure TfrmIngresos.btpriorClick(Sender: TObject);
begin
  if not QIngresos.Bof then QIngresos.prior;
end;

procedure TfrmIngresos.btnextClick(Sender: TObject);
begin
  if not QIngresos.eof then QIngresos.next;
end;

procedure TfrmIngresos.FormActivate(Sender: TObject);
begin
  if not QIngresos.active then
  begin
    QIngresos.open;
    QEmpleados.Open;
    QPeriodo.Open;
    QTipo.Open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QIngresos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
  DBLookupComboBox2CloseUp(Sender);
end;

procedure TfrmIngresos.dsIngresosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsIngresos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmIngresos.QIngresosBeforePost(DataSet: TDataSet);
begin
  if not QIngresostin_codigo.Value in [2,3,5] then begin
  if QIngresosing_valor.value <= 0 then
  begin
    showmessage('EL VALOR NO PUEDE ESTAR EN BLANCO');
    DBEdt_Valor.setfocus;
    abort;
  end;
  end;
  if QIngresos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(ing_codigo),0) as maximo');
    dm.query1.sql.add('from ingresos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QIngresosing_codigo .value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
    if QIngresosValor.Value > 0 then
    QIngresosing_valor.Value := QIngresosValor.Value;
end;

procedure TfrmIngresos.FormCreate(Sender: TObject);
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

procedure TfrmIngresos.DBGrid1DblClick(Sender: TObject);
begin
  QIngresos.Close;
  QIngresos.Parameters.ParamByName('ing').Value := QListadoing_codigo.Value;
  QIngresos.Open;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmIngresos.QIngresostin_codigoChange(Sender: TField);
begin
if QIngresostin_codigo.Value in [2,3,5] then begin
  lblCantidad.Visible  := True;
  DBEdt_ing_valor_cant.Visible := True;
  QIngresosing_valor_cant.Value   := 1;
  DBEdt_ing_valor_cant.SetFocus;
  DBEdt_Valor.Enabled := False;
end else
begin
lblCantidad.Visible  := False;
DBEdt_ing_valor_cant.Visible := False;
DBEdt_Valor.Enabled      := True;
DBEdt_Valor.DataField := 'ing_valor';
end;
  end;

procedure TfrmIngresos.DBLookupComboBox2CloseUp(Sender: TObject);
begin
if DBLookupComboBox2.Text = 'H.E.' then begin
  lblCantidad.Visible          := True;
  DBEdt_ing_valor_cant.Visible := True;
  DBEdt_Valor.ReadOnly             := False;
  DBEdt_ing_valor_cant.SetFocus;
  DBEdt_Valor.DataField            := 'Valor';
end else
if DBLookupComboBox2.Text = 'H.N.' then begin
  lblCantidad.Visible          := True;
  DBEdt_ing_valor_cant.Visible := True;
  DBEdt_Valor.ReadOnly            := False;
  DBEdt_ing_valor_cant.SetFocus;
  DBEdt_Valor.DataField            := 'Valor';
end else
if DBLookupComboBox2.Text = 'FERIADO' then begin
  lblCantidad.Visible          := True;
  DBEdt_ing_valor_cant.Visible := True;
  DBEdt_Valor.ReadOnly             := False;
  DBEdt_ing_valor_cant.SetFocus;
  DBEdt_Valor.DataField            := 'Valor';
end else begin
lblCantidad.Visible          := False;
DBEdt_ing_valor_cant.Visible := False;
DBEdt_Valor.ReadOnly             := False;
DBEdt_Valor.Enabled             := True;
DBEdt_Valor.DataField            := 'ing_valor';
end;
end;

procedure TfrmIngresos.QIngresosCalcFields(DataSet: TDataSet);
begin
if DBLookupComboBox2.Text = 'H.E.' then begin
  if QEmpleadoshe.Value = 0 then begin
    ShowMessage('Debes indicar el precio de las horas extras....');
    Exit;
  end;
  QIngresosValor.Value := QIngresosing_valor_cant.Value * QEmpleadoshe.Value;
end else
if DBLookupComboBox2.Text = 'H.N.' then begin
if QEmpleadoshn.Value = 0 then begin
    ShowMessage('Debes indicar el precio de las horas nocturas....');
    Exit;
  end;
  QIngresosValor.Value := QIngresosing_valor_cant.Value * QEmpleadoshn.Value;
end else
if DBLookupComboBox2.Text = 'FERIADO' then begin
if QEmpleadosferiado.Value = 0 then begin
    ShowMessage('Debes indicar el precio de los dias feriado....');
    Exit;
  end;
  QIngresosValor.Value := QIngresosing_valor_cant.Value * QEmpleadosferiado.Value;
end;
end;

procedure TfrmIngresos.DBLookupComboBox1CloseUp(Sender: TObject);
begin
QEmpleados.Locate('Nombres',DBLookupComboBox1.Text,[]);
end;

end.
