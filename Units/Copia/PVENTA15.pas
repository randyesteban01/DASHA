unit PVENTA15;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, Grids, DBGrids, Db,
  IBCustomDataSet, IBTable, IBUpdateSQL, IBQuery, ADODB,
  QuerySearchDlgADO, Spin, TeeProcs, TeEngine, Chart, DbChart, Series,
  Menus, ExtDlgs;

type
  TfrmProductos = class(TForm)
    Panel3: TPanel;
    btPost: TBitBtn;
    btCancel: TBitBtn;
    btClose: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Label10: TLabel;
    DBEdit2: TDBEdit;
    DBEdit12: TDBEdit;
    btFamilia: TSpeedButton;
    tFamilia: TEdit;
    lbFamilia: TLabel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    btColor: TSpeedButton;
    lbColor: TLabel;
    DBEdit20: TDBEdit;
    tColor: TEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    QProductos: TADOQuery;
    dsProductos: TDataSource;
    QProductosEMP_CODIGO: TIntegerField;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_RORIGINAL: TIBStringField;
    QProductosPRO_RFABRIC: TIBStringField;
    QProductosPRO_NOMBRE: TIBStringField;
    QProductosFAM_CODIGO: TIntegerField;
    QProductosCOL_CODIGO: TIntegerField;
    QProductosPRO_BARRA: TIBStringField;
    QProductosPRO_DESCMAX: TFloatField;
    QProductosPRO_ULTCOSTO: TFloatField;
    QProductosPRO_COSTO: TFloatField;
    QProductosPRO_PRECIO1: TFloatField;
    QProductosPRO_PRECIO2: TFloatField;
    QProductosPRO_PRECIO3: TFloatField;
    QProductosPRO_PRECIO4: TFloatField;
    QProductosPRO_DISPLAY: TIBStringField;
    QProductosPRO_STATUS: TIBStringField;
    QProductosPRO_INVINICIAL: TFloatField;
    QProductosPRO_EXISTENCIA: TFloatField;
    QProductosPRO_UBICACION: TIBStringField;
    QProductosPRO_STKMINIMO: TFloatField;
    QProductosPRO_STKMAXIMO: TFloatField;
    QProductosPRO_INVFISICO: TFloatField;
    QProductosPRO_PEDIDOPRV: TFloatField;
    QProductosPRO_PEDIDOCLI: TFloatField;
    QProductosPRO_CTAINVENT: TIBStringField;
    QProductosPRO_CTACOSTO: TIBStringField;
    Search: TQrySearchDlgADO;
    QProductosDEP_CODIGO: TIntegerField;
    dsProvee: TDataSource;
    QProductosPRO_ITBIS: TIBStringField;
    Label28: TLabel;
    DBEdit25: TDBEdit;
    Query1: TADOQuery;
    QProductosPRO_BENEFICIO: TFloatField;
    TabSheet5: TTabSheet;
    DBGrid3: TDBGrid;
    QVence: TADOQuery;
    QVenceEMP_CODIGO: TIntegerField;
    QVencePRO_CODIGO: TIntegerField;
    QVenceVEN_CANTPENDIENTE: TFloatField;
    QVenceVEN_CANTVENDIDA: TFloatField;
    QVenceVEN_FECHA: TDateTimeField;
    QVenceVEN_LOTE: TIntegerField;
    dsVence: TDataSource;
    QExist: TADOQuery;
    QExistALM_NOMBRE: TIBStringField;
    QExistEXI_CANTIDAD: TFloatField;
    dsExist: TDataSource;
    QExistEXI_FISICO: TFloatField;
    QProductosPRO_ESCALA: TIBStringField;
    QProductosPRO_SERVICIO: TIBStringField;
    ckServ: TDBCheckBox;
    TabSheet6: TTabSheet;
    gbprecios: TGroupBox;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    lbDepto: TLabel;
    DBEdit26: TDBEdit;
    btDepto: TSpeedButton;
    tDepto: TEdit;
    DBGrid5: TDBGrid;
    cbOpcion: TRadioGroup;
    Label13: TLabel;
    edOpcion: TEdit;
    QListado: TADOQuery;
    QListadoPRO_CODIGO: TIntegerField;
    QListadoPRO_RORIGINAL: TIBStringField;
    QListadoPRO_RFABRIC: TIBStringField;
    QListadoPRO_NOMBRE: TIBStringField;
    QListadoPRO_PRECIO1: TFloatField;
    QListadoPRO_PRECIO2: TFloatField;
    QListadoPRO_PRECIO3: TFloatField;
    QListadoPRO_PRECIO4: TFloatField;
    QListadoPRO_EXISTENCIA: TFloatField;
    QListadoPRO_UBICACION: TIBStringField;
    QListadoPRO_ULTCOSTO: TFloatField;
    dsListado: TDataSource;
    lbMarca: TLabel;
    btMarca: TSpeedButton;
    DBEdit13: TDBEdit;
    tMarca: TEdit;
    QProductosMAR_CODIGO: TIntegerField;
    QProductosPRO_COMISION: TFloatField;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    QProductosPRO_VENCE: TIBStringField;
    ckVecimiento: TDBCheckBox;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    SpeedButton1: TSpeedButton;
    TabSheet2: TTabSheet;
    sgCompras: TDBGrid;
    QCompras: TADOQuery;
    dsCompras: TDataSource;
    QComprasSUP_NOMBRE: TIBStringField;
    QComprasFAC_NUMERO: TIBStringField;
    QComprasFAC_FECHA: TDateTimeField;
    QComprasDET_COSTO: TFloatField;
    Label26: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    SpeedButton2: TSpeedButton;
    QProductosPRO_BENEFICIO2: TFloatField;
    QProductosPRO_BENEFICIO3: TFloatField;
    QProductosPRO_BENEFICIO4: TFloatField;
    QProductosPRO_USO: TIBStringField;
    QProductosSUP_CODIGO: TIntegerField;
    QProvee: TADOQuery;
    QProveeEMP_CODIGO: TIntegerField;
    QProveePRO_CODIGO: TIntegerField;
    QProveeSUP_CODIGO: TIntegerField;
    QProveeSUP_NOMBRE: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label31: TLabel;
    DBEdit28: TDBEdit;
    btProv: TSpeedButton;
    tProv: TEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Label7: TLabel;
    DBEdit31: TDBEdit;
    QProductosPRO_NUEVOUSADO: TIBStringField;
    DBRadioGroup1: TDBRadioGroup;
    ckServicio: TCheckBox;
    rgTipo: TRadioGroup;
    ckVence: TCheckBox;
    ckReorden: TCheckBox;
    edOpcion2: TEdit;
    btRefresh: TBitBtn;
    lbClave: TLabel;
    QCuentas: TADOQuery;
    QCuentasCAT_CUENTA: TIBStringField;
    QCuentasEMP_CODIGO: TIntegerField;
    QCuentasPRO_CODIGO: TIntegerField;
    QCuentasTFA_CODIGO: TIntegerField;
    QCuentasTFA_NOMBRE: TIBStringField;
    dsCuentas: TDataSource;
    btFind: TBitBtn;
    btInsert: TBitBtn;
    btEdit: TBitBtn;
    btDelete: TBitBtn;
    DBEdit10: TDBEdit;
    QListadoPRO_COSTO: TFloatField;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    QProductosPRO_COSTOUS: TFloatField;
    QProductosPRO_TASACOMPRA: TFloatField;
    QProductosPRO_TASAVENTA: TFloatField;
    QProductosPRO_PRECIOMENOR: TFloatField;
    QComprasDET_CANTIDAD: TFloatField;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    ckEscala: TDBCheckBox;
    QEscalas: TADOQuery;
    QEscalasALM_CODIGO: TIntegerField;
    QEscalasEMP_CODIGO: TIntegerField;
    QEscalasESC_ESCALA: TIBStringField;
    QEscalasESC_EXISTENCIA: TFloatField;
    QEscalasESC_SECUENCIA: TIntegerField;
    QEscalasPRO_CODIGO: TIntegerField;
    dsEscala: TDataSource;
    QEscalasALM_NOMBRE: TIBStringField;
    QProductosPRO_EXISTEMPAQUE: TFloatField;
    QProductosPRO_CANTEMPAQUE: TFloatField;
    Label34: TLabel;
    DBEdit33: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    QExistEXI_EMPAQUE: TFloatField;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    QProductosPRO_COSTOEMPAQUE: TFloatField;
    Label36: TLabel;
    DBEdit35: TDBEdit;
    QListadoPRO_COSTOEMPAQUE: TFloatField;
    QListadoPRO_EXISTEMPAQUE: TFloatField;
    QComprasDET_MEDIDA: TIBStringField;
    QCompetencia: TADOQuery;
    QCompetenciaEMP_CODIGO: TIntegerField;
    QCompetenciaPRO_CODIGO: TIntegerField;
    QCompetenciaPRO_PRECIOEMP: TFloatField;
    QCompetenciaPRO_PRECIOUND: TFloatField;
    QCompetenciaPRO_SECUENCIA: TIntegerField;
    dsCompetencia: TDataSource;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    Label18: TLabel;
    DBGrid8: TDBGrid;
    Label37: TLabel;
    btInsertaCom: TSpeedButton;
    btDelCom: TSpeedButton;
    QCombo: TADOQuery;
    QComboPRO_NOMBRE: TIBStringField;
    QComboCOM_CANTIDAD: TFloatField;
    QComboCOM_PRECIO: TFloatField;
    dsCombo: TDataSource;
    bteditCombo: TSpeedButton;
    QComboCOM_PRODUCTO: TIntegerField;
    QComboCOM_SECUENCIA: TIntegerField;
    QComboEMP_CODIGO: TIntegerField;
    QComboPRO_CODIGO: TIntegerField;
    DBCheckBox1: TDBCheckBox;
    QProductosPRO_COMBO: TIBStringField;
    QComboCOM_MEDIDA: TIBStringField;
    Label38: TLabel;
    DBEdit18: TDBEdit;
    QProductosPRO_INVINICIALEMP: TFloatField;
    QVenceVEN_CANTPENEMP: TFloatField;
    QVenceVEN_CANTVENDIDAEMP: TFloatField;
    QProductosPRO_STKMINIMOEMP: TFloatField;
    QProductosPRO_STKMAXIMOEMP: TFloatField;
    Label41: TLabel;
    DBEdit38: TDBEdit;
    QProductosPRO_PRECIOMENOREMP: TFloatField;
    TabSheet9: TTabSheet;
    DBGrid9: TDBGrid;
    DBText7: TDBText;
    btinsertaeq: TSpeedButton;
    bteliminaeq: TSpeedButton;
    QEquivalencia: TADOQuery;
    QEquivalenciaEMP_CODIGO: TIntegerField;
    QEquivalenciaPRO_CODIGO: TIntegerField;
    QEquivalenciaPRO_CODIGOEQUIVALENTE: TIntegerField;
    QEquivalenciaEQ_SECUENCIA: TIntegerField;
    QEquivalenciaPRO_NOMBRE: TIBStringField;
    dsEqui: TDataSource;
    QListadoFAM_NOMBRE: TIBStringField;
    QListadoMAR_NOMBRE: TIBStringField;
    QListadoDEP_NOMBRE: TIBStringField;
    QListadoCOL_NOMBRE: TIBStringField;
    Memo1: TMemo;
    QListadoPRO_NUEVOUSADO: TIBStringField;
    Query2: TADOQuery;
    QProductosPRO_ALMACENBAR: TIntegerField;
    QListadoPRO_ITBIS: TIBStringField;
    QCompetenciaPRO_COMPETENCIA: TStringField;
    TabSheet11: TTabSheet;
    PageControl2: TPageControl;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    DBGrid10: TDBGrid;
    QEstadisticaVenta: TADOQuery;
    QEstadisticaVentames: TStringField;
    QEstadisticaVentamonto: TBCDField;
    dsEstadisticaMes: TDataSource;
    SpeedButton4: TSpeedButton;
    spAno: TSpinEdit;
    Label42: TLabel;
    DBText8: TDBText;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    TrackBar1: TTrackBar;
    DBGrid11: TDBGrid;
    SpeedButton5: TSpeedButton;
    SpinEdit1: TSpinEdit;
    Label43: TLabel;
    DBChart2: TDBChart;
    PieSeries1: TPieSeries;
    TrackBar2: TTrackBar;
    dsEstCompras: TDataSource;
    QEstadisticaCompra: TADOQuery;
    StringField1: TStringField;
    BCDField1: TBCDField;
    QProductosMON_CODIGO: TIntegerField;
    QProductosPRO_COMISIONDESCUENTO: TBCDField;
    btvence: TBitBtn;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    QProductosPRO_CONTROLADO: TStringField;
    QProductosPRO_DETALLADO: TStringField;
    QProductospro_realizar_pedido: TStringField;
    QVencesup_codigo: TIntegerField;
    QVencesup_nombre: TStringField;
    QProductosCalcCosto: TFloatField;
    QProductosCalcCostoEmp: TFloatField;
    DBEdit42: TDBEdit;
    QProductosValor: TFloatField;
    QProductosValorEmp: TFloatField;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Label4: TLabel;
    tUsuario: TEdit;
    QProductosusu_codigo: TIntegerField;
    QProductospro_fecha_modifico: TDateTimeField;
    QEstadisticaVentacodmes: TIntegerField;
    QEstadisticaVentacantidad: TBCDField;
    QEstadisticaCompracantidad: TBCDField;
    Label20: TLabel;
    Label21: TLabel;
    SpeedButton6: TSpeedButton;
    edFamilia: TEdit;
    Edit1: TEdit;
    Label22: TLabel;
    SpeedButton7: TSpeedButton;
    edDepto: TEdit;
    Edit2: TEdit;
    Label27: TLabel;
    SpeedButton8: TSpeedButton;
    Edit3: TEdit;
    edMarca: TEdit;
    TabSheet10: TTabSheet;
    QProductospro_comentario: TMemoField;
    DBMemo1: TDBMemo;
    lbcomentario: TStaticText;
    QProductospro_foto: TStringField;
    TabSheet14: TTabSheet;
    Image1: TImage;
    PopupMenu1: TPopupMenu;
    Abrir1: TMenuItem;
    Quitarfoto1: TMenuItem;
    OpenDLG: TOpenPictureDialog;
    QListadoPRO_FOTO: TStringField;
    TabSheet15: TTabSheet;
    QProductospro_selectivo_ad: TBCDField;
    QProductospro_selectivo_con: TBCDField;
    DBEdit47: TDBEdit;
    Label46: TLabel;
    QProductospro_unidad_medida: TStringField;
    QProductospro_minimo_venta: TBCDField;
    QProductospro_volumen: TBCDField;
    TabSheet16: TTabSheet;
    DBGrid12: TDBGrid;
    QModificaciones: TADOQuery;
    QModificacionesFECHA: TDateTimeField;
    QModificacionesPRO_PRECIO1_ANT: TBCDField;
    QModificacionesPRO_PRECIO1_ACT: TBCDField;
    QModificacionesPRO_PRECIO2_ANT: TBCDField;
    QModificacionesPRO_PRECIO2_ACT: TBCDField;
    QModificacionesPRO_PRECIO3_ANT: TBCDField;
    QModificacionesPRO_PRECIO3_ACT: TBCDField;
    QModificacionesPRO_PRECIO4_ANT: TBCDField;
    QModificacionesPRO_PRECIO4_ACT: TBCDField;
    QModificacionesPRO_COSTOUN_ANT: TBCDField;
    QModificacionesPRO_COSTOUN_ACT: TBCDField;
    QModificacionesPRO_COSTOEM_ANT: TBCDField;
    QModificacionesPRO_COSTOEM_ACT: TBCDField;
    dsMod: TDataSource;
    TabSheet17: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label19: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBGrid6: TDBGrid;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit50: TDBEdit;
    DBText9: TDBText;
    DBText10: TDBText;
    SpeedButton10: TSpeedButton;
    QOfertas: TADOQuery;
    QOfertasemp_codigo: TIntegerField;
    QOfertaspro_codigo: TIntegerField;
    QOfertassecuencia: TIntegerField;
    QOfertascantidad: TBCDField;
    QOfertasprecio: TBCDField;
    dsOfertas: TDataSource;
    DBGrid13: TDBGrid;
    TabSheet18: TTabSheet;
    Label50: TLabel;
    DBGrid14: TDBGrid;
    btinsertadescuento: TSpeedButton;
    btdeletedescuento: TSpeedButton;
    DBText11: TDBText;
    QDescuentoTFA: TADOQuery;
    QDescuentoTFAtfa_nombre: TStringField;
    QDescuentoTFAdescuento: TBCDField;
    dsDescuentoTFA: TDataSource;
    QDescuentoTFAtfa_codigo: TIntegerField;
    DBGrid15: TDBGrid;
    Label51: TLabel;
    QSerie: TADOQuery;
    QSerieser_numero: TStringField;
    dsSerie: TDataSource;
    QComprasdet_oferta: TBCDField;
    Label52: TLabel;
    DBEdit51: TDBEdit;
    QOfertasregalo: TBCDField;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    QLiquidacion: TADOQuery;
    dsLiquidacion: TDataSource;
    QLiquidacionliq_numero: TIntegerField;
    QLiquidacionliq_fecha: TDateTimeField;
    QLiquidacionliq_agencia: TStringField;
    QLiquidacionliq_container: TStringField;
    QLiquidacionliq_factura: TStringField;
    QLiquidacionliq_taza: TBCDField;
    QLiquidacionusu_nombre: TStringField;
    QLiquidacionsup_nombre: TStringField;
    QLiquidacionliq_gastos: TBCDField;
    QLiquidacionent_numero: TIntegerField;
    QLiquidaciondet_cantidad: TBCDField;
    QLiquidaciondet_costo: TBCDField;
    QLiquidaciondet_costo_rd: TBCDField;
    QLiquidaciondet_peso_volumen: TBCDField;
    QLiquidaciondet_costounidad: TBCDField;
    QLiquidaciondet_medida: TStringField;
    QOfertasfecha_ini: TDateTimeField;
    QOfertasfecha_fin: TDateTimeField;
    QExistexi_minimo: TBCDField;
    QExistexi_maximo: TBCDField;
    Label3: TLabel;
    btgerente: TSpeedButton;
    DBEdit23: TDBEdit;
    tgerente: TEdit;
    QProductosger_codigo: TIntegerField;
    QProductosgon_codigo: TIntegerField;
    Label29: TLabel;
    btgondolero: TSpeedButton;
    DBEdit27: TDBEdit;
    tgondolero: TEdit;
    btactcosto: TBitBtn;
    QComboCOM_COSTO: TBCDField;
    QProductospro_patrocinador: TStringField;
    DBCheckBox4: TDBCheckBox;
    QProductosUnidadID: TStringField;
    DBEdit32: TDBEdit;
    btunidad: TSpeedButton;
    tunidad: TEdit;
    gunidades: TDBGrid;
    QUnidades: TADOQuery;
    QUnidadesemp_codigo: TIntegerField;
    QUnidadespro_codigo: TIntegerField;
    QUnidadesUnidadID: TStringField;
    QUnidadesCantidad: TBCDField;
    QUnidadesSecuencia: TIntegerField;
    QUnidadesNombre: TStringField;
    QUnidadesPrecio: TBCDField;
    QUnidadesCredito: TBCDField;
    QUnidadesMinimo: TBCDField;
    dsUnidades: TDataSource;
    QMedidas: TADOQuery;
    QMedidasUnidadID: TStringField;
    QMedidasNombre: TStringField;
    dsMedida: TDataSource;
    SpeedButton3: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QProductosAfterDelete(DataSet: TDataSet);
    procedure QProductosAfterPost(DataSet: TDataSet);
    procedure QProductosBeforePost(DataSet: TDataSet);
    procedure QProductosNewRecord(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsProductosStateChange(Sender: TObject);
    procedure QProductosFAM_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QProductosCOL_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btFamiliaClick(Sender: TObject);
    procedure btColorClick(Sender: TObject);
    procedure btDeptoClick(Sender: TObject);
    procedure QProductosDEP_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QProveeNewRecord(DataSet: TDataSet);
    procedure fbtinsertClick(Sender: TObject);
    procedure dsProveeStateChange(Sender: TObject);
    procedure fbtdeleteClick(Sender: TObject);
    procedure QProveeAfterPost(DataSet: TDataSet);
    procedure QProveeAfterDelete(DataSet: TDataSet);
    procedure QProductosPRO_RORIGINALChange(Sender: TField);
    procedure QProductosPRO_RFABRICChange(Sender: TField);
    procedure QProductosAfterInsert(DataSet: TDataSet);
    procedure QProductosAfterEdit(DataSet: TDataSet);
    procedure QProductosPRO_BENEFICIOChange(Sender: TField);
    procedure QProductosPRO_COSTOChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure dsProductosDataChange(Sender: TObject; Field: TField);
    procedure FormPaint(Sender: TObject);
    procedure cbOpcionClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure btMarcaClick(Sender: TObject);
    procedure QProductosMAR_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit23Enter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btProvClick(Sender: TObject);
    procedure QProductosSUP_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btInsertCtaClick(Sender: TObject);
    procedure btDeleteCtaClick(Sender: TObject);
    procedure QCuentasAfterPost(DataSet: TDataSet);
    procedure edOpcionKeyPress(Sender: TObject; var Key: Char);
    procedure edOpcion2KeyPress(Sender: TObject; var Key: Char);
    procedure rgTipoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QProductosPRO_BENEFICIO2Change(Sender: TField);
    procedure QProductosPRO_BENEFICIO3Change(Sender: TField);
    procedure QProductosPRO_BENEFICIO4Change(Sender: TField);
    procedure ckServicioClick(Sender: TObject);
    procedure ckVenceClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid7KeyPress(Sender: TObject; var Key: Char);
    procedure QCompetenciaAfterPost(DataSet: TDataSet);
    procedure QCompetenciaNewRecord(DataSet: TDataSet);
    procedure QCompetenciaBeforePost(DataSet: TDataSet);
    procedure btInsertaComClick(Sender: TObject);
    procedure bteditComboClick(Sender: TObject);
    procedure btDelComClick(Sender: TObject);
    procedure btinsertaeqClick(Sender: TObject);
    procedure bteliminaeqClick(Sender: TObject);
    procedure btalmabarClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btmonedaClick(Sender: TObject);
    procedure btvenceClick(Sender: TObject);
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure QProductosFAM_CODIGOChange(Sender: TField);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Abrir1Click(Sender: TObject);
    procedure Quitarfoto1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBGrid13KeyPress(Sender: TObject; var Key: Char);
    procedure QOfertasAfterPost(DataSet: TDataSet);
    procedure QOfertasAfterDelete(DataSet: TDataSet);
    procedure QOfertasBeforePost(DataSet: TDataSet);
    procedure QOfertasNewRecord(DataSet: TDataSet);
    procedure QProductosPRO_COSTOEMPAQUEChange(Sender: TField);
    procedure btinsertadescuentoClick(Sender: TObject);
    procedure btdeletedescuentoClick(Sender: TObject);
    procedure QProductosPRO_CANTEMPAQUEChange(Sender: TField);
    procedure QExistAfterInsert(DataSet: TDataSet);
    procedure btgerenteClick(Sender: TObject);
    procedure QProductosger_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btgondoleroClick(Sender: TObject);
    procedure QProductosgon_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btactcostoClick(Sender: TObject);
    procedure DBGrid5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btunidadClick(Sender: TObject);
    procedure QProductosUnidadIDGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btpreciosClick(Sender: TObject);
    procedure gunidadesKeyPress(Sender: TObject; var Key: Char);
    procedure QUnidadesBeforePost(DataSet: TDataSet);
    procedure QUnidadesNewRecord(DataSet: TDataSet);
    procedure QUnidadesAfterPost(DataSet: TDataSet);
    procedure QUnidadesAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    accion, TipoBusqueda : integer;
    Comision, Beneficio : Double;
    procedure RepBarra;
    procedure precios;
    function VerificaDuplicado(campo : string) : integer;
  end;

var
  frmProductos: TfrmProductos;

implementation

uses PVENTA33, PVENTA111, SIGMA01, SIGMA00, PVENTA126, DateUtils,
  PVENTA112, Math, PVENTA214;

{$R *.DFM}

procedure TfrmProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmProductos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmProductos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f2  then btpreciosClick(Self); 
end;

procedure TfrmProductos.QProductosAfterDelete(DataSet: TDataSet);
begin
  Qproductos.UpdateBatch;
end;

procedure TfrmProductos.QProductosAfterPost(DataSet: TDataSet);
begin
  Qproductos.UpdateBatch;

  if accion = 1 then
  begin
    //Insertando Existencias por Almacen
    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('execute pr_graba_prod :emp, :pro');
    Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    Query1.Parameters.parambyname('pro').Value := QProductosPRO_CODIGO.Value;
    Query1.ExecSQL;

    if (dm.QParametrosPAR_IMPCODIGOBARRA.Value = 'True') and
    (dm.QParametrosPAR_VENVERIFICA.Value <> '1') then
      if MessageDlg('DESEA IMPRIMIR EL CODIGO DE BARRA?',mtConfirmation,[mbyes,mbno],0) = mryes then
        RepBarra;

    QExist.Close;
    QExist.Open;
    QCuentas.Close;
    QCuentas.Open;
  end
  else
  begin
    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('execute pr_modifica_prod :emp, :pro');
    Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    Query1.Parameters.parambyname('pro').Value := QProductosPRO_CODIGO.Value;
    Query1.ExecSQL;

    QProvee.Close;
    QProvee.Open;
  end;
end;

procedure TfrmProductos.QProductosBeforePost(DataSet: TDataSet);
begin
  if (VerificaDuplicado('O') = 1) and ((not QProductosPRO_RORIGINAL.IsNull) and (trim(QProductosPRO_RORIGINAL.Value)<>'')) then
  begin
    showmessage('REFERENCIA ORIGINAL YA EXISTE');
    DBEdit2.SetFocus;
    abort;
  end;

  if (VerificaDuplicado('F') = 1) and ((not QProductosPRO_RFABRIC.IsNull) and (trim(QProductosPRO_RFABRIC.Value)<>'')) then
  begin
    showmessage('REFERENCIA FABRICANTE YA EXISTE');
    DBEdit24.SetFocus;
    abort;
  end;

  QProductosusu_codigo.Value := dm.Usuario;
  QProductospro_fecha_modifico.Value := Now;

  if QProductosPRO_INVINICIALEMP.IsNull then
     QProductosPRO_INVINICIALEMP.Value := 0;

  if QProductosPRO_INVINICIAL.IsNull then
     QProductosPRO_INVINICIAL.Value := 0;

  if QProductosPRO_CANTEMPAQUE.IsNull then
     QProductosPRO_CANTEMPAQUE.Value := 0;

  if QProductosPRO_EXISTEMPAQUE.IsNull then
     QProductosPRO_EXISTEMPAQUE.Value := 0;

  if dm.QParametrosPAR_NUEVOUSADO.Value = 'True' then
    if QProductosPRO_NUEVOUSADO.IsNull then
    begin
      MessageDlg('DEBE ESPECIFICAR SI ES NUEVO O USADO',mtError, [mbok],0);
      Abort;
    end;

  if trim(QProductosPRO_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit10.setfocus;
    abort;
  end;
  if QProductos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(pro_codigo),0) as maximo');
    dm.query1.sql.add('from productos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.query1.open;
    QProductosPRO_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
    QProductosPRO_EXISTENCIA.value   := QProductosPRO_INVINICIAL.value;
    QProductosPRO_EXISTEMPAQUE.Value := QProductosPRO_INVINICIALEMP.Value;

    if (QProductosPRO_EXISTEMPAQUE.Value > 0) and (QProductosPRO_CANTEMPAQUE.Value <= 0) then
    begin
      MessageDlg('DEBE ESPECIFICAR LA CANTIDAD POR EMPAQUE',mtError,[mbok],0);
      DBEdit33.SetFocus;
      Abort;
    end;

    if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
      QProductosPRO_RORIGINAL.Value := IntToStr(QProductosPRO_CODIGO.Value);

    // Insertanto en la tabla de proveedores
    if not QProductosSUP_CODIGO.IsNull then
    begin
      QProvee.append;
      QProveeSUP_CODIGO.value := QProductosSUP_CODIGO.Value;
      QProveeSUP_NOMBRE.value := tProv.Text;
      QProvee.Post;
    end;
  end;
  if dm.QParametrosPAR_DEBAJOCOSTO.Value <> 'True' then
  begin
    if not QProductosPRO_COSTO.IsNull then
    begin
      if (QProductosPRO_PRECIO1.Value < QProductosPRO_COSTO.Value)
      and (QProductosPRO_PRECIO1.value > 0) then
      begin
        MessageDlg('LOS PRECIOS ESPECIFICADOS EN EL PRODUCTO'+#13+
                   'NO PUEDEN SER MENOR QUE EL COSTO, DEBIDO'+#13+
                   'A QUE DEBE DE HABER UN MARGEN MINIMO DE'+#13+
                   'BENEFICIO.',mtError,[mbok],0);
        abort;
      end;
      if (QProductosPRO_PRECIO2.Value < QProductosPRO_COSTO.Value)
      and (QProductosPRO_PRECIO2.Value > 0) then
      begin
        MessageDlg('LOS PRECIOS ESPECIFICADOS EN EL PRODUCTO'+#13+
                   'NO PUEDEN SER MENOR QUE EL COSTO, DEBIDO'+#13+
                   'A QUE DEBE DE HABER UN MARGEN MINIMO DE'+#13+
                   'BENEFICIO.',mtError,[mbok],0);
        abort;
      end;
      if (QProductosPRO_PRECIO3.Value < QProductosPRO_COSTO.Value)
      and (QProductosPRO_PRECIO3.Value > 0) then
      begin
        MessageDlg('LOS PRECIOS ESPECIFICADOS EN EL PRODUCTO'+#13+
                   'NO PUEDEN SER MENOR QUE EL COSTO, DEBIDO'+#13+
                   'A QUE DEBE DE HABER UN MARGEN MINIMO DE'+#13+
                   'BENEFICIO.',mtError,[mbok],0);
        abort;
      end;
      if (QProductosPRO_PRECIO4.Value < QProductosPRO_COSTO.Value)
      and (QProductosPRO_PRECIO4.Value > 0) then
      begin
        MessageDlg('LOS PRECIOS ESPECIFICADOS EN EL PRODUCTO'+#13+
                   'NO PUEDEN SER MENOR QUE EL COSTO, DEBIDO'+#13+
                   'A QUE DEBE DE HABER UN MARGEN MINIMO DE'+#13+
                   'BENEFICIO.',mtError,[mbok],0);
        abort;
      end;
    end;
  end;

  if QProductos.State = dsInsert then
  begin
    if dm.QParametrosPAR_IGUALAREF.Value = 'O' then
      QProductosPRO_RORIGINAL.Value := IntToStr(QProductosPRO_CODIGO.Value)
    else if dm.QParametrosPAR_IGUALAREF.Value = 'F' then
      QProductosPRO_RFABRIC.Value := IntToStr(QProductosPRO_CODIGO.Value);
  end;
end;

procedure TfrmProductos.QProductosNewRecord(DataSet: TDataSet);
begin
  QProductospro_patrocinador.Value := 'False';
  QProductospro_beneficio.Value := dm.QParametrospar_beneficio.Value;
  QProductospro_realizar_pedido.Value := 'False';
  QProductosPRO_CONTROLADO.Value := 'False';
  QProductosPRO_DETALLADO.Value  := 'False';
  QPRoductosPRO_COMBO.Value := 'False';
  QProductosPRO_COSTO.Value := 0;
  QProductosPRO_COSTOEMPAQUE.Value := 0;
  QProductosPRO_EXISTEMPAQUE.Value := 0;
  QProductosPRO_CANTEMPAQUE.Value  := 0;
  QProductosEMP_CODIGO.value    := dm.QParametrosPAR_INVEMPRESA.Value;
  QProductosPRO_PEDIDOPRV.Value := 0;
  QProductosPRO_PEDIDOCLI.Value := 0;
  QProductosPRO_STATUS.value := 'ACT';
  QProductosPRO_EXISTENCIA.value := 0;
  QProductosPRO_INVINICIAL.value := 0;
  QProductosPRO_INVINICIALEMP.Value := 0;
  QPRoductosPRO_ITBIS.value      := dm.QParametrosPAR_ITBISDEFECTO.Value;
  QProductosPRO_ESCALA.Value     := 'False';
  QProductosPRO_SERVICIO.Value   := 'False';
  QProductosPRO_VENCE.value      := 'False';
  QProductosPRO_CTAINVENT.Value  := dm.QContabPAR_CTAINVENT.Value;
  QProductosPRO_CTACOSTO.Value   := dm.QContabPAR_CTACOSTO.Value;
  tFamilia.text := '';
  tColor.text   := '';
end;

procedure TfrmProductos.btPostClick(Sender: TObject);
begin
  Qproductos.post;

end;

procedure TfrmProductos.btCancelClick(Sender: TObject);
begin
   QProductos.cancel;
end;

procedure TfrmProductos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('SELECT * FROM PR_BUSCA_MOV_PROD (:EMP, :PRO)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.FieldByName('tiene').AsString = 'S' then
    begin
      MessageDlg('EXISTEN '+dm.Query1.FieldByName('movimiento').AsString+' QUE YA '+
      'TIENEN ESTE PRODUCTO.',mtError, [mbno], 0);
    end
    else
    begin
      QProductos.Delete;
      //Eliminando Existencias
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('execute pr_elimina_prod :emp, :pro');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
      dm.Query1.ExecSQL;
    end;
  end;
end;

procedure TfrmProductos.btEditClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select alm_codigo from almacen');
  dm.Query1.SQL.Add('where emp_Codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount = 0 then
    MessageDlg('DEBE DE CREAR LOS ALMACENES PRIMERO',mtError,[mbok],0)
  else
  begin
    PageControl1.ActivePageIndex := 0;
    QProductos.edit;
    DBEdit28.setfocus;
  end;
end;

procedure TfrmProductos.btInsertClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select alm_codigo from almacen');
  dm.Query1.SQL.Add('where emp_Codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount = 0 then
    MessageDlg('DEBE DE CREAR LOS ALMACENES PRIMERO',mtError,[mbok],0)
  else
  begin
    PageControl1.ActivePageIndex := 0;
    QProductos.insert;
    DBEdit22.setfocus;
  end;
end;

procedure TfrmProductos.btFindClick(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    QProductos.Close;
    QProductos.Parameters.ParamByName('prod').Value := frmBuscaProducto.QProductosPRO_CODIGO.value;
    QProductos.Open;
  end;
  frmBuscaProducto.release;
  PageControl1.ActivePageIndex := 0;
  DBEdit10.SetFocus;
end;

procedure TfrmProductos.btPriorClick(Sender: TObject);
begin
  if not QProductos.bof then
    QProductos.prior;
end;

procedure TfrmProductos.btNextClick(Sender: TObject);
begin
  if not QProductos.eof then
    QProductos.next;
end;

procedure TfrmProductos.FormActivate(Sender: TObject);
begin
  btactcosto.Visible := btEdit.Visible;

  DBGrid5.Columns[15].Title.Caption := dm.QParametrospar_nombre_familia.Value;
  DBGrid5.Columns[16].Title.Caption := dm.QParametrospar_nombre_depto.Value;
  DBGrid5.Columns[17].Title.Caption := dm.QParametrospar_nombre_marca.Value;
  DBGrid5.Columns[18].Title.Caption := dm.QParametrospar_nombre_color.Value;

  if (not dm.QParametrospar_nombre_familia.IsNull) and (dm.QParametrospar_nombre_familia.Value <> '') then
    lbFamilia.Caption := dm.QParametrospar_nombre_familia.Value;

  if (not dm.QParametrospar_nombre_depto.IsNull) and (dm.QParametrospar_nombre_depto.Value <> '') then
    lbDepto.Caption := dm.QParametrospar_nombre_depto.Value;

  if (not dm.QParametrospar_nombre_marca.IsNull) and (dm.QParametrospar_nombre_marca.Value <> '') then
    lbMarca.Caption := dm.QParametrospar_nombre_marca.Value;

  if (not dm.QParametrospar_nombre_color.IsNull) and (dm.QParametrospar_nombre_color.Value <> '') then
    lbColor.Caption := dm.QParametrospar_nombre_color.Value;

  frmMain.ExportXLS.FileName := 'Productos.XLS';
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid5;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  if not QProductos.active then
  begin
    QProductos.Parameters.ParamByName('prod').Value := -1;
    QProductos.open;
    QCombo.Open;
    QExist.Open;
    QProvee.open;
    QVence.Open;
    //QCuentas.Open;
    QEscalas.Open;
    QCompetencia.Open;
    QEquivalencia.Open;
    QModificaciones.Open;
    QOfertas.Open;
    QSerie.Open;
    QLiquidacion.Open;
    QMedidas.Open;
    QUnidades.Open;

    QDescuentoTFA.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QDescuentoTFA.Open;
  end;
end;

procedure TfrmProductos.dsProductosStateChange(Sender: TObject);
begin
  btInsert.enabled    := dsProductos.State = dsbrowse;
  btEdit.enabled      := btInsert.enabled;
  btDelete.enabled    := btInsert.enabled;
  btPost.enabled      := not btInsert.enabled;
  btCancel.enabled    := not btInsert.enabled;
  btFind.enabled      := btInsert.enabled;
  btFamilia.enabled   := not btInsert.enabled;
  btunidad.enabled    := not btInsert.enabled;
  btDepto.enabled     := not btInsert.enabled;
  btColor.enabled     := not btInsert.enabled;
  btMarca.enabled     := not btInsert.enabled;
  btgerente.enabled   := not btInsert.enabled;
  btgondolero.enabled := not btInsert.enabled;
  DBEdit22.Enabled    := dsProductos.State = dsInsert;
  DBEdit18.Enabled    := dsProductos.State = dsInsert;
  btProv.Enabled      := not btInsert.enabled;
  Abrir1.Enabled      := not btInsert.Enabled;
  Quitarfoto1.Enabled := not btInsert.Enabled;
  btinsertadescuento.Enabled := btInsert.Enabled;
  btdeletedescuento.Enabled  := btInsert.Enabled;
end;

procedure TfrmProductos.QProductosFAM_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProductosFAM_CODIGO.isnull then
  begin
    Text := inttostr(QProductosFAM_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fam_nombre, fam_comision, fam_beneficio from familias');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and fam_Codigo = :fam');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.Parameters.parambyname('fam').Value := QProductosFAM_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
    begin
      tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
      Comision := dm.Query1.fieldbyname('fam_comision').AsFloat;
      Beneficio := dm.Query1.fieldbyname('fam_beneficio').AsFloat;
    end
    else
      tFamilia.text := '';
  end
  else
    tFamilia.text := '';
end;

procedure TfrmProductos.QProductosCOL_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProductosCOL_CODIGO.isnull then
  begin
    text := inttostr(QProductosCOL_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select col_nombre from colores');
    dm.Query1.sql.add('where col_codigo = :color');
    dm.Query1.Parameters.parambyname('color').Value := QProductosCOL_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tColor.text := dm.Query1.fieldbyname('col_nombre').asstring
    else
      tColor.text := '';
  end
  else
    tColor.text := '';
end;

procedure TfrmProductos.btFamiliaClick(Sender: TObject);
begin
  Search.Title := 'Listado de '+dm.QParametrospar_nombre_familia.Value;
  Search.ResultField := 'fam_codigo';
  Search.query.clear;
  Search.query.add('select fam_nombre, fam_codigo');
  Search.query.add('from familias');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QProductosFAM_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmProductos.btColorClick(Sender: TObject);
begin
  Search.Title := 'Listado de '+dm.QParametrospar_nombre_color.Value;
  Search.ResultField := 'col_codigo';
  Search.query.clear;
  Search.query.add('select col_nombre, col_codigo');
  Search.query.add('from colores');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QProductosCOL_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmProductos.btDeptoClick(Sender: TObject);
begin
  Search.Title := 'Listado de '+dm.QParametrospar_nombre_depto.Value;
  Search.ResultField := 'dep_codigo';
  Search.query.clear;
  Search.query.add('select dep_nombre, dep_codigo');
  Search.query.add('from departamentos');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QProductosDEP_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmProductos.QProductosDEP_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProductosDEP_CODIGO.isnull then
  begin
    text := inttostr(QProductosDEP_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select dep_nombre from departamentos');
    dm.Query1.sql.add('where dep_codigo = :color');
    dm.Query1.sql.add('and emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('color').Value := QProductosDEP_CODIGO.value;
    dm.Query1.Parameters.parambyname('emp').Value   := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring
    else
      tDepto.text := '';
  end
  else
    tDepto.text := '';
end;

procedure TfrmProductos.QProveeNewRecord(DataSet: TDataSet);
begin
  QProveeEMP_CODIGO.value := dm.QParametrosPAR_INVEMPRESA.value;
  QProveePRO_CODIGO.value := QProductosPRO_CODIGO.value;
end;

procedure TfrmProductos.fbtinsertClick(Sender: TObject);
begin
  Search.Title := 'Listado de Proveedores';
  Search.ResultField := 'sup_codigo';
  Search.query.clear;
  Search.query.add('select sup_nombre, sup_codigo');
  Search.query.add('from proveedores');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.query.add('and sup_codigo not in (select sup_codigo');
  Search.query.add('from PRODPROVEEDORES');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.query.add('and pro_codigo = '+inttostr(QProductosPRO_CODIGO.value)+')');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
  begin
     QProvee.append;
     QProveeSUP_CODIGO.value := strtoint(search.valuefield);
     dm.Query1.close;
     dm.Query1.sql.clear;
     dm.Query1.sql.add('select sup_nombre');
     dm.Query1.sql.add('from proveedores');
     dm.Query1.sql.add('where emp_codigo = :emp');
     dm.Query1.sql.add('and sup_codigo = :sup');
     dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
     dm.Query1.Parameters.parambyname('sup').Value := QProveeSUP_CODIGO.value;
     dm.Query1.open;
     QProveeSUP_NOMBRE.value := dm.Query1.fieldbyname('sup_nombre').asstring;
     QProvee.Post;
  end;
end;

procedure TfrmProductos.dsProveeStateChange(Sender: TObject);
begin
  //fbtInsert.enabled  := dsProvee.State = dsbrowse;
  //fbtDelete.enabled  := fbtInsert.enabled;
end;

procedure TfrmProductos.fbtdeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QProvee.delete;
end;

procedure TfrmProductos.QProveeAfterPost(DataSet: TDataSet);
begin
  QProvee.UpdateBatch;
end;

procedure TfrmProductos.QProveeAfterDelete(DataSet: TDataSet);
begin
  QProvee.UpdateBatch;
end;

procedure TfrmProductos.QProductosPRO_RORIGINALChange(Sender: TField);
begin
  if (not QProductosPRO_RORIGINAL.isnull) and (Trim(QProductosPRO_RORIGINAL.Value) <> '') then
  begin
    if VerificaDuplicado('O') = 1 then
    begin
      showmessage('ESTA REFERENCIA YA EXISTE');
      abort;
    end;
  end;
end;

procedure TfrmProductos.QProductosPRO_RFABRICChange(Sender: TField);
begin
  if (not QProductosPRO_RFABRIC.isnull) and (Trim(QProductosPRO_RFABRIC.Value) <> '') then
  begin
    if VerificaDuplicado('F') = 1 then
    begin
      showmessage('ESTA REFERENCIA YA EXISTE');
      abort;
    end;
  end;
end;

procedure TfrmProductos.QProductosAfterInsert(DataSet: TDataSet);
begin
  accion := 1;
end;

procedure TfrmProductos.QProductosAfterEdit(DataSet: TDataSet);
begin
  accion := 2;
end;

procedure TfrmProductos.QProductosPRO_BENEFICIOChange(Sender: TField);
begin
  Precios;
end;

procedure TfrmProductos.QProductosPRO_COSTOChange(Sender: TField);
begin
  Precios;
end;

procedure TfrmProductos.FormCreate(Sender: TObject);
var
  a : integer;
begin
  {gbprecios.Visible := dm.QParametrospar_inv_unidad_medida.Value <> 'True';
  btprecios.Visible := dm.QParametrospar_inv_unidad_medida.Value = 'True';}

  spAno.Value := YearOf(date);
  spinEdit1.Value := YearOf(date);

  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
  fecha1.Date := date;
  fecha2.Date := date;
  memo1.Lines := QListado.SQL;
end;

procedure TfrmProductos.dsProductosDataChange(Sender: TObject;
  Field: TField);
var
  Precio : String;
  a : Integer;
begin
  lbcomentario.Visible := Trim(QProductospro_comentario.Value) <> '';
  if not QProductosusu_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select usu_nombre from usuarios');
    dm.Query1.SQL.Add('where usu_codigo = :usu');
    dm.Query1.Parameters.ParamByName('usu').Value := QProductosusu_codigo.Value;
    dm.Query1.Open;
    if not dm.Query1.FieldByName('usu_nombre').IsNull then
      if not Qproductospro_fecha_modifico.IsNull then
        tUsuario.Text := dm.Query1.FieldByName('usu_nombre').Value+' '+DateTimeToStr(Qproductospro_fecha_modifico.Value);
  end
  else
    tUsuario.Text := '';

  if QProductosPRO_PRECIO1.Value > 0 then
  begin
    lbClave.Caption := '';
    Precio := Format('%n',[QProductosPRO_PRECIO1.Value]);
    For a := 1 To Length(Precio) do
    begin
      if Copy(Precio, a, 1) = '0' then
        lbClave.Caption := lbClave.Caption + dm.QParametrosPAR_PRECIOLETRA_0.Value;
      if Copy(Precio, a, 1) = '1' then
        lbClave.Caption := lbClave.Caption + dm.QParametrosPAR_PRECIOLETRA_1.Value;
      if Copy(Precio, a, 1) = '2' then
        lbClave.Caption := lbClave.Caption + dm.QParametrosPAR_PRECIOLETRA_2.Value;
      if Copy(Precio, a, 1) = '3' then
        lbClave.Caption := lbClave.Caption + dm.QParametrosPAR_PRECIOLETRA_3.Value;
      if Copy(Precio, a, 1) = '4' then
        lbClave.Caption := lbClave.Caption + dm.QParametrosPAR_PRECIOLETRA_4.Value;
      if Copy(Precio, a, 1) = '5' then
        lbClave.Caption := lbClave.Caption + dm.QParametrosPAR_PRECIOLETRA_5.Value;
      if Copy(Precio, a, 1) = '6' then
        lbClave.Caption := lbClave.Caption + dm.QParametrosPAR_PRECIOLETRA_6.Value;
      if Copy(Precio, a, 1) = '7' then
        lbClave.Caption := lbClave.Caption + dm.QParametrosPAR_PRECIOLETRA_7.Value;
      if Copy(Precio, a, 1) = '8' then
        lbClave.Caption := lbClave.Caption + dm.QParametrosPAR_PRECIOLETRA_8.Value;
      if Copy(Precio, a, 1) = '9' then
        lbClave.Caption := lbClave.Caption + dm.QParametrosPAR_PRECIOLETRA_9.Value;
    end;
  end
  else
    lbClave.Caption    := '';
  DBEdit19.Enabled     := QProductosPRO_SERVICIO.Value = 'False';
  DBEdit15.Enabled     := QProductosPRO_SERVICIO.Value = 'False';
  DBEdit16.Enabled     := QProductosPRO_SERVICIO.Value = 'False';
  DBEdit36.Enabled     := QProductosPRO_SERVICIO.Value = 'False';
  DBEdit37.Enabled     := QProductosPRO_SERVICIO.Value = 'False';
  btInsertaCom.Enabled := QProductosPRO_COMBO.Value = 'True';
  bteditCombo.Enabled  := QProductosPRO_COMBO.Value = 'True';
  btDelCom.Enabled     := QProductosPRO_COMBO.Value = 'True';
  btvence.Enabled      := QProductosPRO_VENCE.Value = 'True';

  if Trim(Qproductospro_foto.Value) <> '' then
    Image1.Picture.LoadFromFile(Qproductospro_foto.Value)
  else
    Image1.Picture := nil;
end;

procedure TfrmProductos.FormPaint(Sender: TObject);
begin
  frmProductos.top  := 2;
  frmProductos.left := 2;
end;

procedure TfrmProductos.cbOpcionClick(Sender: TObject);
begin
  edOpcion.SetFocus;
end;

procedure TfrmProductos.DBGrid5DblClick(Sender: TObject);
begin
  QProductos.Cancel;
  QProductos.Close;
  QProductos.Parameters.ParamByName('prod').Value := QListadoPRO_CODIGO.Value;
  QProductos.Open;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmProductos.btMarcaClick(Sender: TObject);
begin
  Search.Title := 'Listado de Marcas'+dm.QParametrospar_nombre_marca.Value;
  Search.ResultField := 'mar_codigo';
  Search.query.clear;
  Search.query.add('select mar_nombre, mar_codigo');
  Search.query.add('from marcas');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QProductosMAR_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmProductos.QProductosMAR_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProductosMAR_CODIGO.isnull then
  begin
    text := inttostr(QProductosMAR_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mar_nombre from marcas');
    dm.Query1.sql.add('where mar_codigo = :marca');
    dm.Query1.Parameters.parambyname('marca').Value := QProductosMAR_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tMarca.text := dm.Query1.fieldbyname('mar_nombre').asstring
    else
      tMarca.text := '';
  end
  else
    tMarca.text := '';
end;

procedure TfrmProductos.RepBarra;
var
  ar : textfile;
begin
  frmMain.ActivaForma(tfrmRepCodigoBarra, Tform(frmRepCodigoBarra));
  if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
    frmRepCodigoBarra.edProd.Text := IntToStr(QProductosPRO_CODIGO.Value)
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
    frmRepCodigoBarra.edProd.Text := QProductosPRO_RORIGINAL.Value
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
    frmRepCodigoBarra.edProd.Text := QProductosPRO_RFABRIC.Value;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select pro_nombre, pro_codigo, pro_rfabric,');
  dm.Query1.sql.add('pro_roriginal, pro_precio1 from productos');
  dm.Query1.sql.add('where emp_codigo = :emp');
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     dm.Query1.sql.add('and pro_codigo = '+frmRepCodigoBarra.edProd.text)
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     dm.Query1.sql.add('and pro_rfabric = '+#39+frmRepCodigoBarra.edProd.text+#39)
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     dm.Query1.sql.add('and pro_roriginal = '+#39+frmRepCodigoBarra.edProd.text+#39);
  dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
  dm.Query1.open;
  frmRepCodigoBarra.tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
  frmRepCodigoBarra.prod := dm.Query1.FieldByName('pro_codigo').asinteger;
  frmRepCodigoBarra.oref := dm.Query1.FieldByName('pro_roriginal').AsString;
  frmRepCodigoBarra.fref := dm.Query1.FieldByName('pro_rfabric').AsString;
  frmRepCodigoBarra.Precio := dm.Query1.FieldByName('pro_precio1').AsFloat;
  frmRepCodigoBarra.edCantidad.Text := IntToStr(Trunc(QProductosPRO_INVINICIAL.Value));
  frmRepCodigoBarra.edCantidad.SetFocus;

{  AssignFile(ar, 'c:\imp.bat');
  rewrite(ar);
  writeln(ar, 'type c:\t.txt > PRN');
  closefile(ar);

  assignfile(ar, 'c:\t.txt');
  rewrite(ar);
  writeln(ar,'q288');
  writeln(ar,'Q152,40');
  writeln(ar,'N');
  writeln(ar,'ZT');
  writeln(ar,'A25,02,0,1,1,2,N,'+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+#34);
  writeln(ar,'A25,25,0,1,1,1,N,'+#34+dm.QEmpresasEMP_TELEFONO.value+#34);
  if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
  begin
    writeln(ar,'B20,38,0,1,2,3,45,N,'+#34+inttostr(QProductosPRO_CODIGO.Value)+#34);
    writeln(ar,'A20,87,0,1,1,1,N,'+#34+inttostr(QProductosPRO_CODIGO.Value)+#34);
  end
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
  begin
    writeln(ar,'B20,38,0,1,2,3,45,N,'+#34+QProductosPRO_RORIGINAL.Value+#34);
    writeln(ar,'A20,87,0,1,1,1,N,'+#34+QProductosPRO_RORIGINAL.Value+#34);
  end
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
  begin
    writeln(ar,'B20,38,0,1,2,3,45,N,'+#34+QProductosPRO_RFABRIC.Value+#34);
    writeln(ar,'A20,87,0,1,1,1,N,'+#34+QProductosPRO_RFABRIC.Value+#34);
  end;
  writeln(ar,'A20,100,0,1,1,1,N,'+#34+copy(QProductosPRO_NOMBRE.Value,1,24)+#34);
  writeln(ar,'A20,115,0,1,1,2,N,'+#34+'RD$'+format('%n',[QProductosPRO_PRECIO1.Value])+#34);
  writeln(ar,'P'+IntToStr(Trunc(QProductosPRO_INVINICIAL.Value)));
  closefile(ar);

  winexec('c:\imp.bat',0);}
end;

procedure TfrmProductos.SpeedButton1Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from provence');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.SQL.Add('and ven_lote = :lot');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('lot').Value := QVenceVEN_LOTE.Value;
    dm.Query1.ExecSQL;
    QVence.Close;
    QVence.Open;
  end;
end;

procedure TfrmProductos.DBEdit23Enter(Sender: TObject);
begin
  //DBGrid1.SetFocus;
end;

procedure TfrmProductos.SpeedButton2Click(Sender: TObject);
begin
  QCompras.Close;
  QCompras.Parameters.ParamByName('emp').Value       := dm.QEmpresasEMP_CODIGO.Value;
  QCompras.Parameters.ParamByName('fecha1').DataType := ftDate;
  QCompras.Parameters.ParamByName('fecha2').DataType := ftDate;
  QCompras.Parameters.ParamByName('fecha1').Value    := Fecha1.Date;
  QCompras.Parameters.ParamByName('fecha2').Value    := Fecha2.Date;
  QCompras.Open;
  sgCompras.SetFocus;
end;

procedure TfrmProductos.btRefreshClick(Sender: TObject);
begin
  if trim(edOpcion2.Text) = '' then
  begin
    if Trim(edOpcion.Text) = '' then
      edOpcion.Text := '%'
    else
    begin
      if Pos('%',Trim(edOpcion.text)) = 0 then
        edOpcion.text := edOpcion.text + '%';
    end;
  end;
  QListado.close;
  QListado.sql.clear;
  QListado.sql := memo1.Lines;
  if ckServicio.Checked then QListado.sql.add('and p.pro_servicio = '+#39+'True'+#39);
  if ckVence.Checked    then QListado.sql.add('and p.pro_vence = '+#39+'True'+#39);

  if Trim(edFamilia.Text) <> '' then
     QListado.sql.add('and p.fam_codigo = '+Trim(edFamilia.Text));

  if Trim(edDepto.Text) <> '' then
     QListado.sql.add('and p.dep_codigo = '+Trim(edDepto.Text));

  if Trim(edMarca.Text) <> '' then
     QListado.sql.add('and p.mar_codigo = '+Trim(edMarca.Text));

  if rgTipo.ItemIndex = 1 then
    QListado.sql.add('and p.pro_nuevousado ='+#39+'N'+#39)
  else if rgTipo.ItemIndex = 2 then
    QListado.sql.add('and p.pro_nuevousado = '+#39+'U'+#39);
  if cbOpcion.itemindex = 0 then
  begin
    if Trim(edOpcion2.text) = '' then
      QListado.sql.add('and p.pro_codigo like '+#39+trim(edOpcion.text)+#39)
    else
      QListado.sql.add('and p.pro_codigo between '+trim(edOpcion.text)+' and '+
      trim(edOpcion2.text));
    QListado.sql.add('order by p.pro_codigo');
  end
  else if cbOpcion.itemindex = 1 then
  begin
    QListado.sql.add('and p.pro_roriginal like '+#39+trim(edOpcion.text)+#39);
    QListado.sql.add('order by p.pro_roriginal');
  end
  else if cbOpcion.itemindex = 2 then
  begin
    QListado.sql.add('and p.pro_rfabric like '+#39+trim(edOpcion.text)+#39);
    QListado.sql.add('order by p.pro_rfabric');
  end
  else if cbOpcion.itemindex = 3 then
  begin
    QListado.sql.add('and p.pro_nombre like '+#39+trim(edOpcion.text)+#39);
    QListado.sql.add('order by p.pro_nombre');
  end
  else if cbOpcion.itemindex = 3 then
  begin
    QListado.sql.add('and p.pro_uso like '+#39+trim(edOpcion.text)+#39);
    QListado.sql.add('order by p.pro_uso');
  end;

  QListado.open;
  DBGrid5.setfocus;
end;

procedure TfrmProductos.btProvClick(Sender: TObject);
begin
  Search.Title := 'Listado de Proveedores';
  Search.ResultField := 'sup_codigo';
  Search.query.clear;
  Search.query.add('select sup_nombre, sup_codigo');
  Search.query.add('from proveedores');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
  begin
    QProductosSUP_CODIGO.value := StrToInt(Search.ValueField);
    DBEdit28.Setfocus;
  end;
end;

procedure TfrmProductos.QProductosSUP_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProductosSUP_CODIGO.isnull then
  begin
    Text := IntToStr(QProductosSUP_CODIGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre');
    dm.Query1.SQL.Add('from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QProductosSUP_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString
    else
      tProv.Text := '';
  end
  else
    tProv.text := '';
end;

procedure TfrmProductos.btInsertCtaClick(Sender: TObject);
begin
  Search.Title := 'Cat�logo de Cuentas';
  Search.ResultField := 'cat_cuenta';
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
  begin
     QCuentas.Edit;
     QCuentasCAT_CUENTA.Value := Search.ValueField;
     QCuentas.Post;
  end;
end;

procedure TfrmProductos.btDeleteCtaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    QCuentas.Edit;
    QCuentasCAT_CUENTA.Clear;
    QCuentas.Post;
  end;
end;

procedure TfrmProductos.QCuentasAfterPost(DataSet: TDataSet);
begin
  QCuentas.UpdateBatch;
end;

procedure TfrmProductos.edOpcionKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then btRefreshClick(Self);
end;

procedure TfrmProductos.edOpcion2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then btRefreshClick(Self);
end;

procedure TfrmProductos.rgTipoClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmProductos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and
     (activecontrol.classtype <> TDBMemo) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmProductos.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f5 then
  begin
    application.createform(tfrmBuscaProducto, frmBuscaProducto);
    frmBuscaProducto.showmodal;
    if frmBuscaProducto.seleccion = 1 then
      QProductosPRO_NOMBRE.Value := frmBuscaProducto.QProductosPRO_NOMBRE.Value;
    frmBuscaProducto.release;
  end;
end;

procedure TfrmProductos.QProductosPRO_BENEFICIO2Change(Sender: TField);
begin
  Precios;
end;

procedure TfrmProductos.QProductosPRO_BENEFICIO3Change(Sender: TField);
begin
  Precios;
end;

procedure TfrmProductos.QProductosPRO_BENEFICIO4Change(Sender: TField);
begin
  Precios;
end;

procedure TfrmProductos.ckServicioClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmProductos.ckVenceClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmProductos.precios;
var
  tcosto, rdesde, rhasta, rvalor : double;
  nValor, nEntero : String;
begin
  if QProductosPRO_CANTEMPAQUE.Value > 0 then
  begin
    //Precio al Detalle
    //Unidad
    //Precio1
    if QProductosPRO_BENEFICIO.Value <> 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio1' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]))
         else
           QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));

    //Precio2
    if QProductosPRO_BENEFICIO2.Value <> 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio2' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
         else
           QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));

    //Precio3
    if QProductosPRO_BENEFICIO3.Value <> 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio3' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
         else
           QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));

    //Precio4
    if QProductosPRO_BENEFICIO4.Value <> 0 then
      if dm.QParametrosPAR_PRECIOUND.Value = 'Precio4' then
         if dm.QParametrospar_itbisincluido.Value = 'True' then
           QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
         else
           QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));

    //Empaque
    //Precio1
    if QProductosPRO_BENEFICIO.Value <> 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValorEMp.Value+((QProductosValorEMp.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QProductosPRO_BENEFICIO2.Value <> 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValorEMp.Value+((QProductosValorEMp.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QProductosPRO_BENEFICIO3.Value <> 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValorEMp.Value+((QProductosValorEMp.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QProductosPRO_BENEFICIO4.Value <> 0 then
    begin
      if dm.QParametrosPAR_PRECIOEMP.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrosPAR_PRECIOEMP.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValorEMp.Value+((QProductosValorEMp.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end;
    end;

    //Precio al x Mayor
    //Unidad
    //Precio1
    if QProductosPRO_BENEFICIO.Value <> 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QProductosPRO_BENEFICIO2.Value <> 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QProductosPRO_BENEFICIO3.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QProductosPRO_BENEFICIO4.Value > 0 then
    begin
      if dm.QParametrospar_preciound_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrospar_preciound_m.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end;
    end;

    //Empaque
    //Precio1
    if QProductosPRO_BENEFICIO.Value <> 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio1' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValorEmp.Value+((QProductosValorEmp.Value*QProductosPRO_BENEFICIO.Value)/100))]))
        else
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO.Value)/100))]));
      end;
    end;

    //Precio2
    if QProductosPRO_BENEFICIO2.Value <> 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio2' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValorEmp.Value+((QProductosValorEmp.Value*QProductosPRO_BENEFICIO2.Value)/100))]))
        else
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO2.Value)/100))]));
      end;
    end;

    //Precio3
    if QProductosPRO_BENEFICIO3.Value <> 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio3' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValorEmp.Value+((QProductosValorEmp.Value*QProductosPRO_BENEFICIO3.Value)/100))]))
        else
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO3.Value)/100))]));
      end;
    end;

    //Precio4
    if QProductosPRO_BENEFICIO4.Value <> 0 then
    begin
      if dm.QParametrospar_precioemp_m.Value = 'Ninguno' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end
      else if dm.QParametrospar_precioemp_m.Value = 'Precio4' then
      begin
        if dm.QParametrospar_itbisincluido.Value = 'True' then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValorEmp.Value+((QProductosValorEmp.Value*QProductosPRO_BENEFICIO4.Value)/100))]))
        else
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTOEMPAQUE.Value+((QProductosPRO_COSTOEMPAQUE.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end;
    end;
  end
  else //Si no tiene cantidad por empaque
  begin
    if (QProductosPRO_COSTOEMPAQUE.Value = 0) or (QProductosPRO_COSTOEMPAQUE.IsNull) then
    begin
      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin
        if QProductosPRO_BENEFICIO.Value > 0 then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO.Value)/100))]));

        if QProductosPRO_BENEFICIO2.Value > 0 then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO2.Value)/100))]));

        if QProductosPRO_BENEFICIO3.Value > 0 then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO3.Value)/100))]));

        if QProductosPRO_BENEFICIO4.Value > 0 then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosValor.Value+((QProductosValor.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end
      else
      begin
        if QProductosPRO_BENEFICIO.Value > 0 then
          QProductosPRO_PRECIO1.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO.Value)/100))]));

        if QProductosPRO_BENEFICIO2.Value > 0 then
          QProductosPRO_PRECIO2.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO2.Value)/100))]));

        if QProductosPRO_BENEFICIO3.Value > 0 then
          QProductosPRO_PRECIO3.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO3.Value)/100))]));

        if QProductosPRO_BENEFICIO4.Value > 0 then
          QProductosPRO_PRECIO4.Value := StrToFloat(Format('%10.2F',[(QProductosPRO_COSTO.Value+((QProductosPRO_COSTO.Value*QProductosPRO_BENEFICIO4.Value)/100))]));
      end;
    end;
  end;

  //Redondeo
  if dm.QParametrospar_redondeo.Value = 'True' then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select par_desde, par_hasta, par_valor, par_sumar from redondeo_precios where emp_codigo = :emp');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Open;
    Query1.First;
    while not Query1.Eof do
    begin
      //Precio1
      if (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO1.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO1.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO1.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO1.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO1.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO1.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QProductosPRO_PRECIO1.Value := StrToFloat(nValor)
      end;

      //Precio2
      if (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO2.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO2.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO2.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO2.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO2.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO2.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QProductosPRO_PRECIO2.Value := StrToFloat(nValor)
      end;

      //Precio3
      if (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO3.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO3.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO3.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO3.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO3.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO3.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QProductosPRO_PRECIO3.Value := StrToFloat(nValor)
      end;

      //Precio4
      if (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO4.Value]))) >= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_desde').AsFloat]))) and
      (Frac(StrToFloat(Format('%10.2F',[QProductosPRO_PRECIO4.Value]))) <= StrToFloat(Format('%10.2F',[Query1.FieldByName('par_hasta').AsFloat]))) then
      begin
        if UpperCase(Query1.FieldByName('par_sumar').Value) <> 'S' then
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO4.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO4.Value))-1);
          nValor  := nEntero+Copy(Query1.FieldByName('par_valor').AsString,pos('.',Query1.FieldByName('par_valor').AsString),3);
        end
        else
        begin
          nEntero := Copy(FloatToStr(QProductosPRO_PRECIO4.Value), 1,
                     Pos('.',FloatToStr(QProductosPRO_PRECIO4.Value))-1);
          nValor  := (FloatToStr((strtofloat(nEntero)+Query1.FieldByName('par_valor').AsFloat)))+'.00';
        end;
        QProductosPRO_PRECIO4.Value := StrToFloat(nValor)
      end;

      Query1.Next;
    end;
  end;
