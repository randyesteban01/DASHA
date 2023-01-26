unit CONT42;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DateUtils, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsCargosBanco = class(TForm)
    Panel1: TPanel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    Panel2: TPanel;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
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
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    QCargos: TADOQuery;
    dsCargos: TDataSource;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    edConc: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    btAnula: TSpeedButton;
    btTransito: TSpeedButton;
    btPagados: TSpeedButton;
    Label3: TLabel;
    btBanco: TSpeedButton;
    edBanco: TEdit;
    tBanco: TEdit;
    ckDetalle: TCheckBox;
    GridCuentas: TDBGrid;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    QCargosBAN_NOMBRE: TIBStringField;
    QCargosCAR_NUMERO: TIntegerField;
    QCargosCAR_FECHA: TDateTimeField;
    QCargosCAR_CONCEPTO1: TIBStringField;
    QCargosCAR_CONCEPTO2: TIBStringField;
    QCargosCAR_MONTO: TFloatField;
    QCargosCAR_STATUS: TIBStringField;
    QCargosCAR_TIPO: TIBStringField;
    QCargosUSU_NOMBRE: TIBStringField;
    QCargosEMP_CODIGO: TIntegerField;
    QCargosBAN_CODIGO: TIntegerField;
    QCargosCAR_ANO: TIntegerField;
    QCargosCAR_MES: TIntegerField;
    QDetalleBAN_CODIGO: TIntegerField;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleCAR_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleCAR_ANO: TIntegerField;
    QDetalleCAR_MES: TIntegerField;
    QCargosCAR_FORMA: TIBStringField;
    QDetalleDET_ORIGEN: TIBStringField;
    QCargosCAR_ABONO: TFloatField;
    QCargosSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QCargosCLI_NOMBRE: TStringField;
    QCargosREC_NUMERO: TIntegerField;
    QCargosVEN_NOMBRE: TStringField;
    QCargosCAR_MONTO_BANCO: TBCDField;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    QFacturas: TADOQuery;
    QFacturasemp_codigo: TIntegerField;
    QFacturassuc_codigo: TIntegerField;
    QFacturasban_codigo: TIntegerField;
    QFacturascar_ano: TIntegerField;
    QFacturascar_mes: TIntegerField;
    QFacturascar_numero: TIntegerField;
    QFacturasfac_secuencia: TIntegerField;
    QFacturassup_codigo: TIntegerField;
    QFacturasfac_numero: TStringField;
    QFacturasfac_saldo: TBCDField;
    QFacturasfac_abono: TBCDField;
    QFacturasfac_fecha: TDateTimeField;
    QFacturasfac_vence: TDateTimeField;
    QFacturasfac_total: TBCDField;
    QFacturasfac_pago: TBCDField;
    QFacturasfac_descuento: TBCDField;
    QFacturasfac_itbis: TBCDField;
    QFacturasfac_retencion: TBCDField;
    dsFacturas: TDataSource;
    Splitter1: TSplitter;
    QCargosSUP_NOMBRE: TStringField;
    Label1: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    QCargoscar_ncf: TStringField;
    TabSheet3: TTabSheet;
    QCargoscar_tasa: TBCDField;
    QFacturasfac_tasa: TBCDField;
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
    dsCentro: TDataSource;
    QCentrocar_numero: TIntegerField;
    QCentroban_codigo: TIntegerField;
    QCentrosuc_codigo: TIntegerField;
    QCentrocar_ano: TIntegerField;
    QCentrocar_mes: TIntegerField;
    lbLocSuc: TLabel;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    btnReimpresion: TBitBtn;
    QCargosCAR_BENEF: TStringField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure QCargosAfterOpen(DataSet: TDataSet);
    procedure edUsuarioChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
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
    procedure dsCargosDataChange(Sender: TObject; Field: TField);
    procedure QCargosAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure GridCentroColEnter(Sender: TObject);
    procedure GridCentroEnter(Sender: TObject);
    procedure GridCentroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QCentroAfterDelete(DataSet: TDataSet);
    procedure QCentroAfterPost(DataSet: TDataSet);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure QCentrocen_codigoChange(Sender: TField);
    procedure QFacturasAfterPost(DataSet: TDataSet);
    procedure btnSubCentroClick(Sender: TObject);
    procedure QCentrocen_referenciaChange(Sender: TField);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnReimpresionClick(Sender: TObject);
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
  frmConsCargosBanco: TfrmConsCargosBanco;

