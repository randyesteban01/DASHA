unit PVENTA54;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, ComCtrls, ADODB,
  QuerySearchDlgADO, DBCtrls,DateUtils;

type
  TfrmConsConduce = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    tCliente: TEdit;
    Label4: TLabel;
    edNombre: TEdit;
    cbStatus: TRadioGroup;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    QConduce: TADOQuery;
    Label5: TLabel;
    cbOrden: TComboBox;
    dsConduce: TDataSource;
    Splitter1: TSplitter;
    dsDetalle: TDataSource;
    btClose: TBitBtn;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    tUsuario: TEdit;
    edUsuario: TEdit;
    QConduceCON_FECHA: TDateTimeField;
    QConduceCON_NOMBRE: TIBStringField;
    QConduceCON_NUMERO: TIntegerField;
    QConduceCON_STATUS: TIBStringField;
    QConduceCON_TOTAL: TFloatField;
    QConduceEMP_CODIGO: TIntegerField;
    QConduceUSU_NOMBRE: TIBStringField;
    QConduceALM_NOMBRE: TIBStringField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QConduceSUC_CODIGO: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    btDepto: TSpeedButton;
    tDepto: TEdit;
    edDepto: TEdit;
    Label1: TLabel;
    btAlm: TSpeedButton;
    tAlm: TEdit;
    edAlma: TEdit;
    Label3: TLabel;
    QConducecon_itbis: TBCDField;
    Grid: TDBGrid;
    QDetalle: TADOQuery;
    QDetalleCON_NUMERO: TIntegerField;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleValor: TFloatField;
    QDetalleDET_LOTE: TIntegerField;
    QDetalleDET_VENCE: TIBStringField;
    QDetalleDET_FECHAVENCE: TDateTimeField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleDET_PRECIO1: TFloatField;
    QDetalleDET_PRECIO2: TFloatField;
    QDetalleDET_PRECIO3: TFloatField;
    QDetalleDET_PRECIO4: TFloatField;
    QDetalleDET_COSTOUND: TFloatField;
    QDetalleDET_COSTOEMP: TFloatField;
    QDetalleSUC_CODIGO: TIntegerField;
    QDetalleDET_DESCUENTO: TBCDField;
    QDetalleCalcDesc: TFloatField;
    QDetalleCalcItbis: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleDET_NOTA: TMemoField;
    QConducecli_codigo: TIntegerField;
    QConducefac_forma: TStringField;
    QConducetfa_codigo: TIntegerField;
    QConducefac_numero: TIntegerField;
    Label9: TLabel;
    edFactura: TEdit;
    QConduceMetraje: TBCDField;
    QConduceChofer: TStringField;
    QConducePlaca: TStringField;
    bttickets: TBitBtn;
    btdespachados: TBitBtn;
    Label10: TLabel;
    edProveedor: TEdit;
    SpeedButton1: TSpeedButton;
    tProv: TEdit;
    Label11: TLabel;
    edplaca: TEdit;
    Label12: TLabel;
    edchofer: TEdit;
    QConduceCON_USU_ANULA: TStringField;
    lbLocSuc: TLabel;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure QConduceAfterOpen(DataSet: TDataSet);
    procedure edUsuarioChange(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure cbGrupoClick(Sender: TObject);
    procedure ckItbisClick(Sender: TObject);
    procedure ckDescClick(Sender: TObject);
    procedure cbOrdenClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btAlmClick(Sender: TObject);
    procedure edAlmaChange(Sender: TObject);
    procedure edAlmaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btDeptoClick(Sender: TObject);
    procedure QDetalleCalcFields(DataSet: TDataSet);
    procedure btticketsClick(Sender: TObject);
    procedure btdespachadosClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsConduce: TfrmConsConduce;

implementation

uses RVENTA18, SIGMA01, SIGMA00, RVENTA118, RVENTA119;

{$R *.dfm}

procedure TfrmConsConduce.FormCreate(Sender: TObject);
begin
  if (dm.QParametrospar_fac_preimpresa.Value = 'False') or
  (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados') then
  begin
    bttickets.Visible := false;
    btdespachados.Visible := false;
  end;

  if (dm.QParametrospar_fac_preimpresa.Value = 'False') or (dm.QParametrospar_formato_preimpreso.Value <> 'QRAgregados') then
  begin
    DBGrid1.Columns[10].Destroy;
    DBGrid1.Columns[09].Destroy;
    DBGrid1.Columns[08].Destroy;
    Label11.Visible  := false;
    Label12.Visible  := false;
    edplaca.Visible  := false;
    edchofer.Visible := false;
  end;

  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';

  if dm.QParametrosPAR_FACESCALA.Value <> 'True' then
  begin
     Grid.Columns[4].Destroy;
     Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[3].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

  if dm.QParametrosPAR_INVMOSTRARVENCE.Value <> 'True' then
  begin
    Grid.Columns[Grid.Columns.Count-2].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 55;
  end;

  Fecha1.date :=  StartOfTheMonth(date);
  Fecha2.date := date;
  Memo1.lines := QConduce.sql;
  cbOrden.itemindex := 0;
end;

procedure TfrmConsConduce.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsConduce.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsConduce.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsConduce.FormActivate(Sender: TObject);
begin
//  if not QFacturas.active then QFacturas.open;
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

procedure TfrmConsConduce.btRefreshClick(Sender: TObject);
begin
  QConduce.close;
  QConduce.sql.clear;
  QConduce.sql := Memo1.Lines;
  if trim(edCliente.text) <> '' then
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       QConduce.sql.add('and c.cli_codigo = '+trim(edCliente.text))
    else
       QConduce.sql.add('and c.cli_referencia = '+#39+trim(edCliente.text)+#39);
  if trim(edNombre.text) <> '' then
    QConduce.sql.add('and c.con_nombre like '+#39+trim(edNombre.text)+#39);
    
  if trim(edUsuario.text) <> '' then
    QConduce.sql.add('and c.usu_codigo = '+trim(edUsuario.text));

  if trim(edProveedor.text) <> '' then
    QConduce.sql.add('and c.sup_codigo = '+trim(edProveedor.text));

  if trim(edAlma.text) <> '' then
    QConduce.sql.add('and c.alm_codigo = '+trim(edAlma.text));

  if trim(edDepto.text) <> '' then
    QConduce.sql.add('and c.dep_codigo = '+trim(edDepto.text));

  if trim(edFactura.text) <> '' then
    QConduce.sql.add('and c.fac_numero = '+trim(edFactura.text));

  if trim(edplaca.text) <> '' then
    QConduce.sql.add('and c.Placa like '+QuotedStr(trim(edplaca.text)));

  if trim(edchofer.text) <> '' then
    QConduce.sql.add('and c.Chofer like '+QuotedStr(trim(edchofer.text)));

  IF Trim(edtSucLoc.Text)<>'' THEN
  QConduce.SQL.Add('and c.cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));

  case cbStatus.ItemIndex of
    1 : QConduce.sql.add('and c.con_status    =  '+QuotedStr('ANU'));
    2 : QConduce.sql.add('and c.con_status    =  '+QuotedStr('EMI'));
    3 : QConduce.sql.add('and c.con_facturado =  '+QuotedStr('S')); //QConduce.sql.add('and c.con_status = '+QuotedStr('FAC'));
    4 : QConduce.sql.add('and c.con_facturado <> '+QuotedStr('S')); //QConduce.sql.add('and c.con_status <> '+QuotedStr('FAC'));
  end;
  if cbOrden.ItemIndex = 0 then
     QConduce.sql.add('order by c.con_numero')
  else if cbOrden.ItemIndex = 1 then
     QConduce.sql.add('order by c.con_nombre')
  else if cbOrden.ItemIndex = 2 then
     QConduce.sql.add('order by c.con_fecha')
  else if cbOrden.ItemIndex = 3 then
     QConduce.sql.add('order by c.fac_numero');

  QConduce.Parameters.parambyname('fecha1').DataType := ftDate;
  QConduce.Parameters.parambyname('fecha2').DataType := ftDate;
  QConduce.Parameters.parambyname('fecha1').Value := fecha1.date;
  QConduce.Parameters.parambyname('fecha2').Value := fecha2.date;
  QConduce.open;
  lbCantidad.caption := inttostr(QConduce.recordcount)+' Conduce';

//  DBGrid1.setfocus;
end;

procedure TfrmConsConduce.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edcliente.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edcliente.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edCliente.SetFocus;
      end
      else
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsConduce.SpeedButton2Click(Sender: TObject);
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
    btRefreshClick(self);
  end;
end;

procedure TfrmConsConduce.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsConduce.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edUsuario.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select usu_nombre from usuarios');
      dm.Query1.sql.add('where usu_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('USUARIO NO EXISTE',mterror,[mbok],0);
        edUsuario.setFocus;
      end
      else
        tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsConduce.SpeedButton3Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  Search.Query.clear;
  Search.Query.add('select usu_nombre, usu_codigo');
  Search.Query.add('from usuarios');
  Search.ResultField := 'usu_Codigo';
  Search.Title := 'Usuarios';
  if Search.execute then
  begin
    edUsuario.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select usu_nombre from usuarios');
    dm.Query1.sql.add('where usu_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
    else
      tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
    edUsuario.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsConduce.QConduceAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.active then QDetalle.open;
end;

procedure TfrmConsConduce.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsConduce.cbStatusClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsConduce.cbGrupoClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsConduce.ckItbisClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsConduce.ckDescClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsConduce.cbOrdenClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsConduce.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsConduce, RConsConduce);
  RConsConduce.QConduce.SQL := QConduce.SQL;
  RConsConduce.QConduce.Parameters.parambyname('fecha1').DataType := ftDate;
  RConsConduce.QConduce.Parameters.parambyname('fecha2').DataType := ftDate;
  RConsConduce.QConduce.Parameters.parambyname('fecha1').Value := fecha1.date;
  RConsConduce.QConduce.Parameters.parambyname('fecha2').Value := fecha2.date;
  RConsConduce.QConduce.Parameters.parambyname('emp_codigo').Value := dm.vp_cia;
  RConsConduce.QConduce.Parameters.parambyname('suc_codigo').Value := DBLookupComboBox2.KeyValue;
  RConsConduce.QConduce.open;
  RConsConduce.lbCliente.Caption := tCliente.Text;
  RConsConduce.lbUsuario.Caption := tUsuario.Text;
  RConsConduce.lbNombre.Caption := edNombre.Text;
  RConsConduce.lbStatus.Caption := cbStatus.Items[cbStatus.ItemIndex];
  RConsConduce.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsConduce.PrinterSetup;
  RConsConduce.Preview;
  RConsConduce.Destroy;
end;

procedure TfrmConsConduce.FormPaint(Sender: TObject);
begin
  with frmConsConduce do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsConduce.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsConduce.btAlmClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    edAlma.text := search.valuefield;
    edAlma.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlm.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlma.setfocus;
  end;
end;

procedure TfrmConsConduce.edAlmaChange(Sender: TObject);
begin
  if trim(edAlma.text) = '' then tAlm.text := '';
end;

procedure TfrmConsConduce.edAlmaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edAlma.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edAlma.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tAlm.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end
    else
      tAlm.text := '';
  end;
end;

procedure TfrmConsConduce.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmConsConduce.edDeptoKeyDown(Sender: TObject; var Key: Word;
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmConsConduce.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
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
    edDepto.setfocus;
  end;
end;

procedure TfrmConsConduce.QDetalleCalcFields(DataSet: TDataSet);
var
  Venta, NumItbis : Double;
  a : integer;
begin
  if not QConduceCLI_CODIGO.IsNull then
  begin
    if QDetalleDET_CONITBIS.value = 'S' then
    begin
      NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));

      if dm.QParametrospar_itbisincluido.Value = 'True' then
      begin
        Venta    := (QDetalleDET_PRECIO.value)/NumItbis;
        QDetalleCalcDesc.value    := (Venta *QDetalleDET_DESCUENTO.value)/100;

        QDetallePrecioItbis.value := Venta;
        QDetalleCalcDesc.value    := (Venta *QDetalleDET_DESCUENTO.value)/100;

        QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDET_ITBIS.Value)/100;
        QDetalleValor.value       := ((Venta-QDetalleCalcDesc.value)+QDetalleCalcItbis.value)*QDetalleDET_CANTIDAD.value;
      end
      else
      begin
        Venta    := QDetalleDET_PRECIO.value;
        QDetallePrecioItbis.value := QDetalleDET_PRECIO.value;
        QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
        if QDetalleDET_CONITBIS.value = 'S' then
          QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDET_ITBIS.Value)/100
        else
          QDetalleCalcItbis.value   := 0;

        QDetalleValor.value       := (((QDetalleDET_PRECIO.value-QDetalleCalcDesc.value))+
                                     QDetalleCalcItbis.value)*QDetalleDET_CANTIDAD.value;
      end;
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value;
      QDetalleCalcDesc.value    := (Venta * QDetalleDET_DESCUENTO.value)/100;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcItbis.value   := 0;
      QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
    end;
  end
  else
  begin
    //Unidad
    if QDetalleDET_CONITBIS.value = 'S' then
    begin
      NumItbis := strtofloat(format('%10.2f',[(QDetalleDET_ITBIS.asfloat/100)+1]));
      Venta    := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleCalcItbis.value   := ((Venta-QDetalleCalcDesc.value)*QDetalleDET_ITBIS.Value)/100;
      QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
    end
    else
    begin
      Venta := QDetalleDET_PRECIO.value;
      QDetallePrecioItbis.value := Venta;
      QDetalleValor.value       := (Venta-QDetalleCalcDesc.value)*QDetalleDET_CANTIDAD.value;
      QDetalleCalcItbis.value   := 0;
    end;
  end;
  
  if trim(QDetalleDET_VENCE.Value) = 'False' then
     QDetalleDET_FECHAVENCE.ReadOnly := True
  else
     QDetalleDET_FECHAVENCE.ReadOnly := False;
  if trim(QDetalleDET_MANEJAESCALA.Value) = 'False' then
     QDetalleDET_ESCALA.ReadOnly := True
  else
     QDetalleDET_ESCALA.ReadOnly := False;
end;

procedure TfrmConsConduce.btticketsClick(Sender: TObject);
begin
  Application.CreateForm(tRTicketsAgregados, RTicketsAgregados);
  RTicketsAgregados.lbFecha.Caption := 'Del '+datetostr(fecha1.Date)+' Al '+datetostr(fecha2.Date);
  RTicketsAgregados.QTickets.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RTicketsAgregados.QTickets.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RTicketsAgregados.QTickets.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RTicketsAgregados.QTickets.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RTicketsAgregados.QTickets.Parameters.ParamByName('fec1').DataType := ftDate;
  RTicketsAgregados.QTickets.Parameters.ParamByName('fec2').DataType := ftDate;
  RTicketsAgregados.QTickets.Open;
  RTicketsAgregados.PrinterSetup;
  RTicketsAgregados.Preview;
  RTicketsAgregados.Destroy;
end;

procedure TfrmConsConduce.btdespachadosClick(Sender: TObject);
begin
  Application.CreateForm(tRProductosDespachados, RProductosDespachados);
  RProductosDespachados.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  if trim(edCliente.text) <> '' then
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
    begin
      RProductosDespachados.QFecha.sql.add('and c.cli_codigo = '+trim(edCliente.text));
      RProductosDespachados.QProductos.sql.add('and c.cli_codigo = '+trim(edCliente.text));
    end
    else
    begin
      RProductosDespachados.QFecha.sql.add('and c.cli_referencia = '+#39+trim(edCliente.text)+#39);
      RProductosDespachados.QProductos.sql.add('and c.cli_referencia = '+#39+trim(edCliente.text)+#39);
    end;

  if trim(edNombre.text) <> '' then
  begin
    RProductosDespachados.QFecha.sql.add('and c.con_nombre like '+#39+trim(edNombre.text)+#39);
    RProductosDespachados.QProductos.sql.add('and c.con_nombre like '+#39+trim(edNombre.text)+#39);
  end;
    
  if trim(edUsuario.text) <> '' then
  begin
    RProductosDespachados.QFecha.sql.add('and c.usu_codigo = '+trim(edUsuario.text));
    RProductosDespachados.QProductos.sql.add('and c.usu_codigo = '+trim(edUsuario.text));
  end;

  if trim(edAlma.text) <> '' then
  begin
    RProductosDespachados.QFecha.sql.add('and c.alm_codigo = '+trim(edAlma.text));
    RProductosDespachados.QProductos.sql.add('and c.alm_codigo = '+trim(edAlma.text));
  end;

  if trim(edDepto.text) <> '' then
  begin
    RProductosDespachados.QFecha.sql.add('and c.dep_codigo = '+trim(edDepto.text));
    RProductosDespachados.QProductos.sql.add('and c.dep_codigo = '+trim(edDepto.text));
  end;

  if trim(edFactura.text) <> '' then
  begin
    RProductosDespachados.QFecha.sql.add('and c.fac_numero = '+trim(edFactura.text));
    RProductosDespachados.QProductos.sql.add('and c.fac_numero = '+trim(edFactura.text));
  end;

  if cbStatus.ItemIndex = 1 then
  begin
     RProductosDespachados.QFecha.sql.add('and c.con_status = '+#39+'ANU'+#39);
     RProductosDespachados.QProductos.sql.add('and c.con_status = '+#39+'ANU'+#39);
  end
  else if cbStatus.ItemIndex = 2 then
  begin
     RProductosDespachados.QFecha.sql.add('and c.con_status = '+#39+'EMI'+#39);
     RProductosDespachados.QProductos.sql.add('and c.con_status = '+#39+'EMI'+#39);
  end;

  RProductosDespachados.QFecha.SQL.Add('group by c.con_fecha, c.emp_codigo, c.suc_codigo order by 1');

  RProductosDespachados.QProductos.sql.add('group by c.con_fecha, c.con_numero, c.con_nombre,');
  RProductosDespachados.QProductos.sql.add('d.pro_nombre, c.Placa, c.Chofer, c.Metraje order by 2');

  RProductosDespachados.QFecha.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RProductosDespachados.QFecha.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RProductosDespachados.QFecha.Parameters.ParamByName('fec1').DataType := ftDate;
  RProductosDespachados.QFecha.Parameters.ParamByName('fec2').DataType := ftDate;
  RProductosDespachados.QFecha.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RProductosDespachados.QFecha.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RProductosDespachados.QFecha.Open;
  RProductosDespachados.QProductos.Open;

  RProductosDespachados.QResumen.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RProductosDespachados.QResumen.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RProductosDespachados.QResumen.Parameters.ParamByName('fec1').DataType := ftDate;
  RProductosDespachados.QResumen.Parameters.ParamByName('fec2').DataType := ftDate;
  RProductosDespachados.QResumen.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RProductosDespachados.QResumen.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RProductosDespachados.QResumen.Open;

  RProductosDespachados.PrinterSetup;
  RProductosDespachados.Preview;
  RProductosDespachados.Destroy;
end;

procedure TfrmConsConduce.edProveedorChange(Sender: TObject);
begin
  if Trim(edProveedor.Text) = '' then tProv.Text := '';
end;

procedure TfrmConsConduce.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edProveedor.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sup_nombre, sup_codigo from proveedores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sup_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edProveedor.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsConduce.SpeedButton1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sup_nombre, sup_codigo');
  Search.Query.Add('from proveedores');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Proveedores';
  Search.ResultField := 'sup_codigo';
  if Search.execute then
  begin
    edProveedor.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre, sup_codigo from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edProveedor.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsConduce.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
btRefreshClick(Sender);
end;

procedure TfrmConsConduce.edtSucLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmConsConduce.btLocalidadClick(Sender: TObject);
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

procedure TfrmConsConduce.FormShow(Sender: TObject);
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

end.