end;

procedure TfrmProductos.SpeedButton3Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTA UNIDAD DE MEDIDA?', mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    QUnidades.Delete;
    QUnidades.UpdateBatch;
  end;
end;

procedure TfrmProductos.DBGrid7KeyPress(Sender: TObject; var Key: Char);
begin
  {if key = #13 then
  begin
    if DBGrid7.SelectedIndex <> 2 then
      DBGrid7.SelectedIndex := DBGrid7.SelectedIndex + 1
    else
    begin
      DBGrid7.SelectedIndex := 0;
      QCompetencia.Append;
    end;
  end;}
end;

procedure TfrmProductos.QCompetenciaAfterPost(DataSet: TDataSet);
begin
  QCompetencia.UpdateBatch;
end;

procedure TfrmProductos.QCompetenciaNewRecord(DataSet: TDataSet);
begin
  QCompetenciaEMP_CODIGO.Value := dm.QParametrosPAR_INVEMPRESA.Value;
  QCompetenciaPRO_CODIGO.Value := QProductosPRO_CODIGO.Value;
end;

procedure TfrmProductos.QCompetenciaBeforePost(DataSet: TDataSet);
begin
  if QCompetencia.State = dsinsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(pro_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from PROPRECIO_COMP');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
    dm.Query1.Open;
    QCompetenciaPRO_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmProductos.btInsertaComClick(Sender: TObject);
begin
  Application.CreateForm(tfrmCantidadCombo, frmCantidadCombo);
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(max(com_secuencia),0) as maximo');
  dm.Query1.SQL.Add('from prodcombo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and pro_codigo = :pro');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
  dm.Query1.Open;

  QCombo.Append;
  QComboEMP_CODIGO.Value    := dm.QParametrosPAR_INVEMPRESA.Value;
  QComboPRO_CODIGO.Value    := QProductosPRO_CODIGO.Value;
  QComboCOM_SECUENCIA.Value := dm.Query1.fieldbyname('maximo').AsInteger + 1;
  QComboCOM_MEDIDA.Value    := 'Und';

  frmCantidadCombo.ShowModal;

  QCombo.DisableControls;
  QCombo.UpdateBatch;
  QCombo.Close;
  QCombo.Open;
  QCombo.EnableControls;

  frmCantidadCombo.Release;
end;

procedure TfrmProductos.bteditComboClick(Sender: TObject);
var
   punt : TBookmark;
begin
  Application.CreateForm(tfrmCantidadCombo, frmCantidadCombo);
  punt := QCombo.GetBookmark;
  QCombo.Edit;
  frmCantidadCombo.ShowModal;

  QCombo.DisableControls;
  QCombo.UpdateBatch;
  QCombo.Close;
  QCombo.Open;
  QCombo.GotoBookmark(punt);
  QCombo.EnableControls;

  frmCantidadCombo.Release;
end;

procedure TfrmProductos.btDelComClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    QCombo.DisableControls;
    QCombo.delete;
    QCombo.UpdateBatch;
    QCombo.Close;
    QCombo.Open;
    QCombo.EnableControls;
  end;
end;

procedure TfrmProductos.btinsertaeqClick(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(eq_secuencia)+1,1) as maximo from PRODEQUIVALENCIAS');
    dm.Query1.SQL.Add('where emp_codigo = :emp and pro_codigo = :pro');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
    dm.Query1.Open;

    QEquivalencia.Insert;
    QEquivalenciaEMP_CODIGO.Value := dm.QParametrosPAR_INVEMPRESA.Value;
    QEquivalenciaPRO_CODIGO.Value := QProductosPRO_CODIGO.Value;
    QEquivalenciaPRO_CODIGOEQUIVALENTE.Value := frmBuscaProducto.QProductosPRO_CODIGO.Value;
    QEquivalenciaEQ_SECUENCIA.Value := dm.Query1.fieldbyname('maximo').AsInteger;
    QEquivalencia.Post;
    QEquivalencia.UpdateBatch;
    QEquivalencia.Close;
    QEquivalencia.Open;
  end;
  frmBuscaProducto.release;
  DBGrid9.SetFocus;
end;

procedure TfrmProductos.bteliminaeqClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?', mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    QEquivalencia.Delete;
    QEquivalencia.UpdateBatch;
    QEquivalencia.Close;
    QEquivalencia.Open;
  end;
end;

procedure TfrmProductos.btalmabarClick(Sender: TObject);
begin
  Search.Title := 'Listado de Almac�n';
  Search.ResultField := 'alm_codigo';
  Search.query.clear;
  Search.query.add('select alm_nombre, alm_codigo');
  Search.query.add('from almacen');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
    QProductosPRO_ALMACENBAR.value := strtoint(search.valuefield);
end;

function TfrmProductos.VerificaDuplicado(campo : string) : integer;
var
  error : integer;
begin
  error := 0;
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select pro_roriginal, fam_codigo, dep_codigo, col_codigo, mar_codigo from productos');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and pro_codigo <> :cod');

  if campo = 'O' then
  begin
    dm.Query1.sql.add('and pro_roriginal = :ref');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.Parameters.parambyname('ref').Value  := QProductosPRO_RORIGINAL.value;
    dm.Query1.Parameters.parambyname('cod').Value := QProductosPRO_CODIGO.value;
    dm.Query1.open;
  end
  else if campo = 'F' then
  begin
    dm.Query1.sql.add('and pro_rfabric = :ref');
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.Parameters.parambyname('ref').Value := QProductosPRO_RFABRIC.value;
    dm.Query1.Parameters.parambyname('cod').Value := QProductosPRO_CODIGO.value;
    dm.Query1.Parameters.parambyname('sup').Value := QProductosSUP_CODIGO.Value;
    dm.Query1.open;
  end;
  if dm.Query1.recordcount > 0 then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select PAR_COMBINAORIGINAL from parametros');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    Query1.Open;
    if Query1.fieldbyname('PAR_COMBINAORIGINAL').AsString <> 'Ninguno' then
    begin
      if Query1.fieldbyname('PAR_COMBINAORIGINAL').AsString = 'Familia' then
      begin
        if not QProductosFAM_CODIGO.IsNull then
        begin
          if dm.Query1.fieldbyname('fam_codigo').AsInteger = QProductosFAM_CODIGO.value then
            error := 1;
        end;
      end
      else if Query1.fieldbyname('PAR_COMBINAORIGINAL').AsString = 'Departamento' then
      begin
        if not QProductosDEP_CODIGO.IsNull then
        begin
          if dm.Query1.fieldbyname('dep_codigo').AsInteger = QProductosDEP_CODIGO.value then
            error := 1;
        end;
      end
      else if Query1.fieldbyname('PAR_COMBINAORIGINAL').AsString = 'Color' then
      begin
        if not QProductosCOL_CODIGO.IsNull then
        begin
          if dm.Query1.fieldbyname('col_codigo').AsInteger = QProductosCOL_CODIGO.value then
            error := 1;
        end;
      end
      else if Query1.fieldbyname('PAR_COMBINAORIGINAL').AsString = 'Marca' then
      begin
        if not QProductosMAR_CODIGO.IsNull then
        begin
          if dm.Query1.fieldbyname('mar_codigo').AsInteger = QProductosMAR_CODIGO.value then
            error := 1;
        end;
      end;
    end
    else
      error := 1;
  end;
  result := error;
