unit CONT00;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, Buttons, Menus, QuerySearchDlgIB, AVLockGold,
  scExcelExport, QExport, QExportXLS, DBCtrls, GX_Outlook, ImgList, ToolWin,
  ActnList, QRExport, OleCtrls, SHDocVw, Commctrl, StdCtrls;

type
  TfrmMain = class(TForm)
    stBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Consultas1: TMenuItem;
    Reportes1: TMenuItem;
    Procesos1: TMenuItem;
    stBar2: TStatusBar;
    Acercade1: TMenuItem;
    Utilidades1: TMenuItem;
    Parmetrosgenerales1: TMenuItem;
    N4: TMenuItem;
    Calculadora1: TMenuItem;
    Cambiardeusuario1: TMenuItem;
    AV: TAVLockGold;
    Search: TQrySearchDlgIB;
    ExportXLS: TQExportXLS;
    GrabaXLS: TSaveDialog;
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
    ImageList2: TImageList;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    btExcel: TToolButton;
    ToolButton2: TToolButton;
    QRTextFilter1: TQRTextFilter;
    QRHTMLFilter1: TQRHTMLFilter;
    QRCSVFilter1: TQRCSVFilter;
    Maestros1: TMenuItem;
    Empresas1: TMenuItem;
    Usuarios1: TMenuItem;
    Bancos1: TMenuItem;
    Utilidaddelabasededatos1: TMenuItem;
    iposdedocumento1: TMenuItem;
    Nmerosdeentradas1: TMenuItem;
    Anexos1: TMenuItem;
    Movimientosdeunacuenta1: TMenuItem;
    Balancesdeunacuenta1: TMenuItem;
    Entradasdediario1: TMenuItem;
    Diariogeneral1: TMenuItem;
    Entradadediario1: TMenuItem;
    Mayorgeneral1: TMenuItem;
    Estadodesituacion1: TMenuItem;
    Estadoderesultado1: TMenuItem;
    Balancedecomprobacin1: TMenuItem;
    Cierredemes1: TMenuItem;
    Cierredeao1: TMenuItem;
    Catlogodecuentas1: TMenuItem;
    Entradasdediario2: TMenuItem;
    Anexos2: TMenuItem;
    Pasardocumentosacontabilidad1: TMenuItem;
    Conciliacin1: TMenuItem;
    Cheques1: TMenuItem;
    Crear1: TMenuItem;
    Anular1: TMenuItem;
    Imprimir1: TMenuItem;
    Eliminar1: TMenuItem;
    Solicitudes1: TMenuItem;
    Crear2: TMenuItem;
    Imprimir2: TMenuItem;
    Eliminar2: TMenuItem;
    Aprobar1: TMenuItem;
    Depsitos1: TMenuItem;
    Crear3: TMenuItem;
    Eliminar3: TMenuItem;
    Anular3: TMenuItem;
    Cargosbancarios1: TMenuItem;
    Crear4: TMenuItem;
    Anular4: TMenuItem;
    Eliminar4: TMenuItem;
    Librodebanco1: TMenuItem;
    N1: TMenuItem;
    Cheques2: TMenuItem;
    Solicitudesdecheque1: TMenuItem;
    Depositos1: TMenuItem;
    Cargosbancarios2: TMenuItem;
    Configurarimpresiondecheque1: TMenuItem;
    Copiarcatlogoentrecompaas1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Salir1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure Proveedores1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure Cambiardeusuario1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure ProveedoresClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure stBar2DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure stBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure Catlogodecuentas1Click(Sender: TObject);
    procedure iposdedocumento1Click(Sender: TObject);
    procedure Nmerosdeentradas1Click(Sender: TObject);
    procedure Anexos1Click(Sender: TObject);
    procedure Entradasdediario2Click(Sender: TObject);
    procedure Movimientosdeunacuenta1Click(Sender: TObject);
    procedure Entradasdediario1Click(Sender: TObject);
    procedure Entradadediario1Click(Sender: TObject);
    procedure Diariogeneral1Click(Sender: TObject);
    procedure Estadoderesultado1Click(Sender: TObject);
    procedure Balancedecomprobacin1Click(Sender: TObject);
    procedure Cierredemes1Click(Sender: TObject);
    procedure Mayorgeneral1Click(Sender: TObject);
    procedure Anexos2Click(Sender: TObject);
    procedure Estadodesituacion1Click(Sender: TObject);
    procedure Balancesdeunacuenta1Click(Sender: TObject);
    procedure Crear1Click(Sender: TObject);
    procedure Cheques2Click(Sender: TObject);
    procedure Configurarimpresiondecheque1Click(Sender: TObject);
    procedure Anular1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Crear2Click(Sender: TObject);
    procedure Solicitudesdecheque1Click(Sender: TObject);
    procedure Aprobar1Click(Sender: TObject);
    procedure Imprimir2Click(Sender: TObject);
    procedure Eliminar2Click(Sender: TObject);
    procedure Crear3Click(Sender: TObject);
    procedure Depositos1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Crear4Click(Sender: TObject);
    procedure Cargosbancarios2Click(Sender: TObject);
    procedure Anular3Click(Sender: TObject);
    procedure Eliminar3Click(Sender: TObject);
    procedure Anular4Click(Sender: TObject);
    procedure Eliminar4Click(Sender: TObject);
    procedure Librodebanco1Click(Sender: TObject);
    procedure Copiarcatlogoentrecompaas1Click(Sender: TObject);
    procedure Utilidaddelabasededatos1Click(Sender: TObject);
    procedure Cierredeao1Click(Sender: TObject);
    procedure Pasardocumentosacontabilidad1Click(Sender: TObject);
  private
    { Private declarations }
    FClientInstance : TFarProc;
    FPrevClientProc : TFarProc;
    procedure ClientWndProc(var Message: TMessage);
  public
    { Public declarations }
    acceso : integer;
    Cap, Num, Ins, Mes, Ano : integer;
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

  TTS_BALLOON    = $40;
  TTM_SETTITLE = (WM_USER + 32);

