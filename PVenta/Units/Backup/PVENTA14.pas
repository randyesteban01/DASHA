unit PVENTA14;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, Grids, DBGrids, Db,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ActnList, ADODB,
  QuerySearchDlgADO, QuickRpt, QRCtrls, ToolWin, ToolEdit, RXDBCtrl, QRPDFFilt, QRExport;
  
type
  TfrmClientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
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
    Label18: TLabel;
    DBEdit17: TDBEdit;
    QClientes: TADOQuery;
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
    QClientesCLI_NOMBRE: TIBStringField;
    QClientesCLI_RNC: TIBStringField;
    QClientesCLI_CEDULA: TIBStringField;
    QClientesCLI_DIRECCION: TIBStringField;
    QClientesCLI_LOCALIDAD: TIBStringField;
    dsClientes: TDataSource;
    Search: TQrySearchDlgADO;
    QClientesCLI_LIMITE: TFloatField;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    QFamiliasCli: TADOQuery;
    QFamiliasCliEMP_CODIGO: TIntegerField;
    QFamiliasCliCLI_CODIGO: TIntegerField;
    QFamiliasCliFAM_CODIGO: TIntegerField;
    QFamiliasCliCLF_DESCUENTO: TFloatField;
    dsFamilias: TDataSource;
    QFamilias: TADOQuery;
    QFamiliasFAM_CODIGO: TIntegerField;
    QFamiliasFAM_NOMBRE: TIBStringField;
    QFamiliasCliFamilia: TStringField;
    QProductos: TADOQuery;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosCli: TADOQuery;
    QProductosCliEMP_CODIGO: TIntegerField;
    QProductosCliCLI_CODIGO: TIntegerField;
    QProductosCliPRO_CODIGO: TIntegerField;
    QProductosCliCLP_DESCUENTO: TFloatField;
    QProductosCliCLP_PRECIO: TFloatField;
    dsProductos: TDataSource;
    QProductosCliProducto: TStringField;
    TabSheet5: TTabSheet;
    QCXC: TADOQuery;
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
    QLimite: TADOQuery;
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
    QRest: TADOQuery;
    QRestCLI_CODIGO: TIntegerField;
    QRestEMP_CODIGO: TIntegerField;
    QRestFPA_CODIGO: TIntegerField;
    dsRest: TDataSource;
    QRestFPA_NOMBRE: TIBStringField;
    Query1: TADOQuery;
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
    QCXCMOV_SECUENCIA: TIntegerField;
    QCXCMOV_CUOTA: TIBStringField;
    QCXCSec: TIntegerField;
    Label25: TLabel;
    DBEdit34: TDBEdit;
    btCuenta: TSpeedButton;
    tCuenta: TEdit;
    GroupBox4: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    lbFecUltCompra: TStaticText;
    lbFecUltPago: TStaticText;
    lbMtoUltPago: TStaticText;
    lbFacVencidas: TStaticText;
    lbMtoVencido: TStaticText;
    QClientesCLI_FECHA: TDateTimeField;
    QClientesCLI_FECHANAC: TDateTimeField;
    Label31: TLabel;
    DBEdit35: TDBEdit;
    Label32: TLabel;
    DBEdit36: TDBEdit;
    Label33: TLabel;
    lbMtoUltCompra: TStaticText;
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    DBGrid1: TDBGrid;
    Label20: TLabel;
    Label21: TLabel;
    btFamilia: TSpeedButton;
    fbtinsert: TSpeedButton;
    fbtedit: TSpeedButton;
    fbtdelete: TSpeedButton;
    fbtpost: TSpeedButton;
    fbtcancel: TSpeedButton;
    DBEdit20: TDBEdit;
    DBEdit19: TDBEdit;
    DBGrid2: TDBGrid;
    Label22: TLabel;
    Label23: TLabel;
    btProducto: TSpeedButton;
    Label24: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    pbtpost: TSpeedButton;
    pbtinsert: TSpeedButton;
    pbtedit: TSpeedButton;
    pbtdelete: TSpeedButton;
    pbtcancel: TSpeedButton;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    DBGrid6: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    btodos: TSpeedButton;
    Memo1: TMemo;
    QListadoCLI_CODIGO: TIntegerField;
    QListadoCLI_BALANCE: TFloatField;
    QListadoCLI_NOMBRE: TIBStringField;
    QListadoCLI_LIMITE: TFloatField;
    QListadoCLI_STATUS: TIBStringField;
    QListadoCLI_TELEFONO: TIBStringField;
    QClientesEMP_CODIGO: TIntegerField;
    QClientesCLI_CODIGO: TIntegerField;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label34: TLabel;
    DBEdit37: TDBEdit;
    QClientesCLI_CONTACTO: TStringField;
    QClientesCLI_TELEFONO2: TStringField;
    Label35: TLabel;
    DBEdit38: TDBEdit;
    QClientesSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label36: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    lbFactura: TQRLabel;
    lbEntregar: TQRLabel;
    lbDir: TQRLabel;
    lbTel: TQRLabel;
    lbBultos: TQRLabel;
    lbLoc: TQRLabel;
    QClientesPRO_CODIGO: TIntegerField;
    Label37: TLabel;
    btProvincia: TSpeedButton;
    dbProvincia: TDBEdit;
    tProvincia: TEdit;
    lbfecha: TQRLabel;
    BitBtn1: TBitBtn;
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
    QClientescli_factura_debajo_costo: TStringField;
    QClientescli_factura_debajo_minimo: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    QClientesusu_codigo: TIntegerField;
    Label38: TLabel;
    tusuario: TEdit;
    QClientescli_comentario: TMemoField;
    TabSheet11: TTabSheet;
    DBMemo1: TDBMemo;
    QCXCMOV_TASA: TBCDField;
    Label39: TLabel;
    QEmpleados: TADOQuery;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosNombres: TStringField;
    dsEmpleados: TDataSource;
    QClientesemp_numero: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label40: TLabel;
    bttipofactura: TSpeedButton;
    DBEdit39: TDBEdit;
    ttipofactura: TEdit;
    QClientestfa_codigo: TIntegerField;
    btrnc: TSpeedButton;
    btcedula: TSpeedButton;
    QClientesAumento: TBCDField;
    DBEdit40: TDBEdit;
    Label41: TLabel;
    QClientescli_burocredito: TStringField;
    DBRadioGroup3: TDBRadioGroup;
    QClientescli_buroestatus: TStringField;
    Label42: TLabel;
    TabSheet8: TTabSheet;
    QContactos: TADOQuery;
    dsContactos: TDataSource;
    QContactosemp_codigo: TIntegerField;
    QContactoscli_codigo: TIntegerField;
    QContactoscontacto_nombre: TStringField;
    QContactoscontacto_apellido: TStringField;
    QContactoscontacto_puesto: TStringField;
    QContactoscontacto_telefonotrab: TStringField;
    QContactoscontacto_telefonomovil: TStringField;
    QContactoscontacto_fax: TStringField;
    QContactoscontacto_emailtrab: TStringField;
    QContactoscontacto_emailpersonal: TStringField;
    QContactoscontacto_direccion: TStringField;
    QContactoscontacto_ciudad: TStringField;
    QContactoscontacto_pais: TStringField;
    QContactosContactoID: TIntegerField;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    c_btprior: TAction;
    c_btnext: TAction;
    c_btinsert: TAction;
    c_btedit: TAction;
    c_btdelete: TAction;
    c_btpost: TAction;
    c_btcancel: TAction;
    QClientesfacturaid: TIntegerField;
    GroupBox6: TGroupBox;
    DBGrid5: TDBGrid;
    btInsRest: TBitBtn;
    btDelRest: TBitBtn;
    Label53: TLabel;
    btfactura: TSpeedButton;
    DBEdit51: TDBEdit;
    tfactura: TEdit;
    QClientesCLI_REFERENCIA: TStringField;
    QListadoCLI_REFERENCIA: TStringField;
    Label54: TLabel;
    btMaster: TSpeedButton;
    tCliente: TEdit;
    QClientescli_maestro: TIntegerField;
    DBEdit52: TDBEdit;
    ts1: TTabSheet;
    QClientesASEG_CODIGO: TIntegerField;
    QClientesFECHA_VENC_LIC: TDateTimeField;
    QClientesFECHA_VENC_SEG: TDateTimeField;
    QClientesNOPOLIZA: TStringField;
    QClientesTIPO_SEG: TIntegerField;
    QClientesTIPO_CAT_LIC: TIntegerField;
    grp1: TGroupBox;
    LB_1: TLabel;
    tdbASEG_CODIGO: TDBEdit;
    bBuscarAseg: TSpeedButton;
    bNuevaAseg: TSpeedButton;
    tAseguradora: TEdit;
    LB_2: TLabel;
    LB_3: TLabel;
    DBDEdtFECHA_VENC_SEG: TDBDateEdit;
    grp2: TGroupBox;
    LB_5: TLabel;
    LB_6: TLabel;
    DBDEdtFECHA_VENC_lic: TDBDateEdit;
    CB_TIPO_SEG: TComboBox;
    CB_TIPO_CAT_LIC: TComboBox;
    LB_4: TLabel;
    tdbPLACA_VEH: TDBEdit;
    QClientesPLACA_VEH: TStringField;
    LB_7: TLabel;
    tdbCLI_APODO: TDBEdit;
    QClientesCLI_APODO: TStringField;
    QLimiteUSUARIO: TStringField;
    QClientesfacturaid2: TIntegerField;
    Label55: TLabel;
    dbedtfacturaid2: TDBEdit;
    btfactura2: TSpeedButton;
    tfactura2: TEdit;
    cbbcli_buroestatus: TComboBox;
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
    procedure btCuentaClick(Sender: TObject);
    procedure QClientesCLI_CUENTAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dsClientesDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure QClientesBeforeDelete(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure btProvinciaClick(Sender: TObject);
    procedure QClientesPRO_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QClientesAfterInsert(DataSet: TDataSet);
    procedure QClientesAfterEdit(DataSet: TDataSet);
    procedure bttipofacturaClick(Sender: TObject);
    procedure QClientestfa_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btrncClick(Sender: TObject);
    procedure btcedulaClick(Sender: TObject);
    procedure QContactosBeforePost(DataSet: TDataSet);
    procedure c_btpriorExecute(Sender: TObject);
    procedure c_btnextExecute(Sender: TObject);
    procedure c_btinsertExecute(Sender: TObject);
    procedure c_bteditExecute(Sender: TObject);
    procedure c_btdeleteExecute(Sender: TObject);
    procedure c_btpostExecute(Sender: TObject);
    procedure c_btcancelExecute(Sender: TObject);
    procedure QContactosAfterPost(DataSet: TDataSet);
    procedure QContactosAfterDelete(DataSet: TDataSet);
    procedure dsContactosStateChange(Sender: TObject);
    procedure btfacturaClick(Sender: TObject);
    procedure QClientesfacturaidGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QClientesCLI_REFERENCIAChange(Sender: TField);
    procedure QClientesCLI_RNCChange(Sender: TField);
    procedure btMasterClick(Sender: TObject);
    procedure QClientescli_maestroGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnextExecute(Sender: TObject);
    procedure btpriorExecute(Sender: TObject);
    procedure bBuscarAsegClick(Sender: TObject);
    procedure CB_TIPO_SEGChange(Sender: TObject);
    procedure CB_TIPO_CAT_LICChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bNuevaAsegClick(Sender: TObject);
    procedure QClientesASEG_CODIGOValidate(Sender: TField);
    procedure btfactura2Click(Sender: TObject);
    procedure QClientesfacturaid2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
    procedure totalizacxc;
    procedure selecletra(l : string);
  end;

var
  frmClientes: TfrmClientes;

implementation

uses RVENTA44, SIGMA01, SIGMA00, CONT77, PVENTAASEG, Variants;

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
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmClientes.QClientesAfterDelete(DataSet: TDataSet);
begin
  QClientes.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmClientes.QClientesAfterPost(DataSet: TDataSet);
begin
 QClientes.UpdateBatch;

  if dm.QParametrospar_dividir_facturacion.Value = 'True' then
  begin
    if accion = 1 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('insert into clientes (emp_codigo,cli_codigo,usu_codigo,cli_referencia,cli_nombre,cli_rnc,cli_cedula,cli_direccion,');
      dm.Query1.SQL.Add('cli_localidad,cli_telefono,cli_fax,cli_web,cli_email,cli_descuento,cli_precio,cli_status,');
      dm.Query1.SQL.Add('cli_cuenta,cli_balance,cli_limite,cli_facturarbce,cli_facturarvencida,cli_instnombre,');
      dm.Query1.SQL.Add('cli_insttel,cli_pernombre1,cli_perparent1,cli_pertel1,cli_pernombre2,cli_perparent2,');
      dm.Query1.SQL.Add('cli_pertel2,cli_refnombre1,cli_reftel1,cli_refnombre2,cli_reftel2,cli_fecha,cli_fechanac,');
      dm.Query1.SQL.Add('tcl_codigo,fpa_codigo,cpa_codigo,ven_codigo,cli_contacto,cli_telefono2,suc_codigo,pro_codigo,');
      dm.Query1.SQL.Add('cli_factura_debajo_costo,cli_factura_debajo_minimo,cli_comentario,emp_numero)');
      dm.Query1.SQL.Add('select :emp1,cli_codigo,usu_codigo,cli_referencia,cli_nombre,cli_rnc,cli_cedula,cli_direccion,');
      dm.Query1.SQL.Add('cli_localidad,cli_telefono,cli_fax,cli_web,cli_email,cli_descuento,cli_precio,cli_status,');
      dm.Query1.SQL.Add('cli_cuenta,cli_balance,cli_limite,cli_facturarbce,cli_facturarvencida,cli_instnombre,');
      dm.Query1.SQL.Add('cli_insttel,cli_pernombre1,cli_perparent1,cli_pertel1,cli_pernombre2,cli_perparent2,');
      dm.Query1.SQL.Add('cli_pertel2,cli_refnombre1,cli_reftel1,cli_refnombre2,cli_reftel2,cli_fecha,cli_fechanac,');
      dm.Query1.SQL.Add('tcl_codigo,fpa_codigo,cpa_codigo,ven_codigo,cli_contacto,cli_telefono2,suc_codigo,pro_codigo,');
      dm.Query1.SQL.Add('cli_factura_debajo_costo,cli_factura_debajo_minimo,cli_comentario,emp_numero');
      dm.Query1.SQL.Add('from clientes where emp_codigo = :emp and cli_codigo = :cli');
      dm.Query1.Parameters.ParamByName('emp1').Value := dm.QParametrospar_empresa_1.Value;
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('cli').Value  := QClientesCLI_CODIGO.Value;
      dm.Query1.ExecSQL;

      dm.Query1.Close;
      dm.Query1.Parameters.ParamByName('emp1').Value := dm.QParametrospar_empresa_2.Value;
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('cli').Value  := QClientesCLI_CODIGO.Value;
      dm.Query1.ExecSQL;
    end
    else
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('update clientes set cli_nombre = :nom, cli_referencia = :ref, cli_rnc = :rnc, cli_cedula = :ced, cli_direccion = :dir,');
      dm.Query1.SQL.Add('cli_localidad = :loc, cli_telefono = :tel, cli_fax = :fax, cli_web = :web, cli_email = :mail, cli_descuento = :desc,');
      dm.Query1.SQL.Add('cli_precio = :pre, cli_status = :st, cli_cuenta = :cta, pro_codigo = :pro, ven_codigo = :ven, cpa_codigo = :cpa');
      dm.Query1.SQL.Add('where emp_codigo = :emp and cli_codigo = :cli');
      dm.Query1.Parameters.ParamByName('nom').Value  := QClientesCLI_NOMBRE.Value;
      dm.Query1.Parameters.ParamByName('ref').Value  := QClientesCLI_REFERENCIA.Value;
      dm.Query1.Parameters.ParamByName('rnc').Value  := QClientesCLI_RNC.Value;
      dm.Query1.Parameters.ParamByName('ced').Value  := QClientesCLI_CEDULA.Value;
      dm.Query1.Parameters.ParamByName('dir').Value  := QClientesCLI_DIRECCION.Value;
      dm.Query1.Parameters.ParamByName('loc').Value  := QClientesCLI_LOCALIDAD.Value;
      dm.Query1.Parameters.ParamByName('tel').Value  := QClientesCLI_TELEFONO.Value;
      dm.Query1.Parameters.ParamByName('fax').Value  := QClientesCLI_FAX.Value;
      dm.Query1.Parameters.ParamByName('web').Value  := QClientesCLI_WEB.Value;
      dm.Query1.Parameters.ParamByName('mail').Value := QClientesCLI_EMAIL.Value;
      dm.Query1.Parameters.ParamByName('desc').Value := QClientesCLI_DESCUENTO.Value;
      dm.Query1.Parameters.ParamByName('pre').Value  := QClientesCLI_PRECIO.Value;
      dm.Query1.Parameters.ParamByName('st').Value   := QClientesCLI_STATUS.Value;
      dm.Query1.Parameters.ParamByName('cta').Value  := QClientesCLI_CUENTA.Value;
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.QParametrospar_empresa_1.Value;
      dm.Query1.Parameters.ParamByName('cli').Value  := QClientesCLI_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('pro').Value  := QClientesPRO_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ven').Value  := QClientesVEN_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('cpa').Value  := QClientesCPA_CODIGO.Value;
      dm.Query1.ExecSQL;

      dm.Query1.Close;
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.QParametrospar_empresa_2.Value;
      dm.Query1.Parameters.ParamByName('cli').Value  := QClientesCLI_CODIGO.Value;
      dm.Query1.ExecSQL;
    end;
  end;
end;

procedure TfrmClientes.QClientesNewRecord(DataSet: TDataSet);
begin
  QCLientesCLI_PRECIO.Value  := 'Ninguno';
  QClientesusu_codigo.Value  := dm.Usuario;
  QClientescli_factura_debajo_costo.Value  := 'False';
  QClientescli_factura_debajo_minimo.Value := 'False';
  QClientesEMP_CODIGO.value  := dm.vp_cia;
  QClientesCLI_BALANCE.value := 0;
  QClientesCLI_STATUS.value  := 'ACT';
  QClientesCLI_FACTURARBCE.Value := 'S';
  QClientesCLI_FACTURARVENCIDA.Value := 'S';
  QClientesCLI_LIMITE.Value  := dm.QParametrosPAR_LIMITEINICIAL.Value;
  QClientesCPA_CODIGO.Value  := dm.QParametrosCPA_CODIGOCLIENTE.Value;
  QClientesCLI_FECHA.Value   := Date;
  QClientesSUC_CODIGO.Value  := QSucursalsuc_codigo.Value;
  QClientescli_burocredito.Value := 'True';
  DBRadioGroup3.ItemIndex := 0;
  cbbcli_buroestatus.ItemIndex := 0;
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
    dm.Query1.Parameters.parambyname('tipo').Value := QClientesTCL_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tTipo.text := dm.Query1.fieldbyname('tcl_nombre').asstring
    else
      tTipo.text := '';
  end
  else
    tTipo.text := '';
end;

procedure TfrmClientes.FormActivate(Sender: TObject);
begin
  if not QClientes.active then
  begin
//    QClientes.Parameters.ParamByName('cli').Value := 1;
    QClientes.open;
    QFamiliasCli.open;
    QFamilias.open;
    QProductos.open;
    QProductosCli.open;
    QLimite.Open;
    QRest.Open;
    QEmpleados.Open;
    QContactos.Open;
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QListado.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QListado.SQL.Add('and cli_nombre like '+#39+'%'+#39);
    QListado.SQL.Add('order by cli_nombre');
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid6;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
end;

procedure TfrmClientes.btPostClick(Sender: TObject);
begin
  QClientes.Post;
  CB_TIPO_SEG.Enabled := False;
  CB_TIPO_CAT_LIC.Enabled :=  False;
end;

procedure TfrmClientes.btCancelClick(Sender: TObject);
begin
  QClientes.cancel;
  CB_TIPO_SEG.Enabled := False;
  CB_TIPO_CAT_LIC.Enabled :=  False;
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
  CB_TIPO_SEG.Enabled := True;
  CB_TIPO_CAT_LIC.Enabled :=  True;
end;

procedure TfrmClientes.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit17.setfocus;
  QClientes.insert;
  CB_TIPO_SEG.Enabled := True;
  CB_TIPO_CAT_LIC.Enabled :=  True;
end;

procedure TfrmClientes.btFindClick(Sender: TObject);
begin
  Search.Title := 'Listado de Clientes';
  Search.ResultField := 'cli_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('Telefono');
  Search.AliasFields.Add('C�dula');
  Search.AliasFields.Add('C�digo');
  Search.query.clear;
  Search.query.add('select cli_nombre, cli_referencia, cli_telefono, cli_cedula, cli_codigo');
  Search.query.add('from clientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     begin
      QClientes.locate('cli_codigo',search.valuefield,[]);
      totalizacxc;
     end;
{  if search.execute then
  begin
    QClientes.Close;
    QClientes.Parameters.ParamByName('cli').Value := StrToInt(Trim(Search.ValueField));
    QClientes.Open;
    totalizacxc;
  end; }
end;

procedure TfrmClientes.dsClientesStateChange(Sender: TObject);
begin
  btInsert.enabled   := dsClientes.State = dsbrowse;
  btEdit.enabled     := btInsert.enabled;
  btDelete.enabled   := btInsert.enabled;
  btNext.enabled     := btInsert.enabled;
  btPrior.enabled    := btInsert.enabled;
  btPost.enabled     := not btInsert.enabled;
  btCancel.enabled   := not btInsert.enabled;
  btFind.enabled     := btInsert.enabled;
  btTipo.enabled     := not btInsert.enabled;
  btCondi.enabled    := not btInsert.enabled;
  btVendedor.enabled := not btInsert.enabled;
  btInsRest.Enabled  := btInsert.enabled;
  btDelRest.Enabled  := btInsert.enabled;
  btProvincia.Enabled := not btInsert.enabled;
  bttipofactura.Enabled := not btInsert.enabled;
  DBComboBox1.Enabled := not btInsert.enabled;
  btCuenta.Enabled    := not btInsert.enabled;
  btrnc.Enabled       := not btInsert.enabled;
  btcedula.Enabled    := not btInsert.enabled;
  btfactura.Enabled   := not btInsert.enabled;
  btfactura2.Enabled   := not btInsert.enabled;
  btMaster.Enabled    := dsClientes.State in[dsInsert,dsEdit];
  //Contactos
  c_btinsert.Enabled := btInsert.Enabled;
  c_btedit.Enabled   := btInsert.Enabled;
  c_btdelete.Enabled := btInsert.Enabled;
  c_btnext.Enabled := btInsert.Enabled;
  c_btprior.Enabled := btInsert.Enabled;

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
var
  valido : boolean;
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select count(*) as cant from parametros where par_empresa_1 = :emp1');
  dm.Query1.SQL.Add('or par_empresa_2 = :emp2');
  dm.Query1.Parameters.ParamByName('emp1').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('emp2').Value := dm.vp_cia;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cant').AsInteger > 0 then
  begin
    MessageDlg('NO SE PUEDE CREAR CLIENTES DESDE ESTA EMPRESA',mtError,[mbok],0);
    Abort;
  end;

  valido := true;
  for a := 1 to length(QClientesCLI_CEDULA.AsString) do
  begin
    if (copy(QClientesCLI_CEDULA.AsString,a,1) <> '0') and (copy(QClientesCLI_CEDULA.AsString,a,1) <> '1') and
    (copy(QClientesCLI_CEDULA.AsString,a,1) <> '2') and (copy(QClientesCLI_CEDULA.AsString,a,1) <> '3') and
    (copy(QClientesCLI_CEDULA.AsString,a,1) <> '4') and (copy(QClientesCLI_CEDULA.AsString,a,1) <> '5') and
    (copy(QClientesCLI_CEDULA.AsString,a,1) <> '6') and (copy(QClientesCLI_CEDULA.AsString,a,1) <> '7') and
    (copy(QClientesCLI_CEDULA.AsString,a,1) <> '8') and (copy(QClientesCLI_CEDULA.AsString,a,1) <> '9') then
    begin
      valido := false;
      break;
    end;
  end;

  if not valido then
  begin
    showmessage('DEBE DIGITAR UNA CEDULA VALIDA');
    DBEdit10.setfocus;
    abort;
  end;

  for a := 1 to length(QClientesCLI_RNC.AsString) do
  begin
    if (copy(QClientesCLI_RNC.AsString,a,1) <> '0') and (copy(QClientesCLI_RNC.AsString,a,1) <> '1') and
    (copy(QClientesCLI_RNC.AsString,a,1) <> '2') and (copy(QClientesCLI_RNC.AsString,a,1) <> '3') and
    (copy(QClientesCLI_RNC.AsString,a,1) <> '4') and (copy(QClientesCLI_RNC.AsString,a,1) <> '5') and
    (copy(QClientesCLI_RNC.AsString,a,1) <> '6') and (copy(QClientesCLI_RNC.AsString,a,1) <> '7') and
    (copy(QClientesCLI_RNC.AsString,a,1) <> '8') and (copy(QClientesCLI_RNC.AsString,a,1) <> '9') then
    begin
      valido := false;
      break;
    end;
  end;

  if not valido then
  begin
    showmessage('DEBE DIGITAR UN RNC VALIDO');
    DBEdit3.setfocus;
    abort;
  end;

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
    dm.query1.sql.add('select isnull(max(cli_codigo),0) as maximo');
    dm.query1.sql.add('from clientes');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QClientesCLI_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;

  if ((QClientesTIPO_SEG.Value = 0) and (not QClientesFECHA_VENC_SEG.IsNull)) then begin
    ShowMessage('Debes indicar el tipo de seguro...');
    PageControl1.ActivePage := ts1;
    CB_TIPO_SEG.SetFocus;
    Abort;
  end;

  if ((QClientesTIPO_CAT_LIC.Value = 0) and (not QClientesFECHA_VENC_LIC.IsNull)) then begin
    ShowMessage('Debes indicar el tipo de licencia...');
    PageControl1.ActivePage := ts1;
    CB_TIPO_CAT_LIC.SetFocus;
    Abort;
  end;

  if QClientescli_referencia.IsNull then QClientesCLI_REFERENCIA.Value := QClientesCLI_CODIGO.AsString;

  case cbbcli_buroestatus.ItemIndex OF
  1:QClientescli_buroestatus.Text := 'N';
  2:QClientescli_buroestatus.Text := 'A';
  3:QClientescli_buroestatus.Text := 'L';
  4:QClientescli_buroestatus.Text := 'C';
  end;  

end;

procedure TfrmClientes.btTipoClick(Sender: TObject);
begin
  Search.Title := 'Tipos de Clientes';
  Search.ResultField := 'tcl_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.query.clear;
  Search.query.add('select tcl_nombre, tcl_codigo');
  Search.query.add('from tipoclientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QClientesTCL_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmClientes.btFormaClick(Sender: TObject);
begin
  Search.Title := 'Formas de Pago';
  Search.ResultField := 'fpa_codigo';
  Search.query.clear;
  Search.query.add('select fpa_nombre, fpa_codigo');
  Search.query.add('from formaspago');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QClientesFPA_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmClientes.btCondiClick(Sender: TObject);
begin
  Search.Title := 'Condiciones de Pago';
  Search.ResultField := 'cpa_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.query.clear;
  Search.query.add('select cpa_nombre, cpa_codigo');
  Search.query.add('from condiciones');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
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
    dm.Query1.Parameters.parambyname('cod').Value := QClientesCPA_CODIGO.value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tCondi.text := dm.Query1.fieldbyname('cpa_nombre').asstring
    else
      tCondi.text := '';
  end
  else
    tCondi.text := '';
end;

procedure TfrmClientes.QFamiliasCliNewRecord(DataSet: TDataSet);
begin
  QFamiliasCliEMP_CODIGO.value := dm.vp_cia;
  QFamiliasCliCLI_CODIGO.value := QClientesCLI_CODIGO.value;
end;

procedure TfrmClientes.QFamiliasCliAfterPost(DataSet: TDataSet);
begin
  QFamiliasCli.UpdateBatch;
end;

procedure TfrmClientes.QFamiliasCliAfterDelete(DataSet: TDataSet);
begin
  QFamiliasCli.UpdateBatch;
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
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'fam_codigo';
  Search.query.clear;
  Search.query.add('select fam_nombre, fam_codigo');
  Search.query.add('from familias');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
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
  QProductosCli.UpdateBatch;
end;

procedure TfrmClientes.QProductosCliAfterPost(DataSet: TDataSet);
begin
  QProductosCli.UpdateBatch;
end;

procedure TfrmClientes.QProductosCliNewRecord(DataSet: TDataSet);
begin
  QProductosCliEMP_CODIGO.value := dm.vp_cia;
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
  Search.AliasFields.Add('C�digo');
  Search.ResultField := 'pro_codigo';
  Search.query.clear;
  Search.query.add('select pro_nombre, pro_roriginal, pro_rfabric, pro_codigo');
  Search.query.add('from productos');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
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
  QCXCSaldo.Value := QCXCMOV_MONTO.Value - QCXCMOV_ABONO.Value;

  if QCXCMOV_CUOTA.Value = 'True' then
    QCXCSec.Value := QCXCMOV_SECUENCIA.Value;
end;

procedure TfrmClientes.QClientesAfterOpen(DataSet: TDataSet);
begin
  if not QCXC.active then QCXC.open;
  IF QClientescli_buroestatus.IsNull THEN cbbcli_buroestatus.ItemIndex := 0;
  IF QClientescli_buroestatus.Text = 'N' THEN cbbcli_buroestatus.ItemIndex := 1;
  IF QClientescli_buroestatus.Text = 'A' THEN cbbcli_buroestatus.ItemIndex := 2;
  IF QClientescli_buroestatus.Text = 'L' THEN cbbcli_buroestatus.ItemIndex := 3;
  IF QClientescli_buroestatus.Text = 'C' THEN cbbcli_buroestatus.ItemIndex := 4;
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
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := QClientesVEN_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tVendedor.text := ''
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
  end
  else
    tVendedor.text := '';
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
  memo1.Lines := QListado.SQL;
end;

procedure TfrmClientes.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRLimites, RLimites);
  RLimites.lbFecha.Caption := 'Al '+DateToStr(Date);
  RLimites.lbCliente.Caption := QClientesCLI_NOMBRE.Value;
  RLimites.QLimite.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RLimites.QLimite.Parameters.ParamByName('cli').Value := QClientesCLI_CODIGO.Value;
  RLimites.QLimite.Open;
  RLimites.PrinterSetup;
  RLimites.Preview;
  RLimites.Destroy;
end;

procedure TfrmClientes.QRestNewRecord(DataSet: TDataSet);
begin
  QRestEMP_CODIGO.Value := dm.vp_cia;
  QRestCLI_CODIGO.Value := QClientesCLI_CODIGO.Value;
end;

procedure TfrmClientes.btInsRestClick(Sender: TObject);
begin
  Search.Title := 'Formas de Pago';
  Search.ResultField := 'fpa_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.query.clear;
  Search.query.add('select fpa_nombre, fpa_codigo');
  Search.query.add('from formaspago');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.query.add('and fpa_codigo not in (select fpa_codigo from clirestfpago');
  Search.query.add('where emp_codigo ='+inttostr(dm.vp_cia));
  Search.query.add('and cli_codigo = '+inttostr(QCLientesCLI_CODIGO.value)+')');
  if search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into clirestfpago (emp_codigo, cli_codigo, fpa_codigo)');
    dm.Query1.SQL.Add('values (:emp, :cli, :fpa)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QClientesCLI_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fpa').Value := StrToInt(Search.ValueField);
    dm.Query1.ExecSQL;
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
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := QClientesCLI_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fpa').Value := QRestFPA_CODIGO.Value;
    dm.Query1.ExecSQL;
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
    if not QClientesCLI_CODIGO.IsNull then
      Query1.SQL.Add('and cli_codigo <> :cod');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('ced').Value := trim(QClientesCLI_CEDULA.Value);
    if not QClientesCLI_CODIGO.IsNull then
      Query1.Parameters.ParamByName('cod').Value := QClientesCLI_CODIGO.AsInteger;
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
    top := 2;
    left := 2;
  end;
end;

procedure TfrmClientes.btCuentaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Cuenta');
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if search.execute then
  begin
     QClientesCLI_CUENTA.Value := Search.ValueField;
     DBEdit34.SetFocus;
  end;
end;

procedure TfrmClientes.QClientesCLI_CUENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QClientesCLI_CUENTA.IsNull then
  begin
    Text := QClientesCLI_CUENTA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QClientesCLI_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCuenta.Text := '';
  end
  else
    tCuenta.Text := '';
end;

procedure TfrmClientes.dsClientesDataChange(Sender: TObject;
  Field: TField);
begin
  if not QClientesusu_codigo.IsNull then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select usu_nombre from usuarios');
    Query1.SQL.Add('where usu_codigo = :usu');
    Query1.Parameters.ParamByName('usu').Value := QClientesusu_codigo.Value;
    Query1.Open;
    tusuario.Text := Query1.FieldByName('usu_nombre').Value;
  end
  else
    tusuario.Text := '';

  if not QClientesCLI_CODIGO.IsNull then
  begin
    lbFecUltCompra.Caption := '';
    lbFecUltPago.Caption   := '';
    lbMtoUltPago.Caption   := '';
    lbFacVencidas.Caption  := '';
    lbMtoVencido.Caption   := '';
    lbMtoUltCompra.Caption := '';

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select * from pr_Estadistica_cli (:emp, :cli, :fec)');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('cli').Value := QClientesCLI_CODIGO.Value;
    Query1.Parameters.ParamByName('fec').Value    := DAte;
    Query1.Open;
    if not Query1.FieldByName('fecultcompra').isnull then
      lbFecUltCompra.Caption := DateToStr(Query1.FieldByName('fecultcompra').AsDateTime);
    if not Query1.FieldByName('fechaultpago').isnull then
      lbFecUltPago.Caption   := DateToStr(Query1.FieldByName('fechaultpago').AsDateTime);
    lbMtoUltPago.Caption   := Format('%n',[Query1.FieldByName('mtoultpago').AsFloat]);
    lbFacVencidas.Caption  := Query1.FieldByName('facvencidas').AsString;
    lbMtoVencido.Caption   := Format('%n',[Query1.FieldByName('mtovencido').AsFloat]);
    lbMtoUltCompra.Caption := Format('%n',[Query1.FieldByName('mtoultcompra').AsFloat]);
    CB_TIPO_SEG.ItemIndex := QClientesTIPO_SEG.Value;
    CB_TIPO_CAT_LIC.ItemIndex := QClientesTIPO_CAT_LIC.Value;

  end;
end;

procedure TfrmClientes.selecletra(l : string);
begin
  if not btodos.Down then
  begin
    QListado.Close;
    QListado.SQL.Clear;
    QListado.SQL := memo1.Lines;
    QListado.SQL.Add('and cli_nombre like '+#39+l+'%'+#39);
    QListado.SQL.Add('order by cli_nombre');
    QListado.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QListado.open;
  end
  else
  begin
    QListado.Close;
    QListado.SQL.Clear;
    QListado.SQL := memo1.Lines;
    QListado.SQL.Add('and cli_nombre like '+#39+'%'+#39);
    QListado.SQL.Add('order by cli_nombre');
    QListado.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QListado.open;
  end;
end;

procedure TfrmClientes.SpeedButton1Click(Sender: TObject);
begin
  selecletra((sender as TSpeedButton).Caption);
end;

procedure TfrmClientes.DBGrid6DblClick(Sender: TObject);
begin
  QClientes.locate('cli_codigo',search.valuefield,[]);
{  QClientes.Close;
  QClientes.Parameters.ParamByName('cli').Value := QListadoCLI_CODIGO.value;
  QClientes.Open;}
  totalizacxc;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmClientes.QClientesBeforeDelete(DataSet: TDataSet);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('SELECT * FROM PR_BUSCA_MOV_CLI (:EMP, :CLI)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('cli').Value := QClientesCLI_CODIGO.Value;
  dm.Query1.Open;
  if dm.Query1.FieldByName('tiene').AsString = 'S' then
  begin
    MessageDlg('EXISTEN '+dm.Query1.FieldByName('movimiento').AsString+' QUE YA '+
    'TIENEN ESTE CLIENTE.'+#13+'NO SE PUEDE ELIMINAR',mtError, [mbok], 0);
    Abort;
  end;
end;

procedure TfrmClientes.BitBtn1Click(Sender: TObject);
var
   factura, bultos, ncond : string;
   a : integer;
begin
   factura := InputBox('# de Factura del Cliente','# Factura','');
   bultos  := InputBox('# Cantidad de Bultos','Bultos','');
   ncond   := InputBox('# Cantidad a Imprimir','Cantidad','1');
   if Trim(bultos) <> '' then
   begin
     lbFactura.Caption  := factura;
     lbBultos.Caption   := bultos;
     lbEntregar.Caption := QClientesCLI_NOMBRE.Value;
     lbDir.Caption      := QClientesCLI_DIRECCION.Value;
     lbTel.Caption      := QClientesCLI_TELEFONO.Value;
     lbLoc.Caption      := QClientesCLI_LOCALIDAD.Value;
     lbFecha.Caption    := 'FECHA: '+DateToStr(Date);
     QuickRep1.PrinterSetup;
     if trim(ncond) = '' then ncond := '1';
     a := 1;
     while a <= strtoint(ncond) do
     begin
       QuickRep1.Print;
       a := a + 1;
     end
   end;
end;

procedure TfrmClientes.btProvinciaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select pro_nombre, pro_codigo');
  Search.Query.add('from Provincias');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'pro_codigo';
  Search.Title := 'Listado de Provincias';
  if Search.execute then
  begin
    QClientesPRO_CODIGO.value := strtoint(Search.ValueField);
    dbProvincia.setfocus;
  end;
end;

procedure TfrmClientes.QClientesPRO_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QClientesPRO_CODIGO.isnull then
  begin
    Text := inttostr(QClientesPRO_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre from provincias');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and pro_codigo = :pro');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('pro').Value := QClientesPRO_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tProvincia.text := ''
    else
      tProvincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
  end
  else
    tProvincia.text := '';
end;

procedure TfrmClientes.QClientesAfterInsert(DataSet: TDataSet);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select count(*) as cant from parametros where par_empresa_1 = :emp1');
  dm.Query1.SQL.Add('or par_empresa_2 = :emp2');
  dm.Query1.Parameters.ParamByName('emp1').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('emp2').Value := dm.vp_cia;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cant').AsInteger > 0 then
  begin
    MessageDlg('NO SE PUEDE CREAR CLIENTES DESDE ESTA EMPRESA',mtError,[mbok],0);
    QClientes.Cancel;
  end;
  accion := 1;
end;

procedure TfrmClientes.QClientesAfterEdit(DataSet: TDataSet);
begin
  accion := 2;
end;

procedure TfrmClientes.bttipofacturaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select tip_nombre, tip_codigo');
  Search.Query.add('from tiponcf');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'tip_codigo';
  Search.Title := 'Tipos de NCF';
  if Search.execute then
  begin
    QClientestfa_codigo.value := strtoint(Search.ValueField);
    DBEdit39.setfocus;
  end;
end;

procedure TfrmClientes.QClientestfa_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QClientestfa_codigo.isnull then
  begin
    Text := inttostr(QClientestfa_codigo.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tip_nombre from tiponcf');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tip_codigo = :tfa');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('tfa').Value := QClientestfa_codigo.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      ttipofactura.text := ''
    else
      ttipofactura.text := dm.Query1.fieldbyname('tip_nombre').asstring;
  end
  else
    ttipofactura.text := '';
end;

procedure TfrmClientes.btrncClick(Sender: TObject);
begin
  Application.CreateForm(tfrmInformacionNCF, frmInformacionNCF);
  frmInformacionNCF.rnc := DBEdit3.Text;
  frmInformacionNCF.ShowModal;
  if MessageDlg('Desea actualizar los datos del cliente?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QClientescli_NOMBRE.Value := frmInformacionNCF.Query1.FieldByName('razon_social').AsString;
    QClientescli_DIRECCION.Value := frmInformacionNCF.Query1.FieldByName('direccion').AsString;
    QClientescli_LOCALIDAD.Value := frmInformacionNCF.Query1.FieldByName('urbanizacion').AsString+
                                       frmInformacionNCF.Query1.FieldByName('numero').AsString;
    QClientescli_TELEFONO.Value  := frmInformacionNCF.Query1.FieldByName('telefono').AsString;
  end;
  frmInformacionNCF.Release;
end;

procedure TfrmClientes.btcedulaClick(Sender: TObject);
begin
  Application.CreateForm(tfrmInformacionNCF, frmInformacionNCF);
  frmInformacionNCF.rnc := DBEdit10.Text;
  frmInformacionNCF.ShowModal;
  if MessageDlg('Desea actualizar los datos del cliente?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QClientescli_NOMBRE.Value := frmInformacionNCF.Query1.FieldByName('razon_social').AsString;
    QClientescli_DIRECCION.Value := frmInformacionNCF.Query1.FieldByName('direccion').AsString;
    QClientescli_LOCALIDAD.Value := frmInformacionNCF.Query1.FieldByName('urbanizacion').AsString+
                                       frmInformacionNCF.Query1.FieldByName('numero').AsString;
    QClientescli_TELEFONO.Value  := frmInformacionNCF.Query1.FieldByName('telefono').AsString;
  end;
  frmInformacionNCF.Release;

end;

procedure TfrmClientes.QContactosBeforePost(DataSet: TDataSet);
begin
  if QContactoscontacto_nombre.IsNull then
  begin
    MessageDlg('DEBE ESPECIFICAR EL NOMBRE',mtError,[mbok],0);
    DBEdit42.SetFocus;
    abort;
  end;
  if QContactos.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(ContactoID),0) as maximo');
    dm.Query1.SQL.Add('from clientes_contacto');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    QContactosContactoID.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmClientes.c_btpriorExecute(Sender: TObject);
begin
  if not QContactos.Bof then QContactos.Prior;
end;

procedure TfrmClientes.c_btnextExecute(Sender: TObject);
begin
  if not QContactos.Eof then QContactos.Next;
end;

procedure TfrmClientes.c_btinsertExecute(Sender: TObject);
begin
  DBEdit42.SetFocus;
  QContactos.Append;
end;

procedure TfrmClientes.c_bteditExecute(Sender: TObject);
begin
  DBEdit42.SetFocus;
  QContactos.Edit;
end;

procedure TfrmClientes.c_btdeleteExecute(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTE CONTACTO?',  mtConfirmation, [mbyes, mbno],0) = mryes then
    QContactos.delete;
end;

procedure TfrmClientes.c_btpostExecute(Sender: TObject);
begin
  QContactos.Post;
end;

procedure TfrmClientes.c_btcancelExecute(Sender: TObject);
begin
  QContactos.Cancel;
end;

procedure TfrmClientes.QContactosAfterPost(DataSet: TDataSet);
begin
  QContactos.UpdateBatch;
end;

procedure TfrmClientes.QContactosAfterDelete(DataSet: TDataSet);
begin
  QContactos.UpdateBatch;
end;

procedure TfrmClientes.dsContactosStateChange(Sender: TObject);
begin
  c_btinsert.Enabled := QContactos.State = dsBrowse;
  c_btedit.Enabled   := c_btinsert.Enabled;
  c_btdelete.Enabled := c_btinsert.Enabled;
  c_btpost.Enabled   := not c_btinsert.Enabled;
  c_btcancel.Enabled := not c_btinsert.Enabled;
  c_btprior.Enabled  := not c_btinsert.Enabled;
  c_btnext.Enabled   := not c_btinsert.Enabled;
end;

procedure TfrmClientes.btfacturaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('ID');
  Search.Query.clear;
  Search.Query.add('select substring(nombre,1,60) as nombre, facturaid');
  Search.Query.add('from factura_automatica');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'facturaid';
  Search.Title := 'Facturaci�n autom�tica';
  if Search.execute then
  begin
    QClientesfacturaid.value := strtoint(Search.ValueField);
    DBEdit51.setfocus;
  end;
end;

procedure TfrmClientes.QClientesfacturaidGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QClientesfacturaid.isnull then
  begin
    Text := inttostr(QClientesfacturaid.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select nombre from factura_automatica');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and facturaid = :fac');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('fac').Value := QClientesfacturaid.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tfactura.text := ''
    else
      tfactura.text := dm.Query1.fieldbyname('nombre').asstring;
  end
  else
    tfactura.text := '';
end;

procedure TfrmClientes.QClientesCLI_REFERENCIAChange(Sender: TField);
begin
  if (not QClientesCLI_REFERENCIA.IsNull) and (Trim(QClientesCLI_REFERENCIA.Value) <> '') then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select cli_referencia from clientes');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and cli_referencia = :ref');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('ref').Value  := trim(QClientesCLI_REFERENCIA.Value);
    Query1.Open;
    if Query1.RecordCount > 0 then
    begin
      MessageDlg('ESTE CLIENTE YA EXISTE',mtError,[mbok],0);
      QClientesCLI_REFERENCIA.value := '';
      Abort;
    end
    else
    begin
      if dm.QParametrospar_igualartelefonocliente.value = 'True' then
        QClientesCLI_TELEFONO.Value := QClientesCLI_REFERENCIA.Value;
    end;
  end;
end;

procedure TfrmClientes.QClientesCLI_RNCChange(Sender: TField);
begin
  if not QClientesCLI_RNC.IsNull then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select cli_rnc from clientes');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and cli_rnc = :rnc');
    if not QClientesCLI_CODIGO.IsNull then
      Query1.SQL.Add('and cli_codigo <> :cod');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('rnc').Value := trim(QClientesCLI_RNC.Value);
    if not QClientesCLI_CODIGO.IsNull then
      Query1.Parameters.ParamByName('cod').Value := QClientesCLI_CODIGO.AsInteger;
    Query1.Open;
    if Query1.RecordCount > 0 then
    begin
      if MessageDlg('EL RNC DEL CLIENTE YA EXISTE, DESEA CONTINUAR?',mtconfirmation, [mbyes,mbno],0) = mrno then
      Abort;
    end;
  end;
end;

procedure TfrmClientes.btMasterClick(Sender: TObject);
begin
  Search.Title := 'Listado de Clientes';
  Search.ResultField := 'cli_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.query.clear;
  Search.query.add('select cli_nombre, cli_codigo');
  Search.query.add('from clientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QClientescli_maestro.value := strtoint(search.valuefield);
end;

procedure TfrmClientes.QClientescli_maestroGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QClientescli_maestro.isnull then
  begin
    Text := QClientescli_maestro.AsString;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre from clientes');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
   dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
   dm.Query1.Parameters.parambyname('cod').Value := QClientescli_maestro.Value;

   dm.Query1.open;
   if dm.Query1.IsEmpty then
      tCliente.text := ''
    else
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring; //tfactura.text := dm.Query1.fieldbyname('nombre').asstring;
  end
  else
    tCliente.text := '';    
end;

procedure TfrmClientes.btnextExecute(Sender: TObject);
begin
  if not QClientes.eof then QClientes.next;
end;

procedure TfrmClientes.btpriorExecute(Sender: TObject);
begin
  if not QClientes.bof then QClientes.prior;
end;

procedure TfrmClientes.bBuscarAsegClick(Sender: TObject);
begin
  if dsClientes.State in [dsEdit, dsInsert] then begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select aseg_nombre, aseg_codigo');
  Search.Query.add('from Aseguradoras');
  Search.Query.add('where emple_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'aseg_Codigo';
  Search.Title := 'Listado de ASeguradoras';
  if Search.execute then
  begin
    QClientesASEG_CODIGO.value := strtoint(Search.ValueField);
    tdbASEG_CODIGO.setfocus;
  end;
  end;
end;

procedure TfrmClientes.CB_TIPO_SEGChange(Sender: TObject);
begin
if CB_TIPO_SEG.ItemIndex > 0 then
QClientesTIPO_SEG.Value := CB_TIPO_SEG.ItemIndex;
end;

procedure TfrmClientes.CB_TIPO_CAT_LICChange(Sender: TObject);
begin
if CB_TIPO_SEG.ItemIndex > 0 then
QClientesTIPO_CAT_LIC.Value := CB_TIPO_CAT_LIC.ItemIndex;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
PageControl1.ActivePageIndex := 0;
end;

procedure TfrmClientes.bNuevaAsegClick(Sender: TObject);
begin
  frmMain.ActivaForma(tfrmAseguradoras, tform(frmAseguradoras));
  frmAseguradoras.btInsertClick(Sender);
end;

procedure TfrmClientes.QClientesASEG_CODIGOValidate(Sender: TField);
begin
  with dm.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('select aseg_nombre nombre from Aseguradoras');
  SQL.Add('where emple_codigo = '+inttostr(dm.vp_cia));
  SQL.Add('and aseg_Codigo = '+inttostr(QClientesASEG_CODIGO.Value));
  Open;
  if not IsEmpty then
  tAseguradora.Text := fieldbyname('nombre').text;
  Close;
  End;
  


end;

procedure TfrmClientes.btfactura2Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('ID');
  Search.Query.clear;
  Search.Query.add('select substring(nombre,1,60) as nombre, facturaid');
  Search.Query.add('from factura_automatica');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'facturaid';
  Search.Title := 'Facturaci�n autom�tica';
  if Search.execute then
  begin
    QClientesfacturaid2.value := strtoint(Search.ValueField);
    dbedtfacturaid2.setfocus;
  end;
end;

procedure TfrmClientes.QClientesfacturaid2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QClientesfacturaid2.isnull then
  begin
    Text := inttostr(QClientesfacturaid2.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select nombre from factura_automatica');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and facturaid = :fac');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('fac').Value := QClientesfacturaid2.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tfactura2.text := ''
    else
      tfactura2.text := dm.Query1.fieldbyname('nombre').asstring;
  end
  else
    tfactura2.text := '';
end;

end.
