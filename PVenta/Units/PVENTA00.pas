unit PVENTA00;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, Buttons, Menus, QuerySearchDlgIB, AVLockGold,
  scExcelExport, QExport, QExportXLS, DBCtrls, GX_Outlook, ImgList, ToolWin,
  ActnList, QRExport, OleCtrls, SHDocVw;

type
  TfrmMain = class(TForm)
    stBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Consultas1: TMenuItem;
    Reportes1: TMenuItem;
    Ventas1: TMenuItem;
    RecibosdeCobro2: TMenuItem;
    CuentasporCobrar1: TMenuItem;
    Devoluciones1: TMenuItem;
    NotasdeCrdito2: TMenuItem;
    NotasdeDbito2: TMenuItem;
    Clientes2: TMenuItem;
    Proveedores: TMenuItem;
    Ventas2: TMenuItem;
    Inventario2: TMenuItem;
    Desembolsos2: TMenuItem;
    EntradasdeAlmacn2: TMenuItem;
    Conduces2: TMenuItem;
    CuentasporCobrar2: TMenuItem;
    EstadosdeCuentas1: TMenuItem;
    AntiguedaddeSaldo1: TMenuItem;
    FacturasVencidas1: TMenuItem;
    ListadodeFacturas1: TMenuItem;
    Beneficios1: TMenuItem;
    ProductosCliente1: TMenuItem;
    PorProducto1: TMenuItem;
    ListadodePrecios1: TMenuItem;
    ValordelInventario1: TMenuItem;
    PorFamilia1: TMenuItem;
    Enpuntodereorden1: TMenuItem;
    PorProveedor1: TMenuItem;
    InventarioFsico1: TMenuItem;
    ExistenciaporProducto1: TMenuItem;
    ListadoGeneral1: TMenuItem;
    Procesos1: TMenuItem;
    Anular1: TMenuItem;
    Factura1: TMenuItem;
    RecibodeCobro1: TMenuItem;
    NotadeDbito1: TMenuItem;
    NotadeCrdito1: TMenuItem;
    Devolucin2: TMenuItem;
    Desembolso1: TMenuItem;
    EntradadeAlmacn1: TMenuItem;
    Conduce1: TMenuItem;
    CambiarStatus1: TMenuItem;
    CuadredeCaja1: TMenuItem;
    CierredelDa1: TMenuItem;
    stBar2: TStatusBar;
    Acercade1: TMenuItem;
    Utilidades1: TMenuItem;
    Etiquetas1: TMenuItem;
    Parmetrosgenerales1: TMenuItem;
    N4: TMenuItem;
    Calculadora1: TMenuItem;
    Pordepartamento2: TMenuItem;
    Actualizacindebalances1: TMenuItem;
    Cambiardeusuario1: TMenuItem;
    Asignarclienteafactura1: TMenuItem;
    Inventario1: TMenuItem;
    Colocarexistenciaencero1: TMenuItem;
    Procesartransferenciasdealmacen1: TMenuItem;
    Cuentasporpagar1: TMenuItem;
    Listadogeneral2: TMenuItem;
    Antiguedaddesaldo2: TMenuItem;
    Facturasvencidas3: TMenuItem;
    Estadosdecuentas2: TMenuItem;
    Cuentasporpagar2: TMenuItem;
    Pagos1: TMenuItem;
    Facturasdeproveedores1: TMenuItem;
    Pedidos2: TMenuItem;
    Declientes2: TMenuItem;
    Aproveedores2: TMenuItem;
    AV: TAVLockGold;
    Search: TQrySearchDlgIB;
    ExportXLS: TQExportXLS;
    GrabaXLS: TSaveDialog;
    Reimpresindedocumentos1: TMenuItem;
    Facturadeproveedores1: TMenuItem;
    Pagoaproveedores1: TMenuItem;
    OBar: TFEGXOutlookBar;
    ImageList1: TImageList;
    ActionList1: TActionList;
    AEmpresas: TAction;
    AProductos: TAction;
    ADepartamentos: TAction;
    AFamilias: TAction;
    AAlmacenes: TAction;
    AColores: TAction;
    AOfertas: TAction;
    AClientes: TAction;
    ATipoClientes: TAction;
    AVendedores: TAction;
    AProveedores: TAction;
    ACondiciones: TAction;
    AFormasPago: TAction;
    ATiposFac: TAction;
    ATiposMov: TAction;
    AOtrosCargos: TAction;
    AUsuarios: TAction;
    ACajeros: TAction;
    ABancos: TAction;
    APedidosCli: TAction;
    APedidosProv: TAction;
    AFacturacion: TAction;
    ANC: TAction;
    ANDebito: TAction;
    ADevol: TAction;
    ACotiza: TAction;
    AEntradasAlm: TAction;
    AConduces: TAction;
    AFisico: TAction;
    ATransf: TAction;
    AFactProv: TAction;
    APagos: TAction;
    ARecibos: TAction;
    ADesem: TAction;
    Inventario: TMenuItem;
    Productos1: TMenuItem;
    Transacciones1: TMenuItem;
    PedidosdeClientes1: TMenuItem;
    Pedidosaproveedores1: TMenuItem;
    Facturacin1: TMenuItem;
    Notasdecrdito1: TMenuItem;
    Notasdedbido1: TMenuItem;
    Devoluciones2: TMenuItem;
    Recibos1: TMenuItem;
    Desembolsos1: TMenuItem;
    Cotizaciones1: TMenuItem;
    Factura2: TMenuItem;
    Pagosaproveedores1: TMenuItem;
    ImageList2: TImageList;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btExcel: TToolButton;
    ToolButton2: TToolButton;
    Porformasdepago1: TMenuItem;
    Comisionesporvendedor1: TMenuItem;
    Cambiarlmitedelcliente1: TMenuItem;
    Limpiararchivostemporales1: TMenuItem;
    Modificacindeprecios1: TMenuItem;
    Productosvendidos1: TMenuItem;
    Agrupadoporcliente1: TMenuItem;
    ransferenciasentrealmacen1: TMenuItem;
    QRTextFilter1: TQRTextFilter;
    QRHTMLFilter1: TQRHTMLFilter;
    QRCSVFilter1: TQRCSVFilter;
    Procesarconteofsico1: TMenuItem;
    Portipodefactura1: TMenuItem;
    Maestros1: TMenuItem;
    Empresas1: TMenuItem;
    Departamentos1: TMenuItem;
    Colores1: TMenuItem;
    Ofertas1: TMenuItem;
    Clientes1: TMenuItem;
    ipodeclientes1: TMenuItem;
    Vendedores1: TMenuItem;
    Proveedores1: TMenuItem;
    Condicionesdepago1: TMenuItem;
    Formasdepago1: TMenuItem;
    iposdefactura1: TMenuItem;
    iposdemovimiento1: TMenuItem;
    Otroscargos1: TMenuItem;
    Usuarios1: TMenuItem;
    Cajeros1: TMenuItem;
    Bancos1: TMenuItem;
    Entradasdealmacn1: TMenuItem;
    Conduces1: TMenuItem;
    Inventariofsico2: TMenuItem;
    ransferenciasentrealmacenes1: TMenuItem;
    Almacenes1: TMenuItem;
    Familiadeproductos1: TMenuItem;
    Porfamiliadeproductos1: TMenuItem;
    Pordepartamentos1: TMenuItem;
    Marcas1: TMenuItem;
    Pormarca1: TMenuItem;
    Pormarca2: TMenuItem;
    Servicios1: TMenuItem;
    Utilidaddelabasededatos1: TMenuItem;
    Envencimiento1: TMenuItem;
    Impresindecodigosdebarra1: TMenuItem;
    ToolButton1: TToolButton;
    AVencimiento: TAction;
    VencimientodeProductos1: TMenuItem;
    OperacionesdelMes1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Salir1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure TiposdeClientes1Click(Sender: TObject);
    procedure Cajeros1Click(Sender: TObject);
    procedure Almacenes1Click(Sender: TObject);
    procedure FormasdePago1Click(Sender: TObject);
    procedure CondicionesdePago1Click(Sender: TObject);
    procedure TiposdeFactura1Click(Sender: TObject);
    procedure Departamentos1Click(Sender: TObject);
    procedure FamiliasdeProductos1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Productos1Click(Sender: TObject);
    procedure Colores1Click(Sender: TObject);
    procedure Ofertas1Click(Sender: TObject);
    procedure Facturacin1Click(Sender: TObject);
    procedure DeClientes1Click(Sender: TObject);
    procedure AProveedores1Click(Sender: TObject);
    procedure NotasdeCrdito1Click(Sender: TObject);
    procedure NotasdeDbito1Click(Sender: TObject);
    procedure Devolucin1Click(Sender: TObject);
    procedure RecibosdeCobro1Click(Sender: TObject);
    procedure Desembolsos1Click(Sender: TObject);
    procedure Cotizacin1Click(Sender: TObject);
    procedure EntradasdeAlmacn1Click(Sender: TObject);
    procedure Conduces1Click(Sender: TObject);
    procedure InventarioFsico2Click(Sender: TObject);
    procedure Transferenciasentrealmacenes1Click(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Cambiardeusuario1Click(Sender: TObject);
    procedure Otroscargos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Puntodeventa1Click(Sender: TObject);
    procedure FormatosdeImpresin1Click(Sender: TObject);
    procedure ListadodeFacturas1Click(Sender: TObject);
    procedure FactudasdeProveedores1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Pagosacuentasporpagar1Click(Sender: TObject);
    procedure CuadredeCaja1Click(Sender: TObject);
    procedure RecibosdeCobro2Click(Sender: TObject);
    procedure Desembolsos2Click(Sender: TObject);
    procedure Devoluciones1Click(Sender: TObject);
    procedure NotasdeCrdito2Click(Sender: TObject);
    procedure NotasdeDbito2Click(Sender: TObject);
    procedure EntradasdeAlmacn2Click(Sender: TObject);
    procedure Conduces2Click(Sender: TObject);
    procedure Beneficios1Click(Sender: TObject);
    procedure ProductosCliente1Click(Sender: TObject);
    procedure PorProducto1Click(Sender: TObject);
    procedure Cuentasporpagar2Click(Sender: TObject);
    procedure iposdemovimientos1Click(Sender: TObject);
    procedure CuentasporCobrar1Click(Sender: TObject);
    procedure Pagos1Click(Sender: TObject);
    procedure Facturasdeproveedores1Click(Sender: TObject);
    procedure Declientes2Click(Sender: TObject);
    procedure Aproveedores2Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure ProveedoresClick(Sender: TObject);
    procedure MovimientosporDa1Click(Sender: TObject);
    procedure ListadodePrecios1Click(Sender: TObject);
    procedure ValordelInventario1Click(Sender: TObject);
    procedure PorFamilia1Click(Sender: TObject);
    procedure Enpuntodereorden1Click(Sender: TObject);
    procedure PorProveedor1Click(Sender: TObject);
    procedure InventarioFsico1Click(Sender: TObject);
    procedure Pordepartamento2Click(Sender: TObject);
    procedure ListadoGeneral1Click(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure Reimpresindedocumentos1Click(Sender: TObject);
    procedure Listadogeneral2Click(Sender: TObject);
    procedure FacturasVencidas1Click(Sender: TObject);
    procedure Factura1Click(Sender: TObject);
    procedure NotadeCrdito1Click(Sender: TObject);
    procedure EstadosdeCuentas1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AntiguedaddeSaldo1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure ExistenciaporProducto1Click(Sender: TObject);
    procedure Cambiarlmitedelcliente1Click(Sender: TObject);
    procedure Limpiararchivostemporales1Click(Sender: TObject);
    procedure stBar2DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure stBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure Parmetrosgenerales1Click(Sender: TObject);
    procedure Porformasdepago1Click(Sender: TObject);
    procedure Estadosdecuentas2Click(Sender: TObject);
    procedure Antiguedaddesaldo2Click(Sender: TObject);
    procedure Facturasvencidas3Click(Sender: TObject);
    procedure Productosvendidos1Click(Sender: TObject);
    procedure Agrupadoporcliente1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure Comisionesporvendedor1Click(Sender: TObject);
    procedure Colocarexistenciaencero1Click(Sender: TObject);
    procedure Procesartransferenciasdealmacen1Click(Sender: TObject);
    procedure ransferenciasentrealmacen1Click(Sender: TObject);
    procedure Modificacindeprecios1Click(Sender: TObject);
    procedure Asignarclienteafactura1Click(Sender: TObject);
    procedure CierredelDa1Click(Sender: TObject);
    procedure Actualizacindebalances1Click(Sender: TObject);
    procedure NotadeDbito1Click(Sender: TObject);
    procedure Procesarconteofsico1Click(Sender: TObject);
    procedure Devolucin2Click(Sender: TObject);
    procedure Portipodefactura1Click(Sender: TObject);
    procedure RecibodeCobro1Click(Sender: TObject);
    procedure Desembolso1Click(Sender: TObject);
    procedure EntradadeAlmacn1Click(Sender: TObject);
    procedure Conduce1Click(Sender: TObject);
    procedure Facturadeproveedores1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Servicios1Click(Sender: TObject);
    procedure Porfamiliadeproductos1Click(Sender: TObject);
    procedure Pordepartamentos1Click(Sender: TObject);
    procedure Pormarca1Click(Sender: TObject);
    procedure Pormarca2Click(Sender: TObject);
    procedure Pagoaproveedores1Click(Sender: TObject);
    procedure Utilidaddelabasededatos1Click(Sender: TObject);
    procedure Envencimiento1Click(Sender: TObject);
    procedure CambiarStatus1Click(Sender: TObject);
    procedure Impresindecodigosdebarra1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure AVencimientoExecute(Sender: TObject);
    procedure OperacionesdelMes1Click(Sender: TObject);
  private
    { Private declarations }
    FClientInstance : TFarProc;
    FPrevClientProc : TFarProc;
    procedure ClientWndProc(var Message: TMessage);
  public
    { Public declarations }
    acceso : integer;
    Cap, Num, Ins : integer;
    vIns, vMod, vDel : boolean;
    procedure ActivaForma(Unidad: TFormClass; Var Forma : TForm);
    procedure DisplayHint(Sender: TObject);
    procedure entra (campo : tobject);
    procedure sale (campo : tobject);
  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');

  NumeroMes : array[1..12] of integer = (31,29,31,30,31,30,31,31,30,31,30,31);

var
  frmMain: TfrmMain;

implementation

uses PVENTA03, PVENTA02, PVENTA04, PVENTA05, PVENTA06, PVENTA08, PVENTA07,
  PVENTA09, PVENTA10, PVENTA11, PVENTA12, PVENTA13, PVENTA14, PVENTA15,
  PVENTA16, PVENTA17, PVENTA18, PVENTA19, PVENTA20, PVENTA21, PVENTA22,
  PVENTA23, PVENTA24, PVENTA25, PVENTA26, PVENTA27, PVENTA28, PVENTA29,
  PVENTA30, PVENTA01, PVENTA31, PVENTA32, PVENTA35, PVENTA38, PVENTA37,
  PVENTA41, PVENTA44, PVENTA45, PVENTA46, PVENTA47, PVENTA48, PVENTA49,
  PVENTA50, PVENTA51, PVENTA52, PVENTA53, PVENTA54, PVENTA55, PVENTA56,
  PVENTA57, PVENTA58, PVENTA59, PVENTA60, PVENTA61, PVENTA62, PVENTA63,
  PVENTA64, PVENTA65, PVENTA66, PVENTA67, RVENTA24, PVENTA68, RVENTA26,
  RVENTA27, RVENTA28, RVENTA29, RVENTA30, RVENTA31, PVENTA69, RVENTA40,
  PVENTA70, PVENTA71, PVENTA73, PVENTA74, PVENTA75, PVENTA77, PVENTA78,
  PVENTA79, PVENTA80, PVENTA84, RVENTA49, RVENTA50, PVENTA85, PVENTA86,
  RVENTA53, PVENTA87, PVENTA88, PVENTA39, PVENTA89, PVENTA90, PVENTA91,
  PVENTA92, PVENTA93, PVENTA94, PVENTA95, PVENTA96, PVENTA98, PVENTA99,
  PVENTA100, PVENTA101, PVENTA102, PVENTA103, PVENTA104, PVENTA105,
  PVENTA106, RVENTA61, PVENTA107, IBDatabase, PVENTA108, PVENTA109,
  PVENTA110, PVENTA111, PVENTA112, PVENTA113;

{$R *.DFM}

function NumLockOn : boolean;
var
  keyState : TKeyboardState;
begin
  GetKeyboardState(KeyState);
  Result := (KeyState[VK_NUMLOCK] and 1) = 1;
end;

function CapsLockOn : boolean;
var
  keyState : TKeyboardState;
begin
  GetKeyboardState(KeyState);
  Result := (KeyState[VK_CAPITAL] and 1) = 1;
end;

function InsOn : boolean;
var
  keyState : TKeyboardState;
begin
  GetKeyboardState(KeyState);
  Result := (KeyState[VK_INSERT] and 1) = 1;
end;

procedure TfrmMain.ClientWndProc(var Message: TMessage);
var  Dc : hDC;
  Row : Integer;
  Col : Integer;
begin
{    with Message do
    case Msg of
      WM_ERASEBKGND:
      begin
        Dc := TWMEraseBkGnd(Message).Dc;
        for Row := 0 to ClientWidth div Image1.Picture.Height do
          for Col := 0 to ClientWidth div Image1.Picture.Width do
            BitBlt(Dc, Col * Image1.Picture.Width, Row * Image1.Picture.Height,
            Image1.Picture.Width,Image1.Picture.Height,Image1.Picture.Bitmap.Canvas.Handle,
            0, 0, SRCCOPY);
            Result := 1;
          end;
      else
        Result := CallWindowProc(FPrevClientProc, ClientHandle, Msg, wParam,
                  lParam);
      end;}
end;

Procedure Valores_Iniciales;
Begin
                                          {Formato de Fecha del sistema }
  ShortDateFormat       := 'dd-MM-yyyy';
  DateSeparator := '-';
  TimeAMString := 'AM';
  TimePMString := 'PM';
  CurrencyDecimals := 2;
  CurrencyString   := '';
                                          {Nombres cortos de los dias }
  ShortDayNames[01]     := 'Dom';
  ShortDayNames[02]     := 'Lun';
  ShortDayNames[03]     := 'Mar';
  ShortDayNames[04]     := 'Mie';
  ShortDayNames[05]     := 'Jue';
  ShortDayNames[06]     := 'Vie';
  ShortDayNames[07]     := 'Sab';
                                          {Nombres largos de los dias }
  LongDayNames[01]     := 'Domingo';
  LongDayNames[02]     := 'Lunes';
  LongDayNames[03]     := 'Martes';
  LongDayNames[04]     := 'Miércoles';
  LongDayNames[05]     := 'Jueves';
  LongDayNames[06]     := 'Viernes';
  LongDayNames[07]     := 'Sabado';
                           {Nombres cortos de los meses (Solo los que varian) }
  ShortMonthNames[01]  := 'Ene';
  ShortMonthNames[04]  := 'Abr';
  ShortMonthNames[08]  := 'Ago';
  ShortMonthNames[12]  := 'Dic';
                                          {Nombres largos de los meses }
  LongMonthNames[01]   := 'Enero';
  LongMonthNames[02]   := 'Febrero';
  LongMonthNames[03]   := 'Marzo';
  LongMonthNames[04]   := 'Abril';
  LongMonthNames[05]   := 'Mayo';
  LongMonthNames[06]   := 'Junio';
  LongMonthNames[07]   := 'Julio';
  LongMonthNames[08]   := 'Agosto';
  LongMonthNames[09]   := 'Septiembre';
  LongMonthNames[10]   := 'Octubre';
  LongMonthNames[11]   := 'Noviembre';
  LongMonthNames[12]   := 'Diciembre';
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
{  if Av.execute then
  begin
    if not AV.Registered then Application.Terminate;
  end
  else
    Application.Terminate;}
    
  Application.OnHint := DisplayHint;
  CurrencyString     := '';
  CurrencyDecimals   := 2;
  Valores_Iniciales;
  stBar1.Panels[3].text := FormatDateTime('dddd, dd "de" mmmmmmmmmm "del" yyyy',now);
  //imagen en un mdiform
{  FClientInstance := MakeObjectInstance(ClientWndProc);
  FPrevClientProc := Pointer(GetWindowLong(ClientHandle, GWL_WNDPROC));
  SetWindowLong(ClientHandle, GWL_WNDPROC, LongInt(FClientInstance));}
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('ESTA SEGURO QUE DESEA SALIR DEL SISTEMA?',
  mtconfirmation, [mbyes,mbno],0) = mryes then
    application.terminate
  else
    abort;
end;

procedure TfrmMain.Salir1Click(Sender: TObject);
begin
  close;
end;

Procedure TfrmMain.ActivaForma(Unidad: TFormClass; Var Forma :TForm);
Var
  Indice : Integer;
  creada : Boolean;
begin
  creada := False;
  for Indice := 0 to frmMain.MDIChildCount-1 do
    If (MDIChildren[Indice] = TForm(Forma)) Then
    Begin
       creada := True;
       Break;
    End;
  If Not creada Then
     Application.CreateForm(Unidad, Forma)
  Else
     MDIChildren[Indice].BringToFront;
End;


procedure TfrmMain.Empresas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Empresas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmEmpresas, tform(frmEmpresas));
  frmEmpresas.btEdit.visible   := vMod;
  frmEmpresas.btInsert.visible := vIns;
  frmEmpresas.btDelete.visible := vDel;
end;

procedure TfrmMain.TiposdeClientes1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('ipodeclientes1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoClientes, tform(frmTipoClientes));
  frmTipoClientes.btEdit.visible   := vMod;
  frmTipoClientes.btInsert.visible := vIns;
  frmTipoClientes.btDelete.visible := vDel;
end;

procedure TfrmMain.Cajeros1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Cajeros1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCajeros, tform(frmCajeros));
  frmCajeros.btEdit.visible   := vMod;
  frmCajeros.btInsert.visible := vIns;
  frmCajeros.btDelete.visible := vDel;
end;

procedure TfrmMain.Almacenes1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Almacenes1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmAlmacenes, tform(frmAlmacenes));
  frmAlmacenes.btEdit.visible   := vMod;
  frmAlmacenes.btInsert.visible := vIns;
  frmAlmacenes.btDelete.visible := vDel;