end;

procedure TfrmProductos.SpeedButton4Click(Sender: TObject);
begin
  if not QProductosPRO_CODIGO.IsNull then
  begin
    Screen.cursor := crhourglass;
    QEstadisticaVenta.Close;
    QEstadisticaVenta.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QEstadisticaVenta.Parameters.ParamByName('ano').Value := spAno.Value;
    QEstadisticaVenta.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
    QEstadisticaVenta.Open;
    Screen.cursor := crdefault;
  end;
end;

procedure TfrmProductos.TrackBar1Change(Sender: TObject);
begin
  DBChart1.Chart3DPercent := TrackBar1.Position;
end;

procedure TfrmProductos.TrackBar2Change(Sender: TObject);
begin
  DBChart2.Chart3DPercent := TrackBar1.Position;
end;

procedure TfrmProductos.SpeedButton5Click(Sender: TObject);
begin
  if not QProductosPRO_CODIGO.IsNull then
  begin
    Screen.cursor := crhourglass;
    QEstadisticaCompra.Close;
    QEstadisticaCompra.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QEstadisticaCompra.Parameters.ParamByName('ano').Value := spAno.Value;
    QEstadisticaCompra.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
    QEstadisticaCompra.Open;
    Screen.cursor := crdefault;
  end;
end;

