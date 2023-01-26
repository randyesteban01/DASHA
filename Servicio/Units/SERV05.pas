unit SERV05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, ComCtrls, Buttons, DBCtrls,
  QuerySearchDlgADO,dateUtils, Grids, DBGrids, Menus;

type
  TfrmConsServicios = class(TForm)
    Memo1: TMemo;
    pTop: TPanel;
    QServicios: TADOQuery;
    dsServicios: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    edTecnico: TEdit;
    SpeedButton3: TSpeedButton;
    tTecnico: TEdit;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    ckrango: TCheckBox;
    Label9: TLabel;
    edServ1: TEdit;
    edServ2: TEdit;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    edNombre: TEdit;
    Label2: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    tCliente: TEdit;
    btRefresh: TBitBtn;
    fechaEntrega1: TDateTimePicker;
    fechaEntrega2: TDateTimePicker;
    ckentrega: TCheckBox;
    Label1: TLabel;
    dbgServicio: TDBGrid;
    dbgDetalle: TDBGrid;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    Panel1: TPanel;
    dbgTaller: TDBGrid;
    QTaller: TADOQuery;
    dsTaller: TDataSource;
    QServiciosemp_codigo: TIntegerField;
    QServiciossuc_codigo: TIntegerField;
    QServiciosord_numero: TIntegerField;
    QServiciosord_nombre: TStringField;
    QServiciosord_direccion: TStringField;
    QServiciosord_localidad: TStringField;
    QServiciosord_telefono: TStringField;
    QServiciosord_fecha_entrega: TDateTimeField;
    QServiciosord_fecha_expira: TDateTimeField;
    QServiciosord_nota: TMemoField;
    QServiciosEstatus: TStringField;
    QServiciosord_fecha: TDateTimeField;
    QDetallesuc_codigo: TIntegerField;
    QDetalleord_numero: TIntegerField;
    QDetalledet_numero_serie: TStringField;
    QDetalledet_descripcion: TStringField;
    QDetalledet_problema: TMemoField;
    QDetalledet_fecha_entrega: TDateTimeField;
    QDetalledet_monto: TBCDField;
    QDetalledet_comentario: TMemoField;
    QDetalledet_tiene_garantia: TStringField;
    QTallerdet_monto: TBCDField;
    QTallerdet_comentario: TMemoField;
    QTallerdet_fecha_entrega: TDateTimeField;
    QTallerEstatus: TStringField;
    QTallertec_nombre: TStringField;
    QTallertec_codigo: TIntegerField;
    QDetalletip_nombre: TStringField;
    QDetalledet_fecha_entrada: TDateTimeField;
    QDetalletip_dias_entrega: TIntegerField;
    PopupMenu1: TPopupMenu;
    VisualizarDetProblema1: TMenuItem;
    VisualizarDetComentario1: TMenuItem;
    VisualizarTallerCom1: TMenuItem;
    VisualizarOrdNota1: TMenuItem;
    Memo2: TMemo;
    btLimpiarCons: TBitBtn;
    BitBtn3: TBitBtn;
    cbStatus2: TRadioGroup;
    rgTaller2: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbStatusClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure VisualizarDetProblema1Click(Sender: TObject);
    procedure VisualizarDetComentario1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure VisualizarTallerCom1Click(Sender: TObject);
    procedure VisualizarOrdNota1Click(Sender: TObject);
    procedure btLimpiarConsClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure rgTaller2Click(Sender: TObject);
  private
  public
    DReport:boolean;
  end;

var
  frmConsServicios: TfrmConsServicios;

implementation

uses SIGMA01, SERV09, RSERV01;

{$R *.dfm}

procedure TfrmConsServicios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsServicios.cbStatusClick(Sender: TObject);
begin
//  rgTaller.Enabled := cbStatus.ItemIndex = 2;
end;

procedure TfrmConsServicios.FormActivate(Sender: TObject);
begin
top :=0;
Left := 0;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end; 
end;

