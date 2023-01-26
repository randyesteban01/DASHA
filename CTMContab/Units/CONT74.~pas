unit CONT74;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB, ADODB, Spin, DateUtils,
  QExport, QExportXLS;

type
  TfrmRepResultadoAnual = class(TForm)
    Panel1: TPanel;
    QEstado: TADOStoredProc;
    dsEstado: TDataSource;
    Label3: TLabel;
    spAno: TSpinEdit;
    sgestado: TStringGrid;
    Panel2: TPanel;
    btprocesar: TBitBtn;
    btexportar: TBitBtn;
    btClose: TBitBtn;
    QEstadocuenta: TStringField;
    QEstadocontrol: TStringField;
    QEstadonombre: TStringField;
    QEstadoene: TBCDField;
    QEstadofeb: TBCDField;
    QEstadomar: TBCDField;
    QEstadoabr: TBCDField;
    QEstadomay: TBCDField;
    QEstadojun: TBCDField;
    QEstadojul: TBCDField;
    QEstadoago: TBCDField;
    QEstadosep: TBCDField;
    QEstadooct: TBCDField;
    QEstadonov: TBCDField;
    QEstadodic: TBCDField;
    QEstadotot: TBCDField;
    QEstadoporc: TBCDField;
    ListBox1: TListBox;
    lbcolor: TListBox;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepResultadoAnual: TfrmRepResultadoAnual;

implementation

uses SIGMA01, StdConvs, SIGMA00, CONT17, CONT73;

{$R *.dfm}

procedure TfrmRepResultadoAnual.FormPaint(Sender: TObject);
begin
  with frmRepResultadoAnual do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 125;
  end;
end;

procedure TfrmRepResultadoAnual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepResultadoAnual.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepResultadoAnual.btprocesarClick(Sender: TObject);
var
  col, lin, a : integer;
  l, color : string;
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
  QEstado.Parameters.ParamByName('@area').Value := 1;
  QEstado.Open;

  QEstado.DisableControls;
  QEstado.First;
  lin := 1;
  sgestado.RowCount := 2;
  ListBox1.items.Clear;
  ListBox1.Items.Add('');
  lbcolor.Items.Clear;
  lbcolor.Items.Add('');
  while not QEstado.Eof do
  begin
    Application.ProcessMessages;
    if color = 'B' then
      color := 'V'
    else
      color := 'B';
    lbcolor.Items.Add(color);

    
    //if Trim(QEstadocuenta.AsString) <> 'B' then
    //begin
      ListBox1.Items.Add(QEstadocontrol.AsString);

      if QEstadocontrol.Value <> 'T' then
        sgestado.Cells[00,lin] := l + QEstadocuenta.AsString;
        
      sgestado.Cells[01,lin] := l + QEstadonombre.AsString;
      sgestado.Cells[02,lin] := Format('%n',[QEstadoene.AsFloat]);
      sgestado.Cells[03,lin] := Format('%n',[QEstadoFeb.AsFloat]);
      sgestado.Cells[04,lin] := Format('%n',[QEstadoMar.AsFloat]);
      sgestado.Cells[05,lin] := Format('%n',[QEstadoAbr.AsFloat]);
      sgestado.Cells[06,lin] := Format('%n',[QEstadoMay.AsFloat]);
      sgestado.Cells[07,lin] := Format('%n',[QEstadoJun.AsFloat]);
      sgestado.Cells[08,lin] := Format('%n',[QEstadoJul.AsFloat]);
      sgestado.Cells[09,lin] := Format('%n',[QEstadoAgo.AsFloat]);
      sgestado.Cells[10,lin] := Format('%n',[QEstadoSep.AsFloat]);
      sgestado.Cells[11,lin] := Format('%n',[QEstadoOct.AsFloat]);
      sgestado.Cells[12,lin] := Format('%n',[QEstadoNov.AsFloat]);
      sgestado.Cells[13,lin] := Format('%n',[QEstadoDic.AsFloat]);
      sgestado.Cells[14,lin] := Format('%n',[QEstadoTot.AsFloat]);

      if ((copy(QEstadonombre.AsString,1,5) <> 'TOTAL') and (QEstadocontrol.Value <> 'T')) or (Trim(QEstadonombre.AsString) = '') then
      begin
        if QEstadoene.AsFloat = 0 then sgestado.Cells[02,lin] := '';
        if QEstadoFeb.AsFloat = 0 then sgestado.Cells[03,lin] := '';
        if QEstadoMar.AsFloat = 0 then sgestado.Cells[04,lin] := '';
        if QEstadoAbr.AsFloat = 0 then sgestado.Cells[05,lin] := '';
        if QEstadoMay.AsFloat = 0 then sgestado.Cells[06,lin] := '';
        if QEstadoJun.AsFloat = 0 then sgestado.Cells[07,lin] := '';
        if QEstadoJul.AsFloat = 0 then sgestado.Cells[08,lin] := '';
        if QEstadoAgo.AsFloat = 0 then sgestado.Cells[09,lin] := '';
        if QEstadoSep.AsFloat = 0 then sgestado.Cells[10,lin] := '';
        if QEstadoOct.AsFloat = 0 then sgestado.Cells[11,lin] := '';
        if QEstadoNov.AsFloat = 0 then sgestado.Cells[12,lin] := '';
        if QEstadoDic.AsFloat = 0 then sgestado.Cells[13,lin] := '';
        if QEstadoTot.AsFloat = 0 then sgestado.Cells[14,lin] := '';
      end;

      lin := lin + 1;
      sgestado.RowCount := sgestado.RowCount + 1;

      if copy(QEstadonombre.AsString,1,5) = 'TOTAL' then
      begin
        //lin := lin + 1;
        sgestado.RowCount := sgestado.RowCount + 1;
        //ListBox1.Items.Add(QEstadocontrol.AsString);
      end;
    //end;
    
    QEstado.Next;
  end;
  QEstado.First;
  QEstado.EnableControls;

  sgestado.RowCount := sgestado.RowCount - 4;

  sgestado.SetFocus;

  Screen.Cursor := crDefault;
