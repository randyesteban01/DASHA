unit CONT28;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DateUtils, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsCheques = class(TForm)
    Panel1: TPanel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    Panel2: TPanel;
    Label6: TLabel;
    cbStatus: TRadioGroup;
    Label7: TLabel;
    btUsu: TSpeedButton;
    tUsu: TEdit;
    edUsuario: TEdit;
    Label2: TLabel;
    btCliente: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    Label5: TLabel;
    cbOrden: TComboBox;
    Label1: TLabel;
    btProv: TSpeedButton;
    edProveedor: TEdit;
    tProv: TEdit;
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    QCheques: TADOQuery;
    dsCheques: TDataSource;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    edConc: TEdit;
    Label8: TLabel;
    edBenef: TEdit;
    QChequesBAN_NOMBRE: TIBStringField;
    QChequesCHE_NUMERO: TIntegerField;
    QChequesCHE_FECHA: TDateTimeField;
    QChequesCHE_CONCEPTO1: TIBStringField;
    QChequesCHE_CONCEPTO2: TIBStringField;
    QChequesCHE_BENEF: TIBStringField;
    QChequesCHE_MONTO: TFloatField;
    QChequesCHE_STATUS: TIBStringField;
    QChequesCHE_TIPO: TIBStringField;
    QChequesUSU_NOMBRE: TIBStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QChequesEMP_CODIGO: TIntegerField;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_MONTO: TFloatField;
    DBGrid3: TDBGrid;
    QFacturas: TADOQuery;
    QFacturasFAC_NUMERO: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_PAGO: TFloatField;
    QFacturasFAC_VENCE: TDateTimeField;
    dsFacturas: TDataSource;
    QChequesBAN_CODIGO: TIntegerField;
    btAnula: TSpeedButton;
    btImpreso: TSpeedButton;
    btTransito: TSpeedButton;
    btPagados: TSpeedButton;
    Label3: TLabel;
    btBanco: TSpeedButton;
    edBanco: TEdit;
    tBanco: TEdit;
    ckDetalle: TCheckBox;
    QDetalleBAN_CODIGO: TIntegerField;
    QDetalleCHE_NUMERO: TIntegerField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    GridCuentas: TDBGrid;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    QChequesCHE_ABONO: TFloatField;
    TabSheet3: TTabSheet;
    QChequesSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label14: TLabel;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    Label12: TLabel;
    edDesde: TEdit;
    edHasta: TEdit;
    QChequesCHE_MONTO_BANCO: TBCDField;
    TabSheet4: TTabSheet;
    QRetenciones: TADOQuery;
    QRetencionesemp_codigo: TIntegerField;
    QRetencionesret_codigo: TIntegerField;
    QRetencionesdet_nombre: TStringField;
    QRetencionesdet_porciento: TBCDField;
    QRetencionesdet_monto: TBCDField;
    QRetencionesdet_secuencia: TIntegerField;
    QRetencionesdet_cuenta: TStringField;
    QRetencionesban_codigo: TIntegerField;
    QRetencionesche_numero: TIntegerField;
    QRetencionessuc_codigo: TIntegerField;
    dsRet: TDataSource;
    Panel3: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    GridRet: TDBGrid;
    Splitter1: TSplitter;
    Label13: TLabel;
    btEmpleado: TSpeedButton;
    edEmpleado: TEdit;
    tEmp: TEdit;
    Label15: TLabel;
    edMonto1: TEdit;
    edMonto2: TEdit;
    QFacturasfac_tasa: TBCDField;
    QFacturasfac_concepto: TStringField;
    QChequesche_tasa: TBCDField;
    GridCentro: TDBGrid;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btnSubCentro: TSpeedButton;
    QCentro: TADOQuery;
    QCentrocen_codigo: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrodet_secuencia: TIntegerField;
    QCentroemp_codigo: TIntegerField;
    QCentrosub_referencia: TStringField;
    QCentrocen_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    QCentroche_numero: TIntegerField;
    QCentroban_codigo: TIntegerField;
    QCentrosuc_codigo: TIntegerField;
    dsCentro: TDataSource;
    QCentrocat_cuenta: TStringField;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    qCk: TADOQuery;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    FloatField1: TFloatField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField2: TFloatField;
    IntegerField4: TIntegerField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    mmo1: TMemo;
    lbLocSuc: TLabel;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure QChequesAfterOpen(DataSet: TDataSet);
    procedure edProveedorChange(Sender: TObject);
    procedure edUsuarioChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btProvClick(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btUsuClick(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteChange(Sender: TObject);
    procedure btClienteClick(Sender: TObject);
    procedure btBancoClick(Sender: TObject);
    procedure edBancoChange(Sender: TObject);
    procedure edBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure dsChequesDataChange(Sender: TObject; Field: TField);
    procedure QChequesAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure GridRetColEnter(Sender: TObject);
    procedure GridRetEnter(Sender: TObject);
    procedure GridRetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRetencionesAfterDelete(DataSet: TDataSet);
    procedure QRetencionesAfterPost(DataSet: TDataSet);
    procedure QRetencionesNewRecord(DataSet: TDataSet);
    procedure QRetencionesBeforePost(DataSet: TDataSet);
    procedure QRetencionesret_codigoChange(Sender: TField);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure GridCentroColEnter(Sender: TObject);
    procedure GridCentroEnter(Sender: TObject);
    procedure GridCentroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure QCentroAfterDelete(DataSet: TDataSet);
    procedure QCentroAfterPost(DataSet: TDataSet);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure QCentrocen_codigoChange(Sender: TField);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure edEmpleadoChange(Sender: TObject);
    procedure edEmpleadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEmpleadoClick(Sender: TObject);
    procedure btnSubCentroClick(Sender: TObject);
    procedure QCentrocen_referenciaChange(Sender: TField);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cliente, Prov : Integer;
    Debitos, Creditos : Double;
    Elimina, Modifica : Boolean;
    Procedure Totalizar;
  end;

var
  frmConsCheques: TfrmConsCheques;

implementation

uses CONT15, RCONT04, RCONT05, RCONT15, RCONT17, SIGMA00, SIGMA01, SIGMA08;

{$R *.dfm}

procedure TfrmConsCheques.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsCheques.FormPaint(Sender: TObject);
begin
  with frmConsCheques do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsCheques.FormCreate(Sender: TObject);
begin
  cbOrden.ItemIndex := 0;
  dtp1.Date := StartOfTheMonth(Date);
  dtp2.Date := EndOfTheMonth(Date);
end;

procedure TfrmConsCheques.btRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QCheques.Close;
  QCheques.SQL.Clear;
  QCheques.SQL.Add(qCk.SQL.GetText);
  case cbStatus.ItemIndex of
  1 : QCheques.SQL.Add('and c.che_tipo = '+#39+'SUP'+#39);
  2 : QCheques.SQL.Add('and c.che_tipo = '+#39+'CLI'+#39);
  3 : QCheques.SQL.Add('and c.che_tipo = '+#39+'EMP'+#39);
  4 : QCheques.SQL.Add('and c.che_tipo = '+#39+'GAS'+#39);
  end;
  QCheques.SQL.Add('AND C.CHE_FECHA BETWEEN :FEC1 AND :FEC2');

  if btAnula.Down then
    QCheques.SQL.Add('and c.che_status = '+#39+'ANU'+#39)
  else if btImpreso.Down then
  QCheques.SQL.Add('and c.che_impreso = '+#39+'S'+#39)
  else if btTransito.Down then
  QCheques.SQL.Add('AND C.CHE_FECPAGO > '+#39+FormatDateTime('yyyy-mm-dd',dtp2.Date)+#39)
  else if btPagados.Down then
  QCheques.SQL.Add('and c.che_status = '+#39+'PAG'+#39)
  else QCheques.SQL.Add('and c.che_status <> '+#39+'ANU'+#39);


  if trim(edBenef.Text) <> '' then
    QCheques.SQL.Add('and c.che_benef like '+#39+trim(edBenef.Text)+#39);

  if trim(edBanco.Text) <> '' then
    QCheques.SQL.Add('and c.ban_codigo = '+edBanco.Text);

  if (trim(edDesde.Text) <> '') and (trim(edHasta.Text) <> '') then
    QCheques.SQL.Add('and c.che_numero between '+edDesde.Text+' and '+edHasta.Text);

  if (trim(edMonto1.Text) <> '') and (trim(edMonto2.Text) <> '') then
    QCheques.SQL.Add('and c.che_monto_banco between '+edMonto1.Text+' and '+edMonto2.Text);

  if trim(edConc.Text) <> '' then
    QCheques.SQL.Add('and c.che_concepto1 like '+#39+trim(edConc.Text)+#39);
  if Trim(edCliente.Text) <> '' then
  begin
    QCheques.SQL.Add('and c.cli_codigo = :cli');
    QCheques.Parameters.ParamByName('cli').Value := Cliente;
  end;
  if Trim(edProveedor.Text) <> '' then
  begin
    QCheques.SQL.Add('and c.sup_codigo = :sup');
    QCheques.Parameters.ParamByName('sup').Value := Prov;
  end;
  if Trim(edUsuario.Text) <> '' then
  begin
    QCheques.SQL.Add('and c.usu_codigo = :usu');
    QCheques.Parameters.ParamByName('usu').Value := StrToInt(Trim(edUsuario.Text));
  end;

  IF Trim(edtSucLoc.Text)<>'' THEN
  QCheques.SQL.Add('and c.cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));

  QCheques.Parameters.ParamByName('EMP_CODIGO').Value := dm.vp_cia;
  QCheques.Parameters.ParamByName('SUC_CODIGO').Value := DBLookupComboBox2.KeyValue;

  QCheques.Parameters.ParamByName('FEC1').Value := FormatDateTime('yyyy-mm-dd',dtp1.Date);
  QCheques.Parameters.ParamByName('FEC2').Value := FormatDateTime('yyyy-mm-dd',dtp2.Date);


  case cbOrden.ItemIndex of
  0 : QCheques.SQL.Add('order by c.ban_codigo, c.che_numero');
  1 : QCheques.SQL.Add('order by c.che_fecha');
  2 : QCheques.SQL.Add('order by c.che_concepto1');
  3 : QCheques.SQL.Add('order by c.che_benef');
  end;
  QCentro.Close;
  QCheques.Open;
  lbCantidad.Caption := IntToStr(QCheques.RecordCount)+' Cheques';
  Screen.Cursor := crDefault;


end;

procedure TfrmConsCheques.QChequesAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active     then QDetalle.Open;
  if not QFacturas.Active    then QFacturas.Open;
  if not QCentro.Active      then QCentro.Open;
  if not QRetenciones.Active then QRetenciones.Open;
end;

procedure TfrmConsCheques.edProveedorChange(Sender: TObject);
begin
  if Trim(edProveedor.Text) = '' then tProv.Text := '';
end;

procedure TfrmConsCheques.edUsuarioChange(Sender: TObject);
begin
  if Trim(edUsuario.Text) = '' then tUsu.Text := '';
end;

procedure TfrmConsCheques.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmConsCheques.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCliente.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cli_nombre, cli_codigo from clientes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      begin
        dm.Query1.SQL.Add('and cli_codigo = :cod');
        dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edCliente.Text);
      end
      else
      begin
        dm.Query1.SQL.Add('and cli_referencia = :cod');
        dm.Query1.Parameters.ParamByName('cod').Value  := edCliente.Text;
      end;
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Open;
      tCliente.Text := dm.Query1.FieldByName('cli_nombre').AsString;
      Cliente := dm.Query1.FieldByName('cli_codigo').AsInteger;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsCheques.btProvClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sup_nombre, sup_codigo');
  Search.Query.Add('from proveedores');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Proveedores';
  Search.ResultField := 'sup_codigo';
  if Search.execute then
  begin
    edProveedor.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre, sup_codigo from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edProveedor.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;
    tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
    Prov := dm.Query1.FieldByName('sup_codigo').AsInteger;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCheques.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edProveedor.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sup_nombre, sup_codigo from proveedores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sup_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edProveedor.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Open;
      tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
      Prov := dm.Query1.FieldByName('sup_codigo').AsInteger;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsCheques.btUsuClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select usu_nombre, usu_codigo');
  Search.Query.Add('from usuarios');
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Usuarios';
  Search.ResultField := 'usu_codigo';
  if Search.execute then
  begin
    edUsuario.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select usu_nombre from usuarios');
    dm.Query1.SQL.Add('where usu_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edUsuario.Text);
    dm.Query1.Open;
    tUsu.Text := dm.Query1.FieldByName('usu_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCheques.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edUsuario.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select usu_nombre from usuarios');
      dm.Query1.SQL.Add('where usu_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edUsuario.Text);
      dm.Query1.Open;
      tUsu.Text := dm.Query1.FieldByName('usu_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsCheques.edClienteChange(Sender: TObject);
begin
  if Trim(edCliente.Text) = '' then tCliente.Text := '';
end;

procedure TfrmConsCheques.btClienteClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cli_nombre, cli_referencia, cli_codigo');
  Search.Query.Add('from clientes');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Clientes';
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    Search.ResultField := 'cli_codigo'
  else
    Search.ResultField := 'cli_referencia';
  if Search.execute then
  begin
    edCliente.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_nombre, cli_codigo from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    begin
      dm.Query1.SQL.Add('and cli_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edCliente.Text);
    end
    else
    begin
      dm.Query1.SQL.Add('and cli_referencia = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := edCliente.Text;
    end;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    tCliente.Text := dm.Query1.FieldByName('cli_nombre').AsString;
    Cliente := dm.Query1.FieldByName('cli_codigo').AsInteger;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCheques.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Bancos';
  Search.ResultField := 'ban_codigo';
  if Search.execute then
  begin
    edBanco.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :cod');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCheques.edBancoChange(Sender: TObject);
begin
  if Trim(edBanco.Text) = '' then tBanco.Text := '';
end;

procedure TfrmConsCheques.edBancoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edBanco.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :cod');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsCheques.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRepListaCheques, RepListaCheques);
  RepListaCheques.lbFecha.Caption := 'Del '+DateToStr(dtp1.Date)+' Al '+
                                     DateToStr(dtp2.Date);

  case cbStatus.ItemIndex of
  1 : RepListaCheques.QBancos.SQL.Add('and c.che_tipo = '+#39+'SUP'+#39);
  2 : RepListaCheques.QBancos.SQL.Add('and c.che_tipo = '+#39+'CLI'+#39);
  3 : RepListaCheques.QBancos.SQL.Add('and c.che_tipo = '+#39+'EMP'+#39);
  4 : RepListaCheques.QBancos.SQL.Add('and c.che_tipo = '+#39+'GAS'+#39);
  end;
  RepListaCheques.QBancos.SQL.Add('AND C.CHE_FECHA BETWEEN :FEC1 AND :FEC2');

  if btAnula.Down then
    RepListaCheques.QBancos.SQL.Add('and c.che_status = '+#39+'ANU'+#39)
  else if btImpreso.Down then
    RepListaCheques.QBancos.SQL.Add('and c.che_impreso = '+#39+'S'+#39)
  else if btTransito.Down then
    RepListaCheques.QBancos.SQL.Add('AND C.CHE_FECPAGO > '+#39+FormatDateTime('yyyy-mm-dd',dtp2.Date)+#39)
  else if btPagados.Down then
    RepListaCheques.QBancos.SQL.Add('and c.che_status = '+#39+'PAG'+#39);

  if trim(edBenef.Text) <> '' then
    RepListaCheques.QBancos.SQL.Add('and c.che_benef like '+#39+trim(edBenef.Text)+#39);

  if trim(edBanco.Text) <> '' then
    RepListaCheques.QBancos.SQL.Add('and c.ban_codigo = '+edBanco.Text);

  if (trim(edMonto1.Text) <> '') and (trim(edMonto2.Text) <> '') then
    RepListaCheques.QBancos.SQL.Add('and c.che_monto_banco between '+edMonto1.Text+' and '+edMonto2.Text);

  if (trim(edDesde.Text) <> '') and (trim(edHasta.Text) <> '') then
    RepListaCheques.QBancos.SQL.Add('and c.che_numero between '+edDesde.Text+' and '+edHasta.Text);

  if trim(edConc.Text) <> '' then
    RepListaCheques.QBancos.SQL.Add('and c.che_concepto1 like '+#39+trim(edConc.Text)+#39);
  if Trim(edCliente.Text) <> '' then
  begin
    RepListaCheques.QBancos.SQL.Add('and c.cli_codigo = :cli');
    RepListaCheques.QBancos.Parameters.ParamByName('cli').Value := Cliente;
  end;
  if Trim(edProveedor.Text) <> '' then
  begin
    RepListaCheques.QBancos.SQL.Add('and c.sup_codigo = :sup');
    RepListaCheques.QBancos.Parameters.ParamByName('sup').Value := Prov;
  end;
  if Trim(edUsuario.Text) <> '' then
  begin
    RepListaCheques.QBancos.SQL.Add('and c.usu_codigo = :usu');
    RepListaCheques.QBancos.Parameters.ParamByName('usu').Value := StrToInt(Trim(edUsuario.Text));
  end;

 

  if Trim(edCliente.Text) <> '' then
    RepListaCheques.QBancos.Parameters.ParamByName('cli').Value := Cliente;

  if Trim(edProveedor.Text) <> '' then
    RepListaCheques.QBancos.Parameters.ParamByName('sup').Value := Prov;

  if Trim(edUsuario.Text) <> '' then
    RepListaCheques.QBancos.Parameters.ParamByName('usu').Value := StrToInt(Trim(edUsuario.Text));

  RepListaCheques.QBancos.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RepListaCheques.QBancos.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RepListaCheques.QBancos.Parameters.ParamByName('fec1').Value := FormatDateTime('yyyy-mm-dd',dtp1.Date);
  RepListaCheques.QBancos.Parameters.ParamByName('fec2').Value := FormatDateTime('yyyy-mm-dd',dtp2.Date);
  RepListaCheques.QBancos.Open;

  RepListaCheques.QCheques.Close;
  RepListaCheques.QCheques.SQL.Clear;
  RepListaCheques.QCheques.SQL.Add(qCk.SQL.GetText);

  case cbStatus.ItemIndex of
  1 : RepListaCheques.QCheques.SQL.Add('and c.che_tipo = '+#39+'SUP'+#39);
  2 : RepListaCheques.QCheques.SQL.Add('and c.che_tipo = '+#39+'CLI'+#39);
  3 : RepListaCheques.QCheques.SQL.Add('and c.che_tipo = '+#39+'EMP'+#39);
  4 : RepListaCheques.QCheques.SQL.Add('and c.che_tipo = '+#39+'GAS'+#39);
  end;
  RepListaCheques.QCheques.SQL.Add('AND C.CHE_FECHA BETWEEN :FEC1 AND :FEC2');

  if btAnula.Down then
    RepListaCheques.QCheques.SQL.Add('and c.che_status = '+#39+'ANU'+#39)
  else if btImpreso.Down then
    RepListaCheques.QCheques.SQL.Add('and c.che_impreso = '+#39+'S'+#39)
  else if btTransito.Down then
    RepListaCheques.QCheques.SQL.Add('AND C.CHE_FECPAGO > '+#39+FormatDateTime('yyyy-mm-dd',dtp2.Date)+#39)
  else if btPagados.Down then
    RepListaCheques.QCheques.SQL.Add('and c.che_status = '+#39+'PAG'+#39)
  else RepListaCheques.QCheques.SQL.Add('and c.che_status <> '+#39+'ANU'+#39);


  if trim(edBenef.Text) <> '' then
    RepListaCheques.QCheques.SQL.Add('and c.che_benef like '+#39+trim(edBenef.Text)+#39);

  if trim(edBanco.Text) <> '' then
    RepListaCheques.QCheques.SQL.Add('and c.ban_codigo = '+edBanco.Text);

  if (trim(edDesde.Text) <> '') and (trim(edHasta.Text) <> '') then
    RepListaCheques.QCheques.SQL.Add('and c.che_numero between '+edDesde.Text+' and '+edHasta.Text);

  if (trim(edMonto1.Text) <> '') and (trim(edMonto2.Text) <> '') then
    RepListaCheques.QCheques.SQL.Add('and c.che_monto_banco between '+edMonto1.Text+' and '+edMonto2.Text);

  if trim(edConc.Text) <> '' then
    RepListaCheques.QCheques.SQL.Add('and c.che_concepto1 like '+#39+trim(edConc.Text)+#39);
  if Trim(edCliente.Text) <> '' then
  begin
    RepListaCheques.QCheques.SQL.Add('and c.cli_codigo = :cli');
    RepListaCheques.QCheques.Parameters.ParamByName('cli').DataType := ftInteger;
    RepListaCheques.QCheques.Parameters.ParamByName('cli').Value := Cliente;
  end;
  if Trim(edProveedor.Text) <> '' then
  begin
    RepListaCheques.QCheques.SQL.Add('and c.sup_codigo = :sup');
    RepListaCheques.QCheques.Parameters.ParamByName('sup').DataType := ftInteger;
    RepListaCheques.QCheques.Parameters.ParamByName('sup').Value := Prov;
  end;
  if Trim(edUsuario.Text) <> '' then
  begin
    RepListaCheques.QCheques.SQL.Add('and c.usu_codigo = :usu');
    RepListaCheques.QCheques.Parameters.ParamByName('usu').DataType := ftInteger;
    RepListaCheques.QCheques.Parameters.ParamByName('usu').Value := StrToInt(Trim(edUsuario.Text));
  end;
  RepListaCheques.QCheques.Parameters.ParamByName('EMP_CODIGO').DataType := ftInteger;
  RepListaCheques.QCheques.Parameters.ParamByName('SUC_CODIGO').DataType := ftInteger;
  RepListaCheques.QCheques.Parameters.ParamByName('FEC1').DataType := ftDate;
  RepListaCheques.QCheques.Parameters.ParamByName('FEC1').Value := FormatDateTime('yyyy-mm-dd',dtp1.Date);
  RepListaCheques.QCheques.Parameters.ParamByName('FEC2').DataType := ftDate;
  RepListaCheques.QCheques.Parameters.ParamByName('FEC2').Value := FormatDateTime('yyyy-mm-dd',dtp2.Date);


  case cbOrden.ItemIndex of
  0 : RepListaCheques.QCheques.SQL.Add('order by c.ban_codigo, c.che_numero');
  1 : RepListaCheques.QCheques.SQL.Add('order by c.che_fecha');
  2 : RepListaCheques.QCheques.SQL.Add('order by c.che_concepto1');
  3 : RepListaCheques.QCheques.SQL.Add('order by c.che_benef');
  end;
  RepListaCheques.QCheques.Open;



  if ckDetalle.Checked then
     RepListaCheques.QDetalle.Open;
  case cbStatus.ItemIndex of
  0 : RepListaCheques.lbOpcion.Caption := ' ';
  1 : RepListaCheques.lbOpcion.Caption := 'CxP Proveedores';
  2 : RepListaCheques.lbOpcion.Caption := 'CxC Clientes';
  3 : RepListaCheques.lbOpcion.Caption := 'CxC Empleados';
  4 : RepListaCheques.lbOpcion.Caption := 'Otros';
  end;
  if btAnula.Down then
     RepListaCheques.lbOpcion.Caption := RepListaCheques.lbOpcion.Caption+' Anulados';
  if btImpreso.Down then
     RepListaCheques.lbOpcion.Caption := RepListaCheques.lbOpcion.Caption+' Impresos';
  if btTransito.Down then
     RepListaCheques.lbOpcion.Caption := RepListaCheques.lbOpcion.Caption+' En Transito';
  if btPagados.Down then
     RepListaCheques.lbOpcion.Caption := RepListaCheques.lbOpcion.Caption+' Pagados';
  RepListaCheques.PrinterSetup;
  RepListaCheques.Preview;
  RepListaCheques.Destroy;

end;

procedure TfrmConsCheques.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsCheques.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsCheques.GridCuentasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 2 then
  begin
    if key = 68 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 3;
    end
    else if key = 67 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 3;
    end;
  end;
  if key = vk_f5 then btBuscaCtaClick(Self);
  if key = vk_f4 then btEliminaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 3 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 0;
       QDetalle.Append;
     end;
end;

procedure TfrmConsCheques.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmConsCheques.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsCheques.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsCheques.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsCheques.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := DM.QEmpresasEMP_CODIGO.Value;
  QDetalleBAN_CODIGO.Value := QChequesBAN_CODIGO.Value;
  QDetalleCHE_NUMERO.Value := QChequesCHE_NUMERO.Value;
  QDetalleSUC_CODIGO.Value := QChequesSUC_CODIGO.Value;
end;

procedure TfrmConsCheques.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from det_cheque');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.SQL.Add('and che_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QChequesCHE_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsCheques.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value  := QDetalleCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QDetalle.Edit;
      QDetalleCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsCheques.Totalizar;
var
  Punt : TBookMark;
begin
  if not QDetalle.Active then QDetalle.Open;
  Debitos  := 0;
  Creditos := 0;
  Punt := QDetalle.GetBookmark;
  QDetalle.DisableControls;
  QDetalle.First;
  while not QDetalle.Eof do
  begin
    if QDetalleDET_ORIGEN.Value = 'Debito' then
      Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]))
    else
      Creditos := Creditos + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]));
    QDetalle.Next;
  end;
  QDetalle.GotoBookmark(Punt);
  QDetalle.EnableControls;
  lbCR.Caption  := Format('%n',[Creditos]);
  lbDB.Caption  := Format('%n',[Debitos]);
  lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmConsCheques.dsChequesDataChange(Sender: TObject;
  Field: TField);
begin
  Totalizar;
end;

procedure TfrmConsCheques.QChequesAfterScroll(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmConsCheques.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsCheques.GridRetColEnter(Sender: TObject);
begin
  if GridRet.SelectedIndex = 1 then
    GridRet.SelectedIndex := GridRet.SelectedIndex + 1;
end;

procedure TfrmConsCheques.GridRetEnter(Sender: TObject);
begin
  GridRet.SelectedIndex := 0;
end;

procedure TfrmConsCheques.GridRetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridRet.SelectedIndex <> 2 then
        GridRet.SelectedIndex := GridRet.SelectedIndex + 1
     else
     begin
       GridRet.SelectedIndex := 0;
       QRetenciones.Append;
     end;
end;

procedure TfrmConsCheques.QRetencionesAfterDelete(DataSet: TDataSet);
begin
  QRetenciones.UpdateBatch;
end;

procedure TfrmConsCheques.QRetencionesAfterPost(DataSet: TDataSet);
begin
  QRetenciones.UpdateBatch;
end;

procedure TfrmConsCheques.QRetencionesNewRecord(DataSet: TDataSet);
begin
  QRetencionesche_numero.Value := QChequesCHE_NUMERO.Value;
  QRetencionesemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QRetencionesban_codigo.Value := QChequesBAN_CODIGO.Value;
  QRetencionessuc_codigo.Value := QChequesSUC_CODIGO.Value;
end;

procedure TfrmConsCheques.QRetencionesBeforePost(DataSet: TDataSet);
begin
  if QRetencionesdet_nombre.IsNull then QRetenciones.Cancel;
  if QRetenciones.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from ChequeRetencion');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.SQL.Add('and che_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QChequesCHE_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
    dm.Query1.Open;
    QRetencionesdet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsCheques.QRetencionesret_codigoChange(Sender: TField);
begin
  if not QRetencionesret_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ret_nombre, ret_porciento, cat_cuenta from retenciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ret_codigo = :ret');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ret').Value  := QRetencionesret_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA RETENCION NO EXISTE',mtError,[mbok],0);
      QRetencionesret_codigo.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QRetenciones.Edit;
      QRetencionesdet_nombre.Value := dm.Query1.FieldByName('ret_nombre').AsString;
      QRetencionesdet_cuenta.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
      if dm.Query1.FieldByName('ret_porciento').AsFloat > 0 then
        QRetencionesdet_monto.Value := (QChequesCHE_MONTO.Value * dm.Query1.FieldByName('ret_porciento').AsFloat)/100;

      GridRet.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsCheques.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTA RETENCION?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QRetenciones.Delete
  end;
  GridRet.setfocus;
end;

procedure TfrmConsCheques.SpeedButton6Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ret_nombre, ret_codigo');
  Search.Query.Add('from retenciones');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'ret_codigo';
  Search.Title := 'Retenciones';
  if Search.execute then
  begin
    QRetenciones.Edit;
    QRetencionesret_codigo.Value := StrToInt(Search.ValueField);
  end;
end;

procedure TfrmConsCheques.GridCentroColEnter(Sender: TObject);
begin
  if GridCentro.SelectedIndex = 1 then
    GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1;
end;

procedure TfrmConsCheques.GridCentroEnter(Sender: TObject);
begin
  GridCentro.SelectedIndex := 0;
end;

procedure TfrmConsCheques.GridCentroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCentro.SelectedIndex <> 2 then
        GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1
     else
     begin
       GridCentro.SelectedIndex := 0;
       QCentro.Append;
     end;
end;

procedure TfrmConsCheques.SpeedButton3Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTE CENTRO?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCentro.Delete
  end;
  GridCentro.setfocus;
end;

procedure TfrmConsCheques.SpeedButton4Click(Sender: TObject);
var
  a : Integer;
begin
{  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cen_nombre, cen_codigo');
  Search.Query.Add('from centrocostos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Descripci�n');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cen_codigo';
  Search.Title := 'Centros de Costo';
  if Search.execute then
  begin
    QCentro.Edit;
    QCentrocen_referencia.Value := Search.ValueField;
  end;}
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value := QDetalleCAT_CUENTA.AsString;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cat_maneja_centro').AsString <> 'S' then
  begin
    MessageDlg('Esta cuenta no acepta Centros de Costo', mtError, [mbyes], 0);
    GridCuentas.SetFocus;
  end
  else
  begin
    Application.CreateForm(tfrmCentrosXCuenta, frmCentrosXCuenta);
    frmCentrosXCuenta.lbcuenta.Caption := QDetalleCAT_CUENTA.AsString+': '+QDetalleCAT_NOMBRE.AsString;
    frmCentrosXCuenta.cta := QDetalleCAT_CUENTA.AsString;
    frmCentrosXCuenta.vMontototal := QDetalleDET_MONTO.Value;
    //Grabando registro en la pantalla
    QCentro.DisableControls;
    QCentro.First;
    while not QCentro.Eof do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
      begin
        frmCentrosXCuenta.QCentro.Append;
        frmCentrosXCuenta.QCentrocen_nombre.Value := QCentrocen_nombre.Value;
        frmCentrosXCuenta.QCentrodet_monto.Value  := QCentrodet_monto.Value;
        frmCentrosXCuenta.QCentrocen_referencia.Value := QCentrocen_referencia.Value;
        frmCentrosXCuenta.QCentrosub_referencia.Value := QCentrosub_referencia.Value;
        frmCentrosXCuenta.QCentrocen_codigo.Value     := QCentrocen_codigo.Value;
        frmCentrosXCuenta.QCentrosub_secuencia.Value  := QCentrosub_secuencia.Value;
        frmCentrosXCuenta.QCentro.Post;
      end;

      QCentro.Next;
    end;
    QCentro.EnableControls;  

    frmCentrosXCuenta.ShowModal;

    //eliminando registros de la cuenta selccionada
    QCentro.DisableControls;
    QCentro.First;
    a := QCentro.RecordCount;
    while a > 0 do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
        QCentro.Delete
      else
        QCentro.Next;

      a := a - 1;
    end;
    QCentro.EnableControls;

    //insertando registros de la cuenta selccionada
    frmCentrosXCuenta.QCentro.DisableControls;
    frmCentrosXCuenta.QCentro.First;
    while not frmCentrosXCuenta.QCentro.Eof do
    begin
      QCentro.Append;
      QCentrocat_cuenta.Value := QDetalleCAT_CUENTA.AsString;
      QCentrocen_nombre.Value := frmCentrosXCuenta.QCentrocen_nombre.Value;
      QCentrodet_monto.Value  := frmCentrosXCuenta.QCentrodet_monto.Value;
      QCentrocen_referencia.Value := frmCentrosXCuenta.QCentrocen_referencia.Value;
      QCentrosub_referencia.Value := frmCentrosXCuenta.QCentrosub_referencia.Value;
      QCentrocen_codigo.Value     := frmCentrosXCuenta.QCentrocen_codigo.Value;
      QCentrosub_secuencia.Value  := frmCentrosXCuenta.QCentrosub_secuencia.Value;
      QCentro.Post;

      frmCentrosXCuenta.QCentro.Next;
    end;
    frmCentrosXCuenta.QCentro.First;
    frmCentrosXCuenta.QCentro.EnableControls;
    frmCentrosXCuenta.Release;
  end;
end;

procedure TfrmConsCheques.QCentroAfterDelete(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmConsCheques.QCentroAfterPost(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmConsCheques.QCentroBeforePost(DataSet: TDataSet);
begin
  if QCentrocen_nombre.IsNull then QCentro.Cancel;
  if QCentro.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from ChequeCentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.SQL.Add('and che_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QChequesCHE_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QChequesSUC_CODIGO.Value;
    dm.Query1.Open;
    QCentrodet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsCheques.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentroche_numero.Value := QChequesCHE_NUMERO.Value;
  QCentroemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QCentroban_codigo.Value := QChequesBAN_CODIGO.Value;
  QCentrosuc_codigo.Value := QChequesSUC_CODIGO.Value;
  QCentrocat_cuenta.Value := '';
end;

procedure TfrmConsCheques.QCentrocen_codigoChange(Sender: TField);
begin
  if not QCentrocen_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre from centrocostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_codigo = :cen');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cen').Value  := QCentrocen_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTE CENTRO DE COSTO NO EXISTE',mtError,[mbok],0);
      QCentrocen_codigo.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QCentro.Edit;
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      GridCentro.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsCheques.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsCheques.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsCheques.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

procedure TfrmConsCheques.edEmpleadoChange(Sender: TObject);
begin
  if Trim(edEmpleado.Text) = '' then tEmp.Text := '';
end;

procedure TfrmConsCheques.edEmpleadoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edEmpleado.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select emp_nombres, emp_apellido_paterno, cat_cuenta');
      dm.Query1.SQL.Add('from empleados');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and emp_numero = :num');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('num').Value := StrToInt(edEmpleado.Text);
      dm.Query1.Open;
      tEmp.Text := dm.Query1.FieldByName('emp_nombres').AsString + ' ' +dm.Query1.FieldByName('emp_apellido_paterno').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsCheques.btEmpleadoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select emp_nombres, emp_apellido_paterno, emp_cedula, emp_numero');
  Search.Query.Add('from empleados');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and emp_status = '+QuotedStr('ACT'));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Apellido');
  Search.AliasFields.Add('C�dula');
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'emp_numero';
  Search.Title := 'Empleados';
  if Search.execute then
  begin
    edEmpleado.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select emp_nombres, emp_apellido_paterno, cat_cuenta');
    dm.Query1.SQL.Add('from empleados');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := StrToInt(edEmpleado.Text);
    dm.Query1.Open;
    tEmp.Text := dm.Query1.FieldByName('emp_nombres').AsString + ' ' +dm.Query1.FieldByName('emp_apellido_paterno').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCheques.btnSubCentroClick(Sender: TObject);
begin
Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sub_nombre, sub_referencia');
  Search.Query.Add('from CentroCostos_Hijos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cen_codigo = '+IntToStr(QCentrocen_codigo.Value));
  Search.AliasFields.Add('SubCentro');
  Search.AliasFields.Add('ID');
  Search.ResultField := 'sub_referencia';
  Search.Title := 'Sub-Centro de Costo';
  if Search.execute then
  begin
    QCentro.Edit;
    QCentrosub_referencia.Value := Search.ValueField;
  end;


end;

procedure TfrmConsCheques.QCentrocen_referenciaChange(Sender: TField);
begin
if not QCentrocen_referencia.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre, cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrocen_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      QCentrocen_codigo.Value := dm.Query1.FieldByName('cen_codigo').AsInteger;
    end;
  end;

end;

procedure TfrmConsCheques.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
btRefreshClick(Sender);
end;

procedure TfrmConsCheques.edtSucLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edtSucLoc.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsCheques.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    edtSucLoc.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCheques.FormShow(Sender: TObject);
begin
if dm.QParametrospar_banca_apuestas.Value = True then begin
lbLocSuc.Visible := True;
edtSucLoc.Visible := True;
btLocalidad.Visible := True;
TSucLoc.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
edtSucLoc.Visible := False;
btLocalidad.Visible := False;
TSucLoc.Visible := False;
end;
end;

procedure TfrmConsCheques.SpeedButton1Click(Sender: TObject);
begin
if MessageDlg('DESEAS ELIMINAR EL CENTRO DE COSTO'+char(13)+
QCentrocen_nombre.Text+char(13)+
'POR UN MONTO DE '+FormatCurr('#,0.00',QCentrodet_monto.Value)+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes THEN BEGIN
WITH DM.adoMultiUso DO BEGIN
Close;
SQL.Clear;
SQL.Add('DELETE ChequeCentroCostos');
SQL.Add('where emp_codigo = :emp and suc_codigo = :suc and ban_codigo = :ban');
SQL.Add('and che_numero =  :che and det_secuencia = :sec');
Parameters.ParamByName('emp').DataType := ftInteger;
Parameters.ParamByName('suc').DataType := ftInteger;
Parameters.ParamByName('ban').DataType := ftInteger;
Parameters.ParamByName('che').DataType := ftInteger;
Parameters.ParamByName('sec').DataType := ftInteger;
Parameters.ParamByName('emp').Value := QCentroemp_codigo.Value;
Parameters.ParamByName('suc').Value := QCentrosuc_codigo.Value;
Parameters.ParamByName('ban').Value := QCentroban_codigo.Value;
Parameters.ParamByName('che').Value := QCentroche_numero.Value;
Parameters.ParamByName('sec').Value := QCentrodet_secuencia.Value;
ExecSQL;
QCentro.Close;
QCentro.Open;
end;
end;
end;

end.
