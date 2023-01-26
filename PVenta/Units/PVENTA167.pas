unit PVENTA167;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Db, DBCtrls, ADODB,
  QuerySearchDlgADO, Grids;

type
  TfrmRepProdRotacion = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Label2: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label3: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    edProv: TEdit;
    tProvincia: TEdit;
    btFamilia: TSpeedButton;
    Label5: TLabel;
    btDepto: TSpeedButton;
    Label27: TLabel;
    btMarca: TSpeedButton;
    Label6: TLabel;
    tFamilia: TEdit;
    tDepto: TEdit;
    edDepto: TEdit;
    edFamilia: TEdit;
    tMArca: TEdit;
    edMarca: TEdit;
    Label9: TLabel;
    edCantidad: TEdit;
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    edProd: TEdit;
    lNombres: TListBox;
    lCodigos: TListBox;
    Label7: TLabel;
    cbOrden: TComboBox;
    Label10: TLabel;
    cbimprimir: TComboBox;
    cksinrotacion: TCheckBox;
    btVendedor: TSpeedButton;
    Label11: TLabel;
    tVendedor: TEdit;
    edVendedor: TEdit;
    ckcomparativo: TCheckBox;
    Label12: TLabel;
    btcliente: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    btpreventa: TSpeedButton;
    Label13: TLabel;
    tPreventa: TEdit;
    edPreventa: TEdit;
    Label14: TLabel;
    btmoneda: TSpeedButton;
    edmoneda: TEdit;
    tmoneda: TEdit;
    btgerente: TSpeedButton;
    Label15: TLabel;
    tgerente: TEdit;
    edGerente: TEdit;
    cbtipo: TComboBox;
    Label16: TLabel;
    btgondolero: TSpeedButton;
    Label17: TLabel;
    tgondolero: TEdit;
    edGondolero: TEdit;
    btcolor: TSpeedButton;
    Label18: TLabel;
    tcolor: TEdit;
    edColor: TEdit;
    Label19: TLabel;
    btTipo: TSpeedButton;
    edTipo: TEdit;
    tTipo: TEdit;
    ChkB_cksucursal: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edProvChange(Sender: TObject);
    procedure edProvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFamiliaClick(Sender: TObject);
    procedure btDeptoClick(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btMarcaClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btclienteClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edClienteChange(Sender: TObject);
    procedure btpreventaClick(Sender: TObject);
    procedure edPreventaChange(Sender: TObject);
    procedure edPreventaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edmonedaChange(Sender: TObject);
    procedure edmonedaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btmonedaClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btgerenteClick(Sender: TObject);
    procedure edGerenteChange(Sender: TObject);
    procedure edGerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btgondoleroClick(Sender: TObject);
    procedure edGondoleroChange(Sender: TObject);
    procedure edGondoleroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btcolorClick(Sender: TObject);
    procedure edColorChange(Sender: TObject);
    procedure edColorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btTipoClick(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ChkB_cksucursalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepProdRotacion: TfrmRepProdRotacion;

implementation

uses RVENTA51, SIGMA01, PVENTA33;

{$R *.dfm}

procedure TfrmRepProdRotacion.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmRepProdRotacion.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmRepProdRotacion.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepProdRotacion.btPrintClick(Sender: TObject);
var
  a : integer;
begin
  Screen.Cursor := crSQLWait;

  Application.CreateForm(tRRepProdVendidos, RRepProdVendidos);
  RRepProdVendidos.lbProveedor.Caption := tProveedor.Text;
  RRepProdVendidos.lbProvincia.Caption := tProvincia.Text;
  RRepProdVendidos.lbCliente.Caption   := tCliente.Text;
  RRepProdVendidos.lbMarca.Caption     := tMArca.Text;
  RRepProdVendidos.lbFamilia.Caption   := tFamilia.Text;
  RRepProdVendidos.lbDepto.Caption     := tDepto.Text;
  RRepProdVendidos.lbVendedor.Caption  := tVendedor.Text;
  RRepProdVendidos.lbpreventa.Caption  := tPreventa.Text;
  RRepProdVendidos.lbGerente.Caption  := tgerente.Text;
  RRepProdVendidos.lbgondolero.Caption := tgondolero.Text;
  RRepProdVendidos.lbColor.Caption     := tcolor.Text;
  RRepProdVendidos.lbTipo.Caption      := tTipo.Text;

  RRepProdVendidos.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RRepProdVendidos.lbMoneda.Caption := 'Expresado en '+tmoneda.Text;
  RRepProdVendidos.QProductos.SQL.Clear;
  RRepProdVendidos.QProductos.SQL.Add('SELECT');

  if not cksinrotacion.Checked then //productos que tuvieron rotacion
  begin
    if not CheckBox1.Checked then
      RRepProdVendidos.QProductos.SQL.Add('TOP '+Trim(edCantidad.Text));

    RRepProdVendidos.QProductos.SQL.Add('a.pro_codigo, a.PRO_RORIGINAL, a.pro_nombre,');
    RRepProdVendidos.QProductos.SQL.Add('sum(a.cantidad) as cantidad,');
    RRepProdVendidos.QProductos.SQL.Add('sum(a.precio) as precio,');
    RRepProdVendidos.QProductos.SQL.Add('sum(a.descuento) as descuento,');
    RRepProdVendidos.QProductos.SQL.Add('sum(a.itbis) as itbis,');
    RRepProdVendidos.QProductos.SQL.Add('sum(a.selectivo_ad) as selectivo_ad,');
    RRepProdVendidos.QProductos.SQL.Add('sum(a.selectivo_con) as selectivo_con');
    RRepProdVendidos.QProductos.SQL.Add('from ');
    RRepProdVendidos.QProductos.SQL.Add('(select');
    RRepProdVendidos.QProductos.SQL.Add('P.PRO_CODIGO, p.PRO_RORIGINAL, P.PRO_NOMBRE,');
    RRepProdVendidos.QProductos.SQL.Add('SUM(D.DET_CANTIDAD * isnull(d.det_cant_unidad_medida,1)) AS CANTIDAD,');

    if (edmoneda.Text = dm.QParametrospar_moneda_local.AsString) then
    begin
      if dm.QParametrospar_itbisincluido.AsString = 'True' then
        RRepProdVendidos.QProductos.SQL.Add('SUM((D.DET_PRECIO*(D.DET_CANTIDAD * isnull(d.det_cant_unidad_medida,1))/((d.det_itbis/100)+1))) AS PRECIO,')
      else
        RRepProdVendidos.QProductos.SQL.Add('SUM((D.DET_PRECIO*(D.DET_CANTIDAD*isnull(d.det_cant_unidad_medida,1)))) AS PRECIO,');
    end
    else
    begin
      if dm.QParametrospar_itbisincluido.AsString = 'True' then
        RRepProdVendidos.QProductos.SQL.Add('SUM(((D.DET_PRECIO/f.fac_tasa)*(D.DET_CANTIDAD * isnull(d.det_cant_unidad_medida,1))/((d.det_itbis/100)+1))) AS PRECIO,')
      else
        RRepProdVendidos.QProductos.SQL.Add('SUM(((D.DET_PRECIO/f.fac_tasa)*(D.DET_CANTIDAD*isnull(d.det_cant_unidad_medida,1)))) AS PRECIO,');
    end;

    if (edmoneda.Text = dm.QParametrospar_moneda_local.AsString) then
    begin
      if dm.QParametrospar_itbisincluido.AsString = 'True' then
        RRepProdVendidos.QProductos.SQL.Add('SUM((((d.det_precio/((d.det_itbis/100)+1))*d.det_descuento)/100)*(D.DET_CANTIDAD*isnull(d.det_cant_unidad_medida,1))) AS DESCUENTO,')
      else
        RRepProdVendidos.QProductos.SQL.Add('SUM(((d.det_precio*d.det_descuento)/100)*(D.DET_CANTIDAD*isnull(d.det_cant_unidad_medida,1))) AS DESCUENTO,');
    end
    else
    begin
      if dm.QParametrospar_itbisincluido.AsString = 'True' then
        RRepProdVendidos.QProductos.SQL.Add('SUM(((((d.det_precio/((d.det_itbis/100)+1))*d.det_descuento)/100)/f.fac_tasa)*(D.DET_CANTIDAD*isnull(d.det_cant_unidad_medida,1))) AS DESCUENTO,')
      else
        RRepProdVendidos.QProductos.SQL.Add('SUM((((d.det_precio*d.det_descuento)/100)/f.fac_tasa)*(D.DET_CANTIDAD*isnull(d.det_cant_unidad_medida,1))) AS DESCUENTO,');
    end;


    if (edmoneda.Text = dm.QParametrospar_moneda_local.AsString) then
      if dm.QParametrospar_itbisincluido.AsString = 'True' then
        RRepProdVendidos.QProductos.SQL.Add('sum(((((d.det_precio-((d.det_precio*d.det_descuento)/100))*(d.det_cantidad*isnull(d.det_cant_unidad_medida,1)))/((d.det_itbis/100)+1)) * d.det_itbis)/100) as itbis,')
      else
        RRepProdVendidos.QProductos.SQL.Add('sum(((((d.det_precio-((d.det_precio*d.det_descuento)/100))* d.det_itbis)/100) * (d.det_cantidad*isnull(d.det_cant_unidad_medida,1)))) as itbis,')
    else
    begin
      if dm.QParametrospar_itbisincluido.AsString = 'True' then
        RRepProdVendidos.QProductos.SQL.Add('sum((((((d.det_precio-((d.det_precio*d.det_descuento)/100))/f.fac_tasa)*(d.det_cantidad*isnull(d.det_cant_unidad_medida,1)))/((d.det_itbis/100)+1)) * d.det_itbis)/100) as itbis,')
      else
        RRepProdVendidos.QProductos.SQL.Add('sum((((((d.det_precio-((d.det_precio*d.det_descuento)/100))/f.fac_tasa) * d.det_itbis)/100) * (d.det_cantidad*isnull(d.det_cant_unidad_medida,1)))) as itbis,');
    end;

    if (edmoneda.Text = dm.QParametrospar_moneda_local.AsString) then
      RRepProdVendidos.QProductos.SQL.Add('SUM(D.det_selectivo_ad*D.DET_CANTIDAD) AS SELECTIVO_AD,')
    else
      RRepProdVendidos.QProductos.SQL.Add('SUM((D.det_selectivo_ad/f.fac_tasa)*(D.DET_CANTIDAD*isnull(d.det_cant_unidad_medida,1))) AS SELECTIVO_AD,');

    if (edmoneda.Text = dm.QParametrospar_moneda_local.AsString) then
      RRepProdVendidos.QProductos.SQL.Add('SUM(D.det_selectivo_con*D.DET_CANTIDAD) AS SELECTIVO_CON')
    else
      RRepProdVendidos.QProductos.SQL.Add('SUM((D.det_selectivo_con/f.fac_tasa)*(D.DET_CANTIDAD*isnull(d.det_cant_unidad_medida,1))) AS SELECTIVO_CON');

    RRepProdVendidos.QProductos.SQL.Add('FROM');
    RRepProdVendidos.QProductos.SQL.Add('DET_FACTURA D, PRODUCTOS P, FACTURAS F');
    RRepProdVendidos.QProductos.SQL.Add('WHERE');
    RRepProdVendidos.QProductos.SQL.Add('d.EMP_CODIGO = f.EMP_CODIGO');
    RRepProdVendidos.QProductos.SQL.Add('AND d.FAC_FORMA = f.FAC_FORMA');
    RRepProdVendidos.QProductos.SQL.Add('AND d.TFA_CODIGO = f.TFA_CODIGO');
    RRepProdVendidos.QProductos.SQL.Add('AND d.FAC_NUMERO = f.FAC_NUMERO');
    RRepProdVendidos.QProductos.SQL.Add('AND d.SUC_CODIGO = f.SUC_CODIGO');
    RRepProdVendidos.QProductos.SQL.Add('AND D.PRO_CODIGO = P.PRO_CODIGO');
    RRepProdVendidos.QProductos.SQL.Add('and p.emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));
    RRepProdVendidos.QProductos.SQL.Add('AND F.EMP_CODIGO = :emp');
    if (ChkB_cksucursal.Checked = True) and (DBLookupComboBox2.KeyValue >=0) then
    RRepProdVendidos.QProductos.SQL.Add('AND F.SUC_CODIGO = :suc');
    RRepProdVendidos.QProductos.SQL.Add('AND F.FAC_STATUS <> '+QuotedStr('ANU'));
    RRepProdVendidos.QProductos.SQL.Add('AND isnull(D.DET_CANTIDAD,0) > 0');
    RRepProdVendidos.QProductos.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:fec1,105)');
    RRepProdVendidos.QProductos.SQL.Add('AND convert(datetime,:fec2,105)');
    if (ChkB_cksucursal.Checked = True) and (DBLookupComboBox2.KeyValue >=0) then
    RRepProdVendidos.QProductos.SQL.Add('AND f.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));

    if lCodigos.Items.Count > 0 then
      RRepProdVendidos.QProductos.SQL.Add('and p.pro_codigo in (');
    for a := 0 to lCodigos.Items.Count-1 do
      RRepProdVendidos.QProductos.SQL.Add(lCodigos.Items[a]+',');
    if lCodigos.Items.Count > 0 then
      RRepProdVendidos.QProductos.SQL.Add(lCodigos.Items[lCodigos.Items.Count-1]+')');

    if Trim(edTipo.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and f.tfa_codigo = '+Trim(edTipo.Text));

    if Trim(edProveedor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

    if Trim(edGerente.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.ger_codigo = '+Trim(edGerente.Text));

    if Trim(edGondolero.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.gon_codigo = '+Trim(edGondolero.Text));

    if Trim(edColor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.col_codigo = '+Trim(edColor.Text));

    if Trim(edCliente.Text) <> '' then
    begin
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         RRepProdVendidos.QProductos.SQL.Add('and f.cli_codigo = '+Trim(edCliente.Text))
      else
         RRepProdVendidos.QProductos.SQL.Add('and f.cli_referencia = '+QuotedStr(Trim(edCliente.Text)));
    end;

    if Trim(edProv.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and f.pro_codigo = '+Trim(edProv.Text));

    if Trim(edFamilia.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

    if Trim(edDepto.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

    if Trim(edMarca.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

    if Trim(edVendedor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and f.ven_codigo = '+Trim(edVendedor.Text));

    if Trim(edPreventa.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and d.pre_codigo = '+Trim(edPreventa.Text));

    if cbtipo.ItemIndex = 1 then
      RRepProdVendidos.QProductos.SQL.Add('and 1 = 2');

    RRepProdVendidos.QProductos.SQL.Add('GROUP BY');
    RRepProdVendidos.QProductos.SQL.Add('P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_NOMBRE');
    RRepProdVendidos.QProductos.SQL.Add('union all');
    RRepProdVendidos.QProductos.SQL.Add('select');
    RRepProdVendidos.QProductos.SQL.Add('t.producto, P.PRO_RORIGINAL, p.pro_nombre,');
    RRepProdVendidos.QProductos.SQL.Add('SUM(t.cantidad) as cantidad,');
    RRepProdVendidos.QProductos.SQL.Add('SUM(t.precio/((t.itbis/100.00)+1)*t.CANTIDAD) AS PRECIO,');
    RRepProdVendidos.QProductos.SQL.Add('SUM(((t.precio*isnull(t.descuento,0))/100)*t.cantidad) as descuento,');
    RRepProdVendidos.QProductos.SQL.Add('SUM((t.precio-((t.precio*isnull(t.descuento,0))/100)) - ((t.precio-((t.precio*isnull(t.descuento,0))/100))/((t.itbis/100.00)+1))*t.cantidad) as itbis,');
    RRepProdVendidos.QProductos.SQL.Add('0 as selectivo_ad,');
    RRepProdVendidos.QProductos.SQL.Add('0 as selectivo_con');
    RRepProdVendidos.QProductos.SQL.Add('from productos p, ticket t, montos_ticket m');
    RRepProdVendidos.QProductos.SQL.Add('where');
    RRepProdVendidos.QProductos.SQL.Add('p.pro_codigo = t.producto');
    RRepProdVendidos.QProductos.SQL.Add('and p.emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));
    RRepProdVendidos.QProductos.SQL.Add('AND isnull(t.CANTIDAD,0) > 0');
    RRepProdVendidos.QProductos.SQL.Add('AND t.FECHA BETWEEN convert(datetime,:fec3,105)');
    RRepProdVendidos.QProductos.SQL.Add('AND convert(datetime,:fec4,105)');
    RRepProdVendidos.QProductos.SQL.Add('and t.fecha = m.fecha');
    RRepProdVendidos.QProductos.SQL.Add('and t.caja = m.caja');
    RRepProdVendidos.QProductos.SQL.Add('and t.usu_codigo = m.usu_codigo');
    RRepProdVendidos.QProductos.SQL.Add('and t.ticket = m.ticket');
    RRepProdVendidos.QProductos.SQL.Add('and m.status = '+QuotedStr('FAC'));
    if lCodigos.Items.Count > 0 then
      RRepProdVendidos.QProductos.SQL.Add('and p.pro_codigo in (');
    for a := 0 to lCodigos.Items.Count-1 do
      RRepProdVendidos.QProductos.SQL.Add(lCodigos.Items[a]+',');
    if lCodigos.Items.Count > 0 then
      RRepProdVendidos.QProductos.SQL.Add(lCodigos.Items[lCodigos.Items.Count-1]+')');

    if Trim(edCliente.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and m.nombre = '+QuotedStr(Trim(tcliente.Text)));

    if Trim(edProveedor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

    if Trim(edGerente.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.ger_codigo = '+Trim(edGerente.Text));

    if Trim(edGondolero.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.gon_codigo = '+Trim(edGondolero.Text));

    if Trim(edColor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.col_codigo = '+Trim(edColor.Text));

    if Trim(edFamilia.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

    if Trim(edDepto.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

    if Trim(edMarca.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

    if Trim(edVendedor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and 1 = 0');

    if cbtipo.ItemIndex = 2 then
      RRepProdVendidos.QProductos.SQL.Add('and 1 = 2');

    RRepProdVendidos.QProductos.SQL.Add('group by t.producto, P.PRO_RORIGINAL, p.pro_nombre) a');
    RRepProdVendidos.QProductos.SQL.Add('group by a.pro_codigo, a.PRO_RORIGINAL, a.pro_nombre');

    case cbOrden.ItemIndex of
    0 : RRepProdVendidos.QProductos.SQL.Add('ORDER BY 4 DESC');
    1 : RRepProdVendidos.QProductos.SQL.Add('ORDER BY pro_nombre');
    2 : RRepProdVendidos.QProductos.SQL.Add('ORDER BY pro_roriginal');
    end;

  end //productos que no tuvieron rotacion
  else
  begin
    RRepProdVendidos.QProductos.SQL.Add('p.pro_codigo, p.pro_roriginal, p.pro_nombre, 0.00 as precio, 0.00 as cantidad,');
    RRepProdVendidos.QProductos.SQL.Add('0.00 as descuento, 0.00 as itbis, 0.00 as selectivo_ad,');
    RRepProdVendidos.QProductos.SQL.Add('0.00 as selectivo_con');
    RRepProdVendidos.QProductos.SQL.Add('from productos p');
    RRepProdVendidos.QProductos.SQL.Add('where p.emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));
    RRepProdVendidos.QProductos.SQL.Add('and p.pro_codigo not in (');
    RRepProdVendidos.QProductos.SQL.Add('select distinct d.pro_codigo from det_factura d, facturas f');
    RRepProdVendidos.QProductos.SQL.Add('where d.emp_codigo = f.emp_codigo');
    RRepProdVendidos.QProductos.SQL.Add('and d.suc_codigo = f.suc_codigo');
    RRepProdVendidos.QProductos.SQL.Add('and d.fac_forma  = f.fac_forma');
    RRepProdVendidos.QProductos.SQL.Add('and f.tfa_codigo = f.tfa_codigo');
    RRepProdVendidos.QProductos.SQL.Add('and f.fac_numero = f.fac_numero');
    RRepProdVendidos.QProductos.SQL.Add('and f.emp_codigo = :emp');
    if (ChkB_cksucursal.Checked = True) and (DBLookupComboBox2.KeyValue >=0) then
    RRepProdVendidos.QProductos.SQL.Add('and f.suc_codigo = :suc');
    RRepProdVendidos.QProductos.SQL.Add('AND F.FAC_STATUS <> '+QuotedStr('ANU'));
    RRepProdVendidos.QProductos.SQL.Add('AND isnull(D.DET_CANTIDAD,0) > 0');
    RRepProdVendidos.QProductos.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:fec1,105)');
    RRepProdVendidos.QProductos.SQL.Add('AND convert(datetime,:fec2,105)');

    if Trim(edProveedor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

    if Trim(edGerente.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.ger_codigo = '+Trim(edGerente.Text));

    if Trim(edGondolero.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.gon_codigo = '+Trim(edGondolero.Text));

    if Trim(edColor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.col_codigo = '+Trim(edColor.Text));

    if Trim(edFamilia.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

    if Trim(edProv.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and f.pro_codigo = '+Trim(edProv.Text));

    if Trim(edDepto.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

    if Trim(edMarca.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

    if Trim(edVendedor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and f.ven_codigo = '+Trim(edVendedor.Text));

    if Trim(edPreventa.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and d.pre_codigo = '+Trim(edPreventa.Text));

    RRepProdVendidos.QProductos.SQL.Add('union all');
    RRepProdVendidos.QProductos.SQL.Add('select distinct producto');
    RRepProdVendidos.QProductos.SQL.Add('from productos p, ticket t');
    RRepProdVendidos.QProductos.SQL.Add('where p.pro_codigo = t.producto');
    RRepProdVendidos.QProductos.SQL.Add('and p.emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));
    RRepProdVendidos.QProductos.SQL.Add('AND isnull(t.CANTIDAD,0) > 0');
    RRepProdVendidos.QProductos.SQL.Add('AND t.FECHA BETWEEN convert(datetime,:fec3,105)');
    RRepProdVendidos.QProductos.SQL.Add('AND convert(datetime,:fec4,105)');
    RRepProdVendidos.QProductos.SQL.Add('and p.emp_codigo = '+dm.QParametrosPAR_INVEMPRESA.AsString);

    if Trim(edProveedor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

    if Trim(edGerente.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.ger_codigo = '+Trim(edGerente.Text));

    if Trim(edGondolero.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.gon_codigo = '+Trim(edGondolero.Text));

    if Trim(edColor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.col_codigo = '+Trim(edColor.Text));

    if Trim(edFamilia.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

    if Trim(edProv.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and f.pro_codigo = '+Trim(edProv.Text));

    if Trim(edDepto.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

    if Trim(edMarca.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

    if Trim(edVendedor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and 1 = 0');

    RRepProdVendidos.QProductos.SQL.Add(')');
    if Trim(edProveedor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

    if Trim(edGerente.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.ger_codigo = '+Trim(edGerente.Text));
       
    if Trim(edFamilia.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.fam_codigo = '+Trim(edFamilia.Text));

    if Trim(edProv.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and f.pro_codigo = '+Trim(edProv.Text));

    if Trim(edDepto.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.dep_codigo = '+Trim(edDepto.Text));

    if Trim(edMarca.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and p.mar_codigo = '+Trim(edMarca.Text));

    if Trim(edVendedor.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and f.ven_codigo = '+Trim(edVendedor.Text));

    if Trim(edPreventa.Text) <> '' then
       RRepProdVendidos.QProductos.SQL.Add('and d.pre_codigo = '+Trim(edPreventa.Text));
    RRepProdVendidos.QProductos.SQL.Add('ORDER BY p.pro_nombre');
  end;

  RRepProdVendidos.QAnterior.SQL := RRepProdVendidos.QProductos.SQL;
  RRepProdVendidos.QAnterior.Parameters.ParamByName('fec1').DataType := ftDate;
  RRepProdVendidos.QAnterior.Parameters.ParamByName('fec2').DataType := ftDate;
  RRepProdVendidos.QAnterior.Parameters.ParamByName('fec3').DataType := ftDate;
  RRepProdVendidos.QAnterior.Parameters.ParamByName('fec4').DataType := ftDate;
  RRepProdVendidos.QAnterior.Parameters.ParamByName('fec1').Value := fecha1.date - 365;
  RRepProdVendidos.QAnterior.Parameters.ParamByName('fec2').Value := fecha2.date - 365;
  RRepProdVendidos.QAnterior.Parameters.ParamByName('fec3').Value := fecha1.date - 365;
  RRepProdVendidos.QAnterior.Parameters.ParamByName('fec4').Value := fecha2.date - 365;
  if (ChkB_cksucursal.Checked = True) and (DBLookupComboBox2.KeyValue >=0) then
  RRepProdVendidos.QAnterior.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RRepProdVendidos.QAnterior.Parameters.ParamByName('emp').Value := dm.vp_cia;

  RRepProdVendidos.QRDBText11.Enabled := ckcomparativo.Checked;

  RRepProdVendidos.QProductos.Parameters.ParamByName('fec1').DataType := ftDate;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec2').DataType := ftDate;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec3').DataType := ftDate;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec4').DataType := ftDate;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec1').Value := fecha1.date;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec2').Value := fecha2.date;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec3').Value := fecha1.date;
  RRepProdVendidos.QProductos.Parameters.ParamByName('fec4').Value := fecha2.date;
  if (ChkB_cksucursal.Checked = True) and (DBLookupComboBox2.KeyValue >=0) then
  RRepProdVendidos.QProductos.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RRepProdVendidos.QProductos.Parameters.ParamByName('emp').Value := dm.vp_cia;

  RRepProdVendidos.QProductos.Open;

  case cbimprimir.ItemIndex of
  1 : begin
        RRepProdVendidos.QRLabel3.Enabled := false;
        RRepProdVendidos.QRLabel4.Enabled := false;
        RRepProdVendidos.QRLabel5.Enabled := false;
        RRepProdVendidos.QRLabel6.Enabled := false;
        RRepProdVendidos.QRLabel8.Enabled := false;
        RRepProdVendidos.QRExpr1.Enabled := false;
        RRepProdVendidos.QRLabel12.Enabled := false;
        RRepProdVendidos.QRLabel15.Enabled := false;
        RRepProdVendidos.QRLabel16.Enabled := false;
        RRepProdVendidos.QRLabel17.Enabled := false;
        RRepProdVendidos.QRLabel20.Enabled := false;
        RRepProdVendidos.QRLabel21.Enabled := false;
        RRepProdVendidos.QRDBText6.Enabled := false;
        RRepProdVendidos.QRDBText7.Enabled := false;
        //RRepProdVendidos.QRDBText10.Enabled := false;
        RRepProdVendidos.QRDBText12.Enabled := false;
        RRepProdVendidos.QRDBText13.Enabled := false;
      end;
  2 : begin
        RRepProdVendidos.QRLabel9.Enabled := false;
        RRepProdVendidos.QRLabel14.Enabled := false;
        RRepProdVendidos.QRDBText9.Enabled := false;
      end;
  end;

  Screen.Cursor := crDefault;
  RRepProdVendidos.PrinterSetup;
  RRepProdVendidos.Preview;
  RRepProdVendidos.Destroy;
end;

procedure TfrmRepProdRotacion.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_sigla from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('mon').Value := dm.QParametrosMON_CODIGO.value;
    dm.Query1.open;
    edmoneda.Text := inttostr(dm.QParametrosMON_CODIGO.value);
    tmoneda.text := dm.Query1.fieldbyname('mon_sigla').asstring;
  end;
end;

procedure TfrmRepProdRotacion.btProveedorClick(Sender: TObject);
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
  end;
end;

procedure TfrmRepProdRotacion.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmRepProdRotacion.edProveedorKeyDown(Sender: TObject;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmRepProdRotacion.SpeedButton1Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select pro_nombre, pro_codigo');
  Search.Query.add('from provincias');
  Search.ResultField := 'pro_Codigo';
  Search.Title := 'Provincias';
  if Search.execute then
  begin
    edProv.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre from provincias');
    dm.Query1.sql.add('where pro_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProv.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0)
    else
      tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    edProv.setfocus;
  end;
end;

procedure TfrmRepProdRotacion.edProvChange(Sender: TObject);
begin
  if trim(edProv.text) = '' then tprovincia.text := '';
end;

procedure TfrmRepProdRotacion.edProvKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProv.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre from provincias');
      dm.Query1.sql.add('where pro_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProv.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0);
        edProv.setFocus;
      end
      else
        tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProdRotacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepProdRotacion.btFamiliaClick(Sender: TObject);
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    edFamilia.setfocus;
  end;
end;

procedure TfrmRepProdRotacion.btDeptoClick(Sender: TObject);
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
  Search.Title := 'Listado de Departamentos';
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
    dm.Query1.sql.add('and dep_tipo = '+QuotedStr('V'));
    dm.Query1.Parameters.parambyname('dep').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
  end;
end;

procedure TfrmRepProdRotacion.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepProdRotacion.edFamiliaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    end
    else
      tFamilia.text := '';
  end;
end;

procedure TfrmRepProdRotacion.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepProdRotacion.edDeptoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmRepProdRotacion.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMArca.text := '';
end;

procedure TfrmRepProdRotacion.edMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edMarca.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mar_nombre');
      dm.Query1.sql.add('from marcas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mar_codigo = :mar');
      dm.Query1.Parameters.parambyname('mar').Value := strtoint(edMarca.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tMArca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    end
    else
      tMArca.text := '';
  end;
end;

procedure TfrmRepProdRotacion.BitBtn1Click(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       edProd.text := inttostr(frmBuscaProducto.QProductosPRO_CODIGO.value)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       edProd.text := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       edProd.text := frmBuscaProducto.QProductosPRO_RORIGINAL.value;

    lNombres.Items.Add(frmBuscaProducto.QProductosPRO_NOMBRE.Value);
    lCodigos.Items.Add(frmBuscaProducto.QProductosPRO_CODIGO.AsString);
    edProd.Text := '';

  end;
  frmBuscaProducto.release;
end;

procedure TfrmRepProdRotacion.BitBtn2Click(Sender: TObject);
begin
  lCodigos.Items.Delete(lNombres.ItemIndex);
  lNombres.Items.Delete(lNombres.ItemIndex);
end;

procedure TfrmRepProdRotacion.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select pro_nombre, pro_codigo from productos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
      dm.Query1.SQL.Add('and pro_codigo = '+Trim(edProd.Text))
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
      dm.Query1.SQL.Add('and pro_roriginal = '+QuotedStr(Trim(edProd.Text)))
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
      dm.Query1.SQL.Add('and pro_rfabric = '+QuotedStr(Trim(edProd.Text)));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      lNombres.Items.Add(dm.Query1.FieldByName('pro_nombre').Value);
      lCodigos.Items.Add(dm.Query1.FieldByName('pro_codigo').AsString);
    end;
    edProd.Text := '';
    edProd.SetFocus;
  end;
end;

procedure TfrmRepProdRotacion.btMarcaClick(Sender: TObject);
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
    dm.Query1.sql.add('select mar_nombre');
    dm.Query1.sql.add('from marcas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mar_codigo = :mar');
    dm.Query1.Parameters.parambyname('mar').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tMArca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    edMarca.setfocus;
  end;
end;

procedure TfrmRepProdRotacion.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmRepProdRotacion.btVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    edVendedor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    edVendedor.setfocus;
  end;
end;

procedure TfrmRepProdRotacion.edVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edVendedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ven_nombre from vendedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ven_codigo = :ven');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0);
        edVendedor.SetFocus;
      end
      else
        tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProdRotacion.btclienteClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'
  else
     Search.ResultField := 'cli_referencia';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
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
  end;
end;

procedure TfrmRepProdRotacion.edClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCliente.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edCliente.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edCliente.SetFocus;
      end
      else
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProdRotacion.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tcliente.text := '';
end;

procedure TfrmRepProdRotacion.btpreventaClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select pre_nombre, pre_codigo');
  Search.Query.add('from preventas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'pre_Codigo';
  Search.Title := 'Preventas';
  if Search.execute then
  begin
    edPreventa.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pre_nombre from preventas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and pre_Codigo = :pre');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('pre').Value := strtoint(trim(edPreventa.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0)
    else
      tpreventa.text := dm.Query1.fieldbyname('pre_nombre').asstring;
    edPreventa.setfocus;
  end;
end;

procedure TfrmRepProdRotacion.edPreventaChange(Sender: TObject);
begin
  if trim(edPreventa.text) = '' then tPreventa.text := '';
end;

procedure TfrmRepProdRotacion.edPreventaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edPreventa.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pre_nombre from Preventas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and pre_codigo = :pre');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('pre').Value := strtoint(trim(edPreventa.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0);
        edVendedor.SetFocus;
      end
      else
        tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProdRotacion.edmonedaChange(Sender: TObject);
begin
  if trim(edmoneda.text) = '' then tmoneda.text := '';
end;

procedure TfrmRepProdRotacion.edmonedaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edmoneda.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mon_sigla from moneda');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mon_codigo = :mon');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('mon').Value := strtoint(trim(edmoneda.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0);
        edmoneda.SetFocus;
      end
      else
        tmoneda.text := dm.Query1.fieldbyname('mon_sigla').asstring;
    end;
  end;
end;

procedure TfrmRepProdRotacion.btmonedaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select mon_sigla, mon_codigo');
  Search.Query.add('from moneda');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mon_codigo';
  Search.Title := 'Moneda';
  if Search.execute then
  begin
    edmoneda.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mon_codigo, mon_sigla');
    dm.Query1.sql.add('from moneda');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mon_codigo = :mon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('mon').Value := StrToInt(edmoneda.Text);
    dm.Query1.open;
    tmoneda.text := dm.Query1.fieldbyname('mon_sigla').asstring;
  end;
end;

procedure TfrmRepProdRotacion.FormPaint(Sender: TObject);
begin
  with frmRepProdRotacion do
  begin
    Top := 2;
    Left := 2;
  end;
end;

procedure TfrmRepProdRotacion.btgerenteClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select ger_nombre, ger_codigo');
  Search.Query.add('from gerentes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ger_Codigo';
  Search.Title := 'Gerentes';
  if Search.execute then
  begin
    edGerente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ger_nombre from gerentes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ger_Codigo = :ger');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ger').Value := strtoint(trim(edGerente.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('GERENTE NO EXISTE',mterror,[mbok],0)
    else
      tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    edGerente.setfocus;
  end;
end;

procedure TfrmRepProdRotacion.edGerenteChange(Sender: TObject);
begin
  if trim(edGerente.text) = '' then tgerente.text := '';
end;

procedure TfrmRepProdRotacion.edGerenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edGerente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ger_nombre from Gerentes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ger_codigo = :ger');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ger').Value := strtoint(trim(edGerente.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0);
        edGerente.SetFocus;
      end
      else
        tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProdRotacion.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmRepProdRotacion.btgondoleroClick(Sender: TObject);
begin
  Search.Title := 'Pasillo';
  Search.ResultField := 'gon_codigo';
  Search.query.Clear;
  Search.query.add('select gon_nombre, gon_codigo');
  Search.query.add('from gondoleros');
  Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
  begin
    edGondolero.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select gon_nombre from gondoleros');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and gon_codigo = :gon');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('gon').Value := strtoint(trim(edGondolero.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PASILLO NO EXISTE',mterror,[mbok],0)
    else
      tgondolero.text := dm.Query1.fieldbyname('gon_nombre').asstring;
    edGondolero.setfocus;
  end;
end;

procedure TfrmRepProdRotacion.edGondoleroChange(Sender: TObject);
begin
  if trim(edGondolero.text) = '' then tgondolero.text := '';
end;

procedure TfrmRepProdRotacion.edGondoleroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edGondolero.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select gon_nombre from gondoleros');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and gon_codigo = :gon');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('gon').Value := strtoint(trim(edGondolero.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PASILLO NO EXISTE',mterror,[mbok],0);
        edGondolero.SetFocus;
      end
      else
        tgondolero.text := dm.Query1.fieldbyname('gon_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProdRotacion.btcolorClick(Sender: TObject);
begin
  Search.Title := 'Colores';
  Search.ResultField := 'col_codigo';
  Search.query.Clear;
  Search.query.add('select col_nombre, col_codigo');
  Search.query.add('from colores');
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  if search.execute then
  begin
    edColor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select col_nombre from colores');
    dm.Query1.sql.add('where col_codigo = :col');
    dm.Query1.Parameters.parambyname('col').Value := strtoint(trim(edColor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('COLOR NO EXISTE',mterror,[mbok],0)
    else
      tcolor.text := dm.Query1.fieldbyname('col_nombre').asstring;
    edColor.setfocus;
  end;
end;

procedure TfrmRepProdRotacion.edColorChange(Sender: TObject);
begin
  if trim(edColor.text) = '' then tcolor.text := '';
end;

procedure TfrmRepProdRotacion.edColorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edColor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select col_nombre from colores');
      dm.Query1.sql.add('where col_codigo = :col');
      dm.Query1.Parameters.parambyname('col').Value := strtoint(trim(edColor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('COLOR NO EXISTE',mterror,[mbok],0);
        edColor.SetFocus;
      end
      else
        tcolor.text := dm.Query1.fieldbyname('col_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProdRotacion.btTipoClick(Sender: TObject);
begin
  search.Query.clear;
  search.Query.add('select tfa_nombre, tfa_codigo');
  search.Query.add('from tiposfactura');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  search.ResultField := 'tfa_codigo';
  search.Title := 'Tipos de factura';
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;
    tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    edTipo.SetFocus;
  end;
end;

procedure TfrmRepProdRotacion.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmRepProdRotacion.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
      dm.Query1.sql.add('from tiposfactura');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tfa_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE FACTURA NO EXISTE');
        edTipo.setfocus;
      end
      else
        tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProdRotacion.ChkB_cksucursalClick(Sender: TObject);
begin
WITH DM.QParametros do BEGIN
  Close;
  Parameters.ParamByName('EMP_CODIGO').Value := dm.vp_cia;
  Open;
  end;

  IF ChkB_cksucursal.Checked then BEGIN
  IF DM.QParametrosPAR_SUC_NCF.Value > 0 THEN BEGIN
  DBLookupComboBox2.KeyValue := DM.QParametrosPAR_SUC_NCF.Value;
  end;
  END;
end;

end.
