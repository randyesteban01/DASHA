unit PVENTA212;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DateUtils, Db,
  QuerySearchDlgADO, DBCtrls, ADODB;

type
  TfrmRepVentaProducto = class(TForm)
    Label1: TLabel;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbGrupo: TRadioGroup;
    btFamilia: TSpeedButton;
    Label4: TLabel;
    tProd: TEdit;
    edProd: TEdit;
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure edProdChange(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ejecuto : boolean;
    prod : integer;
  end;

var
  frmRepVentaProducto: TfrmRepVentaProducto;

implementation

uses RVENTA58, SIGMA01, SIGMA00, PVENTA33, RVENTA114;

{$R *.dfm}

procedure TfrmRepVentaProducto.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  ejecuto := false;
end;

procedure TfrmRepVentaProducto.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepVentaProducto.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  if ejecuto = False then
    if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
    (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
       cbGrupo.ItemIndex := 0
    else
       cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmRepVentaProducto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (ord(key) = 66) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 1;
  if (ssCtrl in Shift) and (ord(key) = 65) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 0;
  if (ssCtrl in Shift) and (ord(key) = 84) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 2;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmRepVentaProducto.btPrintClick(Sender: TObject);
begin
  ejecuto := true;
  Application.CreateForm(TRepVentaProducto, RepVentaProducto);
  RepVentaProducto.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepVentaProducto.QProducto.Close;
  RepVentaProducto.QProducto.SQL.Clear;
  RepVentaProducto.QProducto.SQL.Add('select distinct');
  RepVentaProducto.QProducto.SQL.Add('p.pro_codigo, ltrim(p.pro_nombre) as pro_nombre');
  RepVentaProducto.QProducto.SQL.Add('from pr_rep_venta_producto (:emp, :suc, :fec1, :fec2, :pro) p');
  RepVentaProducto.QProducto.SQL.Add('order by 2');

  RepVentaProducto.QDetalle.Close;
  RepVentaProducto.QDetalle.SQL.Clear;
  RepVentaProducto.QDetalle.SQL.Add('select pro_codigo, pro_roriginal, pro_nombre, cantidad, precio, descuento, itbis, conitbis, cliente, fecha,');
  RepVentaProducto.QDetalle.SQL.Add('factura');
  RepVentaProducto.QDetalle.SQL.Add('from pr_rep_venta_producto (:emp, :suc, :fec1, :fec2, :pro_codigo)');
  RepVentaProducto.QDetalle.SQL.Add('order by factura');

  RepVentaProducto.QProducto.Parameters.ParamByName('fec1').DataType := ftDate;
  RepVentaProducto.QProducto.Parameters.ParamByName('fec2').DataType := ftDate;
  RepVentaProducto.QProducto.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepVentaProducto.QProducto.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepVentaProducto.QProducto.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  RepVentaProducto.QProducto.Parameters.ParamByName('emp').Value := dm.vp_cia;
  if Trim(edProd.Text) = '' then
    RepVentaProducto.QProducto.Parameters.ParamByName('pro').Value := 0
  else
    RepVentaProducto.QProducto.Parameters.ParamByName('pro').Value := prod;

  RepVentaProducto.QDetalle.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  RepVentaProducto.QDetalle.Parameters.ParamByName('fec1').DataType := ftDate;
  RepVentaProducto.QDetalle.Parameters.ParamByName('fec2').DataType := ftDate;
  RepVentaProducto.QDetalle.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepVentaProducto.QDetalle.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepVentaProducto.QDetalle.Parameters.ParamByName('pro_codigo').DataType := ftInteger;
  RepVentaProducto.QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;

  RepVentaProducto.QProducto.Open;
  RepVentaProducto.QDetalle.Open;
  RepVentaProducto.QRLSUCURSAL.Caption := UpperCase(DBLookupComboBox2.Text);
  RepVentaProducto.PrinterSetup;
  RepVentaProducto.Preview;
  RepVentaProducto.Destroy;
end;

procedure TfrmRepVentaProducto.btFamiliaClick(Sender: TObject);
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
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre, pro_codigo, pro_rfabric, pro_display,');
    dm.Query1.sql.add('pro_roriginal, pro_precio1, pro_vence, pro_precio2,');
    dm.Query1.sql.add('pro_existencia, PRO_EXISTEMPAQUE, pro_detallado, sup_codigo');
    dm.Query1.sql.add('from productos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       dm.Query1.sql.add('and pro_codigo = '+edProd.text)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;

    if dm.Query1.recordcount > 0 then
       prod := dm.Query1.FieldByName('pro_codigo').asinteger;

    edProd.SetFocus;
  end;
  frmBuscaProducto.release;
end;

procedure TfrmRepVentaProducto.edProdChange(Sender: TObject);
begin
  if trim(edProd.text) = '' then tProd.text := '';
end;

procedure TfrmRepVentaProducto.edProdKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProd.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre, pro_codigo, pro_rfabric,');
      dm.Query1.sql.add('pro_roriginal, pro_precio1, pro_vence, pro_precio2, pro_display, ');
      dm.Query1.sql.add('pro_existencia, PRO_EXISTEMPAQUE, pro_detallado, sup_codigo');
      dm.Query1.sql.add('from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         dm.Query1.sql.add('and pro_codigo = '+edProd.text)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('ESTE PRODUCTO NO EXISTE',mterror,[mbyes,mbno],0);
        edProd.setfocus;
      end
      else
      begin
        prod := dm.Query1.FieldByName('pro_codigo').asinteger;
        tProd.Text := dm.Query1.FieldByName('pro_nombre').AsString;
      end;
    end;
  end;
end;

procedure TfrmRepVentaProducto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepVentaProducto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