implementation

uses CONT15, RCONT19, SIGMA00, SIGMA01, RCONT34, SIGMA08;

{$R *.dfm}

procedure TfrmConsCargosBanco.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsCargosBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsCargosBanco.FormPaint(Sender: TObject);
begin
  with frmConsCargosBanco do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsCargosBanco.FormCreate(Sender: TObject);
begin
  Memo1.Lines := QCargos.SQL;
  cbOrden.ItemIndex := 0;
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);
end;

procedure TfrmConsCargosBanco.btRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QCargos.Close;
  QCargos.SQL.Clear;
  QCargos.SQL := Memo1.Lines;
  case cbStatus.ItemIndex of
  1 : QCargos.SQL.Add('and c.car_tipo = '+#39+'CLI'+#39);
  2 : QCargos.SQL.Add('and c.car_tipo = '+#39+'SUP'+#39);
  3 : QCargos.SQL.Add('and c.car_tipo = '+#39+'OTR'+#39);
  end;
  if btAnula.Down then
    QCargos.SQL.Add('and c.car_status = '+#39+'ANU'+#39)
  else if btTransito.Down then
    QCargos.SQL.Add('and c.car_conciliado = '+#39+'N'+#39)
  else if btPagados.Down then
    QCargos.SQL.Add('and c.car_status = '+#39+'APL'+#39);
  if trim(edConc.Text) <> '' then
    QCargos.SQL.Add('and c.car_concepto1 like '+#39+trim(edConc.Text)+#39);

  if Trim(edCliente.Text) <> '' then
    QCargos.SQL.Add('and c.cli_codigo = '+edCliente.Text);

  if Trim(edProveedor.Text) <> '' then
    QCargos.SQL.Add('and c.sup_codigo = '+edProveedor.Text);

  if Trim(edUsuario.Text) <> '' then
    QCargos.SQL.Add('and c.usu_codigo = '+edUsuario.Text);

  if trim(edBanco.Text) <> '' then
    QCargos.SQL.Add('and c.ban_codigo = '+edBanco.Text);

  IF Trim(edtSucLoc.Text)<>'' THEN
    QCargos.SQL.Add('and c.cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));


  QCargos.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
  QCargos.Parameters.ParamByName('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  QCargos.Parameters.ParamByName('fec1').Value     := Fecha1.Date;
  QCargos.Parameters.ParamByName('fec2').Value     := Fecha2.Date;
  case cbOrden.ItemIndex of
  0 : QCargos.SQL.Add('order by c.ban_codigo, c.car_ano, c.car_mes, c.car_numero');
  1 : QCargos.SQL.Add('order by c.car_fecha');
  2 : QCargos.SQL.Add('order by c.car_concepto1');
  end;
  QCargos.Open;
  lbCantidad.Caption := IntToStr(QCargos.RecordCount)+' Cargos Bancarios';
  Screen.Cursor := crDefault;
end;

procedure TfrmConsCargosBanco.QCargosAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active  then QDetalle.Open;
  if not QFacturas.Active then QFacturas.Open;
  if not QCentro.Active   then QCentro.Open;
end;

procedure TfrmConsCargosBanco.edUsuarioChange(Sender: TObject);
begin
  if Trim(edUsuario.Text) = '' then tUsu.Text := '';
end;

procedure TfrmConsCargosBanco.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmConsCargosBanco.edClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsCargosBanco.btUsuClick(Sender: TObject);
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

procedure TfrmConsCargosBanco.edUsuarioKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsCargosBanco.edClienteChange(Sender: TObject);
begin
  if Trim(edCliente.Text) = '' then tCliente.Text := '';
end;

procedure TfrmConsCargosBanco.btClienteClick(Sender: TObject);
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

procedure TfrmConsCargosBanco.btBancoClick(Sender: TObject);
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
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and ban_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCargosBanco.edBancoChange(Sender: TObject);
begin
  if Trim(edBanco.Text) = '' then tBanco.Text := '';
end;

procedure TfrmConsCargosBanco.edBancoKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsCargosBanco.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRepListaCargosBanco, RepListaCargosBanco);
  RepListaCargosBanco.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+
                                     DateToStr(Fecha2.Date);

  case cbStatus.ItemIndex of
  1 : RepListaCargosBanco.QBancos.SQL.Add('and c.car_tipo = '+#39+'CLI'+#39);
  2 : RepListaCargosBanco.QCargos.SQL.Add('and c.car_tipo = '+#39+'SUP'+#39);
  3 : RepListaCargosBanco.QCargos.SQL.Add('and c.car_tipo = '+#39+'OTR'+#39);
  end;
  if btAnula.Down then
    RepListaCargosBanco.QBancos.SQL.Add('and c.car_status = '+#39+'ANU'+#39)
  else if btTransito.Down then
    RepListaCargosBanco.QBancos.SQL.Add('and c.car_conciliado = '+#39+'N'+#39)
  else if btPagados.Down then
    RepListaCargosBanco.QBancos.SQL.Add('and c.car_status = '+#39+'APL'+#39);
  if trim(edConc.Text) <> '' then
    RepListaCargosBanco.QBancos.SQL.Add('and c.car_concepto1 like '+#39+trim(edConc.Text)+#39);

  if Trim(edCliente.Text) <> '' then
    RepListaCargosBanco.QCargos.SQL.Add('and c.cli_codigo = '+edCliente.Text);

  if Trim(edProveedor.Text) <> '' then
    RepListaCargosBanco.QCargos.SQL.Add('and c.sup_codigo = '+edProveedor.Text);

  if Trim(edUsuario.Text) <> '' then
    RepListaCargosBanco.QCargos.SQL.Add('and c.usu_codigo = '+edUsuario.Text);

  if trim(edBanco.Text) <> '' then
    RepListaCargosBanco.QBancos.SQL.Add('and c.ban_codigo = '+edBanco.Text);


  RepListaCargosBanco.QBancos.SQL.Add('group by  B.BAN_NOMBRE, C.BAN_CODIGO, C.EMP_CODIGO, C.SUC_CODIGO');
  case cbOrden.ItemIndex of
  0 : RepListaCargosBanco.QCargos.SQL.Add('group by c.car_ano, c.car_mes, c.car_numero');
  1 : RepListaCargosBanco.QCargos.SQL.Add('group by c.car_fecha asc');
  2 : RepListaCargosBanco.QCargos.SQL.Add('group by c.car_concepto1');
  end;


  case cbOrden.ItemIndex of
  0 : RepListaCargosBanco.QCargos.SQL.Add('order by c.ban_codigo, c.car_ano, c.car_mes, c.car_numero');
  1 : RepListaCargosBanco.QCargos.SQL.Add('order by c.car_fecha asc');
  2 : RepListaCargosBanco.QCargos.SQL.Add('order by c.car_concepto1');
  end;


  RepListaCargosBanco.QBancos.Parameters.ParamByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
  RepListaCargosBanco.QBancos.Parameters.ParamByName('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  RepListaCargosBanco.QBancos.Parameters.ParamByName('fec1').Value     := Fecha1.Date;
  RepListaCargosBanco.QBancos.Parameters.ParamByName('fec2').Value     := Fecha2.Date;

  RepListaCargosBanco.QBancos.Open;

  RepListaCargosBanco.QCargos.SQL := QCargos.SQL;
  if Trim(edCliente.Text) <> '' then
    RepListaCargosBanco.QCargos.Parameters.ParamByName('cli').Value := Cliente;
  if Trim(edUsuario.Text) <> '' then
    RepListaCargosBanco.QCargos.Parameters.ParamByName('usu').Value := StrToInt(Trim(edUsuario.Text));

  RepListaCargosBanco.QCargos.SQL.Delete(RepListaCargosBanco.QCargos.SQL.Count-1);
  RepListaCargosBanco.QCargos.SQL.Add('and c.ban_codigo = :ban_codigo');

  case cbOrden.ItemIndex of
  0 : RepListaCargosBanco.QCargos.SQL.Add('order by c.ban_codigo, c.car_ano, c.car_mes, c.car_numero');
  1 : RepListaCargosBanco.QCargos.SQL.Add('order by c.car_fecha asc');
  2 : RepListaCargosBanco.QCargos.SQL.Add('order by c.car_concepto1');
  end;

  RepListaCargosBanco.QCargos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepListaCargosBanco.QCargos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepListaCargosBanco.QCargos.Open;
  if ckDetalle.Checked then
     RepListaCargosBanco.QDetalle.Open;
  case cbStatus.ItemIndex of
  0 : RepListaCargosBanco.lbOpcion.Caption := ' ';
  1 : RepListaCargosBanco.lbOpcion.Caption := 'CxC Clientes';
  2 : RepListaCargosBanco.lbOpcion.Caption := 'Otros';
  end;
  if btAnula.Down then
     RepListaCargosBanco.lbOpcion.Caption := RepListaCargosBanco.lbOpcion.Caption+' Anulados';
  if btTransito.Down then
     RepListaCargosBanco.lbOpcion.Caption := RepListaCargosBanco.lbOpcion.Caption+' En Transito';
  if btPagados.Down then
     RepListaCargosBanco.lbOpcion.Caption := RepListaCargosBanco.lbOpcion.Caption+' Pagados';
  RepListaCargosBanco.PrinterSetup;
  RepListaCargosBanco.Preview;
  RepListaCargosBanco.Destroy;
end;

procedure TfrmConsCargosBanco.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsCargosBanco.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsCargosBanco.GridCuentasKeyDown(Sender: TObject;
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

procedure TfrmConsCargosBanco.btBuscaCtaClick(Sender: TObject);
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

procedure TfrmConsCargosBanco.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsCargosBanco.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsCargosBanco.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  Totalizar;
end;

procedure TfrmConsCargosBanco.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := DM.QEmpresasEMP_CODIGO.Value;
  QDetalleBAN_CODIGO.Value := QCargosBAN_CODIGO.Value;
  QDetalleCAR_NUMERO.Value := QCargosCAR_NUMERO.Value;
  QDetalleCAR_ANO.Value    := QCargosCAR_ANO.Value;
  QDetalleCAR_MES.Value    := QCargosCAR_MES.Value;
  QDetalleSUC_CODIGO.Value := QCargosSUC_CODIGO.Value;
end;

procedure TfrmConsCargosBanco.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from det_cargosbanco');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.SQL.Add('and car_numero = :num');
    dm.Query1.SQL.Add('and car_ano = :ano');
    dm.Query1.SQL.Add('and car_mes = :mes');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QCargosCAR_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
    dm.Query1.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QCargosSUC_CODIGO.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsCargosBanco.QDetalleCAT_CUENTAChange(Sender: TField);
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

procedure TfrmConsCargosBanco.Totalizar;
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

procedure TfrmConsCargosBanco.dsCargosDataChange(Sender: TObject;
  Field: TField);
begin
  Totalizar;
end;

procedure TfrmConsCargosBanco.QCargosAfterScroll(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmConsCargosBanco.FormActivate(Sender: TObject);
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

procedure TfrmConsCargosBanco.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsCargosBanco.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsCargosBanco.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

procedure TfrmConsCargosBanco.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edProveedor.text := search.valuefield;
    edProveedor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsCargosBanco.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmConsCargosBanco.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProveedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
      dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
      dm.Query1.sql.add('from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
      dm.Query1.sql.add('and sup_codigo = :sup');
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(edProveedor.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmConsCargosBanco.SpeedButton3Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTE CENTRO?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCentro.Delete
  end;
  GridCentro.setfocus;
end;

procedure TfrmConsCargosBanco.SpeedButton4Click(Sender: TObject);
begin
 Search.Query.Clear;
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
  end;
end;

procedure TfrmConsCargosBanco.GridCentroColEnter(Sender: TObject);
begin
  if GridCentro.SelectedIndex = 1 then
    GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1;
end;

procedure TfrmConsCargosBanco.GridCentroEnter(Sender: TObject);
begin
  GridCentro.SelectedIndex := 0;
end;

procedure TfrmConsCargosBanco.GridCentroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
  begin
   if GridCentro.SelectedIndex <> 2 then
      GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1
   else
   begin
     GridCentro.SelectedIndex := 0;
     QCentro.Append;
   end;
  end;
end;

procedure TfrmConsCargosBanco.QCentroAfterDelete(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmConsCargosBanco.QCentroAfterPost(DataSet: TDataSet);
begin
  QCentro.UpdateBatch;
end;

procedure TfrmConsCargosBanco.QCentroBeforePost(DataSet: TDataSet);
begin
  if QCentrocen_nombre.IsNull then QCentro.Cancel;
  if QCentro.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from CargosBancoCentrosCosto');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.SQL.Add('and car_ano = :ano');
    dm.Query1.SQL.Add('and car_mes = :mes');
    dm.Query1.SQL.Add('and car_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QCargosBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QCargosCAR_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QCargosSUC_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ano').Value := QCargosCAR_ANO.Value;
    dm.Query1.Parameters.ParamByName('mes').Value := QCargosCAR_MES.Value;
    dm.Query1.Open;
    QCentrodet_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsCargosBanco.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentrocar_numero.Value := QCargosCAR_NUMERO.Value;
  QCentroemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QCentroban_codigo.Value := QCargosBAN_CODIGO.Value;
  QCentrosuc_codigo.Value := QCargosSUC_CODIGO.Value;
  QCentrocar_ano.Value    := QCargosCAR_ANO.Value;
  QCentrocar_mes.Value    := QCargosCAR_MES.Value;
end;

procedure TfrmConsCargosBanco.QCentrocen_codigoChange(Sender: TField);
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

procedure TfrmConsCargosBanco.QFacturasAfterPost(DataSet: TDataSet);
begin
  QFacturas.UpdateBatch;
end;

procedure TfrmConsCargosBanco.btnSubCentroClick(Sender: TObject);
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

procedure TfrmConsCargosBanco.QCentrocen_referenciaChange(Sender: TField);
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

procedure TfrmConsCargosBanco.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
btRefreshClick(Sender);
end;

procedure TfrmConsCargosBanco.edtSucLocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmConsCargosBanco.btLocalidadClick(Sender: TObject);
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

procedure TfrmConsCargosBanco.FormShow(Sender: TObject);
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

procedure TfrmConsCargosBanco.btnReimpresionClick(Sender: TObject);
begin
 if MessageDlg('DESEA RE-IMPRIMIR EL CARGO #'+QCargosCAR_NUMERO.Text+'?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Application.CreateForm(TRepCargoBancario, RepCargoBancario);
      RepCargoBancario.QCargo.Close;
      RepCargoBancario.QDetalle.Close;
      RepCargoBancario.QFacturas.Close;
      RepCargoBancario.QCargo.Parameters.ParamByName('EMP').Value := QCargosEMP_CODIGO.Value;
      RepCargoBancario.QCargo.Parameters.ParamByName('CAR').Value := QCargosCAR_NUMERO.Value;
      RepCargoBancario.QCargo.Parameters.ParamByName('BAN').Value := QCargosBAN_CODIGO.Value;
      RepCargoBancario.QCargo.Parameters.ParamByName('SUC').Value := QCargosSUC_CODIGO.Value;
      RepCargoBancario.QCargo.Open;
      RepCargoBancario.QDetalle.Open;
      RepCargoBancario.QFacturas.Open;
      RepCargoBancario.QCentro.Open;
      //RepCargoBancario.PrinterSetup;
      RepCargoBancario.Preview;
      RepCargoBancario.Destroy;
    end;
end;

procedure TfrmConsCargosBanco.SpeedButton1Click(Sender: TObject);
begin
if MessageDlg('DESEAS ELIMINAR EL CENTRO DE COSTO'+char(13)+
QCentrocen_nombre.Text+char(13)+
'POR UN MONTO DE '+FormatCurr('#,0.00',QCentrodet_monto.Value)+'?',mtConfirmation,[mbYes,mbNo],0)=mrYes THEN BEGIN
WITH DM.adoMultiUso DO BEGIN
Close;
SQL.Clear;
SQL.Add('DELETE CargosBancoCentrosCosto');
SQL.Add('where emp_codigo = :emp and suc_codigo = :suc and ban_codigo = :ban');
SQL.Add('and car_numero =  :car and det_secuencia = :sec');
Parameters.ParamByName('emp').DataType := ftInteger;
Parameters.ParamByName('suc').DataType := ftInteger;
Parameters.ParamByName('ban').DataType := ftInteger;
Parameters.ParamByName('car').DataType := ftInteger;
Parameters.ParamByName('sec').DataType := ftInteger;
Parameters.ParamByName('emp').Value := QCentroemp_codigo.Value;
Parameters.ParamByName('suc').Value := QCentrosuc_codigo.Value;
Parameters.ParamByName('ban').Value := QCentroban_codigo.Value;
Parameters.ParamByName('car').Value := QCentrocar_numero.Value;
Parameters.ParamByName('sec').Value := QCentrodet_secuencia.Value;
ExecSQL;
QCentro.Close;
QCentro.Open;
end;
end;

end;

end.
