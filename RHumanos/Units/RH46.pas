unit RH46;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmAccionPersonal = class(TForm)
    QAccion: TADOQuery;
    dsAccion: TDataSource;
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
    QAccionemp_codigo: TIntegerField;
    QAccionacc_codigo: TIntegerField;
    QAcciontip_codigo: TIntegerField;
    QAccionemp_numero: TIntegerField;
    QAccionacc_fecha: TDateTimeField;
    QAccionacc_razon: TMemoField;
    QAccionacc_status: TStringField;
    QAccionacc_fecha_aprobacion: TDateTimeField;
    QAccionacc_fecha_efectiva: TDateTimeField;
    QAccionacc_sueldo: TBCDField;
    QAcciongru_codigo: TIntegerField;
    QAccionniv_codigo: TIntegerField;
    QAccionpos_codigo: TIntegerField;
    QAccioncla_codigo: TIntegerField;
    QAccionacc_autorizado_por: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    dsEmpleado: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    QNiveles: TADOQuery;
    QNivelesemp_codigo: TIntegerField;
    QNivelesniv_codigo: TIntegerField;
    QNivelesniv_nombre: TStringField;
    dsNiveles: TDataSource;
    dsClasif: TDataSource;
    QClasif: TADOQuery;
    QClasifemp_codigo: TIntegerField;
    QClasifniv_nombre: TStringField;
    QClasifcla_nivel: TIntegerField;
    QPosicion: TADOQuery;
    QPosicionpos_codigo: TIntegerField;
    QPosicioncla_nombre: TStringField;
    dsPosicion: TDataSource;
    QGrupo: TADOQuery;
    QGrupogru_codigo: TIntegerField;
    QGrupogru_nombre: TStringField;
    dsGrupo: TDataSource;
    QTipo: TADOQuery;
    QTipotip_codigo: TIntegerField;
    QTipotip_nombre: TStringField;
    dsTipo: TDataSource;
    QEmpleados: TADOQuery;
    QEmpleadosNombres: TStringField;
    QEmpleadosemp_fecha_entrada: TDateTimeField;
    QEmpleadosgru_nombre: TStringField;
    QEmpleadoscla_nombre: TStringField;
    QEmpleadosniv_nombre: TStringField;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosemp_cedula: TStringField;
    QEmpleadosemp_salario: TBCDField;
    QEmpleadosClasificacion: TStringField;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QListadoacc_codigo: TIntegerField;
    QListadoNombres: TStringField;
    QListadoacc_fecha: TDateTimeField;
    QListadoacc_fecha_efectiva: TDateTimeField;
    QListadotip_nombre: TStringField;
    QListadoacc_sueldo: TBCDField;
    btautoizar: TSpeedButton;
    CheckBox1: TCheckBox;
    QListadoacc_status: TStringField;
    Memo1: TMemo;
    QAccionacc_solicitado_por: TStringField;
    DBGrid1: TDBGrid;
    QListadoemp_numero: TIntegerField;
    QListadocla_codigo: TIntegerField;
    QListadoniv_codigo: TIntegerField;
    QListadopos_codigo: TIntegerField;
    QListadogru_codigo: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QAccionAfterDelete(DataSet: TDataSet);
    procedure QAccionAfterPost(DataSet: TDataSet);
    procedure QAccionNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsAccionStateChange(Sender: TObject);
    procedure QAccionBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure btautoizarClick(Sender: TObject);
    procedure dsListadoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccionPersonal: TfrmAccionPersonal;

implementation

uses SIGMA01, SIGMA00, RH57;


{$R *.DFM}

procedure TfrmAccionPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAccionPersonal.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAccionPersonal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmAccionPersonal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmAccionPersonal.QAccionAfterDelete(DataSet: TDataSet);
begin
  QAccion.UpdateBatch;
  QListado.Open;
end;

procedure TfrmAccionPersonal.QAccionAfterPost(DataSet: TDataSet);
begin
  QAccion.UpdateBatch;
  QListado.Open;
end;

procedure TfrmAccionPersonal.QAccionNewRecord(DataSet: TDataSet);
begin
  QAccionemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QAccionacc_status.Value := 'PEN';
  QAccionacc_fecha.Value  := Date;
end;