var
  frmMain: TfrmMain;
  hTooltip: Cardinal;
  ti: TToolInfo;
  buffer : array[0..255] of char;


implementation

uses CONT01, CONT04, CONT03, CONT07, CONT02, CONT05, CONT06, CONT08, CONT10,
  CONT09, CONT11, CONT12, CONT13, CONT14, CONT15, CONT16, CONT17, CONT18,
  CONT19, CONT20, CONT21, CONT22, CONT23, CONT24, CONT25, CONT26, CONT27,
  CONT28, CONT29, CONT30, CONT31, CONT32, CONT33, CONT34, CONT35, CONT37,
  CONT38, CONT39, CONT40, CONT41, CONT42, CONT43, CONT44, CONT45, CONT46,
  CONT47, CONT48, PVENTA108, CONT50, CONT51;

{$R *.DFM}

procedure CreateToolTips(hWnd: Cardinal); 
begin 
  hToolTip := CreateWindowEx(0, 'Tooltips_Class32', nil, TTS_ALWAYSTIP or TTS_BALLOON, 
    Integer(CW_USEDEFAULT), Integer(CW_USEDEFAULT), Integer(CW_USEDEFAULT), 
    Integer(CW_USEDEFAULT), hWnd, 0, hInstance, nil); 
  if hToolTip <> 0 then 
  begin 
    SetWindowPos(hToolTip, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or 
      SWP_NOSIZE or SWP_NOACTIVATE); 
    ti.cbSize := SizeOf(TToolInfo); 
    ti.uFlags := TTF_SUBCLASS; 
    ti.hInst  := hInstance; 
  end; 
end; 

procedure AddToolTip(hwnd: DWORD; lpti: PToolInfo; IconType: Integer; 
  Text, Title: PChar); 
var 
  Item: THandle; 
  Rect: TRect; 
