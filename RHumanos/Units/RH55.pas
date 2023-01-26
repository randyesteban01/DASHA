unit RH55;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmCalculoPrestaciones = class(TForm)
    QPrestaciones: TADOQuery;
    dsPrestaciones: TDataSource;
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
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QListadoemp_codigo: TIntegerField;
    QListadopre_secuencia: TIntegerField;
    QListadopre_mes_desde: TIntegerField;
    QListadopre_mes_hasta: TIntegerField;
    QListadopre_fecha_desde: TDateTimeField;
    QListadopre_fecha_hasta: TDateTimeField;
    QListadopre_dias: TIntegerField;
    QConceptos: TADOQuery;
    QConceptoscodigo: TStringField;
    QConceptosnombre: TStringField;
    dsConceptos: TDataSource;
    QPrestacionesemp_codigo: TIntegerField;
    QPrestacionespre_secuencia: TIntegerField;
    QPrestacionespre_concepto: TStringField;
    QPrestacionespre_mes_desde: TIntegerField;
    QPrestacionespre_mes_hasta: TIntegerField;
    QPrestacionespre_fecha_desde: TDateTimeField;
    QPrestacionespre_fecha_hasta: TDateTimeField;
    QPrestacionespre_dias: TIntegerField;
    QListadoConcepto: TStringField;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QPrestacionesAfterDelete(DataSet: TDataSet);
    procedure QPrestacionesAfterPost(DataSet: TDataSet);
    procedure QPrestacionesNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsPrestacionesStateChange(Sender: TObject);
    procedure QPrestacionesBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculoPrestaciones: TfrmCalculoPrestaciones;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmCalculoPrestaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCalculoPrestaciones.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCalculoPrestaciones.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmCalculoPrestaciones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCalculoPrestaciones.QPrestacionesAfterDelete(DataSet: TDataSet);
begin
  QPrestaciones.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmCalculoPrestaciones.QPrestacionesAfterPost(DataSet: TDataSet);
begin
  QPrestaciones.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmCalculoPrestaciones.QPrestacionesNewRecord(DataSet: TDataSet);
begin
  QPrestacionesemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmCalculoPrestaciones.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select case pre_concepto');
  Search.Query.Add('  when '+QuotedStr('B')+' then '+QuotedStr('Bonificacion'));
  Search.Query.Add('  when '+QuotedStr('C')+' then '+QuotedStr('Cesantia'));
  Search.Query.Add('  when '+QuotedStr('P')+' then '+QuotedStr('Preaviso'));
  Search.Query.Add('  when '+QuotedStr('V')+' then '+QuotedStr('Vacaciones'));
  Search.Query.Add('end as Concepto, pre_mes_desde, pre_mes_hasta, pre_secuencia');
  Search.Query.Add('from calculo_prestaciones');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
    QPrestaciones.Locate('pre_secuencia',Search.ValueField,[]);
end;

procedure TfrmCalculoPrestaciones.btPostClick(Sender: TObject);
begin
  QPrestaciones.post;
end;

procedure TfrmCalculoPrestaciones.btCancelClick(Sender: TObject);
begin
  QPrestaciones.cancel;
end;

procedure TfrmCalculoPrestaciones.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QPrestaciones.delete;
end;

procedure TfrmCalculoPrestaciones.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QPrestaciones.edit;
end;

procedure TfrmCalculoPrestaciones.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QPrestaciones.insert;
end;

procedure TfrmCalculoPrestaciones.btpriorClick(Sender: TObject);
begin
  if not QPrestaciones.Bof then QPrestaciones.prior;
end;

procedure TfrmCalculoPrestaciones.btnextClick(Sender: TObject);
begin
  if not QPrestaciones.eof then QPrestaciones.next;
end;

procedure TfrmCalculoPrestaciones.FormActivate(Sender: TObject);
begin
  if not QPrestaciones.active then
  begin
    QPrestaciones.open;
    QConceptos.Open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QPrestaciones;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmCalculoPrestaciones.dsPrestacionesStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsPrestaciones.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmCalculoPrestaciones.QPrestacionesBeforePost(DataSet: TDataSet);
begin
  if QPrestaciones.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(pre_secuencia),0) as maximo');
    dm.query1.sql.add('from calculo_prestaciones');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QPrestacionespre_secuencia .value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmCalculoPrestaciones.FormCreate(Sender: TObject);
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

procedure TfrmCalculoPrestaciones.DBGrid1DblClick(Sender: TObject);
begin
  QPrestaciones.Locate('pre_secuencia',QListadopre_secuencia.Value,[]);
  PageControl1.ActivePageIndex := 0;
end;

end.