end;

procedure TfrmMain.FormasdePago1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('FormasdePago1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmFormasPago, tform(frmFormasPago));
  frmFormasPago.btEdit.visible   := vMod;
  frmFormasPago.btInsert.visible := vIns;
  frmFormasPago.btDelete.visible := vDel;
end;

procedure TfrmMain.CondicionesdePago1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('CondicionesdePago1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCondiciones, tform(frmCondiciones));
  frmCondiciones.btEdit.visible   := vMod;
  frmCondiciones.btInsert.visible := vIns;
  frmCondiciones.btDelete.visible := vDel;
end;

procedure TfrmMain.TiposdeFactura1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('iposdeFactura1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoFacturas, tform(frmTipoFacturas));
  frmTipoFacturas.btEdit.visible   := vMod;
  frmTipoFacturas.btInsert.visible := vIns;
  frmTipoFacturas.btDelete.visible := vDel;
end;

procedure TfrmMain.Departamentos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Departamentos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmDeptos, tform(frmDeptos));
  frmDeptos.btEdit.visible   := vMod;
  frmDeptos.btInsert.visible := vIns;
  frmDeptos.btDelete.visible := vDel;
end;

procedure TfrmMain.FamiliasdeProductos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('FamiliadeProductos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmFamilias, tform(frmFamilias));
  frmFamilias.btEdit.visible   := vMod;
  frmFamilias.btInsert.visible := vIns;
  frmFamilias.btDelete.visible := vDel;
end;

procedure TfrmMain.Usuarios1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Usuarios1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmUsuarios, tform(frmUsuarios));
  frmUsuarios.btEdit.visible   := vMod;
  frmUsuarios.btInsert.visible := vIns;
  frmUsuarios.btDelete.visible := vDel;
end;

procedure TfrmMain.Proveedores1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and pri_nombre = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := 'Proveedores1';
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmProveedores, tform(frmProveedores));
  frmProveedores.btEdit.visible   := vMod;
  frmProveedores.btInsert.visible := vIns;
  frmProveedores.btDelete.visible := vDel;
end;

procedure TfrmMain.Clientes1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Clientes1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmClientes, tform(frmClientes));
  frmClientes.btInsert.visible   := vIns;
  frmClientes.btEdit.visible := vMod;
  frmClientes.btDelete.visible := vDel;
