unit CONT48;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, Buttons, DB, IBCustomDataSet, IBQuery, ADODB;

type
  TfrmCopiaCatalogo = class(TForm)
    sgOrigen: TStringGrid;
    Label1: TLabel;
    sgDestino: TStringGrid;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    btClose: TBitBtn;
    Query1: TADOQuery;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure sgOrigenDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgOrigenSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCopiaCatalogo: TfrmCopiaCatalogo;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmCopiaCatalogo.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCopiaCatalogo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmCopiaCatalogo.FormActivate(Sender: TObject);
var
  a : integer;
begin
  sgOrigen.RowCount  := 2;
  sgDestino.RowCount := 2;
  a := 1;

  sgOrigen.Cells[0,0]  := 'Código';
  sgOrigen.Cells[1,0]  := 'Nombre de la Compañía';
  sgDestino.Cells[0,0] := 'Código';
  sgDestino.Cells[1,0] := 'Nombre de la Compañía';

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select emp_Codigo, emp_nombre');
  dm.Query1.SQL.Add('from empresas');
  dm.Query1.SQL.Add('order by emp_nombre');
  dm.Query1.Open;
  dm.Query1.DisableControls;
  while not dm.Query1.Eof do
  begin
    sgOrigen.Cells[0, a] := dm.Query1.FieldbyName('emp_codigo').AsString;
    sgOrigen.Cells[1, a] := dm.Query1.FieldbyName('emp_nombre').AsString;
    a := a + 1;
    sgOrigen.RowCount := sgOrigen.RowCount + 1;
    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  sgOrigen.RowCount := sgOrigen.RowCount - 1;
end;

procedure TfrmCopiaCatalogo.sgOrigenDrawCell(Sender: TObject; ACol,
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
       Canvas.Font.Name := 'Verdana';
       Canvas.Font.Style := [fsBold];
    end;
    Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
    Canvas.FrameRect(Rect);
  end;
end;

procedure TfrmCopiaCatalogo.sgOrigenSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var
  a : integer;
begin
  a := 1;
  sgDestino.RowCount := 2;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select emp_Codigo, emp_nombre');
  Query1.SQL.Add('from empresas');
  Query1.SQL.Add('where emp_codigo <> :emp');
  Query1.SQL.Add('order by emp_nombre');
  Query1.Parameters.ParamByName('emp').Value := StrToInt(sgOrigen.Cells[0,ARow]);
  Query1.Open;
  Query1.DisableControls;
  while not Query1.Eof do
  begin
    sgDestino.Cells[0, a] := Query1.FieldbyName('emp_codigo').AsString;
    sgDestino.Cells[1, a] := Query1.FieldbyName('emp_nombre').AsString;
    a := a + 1;
    sgDestino.RowCount := sgDestino.RowCount + 1;
    Query1.Next;
  end;
  Query1.EnableControls;
  sgDestino.RowCount := sgDestino.RowCount - 1;
end;

procedure TfrmCopiaCatalogo.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('EL CATALOGO QUE ESTA EN LA COMPAÑIA DESTINO'+#13+
                'VA A SER ELIMINADO, ESTA SEGURO?',mtConfirmation,
                [mbyes,mbno], 0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute contpr_copia_catalogo :origen, :destino, :usu');
    dm.Query1.Parameters.ParamByName('origen').Value  := StrToInt(sgOrigen.Cells[0, sgOrigen.Row]);
    dm.Query1.Parameters.ParamByName('destino').Value := StrToInt(sgDestino.Cells[0, sgDestino.Row]);
    dm.Query1.Parameters.ParamByName('usu').Value     := dm.Usuario;
    dm.Query1.ExecSQL;
    Showmessage('SE HA EJECUTADO LA COPIA DEL CATALOGO');
  end;
end;

procedure TfrmCopiaCatalogo.FormPaint(Sender: TObject);
begin
  frmCopiaCatalogo.Top := 10;
  frmCopiaCatalogo.left := 5;
end;

end.