procedure TfrmProductos.btmonedaClick(Sender: TObject);
begin
  Search.Title := 'Tipos de Moneda';
  Search.ResultField := 'mon_codigo';
  Search.query.clear;
  Search.query.add('select mon_nombre, mon_codigo');
  Search.query.add('from moneda');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QProductosMON_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmProductos.btvenceClick(Sender: TObject);
begin
  frmMain.ActivaForma(tfrmVencimiento, tform(frmVencimiento));
  if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
    frmVencimiento.edProd.Text := IntToStr(QProductosPRO_CODIGO.Value)
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
    frmVencimiento.edProd.Text := QProductosPRO_RORIGINAL.Value
  else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
    frmVencimiento.edProd.Text := QProductosPRO_RFABRIC.Value;

  frmVencimiento.tProd.Text := QProductosPRO_NOMBRE.Value;
  frmVencimiento.edAlmacen.Text := IntToStr(dm.QParametrosPAR_ALMACENVENTA.Value);
  frmVencimiento.edProveedor.Text := IntToStr(QProductosSUP_CODIGO.Value);
  frmVencimiento.tProveedor.Text  := tProv.Text;
  
  if DBCheckBox3.Checked then
    frmVencimiento.edEtiquetas.Text := '1';

  frmVencimiento.prod   := QProductosPRO_CODIGO.Value;
  frmVencimiento.oRef   := QProductosPRO_RORIGINAL.Value;
  frmVencimiento.fRef   := QProductosPRO_RFABRIC.Value;
  frmVencimiento.Precio := QProductosPRO_PRECIO1.Value;
  frmVencimiento.edCantidad.SetFocus;
