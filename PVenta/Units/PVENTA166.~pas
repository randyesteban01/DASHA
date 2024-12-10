unit PVENTA166;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ComCtrls, StdCtrls, ExtCtrls, Buttons, DB, ADODB,
  QuerySearchDlgADO, Grids, DBGrids, QExport, QExportXLS;

type
  TfrmConsVentasMarca = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    btprovincia: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    cbStatus: TRadioGroup;
    cbOrden: TComboBox;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    DBLookupComboBox2: TDBLookupComboBox;
    tprovincia: TEdit;
    edProvincia: TEdit;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Panel2: TPanel;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    sGrid: TStringGrid;
    QFacturas: TADOQuery;
    QFacturasmar_nombre: TStringField;
    QFacturasfac_nombre: TStringField;
    QFacturastcl_nombre: TStringField;
    QFacturasven_nombre: TStringField;
    QFacturascantidad: TBCDField;
    QFacturastotal: TBCDField;
    QFacturascli_codigo: TIntegerField;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    cbtipo: TComboBox;
    ExportXLS: TQExportXLS;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btprovinciaClick(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbStatusClick(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edProvinciaChange(Sender: TObject);
    procedure edProvinciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure sGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsVentasMarca: TfrmConsVentasMarca;

implementation

uses SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmConsVentasMarca.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> TStringGrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsVentasMarca.SpeedButton2Click(Sender: TObject);
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

procedure TfrmConsVentasMarca.btprovinciaClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select pro_nombre, pro_codigo');
  Search.Query.add('from provincias');
  Search.ResultField := 'pro_Codigo';
  Search.Title := 'Provincias';
  if Search.execute then
  begin
    edProvincia.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre from provincias');
    dm.Query1.sql.add('where pro_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProvincia.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0)
    else
      tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
    edProvincia.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsVentasMarca.btVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
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
    btRefreshClick(self);
  end;
end;

procedure TfrmConsVentasMarca.FormCreate(Sender: TObject);
begin
  fecha1.Date := date;
  fecha2.Date := date;
end;

procedure TfrmConsVentasMarca.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;

  sGrid.Cells[0,0] := 'Tipo de Cliente';
  sGrid.Cells[1,0] := 'Codigo';
  sGrid.Cells[2,0] := 'Nombre del Cliente';
  sGrid.Cells[3,0] := 'Vendedor';
end;

procedure TfrmConsVentasMarca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsVentasMarca.cbStatusClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsVentasMarca.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsVentasMarca.edClienteKeyDown(Sender: TObject;
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

procedure TfrmConsVentasMarca.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmConsVentasMarca.edVendedorKeyDown(Sender: TObject;
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
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsVentasMarca.edProvinciaChange(Sender: TObject);
begin
  if trim(edProvincia.text) = '' then tprovincia.text := '';
end;

procedure TfrmConsVentasMarca.edProvinciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProvincia.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre from provincias');
      dm.Query1.sql.add('where pro_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edProvincia.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PROVINCIA NO EXISTE',mterror,[mbok],0);
        edProvincia.setFocus;
      end
      else
        tprovincia.text := dm.Query1.fieldbyname('pro_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsVentasMarca.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsVentasMarca.btRefreshClick(Sender: TObject);
var
  a, b : integer;
begin

  Screen.Cursor := crHourGlass;
  ExportXLS.Sheets[0].Captions.Clear;
  ExportXLS.Sheets[0].Captions.Add('Tipo de Cliente');
  ExportXLS.Sheets[0].Captions.Add('Codigo Cliente');
  ExportXLS.Sheets[0].Captions.Add('Nombre del Cliente');
  ExportXLS.Sheets[0].Captions.Add('Vendedor');

  //Buscando marcas
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select distinct m.mar_nombre');
  dm.Query1.SQL.Add('from facturas f, marcas m, det_factura d, vendedores v,');
  dm.Query1.SQL.Add('tipoclientes t, clientes c');
  dm.Query1.SQL.Add('where f.emp_codigo = d.emp_codigo');
  dm.Query1.SQL.Add('and f.suc_codigo = d.suc_codigo');
  dm.Query1.SQL.Add('and f.tfa_codigo = d.tfa_codigo');
  dm.Query1.SQL.Add('and f.fac_forma = d.fac_forma');
  dm.Query1.SQL.Add('and f.fac_numero = d.fac_numero');
  dm.Query1.SQL.Add('and d.emp_codigo = m.emp_codigo');
  dm.Query1.SQL.Add('and d.mar_codigo = m.mar_codigo');
  dm.Query1.SQL.Add('and f.emp_codigo = v.emp_codigo');
  dm.Query1.SQL.Add('and f.ven_codigo = v.ven_codigo');
  dm.Query1.SQL.Add('and f.emp_codigo = c.emp_codigo');
  dm.Query1.SQL.Add('and f.cli_codigo = c.cli_codigo');
  dm.Query1.SQL.Add('and c.emp_codigo = t.emp_codigo');
  dm.Query1.SQL.Add('and c.tcl_codigo = t.tcl_codigo');

  if Trim(edVendedor.Text) <> '' then
     dm.Query1.SQL.Add('and f.ven_codigo = '+Trim(edVendedor.Text));

  dm.Query1.SQL.Add('and f.emp_codigo = :emp');
  dm.Query1.SQL.Add('and f.suc_codigo = :suc');
  dm.Query1.SQL.Add('and f.fac_fecha between convert(datetime, :fec1, 105) and');
  dm.Query1.SQL.Add('convert(datetime, :fec2, 105)');
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  dm.Query1.Open;

  sGrid.ColCount := 4;
  sGrid.RowCount := 2;
  while not dm.Query1.EOF do
  begin
    sGrid.ColCount := sGrid.ColCount + 1;
    sGrid.Cells[sGrid.ColCount-1,0] := dm.Query1.FieldByName('mar_nombre').AsString;
    ExportXLS.Sheets[0].Captions.Add(dm.Query1.FieldByName('mar_nombre').AsString);

    dm.Query1.Next;
  end;
  sGrid.RowCount := sGrid.RowCount - 1;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select');
  dm.Query1.SQL.Add('f.fac_nombre, t.tcl_nombre, v.ven_nombre, f.cli_codigo,');
  dm.Query1.SQL.Add('sum(d.det_cantidad) as cantidad,');
  dm.Query1.SQL.Add('sum(d.det_total) as total');
  dm.Query1.SQL.Add('from');
  dm.Query1.SQL.Add('facturas f, marcas m, det_factura d, vendedores v,');
  dm.Query1.SQL.Add('tipoclientes t, clientes c');
  dm.Query1.SQL.Add('where');
  dm.Query1.SQL.Add('f.emp_codigo = d.emp_codigo');
  dm.Query1.SQL.Add('and f.suc_codigo = d.suc_codigo');
  dm.Query1.SQL.Add('and f.tfa_codigo = d.tfa_codigo');
  dm.Query1.SQL.Add('and f.fac_forma  = d.fac_forma');
  dm.Query1.SQL.Add('and f.fac_numero = d.fac_numero');
  dm.Query1.SQL.Add('and d.emp_codigo = m.emp_codigo');
  dm.Query1.SQL.Add('and d.mar_codigo = m.mar_codigo');
  dm.Query1.SQL.Add('and f.emp_codigo = v.emp_codigo');
  dm.Query1.SQL.Add('and f.ven_codigo = v.ven_codigo');
  dm.Query1.SQL.Add('and f.emp_codigo = c.emp_codigo');
  dm.Query1.SQL.Add('and f.cli_codigo = c.cli_codigo');
  dm.Query1.SQL.Add('and c.emp_codigo = t.emp_codigo');
  dm.Query1.SQL.Add('and c.tcl_codigo = t.tcl_codigo');

  if Trim(edVendedor.Text) <> '' then
     dm.Query1.SQL.Add('and f.ven_codigo = '+Trim(edVendedor.Text));

  dm.Query1.SQL.Add('and f.emp_codigo = :emp');
  dm.Query1.SQL.Add('and f.suc_codigo = :suc');
  dm.Query1.SQL.Add('and f.fac_fecha between convert(datetime, :fec1, 105) and');
  dm.Query1.SQL.Add('convert(datetime, :fec2, 105)');
  dm.Query1.SQL.Add('group by f.fac_nombre, t.tcl_nombre, v.ven_nombre, f.cli_codigo');
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  dm.Query1.Open;
  a := 0;
  while not dm.Query1.Eof do
  begin
    a := a + 1;
    sGrid.Cells[0,a] := dm.Query1.FieldByName('tcl_nombre').AsString;
    sGrid.Cells[1,a] := dm.Query1.FieldByName('cli_codigo').AsString;
    sGrid.Cells[2,a] := dm.Query1.FieldByName('fac_nombre').AsString;
    sGrid.Cells[3,a] := dm.Query1.FieldByName('ven_nombre').AsString;

    sGrid.RowCount := sGrid.RowCount + 1;
    dm.Query1.Next;
  end;

  QFacturas.Close;
  QFacturas.SQL.Clear;
  QFacturas.SQL.Add('select m.mar_nombre, f.fac_nombre, t.tcl_nombre, v.ven_nombre, f.cli_codigo,');
  QFacturas.SQL.Add('sum(d.det_cantidad) as cantidad, sum(d.det_total) as total');
  QFacturas.SQL.Add('from facturas f, marcas m, det_factura d, vendedores v, tipoclientes t, clientes c');
  QFacturas.SQL.Add('where f.emp_codigo = d.emp_codigo and f.suc_codigo = d.suc_codigo');
  QFacturas.SQL.Add('and f.tfa_codigo = d.tfa_codigo and f.fac_forma = d.fac_forma');
  QFacturas.SQL.Add('and f.fac_numero = d.fac_numero and d.emp_codigo = m.emp_codigo');
  QFacturas.SQL.Add('and d.mar_codigo = m.mar_codigo and f.emp_codigo = v.emp_codigo');
  QFacturas.SQL.Add('and f.ven_codigo = v.ven_codigo and f.emp_codigo = c.emp_codigo');
  QFacturas.SQL.Add('and f.cli_codigo = c.cli_codigo and c.emp_codigo = t.emp_codigo');
  QFacturas.SQL.Add('and c.tcl_codigo = t.tcl_codigo and f.emp_codigo = :emp');
  QFacturas.SQL.Add('and f.suc_codigo = :suc and m.mar_nombre = :mar');
  QFacturas.SQL.Add('and f.fac_fecha between convert(datetime, :fec1, 105) and');
  QFacturas.SQL.Add('convert(datetime, :fec2, 105)');

  if Trim(edVendedor.Text) <> '' then
     QFacturas.SQL.Add('and f.ven_codigo = '+Trim(edVendedor.Text));

  QFacturas.SQL.Add('group by m.mar_nombre, f.fac_nombre, t.tcl_nombre, v.ven_nombre, f.cli_codigo');

  for a := 4 to sGrid.ColCount -1 do
  begin
    QFacturas.Close;
    QFacturas.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    QFacturas.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    QFacturas.Parameters.ParamByName('fec1').DataType := ftDate;
    QFacturas.Parameters.ParamByName('fec2').DataType := ftDate;
    QFacturas.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    QFacturas.Parameters.ParamByName('fec2').Value := Fecha2.Date;
    QFacturas.Parameters.ParamByName('mar').Value  := Trim(sGrid.Cells[a,0]);
    {QFacturas.Parameters.ParamByName('nom').Value  := Trim(sGrid.Cells[2,b]);
    QFacturas.Parameters.ParamByName('tcl').Value  := Trim(sGrid.Cells[0,b]);
    QFacturas.Parameters.ParamByName('ven').Value  := Trim(sGrid.Cells[3,b]);}
    QFacturas.Open;
    QFacturas.DisableControls;
    while not QFacturas.eof do
    begin
      for b := 1 to sGrid.RowCount -1 do
      begin
        if Trim(sGrid.Cells[2,b]) = QFacturasfac_nombre.Value then
          if Trim(sGrid.Cells[0,b]) = QFacturastcl_nombre.Value then
            if Trim(sGrid.Cells[3,b]) = QFacturasven_nombre.Value then
            begin
              if cbtipo.ItemIndex = 0 then
                sGrid.Cells[a,b] := Trim(Format('%10.2F',[QFacturascantidad.Value]))
              else
                sGrid.Cells[a,b] := Trim(Format('%n',[QFacturastotal.Value]));
            end;
        Application.ProcessMessages;
      end;
      QFacturas.Next;
    end;
    QFacturas.EnableControls;
    Application.ProcessMessages;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmConsVentasMarca.sGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  dx: Integer;
  procedure WriteText(StringGrid: TStringGrid; ACanvas: TCanvas; const ARect: TRect;
      const Text: string; Format: Word);
  const
    DX = 2;
    DY = 2;
  var
    S: array[0..255] of Char;
    B, R: TRect;
  begin
    with Stringgrid, ACanvas, ARect do
    begin
      case Format of
      DT_LEFT: ExtTextOut(Handle, Left + DX, Top + DY,
               ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
               Length(Text), nil);

      DT_RIGHT: ExtTextOut(Handle, Right - TextWidth(Text) - 3, Top + DY,
              ETO_OPAQUE or ETO_CLIPPED, @ARect, StrPCopy(S, Text),
              Length(Text), nil);

      DT_CENTER: ExtTextOut(Handle, Left + (Right - Left - TextWidth(Text)) div 2,
              Top + DY, ETO_OPAQUE or ETO_CLIPPED, @ARect,
              StrPCopy(S, Text), Length(Text), nil);
      end;
    end;
  end;

  procedure Display(StringGrid: TStringGrid; const S: string; Alignment: TAlignment);
  const
    Formats: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);
  begin
    WriteText(StringGrid, StringGrid.Canvas, Rect, S, Formats[Alignment]);
  end;
begin
  with (Sender as TStringGrid) do
  begin
    // Don't change color for first Column, first row
    if ARow = 0 then
    Begin
       Canvas.Font.Name := 'Tahoma';
       Canvas.Font.Style := [fsBold];
//      Canvas.Brush.Color := clBtnFace
    End
    else
    begin
       Canvas.Font.Name := 'Tahoma';
       Canvas.Font.Size := 8;
    end;

    Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
    Canvas.FrameRect(Rect);
  end;

  // Right-justify columns 0-2
  // Spalten 0-2 rechts ausrichten.
  if (ACol >= 4) and (ARow >0) then
    Display(sGrid, sGrid.Cells[ACol, ARow], taRightJustify);
  if (ACol in[0,1,3]) and (ARow = 0) then
    Display(sGrid, sGrid.Cells[ACol, ARow], taCenter);
end;

procedure TfrmConsVentasMarca.BitBtn1Click(Sender: TObject);
begin
  ExportXLS.Sheets[0].StringGrid := sGrid;
  ExportXLS.Sheets[0].Exported := True;

  if frmMain.GrabaXLS.Execute then
  begin
    ExportXLS.Header.Clear;
    ExportXLS.Header.Add(dm.QEmpresasEMP_NOMBRE.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_DIRECCION.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_LOCALIDAD.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_TELEFONO.Value);
    ExportXLS.FileName := frmMain.GrabaXLS.FileName;
    ExportXLS.Execute;
  end;
end;

procedure TfrmConsVentasMarca.FormPaint(Sender: TObject);
begin
  with frmConsVentasMarca do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

end.