end;

procedure TfrmRepResultadoAnual.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  sgestado.Cells[02,0] := 'Enero';
  sgestado.Cells[03,0] := 'Febrero';
  sgestado.Cells[04,0] := 'Marzo';
  sgestado.Cells[05,0] := 'Abril';
  sgestado.Cells[06,0] := 'Mayo';
  sgestado.Cells[07,0] := 'Junio';
  sgestado.Cells[08,0] := 'Julio';
  sgestado.Cells[09,0] := 'Agosto';
  sgestado.Cells[10,0] := 'Septiembre';
  sgestado.Cells[11,0] := 'Octubre';
  sgestado.Cells[12,0] := 'Noviembre';
  sgestado.Cells[13,0] := 'Diciembre';
  sgestado.Cells[14,0] := 'Total';
end;

procedure TfrmRepResultadoAnual.sgestadoDrawCell(Sender: TObject; ACol,
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

        if ListBox1.Items[ARow] = 'T' then
        begin
          Canvas.Brush.Color:=clSilver;
          Canvas.Font.Style := [fsBold];
          Canvas.FillRect(rect);
          Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
        end;
      except
      end;
    end;

      if (ACol > 1) then
      begin
        if pos('-',sgestado.Cells[ACol, ARow]) > 0 then
        begin
          Canvas.Font.Color:=Clred;
          Canvas.FillRect(rect);
          Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
        end;
      end;

    //if copy(sgestado.Cells[1,ARow],1,5) = 'TOTAL' then
    if trim(sgestado.Cells[0,ARow]) = '' then
    begin
      Canvas.Brush.Color:=clSilver;
      Canvas.Font.Style := [fsBold];
      Canvas.FillRect(rect);
      Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
    end;

    // Right-justify columns 0-2
    // Spalten 0-2 rechts ausrichten.
   if (ACol > 1) and (ARow > 0) then
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

procedure TfrmRepResultadoAnual.btexportarClick(Sender: TObject);
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

procedure TfrmRepResultadoAnual.sgestadoDblClick(Sender: TObject);
begin
  if (copy(Trim(sgestado.Cells[1,sgestado.Row]),1,5) <> 'TOTAL') and
  (copy(Trim(sgestado.Cells[1,sgestado.Row]),1,5) <> '') and
  (copy(Trim(sgestado.Cells[sgestado.Col,sgestado.Row]),1,5) <> '') and
  (sgestado.Col > 1) then
  begin
    if QEstado.Locate('cuenta',Trim(sgestado.Cells[0,sgestado.Row]),[]) then
    begin
      Application.CreateForm(tfrmCuentasAcumulan, frmCuentasAcumulan);
      frmCuentasAcumulan.QCuentas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      frmCuentasAcumulan.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;
      frmCuentasAcumulan.QCuentas.Parameters.ParamByName('mes').Value := sgestado.Col-1;
      frmCuentasAcumulan.QCuentas.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
      frmCuentasAcumulan.QCuentas.Open;
      if frmCuentasAcumulan.QCuentas.RecordCount > 0 then
      begin
        frmCuentasAcumulan.ShowModal;
        if frmCuentasAcumulan.ModalResult = mrOk then
        begin
          frmMain.ActivaForma(tfrmConsMovimiento, tform(frmConsMovimiento));
          frmConsMovimiento.edCuenta.Text := frmCuentasAcumulan.QCuentascuenta_sumar.Value;
          frmConsMovimiento.Fecha1.Date   := StartOfAMonth(spAno.Value, sgestado.Col-1);
          frmConsMovimiento.Fecha2.Date   := EndOfAMonth(spAno.Value, sgestado.Col-1);
          frmConsMovimiento.btRefreshClick(Self);
        end;
      end
      else
      begin
        frmMain.ActivaForma(tfrmConsMovimiento, tform(frmConsMovimiento));
        frmConsMovimiento.edCuenta.Text := QEstadocuenta.Value;
        frmConsMovimiento.Fecha1.Date   := StartOfAMonth(spAno.Value, sgestado.Col-1);
        frmConsMovimiento.Fecha2.Date   := EndOfAMonth(spAno.Value, sgestado.Col-1);
        frmConsMovimiento.btRefreshClick(Self);
      end;
      frmCuentasAcumulan.Release;
    end;
  end;
end;

end.