end;

procedure TfrmProductos.QProductosCalcFields(DataSet: TDataSet);
begin
  if QProductosPRO_ITBIS.Value = 'S' then
  begin
    QProductosCalcCosto.Value    := (QProductosPRO_COSTO.Value * dm.QParametrosPAR_ITBIS.Value)/100;
    QProductosCalcCostoemp.Value := (QProductosPRO_COSTOEMPAQUE.Value * dm.QParametrosPAR_ITBIS.Value)/100;
  end
  else
  begin
    QProductosCalcCosto.Value    := 0;
    QProductosCalcCostoemp.Value := 0;
  end;
  QProductosValor.value    := QProductosCalcCosto.Value + QProductosPRO_COSTO.Value;
  QProductosValorEmp.value := QProductosCalcCostoEmp.Value + QProductosPRO_COSTOEMPAQUE.Value;
end;

procedure TfrmProductos.QProductosFAM_CODIGOChange(Sender: TField);
var
  ben : double;
begin
  if not QProductosFAM_CODIGO.isnull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fam_nombre, fam_comision, fam_beneficio from familias');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and fam_Codigo = :fam');
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.Parameters.parambyname('fam').Value := QProductosFAM_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
    begin
      tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
      ben := dm.Query1.fieldbyname('fam_beneficio').AsFloat;
      if QProductos.State = dsInsert then
      begin
        QProductosPRO_Comision.Value := dm.Query1.fieldbyname('fam_comision').AsFloat;
        QProductosPRO_Beneficio.Value := ben;
      end;
    end
  end
