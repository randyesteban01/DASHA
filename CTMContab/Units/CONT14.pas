unit CONT14;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons,
  Grids, DBGrids, ActnList, IBCustomDataSet, IBQuery, IBUpdateSQL,
  ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, Menus;

type
  TfrmAnexos = class(TForm)
    dsAnexos: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    edCuenta: TEdit;
    DBGrid1: TDBGrid;
    dsCuentas: TDataSource;
    ActionList1: TActionList;
    Busca: TAction;
    PrvAnexo: TAction;
    PrintAnexo: TAction;
    QAnexos: TADOQuery;
    QCuentas: TADOQuery;
    Search: TQrySearchDlgADO;
    btCuenta: TSpeedButton;
    QCuentasCAT_CUENTA: TStringField;
    QCuentasCAT_NOMBRE: TStringField;
    QCuentasCAT_BALACTUAL: TBCDField;
    QAnexosANE_CODIGO: TIntegerField;
    QAnexosANE_NOMBRE: TStringField;
    QAnexosCAT_CUENTA: TStringField;
    QAnexosEMP_CODIGO: TIntegerField;
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
    PopupMenu1: TPopupMenu;
    InsertarCuenta1: TMenuItem;
    EliminarCuenta1: TMenuItem;
    N1: TMenuItem;
    Insertartodaslascuentasauxiliares1: TMenuItem;
    QDetalle: TADOQuery;
    QDetallecat_cuenta: TStringField;
    QDetallecat_nombre: TStringField;
    QDetallecat_balactual: TBCDField;
    dsDetalle: TDataSource;
    procedure btCuentaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QAnexosAfterPost(DataSet: TDataSet);
    procedure QAnexosAfterDelete(DataSet: TDataSet);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QAnexosNewRecord(DataSet: TDataSet);
    procedure QAnexosBeforePost(DataSet: TDataSet);
    procedure QAnexosCAT_CUENTAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dsAnexosStateChange(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
    procedure InsertarCuenta1Click(Sender: TObject);
    procedure QAnexosAfterOpen(DataSet: TDataSet);
    procedure EliminarCuenta1Click(Sender: TObject);
    procedure Insertartodaslascuentasauxiliares1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');

  NumeroMes : array[1..12] of integer = (31,29,31,30,31,30,31,31,30,31,30,31);



var
  frmAnexos: TfrmAnexos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmAnexos.btCuentaClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Title := 'Catálogo de cuentas';
  Search.ResultField := 'cat_Cuenta';
  Search.Query.add('select Cat_nombre, cat_Cuenta');
  Search.Query.add('from contCatalogo');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Cuenta');
  if Search.execute then
     QAnexosCAT_CUENTA.value := Search.valuefield;
end;

procedure TfrmAnexos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAnexos.FormActivate(Sender: TObject);
begin
  if not QAnexos.Active then
  begin
    QAnexos.Open;
    QCuentas.Open;
  end;
end;

procedure TfrmAnexos.FormCreate(Sender: TObject);
begin
  QAnexos.open;
  QCuentas.open;
end;

procedure TfrmAnexos.QAnexosAfterPost(DataSet: TDataSet);
begin
  QAnexos.UpdateBatch;
end;

procedure TfrmAnexos.QAnexosAfterDelete(DataSet: TDataSet);
begin
  QAnexos.UpdateBatch;
end;

procedure TfrmAnexos.DBEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f5 then btCuentaClick(self);
end;

procedure TfrmAnexos.QAnexosNewRecord(DataSet: TDataSet);
begin
  QAnexosEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmAnexos.QAnexosBeforePost(DataSet: TDataSet);
begin
  if QAnexos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(ane_codigo),0) as maximo');
    dm.query1.sql.add('from contanexos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QAnexosANE_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger + 1;
  end;
end;

procedure TfrmAnexos.QAnexosCAT_CUENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (not QAnexosCAT_CUENTA.isnull) and (QAnexosCAT_CUENTA.value <> '') then
  begin
    Text := QAnexosCAT_CUENTA.Value;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select Cat_nombre, Cat_Movimiento');
    dm.Query1.sql.add('from contCatalogo');
    dm.Query1.sql.add('where cat_CUENTA = :cta');
    dm.Query1.sql.add('and emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.Parameters.parambyname('cta').Value  := QAnexosCAT_CUENTA.value;
    dm.Query1.open;
    if dm.query1.recordcount = 0 then
    begin
      showmessage('Cuenta no existe');
      abort;
    end
    else
      edCuenta.text := dm.Query1.fieldbyname('Cat_nombre').asstring;
  end
  else
    edCuenta.text := '';
end;

procedure TfrmAnexos.dsAnexosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsAnexos.State = dsbrowse;
  btCuenta.Enabled  := not btInsert.enabled;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmAnexos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAnexos.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QAnexos.insert;
end;

procedure TfrmAnexos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QAnexos.Edit;
end;

procedure TfrmAnexos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QAnexos.delete;
end;

procedure TfrmAnexos.btnextClick(Sender: TObject);
begin
  if not QAnexos.eof then
    QAnexos.next;
end;

procedure TfrmAnexos.btpriorClick(Sender: TObject);
begin
  if not QAnexos.bof then
    QAnexos.prior;
end;

procedure TfrmAnexos.btPostClick(Sender: TObject);
begin
  QAnexos.post;
end;

procedure TfrmAnexos.btCancelClick(Sender: TObject);
begin
  QAnexos.cancel;
end;

procedure TfrmAnexos.btFindClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Query.add('select ane_nombre, cat_cuenta, ane_codigo');
  Search.Query.add('from contAnexos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Cuenta');
  Search.AliasFields.add('Codigo');
  Search.Title := 'Anexos';
  Search.ResultField := 'ane_codigo';
  if Search.execute then
     QAnexos.locate('ane_codigo',Search.valuefield,[]);
end;

procedure TfrmAnexos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if activecontrol.ClassType <> tdbGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmAnexos.FormPaint(Sender: TObject);
begin
  frmAnexos.Top := 4;
  frmAnexos.Left := 2;
end;

procedure TfrmAnexos.InsertarCuenta1Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Cuenta');
  Search.AliasFields.Add('Nombre');
  Search.Query.Clear;
  Search.Query.Add('select cat_cuenta, cat_nombre from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_cuenta not in (select cat_cuenta from ContAnexos_Detalle');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and ane_codigo = '+QAnexosANE_CODIGO.AsString+')');
  Search.Title := 'Catalogo de cuentas';

  Search.ResultField := 'cat_cuenta';
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into ContAnexos_Detalle (emp_codigo, ane_codigo, cat_cuenta)');
    dm.Query1.SQL.Add('values (:emp, :cod, :cta)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cod').Value := QAnexosANE_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := Search.ValueField;
    dm.Query1.ExecSQL;
    QDetalle.Close;
    QDetalle.Open;
    QDetalle.Locate('cat_cuenta',Search.ValueField,[]);
  end;
end;

procedure TfrmAnexos.QAnexosAfterOpen(DataSet: TDataSet);
begin
  if not Qdetalle.Active then Qdetalle.open;
end;

procedure TfrmAnexos.EliminarCuenta1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from contanexos_detalle');
  dm.Query1.SQL.Add('where emp_codigo = :emp and cat_cuenta = :cta');
  dm.Query1.SQL.Add('and ane_codigo = :cod');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value := QDetallecat_cuenta.Value;
  dm.Query1.Parameters.ParamByName('cod').Value := QAnexosANE_CODIGO.Value;
  dm.Query1.ExecSQL;
  QDetalle.Close;
  QDetalle.Open;
end;

procedure TfrmAnexos.Insertartodaslascuentasauxiliares1Click(
  Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into contanexos_detalle (emp_codigo, cat_cuenta, ane_codigo)');
  dm.Query1.SQL.Add('select emp_codigo, cat_cuenta, :cod from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp and cat_control = :ctr');
  dm.Query1.Parameters.ParamByName('cod').Value := QAnexosANE_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ctr').Value := QAnexosCAT_CUENTA.Value;
  dm.Query1.ExecSQL;
  QDetalle.Close;
  QDetalle.Open;
end;

end.