end;

procedure TfrmMain.Productos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Productos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmProductos, tform(frmProductos));
  frmProductos.btEdit.visible   := vMod;
  frmProductos.btInsert.visible := vIns;
  frmProductos.btDelete.visible := vDel;
end;

procedure TfrmMain.Colores1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Colores1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmColores, tform(frmColores));
  frmColores.btEdit.visible   := vMod;
  frmColores.btInsert.visible := vIns;
  frmColores.btDelete.visible := vDel;
end;

procedure TfrmMain.Ofertas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Ofertas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmOfertas, tform(frmOfertas));
  frmOfertas.btEdit.visible   := vMod;
  frmOfertas.btInsert.visible := vIns;
  frmOfertas.btDelete.visible := vDel;
end;

procedure TfrmMain.Facturacin1Click(Sender: TObject);
begin
  activaforma(tfrmFactura, tform(frmFactura));
end;

procedure TfrmMain.DeClientes1Click(Sender: TObject);
begin
  activaforma(tfrmPedidosCli, tform(frmPedidosCli));
end;

procedure TfrmMain.AProveedores1Click(Sender: TObject);
begin
  activaforma(tfrmPedidosProv, tform(frmPedidosProv));
end;

procedure TfrmMain.NotasdeCrdito1Click(Sender: TObject);
begin
  activaforma(tfrmNotasCR, tform(frmNotasCR));
