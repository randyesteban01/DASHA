unit PVENTA109;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Db,
  QuerySearchDlgADO;

type
  TfrmRepProdVencidos = class(TForm)
    Label1: TLabel;
    btDesde: TSpeedButton;
    tDesde: TEdit;
    edDesde: TEdit;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    cbOrden: TComboBox;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    cbOpcion: TRadioGroup;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Label2: TLabel;
    procedure btDesdeClick(Sender: TObject);
    procedure edDesdeChange(Sender: TObject);
    procedure edDesdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepProdVencidos: TfrmRepProdVencidos;

implementation

uses RVENTA62, SIGMA01;

{$R *.dfm}

procedure TfrmRepProdVencidos.btDesdeClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'sup_Codigo';
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edDesde.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_nombre, sup_codigo from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = '+trim(edDesde.text));
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVEEDOR NO EXISTE',mterror,[mbok],0)
    else
      tDesde.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edDesde.setfocus;
  end;
end;

procedure TfrmRepProdVencidos.edDesdeChange(Sender: TObject);
begin
  if trim(edDesde.text) = '' then tDesde.text := '';
end;

procedure TfrmRepProdVencidos.edDesdeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDesde.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_nombre from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_codigo = '+Trim(edDesde.Text));
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVEEDOR NO EXISTE',mterror,[mbok],0);
        edDesde.SetFocus;
      end
      else
        tDesde.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepProdVencidos.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  cbOrden.ItemIndex := 4;
end;

procedure TfrmRepProdVencidos.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(tRRepProdVencidos, RRepProdVencidos);
  RRepProdVencidos.lbFecha.Caption := 'Al '+DateToStr(Date);
  RRepProdVencidos.QProductos.SQL.Clear;
  RRepProdVencidos.QProductos.SQL.Add('SELECT P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_RFABRIC,');
  RRepProdVencidos.QProductos.SQL.Add('P.PRO_NOMBRE, V.VEN_CANTPENDIENTE,');
  RRepProdVencidos.QProductos.SQL.Add('V.VEN_FECHA, f.sup_codigo, f.fac_numero, p.pro_ubicacion,');
  RRepProdVencidos.QProductos.SQL.Add('f.det_costo FROM PRODUCTOS P');
  RRepProdVencidos.QProductos.SQL.Add('inner join PROVENCE V on (P.EMP_CODIGO = V.EMP_CODIGO');
  RRepProdVencidos.QProductos.SQL.Add('AND P.PRO_CODIGO = V.PRO_CODIGO)');
  RRepProdVencidos.QProductos.SQL.Add('left outer join det_provfacturas f');
  RRepProdVencidos.QProductos.SQL.Add('on (v.emp_codigo = f.emp_codigo');
  RRepProdVencidos.QProductos.SQL.Add('and v.pro_codigo = f.pro_codigo');
  RRepProdVencidos.QProductos.SQL.Add('and convert(datetime,v.ven_fecha,105) = convert(datetime,f.det_fechavence,105))');
  RRepProdVencidos.QProductos.SQL.Add('WHERE P.EMP_CODIGO = '+INTTOSTR(dm.QParametrosPAR_INVEMPRESA.value));
  RRepProdVencidos.QProductos.SQL.Add('and V.VEN_CANTPENDIENTE > 0');
  RRepProdVencidos.lbProv.Caption := 'Todos';
  RRepProdVencidos.lbVencen.Caption := ' ';
  if cbOpcion.ItemIndex = 0 then
  begin
    RRepProdVencidos.QProductos.SQL.Add('AND V.VEN_FECHA <= :FECHA');
    RRepProdVencidos.QProductos.Parameters.ParamByName('FECHA').DataType := ftDate;
    RRepProdVencidos.QProductos.Parameters.ParamByName('FECHA').Value := Date;
    RRepProdVencidos.lbVencen.Caption := 'Estos productos estan vencidos';
  end
  else
  begin
    RRepProdVencidos.QProductos.SQL.Add('AND V.VEN_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
    RRepProdVencidos.QProductos.Parameters.ParamByName('FECHA1').DataType := ftDate;
    RRepProdVencidos.QProductos.Parameters.ParamByName('FECHA2').DataType := ftDate;
    RRepProdVencidos.QProductos.Parameters.ParamByName('FECHA1').Value := Fecha1.Date;
    RRepProdVencidos.QProductos.Parameters.ParamByName('FECHA2').Value := Fecha2.Date;
    RRepProdVencidos.lbVencen.Caption := 'Que vencen del '+DateToStr(Fecha1.date)+
                                         ' al '+DateToStr(Fecha2.date);
  end;
  if Trim(edDesde.Text) <> '' then
  begin
    RRepProdVencidos.QProductos.SQL.Add('and p.pro_codigo in (select pro_codigo');
    RRepProdVencidos.QProductos.SQL.Add('from prodproveedores where emp_codigo = p.emp_codigo');
    RRepProdVencidos.QProductos.SQL.Add('and pro_codigo = p.pro_codigo and sup_codigo = '+Trim(edDesde.text));
    RRepProdVencidos.QProductos.SQL.Add('and emp_codigo = '+INTTOSTR(DM.QParametrosPAR_INVEMPRESA.Value)+')');
    RRepProdVencidos.lbProv.Caption := tDesde.Text;
  end;
  case cbOrden.ItemIndex of
  0 : RRepProdVencidos.QProductos.SQL.Add('order by p.pro_codigo');
  1 : RRepProdVencidos.QProductos.SQL.Add('order by p.pro_roriginal');
  2 : RRepProdVencidos.QProductos.SQL.Add('order by p.pro_rfabric');
  3 : RRepProdVencidos.QProductos.SQL.Add('order by p.pro_nombre');
  4 : RRepProdVencidos.QProductos.SQL.Add('order by v.ven_fecha');
  end;
  //RRepProdVencidos.QProductos.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  RRepProdVencidos.QProductos.Open;
  RRepProdVencidos.PrinterSetup;
  RRepProdVencidos.Preview;
  RRepProdVencidos.Destroy;
end;

procedure TfrmRepProdVencidos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepProdVencidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepProdVencidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