begin 
  Item := hWnd; 
  if (Item <> 0) and (GetClientRect(Item, Rect)) then 
  begin 
    lpti.hwnd := Item;
    lpti.Rect := Rect; 
    lpti.lpszText := Text; 
    SendMessage(hToolTip, TTM_ADDTOOL, 0, Integer(lpti)); 
    FillChar(buffer, SizeOf(buffer), #0); 
    lstrcpy(buffer, Title); 
    if (IconType > 3) or (IconType < 0) then IconType := 0; 
    SendMessage(hToolTip, TTM_SETTITLE, IconType, Integer(@buffer)); 
  end; 
end; 

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
  dm.Query1.sql.add('from contprivilegios where usu_codigo = :usu ');
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

procedure TfrmMain.Usuarios1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from contprivilegios where usu_codigo = :usu ');
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
  dm.Query1.sql.add('from contprivilegios where usu_codigo = :usu ');
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
  dm.Query1.sql.add('from contprivilegios where usu_codigo = :usu ');
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

procedure TfrmMain.Cambiardeusuario1Click(Sender: TObject);
begin
  application.createform(tfrmAcceso, frmAcceso);
  acceso := 0;
  frmAcceso.showmodal;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  if acceso = 0 then
  begin
    application.createform(tfrmAcceso, frmAcceso);
    frmAcceso.showmodal;
  end;
end;

procedure TfrmMain.Calculadora1Click(Sender: TObject);
begin
  winexec('calc.exe',1);
end;

procedure TfrmMain.Clientes2Click(Sender: TObject);
begin
  activaforma(tfrmRepClientes, tform(frmRepClientes));
end;

procedure TfrmMain.ProveedoresClick(Sender: TObject);
begin
  activaforma(tfrmRepProveedores, tform(frmRepProveedores));
end;

procedure TfrmMain.btExcelClick(Sender: TObject);
begin
  if GrabaXLS.Execute then
  begin
    ExportXLS.FileName := GrabaXLS.FileName;
    ExportXLS.Execute;
  end;
end;

procedure TfrmMain.entra(campo: tobject);
begin
  (campo as tdbedit).Color := clSilver;
end;

procedure TfrmMain.sale(campo: tobject);
begin
  (campo as tdbedit).Color := clWindow;
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  stBar1.Panels[3].text := FormatDateTime('dddd, dd "de" mmmmmmmmmm "del" yyyy',now);
end;

procedure TfrmMain.Bancos1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from contprivilegios where usu_codigo = :usu ');
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

procedure TfrmMain.Catlogodecuentas1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from contprivilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.parambyname('usu').asinteger := dm.Usuario;
  dm.Query1.parambyname('opc').asstring  := uppercase('Catlogodecuentas1');
  dm.Query1.open;
  vIns := dm.Query1.fieldbyname('Inserta').asboolean;
  vMod := dm.Query1.fieldbyname('Modifica').asboolean;
  vDel := dm.Query1.fieldbyname('Elimina').asboolean;
  activaforma(tfrmCatalogo, tform(frmCatalogo));
  frmCatalogo.btEdit.visible   := vMod;
  frmCatalogo.btInsert.visible := vIns;
  frmCatalogo.btDelete.visible := vDel;
end;

procedure TfrmMain.iposdedocumento1Click(Sender: TObject);
begin
  activaforma(tfrmTiposDoc, tform(frmTiposDoc));
end;

procedure TfrmMain.Nmerosdeentradas1Click(Sender: TObject);
begin
  activaforma(tfrmNumEntradas, tform(frmNumEntradas));
end;

procedure TfrmMain.Anexos1Click(Sender: TObject);
begin
  activaforma(tfrmAnexos, tform(frmAnexos));
end;

procedure TfrmMain.Entradasdediario2Click(Sender: TObject);
begin
  activaforma(tfrmEntradas, tform(frmEntradas));
end;

procedure TfrmMain.Movimientosdeunacuenta1Click(Sender: TObject);
begin
  activaforma(tfrmConsMovimiento, tform(frmConsMovimiento));
end;

procedure TfrmMain.Entradasdediario1Click(Sender: TObject);
begin
  activaforma(tfrmConsEntradas, tform(frmConsEntradas));
end;

procedure TfrmMain.Entradadediario1Click(Sender: TObject);
begin
  activaforma(tfrmRepEntrada, tform(frmRepEntrada));
end;

procedure TfrmMain.Diariogeneral1Click(Sender: TObject);
begin
  activaforma(tfrmRepDiario, tform(frmRepDiario));
end;

procedure TfrmMain.Estadoderesultado1Click(Sender: TObject);
begin
  activaforma(tfrmRepResultado, tform(frmRepResultado));
end;

procedure TfrmMain.Balancedecomprobacin1Click(Sender: TObject);
begin
  activaforma(tfrmRepBalComprobacion, tform(frmRepBalComprobacion));
end;

procedure TfrmMain.Cierredemes1Click(Sender: TObject);
begin
  activaforma(tfrmCierreMes, tform(frmCierreMes));
end;

procedure TfrmMain.Mayorgeneral1Click(Sender: TObject);
begin
  activaforma(tfrmRepMayorGeneral, tform(frmRepMayorGeneral));
end;

procedure TfrmMain.Anexos2Click(Sender: TObject);
begin
  activaforma(tfrmRepAnexos, tform(frmRepAnexos));
end;

procedure TfrmMain.Estadodesituacion1Click(Sender: TObject);
begin
  activaforma(tfrmRepSituacion, tform(frmRepSituacion));
end;

procedure TfrmMain.Balancesdeunacuenta1Click(Sender: TObject);
begin
  activaforma(tfrmConsBalances, tform(frmConsBalances));
end;

procedure TfrmMain.Crear1Click(Sender: TObject);
begin
  activaforma(tfrmCheque, tform(frmCheque));
end;

procedure TfrmMain.Cheques2Click(Sender: TObject);
begin
  activaforma(tfrmConsCheques, tform(frmConsCheques));
end;

procedure TfrmMain.Configurarimpresiondecheque1Click(Sender: TObject);
begin
  activaforma(tfrmConfigCK, tform(frmConfigCK));
end;

procedure TfrmMain.Anular1Click(Sender: TObject);
begin
  activaforma(tfrmAnulaCK, tform(frmAnulaCK));
end;

procedure TfrmMain.Eliminar1Click(Sender: TObject);
begin
  activaforma(tfrmEliminaCK, tform(frmEliminaCK));
end;

procedure TfrmMain.Crear2Click(Sender: TObject);
begin
  activaforma(tfrmSolicitud, tform(frmSolicitud));
end;

procedure TfrmMain.Solicitudesdecheque1Click(Sender: TObject);
begin
  activaforma(tfrmConsSolicitud, tform(frmConsSolicitud));
end;

procedure TfrmMain.Aprobar1Click(Sender: TObject);
begin
  activaforma(tfrmApruebaSol, tform(frmApruebaSol));
end;

procedure TfrmMain.Imprimir2Click(Sender: TObject);
begin
  activaforma(tfrmRepSolicitud, tform(frmRepSolicitud));
end;

procedure TfrmMain.Eliminar2Click(Sender: TObject);
begin
  activaforma(tfrmEliminaSOL, tform(frmEliminaSOL));
end;

procedure TfrmMain.Crear3Click(Sender: TObject);
begin
  activaforma(tfrmDepositos, tform(frmDepositos));
end;

procedure TfrmMain.Depositos1Click(Sender: TObject);
begin
  activaforma(tfrmConsDepositos, tform(frmConsDepositos));
end;

procedure TfrmMain.Imprimir1Click(Sender: TObject);
begin
  activaforma(tfrmRepCheque, tform(frmRepCheque));
end;

procedure TfrmMain.Crear4Click(Sender: TObject);
begin
  activaforma(tfrmCargosBanco, tform(frmCargosBanco));
end;

procedure TfrmMain.Cargosbancarios2Click(Sender: TObject);
begin
  activaforma(tfrmConsCargosBanco, tform(frmConsCargosBanco));
end;

procedure TfrmMain.Anular3Click(Sender: TObject);
begin
  activaforma(tfrmAnulaDeposito, tform(frmAnulaDeposito));
end;

procedure TfrmMain.Eliminar3Click(Sender: TObject);
begin
  activaforma(tfrmEliminaDeposito, tform(frmEliminaDeposito));
end;

procedure TfrmMain.Anular4Click(Sender: TObject);
begin
  activaforma(tfrmAnulaCargoBanco, tform(frmAnulaCargoBanco));
end;

procedure TfrmMain.Eliminar4Click(Sender: TObject);
begin
  activaforma(tfrmEliminaCargoBanco, tform(frmEliminaCargoBanco));
end;

procedure TfrmMain.Librodebanco1Click(Sender: TObject);
begin
  activaforma(tfrmLibroBanco, tform(frmLibroBanco));
end;

procedure TfrmMain.Copiarcatlogoentrecompaas1Click(Sender: TObject);
begin
  activaforma(tfrmCopiaCatalogo, tform(frmCopiaCatalogo));
end;

procedure TfrmMain.Utilidaddelabasededatos1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmBackup, frmBackup);
  frmBackup.ShowModal;
  frmBackup.Release;
end;

procedure TfrmMain.Cierredeao1Click(Sender: TObject);
begin
  activaforma(tfrmCierreAno, tform(frmCierreAno));
end;

procedure TfrmMain.Pasardocumentosacontabilidad1Click(Sender: TObject);
begin
  activaforma(tfrmPasarDocumentos, tform(frmPasarDocumentos));
end;

end.
