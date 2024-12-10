unit CONT72;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB, ADODB, Spin, DateUtils,
  QExport, QExportXLS;

type
  TfrmRepSituacionAnual = class(TForm)
    Panel1: TPanel;
    QEstado: TADOStoredProc;
    dsEstado: TDataSource;
    QEstadocuenta: TStringField;
    QEstadonombre: TStringField;
    QEstadoEnero: TBCDField;
    QEstadoFebrero: TBCDField;
    QEstadoMarzo: TBCDField;
    QEstadoAbril: TBCDField;
    QEstadoMayo: TBCDField;
    QEstadoJunio: TBCDField;
    QEstadoJulio: TBCDField;
    QEstadoAgosto: TBCDField;
    QEstadoSeptiembre: TBCDField;
    QEstadoOctubre: TBCDField;
    QEstadoNoviembre: TBCDField;
    QEstadoDiciembre: TBCDField;
    QEstadotot: TIntegerField;
    QEstadonegrita: TStringField;
    QEstadonivel: TIntegerField;
    Label3: TLabel;
    spAno: TSpinEdit;
    sgestado: TStringGrid;
    ListBox1: TListBox;
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
    procedure sgestadoDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btexportarClick(Sender: TObject);
    procedure sgestadoDblClick(Sender: TObject);
    procedure sgestadoSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepSituacionAnual: TfrmRepSituacionAnual;

implementation

uses SIGMA01, StdConvs, SIGMA00, CONT17, CONT73;

{$R *.dfm}

procedure TfrmRepSituacionAnual.FormPaint(Sender: TObject);
begin
  with frmRepSituacionAnual do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 125;
  end;
end;

procedure TfrmRepSituacionAnual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepSituacionAnual.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepSituacionAnual.btprocesarClick(Sender: TObject);
var
  col, lin, a : integer;
  l : string;
begin
  sgestado.RowCount := 2;
  for col := 0 to sgestado.ColCount-1 do
    for lin := 1 to sgestado.RowCount-1 do
      sgestado.Cells[col, lin] := '';

  Screen.Cursor := crHourGlass;

  QEstado.Close;
  QEstado.Parameters.ParamByName('@emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
  QEstado.Parameters.ParamByName('@ano').Value  := spAno.Value;
  QEstado.Parameters.ParamByName('@tasa').Value := 0;
  QEstado.Open;

  QEstado.DisableControls;
  QEstado.First;
  lin := 1;
  sgestado.RowCount := 2;
  ListBox1.items.Clear;
  ListBox1.Items.Add('');
  while not QEstado.Eof do
  begin
    Application.ProcessMessages;

    if Trim(QEstadocuenta.AsString) <> 'B' then
    begin
      ListBox1.Items.Add(QEstadonegrita.AsString);

      l := '';
      if QEstadonivel.AsInteger > 1 then
      begin
        for a := 1 to QEstadonivel.AsInteger do
          l := l + '  ';
      end;
      sgestado.Cells[00,lin] := l + QEstadonombre.AsString;
      sgestado.Cells[01,lin] := Format('%n',[QEstadoenero.AsFloat]);
      sgestado.Cells[02,lin] := Format('%n',[QEstadoFebrero.AsFloat]);
      sgestado.Cells[03,lin] := Format('%n',[QEstadoMarzo.AsFloat]);
      sgestado.Cells[04,lin] := Format('%n',[QEstadoAbril.AsFloat]);
      sgestado.Cells[05,lin] := Format('%n',[QEstadoMayo.AsFloat]);
      sgestado.Cells[06,lin] := Format('%n',[QEstadoJunio.AsFloat]);
      sgestado.Cells[07,lin] := Format('%n',[QEstadoJulio.AsFloat]);
      sgestado.Cells[08,lin] := Format('%n',[QEstadoAgosto.AsFloat]);
      sgestado.Cells[09,lin] := Format('%n',[QEstadoSeptiembre.AsFloat]);
      sgestado.Cells[10,lin] := Format('%n',[QEstadoOctubre.AsFloat]);
      sgestado.Cells[11,lin] := Format('%n',[QEstadoNoviembre.AsFloat]);
      sgestado.Cells[12,lin] := Format('%n',[QEstadoDiciembre.AsFloat]);

      if (QEstadonegrita.AsString = 'S') and (copy(QEstadonombre.AsString,1,5) <> 'TOTAL') then
      begin
        sgestado.Cells[01,lin] := '';
        sgestado.Cells[02,lin] := '';
        sgestado.Cells[03,lin] := '';
        sgestado.Cells[04,lin] := '';
        sgestado.Cells[05,lin] := '';
        sgestado.Cells[06,lin] := '';
        sgestado.Cells[07,lin] := '';
        sgestado.Cells[08,lin] := '';
        sgestado.Cells[09,lin] := '';
        sgestado.Cells[10,lin] := '';
        sgestado.Cells[11,lin] := '';
        sgestado.Cells[12,lin] := '';
      end;

      lin := lin + 1;
      sgestado.RowCount := sgestado.RowCount + 1;

      if copy(QEstadonombre.AsString,1,5) = 'TOTAL' then
      begin
        lin := lin + 1;
        sgestado.RowCount := sgestado.RowCount + 1;
        ListBox1.Items.Add(QEstadonegrita.AsString);
      end;
    end;
    
    QEstado.Next;
  end;
  QEstado.First;
  QEstado.EnableControls;

  sgestado.RowCount := sgestado.RowCount - 2;

  sgestado.SetFocus;

  Screen.Cursor := crDefault;
end;

procedure TfrmRepSituacionAnual.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  sgestado.Cells[1,0]  := 'Enero';
  sgestado.Cells[2,0]  := 'Febrero';
  sgestado.Cells[3,0]  := 'Marzo';
  sgestado.Cells[4,0]  := 'Abril';
  sgestado.Cells[5,0]  := 'Mayo';
  sgestado.Cells[6,0]  := 'Junio';
  sgestado.Cells[7,0]  := 'Julio';
  sgestado.Cells[8,0]  := 'Agosto';
  sgestado.Cells[9,0]  := 'Septiembre';
  sgestado.Cells[10,0] := 'Octubre';
  sgestado.Cells[11,0] := 'Noviembre';
  sgestado.Cells[12,0] := 'Diciembre';
end;

procedure TfrmRepSituacionAnual.sgestadoDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  dx: Integer;
  txt: string;
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
  with sgestado do
  begin
    if ListBox1.Items.Count > 0 then
    begin
      try
        if ListBox1.Items[ARow] = 'S' then
        begin
          Canvas.Font.Style := [fsBold];
          //Canvas.Brush.Color:=Clred;
          Canvas.FillRect(rect);
          Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
        end;
      except
      end;

      if (ACol > 0) then
      begin
        if pos('-',sgestado.Cells[ACol, ARow]) > 0 then
        begin
          Canvas.Font.Color:=Clred;
          Canvas.FillRect(rect);
          Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
        end;
      end;
    end;

    if copy(sgestado.Cells[0,ARow],1,5) = 'TOTAL' then
    begin
      Canvas.Brush.Color:=clSilver;
      Canvas.FillRect(rect);
      Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
    end;

    // Right-justify columns 0-2
    // Spalten 0-2 rechts ausrichten.
   if (ACol > 0) and (ARow > 0) then
      Display(sgestado, sgestado.Cells[ACol, ARow], taRightJustify);

   if (ARow = 0) then
      Display(sgestado, sgestado.Cells[ACol, ARow], taCenter);

   if  (gdSelected in State) or (gdFocused in State) then
   begin
     Canvas.Brush.Color := SelectedColor;
     Canvas.Font.Color  := clWhite;
     Canvas.FillRect(Rect);
     Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[aCol, aRow]);
   end;
  end;
