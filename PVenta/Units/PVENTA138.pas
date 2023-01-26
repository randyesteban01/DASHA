unit PVENTA138;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, IBCustomDataSet, Buttons,
  ExtCtrls, QuerySearchDlgADO, Menus;

type
  TfrmAjusteInventario = class(TForm)
    gProductos: TDBGrid;
    QProductos: TADOQuery;
    QProductospro_codigo: TIntegerField;
    QProductospro_roriginal: TStringField;
    QProductospro_nombre: TStringField;
    QProductospro_existencia: TBCDField;
    dsProductos: TDataSource;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    DBGrid1: TDBGrid;
    QExistAlmacen: TADOQuery;
    QExistAlmacenalm_codigo: TIntegerField;
    QExistAlmacenemp_codigo: TIntegerField;
    QExistAlmacenpro_codigo: TIntegerField;
    QExistAlmacenexi_cantidad: TBCDField;
    QExistAlmacenexi_fisico: TBCDField;
    QExistAlmacenexi_empaque: TBCDField;
    QExistAlmacenexi_fisicoemp: TBCDField;
    dsExistAlmacen: TDataSource;
    QAlmacen: TADOQuery;
    dsAlmacen: TDataSource;
    QAlmacenALM_CODIGO: TIntegerField;
    QAlmacenALM_NOMBRE: TStringField;
    QExistAlmacenAlmacen: TStringField;
    DBGrid2: TDBGrid;
    gVence: TDBGrid;
    QEscalas: TADOQuery;
    QEscalasalm_codigo: TIntegerField;
    QEscalasesc_escala: TStringField;
    QEscalasesc_existencia: TBCDField;
    dsEscalas: TDataSource;
    QEscalasAlmacen: TStringField;
    QVence: TADOQuery;
    QVenceven_fecha: TDateTimeField;
    QVenceven_lote: TIntegerField;
    QVenceven_cantpendiente: TBCDField;
    dsVence: TDataSource;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    bt1: TSpeedButton;
    bt2: TSpeedButton;
    QProductosemp_codigo: TIntegerField;
    btdel3: TSpeedButton;
    btdel2: TSpeedButton;
    QProductospro_existempaque: TBCDField;
    SpeedButton1: TSpeedButton;
    Query1: TADOQuery;
    QProductospro_costo: TBCDField;
    QProductospro_costoempaque: TBCDField;
    QProductospro_precio1: TBCDField;
    QProductospro_precio2: TBCDField;
    QProductosCostoUnd: TFloatField;
    QProductosCostoEmp: TFloatField;
    QProductospro_itbis: TStringField;
    QProductosCalcCosto: TFloatField;
    QProductosCalcCostoEmp: TFloatField;
    Panel1: TPanel;
    Label1: TLabel;
    cbfiltro: TComboBox;
    btrefresh: TBitBtn;
    QProductosger_codigo: TIntegerField;
    QProductosgon_codigo: TIntegerField;
    QProductosdep_codigo: TIntegerField;
    QProductosfam_codigo: TIntegerField;
    Label6: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Search: TQrySearchDlgADO;
    PopupMenu1: TPopupMenu;
    raerpantalladeproducto1: TMenuItem;
    btFamilia: TSpeedButton;
    Label4: TLabel;
    tFamilia: TEdit;
    edFamilia: TEdit;
    Label2: TLabel;
    edbusqueda: TEdit;
    cbexistencia: TComboBox;
    Label3: TLabel;
    ckgerente: TCheckBox;
    ckfamilia: TCheckBox;
    ckdepto: TCheckBox;
    lbCantidad: TLabel;
    QProductoscol_codigo: TIntegerField;
    QProductosmar_codigo: TIntegerField;
    QProductosPRO_STKMINIMO: TBCDField;
    QProductosPRO_STKMAXIMO: TBCDField;
    QProductossup_codigo: TIntegerField;
    cksup: TCheckBox;
    QProductospro_montoitbis: TBCDField;
    qRegExist: TADOQuery;
    QProductospro_rfabric: TStringField;
    QProductospro_precio3: TBCDField;
    QProductospro_precio4: TBCDField;
    QProductosGONDOLERO: TBCDField;
    qActulizaProd: TADOQuery;
    QProductosSUPLIDOR: TIntegerField;
    Label5: TLabel;
    edDepto: TEdit;
    btnDepto: TSpeedButton;
    tDepto: TEdit;
    raerpantallaReporte1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QProductosAfterOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure dsProductosDataChange(Sender: TObject; Field: TField);
    procedure FormPaint(Sender: TObject);
    procedure QVenceAfterPost(DataSet: TDataSet);
    procedure gVenceKeyPress(Sender: TObject; var Key: Char);
    procedure btdel3Click(Sender: TObject);
    procedure btdel2Click(Sender: TObject);
    procedure QProductosAfterPost(DataSet: TDataSet);
    procedure gProductosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QProductosBeforeDelete(DataSet: TDataSet);
    procedure QExistAlmacenBeforeDelete(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QProductosCalcFields(DataSet: TDataSet);
    procedure btrefreshClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure raerpantalladeproducto1Click(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QProductosAfterInsert(DataSet: TDataSet);
    procedure QProductospro_existenciaChange(Sender: TField);
    procedure QProductospro_existempaqueChange(Sender: TField);
    procedure QProductosBeforePost(DataSet: TDataSet);
    procedure QExistAlmacenBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QExistAlmacenBeforeOpen(DataSet: TDataSet);
    procedure QAlmacenBeforeOpen(DataSet: TDataSet);
    procedure QProductosBeforeOpen(DataSet: TDataSet);
    procedure btnDeptoClick(Sender: TObject);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure raerpantallaReporte1Click(Sender: TObject);
  private
      vl_consulta : String;
    { Private declarations }
  public
    { Public declarations }
    ActualizarUnidad, ActualizarEmpaque : Boolean;
  end;

var
  frmAjusteInventario: TfrmAjusteInventario;

implementation

uses SIGMA01, PVENTA33, SIGMA00, PVENTA15, PVENTA77, Math;

{$R *.dfm}

procedure TfrmAjusteInventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAjusteInventario.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAjusteInventario.FormActivate(Sender: TObject);
begin
  if not QProductos.Active then
  begin
    QProductos.Open;
  end;
end;

procedure TfrmAjusteInventario.QProductosAfterOpen(DataSet: TDataSet);
begin
  QExistAlmacen.Close;
  QEscalas.Close;
  QVence.Close;
  QExistAlmacen.Open;
  QEscalas.Open;
  QVence.Open;
end;

procedure TfrmAjusteInventario.BitBtn1Click(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
    QProductos.Locate('pro_codigo',frmBuscaProducto.QProductosPRO_CODIGO.value,[]);
  frmBuscaProducto.release;
  gProductos.SetFocus;
end;

procedure TfrmAjusteInventario.bt1Click(Sender: TObject);
var
   cant : string;
   p : TBookmark;
   unidad : double;
begin
  cant := InputBox('Existencia Almacen '+QExistAlmacenAlmacen.Value,'Cantidad:','');
  if trim(Cant) <> '' then
  begin
    //Registro Ajuste de Inventario
    with qRegExist do begin
    Close;
    Parameters[0].Value := DM.vp_cia;
    Parameters[1].Value := QExistAlmacenalm_codigo.Value;
    Parameters[2].Value := QExistAlmacenpro_codigo.Value;
    Parameters[3].Value := QExistAlmacenexi_cantidad.Value;
    Parameters[4].Value :=  strtofloat(trim(cant));
    Parameters[5].Value := QExistAlmacenexi_empaque.Value;
    Parameters[6].Value := QExistAlmacenexi_empaque.Value;
    Parameters[7].Value := DM.vp_usuario;
    ExecSQL;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update existencias set exi_cantidad = :can');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.SQL.Add('and alm_codigo = :alm');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductospro_codigo.Value;
    dm.Query1.Parameters.ParamByName('alm').Value := QExistAlmacenalm_codigo.Value;
    dm.Query1.Parameters.ParamByName('can').Value := strtofloat(trim(cant));
    dm.Query1.ExecSQL;

    p := QExistAlmacen.GetBookmark;
    QExistAlmacen.DisableControls;
    QExistAlmacen.Close;
    QExistAlmacen.Open;

    unidad := 0;
    while not QExistAlmacen.Eof do
    begin
      unidad := unidad + QExistAlmacenexi_cantidad.AsFloat;
      QExistAlmacen.Next;
    end;
    QExistAlmacen.GotoBookmark(p);
    QExistAlmacen.EnableControls;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update productos set pro_existencia = :can');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.Parameters.ParamByName('emp').Value := DM.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductospro_codigo.Value;
    dm.Query1.Parameters.ParamByName('can').Value := unidad;
    dm.Query1.ExecSQL;

    p := QProductos.GetBookmark;
    QProductos.DisableControls;
    btrefreshClick(Sender);
    QProductos.GotoBookmark(p);
    QProductos.EnableControls;

  end;
  gProductos.SetFocus;
end;

procedure TfrmAjusteInventario.bt2Click(Sender: TObject);
var
   cant : string;
   p : TBookmark;
begin
  cant := InputBox('Existencia Escala '+QEscalasesc_escala.Value,'Cantidad:','');
  if trim(Cant) <> '' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update escalas set esc_existencia = :can');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.SQL.Add('and esc_escala = :esc');
    dm.Query1.Parameters.ParamByName('emp').Value := QProductosemp_codigo.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductospro_codigo.Value;
    dm.Query1.Parameters.ParamByName('esc').Value := QEscalasesc_escala.Value;
    dm.Query1.Parameters.ParamByName('can').Value := strtofloat(trim(cant));
    dm.Query1.ExecSQL;
    p := QEscalas.GetBookmark;
    QEscalas.DisableControls;
    QEscalas.Close;
    QEscalas.Open;
    QEscalas.GotoBookmark(p);
    QEscalas.EnableControls;
  end;
  gProductos.SetFocus;
end;

procedure TfrmAjusteInventario.bt3Click(Sender: TObject);
var
   cant : string;
   p : TBookmark;
begin
  cant := InputBox('Existencia Fecha '+QVenceven_fecha.AsString,'Cantidad:','');
  if trim(Cant) <> '' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update provence set ven_cantpendiente = :can');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.SQL.Add('and ven_fecha = convert(datetime,:fec,105)');
    dm.Query1.SQL.Add('and ven_lote = :lot');
    dm.Query1.Parameters.ParamByName('emp').Value := QProductosemp_codigo.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductospro_codigo.Value;
    dm.Query1.Parameters.ParamByName('fec').Value := QVenceven_fecha.Value;
    dm.Query1.Parameters.ParamByName('can').Value := strtofloat(trim(cant));
    dm.Query1.Parameters.ParamByName('lot').Value := QVenceven_lote.Value;
    dm.Query1.ExecSQL;
    p := QVence.GetBookmark;
    QVence.DisableControls;
    QVence.Close;
    QVence.Open;
    QVence.GotoBookmark(p);
    QVence.EnableControls;
  end;
  gProductos.SetFocus;
end;

procedure TfrmAjusteInventario.dsProductosDataChange(Sender: TObject;
  Field: TField);
begin
  {bt2.Enabled    := QProductospro_escala.Value = 'True';
  btdel3.Enabled := QProductospro_vence.Value = 'True';}
end;

procedure TfrmAjusteInventario.FormPaint(Sender: TObject);
begin
  with frmAjusteInventario do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmAjusteInventario.QVenceAfterPost(DataSet: TDataSet);
begin
  QVence.UpdateBatch;
end;

procedure TfrmAjusteInventario.gVenceKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if gVence.SelectedIndex <> 2 then
      gVence.SelectedIndex := gVence.SelectedIndex + 1
    else
    begin
      QVence.Next;
      gVence.SelectedIndex := 0;
    end;
  end;
end;

procedure TfrmAjusteInventario.btdel3Click(Sender: TObject);
begin
  if MessageDlg('Está seguro?', mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QVence.Delete;
    QVence.UpdateBatch;
  end;
end;

procedure TfrmAjusteInventario.btdel2Click(Sender: TObject);
begin
  if MessageDlg('Está seguro?', mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QEscalas.Delete;
    QEscalas.UpdateBatch;
  end;
end;

procedure TfrmAjusteInventario.QProductosAfterPost(DataSet: TDataSet);
var
  alm : integer;
  medida, yaund, yaemp : string;
begin
  QProductos.UpdateBatch;
end;

procedure TfrmAjusteInventario.gProductosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if gProductos.SelectedIndex <> 16 then
    begin
      if QProductos.State = dsedit then
      begin
        QProductos.edit;
        QProductos.Post;
      end;
      gProductos.SelectedIndex := gProductos.SelectedIndex + 1
    end
    else
    begin
      gProductos.SelectedIndex := 3;
      QProductos.Next;
    end;
  end;
end;

procedure TfrmAjusteInventario.QProductosBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

procedure TfrmAjusteInventario.QExistAlmacenBeforeDelete(
  DataSet: TDataSet);
begin
  abort;
end;

procedure TfrmAjusteInventario.SpeedButton1Click(Sender: TObject);
var
   cant : string;
   p : TBookmark;
   empaque : double;
begin
  cant := InputBox('Existencia Empaque '+QExistAlmacenAlmacen.Value,'Cantidad:','');
  if trim(Cant) <> '' then
  begin
     //Registro Ajuste de Inventario
    with qRegExist do begin
    Close;
    Parameters[0].Value := DM.vp_cia;
    Parameters[1].Value := QExistAlmacenalm_codigo.Value;
    Parameters[2].Value := QExistAlmacenpro_codigo.Value;
    Parameters[3].Value := QExistAlmacenexi_cantidad.Value;
    Parameters[4].Value := QExistAlmacenexi_cantidad.Value;
    Parameters[5].Value := QExistAlmacenexi_empaque.Value;
    Parameters[6].Value := StrToInt(cant);
    Parameters[7].Value := DM.vp_usuario;
    ExecSQL;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update existencias set exi_empaque = :can');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.SQL.Add('and alm_codigo = :alm');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductospro_codigo.Value;
    dm.Query1.Parameters.ParamByName('alm').Value := QExistAlmacenalm_codigo.Value;
    dm.Query1.Parameters.ParamByName('can').Value := strtofloat(trim(cant));
    dm.Query1.ExecSQL;

    p := QExistAlmacen.GetBookmark;
    QExistAlmacen.DisableControls;
    QExistAlmacen.Close;
    QExistAlmacen.Open;

    empaque := 0;
    while not QExistAlmacen.Eof do
    begin
      empaque := empaque + QExistAlmacenexi_empaque.AsFloat;
      QExistAlmacen.Next;
    end;
    QExistAlmacen.GotoBookmark(p);
    QExistAlmacen.EnableControls;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update productos set pro_existempaque = :can');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.Parameters.ParamByName('emp').Value := DM.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := QProductospro_codigo.Value;
    dm.Query1.Parameters.ParamByName('can').Value := empaque;
    dm.Query1.ExecSQL;

    p := QProductos.GetBookmark;
    QProductos.DisableControls;
    btrefreshClick(Sender);
    QProductos.GotoBookmark(p);
    QProductos.EnableControls;

  end;
  gProductos.SetFocus;
end;

procedure TfrmAjusteInventario.QProductosCalcFields(DataSet: TDataSet);
begin
  if QProductosPRO_ITBIS.Value = 'S' then
  begin
    QProductosCalcCosto.Value    := (QProductosPRO_COSTO.Value * QProductospro_montoitbis.Value)/100;
    QProductosCalcCostoemp.Value := (QProductosPRO_COSTOEMPAQUE.Value * QProductospro_montoitbis.Value)/100;
  end
  else
  begin
    QProductosCalcCosto.Value    := 0;
    QProductosCalcCostoemp.Value := 0;
  end;
  QProductosCostoUnd.value := QProductosCalcCosto.Value + QProductosPRO_COSTO.Value;
  QProductosCostoEmp.value := QProductosCalcCostoEmp.Value + QProductosPRO_COSTOEMPAQUE.Value;
end;

procedure TfrmAjusteInventario.btrefreshClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QProductos.DisableControls;
  QProductos.Close;
  QProductos.SQL.Clear;
  QProductos.SQL.Add(vl_consulta);
  case cbfiltro.ItemIndex of
  1 : QProductos.SQL.Add('and pro_precio1 > 0');
  2 : QProductos.SQL.Add('and pro_precio1 = 0');
  3 : QProductos.SQL.Add('and pro_precio2 > 0');
  4 : QProductos.SQL.Add('and pro_precio2 = 0');
  5 : QProductos.SQL.Add('and pro_precio3 > 0');
  6 : QProductos.SQL.Add('and pro_precio3 = 0');
  7 : QProductos.SQL.Add('and pro_precio4 > 0');
  8 : QProductos.SQL.Add('and pro_precio4 = 0');
  end;
  if Trim(edProveedor.Text) <> '' then
     QProductos.SQL.Add('and P.pro_codigo in (select pro_codigo from prodproveedores where sup_codigo = '+Trim(edProveedor.Text)+')');

  if Trim(edFamilia.Text) <> '' then
     QProductos.SQL.Add('and P.fam_codigo = '+Trim(edFamilia.Text));

  if Trim(edDepto.Text) <> '' then
     QProductos.SQL.Add('and P.dep_codigo = '+Trim(edDepto.Text));

  if Trim(edbusqueda.Text) <> '' then
     QProductos.SQL.Add('and P.pro_nombre like '+QuotedStr(Trim(edbusqueda.Text)));

  if ckgerente.Checked then QProductos.SQL.Add('and isnull(P.ger_codigo,0) = 0');
  if ckfamilia.Checked then QProductos.SQL.Add('and isnull(P.fam_codigo,0) = 0');
  if ckdepto.Checked   then QProductos.SQL.Add('and isnull(P.dep_codigo,0) = 0');
  if cksup.Checked     then
  QProductos.SQL.Add('and P.pro_codigo not in (select pro_codigo from prodproveedores)');

  case cbexistencia.ItemIndex of
  1: QProductos.SQL.Add('and (pro_existencia > 0 or pro_existempaque > 0)');
  2: QProductos.SQL.Add('and (pro_existencia < 0 or pro_existempaque < 0)');
  3: QProductos.SQL.Add('and (pro_existencia = 0 and pro_existempaque = 0)');
  4: QProductos.SQL.Add('and (pro_existencia <> 0 or pro_existempaque <> 0)');
  end;

  
  QProductos.Open;
  QProductos.EnableControls;

  Screen.Cursor := crDefault;

  gProductos.SetFocus;

end;

procedure TfrmAjusteInventario.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmAjusteInventario.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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
    btrefreshClick(Self);
  end;
end;

procedure TfrmAjusteInventario.edProveedorKeyDown(Sender: TObject;
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
      if dm.Query1.RecordCount > 0 then
        tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;

      btrefreshClick(Self);
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmAjusteInventario.raerpantalladeproducto1Click(
  Sender: TObject);
var
  vIns, vMod, vDel : boolean;
begin
   //actuliza producto
   with qActulizaProd do begin
   Close;
   Parameters.ParamByName('PROD').Value := QProductospro_codigo.Value;
   Parameters.ParamByName('EMP').Value  := DM.vp_cia;
   ExecSQL;
   end;

  dm.Query1.Close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select inserta, modifica, elimina ');
  dm.Query1.sql.add('from privilegios where usu_codigo = :usu ');
  dm.Query1.sql.add('and upper(pri_nombre) = :opc');
  dm.Query1.Parameters.parambyname('usu').Value := dm.Usuario;
  dm.Query1.Parameters.parambyname('opc').Value  := uppercase('inv_productos');
  dm.Query1.open;
  if dm.Query1.RecordCount > 0 then
  begin
    vIns := dm.Query1.fieldbyname('Inserta').asboolean;
    vMod := dm.Query1.fieldbyname('Modifica').asboolean;
    vDel := dm.Query1.fieldbyname('Elimina').asboolean;
    frmMain.activaforma(tfrmProductos, tform(frmProductos));
    frmProductos.btEdit.visible   := vMod;
    frmProductos.btInsert.visible := vIns;
    frmProductos.btDelete.visible := vDel;
    frmProductos.QProductos.Close;
    frmProductos.QProductos.Parameters.ParamByName('prod').Value := QProductospro_codigo.Value;
    frmProductos.QProductos.Parameters.ParamByName('par_invempresa').Value := DM.QParametrosPAR_INVEMPRESA.value;
    frmProductos.QProductos.Open;

    frmProductos.edtProv.Clear;
    frmProductos.tProv.Clear;
    frmProductos.QProvee.Close;
    frmProductos.QProvee.Parameters.ParamByName('emp_codigo').Value := dm.vp_cia;
    frmProductos.QProvee.Parameters.ParamByName('pro_codigo').Value := QProductospro_codigo.Value;
    frmProductos.QProvee.Open;
    if frmProductos.QProvee.RecordCount > 0 then begin
    frmProductos.vl_sup       := frmProductos.QProveeSUP_CODIGO.Value;
    frmProductos.edtProv.Text := frmProductos.QProveeSUP_CODIGO.Text;
    frmProductos.tProv.Text   := frmProductos.QProveeSUP_NOMBRE.Text;
    end;
  end;
end;

procedure TfrmAjusteInventario.btFamiliaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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
    btrefreshClick(Self);
    edFamilia.setfocus;
  end;
end;

procedure TfrmAjusteInventario.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmAjusteInventario.edFamiliaKeyDown(Sender: TObject;
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
      btrefreshClick(Self);
    end
    else
      tFamilia.text := '';
  end;
end;

procedure TfrmAjusteInventario.QProductosAfterInsert(DataSet: TDataSet);
begin
  QProductos.Cancel;
end;

procedure TfrmAjusteInventario.QProductospro_existenciaChange(
  Sender: TField);
var
  alm : integer;
  medida, yaund, yaemp : string;
begin
  {if not QProductospro_existempaque.IsNull then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select alm_codigo, alm_medida from almacen');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    Query1.Open;
    if Query1.RecordCount = 1 then
    begin
      alm := Query1.FieldByName('alm_codigo').AsInteger;
      medida := Query1.FieldByName('alm_medida').AsString;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;

      if medida = 'Und' then
        dm.Query1.SQL.Add('update existencias set exi_cantidad = :cant')
      else if medida = 'Emp' then
        dm.Query1.SQL.Add('update existencias set exi_empaque = :cant');

      dm.Query1.SQL.Add('where emp_codigo = :emp and alm_codigo = :alm');
      dm.Query1.SQL.Add('and pro_codigo = :pro');
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('alm').Value  := alm;
      dm.Query1.Parameters.ParamByName('pro').Value  := QProductospro_codigo.Value;
      dm.Query1.Parameters.ParamByName('cant').Value := QProductospro_existencia.AsFloat;
      dm.Query1.ExecSQL;
    end
    else
    begin
      yaund := 'N';
      yaemp := 'N';
      while not Query1.Eof do
      begin
        alm := Query1.FieldByName('alm_codigo').AsInteger;
        medida := Query1.FieldByName('alm_medida').AsString;
        if alm <= 2 then
        begin
          if (medida = 'Und') and (yaund='N') then
          begin
            yaund := 'S';

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('update existencias set exi_cantidad = :cant');
            dm.Query1.SQL.Add('where emp_codigo = :emp and alm_codigo = :alm');
            dm.Query1.SQL.Add('and pro_codigo = :pro');
            dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
            dm.Query1.Parameters.ParamByName('alm').Value  := alm;
            dm.Query1.Parameters.ParamByName('pro').Value  := QProductospro_codigo.Value;
            dm.Query1.Parameters.ParamByName('cant').Value := QProductospro_existencia.AsFloat;
            dm.Query1.ExecSQL;
          end
          else if (medida = 'Emp') and (yaemp='N') then
          begin
            yaemp := 'S';

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('update existencias set exi_empaque = :cant');
            dm.Query1.SQL.Add('where emp_codigo = :emp and alm_codigo = :alm');
            dm.Query1.SQL.Add('and pro_codigo = :pro');
            dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
            dm.Query1.Parameters.ParamByName('alm').Value  := alm;
            dm.Query1.Parameters.ParamByName('pro').Value  := QProductospro_codigo.Value;
            dm.Query1.Parameters.ParamByName('cant').Value := QProductospro_existempaque.AsFloat;
            dm.Query1.ExecSQL;
          end;

        end;

        Query1.Next;
      end;
    end;
    QExistAlmacen.Close;
    QExistAlmacen.Open;
  end;}
end;

procedure TfrmAjusteInventario.QProductospro_existempaqueChange(
  Sender: TField);
var
  alm : integer;
  medida, yaund, yaemp : string;
begin
  {if not QProductospro_existempaque.IsNull then
  begin                                             
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select alm_codigo, alm_medida from almacen');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    Query1.Open;
    if Query1.RecordCount = 1 then
    begin
      alm := Query1.FieldByName('alm_codigo').AsInteger;
      medida := Query1.FieldByName('alm_medida').AsString;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;

      if medida = 'Und' then
        dm.Query1.SQL.Add('update existencias set exi_cantidad = :cant')
      else if medida = 'Emp' then
        dm.Query1.SQL.Add('update existencias set exi_empaque = :cant');

      dm.Query1.SQL.Add('where emp_codigo = :emp and alm_codigo = :alm');
      dm.Query1.SQL.Add('and pro_codigo = :pro');
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('alm').Value  := alm;
      dm.Query1.Parameters.ParamByName('pro').Value  := QProductospro_codigo.Value;
      dm.Query1.Parameters.ParamByName('cant').Value := QProductospro_existencia.AsFloat;
      dm.Query1.ExecSQL;
    end
    else
    begin
      yaund := 'N';
      yaemp := 'N';
      while not Query1.Eof do
      begin
        alm := Query1.FieldByName('alm_codigo').AsInteger;
        medida := Query1.FieldByName('alm_medida').AsString;
        if alm <= 2 then
        begin
          if (medida = 'Und') and (yaund='N') then
          begin
            yaund := 'S';

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('update existencias set exi_cantidad = :cant');
            dm.Query1.SQL.Add('where emp_codigo = :emp and alm_codigo = :alm');
            dm.Query1.SQL.Add('and pro_codigo = :pro');
            dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
            dm.Query1.Parameters.ParamByName('alm').Value  := alm;
            dm.Query1.Parameters.ParamByName('pro').Value  := QProductospro_codigo.Value;
            dm.Query1.Parameters.ParamByName('cant').Value := QProductospro_existencia.AsFloat;
            dm.Query1.ExecSQL;
          end
          else if (medida = 'Emp') and (yaemp='N') then
          begin
            yaemp := 'S';

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('update existencias set exi_empaque = :cant');
            dm.Query1.SQL.Add('where emp_codigo = :emp and alm_codigo = :alm');
            dm.Query1.SQL.Add('and pro_codigo = :pro');
            dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
            dm.Query1.Parameters.ParamByName('alm').Value  := alm;
            dm.Query1.Parameters.ParamByName('pro').Value  := QProductospro_codigo.Value;
            dm.Query1.Parameters.ParamByName('cant').Value := QProductospro_existempaque.AsFloat;
            dm.Query1.ExecSQL;
          end;

        end;

        Query1.Next;
      end;
    end;
    QExistAlmacen.Close;
    QExistAlmacen.Open;
  end;}
end;

procedure TfrmAjusteInventario.QProductosBeforePost(DataSet: TDataSet);
begin
  if QProductospro_montoitbis.Value > 0 then
    QProductospro_itbis.Value := 'S'
  else
    QProductospro_itbis.Value := 'N';
    
  QProductospro_itbis.Value := UpperCase(QProductospro_itbis.Value);
  QProductospro_roriginal.Value := UpperCase(QProductospro_roriginal.Value);
end;

procedure TfrmAjusteInventario.QExistAlmacenBeforePost(DataSet: TDataSet);
begin
IF QExistAlmacenalm_codigo.Text = '' then
QExistAlmacen.Cancel;
end;

procedure TfrmAjusteInventario.FormCreate(Sender: TObject);
begin
 //DM.qRevisarAlmDupliExist.ExecSQL;
vl_consulta := QProductos.SQL.Text;
end;

procedure TfrmAjusteInventario.QExistAlmacenBeforeOpen(DataSet: TDataSet);
begin
QExistAlmacen.Parameters.ParamByName('emp').Value := DM.vp_cia;
end;

procedure TfrmAjusteInventario.QAlmacenBeforeOpen(DataSet: TDataSet);
begin
QAlmacen.Parameters.ParamByName('emp').Value := DM.vp_cia;
end;

procedure TfrmAjusteInventario.QProductosBeforeOpen(DataSet: TDataSet);
begin

  QProductos.SQL.Add('group by p.emp_codigo, p.pro_codigo, p.pro_roriginal, p.pro_rfabric,');
  QProductos.SQL.Add('p.pro_nombre, p.pro_precio1, p.pro_precio2, p.pro_precio3, p.pro_precio4,');
  QProductos.SQL.Add('p.mar_codigo, m.mar_nombre, f.fam_nombre, c.col_nombre, d.dep_nombre, p.pro_beneficio,');
  QProductos.SQL.Add('p.pro_costo, p.pro_costoempaque, p.pro_escala, p.pro_vence, p.pro_ubicacion, p.pro_itbis,');
  QProductos.SQL.Add('p.ger_codigo, p.gon_codigo, p.dep_codigo, p.fam_codigo, p.col_codigo, p.pro_stkminimo, ');
  QProductos.SQL.Add('p.pro_stkmaximo, p.sup_codigo, p.pro_montoitbis');
  QProductos.SQL.Add('order by P.pro_nombre');
  QProductos.Parameters.ParamByName('emp_codigo').Value := DM.vp_cia;
  QProductos.Parameters.ParamByName('par_invempresa').Value := DM.QParametrosPAR_INVEMPRESA.Value;

end;

procedure TfrmAjusteInventario.btnDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
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
    dm.Query1.Parameters.parambyname('dep').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    btrefreshClick(Self);
    edDepto.setfocus;
  end;
end;

procedure TfrmAjusteInventario.edDeptoChange(Sender: TObject);
begin
    if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmAjusteInventario.edDeptoKeyDown(Sender: TObject;
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
      btrefreshClick(Self);
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmAjusteInventario.raerpantallaReporte1Click(Sender: TObject);
begin
frmMain.ActivaForma(tfrmExistProducto, Tform(frmExistProducto));
frmExistProducto.edProd.Text := QProductospro_roriginal.Text;
frmExistProducto.tProd.Text := QProductospro_nombre.Text;
if frmExistProducto.edProd.Text <> '' then begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre, pro_codigo from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         dm.Query1.sql.add('and pro_codigo = '+frmExistProducto.edProd.text)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         dm.Query1.sql.add('and pro_rfabric = '+#39+frmExistProducto.edProd.text+#39)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         dm.Query1.sql.add('and pro_roriginal = '+#39+frmExistProducto.edProd.text+#39);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('ESTE PRODUCTO NO EXISTE',mterror,[mbok],0);
        frmExistProducto.edProd.setfocus;
      end
      else
      begin
        frmExistProducto.tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
        frmExistProducto.prod := dm.Query1.FieldByName('pro_codigo').asinteger;
      end;
    end;
end;

end.