end;

procedure TfrmMain.NotasdeDbito1Click(Sender: TObject);
begin
  activaforma(tfrmNotasDB, tform(frmNotasDB));
end;

procedure TfrmMain.Devolucin1Click(Sender: TObject);
begin
  if MessageDlg('LA DEVOLUCION ES CON FACTURA?',mtConfirmation,[mbyes,mbno],0) = mryes then
     activaforma(tfrmDevolucion, tform(frmDevolucion))
  else
     activaforma(tfrmDevSinFactura, tform(frmDevSinFactura));
end;

procedure TfrmMain.RecibosdeCobro1Click(Sender: TObject);
begin
  activaforma(tfrmRecibos, tform(frmRecibos));
end;

procedure TfrmMain.Desembolsos1Click(Sender: TObject);
begin
  activaforma(tfrmDesembolsos, tform(frmDesembolsos));
end;

procedure TfrmMain.Cotizacin1Click(Sender: TObject);
begin
  activaforma(tfrmCotizacion, tform(frmCotizacion));
end;

procedure TfrmMain.EntradasdeAlmacn1Click(Sender: TObject);
begin
  activaforma(tfrmEntradas, tform(frmEntradas));
end;

procedure TfrmMain.Conduces1Click(Sender: TObject);
begin
  activaforma(tfrmConduce, tform(frmConduce));
end;

procedure TfrmMain.InventarioFsico2Click(Sender: TObject);
begin
  activaforma(tfrmInvFisico, tform(frmInvFisico));
end;

procedure TfrmMain.Transferenciasentrealmacenes1Click(Sender: TObject);
begin
  activaforma(tfrmTransferencia, tform(frmTransferencia));
end;

procedure TfrmMain.DisplayHint(Sender: TObject);
begin
  StBar2.Panels[1].Text := GetLongHint(Application.Hint);
end;

procedure TfrmMain.Acercade1Click(Sender: TObject);
begin
  application.createform(tfrmAcerca, frmAcerca);
  frmAcerca.showmodal;
  frmAcerca.release;
end;

procedure TfrmMain.Vendedores1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Vendedores1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmVendedor, tform(frmVendedor));
  frmVendedor.btEdit.visible   := vMod;
  frmVendedor.btInsert.visible := vIns;
  frmVendedor.btDelete.visible := vDel;
end;

procedure TfrmMain.Cambiardeusuario1Click(Sender: TObject);
begin
  application.createform(tfrmAcceso, frmAcceso);
  acceso := 0;
  frmAcceso.showmodal;
end;

procedure TfrmMain.Otroscargos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Otroscargos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCargos, tform(frmCargos));
  frmCargos.btEdit.visible   := vMod;
  frmCargos.btInsert.visible := vIns;
  frmCargos.btDelete.visible := vDel;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  if acceso = 0 then
  begin
    application.createform(tfrmAcceso, frmAcceso);
    frmAcceso.showmodal;
  end;
end;

procedure TfrmMain.Puntodeventa1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmPideCajero, frmPideCajero);
  if frmPideCajero.ShowModal <> mrOk then
    frmPideCajero.release
  else
  begin
    frmPideCajero.release;
    application.CreateForm(tfrmPVenta, frmPVenta);
    frmPVenta.edCajero.Text := dm.Query1.fieldbyname('caj_nombre').asstring;
    frmPVenta.edFecha.Text  := datetostr(date);
    frmPVenta.edHora.Text  := datetostr(time);
    frmPVenta.Cajero := dm.Query1.fieldbyname('caj_codigo').asinteger;
    frmPVenta.showmodal;
    frmPVenta.release;
  end;
end;

procedure TfrmMain.FormatosdeImpresin1Click(Sender: TObject);
begin
  activaforma(tfrmFormatoImp, tform(frmFormatoImp));
end;

procedure TfrmMain.ListadodeFacturas1Click(Sender: TObject);
begin
  activaforma(tfrmConsFacturas, tform(frmConsFacturas));
end;

procedure TfrmMain.FactudasdeProveedores1Click(Sender: TObject);
begin
  activaforma(tfrmFacProvee, tform(frmFacProvee));
end;

procedure TfrmMain.Calculadora1Click(Sender: TObject);
begin
  winexec('calc.exe',1);
end;

procedure TfrmMain.Pagosacuentasporpagar1Click(Sender: TObject);
begin
  activaforma(tfrmPagos, tform(frmPagos));
end;

procedure TfrmMain.CuadredeCaja1Click(Sender: TObject);
begin
  activaforma(tfrmCuadre, tform(frmCuadre));
end;

procedure TfrmMain.RecibosdeCobro2Click(Sender: TObject);
begin
  activaforma(tfrmConsRecibos, tform(frmConsRecibos));
end;

procedure TfrmMain.Desembolsos2Click(Sender: TObject);
begin
  activaforma(tfrmConsDesem, tform(frmConsDesem));
end;

procedure TfrmMain.Devoluciones1Click(Sender: TObject);
begin
  activaforma(tfrmConsDev, tform(frmConsDev));
end;

procedure TfrmMain.NotasdeCrdito2Click(Sender: TObject);
begin
  activaforma(tfrmConsNC, tform(frmConsNC));
end;

procedure TfrmMain.NotasdeDbito2Click(Sender: TObject);
begin
  activaforma(tfrmConsDB, tform(frmConsDB));
end;

procedure TfrmMain.EntradasdeAlmacn2Click(Sender: TObject);
begin
  activaforma(tfrmConsEntrada, tform(frmConsEntrada));
end;

procedure TfrmMain.Conduces2Click(Sender: TObject);
begin
  activaforma(tfrmConsConduce, tform(frmConsConduce));
end;

