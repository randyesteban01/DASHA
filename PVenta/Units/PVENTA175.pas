unit PVENTA175;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, DB, ADODB,
  QuerySearchDlgADO, Menus, Calendar, Spin;


type
  TfrmPronosticoCobro = class(TForm)
    Panel2: TPanel;
    btClose: TBitBtn;
    btRefresh: TBitBtn;
    Search: TQrySearchDlgADO;
    sgcalendar: TStringGrid;
    Calendar1: TCalendar;
    QCxC: TADOQuery;
    QCxCmov_fechavence: TDateTimeField;
    QCxCsaldo: TBCDField;
    spAno: TSpinEdit;
    cbMes: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure sgcalendarDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure cbMesChange(Sender: TObject);
    procedure spAnoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure llenadias;
  end;

var
  frmPronosticoCobro: TfrmPronosticoCobro;

implementation

uses SIGMA01, SIGMA00, DateUtils;

{$R *.dfm}

procedure TfrmPronosticoCobro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmPronosticoCobro.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPronosticoCobro.FormPaint(Sender: TObject);
begin
  with frmPronosticoCobro do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmPronosticoCobro.FormCreate(Sender: TObject);
begin
  spano.Value := yearof(Date);
  cbMes.ItemIndex := MonthOf(date)-1;
  Calendar1.CalendarDate := date;
  sgcalendar.Cells[0,0] := 'DOMINGO';
  sgcalendar.Cells[1,0] := 'LUNES';
  sgcalendar.Cells[2,0] := 'MARTES';
  sgcalendar.Cells[3,0] := 'MIERCOLES';
  sgcalendar.Cells[4,0] := 'JUEVES';
  sgcalendar.Cells[5,0] := 'VIERNES';
  sgcalendar.Cells[6,0] := 'SABADO';
  Calendar1.Day := DayOf(date);
  llenadias;
end;

procedure TfrmPronosticoCobro.FormResize(Sender: TObject);
begin
  sgcalendar.DefaultColWidth := trunc(sgcalendar.Width/7)-2;
  sgcalendar.DefaultRowHeight := trunc(sgcalendar.Height/7)-2;
end;

procedure TfrmPronosticoCobro.llenadias;
var
  col, fil : integer;
begin
  QCxC.Close;
  QCxC.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QCxC.Parameters.ParamByName('ano').Value := Calendar1.Year;
  QCxC.Parameters.ParamByName('mes').Value := Calendar1.Month;
  QCxC.Open;

  for col := 0 to 6 do
    for fil := 1 to 6 do
    begin
      sgcalendar.Cells[col,fil] := Calendar1.CellText[col,fil];
      if trim(sgcalendar.Cells[col, fil]) <> '' then
      begin
        QCxC.DisableControls;
        QCxC.First;
        while not QCxC.Eof do
        begin
          if (trim(sgcalendar.Cells[col, fil]) = inttostr(DayOf(QCxCmov_fechavence.Value))) then
          begin
            sgcalendar.Cells[col,fil] := sgcalendar.Cells[col,fil] + '      ' + '$'+format('%n',[QCxCsaldo.Value]);
            break;
          end;
          QCxC.Next;
        end;
        QCxC.EnableControls;
      end;
    end;
end;

procedure TfrmPronosticoCobro.sgcalendarDrawCell(Sender: TObject; ACol,
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

      {DT_CENTER: ExtTextOut(Handle, Left + (Right - Left - TextWidth(Text)) div 2,
              Top + DY, ETO_OPAQUE or ETO_CLIPPED, @ARect,
              StrPCopy(S, Text), Length(Text), nil);}

      DT_CENTER: ExtTextOut(Handle, Left + (Right - Left - TextWidth(Text)) div 2,
              (Height) div 20, ETO_OPAQUE or ETO_CLIPPED, @ARect,
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
  with sgcalendar do
  begin
    {if (ACol > 1) then
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
    end;}

    // Right-justify columns 0-2
    // Spalten 0-2 rechts ausrichten.
   {if (ACol > 1) and (ARow > 0) then
      Display(sgreporte, sgreporte.Cells[ACol, ARow], taRightJustify);}

   if (ARow = 0) then
   begin
      Canvas.Font.Style := [fsBold];
      Canvas.FillRect(rect);
      Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
      Display(sgcalendar, sgcalendar.Cells[ACol, ARow], taCenter);
   end;

   if (trim(Cells[ACol, ARow]) = inttostr(DayOf(date))) and (Calendar1.Year = YearOf(date)) and (Calendar1.Month = MonthOf(date)) then
   begin
      Canvas.Font.Size := 14;
      Canvas.Font.Style := [fsBold];
      Canvas.FillRect(rect);
      Canvas.TextOut(Rect.left +1, Rect.top +1, Cells[ACol,ARow]);
   end;

   if (gdSelected in State) or (gdFocused in State) then
   begin
     Canvas.Brush.Color := SelectedColor;
     Canvas.Font.Color  := clWhite;
     Canvas.FillRect(Rect);
     Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[aCol, aRow]);
   end;
  end;
end;


procedure TfrmPronosticoCobro.cbMesChange(Sender: TObject);
begin
  Calendar1.Year := spano.Value;
  Calendar1.Month := cbMes.ItemIndex + 1;
  llenadias;
end;

procedure TfrmPronosticoCobro.spAnoChange(Sender: TObject);
begin
  cbMesChange(self);
end;

end.
