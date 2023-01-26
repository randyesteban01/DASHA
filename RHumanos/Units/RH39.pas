unit RH39;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmTipoNomina = class(TForm)
    QTipoNomina: TADOQuery;
    dsTipoNomina: TDataSource;
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
    QTipoNominaemp_codigo: TIntegerField;
    QTipoNominatno_codigo: TIntegerField;
    QTipoNominatno_nombre: TStringField;
    QTipoNominatno_cant_mensual: TIntegerField;
    QTipoNominatno_semanal: TStringField;
    QTipoNominatno_cuenta: TStringField;
    QTipoNominatno_isr: TStringField;
    QTipoNominatno_ss: TStringField;
    QTipoNominatno_salario_base: TStringField;
    QTipoNominatno_pagar_sabados: TStringField;
    QTipoNominatno_pagar_domingos: TStringField;
    QTipoNominatno_pagar_feriados: TStringField;
    QTipoNominatno_mensaje_volante: TMemoField;
    QTipoNominasuc_codigo: TIntegerField;
    QTipoNominaban_codigo: TIntegerField;
    QTipoNominatno_tipo_cuenta: TStringField;
    QTipoNominatno_periodo_descuento_ss: TIntegerField;
    QTipoNominatno_periodo_descuento_isr: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    QBancos: TADOQuery;
    QBancosban_codigo: TIntegerField;
    QBancosban_nombre: TStringField;
    dsBancos: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    GroupBox2: TGroupBox;
    DBCheckBox4: TDBCheckBox;
    DBComboBox2: TDBComboBox;
    GroupBox3: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    DBMemo1: TDBMemo;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QListadotno_codigo: TIntegerField;
    QListadotno_nombre: TStringField;
    QTipoNominatno_tipo_volante: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QTipoNominaAfterDelete(DataSet: TDataSet);
    procedure QTipoNominaAfterPost(DataSet: TDataSet);
    procedure QTipoNominaNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsTipoNominaStateChange(Sender: TObject);
    procedure QTipoNominaBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoNomina: TfrmTipoNomina;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoNomina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoNomina.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoNomina.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoNomina.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoNomina.QTipoNominaAfterDelete(DataSet: TDataSet);
begin
  QTipoNomina.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmTipoNomina.QTipoNominaAfterPost(DataSet: TDataSet);
begin
  QTipoNomina.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmTipoNomina.QTipoNominaNewRecord(DataSet: TDataSet);
begin
  QTipoNominaemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QTipoNominatno_isr.Value := 'False';
  QTipoNominatno_ss.Value  := 'False';
  QTipoNominatno_cant_mensual.Value   := 2;
  QTipoNominatno_salario_base.Value   := 'True';
  QTipoNominatno_pagar_sabados.Value  := 'False';
  QTipoNominatno_pagar_domingos.Value := 'False';
  QTipoNominatno_pagar_feriados.Value := 'False';
end;

procedure TfrmTipoNomina.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tno_nombre, tno_codigo');
  Search.Query.Add('from tipo_nomina');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QTipoNomina.locate('tno_codigo',search.valuefield,[]);
end;

procedure TfrmTipoNomina.btPostClick(Sender: TObject);
begin
  QTipoNomina.post;
end;

procedure TfrmTipoNomina.btCancelClick(Sender: TObject);
begin
  QTipoNomina.cancel;
end;

procedure TfrmTipoNomina.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipoNomina.delete;
end;

procedure TfrmTipoNomina.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QTipoNomina.edit;
end;

procedure TfrmTipoNomina.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QTipoNomina.insert;
end;

procedure TfrmTipoNomina.btpriorClick(Sender: TObject);
begin
  if not QTipoNomina.Bof then QTipoNomina.prior;
end;

procedure TfrmTipoNomina.btnextClick(Sender: TObject);
begin
  if not QTipoNomina.eof then QTipoNomina.next;
end;

procedure TfrmTipoNomina.FormActivate(Sender: TObject);
begin
  if not QTipoNomina.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    QBancos.Open;
    QTipoNomina.open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QTipoNomina;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTipoNomina.dsTipoNominaStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipoNomina.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmTipoNomina.QTipoNominaBeforePost(DataSet: TDataSet);
begin
  if trim(QTipoNominatno_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTipoNomina.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tno_codigo),0) as maximo');
    dm.query1.sql.add('from tipo_nomina');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QTipoNominatno_codigo.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoNomina.FormCreate(Sender: TObject);
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

procedure TfrmTipoNomina.DBGrid1DblClick(Sender: TObject);
begin
  QTipoNomina.Locate('tno_codigo',QListadotno_codigo.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