procedure TfrmMain.Beneficios1Click(Sender: TObject);
begin
  activaforma(tfrmConsBeneficio, tform(frmConsBeneficio));
end;

procedure TfrmMain.ProductosCliente1Click(Sender: TObject);
begin
  activaforma(tfrmConsProdCliente, tform(frmConsProdCliente));
end;

procedure TfrmMain.PorProducto1Click(Sender: TObject);
begin
  activaforma(tfrmConsFacturasProd, tform(frmConsFacturasProd));
end;

procedure TfrmMain.Cuentasporpagar2Click(Sender: TObject);
begin
  activaforma(tfrmConsCxP, tform(frmConsCxP));
end;

procedure TfrmMain.iposdemovimientos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('iposdemovimiento1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmTipoMov, tform(frmTipoMov));
  frmTipoMov.btEdit.visible   := vMod;
  frmTipoMov.btInsert.visible := vIns;
  frmTipoMov.btDelete.visible := vDel;
end;

procedure TfrmMain.CuentasporCobrar1Click(Sender: TObject);
begin
  activaforma(tfrmConsCxC, tform(frmConsCxC));
end;

procedure TfrmMain.Pagos1Click(Sender: TObject);
begin
  activaforma(tfrmConsPago, tform(frmConsPago));
end;

procedure TfrmMain.Facturasdeproveedores1Click(Sender: TObject);
begin
  activaforma(tfrmConsFacProvee, tform(frmConsFacProvee));
end;

procedure TfrmMain.Declientes2Click(Sender: TObject);
begin
  activaforma(tfrmConsPedidosCli, tform(frmConsPedidosCli));
end;

procedure TfrmMain.Aproveedores2Click(Sender: TObject);
begin
  activaforma(tfrmConsPedidosProv, tform(frmConsPedidosProv));
end;

procedure TfrmMain.Clientes2Click(Sender: TObject);
begin
  activaforma(tfrmRepClientes, tform(frmRepClientes));
end;

procedure TfrmMain.ProveedoresClick(Sender: TObject);
begin
  activaforma(tfrmRepProveedores, tform(frmRepProveedores));
end;

procedure TfrmMain.MovimientosporDa1Click(Sender: TObject);
begin
  activaforma(tfrmRepMovDia, tform(frmRepMovDia));
end;

procedure TfrmMain.ListadodePrecios1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmRepPrecios, frmRepPrecios);
end;

procedure TfrmMain.ValordelInventario1Click(Sender: TObject);
begin
  Application.CreateForm(tRValorInv, RValorInv);
  RValorInv.lbFecha.Caption := 'Al '+DateToStr(Date);

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select rep2 from parconfigimpinv');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.ParamByName('emp').AsInteger := dm.vp_cia;
  dm.Query1.Open;
  if UpperCase(dm.Query1.FieldByName('rep2').AsString) = 'CON EXISTENCIA = 0' then
    RValorInv.QProductos.SQL.Add('and pro_existencia = 0')
  else if UpperCase(dm.Query1.FieldByName('rep2').AsString) = 'CON EXISTENCIA > 0' then
    RValorInv.QProductos.SQL.Add('and pro_existencia > 0');
  RValorInv.QProductos.SQL.Add('order by pro_nombre');
  RValorInv.QProductos.Open;
  RValorInv.PrinterSetup;
  RValorInv.Preview;
  RValorInv.Destroy;
end;

procedure TfrmMain.PorFamilia1Click(Sender: TObject);
begin
  Application.CreateForm(tRProdFamilia, RProdFamilia);
  if MessageDlg('DESEA SELECCIONAR UNA FAMILIA DE PRODUCTOS?',mtConfirmation,
  [mbyes,mbno],0) = mryes then
  begin
    Search.Query.Clear;
    Search.Query.Add('select fam_nombre, fam_codigo');
    Search.Query.Add('from familias');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.AliasFields.Clear;
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'fam_codigo';
    Search.Title := 'Familia de Productos';
    if Search.execute then
    begin
      RProdFamilia.QFamilias.SQL.Clear;
      RProdFamilia.QFamilias.SQL.Add('select distinct p.fam_codigo,');
      RProdFamilia.QFamilias.SQL.Add('f.fam_nombre, p.emp_codigo');
      RProdFamilia.QFamilias.SQL.Add('from productos p, familias f');
      RProdFamilia.QFamilias.SQL.Add('where p.emp_codigo = f.emp_codigo');
      RProdFamilia.QFamilias.SQL.Add('and p.fam_codigo = f.fam_codigo');
      RProdFamilia.QFamilias.SQL.Add('and p.emp_codigo = :emp_codigo');
      RProdFamilia.QFamilias.SQL.Add('and f.fam_codigo = '+Search.ValueField);
    end;
  end;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select rep3 from parconfigimpinv');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.ParamByName('emp').AsInteger := dm.QParametrosPAR_INVEMPRESA.value;
  dm.Query1.Open;
  if UpperCase(dm.Query1.FieldByName('rep3').AsString) = 'CON EXISTENCIA = 0' then
  begin
    RProdFamilia.QProductos.SQL.Add('and pro_existencia = 0');
    RProdFamilia.QFamilias.SQL.Add('and pro_existencia = 0');
  end
  else if UpperCase(dm.Query1.FieldByName('rep3').AsString) = 'CON EXISTENCIA > 0' then
  begin
    RProdFamilia.QProductos.SQL.Add('and pro_existencia > 0');
    RProdFamilia.QFamilias.SQL.Add('and pro_existencia > 0');
  end;

  RProdFamilia.QProductos.SQL.Add('order by pro_nombre');
  RProdFamilia.QFamilias.SQL.Add('order by f.fam_codigo');
  RProdFamilia.lbFecha.Caption := 'Al '+DateToStr(Date);
  RProdFamilia.QFamilias.Open;
  RProdFamilia.QProductos.Open;
  RProdFamilia.PrinterSetup;
  RProdFamilia.Preview;
  RProdFamilia.Destroy;
end;

procedure TfrmMain.Enpuntodereorden1Click(Sender: TObject);
begin
  Application.CreateForm(tRValorInv, RValorInv);
  RValorInv.QProductos.SQL.Clear;
  RValorInv.QProductos.SQL.Add('select PRO_CODIGO, PRO_EXISTENCIA,');
  RValorInv.QProductos.SQL.Add('PRO_NOMBRE, PRO_PRECIO1, PRO_PRECIO2,');
  RValorInv.QProductos.SQL.Add('PRO_PRECIO3, PRO_PRECIO4, PRO_RFABRIC,');
  RValorInv.QProductos.SQL.Add('PRO_RORIGINAL, PRO_COSTO from PRODUCTOS');
  RValorInv.QProductos.SQL.Add('where emp_codigo = :emp_codigo');
  RValorInv.QProductos.SQL.Add('and pro_existencia > 0');
  RValorInv.QProductos.SQL.Add('and PRO_STKMINIMO >= pro_existencia');
  RValorInv.QProductos.SQL.Add('order by pro_nombre');
  RValorInv.lbTitulo.Caption := 'Productos en punto de reorden';
  RValorInv.lbFecha.Caption := 'Al '+DateToStr(Date);
  RValorInv.QProductos.Open;
  RValorInv.PrinterSetup;
  RValorInv.Preview;
  RValorInv.Destroy;
end;