end;

procedure TfrmRepSituacionAnual.btexportarClick(Sender: TObject);
begin
  ExportXLS.Sheets[0].Header.Clear;
  ExportXLS.Sheets[0].Header.Add(dm.QEmpresasEMP_NOMBRE.Value);
  ExportXLS.Sheets[0].Header.Add('Estado de Situación');
  ExportXLS.Sheets[0].Header.Add('Correspondiente al '+IntToStr(spAno.Value));

  if frmMain.GrabaXLS.Execute then
  begin
    ExportXLS.FileName := frmMain.GrabaXLS.FileName;
    ExportXLS.Execute;
  end;
end;

procedure TfrmRepSituacionAnual.sgestadoDblClick(Sender: TObject);
begin
  if (copy(Trim(sgestado.Cells[0,sgestado.Row]),1,5) <> 'TOTAL') and
  (copy(Trim(sgestado.Cells[0,sgestado.Row]),1,5) <> '') and
  (copy(Trim(sgestado.Cells[sgestado.Col,sgestado.Row]),1,5) <> '') then
  begin
    if QEstado.Locate('nombre',Trim(sgestado.Cells[0,sgestado.Row]),[]) then
    begin
      Application.CreateForm(tfrmCuentasAcumulan, frmCuentasAcumulan);
      frmCuentasAcumulan.QCuentas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      frmCuentasAcumulan.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;
      frmCuentasAcumulan.QCuentas.Parameters.ParamByName('mes').Value := sgestado.Col;
      frmCuentasAcumulan.QCuentas.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
      frmCuentasAcumulan.QCuentas.Open;
      if frmCuentasAcumulan.QCuentas.RecordCount > 0 then
      begin
        frmCuentasAcumulan.ShowModal;
        if frmCuentasAcumulan.ModalResult = mrOk then
        begin
          frmMain.ActivaForma(tfrmConsMovimiento, tform(frmConsMovimiento));
          frmConsMovimiento.edCuenta.Text := frmCuentasAcumulan.QCuentascuenta_sumar.Value;
          frmConsMovimiento.Fecha1.Date   := StartOfAMonth(spAno.Value, sgestado.Col);
          frmConsMovimiento.Fecha2.Date   := EndOfAMonth(spAno.Value, sgestado.Col);
          frmConsMovimiento.btRefreshClick(Self);
        end;
      end
      else
      begin
        frmMain.ActivaForma(tfrmConsMovimiento, tform(frmConsMovimiento));
        frmConsMovimiento.edCuenta.Text := QEstadocuenta.Value;
        frmConsMovimiento.Fecha1.Date   := StartOfAMonth(spAno.Value, sgestado.Col);
        frmConsMovimiento.Fecha2.Date   := EndOfAMonth(spAno.Value, sgestado.Col);
        frmConsMovimiento.btRefreshClick(Self);
      end;
      frmCuentasAcumulan.Release;
    end;
  end;
end;

procedure TfrmRepSituacionAnual.sgestadoSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  //if ACol = 0 then CanSelect := False;
end;

end.
