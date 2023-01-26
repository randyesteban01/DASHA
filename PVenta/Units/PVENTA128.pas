unit PVENTA128;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery,
  ADODB;

type
  TfrmMovProductoFactura = class(TForm)
    sgfac: TStringGrid;
    BitBtn2: TBitBtn;
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    QProd: TADOQuery;
    QProdPRO_CODIGO: TIntegerField;
    QProdPRO_NOMBRE: TIBStringField;
    QProdCANTIDAD: TFloatField;
    dsProd: TDataSource;
    QProdPRO_RORIGINAL: TIBStringField;
    Button1: TButton;
    QProdDET_MEDIDA: TIBStringField;
    Button2: TButton;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure sgfacKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sgfacDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BuscaProductos;
  end;

var
  frmMovProductoFactura: TfrmMovProductoFactura;

implementation

uses SIGMA01, RVENTA66;

{$R *.dfm}

procedure TfrmMovProductoFactura.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMovProductoFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmMovProductoFactura.FormPaint(Sender: TObject);
begin
  frmMovProductoFactura.top := 15;
  frmMovProductoFactura.Left := 10;
end;

procedure TfrmMovProductoFactura.sgfacKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if sgfac.Col <> 2 then
      sgfac.Col := sgfac.Col + 1
    else
    begin
      sgfac.RowCount := sgfac.RowCount + 1;
      sgfac.Cells[0,sgfac.Row+1] := sgfac.Cells[0,sgfac.Row];
      sgfac.Cells[1,sgfac.Row+1] := sgfac.Cells[1,sgfac.Row];
      sgfac.Row := sgfac.Row + 1;
      sgfac.Col := 2;
    end;
  end;
end;

procedure TfrmMovProductoFactura.FormCreate(Sender: TObject);
var
  a : integer;
begin
  sgfac.Cells[0,0] := '(A) o (B)';
  sgfac.Cells[1,0] := 'Tipo Fact.';
  sgfac.Cells[2,0] := 'Numero';

  for a := 1 to sgfac.RowCount -1 do
    sgfac.Cells[0,a] := 'A';
end;

procedure TfrmMovProductoFactura.BuscaProductos;
var
  a : integer;
  operacion : string;
begin
  QProd.Close;
  QProd.SQL.Clear;
  QProd.SQL.Add('SELECT PRO_CODIGO, PRO_RORIGINAL, DET_MEDIDA, PRO_NOMBRE,');
  QProd.SQL.Add('SUM(DET_CANTIDAD) AS CANTIDAD');
  QProd.SQL.Add('FROM DET_FACTURA');
  QProd.SQL.Add('WHERE 1=1');
  operacion := 'AND';
  for a := 1 to sgfac.RowCount -1 do
  begin
    if a > 1 then operacion := 'OR';
    if (trim(sgfac.Cells[0,a]) <> '') and (trim(sgfac.Cells[1,a]) <> '')
    and (trim(sgfac.Cells[2,a]) <> '') then
    begin
      QProd.SQL.Add(operacion+' (FAC_FORMA = '+#39+uppercase(sgfac.Cells[0,a])+#39);
      QProd.SQL.Add('AND TFA_CODIGO = '+sgfac.Cells[1,a]);
      QProd.SQL.Add('AND EMP_CODIGO = '+INTTOSTR(dm.vp_cia));
      QProd.SQL.Add('AND fac_numero = '+sgfac.Cells[2,a]+')');
    end;
  end;
  QProd.SQL.Add('group by PRO_CODIGO, PRO_RORIGINAL, DET_MEDIDA, PRO_NOMBRE');
  QProd.SQL.Add('order by pro_nombre');
  QProd.Open;
end;

procedure TfrmMovProductoFactura.Button1Click(Sender: TObject);
begin
  BuscaProductos;
end;

procedure TfrmMovProductoFactura.sgfacDrawCell(Sender: TObject; ACol,
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
              StrPCopy(S, uppercase(Text)), Length(Text), nil);
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
  Display(sgfac, sgfac.Cells[ACol, ARow], taCenter);
end;

procedure TfrmMovProductoFactura.Button2Click(Sender: TObject);
var
  a : integer;
begin
  for a := 1 to sgfac.RowCount -1 do
  begin
    sgfac.Cells[0,a] := '';
    sgfac.Cells[1,a] := '';
    sgfac.Cells[2,a] := '';
  end;

  sgfac.RowCount := 2;
  sgfac.SetFocus;
  sgfac.Col := 0;
  QProd.Close;
end;

procedure TfrmMovProductoFactura.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRepMovProductoFactura, RepMovProductoFactura);
  RepMovProductoFactura.QProd.SQL := QProd.SQL;
  RepMovProductoFactura.QProd.Open;
  RepMovProductoFactura.PrinterSetup;
  RepMovProductoFactura.Preview;
  RepMovProductoFactura.Destroy;
end;

end.
