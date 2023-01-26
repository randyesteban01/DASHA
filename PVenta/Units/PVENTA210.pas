unit PVENTA210;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB, ADODB, Spin, DateUtils,
  ComCtrls, QuerySearchDlgADO, QExport, QExportXLS, ExcelXP;

type
  TfrmResumenVentaProducto = class(TForm)
    Panel1: TPanel;
    QReporte: TADOStoredProc;
    dsReporte: TDataSource;
    Label3: TLabel;
    spAno: TSpinEdit;
    sgreporte: TStringGrid;
    lbcolor: TListBox;
    QReporteprod: TIntegerField;
    QReportenombre: TStringField;
    QReporteene: TBCDField;
    QReportefeb: TBCDField;
    QReportemar: TBCDField;
    QReporteabr: TBCDField;
    QReportemay: TBCDField;
    QReportejun: TBCDField;
    QReportejul: TBCDField;
    QReporteago: TBCDField;
    QReportesep: TBCDField;
    QReporteoct: TBCDField;
    QReportenov: TBCDField;
    QReportedic: TBCDField;
    QReporteref: TStringField;
    QReportetot: TBCDField;
    Label1: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    btFamilia: TSpeedButton;
    Label5: TLabel;
    tFamilia: TEdit;
    edFamilia: TEdit;
    btDepto: TSpeedButton;
    Label27: TLabel;
    tDepto: TEdit;
    edDepto: TEdit;
    btgerente: TSpeedButton;
    Label15: TLabel;
    tgerente: TEdit;
    edGerente: TEdit;
    CheckBox1: TCheckBox;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Label16: TLabel;
    cbtipo: TComboBox;
    Search: TQrySearchDlgADO;
    Panel2: TPanel;
    btprocesar: TBitBtn;
    btexportar: TBitBtn;
    btClose: TBitBtn;
    ExportXLS: TQExportXLS;
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure btprocesarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sgreporteDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btexportarClick(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFamiliaClick(Sender: TObject);
    procedure btDeptoClick(Sender: TObject);
    procedure btgerenteClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edGerenteChange(Sender: TObject);
    procedure edGerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sgreporteDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');
  
var
  frmResumenVentaProducto: TfrmResumenVentaProducto;

implementation

uses SIGMA01, StdConvs, SIGMA00, CONT17, CONT73, PVENTA211;

{$R *.dfm}

procedure TfrmResumenVentaProducto.FormPaint(Sender: TObject);
begin
  with frmResumenVentaProducto do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmResumenVentaProducto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmMain.btExcel.Enabled := True;
  action := cafree;
end;

procedure TfrmResumenVentaProducto.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmResumenVentaProducto.btprocesarClick(Sender: TObject);
var
  col, lin, a, meses : integer;
  l, color : string;
begin
  Screen.Cursor := crHourGlass;
  sgreporte.ColCount := 2;

  if not CheckBox1.Checked then
  begin
    sgreporte.ColCount := 15;
    sgreporte.Cells[14,0] := 'Total';
    meses := 1;
    for col := 2 to sgreporte.ColCount-2 do
    begin
      sgreporte.Cells[col,0] := DMes[meses];
      meses := meses + 1;
    end;
  end
  else
  begin
    meses := MonthOf(Fecha1.Date);
    for col := 1 to MonthsBetween(Fecha1.Date, fecha2.Date)+1 do
    begin
      sgreporte.ColCount := sgreporte.ColCount + 1;
      sgreporte.Cells[sgreporte.ColCount-1,0] := DMes[meses];
      if meses < 12 then
        meses := meses + 1
      else
        meses := 1;
    end;
    sgreporte.ColCount := sgreporte.ColCount + 1;
    sgreporte.Cells[sgreporte.ColCount-1,0] := 'Total';
  end;


  //Limpiando el grid
  for col := 0 to sgreporte.ColCount-1 do
    for lin := 1 to sgreporte.RowCount-1 do
      sgreporte.cells[col,lin] := '';

  if trim(edProveedor.Text) = '' then edProveedor.Text := '0';
  if trim(edFamilia.Text)   = '' then edFamilia.Text := '0';
  if trim(edDepto.Text)     = '' then edDepto.Text := '0';
  if trim(edGerente.Text)   = '' then edGerente.Text := '0';

{  if (edProveedor.Text = '0') and (edFamilia.Text = '0')
  and (edDepto.Text = '0') and (edGerente.Text = '0') then
    MessageDlg('DEBE SELECCIONAR UN CRITERIO DE BUSQUEDA',mtError,[mbok],0)
  else
  begin}
    QReporte.Close;
    QReporte.Parameters.ParamByName('@emp').Value  := dm.vp_cia;
    QReporte.Parameters.ParamByName('@ano').Value  := spAno.Value;
    case cbtipo.ItemIndex of
    0 : QReporte.Parameters.ParamByName('@tipo').Value := 'T';
    1 : QReporte.Parameters.ParamByName('@tipo').Value := 'K';
    2 : QReporte.Parameters.ParamByName('@tipo').Value := 'F';
    end;
    if CheckBox1.Checked then
      QReporte.Parameters.ParamByName('@periodo').Value := 'S'
    else
      QReporte.Parameters.ParamByName('@periodo').Value := 'N';

    QReporte.Parameters.ParamByName('@fec1').DataType := ftDate;
    QReporte.Parameters.ParamByName('@fec2').DataType := ftDate;
    QReporte.Parameters.ParamByName('@fec1').Value := fecha1.Date;
    QReporte.Parameters.ParamByName('@fec2').Value := fecha2.Date;
    QReporte.Parameters.ParamByName('@fam').Value  := StrToInt(edFamilia.Text);
    QReporte.Parameters.ParamByName('@ger').Value  := StrToInt(edGerente.Text);
    QReporte.Parameters.ParamByName('@dep').Value  := StrToInt(edDepto.Text);
    QReporte.Parameters.ParamByName('@sup').Value  := StrToInt(edProveedor.Text);
    QReporte.Parameters.ParamByName('@prod').Value := 0;
    QReporte.Open;

    QReporte.DisableControls;
    QReporte.First;
    lin := 1;
    sgreporte.RowCount := 2;
    lbcolor.Items.Clear;
    lbcolor.Items.Add('');
    while not QReporte.Eof do
    begin
      Application.ProcessMessages;
      if color = 'B' then
        color := 'V'
      else
        color := 'B';
      lbcolor.Items.Add(color);

      if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
        sgreporte.Cells[00,lin] := l + QReporteprod.AsString
      else
        sgreporte.Cells[00,lin] := l + QReporteref.AsString;

      sgreporte.Cells[01,lin] := l + QReportenombre.AsString;

      if not CheckBox1.Checked then
      begin
        if QReporteene.AsFloat > 0 then
          sgreporte.Cells[02,lin] := Format('%n',[QReporteene.AsFloat]);

        if QReporteFeb.AsFloat > 0 then
          sgreporte.Cells[03,lin] := Format('%n',[QReporteFeb.AsFloat]);

        if QReporteMar.AsFloat > 0 then
          sgreporte.Cells[04,lin] := Format('%n',[QReporteMar.AsFloat]);

        if QReporteAbr.AsFloat > 0 then
        sgreporte.Cells[05,lin] := Format('%n',[QReporteAbr.AsFloat]);

        if QReporteMay.AsFloat > 0 then
          sgreporte.Cells[06,lin] := Format('%n',[QReporteMay.AsFloat]);

        if QReporteJun.AsFloat > 0 then
          sgreporte.Cells[07,lin] := Format('%n',[QReporteJun.AsFloat]);

        if QReporteJul.AsFloat > 0 then
          sgreporte.Cells[08,lin] := Format('%n',[QReporteJul.AsFloat]);

        if QReporteAgo.AsFloat > 0 then
          sgreporte.Cells[09,lin] := Format('%n',[QReporteAgo.AsFloat]);

        if QReporteSep.AsFloat > 0 then
          sgreporte.Cells[10,lin] := Format('%n',[QReporteSep.AsFloat]);

        if QReporteOct.AsFloat > 0 then
          sgreporte.Cells[11,lin] := Format('%n',[QReporteOct.AsFloat]);

        if QReporteNov.AsFloat > 0 then
          sgreporte.Cells[12,lin] := Format('%n',[QReporteNov.AsFloat]);

        if QReporteDic.AsFloat > 0 then
          sgreporte.Cells[13,lin] := Format('%n',[QReporteDic.AsFloat]);

        if QReportetot.AsFloat > 0 then
          sgreporte.Cells[14,lin] := Format('%n',[QReportetot.AsFloat]);

        if Trim(QReportenombre.AsString) = '' then
        begin
          if QReporteene.AsFloat = 0 then sgreporte.Cells[02,lin] := '';
          if QReporteFeb.AsFloat = 0 then sgreporte.Cells[03,lin] := '';
          if QReporteMar.AsFloat = 0 then sgreporte.Cells[04,lin] := '';
          if QReporteAbr.AsFloat = 0 then sgreporte.Cells[05,lin] := '';
          if QReporteMay.AsFloat = 0 then sgreporte.Cells[06,lin] := '';
          if QReporteJun.AsFloat = 0 then sgreporte.Cells[07,lin] := '';
          if QReporteJul.AsFloat = 0 then sgreporte.Cells[08,lin] := '';
          if QReporteAgo.AsFloat = 0 then sgreporte.Cells[09,lin] := '';
          if QReporteSep.AsFloat = 0 then sgreporte.Cells[10,lin] := '';
          if QReporteOct.AsFloat = 0 then sgreporte.Cells[11,lin] := '';
          if QReporteNov.AsFloat = 0 then sgreporte.Cells[12,lin] := '';
          if QReporteDic.AsFloat = 0 then sgreporte.Cells[13,lin] := '';
          if QReportetot.AsFloat = 0 then sgreporte.Cells[14,lin] := '';
        end;
      end
      else
      begin
        for col := 2 to sgreporte.ColCount-2 do
        begin
          sgreporte.Cells[col,lin] := Format('%n',[QReporte.FieldbyName(copy(trim(sgreporte.Cells[col,0]),1,3)).AsFloat]);
        end;
        if QReportetot.AsFloat > 0 then
          sgreporte.Cells[sgreporte.ColCount-1,lin] := Format('%n',[QReportetot.AsFloat]);
      end;

      lin := lin + 1;
      sgreporte.RowCount := sgreporte.RowCount + 1;

      QReporte.Next;
    end;
    QReporte.First;
    QReporte.EnableControls;
    if sgreporte.RowCount > 2 then
      sgreporte.RowCount := sgreporte.RowCount -1;

    sgreporte.SetFocus;
  //end;
  Screen.Cursor := crDefault;
end;

procedure TfrmResumenVentaProducto.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  frmMain.btExcel.Enabled := False;

  if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
    sgreporte.Cells[00,0] := 'Código'
  else
    sgreporte.Cells[00,0] := 'Referencia';
    
  sgreporte.Cells[01,0] := 'Nombre del Producto';
  sgreporte.Cells[02,0] := 'Enero';
  sgreporte.Cells[03,0] := 'Febrero';
  sgreporte.Cells[04,0] := 'Marzo';
  sgreporte.Cells[05,0] := 'Abril';
  sgreporte.Cells[06,0] := 'Mayo';
  sgreporte.Cells[07,0] := 'Junio';
  sgreporte.Cells[08,0] := 'Julio';
  sgreporte.Cells[09,0] := 'Agosto';
  sgreporte.Cells[10,0] := 'Septiembre';
  sgreporte.Cells[11,0] := 'Octubre';
  sgreporte.Cells[12,0] := 'Noviembre';
  sgreporte.Cells[13,0] := 'Diciembre';
  sgreporte.Cells[14,0] := 'Total';
end;

procedure TfrmResumenVentaProducto.sgreporteDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  dx: Integer;
  i: integer;
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
const
  SelectedColor = Clblue;
begin
  with sgreporte do
  begin
    if lbcolor.Items.Count > 0 then
    begin
      try
        if lbcolor.Items[ARow] = 'V' then
        begin
          Canvas.Brush.Color := $00DFFFDF;
          Canvas.FillRect(rect);
          Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
        end;
      except
      end;
    end;

      if (ACol > 1) then
      begin
        if pos('-',sgreporte.Cells[ACol, ARow]) > 0 then
        begin
          Canvas.Font.Color:=Clred;
          Canvas.FillRect(rect);
          Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
        end;
      end;

    if trim(sgreporte.Cells[0,ARow]) = '' then
    begin
      Canvas.Brush.Color:=clSilver;
      Canvas.Font.Style := [fsBold];
      Canvas.FillRect(rect);
      Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
    end;

    // Right-justify columns 0-2
    // Spalten 0-2 rechts ausrichten.
   if (ACol > 1) and (ARow > 0) then
      Display(sgreporte, sgreporte.Cells[ACol, ARow], taRightJustify);

   if (ARow = 0) then
      Display(sgreporte, sgreporte.Cells[ACol, ARow], taCenter);

   if  (gdSelected in State) or (gdFocused in State) then
   begin
     Canvas.Brush.Color := SelectedColor;
     Canvas.Font.Color  := clWhite;
     Canvas.FillRect(Rect);
     Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[aCol, aRow]);
   end;
  end;
