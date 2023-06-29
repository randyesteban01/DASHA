unit PVenta241;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, ExtCtrls,
  QuerySearchDlgADO, DB, IBCustomDataSet, ADODB, DateUtils, Mask;

type
  TfrmConsFacturasRestBar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btTipo: TSpeedButton;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    SpeedButton4: TSpeedButton;
    Label17: TLabel;
    SpeedButton5: TSpeedButton;
    edTipo: TEdit;
    tTipo: TEdit;
    tCajero: TEdit;
    edCajero: TEdit;
    edNombre: TEdit;
    cbStatus: TRadioGroup;
    cbOrden: TComboBox;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    edFac1: TEdit;
    edFac2: TEdit;
    ckrango: TCheckBox;
    tCaja: TEdit;
    edCaja: TEdit;
    ttiponcf: TEdit;
    edtiponcf: TEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    ProgressBar1: TProgressBar;
    cbGrupo: TRadioGroup;
    SearchRest: TQrySearchDlgADO;
    Search: TQrySearchDlgADO;
    dsFacturas: TDataSource;
    QFacturas: TADOQuery;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    QCuentas: TADOQuery;
    QCuentascat_cuenta: TStringField;
    QCuentascat_nombre: TStringField;
    QCuentasdet_origen: TStringField;
    QCuentasdet_monto: TBCDField;
    dsCuentas: TDataSource;
    QForma: TADOQuery;
    dsFroma: TDataSource;
    Memo1: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Grid: TDBGrid;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    TabSheet7: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GridCuentas: TDBGrid;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    Panel3: TPanel;
    bteliminacuenta: TSpeedButton;
    btbuscacuenta: TSpeedButton;
    btcodificar: TBitBtn;
    QDetalleCantidad: TFloatField;
    QDetalleprecio: TBCDField;
    QDetalleFacturaid: TIntegerField;
    QDetalleproductoid: TIntegerField;
    QDetallenombre: TWideStringField;
    QDetalledescuento: TBCDField;
    QDetalleItbis: TFloatField;
    QDetalleValor: TFloatField;
    QFormaNOMBRE: TWideStringField;
    QFormaMONTO: TBCDField;
    QFacturasemp_codigo: TIntegerField;
    QFacturassuc_codigo: TIntegerField;
    QFacturasCajaID: TIntegerField;
    QFacturasCajeroID: TIntegerField;
    QFacturasNombre: TWideStringField;
    QFacturasPagado: TBCDField;
    QFacturasDescuento: TBCDField;
    QFacturasFecha: TDateTimeField;
    QFacturasItbis: TBCDField;
    QFacturasfacturaid: TIntegerField;
    QFacturasEstatus: TWideStringField;
    QFacturasTOTAL: TBCDField;
    QFacturasConItbis: TBooleanField;
    QFacturasCaja: TStringField;
    QFacturasNCF: TWideStringField;
    QFacturascajero: TStringField;
    QFacturasgrabado: TBCDField;
    QFacturasmonto_grabado_incluido: TBCDField;
    QFacturasmonto_exento: TFloatField;
    QFormaDEVUELTA: TCurrencyField;
    QFacturasPropina: TCurrencyField;
    QFacturasRNC: TStringField;
    Label2: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    tCliente: TEdit;
    QFacturasTipoFactura: TIntegerField;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label7: TLabel;
    QFacturasSumSubTotal: TCurrencyField;
    lbSubTotal: TStaticText;
    lbPropina: TStaticText;
    Label10: TLabel;
    lbDescuento: TStaticText;
    Label12: TLabel;
    lbitbis: TStaticText;
    Label13: TLabel;
    Label18: TLabel;
    lbTotal: TStaticText;
    procedure btTipoClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btcodificarClick(Sender: TObject);
    procedure dsFacturasDataChange(Sender: TObject; Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btbuscacuentaClick(Sender: TObject);
    procedure bteliminacuentaClick(Sender: TObject);
    procedure QCuentasAfterDelete(DataSet: TDataSet);
    procedure QCuentasAfterEdit(DataSet: TDataSet);
    procedure QCuentasAfterInsert(DataSet: TDataSet);
    procedure QCuentasAfterPost(DataSet: TDataSet);
    procedure QCuentasBeforeDelete(DataSet: TDataSet);
    procedure QCuentasBeforePost(DataSet: TDataSet);
    procedure QCuentasNewRecord(DataSet: TDataSet);
    procedure QFacturasAfterOpen(DataSet: TDataSet);
    procedure QFacturasAfterScroll(DataSet: TDataSet);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    Debitos, Creditos : Double;
    Modifica, Elimina : Boolean;
    vl_consulta : String;
    SubTotal, Propina: Double;
    Descuento,itbis,total: Double;
    
    { Public declarations }
     Procedure Totalizar;
     Procedure TotalizarFacturas;

  end;

var
  frmConsFacturasRestBar: TfrmConsFacturasRestBar;

implementation

uses
  SIGMA01, RVENTA133;

{$R *.dfm}


procedure TfrmConsFacturasRestBar.Totalizar;
var
  Punt : TBookMark;
  PuntFact : TBookMark;
begin
  if not QCuentas.Active then QCuentas.Open;
  Debitos  := 0;
  Creditos := 0;
  Punt := QCuentas.GetBookmark;
  QCuentas.DisableControls;
  QCuentas.First;
  while not QCuentas.Eof do
  begin
    if QCuentasDET_ORIGEN.Value = 'Debito' then
      Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QCuentasDET_MONTO.Value]))
    else
      Creditos := Creditos + StrToFloat(Format('%10.2f',[QCuentasDET_MONTO.Value]));

    QCuentas.Next;
  end;
  QCuentas.GotoBookmark(Punt);
  QCuentas.EnableControls;
  lbCR.Caption  := Format('%n',[Creditos]);
  lbDB.Caption  := Format('%n',[Debitos]);
  lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;

  //Totales de las facturas
  {if not QFacturas.Active then QFacturas.Open;
  SubTotal  := 0;
  Propina := 0;

  PuntFact := QFacturas.GetBookmark;
  QFacturas.DisableControls;
  QFacturas.First;
  while not QFacturas.Eof do
  begin
    SubTotal  := SubTotal  + StrToFloat(Format('%10.2f',[QFacturasTOTAL.Value]));
    QFacturas.Next;
  end;
  QFacturas.GotoBookmark(PuntFact);
  QFacturas.EnableControls;
 lbSubTotal.Caption  := Format('%n',[SubTotal]);
 }
end;

procedure TfrmConsFacturasRestBar.TotalizarFacturas;
var
  PuntFact : TBookMark;