procedure TfrmMain.PorProveedor1Click(Sender: TObject);
begin
  Application.CreateForm(tRRepProdProveedor, RRepProdProveedor);
  if MessageDlg('DESEA SELECCIONAR UNA PROVEEDOR?',mtConfirmation,
  [mbyes,mbno],0) = mryes then
  begin
    Search.Query.Clear;
    Search.Query.Add('select sup_nombre, sup_codigo');
    Search.Query.Add('from proveedores');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.AliasFields.Clear;
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'sup_codigo';
    Search.Title := 'Proveedores';
    if Search.execute then
    begin
      RRepProdProveedor.QProv.SQL.Clear;
      RRepProdProveedor.QProv.SQL.Add('select distinct s.sup_nombre,');
      RRepProdProveedor.QProv.SQL.Add('s.sup_codigo, s.emp_codigo');
      RRepProdProveedor.QProv.SQL.Add('from proveedores s, prodproveedores v');
      RRepProdProveedor.QProv.SQL.Add('where s.emp_codigo = v.emp_codigo');
      RRepProdProveedor.QProv.SQL.Add('and s.sup_codigo = v.sup_codigo');
      RRepProdProveedor.QProv.SQL.Add('and v.emp_codigo = :emp_codigo');
      RRepProdProveedor.QProv.SQL.Add('and s.sup_codigo = '+Search.ValueField);
      RRepProdProveedor.QProv.SQL.Add('order by s.sup_codigo');
    end;
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select rep4 from parconfigimpinv');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.ParamByName('emp').AsInteger := dm.vp_cia;
  dm.Query1.Open;
  if UpperCase(dm.Query1.FieldByName('rep4').AsString) = 'CON EXISTENCIA = 0' then
    RRepProdProveedor.QProductos.SQL.Add('and pro_existencia = 0')
  else if UpperCase(dm.Query1.FieldByName('rep4').AsString) = 'CON EXISTENCIA > 0' then
    RRepProdProveedor.QProductos.SQL.Add('and pro_existencia > 0');

  RRepProdProveedor.QProductos.SQL.Add('order by p.pro_nombre');
  RRepProdProveedor.lbFecha.Caption := 'Al '+DateToStr(Date);
  RRepProdProveedor.QProv.Open;
  RRepProdProveedor.QProductos.Open;
  RRepProdProveedor.PrinterSetup;
  RRepProdProveedor.Preview;
  RRepProdProveedor.Destroy;
end;

procedure TfrmMain.InventarioFsico1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select alm_nombre, alm_codigo');
  Search.Query.Add('from almacen');
  Search.Query.Add('where emp_Codigo = '+inttostr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Almacenes';
  if Search.execute then
  begin
    Application.CreateForm(tRInvFisico, RInvFisico);
    RInvFisico.lbFecha.Caption := 'Al '+DateToStr(Date);
    RInvFisico.QProd.ParamByName('alm').AsInteger := StrToInt(Search.ValueField);
    RInvFisico.QProd.Open;
    RInvFisico.PrinterSetup;
    RInvFisico.Preview;
    RInvFisico.Destroy;
  end;
end;

procedure TfrmMain.Pordepartamento2Click(Sender: TObject);
begin
  Application.CreateForm(tRProdDepto, RProdDepto);
  if MessageDlg('DESEA SELECCIONAR UN DEPARTAMENTO?',mtConfirmation,
  [mbyes,mbno],0) = mryes then
  begin
    Search.Query.Clear;
    Search.Query.Add('select dep_nombre, dep_codigo');
    Search.Query.Add('from departamentos');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.AliasFields.Clear;
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'dep_codigo';
    Search.Title := 'Departamentos';
    if Search.execute then
    begin
      RProdDepto.QDeptos.SQL.Clear;
      RProdDepto.QDeptos.SQL.Add('select distinct d.dep_codigo, d.dep_nombre, d.emp_codigo');
      RProdDepto.QDeptos.SQL.Add('from departamentos d, productos p');
      RProdDepto.QDeptos.SQL.Add('where d.emp_Codigo = p.emp_Codigo');
      RProdDepto.QDeptos.SQL.Add('and d.dep_codigo = p.dep_codigo');
      RProdDepto.QDeptos.SQL.Add('and d.emp_Codigo = :emp_codigo');
      RProdDepto.QDeptos.SQL.Add('and d.dep_codigo = '+Search.ValueField);
    end;
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select rep5 from parconfigimpinv');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.ParamByName('emp').AsInteger := dm.vp_cia;
  dm.Query1.Open;
  if UpperCase(dm.Query1.FieldByName('rep5').AsString) = 'CON EXISTENCIA = 0' then
  begin
    RProdDepto.QProductos.SQL.Add('and pro_existencia = 0');
    RProdDepto.QDeptos.SQL.Add('and p.pro_existencia = 0');
  end
  else if UpperCase(dm.Query1.FieldByName('rep5').AsString) = 'CON EXISTENCIA > 0' then
  begin
    RProdDepto.QProductos.SQL.Add('and pro_existencia > 0');
    RProdDepto.QDeptos.SQL.Add('and p.pro_existencia > 0');
  end;

  RProdDepto.QDeptos.SQL.Add('order by d.dep_nombre');
  RProdDepto.QProductos.SQL.Add('order by pro_nombre');
  RProdDepto.QDeptos.Open;
  RProdDepto.QProductos.Open;
  RProdDepto.lbFecha.Caption := 'Al '+DateToStr(Date);
  RProdDepto.PrinterSetup;
  RProdDepto.Preview;
  RProdDepto.Destroy;
end;

procedure TfrmMain.ListadoGeneral1Click(Sender: TObject);
begin
  Application.CreateForm(tRCxC, RCxC);
  RCxC.QClientes.Open;
  RCxC.QDocs.Open;
  RCxC.lbFecha.Caption := 'Al '+DateToStr(Date);
  RCxC.PrinterSetup;
  RCxC.Preview;
  RCxC.Destroy;
end;

procedure TfrmMain.btExcelClick(Sender: TObject);
begin
  if GrabaXLS.Execute then
  begin
    ExportXLS.FileName := GrabaXLS.FileName;
    ExportXLS.Execute;
  end;
end;

procedure TfrmMain.Reimpresindedocumentos1Click(Sender: TObject);
begin
  ActivaForma(tfrmReimpresion, Tform(frmReimpresion));
end;

procedure TfrmMain.Listadogeneral2Click(Sender: TObject);
begin
  Application.CreateForm(tRCxP, RCxP);
  RCxP.QProv.Open;
  RCxP.QDocs.Open;
  RCxP.lbFecha.Caption := 'Al '+DateToStr(Date);
  RCxP.PrinterSetup;
  RCxP.Preview;
  RCxP.Destroy;
end;

procedure TfrmMain.FacturasVencidas1Click(Sender: TObject);
begin
  Application.CreateForm(tRFacVencidas, RFacVencidas);
  RFacVencidas.lbFecha.Caption := 'Al '+DateToStr(Date);
  RFacVencidas.QFacturas.ParamByName('emp').AsInteger := dm.vp_cia;
  RFacVencidas.QFacturas.ParamByName('fecha').AsDate  := Date;
  RFacVencidas.QFacturas.Open;
  RFacVencidas.QFacturas.FetchAll;
  RFacVencidas.PrinterSetup;
  RFacVencidas.Preview;
  RFacVencidas.Destroy;
end;

procedure TfrmMain.Factura1Click(Sender: TObject);
begin
  if dm.QParametrosPAR_FACANULA.Value = 'False' then
    MessageDlg('EL SISTEMA NO PERMITE ANULAR FACTURA',mtError,[mbok],0)
  else
    ActivaForma(tfrmAnulaFac, Tform(frmAnulaFac));
end;

procedure TfrmMain.NotadeCrdito1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaNC, Tform(frmAnulaNC));
end;

procedure TfrmMain.entra(campo: tobject);
begin
  (campo as tdbedit).Color := clSilver;
end;

procedure TfrmMain.sale(campo: tobject);
begin
  (campo as tdbedit).Color := clWindow;
end;

procedure TfrmMain.EstadosdeCuentas1Click(Sender: TObject);
begin
  ActivaForma(tfrmEstadoCtaCli, Tform(frmEstadoCtaCli));
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  stBar1.Panels[3].text := FormatDateTime('dddd, dd "de" mmmmmmmmmm "del" yyyy',now);
end;

procedure TfrmMain.AntiguedaddeSaldo1Click(Sender: TObject);
begin
  Application.CreateForm(tRAntigSaldo, RAntigSaldo);
  RAntigSaldo.lbFecha.Caption := 'Al '+DateToStr(Date);
  RAntigSaldo.QClientes.ParamByName('Fecha').AsDate := Date;
  RAntigSaldo.QClientes.Open;
  RAntigSaldo.PrinterSetup;
  RAntigSaldo.Preview;
  RAntigSaldo.Destroy;