end;

procedure TfrmResumenVentaProducto.btexportarClick(Sender: TObject);
begin
try
  if frmMain.GrabaXLS.Execute then
  begin
    ExportXLS.ExportSource := esStringGrid;
    ExportXLS.Header.Clear;
    ExportXLS.Header.Add(dm.QEmpresasEMP_NOMBRE.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_DIRECCION.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_LOCALIDAD.Value);
    ExportXLS.Header.Add(dm.QEmpresasEMP_TELEFONO.Value);
    ExportXLS.FileName := frmMain.GrabaXLS.FileName;
    ExportXLS.Execute;
    ExportXLS.Sheets[3].Exported := False;
  end;
except
  Exit;
end;
end;

procedure TfrmResumenVentaProducto.btProveedorClick(Sender: TObject);
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
  end;
end;

procedure TfrmResumenVentaProducto.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.ClassType <> TStringGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmResumenVentaProducto.btFamiliaClick(Sender: TObject);
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
    edFamilia.setfocus;
  end;
end;

procedure TfrmResumenVentaProducto.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
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

procedure TfrmResumenVentaProducto.btgerenteClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
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
      messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0)
    else
      tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    edGerente.setfocus;
  end;
end;

procedure TfrmResumenVentaProducto.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmResumenVentaProducto.edProveedorKeyDown(Sender: TObject;
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

procedure TfrmResumenVentaProducto.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmResumenVentaProducto.edFamiliaKeyDown(Sender: TObject;
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

procedure TfrmResumenVentaProducto.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmResumenVentaProducto.edDeptoKeyDown(Sender: TObject;
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

procedure TfrmResumenVentaProducto.edGerenteChange(Sender: TObject);
begin
  if trim(edGerente.text) = '' then tgerente.text := '';
end;

procedure TfrmResumenVentaProducto.edGerenteKeyDown(Sender: TObject;
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

procedure TfrmResumenVentaProducto.sgreporteDblClick(Sender: TObject);
begin
  if QReporte.Locate('nombre',Trim(sgreporte.Cells[1,sgreporte.Row]),[]) then
  begin
    Application.CreateForm(tfrmChartResumenVentaProducto, frmChartResumenVentaProducto);
    frmChartResumenVentaProducto.QReporte.Close;
    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@emp').Value  := dm.vp_cia;
    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@ano').Value  := spAno.Value;
    case cbtipo.ItemIndex of
    0 : frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@tipo').Value := 'T';
    1 : frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@tipo').Value := 'K';
    2 : frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@tipo').Value := 'F';
    end;
    if CheckBox1.Checked then
      frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@periodo').Value := 'S'
    else
      frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@periodo').Value := 'N';

    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@fec1').DataType := ftDate;
    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@fec2').DataType := ftDate;
    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@fec1').Value := fecha1.Date;
    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@fec2').Value := fecha2.Date;
    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@fam').Value  := StrToInt(edFamilia.Text);
    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@ger').Value  := StrToInt(edGerente.Text);
    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@dep').Value  := StrToInt(edDepto.Text);
    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@sup').Value  := StrToInt(edProveedor.Text);
    frmChartResumenVentaProducto.QReporte.Parameters.ParamByName('@prod').Value := QReporteprod.AsInteger;
    frmChartResumenVentaProducto.QReporte.Open;

    frmChartResumenVentaProducto.DBChart1.Title.Text.clear;
    frmChartResumenVentaProducto.DBChart2.Title.Text.clear;
    frmChartResumenVentaProducto.DBChart3.Title.Text.clear;
    frmChartResumenVentaProducto.DBChart4.Title.Text.clear;

    frmChartResumenVentaProducto.DBChart1.Title.Text.Add(Trim(sgreporte.Cells[1,sgreporte.Row]));
    frmChartResumenVentaProducto.DBChart2.Title.Text.Add(Trim(sgreporte.Cells[1,sgreporte.Row]));
    frmChartResumenVentaProducto.DBChart3.Title.Text.Add(Trim(sgreporte.Cells[1,sgreporte.Row]));
    frmChartResumenVentaProducto.DBChart4.Title.Text.Add(Trim(sgreporte.Cells[1,sgreporte.Row]));

    frmChartResumenVentaProducto.ShowModal;
    frmChartResumenVentaProducto.Release;
  end;
end;

procedure TfrmResumenVentaProducto.FormActivate(Sender: TObject);
begin
  ExportXLS.ExportSource := esStringGrid;
  ExportXLS.Sheets[0].StringGrid := sgreporte;
  ExportXLS.Sheets[0].Exported := True;
end;

end.
