unit CONT03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, Grids, DBGrids, Db,
  IBCustomDataSet, IBQuery, IBUpdateSQL, QuerySearchDlgIB;

type
  TfrmClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    btInsert: TBitBtn;
    btEdit: TBitBtn;
    btDelete: TBitBtn;
    Panel3: TPanel;
    btPost: TBitBtn;
    btCancel: TBitBtn;
    btClose: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBComboBox1: TDBComboBox;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    btCondi: TSpeedButton;
    tCondi: TEdit;
    DBGrid1: TDBGrid;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    QClientes: TIBQuery;
    QClientesCLI_TELEFONO: TIBStringField;
    QClientesCLI_FAX: TIBStringField;
    QClientesCLI_WEB: TIBStringField;
    QClientesCLI_EMAIL: TIBStringField;
    QClientesTCL_CODIGO: TIntegerField;
    QClientesCLI_DESCUENTO: TFloatField;
    QClientesCLI_PRECIO: TIBStringField;
    QClientesCLI_STATUS: TIBStringField;
    QClientesFPA_CODIGO: TIntegerField;
    QClientesCPA_CODIGO: TIntegerField;
    QClientesCLI_CUENTA: TIBStringField;
    QClientesCLI_BALANCE: TFloatField;
    QClientesEMP_CODIGO: TIntegerField;
    QClientesCLI_CODIGO: TIntegerField;
    QClientesCLI_REFERENCIA: TIBStringField;
    QClientesCLI_NOMBRE: TIBStringField;
    QClientesCLI_RNC: TIBStringField;
    QClientesCLI_CEDULA: TIBStringField;
    QClientesCLI_DIRECCION: TIBStringField;
    QClientesCLI_LOCALIDAD: TIBStringField;
    dsClientes: TDataSource;
    UPDClientes: TIBUpdateSQL;
    Search: TQrySearchDlgIB;
    QClientesCLI_LIMITE: TFloatField;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    QFamiliasCli: TIBQuery;
    QFamiliasCliEMP_CODIGO: TIntegerField;
    QFamiliasCliCLI_CODIGO: TIntegerField;
    QFamiliasCliFAM_CODIGO: TIntegerField;
    QFamiliasCliCLF_DESCUENTO: TFloatField;
    dsFamilias: TDataSource;
    UPDFamilias: TIBUpdateSQL;
    QFamilias: TIBQuery;
    QFamiliasFAM_CODIGO: TIntegerField;
    QFamiliasFAM_NOMBRE: TIBStringField;
    QFamiliasCliFamilia: TStringField;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    btFamilia: TSpeedButton;
    DBEdit19: TDBEdit;
    fbtinsert: TSpeedButton;
    fbtedit: TSpeedButton;
    fbtdelete: TSpeedButton;
    fbtpost: TSpeedButton;
    fbtcancel: TSpeedButton;
    DBGrid2: TDBGrid;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    btProducto: TSpeedButton;
    DBEdit22: TDBEdit;
    QProductos: TIBQuery;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosCli: TIBQuery;
    QProductosCliEMP_CODIGO: TIntegerField;
    QProductosCliCLI_CODIGO: TIntegerField;
    QProductosCliPRO_CODIGO: TIntegerField;
    QProductosCliCLP_DESCUENTO: TFloatField;
    QProductosCliCLP_PRECIO: TFloatField;
    dsProductos: TDataSource;
    UPDProductos: TIBUpdateSQL;
    QProductosCliProducto: TStringField;
    pbtpost: TSpeedButton;
    pbtinsert: TSpeedButton;
    pbtedit: TSpeedButton;
    pbtdelete: TSpeedButton;
    pbtcancel: TSpeedButton;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    TabSheet5: TTabSheet;
    QCXC: TIBQuery;
    QCXCSaldo: TFloatField;
    dsCXC: TDataSource;
    lbSaldo: TStaticText;
    Label15: TLabel;
    QCXCFAC_FORMA: TIBStringField;
    QCXCMOV_ABONO: TFloatField;
    QCXCMOV_FECHA: TDateTimeField;
    QCXCMOV_MONTO: TFloatField;
    QCXCMOV_NUMERO: TIntegerField;
    QCXCMOV_TIPO: TIBStringField;
    QCXCTFA_CODIGO: TIntegerField;
    DBGrid3: TDBGrid;
    QClientesVEN_CODIGO: TIntegerField;
    Label17: TLabel;
    dbVendedor: TDBEdit;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    QLimite: TIBQuery;
    QLimiteCLI_CODIGO: TIntegerField;
    QLimiteEMP_CODIGO: TIntegerField;
    QLimiteLIM_CONCEPTO: TIBStringField;
    QLimiteLIM_FECHA: TDateTimeField;
    QLimiteLIM_MONTO: TFloatField;
    QLimiteLIM_SECUENCIA: TIntegerField;
    TabSheet6: TTabSheet;
    DBGrid4: TDBGrid;
    dsLimite: TDataSource;
    BitBtn2: TBitBtn;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    QClientesCLI_FACTURARBCE: TIBStringField;
    QClientesCLI_FACTURARVENCIDA: TIBStringField;
    DBGrid5: TDBGrid;
    btInsRest: TBitBtn;
    btDelRest: TBitBtn;
    QRest: TIBQuery;
    QRestCLI_CODIGO: TIntegerField;
    QRestEMP_CODIGO: TIntegerField;
    QRestFPA_CODIGO: TIntegerField;
    dsRest: TDataSource;
    QRestFPA_NOMBRE: TIBStringField;
    Query1: TIBQuery;
    btFind: TBitBtn;
    TabSheet7: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    GroupBox3: TGroupBox;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    QClientesCLI_INSTNOMBRE: TIBStringField;
    QClientesCLI_INSTTEL: TIBStringField;
    QClientesCLI_PERNOMBRE1: TIBStringField;
    QClientesCLI_PERNOMBRE2: TIBStringField;
    QClientesCLI_PERPARENT1: TIBStringField;
    QClientesCLI_PERPARENT2: TIBStringField;
    QClientesCLI_PERTEL1: TIBStringField;
    QClientesCLI_PERTEL2: TIBStringField;
    QClientesCLI_REFNOMBRE1: TIBStringField;
    QClientesCLI_REFNOMBRE2: TIBStringField;
    QClientesCLI_REFTEL1: TIBStringField;
    QClientesCLI_REFTEL2: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QClientesAfterDelete(DataSet: TDataSet);
    procedure QClientesAfterPost(DataSet: TDataSet);
    procedure QClientesNewRecord(DataSet: TDataSet);
    procedure QClientesTCL_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure dsClientesStateChange(Sender: TObject);
    procedure QClientesBeforePost(DataSet: TDataSet);
    procedure btTipoClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure btFormaClick(Sender: TObject);
    procedure btCondiClick(Sender: TObject);
    procedure QClientesCPA_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QFamiliasCliNewRecord(DataSet: TDataSet);
    procedure QFamiliasCliAfterPost(DataSet: TDataSet);
    procedure QFamiliasCliAfterDelete(DataSet: TDataSet);
    procedure QFamiliasCliBeforePost(DataSet: TDataSet);
    procedure dsFamiliasStateChange(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure fbtinsertClick(Sender: TObject);
    procedure fbteditClick(Sender: TObject);
    procedure fbtdeleteClick(Sender: TObject);
    procedure fbtpostClick(Sender: TObject);
    procedure fbtcancelClick(Sender: TObject);
    procedure QProductosCliAfterDelete(DataSet: TDataSet);
    procedure QProductosCliAfterPost(DataSet: TDataSet);
    procedure QProductosCliNewRecord(DataSet: TDataSet);
    procedure dsProductosStateChange(Sender: TObject);
    procedure pbtinsertClick(Sender: TObject);
    procedure pbteditClick(Sender: TObject);
    procedure pbtdeleteClick(Sender: TObject);
    procedure pbtpostClick(Sender: TObject);
    procedure pbtcancelClick(Sender: TObject);
    procedure btProductoClick(Sender: TObject);
    procedure QProductosCliBeforePost(DataSet: TDataSet);
    procedure QCXCCalcFields(DataSet: TDataSet);
    procedure QClientesAfterOpen(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure QClientesVEN_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QRestNewRecord(DataSet: TDataSet);
    procedure btInsRestClick(Sender: TObject);
    procedure btDelRestClick(Sender: TObject);
    procedure QClientesCLI_CEDULAChange(Sender: TField);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure totalizacxc;
  end;

var
  frmClientes: TfrmClientes;

implementation

uses CONT01, CONT00, RCONT02;

{$R *.DFM}

procedure TfrmClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmClientes.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmClientes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmClientes.QClientesAfterDelete(DataSet: TDataSet);
begin
  QClientes.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmClientes.QClientesAfterPost(DataSet: TDataSet);
begin
  QClientes.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmClientes.QClientesNewRecord(DataSet: TDataSet);
begin
  QClientesEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QClientesCLI_BALANCE.value := 0;
  QClientesCLI_STATUS.value := 'ACT';
  QClientesCLI_FACTURARBCE.Value := 'S';
  QClientesCLI_FACTURARVENCIDA.Value := 'S';
end;

procedure TfrmClientes.QClientesTCL_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QClientesTCL_CODIGO.isnull then
  begin
    text := inttostr(QClientesTCL_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tcl_nombre from tipoclientes');
    dm.Query1.sql.add('where tcl_codigo = :tipo');
    dm.Query1.parambyname('tipo').asinteger := QClientesTCL_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tTipo.text := dm.Query1.fieldbyname('tcl_nombre').asstring
    else
      tTipo.text := 'INVALIDO';
  end
  else
    tTipo.text := 'INVALIDO';
end;

procedure TfrmClientes.FormActivate(Sender: TObject);
begin
  if not QClientes.active then
  begin
    QClientes.ParamByName('cli').AsInteger := -1;
    QClientes.open;
    QFamiliasCli.open;
    qfamilias.open;
    QProductos.open;
    QProductosCli.open;
    QLimite.Open;
    QRest.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QClientes;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmClientes.btPostClick(Sender: TObject);
begin
  QClientes.Post;
end;

procedure TfrmClientes.btCancelClick(Sender: TObject);
begin
  QClientes.cancel;
end;

procedure TfrmClientes.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QClientes.delete;
end;

procedure TfrmClientes.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QClientes.edit;
end;

procedure TfrmClientes.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit17.setfocus;
  QClientes.insert;
end;

procedure TfrmClientes.btFindClick(Sender: TObject);
begin
  Search.Title := 'Listado de Clientes';
  Search.ResultField := 'cli_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('Código');
  Search.query.clear;
  Search.query.add('select cli_nombre, cli_referencia, cli_codigo');
  Search.query.add('from clientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
  begin
    QClientes.Close;
    QClientes.ParamByName('cli').AsInteger := StrToInt(Trim(Search.ValueField));
    QClientes.Open;
    totalizacxc;
  end;
end;

procedure TfrmClientes.dsClientesStateChange(Sender: TObject);
begin
  btInsert.enabled   := dsClientes.State = dsbrowse;
  btEdit.enabled     := btInsert.enabled;
  btDelete.enabled   := btInsert.enabled;
  btPost.enabled     := not btInsert.enabled;
  btCancel.enabled   := not btInsert.enabled;
  btFind.enabled     := btInsert.enabled;
  btTipo.enabled     := not btInsert.enabled;
  btCondi.enabled    := not btInsert.enabled;
  btVendedor.enabled := not btInsert.enabled;
  btInsRest.Enabled  := btInsert.enabled;
  btDelRest.Enabled  := btInsert.enabled;

  //Familias
  fbtInsert.enabled  := dsClientes.State = dsbrowse;
  fbtEdit.enabled    := fbtInsert.enabled;
  fbtDelete.enabled  := fbtInsert.enabled;
  fbtPost.enabled    := fbtInsert.enabled;
  fbtCancel.enabled  := fbtInsert.enabled;
  btFamilia.enabled  := fbtInsert.enabled;

  //Productos
  pbtInsert.enabled  := dsClientes.State = dsbrowse;
  pbtEdit.enabled    := pbtInsert.enabled;
  pbtDelete.enabled  := pbtInsert.enabled;
  pbtPost.enabled    := pbtInsert.enabled;
  pbtCancel.enabled  := pbtInsert.enabled;
  btProducto.enabled := pbtInsert.enabled;
end;

procedure TfrmClientes.QClientesBeforePost(DataSet: TDataSet);
begin
  if trim(QClientesCLI_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit12.setfocus;
    abort;
  end;
  if QClientes.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select max(cli_codigo) as maximo');
    dm.query1.sql.add('from clientes');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QClientesCLI_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmClientes.btTipoClick(Sender: TObject);
begin
  Search.Title := 'Tipos de Clientes';
  Search.ResultField := 'tcl_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.query.clear;
  Search.query.add('select tcl_nombre, tcl_codigo');
  Search.query.add('from tipoclientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
     QClientesTCL_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmClientes.btPriorClick(Sender: TObject);
begin
  if not QClientes.Bof then QClientes.prior;
end;

procedure TfrmClientes.btNextClick(Sender: TObject);
begin
  if not QClientes.eof then QClientes.next;
end;

procedure TfrmClientes.btFormaClick(Sender: TObject);
begin
  Search.Title := 'Formas de Pago';
  Search.ResultField := 'fpa_codigo';
  Search.query.clear;
  Search.query.add('select fpa_nombre, fpa_codigo');
  Search.query.add('from formaspago');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
     QClientesFPA_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmClientes.btCondiClick(Sender: TObject);
begin
  Search.Title := 'Condiciones de Pago';
  Search.ResultField := 'cpa_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.query.clear;
  Search.query.add('select cpa_nombre, cpa_codigo');
  Search.query.add('from condiciones');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
  begin
     QClientesCPA_CODIGO.value := strtoint(search.valuefield);
     dbedit15.setfocus;
  end;
end;

procedure TfrmClientes.QClientesCPA_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QClientesCPA_CODIGO.isnull then
  begin
    text := inttostr(QClientesCPA_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cpa_nombre from condiciones');
    dm.Query1.sql.add('where cpa_codigo = :cod');
    dm.Query1.sql.add('and emp_codigo = :emp');
    dm.Query1.parambyname('cod').asinteger := QClientesCPA_CODIGO.value;
    dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tCondi.text := dm.Query1.fieldbyname('cpa_nombre').asstring
    else
      tCondi.text := 'INVALIDO';
  end
  else
    tCondi.text := 'INVALIDO';
end;

procedure TfrmClientes.QFamiliasCliNewRecord(DataSet: TDataSet);
begin
  QFamiliasCliEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QFamiliasCliCLI_CODIGO.value := QClientesCLI_CODIGO.value;
end;

procedure TfrmClientes.QFamiliasCliAfterPost(DataSet: TDataSet);
begin
  QFamiliasCli.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmClientes.QFamiliasCliAfterDelete(DataSet: TDataSet);
begin
  QFamiliasCli.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmClientes.QFamiliasCliBeforePost(DataSet: TDataSet);
begin
  if QFamiliasCliFAM_CODIGO.isnull then
  begin
    showmessage('EL CODIGO DE FAMILIA NO PUEDE ESTAR EN BLANCO');
    abort;
  end;
end;

procedure TfrmClientes.dsFamiliasStateChange(Sender: TObject);
begin
  fbtInsert.enabled  := dsFamilias.State = dsbrowse;
  fbtEdit.enabled    := fbtInsert.enabled;
  fbtDelete.enabled  := fbtInsert.enabled;
  fbtPost.enabled    := not fbtInsert.enabled;
  fbtCancel.enabled  := not fbtInsert.enabled;
  btFamilia.enabled  := not fbtInsert.enabled;
end;

procedure TfrmClientes.btFamiliaClick(Sender: TObject);
begin
  Search.Title := 'Familias de productos';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'fam_codigo';
  Search.query.clear;
  Search.query.add('select fam_nombre, fam_codigo');
  Search.query.add('from familias');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
     QFamiliasCliFAM_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmClientes.fbtinsertClick(Sender: TObject);
begin
  DBEdit20.setfocus;
  QFamiliasCli.insert;
end;

procedure TfrmClientes.fbteditClick(Sender: TObject);
begin
  DBEdit20.setfocus;
  QFamiliasCli.edit;
end;

procedure TfrmClientes.fbtdeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QFamiliasCli.delete;
end;

procedure TfrmClientes.fbtpostClick(Sender: TObject);
begin
  QFamiliasCli.post;
end;

procedure TfrmClientes.fbtcancelClick(Sender: TObject);
begin
  QFamiliasCli.cancel;
end;

procedure TfrmClientes.QProductosCliAfterDelete(DataSet: TDataSet);
begin
  QProductosCli.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmClientes.QProductosCliAfterPost(DataSet: TDataSet);
begin
  QProductosCli.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmClientes.QProductosCliNewRecord(DataSet: TDataSet);
begin
  QProductosCliEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QProductosCliCLI_CODIGO.value := QClientesCLI_CODIGO.value;
end;

procedure TfrmClientes.dsProductosStateChange(Sender: TObject);
begin
  pbtInsert.enabled   := dsProductos.State = dsbrowse;
  pbtEdit.enabled     := pbtInsert.enabled;
  pbtDelete.enabled   := pbtInsert.enabled;
  pbtPost.enabled     := not pbtInsert.enabled;
  pbtCancel.enabled   := not pbtInsert.enabled;
  btProducto.enabled  := not pbtInsert.enabled;
end;

procedure TfrmClientes.pbtinsertClick(Sender: TObject);
begin
  DBEdit21.setfocus;
  QProductosCli.insert;
end;

procedure TfrmClientes.pbteditClick(Sender: TObject);
begin
  DBEdit21.setfocus;
  QProductosCli.edit;
end;

procedure TfrmClientes.pbtdeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QProductosCli.delete;
end;

procedure TfrmClientes.pbtpostClick(Sender: TObject);
begin
  QProductosCli.post;
end;

procedure TfrmClientes.pbtcancelClick(Sender: TObject);
begin
  QProductosCli.cancel;
end;

procedure TfrmClientes.btProductoClick(Sender: TObject);
begin
  Search.Title := 'Productos';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('R. Original');
  Search.AliasFields.Add('R. Fabric');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'pro_codigo';
  Search.query.clear;
  Search.query.add('select pro_nombre, pro_roriginal, pro_rfabric, pro_codigo');
  Search.query.add('from productos');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
     QProductosCliPRO_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmClientes.QProductosCliBeforePost(DataSet: TDataSet);
begin
  if QProductosCliPRO_CODIGO.isnull then
  begin
    showmessage('EL CODIGO DEL PRODUCTO NO PUEDE ESTAR EN BLANCO');
    abort;
  end;
end;

procedure TfrmClientes.QCXCCalcFields(DataSet: TDataSet);
begin
  QCXCSaldo.value := QCXCMOV_MONTO.value - QCXCMOV_ABONO.value;
end;

procedure TfrmClientes.QClientesAfterOpen(DataSet: TDataSet);
begin
  if not QCXC.active then QCXC.open;
end;

procedure TfrmClientes.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 4 then
    totalizacxc;
end;

procedure TfrmClientes.totalizacxc;
var
   total3 : double;
begin
  total3 := 0;
  QCXC.DisableControls;
  QCXC.first;
  while not QCXC.eof do
  begin
    total3 := total3 + QCXCSaldo.Value;
    QCXC.next;
  end;
  QCXC.first;
  QCXC.EnableControls;
  lbSaldo.Caption := format('%n',[total3]);
end;

procedure TfrmClientes.btVendedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    QClientesVEN_CODIGO.value := strtoint(Search.ValueField);
    dbVendedor.setfocus;
  end;
end;

procedure TfrmClientes.QClientesVEN_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QClientesVEN_CODIGO.isnull then
  begin
    Text := inttostr(QClientesVEN_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ven_Codigo = :ven');
    dm.Query1.parambyname('emp').asinteger := dm.QEmpresasEMP_CODIGO.value;
    dm.Query1.parambyname('ven').asinteger := QClientesVEN_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tVendedor.text := 'INVALIDO'
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
  end
  else
    tVendedor.text := 'INVALIDO';
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
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

procedure TfrmClientes.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRLimites, RLimites);
  RLimites.lbFecha.Caption := 'Al '+DateToStr(Date);
  RLimites.lbCliente.Caption := QClientesCLI_NOMBRE.Value;
  RLimites.QLimite.ParamByName('emp').AsInteger := dm.QEmpresasEMP_CODIGO.Value;
  RLimites.QLimite.ParamByName('cli').AsInteger := QClientesCLI_CODIGO.Value;
  RLimites.QLimite.Open;
  RLimites.PrinterSetup;
  RLimites.Preview;
  RLimites.Destroy;
end;

procedure TfrmClientes.QRestNewRecord(DataSet: TDataSet);
begin
  QRestEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
  QRestCLI_CODIGO.Value := QClientesCLI_CODIGO.Value;
end;

procedure TfrmClientes.btInsRestClick(Sender: TObject);
begin
  Search.Title := 'Formas de Pago';
  Search.ResultField := 'fpa_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.query.clear;
  Search.query.add('select fpa_nombre, fpa_codigo');
  Search.query.add('from formaspago');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.query.add('and fpa_codigo not in (select fpa_codigo from clirestfpago');
  Search.query.add('where emp_codigo ='+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.query.add('and cli_codigo = '+inttostr(QCLientesCLI_CODIGO.value)+')');
  if search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into clirestfpago (emp_codigo, cli_codigo, fpa_codigo)');
    dm.Query1.SQL.Add('values (:emp, :cli, :fpa)');
    dm.Query1.ParamByName('emp').AsInteger := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.ParamByName('cli').AsInteger := QClientesCLI_CODIGO.Value;
    dm.Query1.ParamByName('fpa').AsInteger := StrToInt(Search.ValueField);
    dm.Query1.ExecSQL;
    dm.IBTransaction1.CommitRetaining;
    QRest.Close;
    QRest.Open;
  end;
end;

procedure TfrmClientes.btDelRestClick(Sender: TObject);
begin
  if MessageDlg('DESEA ELIMINAR LA RESTRICCION DE ESTA FORMA'+#13+
                'DE PAGO?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from clirestfpago');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.SQL.Add('and fpa_codigo = :fpa');
    dm.Query1.ParamByName('emp').AsInteger := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.ParamByName('cli').AsInteger := QClientesCLI_CODIGO.Value;
    dm.Query1.ParamByName('fpa').AsInteger := QRestFPA_CODIGO.Value;
    dm.Query1.ExecSQL;
    dm.IBTransaction1.CommitRetaining;
    QRest.Close;
    QRest.Open;
  end;
end;

procedure TfrmClientes.QClientesCLI_CEDULAChange(Sender: TField);
begin
  if not QClientesCLI_CEDULA.IsNull then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select cli_cedula from clientes');
    Query1.SQL.Add('where emp_Codigo = :emp');
    Query1.SQL.Add('and cli_cedula = :ced');
    Query1.ParamByName('emp').AsInteger := dm.QEmpresasEMP_CODIGO.Value;
    Query1.ParamByName('ced').AsString  := trim(QClientesCLI_CEDULA.Value);
    Query1.Open;
    if Query1.RecordCount > 0 then
    begin
      MessageDlg('LA CEDULA DEL CLIENTE YA EXISTE',mtError,[mbok],0);
      Abort;
    end;
  end;
end;

procedure TfrmClientes.FormPaint(Sender: TObject);
begin
  with frmClientes do
  begin
    top := 15;
    left := 2;
  end;
end;

end.