end;

procedure TfrmProductos.SpeedButton6Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select fam_nombre, fam_codigo');
  Search.Query.add('from familias');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'fam_codigo';
  Search.Title := 'Listado de Familias';
  if Search.execute then
  begin
    edFamilia.text := search.valuefield;
    edFamilia.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fam_codigo, fam_nombre');
    dm.Query1.sql.add('from familias');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and fam_codigo = :fam');
    dm.Query1.Parameters.parambyname('fam').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.open;
    Edit1.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    edFamilia.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmProductos.SpeedButton7Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Query.add('and dep_tipo = '+QuotedStr('V'));
  Search.ResultField := 'dep_codigo';
  Search.Title := 'Departamentos';
  if Search.execute then
  begin
    edDepto.text := search.valuefield;
    edDepto.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select dep_codigo, dep_nombre');
    dm.Query1.sql.add('from departamentos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and dep_codigo = :dep');
    dm.Query1.Parameters.parambyname('dep').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.open;
    Edit1.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmProductos.SpeedButton8Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select mar_nombre, mar_codigo');
  Search.Query.add('from marcas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mar_codigo';
  Search.Title := 'Listado de Marcas';
  if Search.execute then
  begin
    edMarca.text := search.valuefield;
    edMarca.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mar_codigo, mar_nombre');
    dm.Query1.sql.add('from marcas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mar_codigo = :mar');
    dm.Query1.Parameters.parambyname('mar').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
    dm.Query1.open;
    Edit1.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    edMarca.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmProductos.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMarca.text := '';
end;

procedure TfrmProductos.edMarcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edMarca.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mar_codigo, mar_nombre');
      dm.Query1.sql.add('from marcas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mar_codigo = :mar');
      dm.Query1.Parameters.parambyname('mar').Value := strtoint(edMarca.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
      dm.Query1.open;
      Edit3.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    end
    else
      tMarca.text := '';
    btRefreshClick(Self);
  end;
end;

procedure TfrmProductos.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmProductos.edDeptoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDepto.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select dep_codigo, dep_nombre');
      dm.Query1.sql.add('from departamentos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and dep_codigo = :dep');
      dm.Query1.Parameters.parambyname('dep').Value := strtoint(edDepto.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
      dm.Query1.open;
      Edit2.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
    btRefreshClick(Self);
  end;
end;

procedure TfrmProductos.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmProductos.edFamiliaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edFamilia.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select fam_codigo, fam_nombre');
      dm.Query1.sql.add('from familias');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fam_codigo = :fam');
      dm.Query1.Parameters.parambyname('fam').Value := strtoint(edFamilia.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
      dm.Query1.open;
      Edit1.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    end
    else
      tFamilia.text := '';
    btRefreshClick(Self);
  end;
end;

procedure TfrmProductos.Abrir1Click(Sender: TObject);
begin
  if OpenDLG.Execute then
    QProductospro_foto.Value := OpenDLG.FileName;
end;

procedure TfrmProductos.Quitarfoto1Click(Sender: TObject);
begin
  QProductospro_foto.Clear;
end;

procedure TfrmProductos.SpeedButton10Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?', mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    QOfertas.Delete;
    QOfertas.UpdateBatch;
  end;
end;

procedure TfrmProductos.DBGrid13KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if DBGrid13.SelectedIndex <> 4 then
      DBGrid13.SelectedIndex := DBGrid13.SelectedIndex + 1
    else
    begin
      DBGrid13.SelectedIndex := 0;
      QOfertas.Append;
    end;
  end;
end;

procedure TfrmProductos.QOfertasAfterPost(DataSet: TDataSet);
begin
  QOfertas.UpdateBatch;
end;

procedure TfrmProductos.QOfertasAfterDelete(DataSet: TDataSet);
begin
  QOfertas.UpdateBatch;
end;

procedure TfrmProductos.QOfertasBeforePost(DataSet: TDataSet);
begin
  if QOfertasregalo.IsNull then QOfertasregalo.Value := 0;
  if QOfertasprecio.IsNull then QOfertasprecio.Value := 0;

  if QOfertas.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(secuencia),0) as maximo');
    dm.Query1.SQL.Add('from ProdOfertaPrecios');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
    dm.Query1.Open;
    QOfertassecuencia.Value := dm.Query1.FieldByName('maximo').AsInteger +1;
  end;
end;

procedure TfrmProductos.QOfertasNewRecord(DataSet: TDataSet);
begin
  QOfertasemp_codigo.Value := dm.QParametrosPAR_INVEMPRESA.Value;
  QOfertaspro_codigo.Value := QProductosPRO_CODIGO.Value;
end;

procedure TfrmProductos.QProductosPRO_COSTOEMPAQUEChange(Sender: TField);
begin
  if not QProductosPRO_COSTOEMPAQUE.IsNull then
  begin
    if QProductosPRO_CANTEMPAQUE.Value > 0 then
      QProductosPRO_COSTO.Value := QProductosPRO_COSTOEMPAQUE.Value / QProductosPRO_CANTEMPAQUE.Value;
    Precios;
  end;
end;

procedure TfrmProductos.btinsertadescuentoClick(Sender: TObject);
begin
  Search.Title := 'Tipos de factura';
  Search.ResultField := 'tfa_codigo';
  Search.query.clear;
  Search.query.add('select tfa_nombre, tfa_codigo');
  Search.query.add('from tiposfactura');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.query.add('and tfa_codigo not in (select tfa_codigo from Prod_Descuentos_TipoFac');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.query.add('and pro_codigo = '+inttostr(QProductosPRO_CODIGO.Value)+')');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
  begin
     dm.Query1.Close;
     dm.Query1.SQL.Clear;
     dm.Query1.SQL.Add('insert into Prod_Descuentos_TipoFac (emp_codigo, tfa_codigo, pro_codigo, descuento)');
     dm.Query1.SQL.Add('values (:emp, :tfa, :pro, :des)');
     dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
     dm.Query1.Parameters.ParamByName('tfa').Value := StrToInt(Search.ValueField);
     dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
     dm.Query1.Parameters.ParamByName('des').Value := StrToFloat(InputBox('Descuento','Descuento Maximo','0'));
     dm.Query1.ExecSQL;
     QDescuentoTFA.Close;
     QDescuentoTFA.Open;
  end;
end;

procedure TfrmProductos.btdeletedescuentoClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?', mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from Prod_Descuentos_TipoFac where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tfa_codigo = :tfa and pro_codigo = :pro');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('tfa').Value := QDescuentoTFAtfa_codigo.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
    dm.Query1.ExecSQL;
    QDescuentoTFA.Close;
    QDescuentoTFA.Open;
  end;
end;

procedure TfrmProductos.QProductosPRO_CANTEMPAQUEChange(Sender: TField);
begin
  if (not QProductosPRO_COSTOEMPAQUE.IsNull) and (not QProductosPRO_CANTEMPAQUE.IsNull) then
  begin
    if QProductosPRO_CANTEMPAQUE.Value > 0 then
      QProductosPRO_COSTO.Value := QProductosPRO_COSTOEMPAQUE.Value / QProductosPRO_CANTEMPAQUE.Value;
    Precios;
  end;
end;

procedure TfrmProductos.QExistAfterInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmProductos.btgerenteClick(Sender: TObject);
begin
  Search.Title := 'Gerentes';
  Search.ResultField := 'ger_codigo';
  Search.query.Clear;
  Search.query.add('select ger_nombre, ger_codigo');
  Search.query.add('from gerentes');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QProductosger_codigo.value := strtoint(search.valuefield);
end;

procedure TfrmProductos.QProductosger_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProductosger_codigo.isnull then
  begin
    Text := IntToStr(QProductosger_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ger_nombre');
    dm.Query1.SQL.Add('from gerentes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ger_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QProductosger_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tgerente.Text := dm.Query1.FieldByName('ger_nombre').AsString
    else
      tgerente.Text := '';
  end
  else
    tgerente.text := '';
end;

procedure TfrmProductos.btgondoleroClick(Sender: TObject);
begin
  Search.Title := 'Gondoleros';
  Search.ResultField := 'gon_codigo';
  Search.query.Clear;
  Search.query.add('select gon_nombre, gon_codigo');
  Search.query.add('from gondoleros');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QProductosgon_codigo.value := strtoint(search.valuefield);
end;

procedure TfrmProductos.QProductosgon_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProductosgon_codigo.isnull then
  begin
    Text := IntToStr(QProductosgon_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select gon_nombre');
    dm.Query1.SQL.Add('from gondoleros');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and gon_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QProductosgon_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tgondolero.Text := dm.Query1.FieldByName('gon_nombre').AsString
    else
      tgondolero.Text := '';
  end
  else
    tgondolero.text := '';
end;

procedure TfrmProductos.btactcostoClick(Sender: TObject);
var
  Costo : double;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select sum(isnull(com_costo,0)*isnull(com_cantidad,0)) as total from ProdCombo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and pro_codigo = :pro');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
  dm.Query1.open;
  Costo := dm.Query1.FieldbyName('total').AsFloat;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('update productos set pro_costo = :cos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and pro_codigo = :pro');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cos').Value := Costo;
  dm.Query1.ExecSQL;

  QProductos.Close;
  QProductos.Open;
end;

procedure TfrmProductos.DBGrid5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    QProductos.Cancel;
    QProductos.Close;
    QProductos.Parameters.ParamByName('prod').Value := QListadoPRO_CODIGO.Value;
    QProductos.Open;
    PageControl1.ActivePageIndex := 0;
  end;
end;

procedure TfrmProductos.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QProductos.State <> dsbrowse then
    begin
      if (StrToFloat(DBEdit4.Text) > 0) and (QProductosValor.Value > 0) then
      begin
        QProductosPRO_BENEFICIO.Value := ((StrToFloat(DBEdit4.Text) / QProductosValor.Value)*100)-100;
      end;
    end;
  end;
end;

procedure TfrmProductos.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QProductos.State <> dsbrowse then
    begin
      if QProductosPRO_CANTEMPAQUE.Value = 0 then
      begin
        if (StrToFloat(DBEdit8.Text) > 0) and (QProductosValor.Value > 0) then
        begin
          QProductosPRO_BENEFICIO2.Value := ((StrToFloat(DBEdit8.Text) / QProductosValor.Value)*100)-100;
        end;
      end
      else
      begin
        if (StrToFloat(DBEdit8.Text) > 0) and (QProductosValorEmp.Value > 0) then
        begin
          QProductosPRO_BENEFICIO2.Value := ((StrToFloat(DBEdit8.Text) / QProductosValorEmp.Value)*100)-100;
        end;
      end;
    end;
  end;
end;

procedure TfrmProductos.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QProductos.State <> dsbrowse then
    begin
      if (StrToFloat(DBEdit9.Text) > 0) and (QProductosValor.Value > 0) then
      begin
        QProductosPRO_BENEFICIO3.Value := ((StrToFloat(DBEdit9.Text) / QProductosValor.Value)*100)-100;
      end;
    end;
  end;
end;

procedure TfrmProductos.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if QProductos.State <> dsbrowse then
    begin
      if QProductosPRO_CANTEMPAQUE.Value = 0 then
      begin
        if (StrToFloat(DBEdit11.Text) > 0) and (QProductosValor.Value > 0) then
        begin
          QProductosPRO_BENEFICIO4.Value := ((StrToFloat(DBEdit11.Text) / QProductosValor.Value)*100)-100;
        end;
      end
      else
      begin
        if (StrToFloat(DBEdit11.Text) > 0) and (QProductosValorEmp.Value > 0) then
        begin
          QProductosPRO_BENEFICIO4.Value := ((StrToFloat(DBEdit11.Text) / QProductosValorEmp.Value)*100)-100;
        end;
      end;
    end;
  end;
end;

procedure TfrmProductos.btunidadClick(Sender: TObject);
begin
  Search.Title := 'Unidades de medida';
  Search.ResultField := 'UnidadID';
  Search.query.clear;
  Search.query.add('select Nombre, UnidadID');
  Search.query.add('from UnidadMedida');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
     QProductosUnidadID.value := search.valuefield;
end;

procedure TfrmProductos.QProductosUnidadIDGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QProductosUnidadID.isnull then
  begin
    Text := QProductosUnidadID.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre');
    dm.Query1.SQL.Add('from UnidadMedida');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and UnidadID = :cod');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cod').Value := QProductosUnidadID.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tunidad.Text := dm.Query1.FieldByName('Nombre').AsString
    else
      tunidad.Text := '';
  end
  else
    tunidad.text := '';
end;

procedure TfrmProductos.btpreciosClick(Sender: TObject);
begin
  {Application.CreateForm(tfrmPreciosUnidadMedida, frmPreciosUnidadMedida);
  frmPreciosUnidadMedida.QProductos.Parameters.ParamByName('prod').Value := QProductosPRO_CODIGO.Value;
  frmPreciosUnidadMedida.QProductos.Open;

  frmPreciosUnidadMedida.QUnidades.Close;
  frmPreciosUnidadMedida.QUnidades.Parameters.ParamByName('emp_codigo').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  frmPreciosUnidadMedida.QUnidades.Parameters.ParamByName('pro_codigo').Value := QProductosPRO_CODIGO.Value;
  frmPreciosUnidadMedida.QUnidades.Open;

  frmPreciosUnidadMedida.ShowModal;
  frmPreciosUnidadMedida.Release;}
end;

procedure TfrmProductos.gunidadesKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if gunidades.SelectedIndex <> 2 then
      gunidades.SelectedIndex := gunidades.SelectedIndex + 1
    else
    begin
      QUnidades.Append;
      gunidades.SelectedIndex := 0;
    end;
  end;
end;

procedure TfrmProductos.QUnidadesBeforePost(DataSet: TDataSet);
begin
  if QUnidades.State = dsinsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(Secuencia),0) as maximo');
    dm.Query1.SQL.Add('from ProdUnidadMedida');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductosPRO_CODIGO.Value;
    dm.Query1.Open;
    QUnidadesSecuencia.Value := dm.Query1.FieldByName('maximo').Value + 1;
  end;
end;

procedure TfrmProductos.QUnidadesNewRecord(DataSet: TDataSet);
begin
  QUnidadesemp_codigo.Value := dm.QParametrosPAR_INVEMPRESA.Value;
  QUnidadespro_codigo.Value := QProductosPRO_CODIGO.Value;
end;

procedure TfrmProductos.QUnidadesAfterPost(DataSet: TDataSet);
begin
  QUnidades.UpdateBatch;
end;

procedure TfrmProductos.QUnidadesAfterDelete(DataSet: TDataSet);
begin
  QUnidades.UpdateBatch;
end;

end.