end;

procedure TfrmMain.Bancos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Bancos1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  ActivaForma(tfrmBancos, Tform(frmBancos));
  frmBancos.btEdit.visible   := vMod;
  frmBancos.btInsert.visible := vIns;
  frmBancos.btDelete.visible := vDel;
end;

procedure TfrmMain.ExistenciaporProducto1Click(Sender: TObject);
begin
  ActivaForma(tfrmExistProducto, Tform(frmExistProducto));
end;

procedure TfrmMain.Cambiarlmitedelcliente1Click(Sender: TObject);
begin
  ActivaForma(tfrmLimite, Tform(frmLimite));
end;

procedure TfrmMain.Limpiararchivostemporales1Click(Sender: TObject);
begin
  if MessageDlg('ESTA SEGURO QUE DESEA LIMPIAR LOS'+#13+
                'ARCHIVOS TEMPORALES?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute procedure pr_limpia_temp (:emp)');
    dm.Query1.ParamByName('emp').AsInteger := dm.vp_cia;
    dm.Query1.ExecSQL;
    dm.IBTransaction1.CommitRetaining;
    MessageDlg('PROCESO TERMINADO',mtInformation,[mbok],0);
  end;
end;

procedure TfrmMain.stBar2DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  with StBAr2.Canvas do
  begin
    if Panel.Index = 0 then
    begin
      Brush.Color := clSkyBlue;
      FillRect(Rect);
      Font.Color := clBlack;
      Font.Style := Font.Style + [fsBold];
      ImageList2.Draw(StBar2.Canvas,Rect.Left,Rect.Top,5);
      TextOut(Rect.left + 20, Rect.top + 2, Panel.Text);
    end
    else
      TextOut(Rect.left, Rect.top, Panel.Text);
  end;
end;

procedure TfrmMain.stBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
with StBAr1.Canvas do
  begin
    if Panel.Index = 0 then
    begin
      Brush.Color := clSkyBlue;
      FillRect(Rect);
      Font.Color := clBlack;
      Font.Style := Font.Style + [fsBold];
      ImageList2.Draw(StBar1.Canvas,Rect.Left,Rect.Top,3);
      TextOut(Rect.left + 20, Rect.top + 2, Panel.Text);
    end
    else if Panel.Index = 1 then
    begin
      Font.Color := clBlack;
      Font.Style := Font.Style + [fsBold];
      TextOut(Rect.left, Rect.top, Panel.Text);
    end
    else
      TextOut(Rect.left, Rect.top, Panel.Text);
  end;
end;

procedure TfrmMain.Parmetrosgenerales1Click(Sender: TObject);
begin
  ActivaForma(tfrmParametros, Tform(frmParametros));
end;

procedure TfrmMain.Porformasdepago1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepFPago, Tform(frmRepFPago));
end;

procedure TfrmMain.Estadosdecuentas2Click(Sender: TObject);
begin
  ActivaForma(tfrmEstadoCtaProv, Tform(frmEstadoCtaProv));
end;

procedure TfrmMain.Antiguedaddesaldo2Click(Sender: TObject);
begin
  Application.CreateForm(tRAntigSaldoProv, RAntigSaldoProv);
  RAntigSaldoProv.lbFecha.Caption := 'Al '+DateToStr(Date);
  RAntigSaldoProv.QProv.ParamByName('Fecha').AsDate := Date;
  RAntigSaldoProv.QProv.Open;
  RAntigSaldoProv.PrinterSetup;
  RAntigSaldoProv.Preview;
  RAntigSaldoProv.Destroy;
end;

procedure TfrmMain.Facturasvencidas3Click(Sender: TObject);
begin
  Application.CreateForm(tRFacVencidasProv, RFacVencidasProv);
  RFacVencidasProv.lbFecha.Caption := 'Al '+DateToStr(Date);
  RFacVencidasProv.QFacturas.ParamByName('emp').AsInteger := dm.vp_cia;
  RFacVencidasProv.QFacturas.ParamByName('fecha').AsDate  := Date;
  RFacVencidasProv.QFacturas.Open;
  RFacVencidasProv.QFacturas.FetchAll;
  RFacVencidasProv.PrinterSetup;
  RFacVencidasProv.Preview;
  RFacVencidasProv.Destroy;
end;

procedure TfrmMain.Productosvendidos1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepProdVendidos, Tform(frmRepProdVendidos));
end;

procedure TfrmMain.Agrupadoporcliente1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaCliente, Tform(frmRepVentaCliente));
end;

procedure TfrmMain.Etiquetas1Click(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Application.CreateForm(tRRepEtiqClientes, RRepEtiqClientes);
  RRepEtiqClientes.QClientes.Open;
  RRepEtiqClientes.QClientes.FetchAll;
  Screen.Cursor := crDefault;
  RRepEtiqClientes.PrinterSetup;
  RRepEtiqClientes.Preview;
  RRepEtiqClientes.Destroy;
end;

procedure TfrmMain.Comisionesporvendedor1Click(Sender: TObject);
begin
  ActivaForma(tfrmConsComision, Tform(frmConsComision));
end;

procedure TfrmMain.Colocarexistenciaencero1Click(Sender: TObject);
begin
  if MessageDlg('DESEA SELECCIONAR UN ALMACEN?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Search.Query.Clear;
    Search.AliasFields.Clear;
    Search.Query.Add('select alm_nombre, alm_codigo');
    Search.Query.Add('from almacen');
    Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'alm_codigo';
    Search.Title := 'Almacenes';
    if Search.execute then
    begin
      if MessageDlg('SEGURO QUE DESEA COLOCAR EL INVENTARIO EN CERO?',
      mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        Screen.Cursor := crSQLWait;
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.add('execute procedure pr_existencia_cero (:emp, :alm)');
        dm.Query1.ParamByName('emp').AsInteger := dm.vp_cia;
        dm.Query1.ParamByName('alm').AsInteger := StrToInt(Search.ValueField);
        dm.Query1.ExecSQL;
        dm.IBTransaction1.CommitRetaining;
        Screen.Cursor := crDefault;
        MessageDlg('PROCESO TERMINADO',mtInformation,[mbok],0);
      end;
    end;
  end
  else
  begin
    if MessageDlg('SEGURO QUE DESEA COLOCAR EL INVENTARIO EN CERO?',
    mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Screen.Cursor := crSQLWait;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.add('execute procedure pr_existencia_cero (:emp, :alm)');
      dm.Query1.ParamByName('emp').AsInteger := dm.vp_cia;
      dm.Query1.ParamByName('alm').AsInteger := 0;
      dm.Query1.ExecSQL;
      dm.IBTransaction1.CommitRetaining;
      Screen.Cursor := crDefault;
      MessageDlg('PROCESO TERMINADO',mtInformation,[mbok],0);
    end;
  end;
end;

procedure TfrmMain.Procesartransferenciasdealmacen1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select tra_numero, tra_concepto');
  Search.Query.Add('from transfer');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and tra_status = "EMI"');
  Search.AliasFields.Add('Número');
  Search.AliasFields.Add('Concepto');
  Search.ResultField := 'tra_numero';
  Search.Title := 'Transferencia';
  if Search.execute then
  begin
    if MessageDlg('SEGURO QUE DESEA PROCESAR ESTA TRANSFERENCIA?',
    mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Screen.Cursor := crSQLWait;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.add('execute procedure PR_PROCESA_TRANS (:emp, :num)');
      dm.Query1.ParamByName('emp').AsInteger := dm.vp_cia;
      dm.Query1.ParamByName('num').AsInteger := StrToInt(Search.ValueField);
      dm.Query1.ExecSQL;
      dm.IBTransaction1.CommitRetaining;
      Screen.Cursor := crDefault;
      MessageDlg('TRANSFERENCIA PROCESADA',mtInformation,[mbok],0);
    end;
  end;
end;

procedure TfrmMain.ransferenciasentrealmacen1Click(Sender: TObject);
begin
  ActivaForma(tfrmConsTransferencia, Tform(frmConsTransferencia));
end;

procedure TfrmMain.Modificacindeprecios1Click(Sender: TObject);
begin
  ActivaForma(tfrmModificaPrecio, Tform(frmModificaPrecio));
end;

procedure TfrmMain.Asignarclienteafactura1Click(Sender: TObject);
begin
  ActivaForma(tfrmAsignaCliente, Tform(frmAsignaCliente));
end;

procedure TfrmMain.CierredelDa1Click(Sender: TObject);
begin
  ActivaForma(tfrmCierreDia, Tform(frmCierreDia));
end;

procedure TfrmMain.Actualizacindebalances1Click(Sender: TObject);
begin
  if MessageDlg('DESEA ACTUALIZAR LOS BALANCES?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Application.CreateForm(tfrmActBalance, frmActBalance);
    frmActBalance.Update;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute procedure pr_actualiza_bce (:emp)');
    dm.Query1.ParamByName('emp').AsInteger := dm.vp_cia;
    dm.Query1.ExecSQL;
    dm.IBTransaction1.CommitRetaining;
    frmActBalance.Close;
  end;
end;

procedure TfrmMain.NotadeDbito1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaND, Tform(frmAnulaND));
end;

procedure TfrmMain.Procesarconteofsico1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select alm_nombre, alm_codigo');
  Search.Query.Add('from almacen');
  Search.Query.Add('where emp_Codigo = '+inttostr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Almacenes';
  if Search.execute then
  begin
    Application.CreateForm(tfrmActBalance, frmActBalance);
    frmActBalance.Caption := 'Procesando Inventario Físico';
    frmActBalance.Label1.Caption := 'Procesando Inventario Físico';
    frmActBalance.Update;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute procedure pr_procesa_fisico (:emp, :alm)');
    dm.Query1.ParamByName('emp').AsInteger := dm.vp_cia;
    dm.Query1.ParamByName('alm').AsInteger := StrToInt(Search.ValueField);
    dm.Query1.ExecSQL;
    dm.IBTransaction1.CommitRetaining;
    frmActBalance.Close;
  end;
end;

procedure TfrmMain.Devolucin2Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaDev, Tform(frmAnulaDev));
end;

procedure TfrmMain.Portipodefactura1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaTipoFac, Tform(frmRepVentaTipoFac));
end;

procedure TfrmMain.RecibodeCobro1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaREC, Tform(frmAnulaREC));
end;

procedure TfrmMain.Desembolso1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaDesem, Tform(frmAnulaDesem));
end;

procedure TfrmMain.EntradadeAlmacn1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaEnt, Tform(frmAnulaEnt));
end;

procedure TfrmMain.Conduce1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaCond, Tform(frmAnulaCond));
end;