begin

  //Totales de las facturas
  if not QFacturas.Active then QFacturas.Open;
  SubTotal  := 0;
  Propina := 0;
  Descuento:=0;
  itbis:=0;
  total:=0;

  PuntFact := QFacturas.GetBookmark;
  QFacturas.DisableControls;
  QFacturas.First;
  while not QFacturas.Eof do
  begin
    SubTotal  := SubTotal  + StrToFloat(Format('%10.2f',[QFacturasTOTAL.Value])) - StrToFloat(Format('%10.2f',[QFacturasitbis.Value])) - StrToFloat(Format('%10.2f',[QFacturasPropina.Value])) - StrToFloat(Format('%10.2f',[QFacturasDescuento.Value]));
    Propina  := Propina  + StrToFloat(Format('%10.2f',[QFacturasPropina.Value]));
    Descuento  := Descuento  + StrToFloat(Format('%10.2f',[QFacturasDescuento.Value]));
    itbis  := itbis  + StrToFloat(Format('%10.2f',[QFacturasitbis.Value]));
    total  := total  + StrToFloat(Format('%10.2f',[QFacturasTOTAL.Value]));

    QFacturas.Next;
  end;
  QFacturas.GotoBookmark(PuntFact);
  QFacturas.EnableControls;
  lbSubTotal.Caption  := Format('%n',[SubTotal]);
  lbPropina.Caption  := Format('%n',[Propina]);
  lbDescuento.Caption  := Format('%n',[Descuento]);
  lbItbis.Caption  := Format('%n',[itbis]);
  lbTotal.Caption  := Format('%n',[total]);

end;


