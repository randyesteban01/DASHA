unit PVENTA113;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Spin, Buttons, Grids, DB, IBCustomDataSet,
  IBQuery, ComCtrls, DateUtils;

type
  TfrmConsOperaciones = class(TForm)
    Panel2: TPanel;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    Label1: TLabel;
    cbMes: TComboBox;
    spAno: TSpinEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    sgIng: TStringGrid;
    sgGas: TStringGrid;
    Fec1: TDateTimePicker;
    Fec2: TDateTimePicker;
    lbTotal: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure sgIngDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgGasDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsOperaciones: TfrmConsOperaciones;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmConsOperaciones.FormCreate(Sender: TObject);
var
 ano, mes, dia : word;
begin
  decodedate(date, ano, mes, dia);
  spAno.Value := ano;
  cbMes.ItemIndex := mes - 1;
  //Ingresos
  sgIng.Cells[0,0] := 'VENTA CONTADO';
  sgIng.Cells[0,1] := 'VENTA CREDITO';
  sgIng.Cells[0,2] := 'RECIBOS';
  sgIng.Cells[0,3] := 'TOTAL INGRESOS';
  sgIng.Cells[0,4] := 'CUENTAS X COBRAR';

  //Gastos
  sgGas.Cells[0,0] := 'COMPRAS';
  sgGas.Cells[0,1] := 'PAGOS';
  sgGas.Cells[0,2] := 'DESEMBOLSOS';
  sgGas.Cells[0,3] := 'TOTAL EGRESOS';
  sgGas.Cells[0,4] := 'CUENTAS X PAGAR';

  sgIng.Row := 7;
  sgGas.Row := 7;
end;

procedure TfrmConsOperaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsOperaciones.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsOperaciones.FormPaint(Sender: TObject);
begin
  frmConsOperaciones.left := 20;
  frmConsOperaciones.top  := 20;
end;

procedure TfrmConsOperaciones.btRefreshClick(Sender: TObject);
var
  Total : Double;
begin
  Screen.Cursor := crHourGlass;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from pr_operaciones (:emp, :ano, :mes)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('ano').Value   := spAno.Value;
  dm.Query1.Parameters.ParamByName('mes').Value   := cbMes.ItemIndex+1;
  dm.Query1.Open;
  sgIng.Cells[1,0] := Format('%n',[dm.Query1.FieldByName('contado').AsFloat]);
  sgIng.Cells[1,1] := Format('%n',[dm.Query1.FieldByName('credito').AsFloat]);
  sgIng.Cells[1,2] := Format('%n',[dm.Query1.FieldByName('recibos').AsFloat]);
  sgIng.Cells[1,3] := Format('%n',[dm.Query1.FieldByName('contado').AsFloat+
                                   dm.Query1.FieldByName('credito').AsFloat+
                                   dm.Query1.FieldByName('recibos').AsFloat]);
  sgIng.Cells[1,4] := Format('%n',[dm.Query1.FieldByName('cxc').AsFloat]);

  sgGas.Cells[1,0] := Format('%n',[dm.Query1.FieldByName('compras').AsFloat]);
  sgGas.Cells[1,1] := Format('%n',[dm.Query1.FieldByName('pagos').AsFloat]);
  sgGas.Cells[1,2] := Format('%n',[dm.Query1.FieldByName('desem').AsFloat]);
  sgGas.Cells[1,3] := Format('%n',[dm.Query1.FieldByName('compras').AsFloat+
                                   dm.Query1.FieldByName('pagos').AsFloat+
                                   dm.Query1.FieldByName('desem').AsFloat]);
  sgGas.Cells[1,4] := Format('%n',[dm.Query1.FieldByName('cxp').AsFloat]);

  Total := (dm.Query1.FieldByName('contado').AsFloat+
           dm.Query1.FieldByName('recibos').AsFloat)-
           (dm.Query1.FieldByName('pagos').AsFloat+
           dm.Query1.FieldByName('desem').AsFloat);
  lbTotal.Caption := Format('%n',[Total]);
  if Total < 0 then
    lbTotal.Font.Color := clMaroon
  else
    lbTotal.Font.Color := clBlue;

  Screen.Cursor := crDefault;
end;

procedure TfrmConsOperaciones.sgIngDrawCell(Sender: TObject; ACol,
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
    if ARow = 3 then
      Canvas.Font.Style := [fsbold];
    Canvas.Font.Color := clBlack;
    // Draw the Band
    Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
    Canvas.FrameRect(Rect);
  end;

  // Right-justify columns 0-2
  // Spalten 0-2 rechts ausrichten.
  if ACol = 1 then
    Display(sgIng, sgIng.Cells[ACol, ARow], taRightJustify);
end;

procedure TfrmConsOperaciones.sgGasDrawCell(Sender: TObject; ACol,
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
    if ARow = 3 then
      Canvas.Font.Style := [fsbold];
    // Don't change color for first Column, first row
    Canvas.Font.Color := clBlack;
    // Draw the Band
    Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
    Canvas.FrameRect(Rect);
  end;

  // Right-justify columns 0-2
  // Spalten 0-2 rechts ausrichten.
  if ACol = 1 then
    Display(sgGas, sgGas.Cells[ACol, ARow], taRightJustify);
{  if ACol = 3 then
    Display(sgIng, sgIng.Cells[ACol, ARow], taCenter);
  if (ACol in[0,2,3,4]) and (ARow = 0) then
    Display(sgIng, sgIng.Cells[ACol, ARow], taCenter);}
end;

end.
