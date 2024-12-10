unit CONT09;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ComCtrls, Grids, DBGrids, ADODB,
  QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmBancos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Search: TQrySearchDlgADO;
    QBancos: TADOQuery;
    dsBancos: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    btCuenta: TSpeedButton;
    tCuenta: TEdit;
    QBancosBAN_CODIGO: TIntegerField;
    QBancosBAN_CONTACTO: TStringField;
    QBancosBAN_DIRECCION: TStringField;
    QBancosBAN_NOMBRE: TStringField;
    QBancosBAN_TELEFONO: TStringField;
    QBancosEMP_CODIGO: TIntegerField;
    QBancosBAN_LOCALIDAD: TStringField;
    QBancosBAN_EMAIL: TStringField;
    QBancosBAN_FAX: TStringField;
    QBancosBAN_WEB: TStringField;
    QBancosBAN_CHEQUE: TIntegerField;
    QBancosBAN_MODSECUENCIA: TStringField;
    QBancosBAN_CUENTA: TStringField;
    QBancosENT_NUMERO: TIntegerField;
    QBancosCAT_CUENTA: TStringField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QSucursalemp_codigo: TIntegerField;
    QBancossuc_codigo: TIntegerField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label14: TLabel;
    QSucursalalm_codigo: TIntegerField;
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
    DBEdit14: TDBEdit;
    btmoneda: TSpeedButton;
    tmoneda: TEdit;
    Label15: TLabel;
    QBancosmon_codigo: TIntegerField;
    QBancosban_idioma_numeracion: TStringField;
    DBRadioGroup2: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    QBancosban_tarjeta: TStringField;
    QBancosban_tipo_secuencia: TStringField;
    DBRadioGroup3: TDBRadioGroup;
    QBancosban_permite_sobregiro: TStringField;
    QBancosban_monto_sobregiro: TBCDField;
    DBCheckBox2: TDBCheckBox;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    QBancosban_balance_minimo: TBCDField;
    DBComboBox1: TDBComboBox;
    Label17: TLabel;
    QBancosban_tipo_cuenta: TStringField;
    dbchkban_imprime_negritas: TDBCheckBox;
    QBancosban_imprime_negritas: TBooleanField;
    QBancoscodigo_banco: TStringField;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFindClick(Sender: TObject);
    procedure QBancosAfterDelete(DataSet: TDataSet);
    procedure QBancosAfterPost(DataSet: TDataSet);
    procedure QBancosNewRecord(DataSet: TDataSet);
    procedure QBancosBeforePost(DataSet: TDataSet);
    procedure dsBancosStateChange(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QBancosCAT_CUENTAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btmonedaClick(Sender: TObject);
    procedure QBancosmon_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBancos: TfrmBancos;

implementation

uses SIGMA01, SIGMA00;

{$R *.DFM}

procedure TfrmBancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmBancos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmBancos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmBancos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmBancos.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select ban_nombre, ban_codigo');
  Search.query.add('from bancos');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.query.add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.ResultField := 'ban_codigo';
  Search.Title := 'Bancos';
  if search.execute then
     QBancos.locate('ban_codigo',search.valuefield,[]);
end;

procedure TfrmBancos.QBancosAfterDelete(DataSet: TDataSet);
begin
  QBancos.UpdateBatch;
end;

procedure TfrmBancos.QBancosAfterPost(DataSet: TDataSet);
begin
  QBancos.UpdateBatch;
end;

procedure TfrmBancos.QBancosNewRecord(DataSet: TDataSet);
begin
  QBancossuc_codigo.Value := QSucursalsuc_codigo.Value;
  QBancosEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QBancosBAN_MODSECUENCIA.Value      := 'S';
  QBancosban_idioma_numeracion.Value := 'ES';
  QBancosban_tarjeta.Value           := 'False';
  QBancosban_tipo_secuencia.Value    := 'U';
  QBancosban_permite_sobregiro.Value := 'False';
  QBancosban_balance_minimo.Value    := 0;
end;

procedure TfrmBancos.QBancosBeforePost(DataSet: TDataSet);
begin
  if trim(QBancosBAN_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QBancos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(ban_codigo),0) as maximo');
    dm.query1.sql.add('from bancos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.sql.add('and suc_codigo = :suc');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    dm.query1.open;
    QBancosBAN_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmBancos.dsBancosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsBancos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btCuenta.Enabled  := not btInsert.enabled;
  btmoneda.Enabled  := not btInsert.enabled;
end;

procedure TfrmBancos.btPostClick(Sender: TObject);
begin
  QBancos.post;
end;

procedure TfrmBancos.btCancelClick(Sender: TObject);
begin
  QBancos.cancel;
end;

procedure TfrmBancos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QBancos.delete;
end;

procedure TfrmBancos.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QBancos.edit;
end;

procedure TfrmBancos.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QBancos.insert;
end;

procedure TfrmBancos.btpriorClick(Sender: TObject);
begin
  if not QBancos.bof then
    QBancos.prior;
end;

procedure TfrmBancos.btnextClick(Sender: TObject);
begin
  if not QBancos.eof then
    QBancos.next;
end;

procedure TfrmBancos.FormActivate(Sender: TObject);
begin
  if not QBancos.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
    QBancos.open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QBancos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmBancos.FormCreate(Sender: TObject);
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

procedure TfrmBancos.FormPaint(Sender: TObject);
begin
  frmBancos.Top := 15;
end;

procedure TfrmBancos.btCuentaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if search.execute then
  begin
     QBancosCAT_CUENTA.Value := Search.ValueField;
     DBEdit10.SetFocus;
  end;
end;

procedure TfrmBancos.QBancosCAT_CUENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QBancosCAT_CUENTA.IsNull then
  begin
    Text := QBancosCAT_CUENTA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value  := QBancosCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCuenta.Text := '';
  end
  else
    tCuenta.Text := '';
end;

procedure TfrmBancos.btmonedaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select mon_nombre, mon_codigo');
  Search.query.add('from moneda');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'mon_codigo';
  Search.Title := 'Tipo de Moneda';
  if search.execute then
  begin
     QBancosmon_codigo.Value := StrToInt(Search.ValueField);
     DBEdit14.SetFocus;
  end;
end;

procedure TfrmBancos.QBancosmon_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QBancosmon_codigo.IsNull then
  begin
    Text := IntToStr(QBancosmon_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select mon_nombre from moneda');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mon_codigo = :mon');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('mon').Value  := QBancosmon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tmoneda.Text := dm.Query1.FieldByName('mon_nombre').AsString
    else
      tmoneda.Text := '';
  end
  else
    tmoneda.Text := '';
end;

end.