procedure TfrmAccionPersonal.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select e.emp_nombres+'+#39+' '+#39+'+e.emp_apellido_paterno+'+#39+' '+#39+'+e.emp_apellido_materno as Nombres,');
  Search.Query.Add('a.acc_codigo');
  Search.Query.Add('from acciones_personal a, empleados e');
  Search.Query.Add('where a.emp_codigo = e.emp_codigo');
  Search.Query.Add('and a.emp_numero = e.emp_numero');
  Search.Query.Add('and a.emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
  begin
    QAccion.Close;
    QAccion.Parameters.ParamByName('acc').Value := StrToInt(Search.ValueField);
    QAccion.Open;
    
    QNiveles.Close;
    QNiveles.Open;

    QClasif.Close;
    QClasif.Open;

    QPosicion.Close;
    QPosicion.Open;
    
    QEmpleados.Close;
    QEmpleados.Open;
  end;
end;

procedure TfrmAccionPersonal.btPostClick(Sender: TObject);
begin
  QAccion.post;
end;

procedure TfrmAccionPersonal.btCancelClick(Sender: TObject);
begin
  QAccion.cancel;
end;

procedure TfrmAccionPersonal.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    if QAccionacc_status.Value = 'APR' then
        MessageDlg('ESTA ACCION DE PERSONAL FUE APROBADA'+#13+
               'Y NO PUEDE SER MODIFICADA',mtError,[mbok],0)
    else
      QAccion.delete;
end;

procedure TfrmAccionPersonal.btEditClick(Sender: TObject);
begin
  DBLookupComboBox2.setfocus;
  if not QEmpleados.Active then QEmpleados.Open;
  PageControl1.ActivePageIndex := 0;

  if QAccionacc_status.Value = 'APR' then
    MessageDlg('ESTA ACCION DE PERSONAL FUE APROBADA'+#13+
               'Y NO PUEDE SER MODIFICADA',mtError,[mbok],0)
  else
    QAccion.edit;
end;

procedure TfrmAccionPersonal.btInsertClick(Sender: TObject);
begin
  DBLookupComboBox2.setfocus;
  if not QEmpleados.Active then QEmpleados.Open;
  PageControl1.ActivePageIndex := 0;
  QAccion.insert;
end;

procedure TfrmAccionPersonal.btpriorClick(Sender: TObject);
begin
  if not QAccion.Bof then QAccion.prior;
end;

procedure TfrmAccionPersonal.btnextClick(Sender: TObject);
begin
  if not QAccion.eof then QAccion.next;
end;

procedure TfrmAccionPersonal.FormActivate(Sender: TObject);
begin
  if not QAccion.active then
  begin
    QAccion.open;
    QNiveles.Open;
    QClasif.Open;
    QTipo.Open;
    QPosicion.Open;
    QClasif.Open;
    QGrupo.Open;

    QListado.SQL := Memo1.Lines;
    QListado.SQL.Add('order by a.acc_codigo');
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QAccion;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmAccionPersonal.dsAccionStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsAccion.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmAccionPersonal.QAccionBeforePost(DataSet: TDataSet);
begin
  if QAccion.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(acc_codigo),0) as maximo');
    dm.query1.sql.add('from acciones_personal');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QAccionacc_codigo.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmAccionPersonal.FormCreate(Sender: TObject);
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

  Memo1.Lines := QListado.SQL;
end;

procedure TfrmAccionPersonal.DBLookupComboBox3Click(Sender: TObject);
begin
  QPosicion.Close;
  QPosicion.Open;
end;

procedure TfrmAccionPersonal.DBGrid1DblClick(Sender: TObject);
begin
  QAccion.Close;
  QAccion.Parameters.ParamByName('acc').Value := QListadoacc_codigo.Value;
  QAccion.Open;

  QNiveles.Close;
  QNiveles.Open;

  QClasif.Close;
  QClasif.Open;

  QPosicion.Close;
  QPosicion.Open;

  QEmpleados.Close;
  QEmpleados.Open;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmAccionPersonal.CheckBox1Click(Sender: TObject);
begin
  QListado.Close;
  QListado.SQL := Memo1.Lines;
  if CheckBox1.Checked then
    QListado.SQL.Add('and a.acc_status = '+QuotedStr('PEN'));

  QListado.SQL.Add('order by a.acc_codigo');
  QListado.Open;
end;

procedure TfrmAccionPersonal.btautoizarClick(Sender: TObject);
var
  punt : TBookmark;
begin
  Application.CreateForm(tfrmAutorizar, frmAutorizar);
  frmAutorizar.ShowModal;
  if frmAutorizar.ModalResult = mrOk then
  begin
    //Actualizando Accion de Personal
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update acciones_personal');
    dm.Query1.SQL.Add('set acc_status = :st, acc_autorizado_por = :aut,');
    dm.Query1.SQL.Add('acc_fecha_aprobacion = :fec, acc_fecha_efectiva = :fec2');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and acc_codigo = :acc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('st').Value   := 'APR';
    dm.Query1.Parameters.ParamByName('aut').Value  := frmAutorizar.edautorizado.Text;
    dm.Query1.Parameters.ParamByName('fec').Value  := frmAutorizar.fecha.Date;
    dm.Query1.Parameters.ParamByName('fec2').Value := frmAutorizar.fecha.Date;
    dm.Query1.Parameters.ParamByName('acc').Value  := QListadoacc_codigo.Value;
    dm.Query1.ExecSQL;

    //Actualizando Empleado
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update empleados');
    dm.Query1.SQL.Add('set gru_codigo = :gru, niv_codigo = :niv,');
    dm.Query1.SQL.Add('cla_codigo = :cla, pos_codigo = :pos,');
    dm.Query1.SQL.Add('emp_salario = :sal');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('num').Value := QListadoemp_numero.Value;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sal').Value := QListadoacc_sueldo.Value;
    dm.Query1.Parameters.ParamByName('pos').Value := QListadopos_codigo.Value;
    dm.Query1.Parameters.ParamByName('cla').Value := QListadocla_codigo.Value;
    dm.Query1.Parameters.ParamByName('niv').Value := QListadoniv_codigo.Value;
    dm.Query1.Parameters.ParamByName('gru').Value := QListadogru_codigo.Value;
    dm.Query1.ExecSQL;

    punt := QListado.GetBookmark;
    QListado.Close;
    QListado.Open;

    if not CheckBox1.Checked then
      QListado.GotoBookmark(punt);

    QAccion.Close;
    QAccion.Open;
  end;
  frmAutorizar.Release;
end;

procedure TfrmAccionPersonal.dsListadoDataChange(Sender: TObject;
  Field: TField);
begin
  btautoizar.Enabled := QListadoacc_status.Value = 'PEN';
end;

end.