procedure TfrmConsServicios.SpeedButton3Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select tec_nombre, tec_codigo');
  Search.Query.add('from tecnicos');
  Search.ResultField := 'tec_Codigo';
  Search.Title := 'Técnicos';
  if Search.execute then
  begin
    edTecnico.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tec_nombre from tecnicos');
    dm.Query1.sql.add('where tec_Codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTecnico.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('TECNICO NO EXISTE',mterror,[mbok],0)
    else
      tTecnico.text := dm.Query1.fieldbyname('tec_nombre').asstring;
    edTecnico.setfocus;
//    btRefreshClick(self);
  end;  //}
end;

procedure TfrmConsServicios.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
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
//    btRefreshClick(self);
  end;
end;

procedure TfrmConsServicios.FormCreate(Sender: TObject);
begin
  Memo1.lines := QServicios.sql;
  Memo2.lines := QDetalle.sql;
  QDetalle.Open;
  QTaller.Open;
  btLimpiarConsClick(self);
end;

procedure TfrmConsServicios.btRefreshClick(Sender: TObject);
var vSQL:string;
begin
  QDetalle.close;
  QDetalle.sql := Memo2.Lines;
  with QServicios,SQL do
    begin
      close;
      clear;
      sql := Memo1.Lines;
      Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
      if (trim(edServ1.Text) <> '') and (trim(edServ2.Text) <> '') then
         sql.add('and ord_numero between '+edServ1.Text+' and '+edServ2.Text)
      else if (trim(edServ1.Text) = '') and (trim(edServ2.Text) <> '') then
         sql.add('and ord_numero < '+edServ2.Text)
      else if (trim(edServ1.Text) <> '') and (trim(edServ2.Text) = '') then
         sql.add('and ord_numero = '+edServ2.Text);
      if trim(edCliente.text) <> '' then
         sql.add('and cli_codigo = '+trim(edCliente.text));

  if trim(edNombre.text) <> '' then
     sql.add('and ord_nombre like '+#39+trim(edNombre.text)+#39);

      if ckrango.Checked then
         begin
          SQL.Add('and ord_fecha between convert(datetime,:fecha1,105) and convert(datetime,:fecha2,105)');
          Parameters.parambyname('fecha1').DataType := ftDate;
          Parameters.parambyname('fecha2').DataType := ftDate;
          Parameters.parambyname('fecha1').Value := fecha1.date;
          Parameters.parambyname('fecha2').Value := fecha2.date;
        end;

      if trim(edTecnico.text) <> '' then begin
         sql.add('and ord_numero IN (SELECT a.ord_numero FROM Det_Orden_Servicio as a '
                +'LEFT JOIN Det_Orden_Servicio_taller as y on y.ord_numero = a.ord_numero and y.suc_codigo= a.suc_codigo '
                +'WHERE y.tec_codigo='+trim(edTecnico.text)+')');
         end;

      if ckentrega.Checked then begin
         sql.add('and ord_numero IN (SELECT a.ord_numero FROM Det_Orden_Servicio as a '
                +'WHERE a.det_fecha_entrega between convert(datetime,:fEntrega1,105) and convert(datetime,:fEntrega2,105)');
      case rgTaller2.ItemIndex of
        0: QDetalle.sql.add('and a.det_status = '+QuotedStr('TRE'));
        1: QDetalle.sql.add('and a.det_status = '+QuotedStr('TDI'));
        2: QDetalle.sql.add('and a.det_status = '+QuotedStr('TEA'));
        3: QDetalle.sql.add('and a.det_status = '+QuotedStr('TEP'));
        4: QDetalle.sql.add('and a.det_status = '+QuotedStr('TRP'));
        5: QDetalle.sql.add('and a.det_status = '+QuotedStr('TEN'));
      end;
//      if (rgTaller.ItemIndex <> rgTaller.Items.Count)and(rgTaller.ItemIndex > -1) then
//         QDetalle.sql.add('and a.det_status = '+rgTaller.Values[rgTaller.ItemIndex]+')');

           Parameters.parambyname('fEntrega1').DataType := ftDate;
           Parameters.parambyname('fEntrega2').DataType := ftDate;
           Parameters.parambyname('fEntrega1').Value := fechaEntrega1.date;
           Parameters.parambyname('fEntrega2').Value := fechaEntrega2.date;
         end;
      case cbStatus2.ItemIndex of
        0: sql.add('and ord_status = '+QuotedStr('PEN'));
        1: sql.add('and ord_status = '+QuotedStr('REC'));
        2: sql.add('and ord_status = '+QuotedStr('TAL'));
        3: sql.add('and ord_status = '+QuotedStr('ETT'));
        4: sql.add('and ord_status = '+QuotedStr('ETR'));
        5: sql.add('and ord_status = '+QuotedStr('CAN'));
      end;
//      if (cbStatus.ItemIndex <> cbStatus.Items.Count)and(cbStatus.ItemIndex = cbStatus.Items.Count) then
//         sql.add('and ord_status = '+cbStatus.Values[cbStatus.ItemIndex]);

//      if (rgTaller.ItemIndex <> rgTaller.Items.Count)and(rgTaller.ItemIndex = rgTaller.Items.Count) then
//         QDetalle.sql.add('and det_status = '+rgTaller.Values[rgTaller.ItemIndex]);
      case rgTaller2.ItemIndex of
        0: QDetalle.sql.add('and det_status = '+QuotedStr('TRE'));
        1: QDetalle.sql.add('and det_status = '+QuotedStr('TDI'));
        2: QDetalle.sql.add('and det_status = '+QuotedStr('TEA'));
        3: QDetalle.sql.add('and det_status = '+QuotedStr('TEP'));
        4: QDetalle.sql.add('and det_status = '+QuotedStr('TRP'));
        5: QDetalle.sql.add('and det_status = '+QuotedStr('TEN'));
      end;
      sql.add(' order by ord_numero desc');
      Open;
      QDetalle.open;
    end;
end;

procedure TfrmConsServicios.VisualizarDetProblema1Click(Sender: TObject);
begin
//  ShowMessage(QDetalledet_problema.AsString);
  frmMemo.DBMemo1.DataSource := dsDetalle;
  frmMemo.DBMemo1.DataField := 'det_problema';
  iF frmMemo.ShowModal = MROK THEN
end;

procedure TfrmConsServicios.VisualizarDetComentario1Click(Sender: TObject);
begin
  frmMemo.DBMemo1.DataSource := dsDetalle;
  frmMemo.DBMemo1.DataField := 'det_problema';
  iF frmMemo.ShowModal = MROK THEN
//  ShowMessage(QDetalledet_comentario.AsString);
end;

procedure TfrmConsServicios.PopupMenu1Popup(Sender: TObject);
var I:integer;
begin
  for I:=0 to PopupMenu1.Items.Count-1 do
    begin
      if (PopupMenu1.Items[I].Name = 'VisualizarOrdNota1')
          and(dbgServicio.SelectedField = QServiciosord_nota)
          and dbgServicio.Focused then
         VisualizarOrdNota1.Visible := true
      else
      if (PopupMenu1.Items[I].Name = 'VisualizarTallerCom1')
          and(dbgTaller.SelectedField = qTallerdet_comentario)
          and dbgTaller.Focused then
         VisualizarTallerCom1.Visible := true
      else
      if (PopupMenu1.Items[I].Name = 'VisualizarDetComentario1')
          and(dbgDetalle.SelectedField = QDetalledet_comentario)
          and dbgDetalle.Focused then
         VisualizarDetComentario1.Visible := true
      else
        if (PopupMenu1.Items[I].Name = 'VisualizarDetProblema1')
            and(dbgDetalle.SelectedField = QDetalledet_problema)
            and dbgDetalle.Focused then
         VisualizarDetProblema1.Visible := true
      else PopupMenu1.Items[I].Visible := false;
    end;
end;

procedure TfrmConsServicios.VisualizarTallerCom1Click(Sender: TObject);
begin
  frmMemo.DBMemo1.DataSource := dsTaller;
  frmMemo.DBMemo1.DataField := 'ta_comentario';
  iF frmMemo.ShowModal = MROK THEN
//  ShowMessage(qTallerdet_comentario.AsString);
end;

procedure TfrmConsServicios.VisualizarOrdNota1Click(Sender: TObject);
begin
  frmMemo.DBMemo1.DataSource := dsServicios;
  frmMemo.DBMemo1.DataField := 'ord_nota';
  iF frmMemo.ShowModal = MROK THEN
//  ShowMessage(QServiciosord_nota.AsString);
end;

procedure TfrmConsServicios.btLimpiarConsClick(Sender: TObject);
begin
  Fecha1.date         := StartOfTheMonth(date);
  Fecha2.date         := date;
  fechaEntrega1.date  := StartOfTheMonth(date);
  fechaEntrega2.date  := date;
  edTecnico.Text      := EmptyStr;
  tTecnico.Text       := EmptyStr;
  edServ1.Text        := EmptyStr;
  edServ2.Text        := EmptyStr;
  edNombre.Text       := EmptyStr;
  tCliente.Text       := EmptyStr;
  edCliente.Text      := EmptyStr;
  cbStatus2.ItemIndex  := cbStatus2.Items.Count;
  rgTaller2.ItemIndex  := rgTaller2.Items.Count;
end;

procedure TfrmConsServicios.BitBtn3Click(Sender: TObject);
begin
IF NOT QServicios.IsEmpty THEN
BEGIN
  Application.CreateForm(TRConsServicios, RConsServicios);
  RConsServicios.lbFecha.Caption := 'Desde '+DateToStr(Fecha1.Date)+ ' Al '+DateToStr(Fecha2.Date);

  if MessageDlg('IMPRIMIR DETALLADO?',mtConfirmation,[mbyes,mbno],0) = mryes then
     DReport := true
  else
     DReport := false;
  RConsServicios.Preview;
  RConsServicios.Destroy;
END;
end;

procedure TfrmConsServicios.rgTaller2Click(Sender: TObject);
begin
  if rgTaller2.ItemIndex <> rgTaller2.Items.Count -1 then
     cbStatus2.ItemIndex := 2
  else
     cbStatus2.ItemIndex := cbStatus2.Items.Count -1;
end;

end.