procedure TfrmConsFacturasRestBar.btTipoClick(Sender: TObject);
begin
  SearchRest.Query.clear;
  SearchRest.Query.add('select Nombre, MesaID');
  SearchRest.Query.add('from Mesas');
  SearchRest.Query.add('where 1=1');
  SearchRest.AliasFields.clear;
  SearchRest.AliasFields.add('Nombre');
  SearchRest.AliasFields.add('Código');
  SearchRest.ResultField := 'tfa_codigo';
  SearchRest.Title := 'Tipos de factura';
  if SearchRest.execute then
  begin
    edTipo.text := SearchRest.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select Nombre, MesaID');
    dm.Query1.sql.add('from Mesas');
    dm.Query1.sql.add('where 1=1');
    dm.Query1.sql.add('and MesaID = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;
    tTipo.text := dm.Query1.fieldbyname('nombre').asstring;
    edTipo.SetFocus;
   // btRefreshClick(self);
  end;
end;

procedure TfrmConsFacturasRestBar.SpeedButton5Click(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.Clear;
  Search.Query.Add('select tip_nombre, tip_codigo');
  Search.Query.Add('from TipoNCF');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tip_codigo';
  Search.Title := 'Tipos de Comprobantes';
  if Search.execute then
  begin
    edtiponcf.Text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tip_nombre from TipoNCF');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tip_codigo = :tip');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('tip').Value := strtoint(trim(edtiponcf.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('Tipo de NCF no Existe',mterror,[mbok],0)
    else
      ttiponcf.text := dm.Query1.fieldbyname('tip_nombre').asstring;
    edtiponcf.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsFacturasRestBar.SpeedButton4Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Listado de Cajas';
  if Search.execute then
  begin
    edCaja.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCaja.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CAJA NO EXISTE',mterror,[mbok],0)
    else
      tCaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
    edCaja.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsFacturasRestBar.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajeros');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Listado de Cajeros';
  if Search.execute then
  begin
    edCajero.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre from cajeros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and caj_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCajero.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CAJERO NO EXISTE',mterror,[mbok],0)
    else
      tCajero.text := dm.Query1.fieldbyname('caj_nombre').asstring;
    edCajero.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsFacturasRestBar.btRefreshClick(Sender: TObject);
begin
   QFacturas.close;
  QFacturas.sql.clear;
  QFacturas.sql.Add(vl_consulta);
  if (trim(edFac1.Text) <> '') and (trim(edFac2.Text) <> '') then
     QFacturas.sql.add('and FacturaID between '+edFac1.Text+' and '+edFac2.Text);

  if trim(edCajero.text) <> '' then
    QFacturas.sql.add('and CajeroID = '+trim(edCajero.text));

  if trim(edCaja.text) <> '' then
    QFacturas.sql.add('and CAJAID = '+trim(edCaja.text));

 if trim(edCliente.text) <> '' then
       QFacturas.sql.add('and cli_codigo = '+trim(edCliente.text));

  if trim(edNombre.text) <> '' then
    QFacturas.sql.add('and nombre like '+#39+trim(edNombre.text)+#39);

  if trim(DBLookupComboBox2.text) <> '' then
    QFacturas.sql.add('and suc_codigo = '+#39+FloatToStr(DBLookupComboBox2.KeyValue)+#39);

  if cbStatus.ItemIndex = 1 then
     QFacturas.sql.add('and Estatus = '+#39+'ANU'+#39)
  else if cbStatus.ItemIndex = 2 then
     QFacturas.sql.add('and Estatus = '+#39+'PAG'+#39)
  else if cbStatus.ItemIndex = 3 then
     QFacturas.sql.add('and Estatus = '+#39+'PEN'+#39);

  if ckrango.Checked then
  begin
    QFacturas.SQL.Add('and fecha between convert(datetime,:fecha1,105) and convert(datetime,:fecha2,105)');
    QFacturas.Parameters.parambyname('fecha1').DataType := ftDate;
    QFacturas.Parameters.parambyname('fecha2').DataType := ftDate;
    QFacturas.Parameters.parambyname('fecha1').Value := fecha1.date;
    QFacturas.Parameters.parambyname('fecha2').Value := fecha2.date;
  end;
  {QFacturas.SQL.Add('group by emp_codigo, suc_codigo, cajaID, CAJA,Pagado, DESCUENTO, grabado, monto_grabado_incluido,monto_exento,');
  QFacturas.SQL.Add('FECHA, ITBIS, NOMBRE, FacturaID, Estatus, TOTAL, ConItbis, NCF, cajero, CajeroID');
  }

  if cbOrden.ItemIndex = 0 then
     QFacturas.sql.add('order by FacturaID desc')
  else if cbOrden.ItemIndex = 1 then
     QFacturas.sql.add('order by nombre, FacturaID desc')
  else if cbOrden.ItemIndex = 2 then
     QFacturas.sql.add('order by fecha, FacturaID desc')
  else if cbOrden.ItemIndex = 3 then
     QFacturas.sql.add('order by NCF, FacturaID desc');
  QFacturas.SQL.SaveToFile('.\consultafactrest.txt');
  QFacturas.open;

  lbCantidad.caption := inttostr(QFacturas.recordcount)+' Facturas';
   TotalizarFacturas;
  DBGrid1.setfocus;
end;

procedure TfrmConsFacturasRestBar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsFacturasRestBar.FormCreate(Sender: TObject);
begin
vl_consulta := QFacturas.sql.GetText;
cbOrden.itemindex := 0;
Fecha1.date := StartOfTheMonth(date);
Fecha2.date := date;
end;

procedure TfrmConsFacturasRestBar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsFacturasRestBar.btcodificarClick(Sender: TObject);
var
  a : integer;
  CtaTipoFactura, todo : String;
  TotalCosto, TotalNC : double;
begin
if MessageDlg('Codificar la lista completa?', mtConfirmation, [mbyes, mbno],0) = mryes then
      todo := 'si'
    else
      todo := 'no';
    if todo = 'no' then
    begin

  //Procedimeinto que graba la factura
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('exec RECALCULARCUENTASCONTABLES :numero,:emp, :suc');
  dm.Query1.Parameters.parambyname('emp').Value    := QFacturasEMP_CODIGO.value;
  dm.Query1.Parameters.parambyname('suc').Value    := QFacturasSUC_CODIGO.Value;
  dm.Query1.Parameters.parambyname('numero').Value := QFacturasfacturaid.value;
  dm.Query1.ExecSQL;
  QCuentas.Close;
  QCuentas.Open;
  Messagedlg('CODIFICACION TERMINADA',mtInformation, [mbok],0);
end
else
begin
     ProgressBar1.Visible := true;
      Application.ProcessMessages;
      ProgressBar1.Max := QFacturas.RecordCount;
      ProgressBar1.Position := 0;
      QFacturas.DisableControls;
      QFacturas.First;
      while not QFacturas.Eof do
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        Application.ProcessMessages;
          dm.Query1.close;
          dm.Query1.sql.clear;
          dm.Query1.sql.add('exec RECALCULARCUENTASCONTABLES :numero,:emp, :suc');
          dm.Query1.Parameters.parambyname('emp').Value    := QFacturasEMP_CODIGO.value;
          dm.Query1.Parameters.parambyname('suc').Value    := QFacturasSUC_CODIGO.Value;
          dm.Query1.Parameters.parambyname('numero').Value := QFacturasfacturaid.value;
          dm.Query1.ExecSQL;
          QCuentas.Close;
          QCuentas.Open;

        QFacturas.Next;
      end;
      Messagedlg('CODIFICACION TERMINADA',mtInformation, [mbok],0);
      ProgressBar1.Visible := false;
      QFacturas.First;
      QFacturas.EnableControls;
end;

{ if dm.QContabpar_codifica_venta_familia.Value <> 'True' then
  begin
    if MessageDlg('Codificar la lista completa?', mtConfirmation, [mbyes, mbno],0) = mryes then
      todo := 'si'
    else
      todo := 'no';
    if todo = 'no' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('delete from contdet_facturas where emp_codigo = :emp and suc_codigo = :suc');
      dm.Query1.sql.add('and fac_forma = :for and tfa_codigo = :tfa and fac_numero = :num');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('tfa').Value := QFacturasTFA_CODIGO.Value;
      dm.Query1.Parameters.parambyname('suc').Value := QFacturassuc_codigo.Value;
      dm.Query1.Parameters.parambyname('for').Value := QFacturasFAC_FORMA.Value;
      dm.Query1.Parameters.parambyname('num').Value := QFacturasFAC_NUMERO.Value;
      dm.Query1.ExecSQL;
      QCuentas.Close;
      QCuentas.Open;

      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
      Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
      Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
      Query1.sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis,');
      Query1.sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta');
      Query1.sql.add('from tiposfactura');
      Query1.sql.add('where emp_codigo = :emp');
      Query1.sql.add('and tfa_codigo = :cod');
      Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      Query1.Parameters.parambyname('cod').Value := QFacturasTFA_CODIGO.Value;
      Query1.open;
      CtaTipoFactura := Query1.fieldbyname('cat_cuenta').asstring;


      QDetalle.disablecontrols;
      QDetalle.first;
      TotalCosto := 0;
      while not QDetalle.eof do
      begin
        TotalCosto := TotalCosto + (QDetalleDET_COSTO.Value * (QDetalleDET_CANTIDAD.Value*QDetalledet_cant_unidad_medida.Value));
        QDetalle.next;
      end;
      QDetalle.first;
      QDetalle.EnableControls;


      //Insertando cuenta contable de ingreso
      if QCuentas.Locate('cat_cuenta',CtaTipoFactura,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := (QFacturasFAC_TOTAL.Value - QFacturasFAC_ITBIS.Value- QFacturasPROPINA.Value) + QFacturasFAC_DESCUENTO.Value + QFacturasTdesc_gral.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := CtaTipoFactura;
        QCuentasdet_monto.Value  := (QFacturasFAC_TOTAL.Value - QFacturasFAC_ITBIS.Value - QFacturasPROPINA.Value) + QFacturasFAC_DESCUENTO.Value + QFacturasTdesc_gral.Value;
        QCuentasdet_origen.Value := 'Credito';
        QCuentas.Post;
      end;

      //Insertando cuenta contable de itbis
      if QFacturasFAC_ITBIS.Value > 0 then
      begin
        if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAITBIS.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturasFAC_ITBIS.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabPAR_CTAITBIS.Value;
          QCuentasdet_monto.Value  := QFacturasFAC_ITBIS.Value;
          QCuentasdet_origen.Value := 'Credito';
          QCuentas.Post;
        end;
      end;


      //Insertando cuenta contable de pagos NC
      dm.Query1.Close;
      DM.Query1.SQL.Clear;
      dm.Query1.SQL.Add('SELECT SUM(MOV_MONTO) MontoPagNC');
      dm.Query1.SQL.Add('FROM pr_cons_pagos_nc_factura(:EMP,:SUC,:TIP, :FOR, :NUM, :FEC)');
      dm.Query1.SQL.Add('WHERE MOV_TIPO = '+QuotedStr('NC'));
      DM.Query1.Parameters.ParamByName('EMP').DataType := ftInteger;
      DM.Query1.Parameters.ParamByName('SUC').DataType := ftInteger;
      DM.Query1.Parameters.ParamByName('TIP').DataType := ftInteger;
      DM.Query1.Parameters.ParamByName('FOR').DataType := ftString;
      DM.Query1.Parameters.ParamByName('NUM').DataType := ftInteger;
      DM.Query1.Parameters.ParamByName('FEC').DataType := ftDateTime;

      DM.Query1.Parameters.ParamByName('EMP').Value := QFacturasEMP_CODIGO.Value;
      DM.Query1.Parameters.ParamByName('SUC').Value := QFacturassuc_codigo.Value;
      DM.Query1.Parameters.ParamByName('TIP').Value := QFacturasTFA_CODIGO.Value;
      DM.Query1.Parameters.ParamByName('FOR').Value := QFacturasFAC_FORMA.Value;
      DM.Query1.Parameters.ParamByName('NUM').Value := QFacturasFAC_NUMERO.Value;
      DM.Query1.Parameters.ParamByName('FEC').Value := Date;
      DM.Query1.Open;
      if DM.Query1.FieldByName('MontoPagNC').Value > 0 then
      TotalNC :=  DM.Query1.FieldByName('MontoPagNC').Value else
      TotalNC := 0;

      if TotalNC > 0 then
      begin
        if QCuentas.Locate('cat_cuenta',dm.QContabpar_ctadevventas.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := TotalNC;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabpar_ctadevventas.Value;
          QCuentasdet_monto.Value  := TotalNC;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
        end;
      end;

      //Insertando cuenta contable de propina
      if QFacturasPROPINA.Value > 0 then
      begin
        if QCuentas.Locate('cat_cuenta',dm.QContabpar_ctaproplegvent.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturasPROPINA.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabpar_ctaproplegvent.Value;
          QCuentasdet_monto.Value  := QFacturasPROPINA.Value;
          QCuentasdet_origen.Value := 'Credito';
          QCuentas.Post;
        end;
      end;

      //Insertando cuenta contable de descuento
      if QFacturasFAC_DESCUENTO.Value > 0 then begin
      if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTADESC.Value ,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := QFacturasFAC_DESCUENTO.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := dm.QContabPAR_CTADESC.Value;
        QCuentasdet_monto.Value  := QFacturasFAC_DESCUENTO.Value;
        QCuentasdet_origen.Value := 'Debito';
        QCuentas.Post;
      end;
      end;

      if QFacturasTdesc_gral.Value > 0 then begin
      if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTADESC.Value ,[]) then
      begin
        QCuentas.Edit;
        QCuentasdet_monto.Value := QFacturasTdesc_gral.Value;
        QCuentas.Post;
      end
      else
      begin
        QCuentas.Append;
        QCuentascat_cuenta.Value := dm.QContabPAR_CTADESC.Value;
        QCuentasdet_monto.Value  := QFacturasTdesc_gral.Value;
        QCuentasdet_origen.Value := 'Debito';
        QCuentas.Post;
      end;
      end;


      //Insertando cuenta contable de inventario
      if TotalCosto > 0 then
      begin
        if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAINVEnT.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := TotalCosto;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabPAR_CTAINVEnT.Value;
          QCuentasdet_monto.Value  := TotalCosto;
          QCuentasdet_origen.Value := 'Credito';
          QCuentas.Post;
        end;

        //Insertando cuenta contable de costo
        if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTACOSTO.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := TotalCosto;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabPAR_CTACOSTO.Value;
          QCuentasdet_monto.Value  := TotalCosto;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
        end;
      end;

      //Insertando cuenta de caja
      if Query1.fieldbyname('tfa_actbalance').asstring <> 'True' then
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select fp.cat_cuenta, a.for_monto from FacFormaPago a');
        Query1.SQL.Add('inner join FormasPago fp on a.emp_codigo=fp.emp_codigo and a.fpa_codigo=fp.fpa_codigo');
        Query1.SQL.Add('where a.emp_codigo = :emp and a.fac_numero = :num and a.tfa_codigo = :tip and a.fac_forma = :for and a.suc_codigo = :suc');
        Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        Query1.Parameters.ParamByName('num').Value := QFacturasFAC_NUMERO.Value;
        Query1.Parameters.ParamByName('tip').Value := QFacturasTFA_CODIGO.Value;
        Query1.Parameters.ParamByName('for').Value := QFacturasFAC_FORMA.Value;
        Query1.Parameters.ParamByName('suc').Value := QFacturassuc_codigo.Value;
        Query1.Open;
      
        if QCuentas.Locate('cat_cuenta',Query1.FieldByName('cat_cuenta').AsString ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturasFAC_TOTAL.Value;
          QCuentas.Post;
        end
        else
        begin
          Query1.First;
          while not Query1.Eof do begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := Query1.FieldByName('cat_cuenta').AsString;
          QCuentasdet_monto.Value  := Query1.FieldbyName('for_monto').Value;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
          Query1.Next;
          end;
        end;
      end
      else
      begin //Insertando cuenta de cxc
        QClientes.Close;
        QClientes.Parameters.ParamByName('cli').Value := QFacturasCLI_CODIGO.Value;
        QClientes.Open;

        if QCuentas.Locate('cat_cuenta',QClientesCLI_CUENTA.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturasFAC_TOTAL.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := QClientesCLI_CUENTA.Value;
          QCuentasdet_monto.Value  := QFacturasFAC_TOTAL.Value;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
        end;
      end;
    end
    else
    begin
      ProgressBar1.Visible := true;
      Application.ProcessMessages;
      ProgressBar1.Max := QFacturas.RecordCount;
      ProgressBar1.Position := 0;
      QFacturas.DisableControls;
      QFacturas.First;
      while not QFacturas.Eof do
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        Application.ProcessMessages;
        
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('delete from contdet_facturas where emp_codigo = :emp and suc_codigo = :suc');
        dm.Query1.sql.add('and fac_forma = :for and tfa_codigo = :tfa and fac_numero = :num');
        dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.parambyname('tfa').Value := QFacturasTFA_CODIGO.Value;
        dm.Query1.Parameters.parambyname('suc').Value := QFacturassuc_codigo.Value;
        dm.Query1.Parameters.parambyname('for').Value := QFacturasFAC_FORMA.Value;
        dm.Query1.Parameters.parambyname('num').Value := QFacturasFAC_NUMERO.Value;
        dm.Query1.ExecSQL;
        QCuentas.DisableControls;
        QCuentas.Close;
        QCuentas.Open;
        QCuentas.EnableControls;

        Query1.close;
        Query1.sql.clear;
        Query1.sql.add('select det_costo, (det_cantidad * isnull(det_cant_unidad_medida,1)) as det_cantidad');
        Query1.sql.add('from det_factura');
        Query1.sql.add('where emp_codigo = :emp and suc_codigo = :suc');
        Query1.sql.add('and fac_forma = :for and tfa_codigo = :tfa');
        Query1.sql.add('and fac_numero = :num');
        Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        Query1.Parameters.ParamByName('suc').Value := QFacturassuc_codigo.Value;
        Query1.Parameters.ParamByName('for').Value := QFacturasFAC_FORMA.Value;
        Query1.Parameters.ParamByName('tfa').Value := QFacturasTFA_CODIGO.Value;
        Query1.Parameters.ParamByName('num').Value := QFacturasFAC_NUMERO.Value;
        Query1.Open;

        Query1.disablecontrols;
        Query1.first;
        TotalCosto := 0;
        while not Query1.eof do
        begin
          TotalCosto := TotalCosto + (Query1.FieldbyName('det_costo').asFloat * Query1.FieldbyName('det_cantidad').AsFloat);
          Query1.next;
        end;
        Query1.EnableControls;

        Query1.close;
        Query1.sql.clear;
        Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
        Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
        Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
        Query1.sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis,');
        Query1.sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta');
        Query1.sql.add('from tiposfactura');
        Query1.sql.add('where emp_codigo = :emp');
        Query1.sql.add('and tfa_codigo = :cod');
        Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
        Query1.Parameters.parambyname('cod').Value := QFacturasTFA_CODIGO.Value;
        Query1.open;
        CtaTipoFactura := Query1.fieldbyname('cat_cuenta').asstring;

        QCuentas.disablecontrols;
        //Insertando cuenta contable de ingreso
        if QCuentas.Locate('cat_cuenta',CtaTipoFactura,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := (QFacturasFAC_TOTAL.Value - QFacturasFAC_ITBIS.Value) + QFacturasFAC_DESCUENTO.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := CtaTipoFactura;
          QCuentasdet_monto.Value  := (QFacturasFAC_TOTAL.Value - QFacturasFAC_ITBIS.Value) + QFacturasFAC_DESCUENTO.Value;
          QCuentasdet_origen.Value := 'Credito';
          QCuentas.Post;
        end;

        //Insertando cuenta contable de itbis
        if QFacturasFAC_ITBIS.Value > 0 then
        begin
          if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAITBIS.Value ,[]) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QFacturasFAC_ITBIS.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := dm.QContabPAR_CTAITBIS.Value;
            QCuentasdet_monto.Value  := QFacturasFAC_ITBIS.Value;
            QCuentasdet_origen.Value := 'Credito';
            QCuentas.Post;
          end;
        end;

      //Insertando cuenta contable de pagos NC
      dm.Query1.Close;
      DM.Query1.SQL.Clear;
      dm.Query1.SQL.Add('SELECT SUM(MOV_MONTO) MontoPagNC');
      dm.Query1.SQL.Add('FROM pr_cons_pagos_nc_factura(:EMP,:SUC,:TIP, :FOR, :NUM, :FEC)');
      dm.Query1.SQL.Add('WHERE MOV_TIPO = '+QuotedStr('NC'));
      DM.Query1.Parameters.ParamByName('EMP').DataType := ftInteger;
      DM.Query1.Parameters.ParamByName('SUC').DataType := ftInteger;
      DM.Query1.Parameters.ParamByName('TIP').DataType := ftInteger;
      DM.Query1.Parameters.ParamByName('FOR').DataType := ftString;
      DM.Query1.Parameters.ParamByName('NUM').DataType := ftInteger;
      DM.Query1.Parameters.ParamByName('FEC').DataType := ftDateTime;

      DM.Query1.Parameters.ParamByName('EMP').Value := QFacturasEMP_CODIGO.Value;
      DM.Query1.Parameters.ParamByName('SUC').Value := QFacturassuc_codigo.Value;
      DM.Query1.Parameters.ParamByName('TIP').Value := QFacturasTFA_CODIGO.Value;
      DM.Query1.Parameters.ParamByName('FOR').Value := QFacturasFAC_FORMA.Value;
      DM.Query1.Parameters.ParamByName('NUM').Value := QFacturasFAC_NUMERO.Value;
      DM.Query1.Parameters.ParamByName('FEC').Value := Date;
      DM.Query1.Open;
      if DM.Query1.FieldByName('MontoPagNC').Value > 0 then
      TotalNC :=  DM.Query1.FieldByName('MontoPagNC').Value else
      TotalNC := 0;

      if TotalNC > 0 then
      begin
        if QCuentas.Locate('cat_cuenta',dm.QContabpar_ctadevventas.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := TotalNC;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabpar_ctadevventas.Value;
          QCuentasdet_monto.Value  := TotalNC;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
        end;
      end;

        //Insertando cuenta contable de descuento
        if QFacturasFAC_DESCUENTO.Value > 0 then
        begin
          if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTADESC.Value ,[]) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QFacturasFAC_DESCUENTO.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := dm.QContabPAR_CTADESC.Value;
            QCuentasdet_monto.Value  := QFacturasFAC_DESCUENTO.Value;
            QCuentasdet_origen.Value := 'Debito';
            QCuentas.Post;
          end;
        end;

        //Insertando cuenta contable de inventario
        if TotalCosto > 0 then
        begin
          if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAINVEnT.Value ,[]) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := TotalCosto;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := dm.QContabPAR_CTAINVEnT.Value;
            QCuentasdet_monto.Value  := TotalCosto;
            QCuentasdet_origen.Value := 'Credito';
            QCuentas.Post;
          end;

          //Insertando cuenta contable de costo
          if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTACOSTO.Value ,[]) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := TotalCosto;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := dm.QContabPAR_CTACOSTO.Value;
            QCuentasdet_monto.Value  := TotalCosto;
            QCuentasdet_origen.Value := 'Debito';
            QCuentas.Post;
          end;
        end;

        //Insertando cuenta de caja
        //Insertando cuenta de caja
      if Query1.fieldbyname('tfa_actbalance').asstring <> 'True' then
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select fp.cat_cuenta, a.for_monto from FacFormaPago a');
        Query1.SQL.Add('inner join FormasPago fp on a.emp_codigo=fp.emp_codigo and a.fpa_codigo=fp.fpa_codigo');
        Query1.SQL.Add('where a.emp_codigo = :emp and a.fac_numero = :num and a.tfa_codigo = :tip and a.fac_forma = :for and a.suc_codigo = :suc');
        Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        Query1.Parameters.ParamByName('num').Value := QFacturasFAC_NUMERO.Value;
        Query1.Parameters.ParamByName('tip').Value := QFacturasTFA_CODIGO.Value;
        Query1.Parameters.ParamByName('for').Value := QFacturasFAC_FORMA.Value;
        Query1.Parameters.ParamByName('suc').Value := QFacturassuc_codigo.Value;
        Query1.Open;
      
        if QCuentas.Locate('cat_cuenta',Query1.FieldByName('cat_cuenta').AsString ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturasFAC_TOTAL.Value;
          QCuentas.Post;
        end
        else
        begin
          Query1.First;
          while not Query1.Eof do begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := Query1.FieldByName('cat_cuenta').AsString;
          QCuentasdet_monto.Value  := Query1.FieldbyName('for_monto').Value;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
          Query1.Next;
          end;
        end;
      end
      else
      begin //Insertando cuenta de cxc
          QClientes.Close;
          QClientes.Parameters.ParamByName('cli').Value := QFacturasCLI_CODIGO.Value;
          QClientes.Open;

          if QClientesCLI_CUENTA.Value <> '' then
          begin
            if QCuentas.Locate('cat_cuenta',QClientesCLI_CUENTA.Value ,[]) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := QFacturasFAC_TOTAL.Value;
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := QClientesCLI_CUENTA.Value;
              QCuentasdet_monto.Value  := QFacturasFAC_TOTAL.Value;
              QCuentasdet_origen.Value := 'Debito';
              QCuentas.Post;
            end;
          end;
        end;
        QCuentas.enablecontrols;
        QFacturas.Next;
      end;
      ProgressBar1.Visible := false;
      QFacturas.First;
      QFacturas.EnableControls;
    end;
  end
  else //Codificando por Familia de Productos
  begin
    if MessageDlg('Codificar la lista completa?', mtConfirmation, [mbyes, mbno],0) = mryes then
      todo := 'si'
    else
      todo := 'no';
    if todo = 'no' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('delete from contdet_facturas where emp_codigo = :emp and suc_codigo = :suc');
      dm.Query1.sql.add('and fac_forma = :for and tfa_codigo = :tfa and fac_numero = :num');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('tfa').Value := QFacturasTFA_CODIGO.Value;
      dm.Query1.Parameters.parambyname('suc').Value := QFacturassuc_codigo.Value;
      dm.Query1.Parameters.parambyname('for').Value := QFacturasFAC_FORMA.Value;
      dm.Query1.Parameters.parambyname('num').Value := QFacturasFAC_NUMERO.Value;
      dm.Query1.ExecSQL;
      QCuentas.Close;
      QCuentas.Open;

      QDetalle.disablecontrols;
      QDetalle.Close;
      QDetalle.Open;
      QDetalle.first;
      TotalCosto := 0;
      while not QDetalle.eof do
      begin
        Query1.close;
        Query1.sql.clear;
        Query1.sql.add('select f.fam_cta_ingreso, f.fam_cta_costo, f.fam_cta_inventario, f.fam_cta_descuento');
        Query1.sql.add('from familias f, productos p');
        Query1.sql.add('where f.emp_codigo = p.emp_codigo');
        Query1.sql.add('and f.fam_codigo = p.fam_codigo');
        Query1.sql.add('and p.emp_codigo = :emp');
        Query1.sql.add('and p.pro_codigo = :pro');
        Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
        Query1.Open;

        if Query1.RecordCount > 0 then
        begin
          //insertando cuenta de ingreso
          if QCuentas.Locate('cat_cuenta', Query1.FieldByName('fam_cta_ingreso').AsString,[]) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value);
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := Query1.FieldByName('fam_cta_ingreso').AsString;
            QCuentasdet_monto.Value  := QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value;
            QCuentasdet_origen.Value := 'Credito';
            QCuentas.Post;
          end;

          if Length(Query1.FieldByName('fam_cta_costo').AsString) > 0 then
          begin
            //insertando cuenta de costo
            if QCuentas.Locate('cat_cuenta',Query1.FieldByName('fam_cta_costo').AsString ,[]) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := Query1.FieldByName('fam_cta_costo').AsString;
              QCuentasdet_monto.Value  := QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value;
              QCuentasdet_origen.Value := 'Debito';
              QCuentas.Post;
            end;
          end;

          //Insertando cuenta contable de descuento
          if QFacturasFAC_DESCUENTO.Value > 0 then
          begin
            if QCuentas.Locate('cat_cuenta',Query1.FieldByName('fam_cta_descuento').AsString ,[]) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := QCuentasdet_monto.Value + (((QDetalleDET_PRECIO.Value * QDetalleDET_DESCUENTO.Value)/100) * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := Query1.FieldByName('fam_cta_descuento').AsString;
              QCuentasdet_monto.Value  := ((QDetalleDET_PRECIO.Value * QDetalleDET_DESCUENTO.Value)/100) * QDetalleDET_CANTIDAD.Value;
              QCuentasdet_origen.Value := 'Debito';
              QCuentas.Post;
            end;
          end;

          if Length(Query1.FieldByName('fam_cta_inventario').AsString) > 0 then
          begin
            //Insertando cuenta contable de inventario
            if QCuentas.Locate('cat_cuenta',Query1.FieldByName('fam_cta_inventario').AsString ,[]) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := Query1.FieldByName('fam_cta_inventario').AsString;
              QCuentasdet_monto.Value  := QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value;
              QCuentasdet_origen.Value := 'Credito';
              QCuentas.Post;
            end;
          end;
        end;

        QDetalle.next;
      end;
      QDetalle.first;
      QDetalle.EnableControls;

      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
      Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
      Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
      Query1.sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis,');
      Query1.sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta');
      Query1.sql.add('from tiposfactura');
      Query1.sql.add('where emp_codigo = :emp');
      Query1.sql.add('and tfa_codigo = :cod');
      Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      Query1.Parameters.parambyname('cod').Value := QFacturasTFA_CODIGO.Value;
      Query1.open;

      //Insertando cuenta contable de itbis
      if QFacturasFAC_ITBIS.Value > 0 then
      begin
        if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAITBIS.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturasFAC_ITBIS.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := dm.QContabPAR_CTAITBIS.Value;
          QCuentasdet_monto.Value  := QFacturasFAC_ITBIS.Value;
          QCuentasdet_origen.Value := 'Credito';
          QCuentas.Post;
        end;
      end;

      //Insertando cuenta de caja
      if Query1.fieldbyname('tfa_actbalance').asstring <> 'True' then
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select cat_cuenta from cajas where emp_codigo = :emp and caj_codigo = :caj');
        Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        Query1.Parameters.ParamByName('caj').Value := dm.QParametroscaj_codigo.Value;
        Query1.Open;
      
        if QCuentas.Locate('cat_cuenta',Query1.FieldByName('cat_cuenta').AsString ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturasFAC_TOTAL.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := Query1.FieldByName('cat_cuenta').AsString;
          QCuentasdet_monto.Value  := QFacturasFAC_TOTAL.Value;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
        end;
      end
      else
      begin //Insertando cuenta de cxc
        QClientes.Close;
        QClientes.Parameters.ParamByName('cli').Value := QFacturasCLI_CODIGO.Value;
        QClientes.Open;

        if QCuentas.Locate('cat_cuenta',QClientesCLI_CUENTA.Value ,[]) then
        begin
          QCuentas.Edit;
          QCuentasdet_monto.Value := QFacturasFAC_TOTAL.Value;
          QCuentas.Post;
        end
        else
        begin
          QCuentas.Append;
          QCuentascat_cuenta.Value := QClientesCLI_CUENTA.Value;
          QCuentasdet_monto.Value  := QFacturasFAC_TOTAL.Value;
          QCuentasdet_origen.Value := 'Debito';
          QCuentas.Post;
        end;
      end;
    end
    else
    begin
      ProgressBar1.Visible := true;
      Application.ProcessMessages;
      ProgressBar1.Max := QFacturas.RecordCount;
      ProgressBar1.Position := 0;
      QFacturas.DisableControls;
      QFacturas.First;
      while not QFacturas.Eof do
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        Application.ProcessMessages;

        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('delete from contdet_facturas where emp_codigo = :emp and suc_codigo = :suc');
        dm.Query1.sql.add('and fac_forma = :for and tfa_codigo = :tfa and fac_numero = :num');
        dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.parambyname('tfa').Value := QFacturasTFA_CODIGO.Value;
        dm.Query1.Parameters.parambyname('suc').Value := QFacturassuc_codigo.Value;
        dm.Query1.Parameters.parambyname('for').Value := QFacturasFAC_FORMA.Value;
        dm.Query1.Parameters.parambyname('num').Value := QFacturasFAC_NUMERO.Value;
        dm.Query1.ExecSQL;
        QCuentas.DisableControls;
        QCuentas.Close;
        QCuentas.Open;
        QCuentas.EnableControls;

        //QDetalle.disablecontrols;
        QDetalle.Close;
        QDetalle.Open;
        QDetalle.first;
        TotalCosto := 0;
        while not QDetalle.eof do
        begin
          Query1.close;
          Query1.sql.clear;
          Query1.sql.add('select f.fam_cta_ingreso, f.fam_cta_costo, f.fam_cta_inventario, f.fam_cta_descuento');
          Query1.sql.add('from familias f, productos p');
          Query1.sql.add('where f.emp_codigo = p.emp_codigo');
          Query1.sql.add('and f.fam_codigo = p.fam_codigo');
          Query1.sql.add('and p.emp_codigo = :emp');
          Query1.sql.add('and p.pro_codigo = :pro');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('pro').Value := QDetallePRO_CODIGO.Value;
          Query1.Open;

          if Query1.RecordCount > 0 then
          begin
            //insertando cuenta de ingreso
            if QCuentas.Locate('cat_cuenta', Query1.FieldByName('fam_cta_ingreso').AsString,[]) then
            begin
              QCuentas.Edit;
              QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value);
              QCuentas.Post;
            end
            else
            begin
              QCuentas.Append;
              QCuentascat_cuenta.Value := Query1.FieldByName('fam_cta_ingreso').AsString;
              QCuentasdet_monto.Value  := QDetalleDET_PRECIO.Value * QDetalleDET_CANTIDAD.Value;
              QCuentasdet_origen.Value := 'Credito';
              QCuentas.Post;
            end;

            if Length(Query1.FieldByName('fam_cta_costo').AsString) > 0 then
            begin
              //insertando cuenta de costo
              if QCuentas.Locate('cat_cuenta',Query1.FieldByName('fam_cta_costo').AsString ,[]) then
              begin
                QCuentas.Edit;
                QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
                QCuentas.Post;
              end
              else
              begin
                QCuentas.Append;
                QCuentascat_cuenta.Value := Query1.FieldByName('fam_cta_costo').AsString;
                QCuentasdet_monto.Value  := QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value;
                QCuentasdet_origen.Value := 'Debito';
                QCuentas.Post;
              end;
            end;

            //Insertando cuenta contable de descuento
            if QFacturasFAC_DESCUENTO.Value > 0 then
            begin
              if QCuentas.Locate('cat_cuenta',Query1.FieldByName('fam_cta_descuento').AsString ,[]) then
              begin
                QCuentas.Edit;
                QCuentasdet_monto.Value := QCuentasdet_monto.Value + (((QDetalleDET_PRECIO.Value * QDetalleDET_DESCUENTO.Value)/100) * QDetalleDET_CANTIDAD.Value);
                QCuentas.Post;
              end
              else
              begin
                QCuentas.Append;
                QCuentascat_cuenta.Value := Query1.FieldByName('fam_cta_descuento').AsString;
                QCuentasdet_monto.Value  := ((QDetalleDET_PRECIO.Value * QDetalleDET_DESCUENTO.Value)/100) * QDetalleDET_CANTIDAD.Value;
                QCuentasdet_origen.Value := 'Debito';
                QCuentas.Post;
              end;
            end;

            if Length(Query1.FieldByName('fam_cta_inventario').AsString) > 0 then
            begin
              //Insertando cuenta contable de inventario
              if QCuentas.Locate('cat_cuenta',Query1.FieldByName('fam_cta_inventario').AsString ,[]) then
              begin
                QCuentas.Edit;
                QCuentasdet_monto.Value := QCuentasdet_monto.Value + (QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value);
                QCuentas.Post;
              end
              else
              begin
                QCuentas.Append;
                QCuentascat_cuenta.Value := Query1.FieldByName('fam_cta_inventario').AsString;
                QCuentasdet_monto.Value  := QDetalleDET_COSTO.Value * QDetalleDET_CANTIDAD.Value;
                QCuentasdet_origen.Value := 'Credito';
                QCuentas.Post;
              end;
            end;
          end;

          QDetalle.next;
        end;
        QDetalle.first;
        //QDetalle.EnableControls;

        Query1.close;
        Query1.sql.clear;
        Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp,');
        Query1.sql.add('tfa_actbalance, tfa_cliente, ven_codigo, tfa_precio,');
        Query1.sql.add('tfa_mensaje1, tfa_mensaje2, tfa_mensaje3, fpa_codigo,');
        Query1.sql.add('tfa_verlimite, tfa_copias, tfa_permite_abonar, tfa_itbis,');
        Query1.sql.add('tfa_imprimie_encabezado, tfa_rnc, cat_cuenta');
        Query1.sql.add('from tiposfactura');
        Query1.sql.add('where emp_codigo = :emp');
        Query1.sql.add('and tfa_codigo = :cod');
        Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
        Query1.Parameters.parambyname('cod').Value := QFacturasTFA_CODIGO.Value;
        Query1.open;

        //Insertando cuenta contable de itbis
        if QFacturasFAC_ITBIS.Value > 0 then
        begin
          if QCuentas.Locate('cat_cuenta',dm.QContabPAR_CTAITBIS.Value ,[]) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QFacturasFAC_ITBIS.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := dm.QContabPAR_CTAITBIS.Value;
            QCuentasdet_monto.Value  := QFacturasFAC_ITBIS.Value;
            QCuentasdet_origen.Value := 'Credito';
            QCuentas.Post;
          end;
        end;

        //Insertando cuenta de caja
        if Query1.fieldbyname('tfa_actbalance').asstring <> 'True' then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('select cat_cuenta from cajas where emp_codigo = :emp and caj_codigo = :caj');
          Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          Query1.Parameters.ParamByName('caj').Value := dm.QParametroscaj_codigo.Value;
          Query1.Open;
      
          if QCuentas.Locate('cat_cuenta',Query1.FieldByName('cat_cuenta').AsString ,[]) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QFacturasFAC_TOTAL.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := Query1.FieldByName('cat_cuenta').AsString;
            QCuentasdet_monto.Value  := QFacturasFAC_TOTAL.Value;
            QCuentasdet_origen.Value := 'Debito';
            QCuentas.Post;
          end;
        end
        else
        begin //Insertando cuenta de cxc
          QClientes.Close;
          QClientes.Parameters.ParamByName('cli').Value := QFacturasCLI_CODIGO.Value;
          QClientes.Open;

          if QCuentas.Locate('cat_cuenta',QClientesCLI_CUENTA.Value ,[]) then
          begin
            QCuentas.Edit;
            QCuentasdet_monto.Value := QFacturasFAC_TOTAL.Value;
            QCuentas.Post;
          end
          else
          begin
            QCuentas.Append;
            QCuentascat_cuenta.Value := QClientesCLI_CUENTA.Value;
            QCuentasdet_monto.Value  := QFacturasFAC_TOTAL.Value;
            QCuentasdet_origen.Value := 'Debito';
            QCuentas.Post;
          end;
        end;

        QFacturas.Next;
      end;
      ProgressBar1.Visible := false;
      QFacturas.First;
      QFacturas.EnableControls;
    end;
  end; }

end;

procedure TfrmConsFacturasRestBar.dsFacturasDataChange(Sender: TObject;
  Field: TField);
begin
QDetalle.Close;
QDetalle.Open;

QForma.Close;
QForma.Open;

QCuentas.Close;
QCuentas.Open;
end;

procedure TfrmConsFacturasRestBar.BitBtn2Click(Sender: TObject);
begin
 Application.CreateForm(tRepListaRestBar, RepListaRestBar);
    RepListaRestBar.lbFecha.Caption := 'Del ' + DateToStr(Fecha1.Date) + ' Al ' + DateToStr(Fecha2.Date);
    RepListaRestBar.lbCajero.Caption := tCajero.Text;
    RepListaRestBar.lbCaja.Caption   := edCaja.Text;


    RepListaRestBar.QTickets.Close;
    RepListaRestBar.QTickets.SQL.Clear;
    RepListaRestBar.QTickets.SQL.Add
    ('select Fecha, Caja, Propina, FacturaID, NCF, Total Monto, Itbis, Descuento, Estatus, Total-Itbis-Propina as SubTotal  from vw_FacturasRestBar  WHERE Estatus not in (''SER'', ''ANU'')');

     if (trim(edFac1.Text) <> '') and (trim(edFac2.Text) <> '') then
     RepListaRestBar.QTickets.sql.add('and FacturaID between '+edFac1.Text+' and '+edFac2.Text);

  if trim(edCajero.text) <> '' then
    RepListaRestBar.QTickets.sql.add('and CajeroID = '+trim(edCajero.text));

  if trim(edCaja.text) <> '' then
    RepListaRestBar.QTickets.sql.add('and CAJAID = '+trim(edCaja.text));


  if trim(edNombre.text) <> '' then
    RepListaRestBar.QTickets.sql.add('and nombre like '+#39+trim(edNombre.text)+#39);

  if cbStatus.ItemIndex = 1 then
     RepListaRestBar.QTickets.sql.add('and Estatus = '+#39+'ANU'+#39)
  else if cbStatus.ItemIndex = 2 then
     RepListaRestBar.QTickets.sql.add('and Estatus = '+#39+'PAG'+#39)
  else if cbStatus.ItemIndex = 3 then
     RepListaRestBar.QTickets.sql.add('and Estatus = '+#39+'PEN'+#39);

  if ckrango.Checked then
  begin
    RepListaRestBar.QTickets.SQL.Add('and fecha between convert(datetime,:fecha1,105) and convert(datetime,:fecha2,105)');
    RepListaRestBar.QTickets.Parameters.parambyname('fecha1').DataType := ftDate;
    RepListaRestBar.QTickets.Parameters.parambyname('fecha2').DataType := ftDate;
    RepListaRestBar.QTickets.Parameters.parambyname('fecha1').Value := fecha1.date;
    RepListaRestBar.QTickets.Parameters.parambyname('fecha2').Value := fecha2.date;
  end;
  {QFacturas.SQL.Add('group by emp_codigo, suc_codigo, cajaID, CAJA,Pagado, DESCUENTO, grabado, monto_grabado_incluido,monto_exento,');
  QFacturas.SQL.Add('FECHA, ITBIS, NOMBRE, FacturaID, Estatus, TOTAL, ConItbis, NCF, cajero, CajeroID');
  }

  if cbOrden.ItemIndex = 0 then
     RepListaRestBar.QTickets.sql.add('order by FacturaID desc')
  else if cbOrden.ItemIndex = 1 then
     RepListaRestBar.QTickets.sql.add('order by nombre, FacturaID desc')
  else if cbOrden.ItemIndex = 2 then
     RepListaRestBar.QTickets.sql.add('order by fecha, FacturaID desc')
  else if cbOrden.ItemIndex = 3 then
     RepListaRestBar.QTickets.sql.add('order by NCF, FacturaID desc');
  RepListaRestBar.QTickets.SQL.SaveToFile('.\consultafactrest.txt');
  RepListaRestBar.QTickets.open;

    RepListaRestBar.QEmpresas.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RepListaRestBar.QEmpresas.Parameters.ParamByName('usu').Value := dm.Usuario;
    RepListaRestBar.QEmpresas.Open;

    Screen.Cursor := crDefault;

    RepListaRestBar.PrinterSetup;
    RepListaRestBar.Preview;
    RepListaRestBar.Destroy;
end;

procedure TfrmConsFacturasRestBar.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));

  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'       ;

  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod') ;

    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCliente.text))
    else
       dm.Query1.Parameters.parambyname('cod').Value := trim(edCliente.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    edCliente.setfocus;
    btRefreshClick(self);
  end;

end;

procedure TfrmConsFacturasRestBar.btbuscacuentaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QCuentas.Open;
    QCuentas.Edit;
    QCuentascat_cuenta.Value := Search.ValueField;
  end;

end;

procedure TfrmConsFacturasRestBar.bteliminacuentaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QCuentas.Delete
  end;
  GridCuentas.setfocus;

end;

procedure TfrmConsFacturasRestBar.QCuentasAfterDelete(DataSet: TDataSet);
begin
//  QCuentas.UpdateBatch;
  Totalizar;

end;

procedure TfrmConsFacturasRestBar.QCuentasAfterEdit(DataSet: TDataSet);
begin
//  if not Modifica then QCuentas.Cancel;

end;

procedure TfrmConsFacturasRestBar.QCuentasAfterInsert(DataSet: TDataSet);
begin
//  if not Modifica then QCuentas.Cancel;

end;

procedure TfrmConsFacturasRestBar.QCuentasAfterPost(DataSet: TDataSet);
begin
//  QCuentas.UpdateBatch;
  Totalizar;

end;

procedure TfrmConsFacturasRestBar.QCuentasBeforeDelete(DataSet: TDataSet);
begin
//  if not Elimina then Abort;

end;

procedure TfrmConsFacturasRestBar.QCuentasBeforePost(DataSet: TDataSet);
begin
  {     if QCuentas.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from contdet_Facturas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and fac_forma = :for');
    dm.Query1.SQL.Add('and tfa_codigo = :tfa');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := QFacturassuc_codigo.Value;
    dm.Query1.Parameters.ParamByName('for').Value := 'A';
    dm.Query1.Parameters.ParamByName('tfa').Value := QFacturasTipoFactura.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QFacturasfacturaid.Value;
    dm.Query1.Open;
    QCuentasDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;}

end;

procedure TfrmConsFacturasRestBar.QCuentasNewRecord(DataSet: TDataSet);
begin
{  QCuentasemp_codigo.Value := dm.vp_cia;
  QCuentassuc_codigo.Value := QFacturassuc_codigo.Value;
  QCuentasfac_forma.Value  := 'A';
  QCuentastfa_codigo.Value := QFacturasTipoFactura.Value;
  QCuentasfac_numero.Value := QFacturasfacturaid.Value;
    }
end;

procedure TfrmConsFacturasRestBar.QFacturasAfterOpen(DataSet: TDataSet);
begin
//  if not QCuentas.Active then QCuentas.Open;

end;

procedure TfrmConsFacturasRestBar.QFacturasAfterScroll(DataSet: TDataSet);
begin
 Totalizar
end;

procedure TfrmConsFacturasRestBar.btCloseClick(Sender: TObject);
begin
close;
end;

procedure TfrmConsFacturasRestBar.FormActivate(Sender: TObject);
begin
 if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

end.