procedure TfrmMain.Facturadeproveedores1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaProvFact, Tform(frmAnulaProvFact));
end;

procedure TfrmMain.Marcas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Marcas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  ActivaForma(tfrmMarcas, Tform(frmMarcas));
  frmMarcas.btEdit.visible   := vMod;
  frmMarcas.btInsert.visible := vIns;
  frmMarcas.btDelete.visible := vDel;
end;

procedure TfrmMain.Servicios1Click(Sender: TObject);
begin
  Application.CreateForm(tRRepServicios, RRepServicios);
  RRepServicios.lbFecha.Caption := 'Al '+DateToStr(Date);
  RRepServicios.QProductos.Open;
  RRepServicios.QProductos.FetchAll;
  RRepServicios.PrinterSetup;
  RRepServicios.Preview;
  RRepServicios.Destroy;
end;

procedure TfrmMain.Porfamiliadeproductos1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaFamilia, Tform(frmRepVentaFamilia));
end;

procedure TfrmMain.Pordepartamentos1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaDepto, Tform(frmRepVentaDepto));
end;

procedure TfrmMain.Pormarca1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepVentaMarca, Tform(frmRepVentaMarca));
end;

procedure TfrmMain.Pormarca2Click(Sender: TObject);
begin
  Application.CreateForm(tRProdMarca, RProdMarca);
  if MessageDlg('DESEA SELECCIONAR UNA MARCA?',mtConfirmation,
  [mbyes,mbno],0) = mryes then
  begin
    Search.Query.Clear;
    Search.Query.Add('select mar_nombre, mar_codigo');
    Search.Query.Add('from marcas');
    Search.AliasFields.Clear;
    Search.AliasFields.Add('Nombre');
    Search.AliasFields.Add('Código');
    Search.ResultField := 'mar_codigo';
    Search.Title := 'Marcas';
    if Search.execute then
    begin
      RProdMarca.QMarcas.SQL.Clear;
      RProdMarca.QMarcas.SQL.Add('SELECT DISTINCT M.MAR_CODIGO, M.MAR_NOMBRE, P.EMP_CODIGO');
      RProdMarca.QMarcas.SQL.Add('FROM MARCAS M, PRODUCTOS P');
      RProdMarca.QMarcas.SQL.Add('WHERE M.MAR_CODIGO = P.MAR_CODIGO');
      RProdMarca.QMarcas.SQL.Add('AND P.EMP_CODIGO = :EMP_CODIGO');
      RProdMarca.QMarcas.SQL.Add('and m.mar_codigo = '+Search.ValueField);
    end;
  end;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select rep6 from parconfigimpinv');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.ParamByName('emp').AsInteger := dm.vp_cia;
  dm.Query1.Open;
  if UpperCase(dm.Query1.FieldByName('rep6').AsString) = 'CON EXISTENCIA = 0' then
  begin
    RProdMarca.QProductos.SQL.Add('and pro_existencia = 0');
    RProdMarca.QMarcas.SQL.Add('and p.pro_existencia = 0');
  end
  else if UpperCase(dm.Query1.FieldByName('rep6').AsString) = 'CON EXISTENCIA > 0' then
  begin
    RProdMarca.QProductos.SQL.Add('and pro_existencia > 0');
    RProdMarca.QMarcas.SQL.Add('and p.pro_existencia > 0');
  end;

  RProdMarca.QProductos.SQL.Add('order by pro_nombre');
  RProdMarca.QMarcas.SQL.Add('ORDER BY M.MAR_NOMBRE');
  RProdMarca.QMarcas.Open;
  RProdMarca.QProductos.Open;
  RProdMarca.lbFecha.Caption := 'Al '+DateToStr(Date);
  RProdMarca.PrinterSetup;
  RProdMarca.Preview;
  RProdMarca.Destroy;
end;

procedure TfrmMain.Pagoaproveedores1Click(Sender: TObject);
begin
  ActivaForma(tfrmAnulaPago, Tform(frmAnulaPago));
end;

procedure TfrmMain.Utilidaddelabasededatos1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmBackup, frmBackup);
  frmBackup.ShowModal;
  frmBackup.Release;
end;

procedure TfrmMain.Envencimiento1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepProdVencidos, Tform(frmRepProdVencidos));
end;

procedure TfrmMain.CambiarStatus1Click(Sender: TObject);
begin
  ActivaForma(tfrmCambiaStatus, Tform(frmCambiaStatus));
end;

procedure TfrmMain.Impresindecodigosdebarra1Click(Sender: TObject);
begin
  ActivaForma(tfrmRepCodigoBarra, Tform(frmRepCodigoBarra));
end;

procedure TfrmMain.ToolButton1Click(Sender: TObject);
var
  ar : textfile;
begin
  assignfile(ar,'c:\imp.bat');
  rewrite(ar);
  writeln(ar,'type c:\t.txt > prn');
  closefile(ar);

  assignfile(ar,'c:\t.txt');
  rewrite(ar);
  write(ar,chr(28));

  closefile(ar);

  winexec('c:\imp.bat',0);
end;

procedure TfrmMain.AVencimientoExecute(Sender: TObject);
begin
  ActivaForma(tfrmVencimiento, Tform(frmVencimiento));
end;

procedure TfrmMain.OperacionesdelMes1Click(Sender: TObject);
begin
  ActivaForma(tfrmConsOperaciones, Tform(frmConsOperaciones));
end;

end.
