unit CONT29;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, IBCustomDataSet, IBQuery, ExtCtrls,
  Spin, Buttons, ComCtrls, IBUpdateSQL, ADODB, DBCtrls;

type
  TfrmConfigCK = class(TForm)
    DBGrid1: TDBGrid;
    QBancos: TADOQuery;
    QBancosBAN_NOMBRE: TIBStringField;
    QBancosBAN_CODIGO: TIntegerField;
    dsBancos: TDataSource;
    sgConfig: TStringGrid;
    BitBtn1: TBitBtn;
    btClose: TBitBtn;
    btPost: TBitBtn;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    upCol: TUpDown;
    QConfig: TADOQuery;
    QConfigBAN_CODIGO: TIntegerField;
    QConfigCOL_ANO: TIntegerField;
    QConfigCOL_CONCEPTO1: TIntegerField;
    QConfigCOL_CONCEPTO2: TIntegerField;
    QConfigCOL_DIA: TIntegerField;
    QConfigCOL_FECHA: TIntegerField;
    QConfigCOL_MES: TIntegerField;
    QConfigCOL_MONTO: TIntegerField;
    QConfigCOL_MONTOCONCEPTO: TIntegerField;
    QConfigCOL_MONTOLETRA: TIntegerField;
    QConfigCOL_NUMEROCK: TIntegerField;
    QConfigEMP_CODIGO: TIntegerField;
    QConfigLIN_ANO: TIntegerField;
    QConfigLIN_CONCEPTO1: TIntegerField;
    QConfigLIN_CONCEPTO2: TIntegerField;
    QConfigLIN_DIA: TIntegerField;
    QConfigLIN_FECHA: TIntegerField;
    QConfigLIN_MES: TIntegerField;
    QConfigLIN_MONTO: TIntegerField;
    QConfigLIN_MONTOCONCEPTO: TIntegerField;
    QConfigLIN_MONTOLETRA: TIntegerField;
    QConfigLIN_NUMEROCK: TIntegerField;
    QConfigPAR_IMPNUMEROCKCONCEPTO: TIBStringField;
    QConfigPAR_IMPRIMEDET: TIBStringField;
    QConfigCOL_NUMEROCKCONC: TIntegerField;
    QConfigLIN_NUMEROCKCONC: TIntegerField;
    QConfigCOL_DETALLE: TIntegerField;
    QConfigLIN_DETALLE: TIntegerField;
    QBancosEMP_CODIGO: TIntegerField;
    QConfigCOL_BENEF: TIntegerField;
    QConfigLIN_BENEF: TIntegerField;
    QConfigCOL_CUENTA: TIntegerField;
    QConfigCOL_DESCUENTA: TIntegerField;
    QConfigCOL_DEBITO: TIntegerField;
    QConfigCOL_CREDITO: TIntegerField;
    QConfigLIN_NOMCIA: TIntegerField;
    QConfigCOL_NOMCIA: TIntegerField;
    QConfigLIN_DIRCIA: TIntegerField;
    QConfigCOL_DIRCIA: TIntegerField;
    QConfigLIN_RNC: TIntegerField;
    QConfigCOL_RNC: TIntegerField;
    QConfigLIN_NOMBANCO: TIntegerField;
    QConfigCOL_NOMBANCO: TIntegerField;
    QConfigLIN_CTABANCO: TIntegerField;
    QConfigCOL_CTABANCO: TIntegerField;
    QBancosSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    QSucursalemp_codigo: TIntegerField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label14: TLabel;
    QConfigSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QConfigcol_concepto3: TIntegerField;
    QConfiglin_concepto3: TIntegerField;
    QConfigcol_fechackconc: TIntegerField;
    QConfiglin_fechackconc: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure sgConfigSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure sgConfigEnter(Sender: TObject);
    procedure sgConfigDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgConfigSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure BitBtn1Click(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsBancosDataChange(Sender: TObject; Field: TField);
    procedure upColClick(Sender: TObject; Button: TUDBtnType);
    procedure btPostClick(Sender: TObject);
    procedure QBancosAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateOptions(const Grid : TStringGrid; const uCol : TUpDown;
                const ACol, ARow: Integer);
  end;

var
  frmConfigCK: TfrmConfigCK;

implementation

uses SIGMA01;                   


{$R *.dfm}

procedure TfrmConfigCK.FormActivate(Sender: TObject);
begin
  if not QBancos.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
    QBancos.Open;
    QBancos.First;
  end;
end;

procedure TfrmConfigCK.sgConfigSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if ACol = 0 then CanSelect := False;
  if (ACol = 2) and (ARow in [14,15,16,17]) then
  begin
    CanSelect := False;
    sgConfig.Col := 1;
    sgConfig.Row := ARow;
  end;
  if (ACol = 1) and (ARow in [12]) then
  begin
    CanSelect := False;
    sgConfig.Col := 2;
    sgConfig.Row := ARow;
  end;
  UpdateOptions(sgConfig, upCol, ACol, ARow);
end;

procedure TfrmConfigCK.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to 10 do
  begin
    sgConfig.Cells[1, a] := '0';
    sgConfig.Cells[2, a] := '0';
  end;
  sgConfig.Cells[0,00] := 'Número del Cheque';
  sgConfig.Cells[0,01] := 'Día';
  sgConfig.Cells[0,02] := 'Mes';
  sgConfig.Cells[0,03] := 'Año';
  sgConfig.Cells[0,04] := 'Monto en Letra';
  sgConfig.Cells[0,05] := 'Monto en Número';
  sgConfig.Cells[0,06] := 'Concepto 1';
  sgConfig.Cells[0,07] := 'Concepto 2';
  sgConfig.Cells[0,08] := 'Concepto 3';
  sgConfig.Cells[0,09] := '# Cheque Concepto';
  sgConfig.Cells[0,10] := 'Monto Cheque Concepto';
  sgConfig.Cells[0,11] := 'Fecha Cheque Concepto';
  sgConfig.Cells[0,12] := 'Detalle de las Cuentas';
  sgConfig.Cells[0,13] := 'Beneficiario';
  sgConfig.Cells[0,14] := '# de Cuenta';
  sgConfig.Cells[0,15] := 'Descripción Cuenta';
  sgConfig.Cells[0,16] := 'Débito';
  sgConfig.Cells[0,17] := 'Crédito';
  sgConfig.Cells[0,18] := 'Nombre Compañía';
  sgConfig.Cells[0,19] := 'Dirección Compañía';
  sgConfig.Cells[0,20] := 'RNC Compañía';
  sgConfig.Cells[0,21] := 'Nombre del Banco';
  sgConfig.Cells[0,22] := 'Cuenta de Banco';
end;

procedure TfrmConfigCK.FormPaint(Sender: TObject);
begin
  frmConfigCK.Top := 3;
  frmConfigCK.left := 10;
end;

procedure TfrmConfigCK.sgConfigEnter(Sender: TObject);
begin
  sgConfig.Col := 1;
end;

procedure TfrmConfigCK.sgConfigDrawCell(Sender: TObject; ACol,
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
    if ACol = 0 then
    Begin
       Canvas.Font.Name := 'Verdana';
       Canvas.Brush.Color := clInfoBK;
    end;
    Canvas.TextRect(Rect, Rect.Left + 2, Rect.Top + 2, cells[acol, arow]);
    Canvas.FrameRect(Rect);
  end;

  // Right-justify columns 0-2
  // Spalten 0-2 rechts ausrichten.
  if ACol in [1,2] then
    Display(sgConfig, sgConfig.Cells[ACol, ARow], taRightJustify);
end;

procedure TfrmConfigCK.sgConfigSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: String);
begin
  try
    upCol.Position := StrToInt(Value);
  except
  end;
end;

procedure TfrmConfigCK.BitBtn1Click(Sender: TObject);
begin
  sgConfig.Cells[1,0] := '25';
  sgConfig.Cells[2,0] := '221';

  sgConfig.Cells[1,1] := '420';
  sgConfig.Cells[2,1] := '-21';

  sgConfig.Cells[1,2] := '500';
  sgConfig.Cells[2,2] := '-21';

  sgConfig.Cells[1,3] := '670';
  sgConfig.Cells[2,3] := '-21';

  sgConfig.Cells[1,4] := '107';
  sgConfig.Cells[2,4] := '47';

  sgConfig.Cells[1,5] := '600';
  sgConfig.Cells[2,5] := '20';

  sgConfig.Cells[1,6] := '81';
  sgConfig.Cells[2,6] := '221';

  sgConfig.Cells[1,7] := '81';
  sgConfig.Cells[2,7] := '235';

  sgConfig.Cells[1,8] := '81';
  sgConfig.Cells[2,8] := '249';

  sgConfig.Cells[1,9] := '25';
  sgConfig.Cells[2,9] := '221';

  sgConfig.Cells[1,10] := '600';
  sgConfig.Cells[2,10] := '221';

  sgConfig.Cells[1,12] := '107';
  sgConfig.Cells[2,12] := '20';
end;

procedure TfrmConfigCK.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConfigCK.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmConfigCK.UpdateOptions(const Grid : TStringGrid; const uCol : TUpDown;
const ACol, ARow: Integer);
var
  lR, lName : TRect;
begin
  if ACol >= 1 then
    uCol.Position := StrToInt(sgConfig.Cells[ACol,ARow]);

  uCol.Tag := ARow;
  if ACol > 0 then
  begin
    lName := sgConfig.CellRect(ACol - 1, ARow);
    lR := sgConfig.CellRect(ACol, ARow);
  end;

  // lR := sgOptions.CellRect(ACol, ARow);
  lR.Left     := lR.Left + sgConfig.Left;
  lR.Right    := lR.Right + sgConfig.Left;
  lR.Top      := lR.Top + sgConfig.Top;
  lR.Bottom   := lR.Bottom + sgConfig.Top;
  uCol.Left   := lR.Left + 1;
  uCol.Top    := lR.Top + 1;
//  uCol.Width  := (lR.Right + 1) - lR.Left;
  uCol.Height := (lR.Bottom + 1) - lR.Top;
end;


procedure TfrmConfigCK.dsBancosDataChange(Sender: TObject; Field: TField);
var
  a : integer;
begin
  if not QConfig.Active then QConfig.Open;
  sgConfig.Cells[1,00] := QConfigCOL_NUMEROCK.AsString;
  sgConfig.Cells[2,00] := QConfigLIN_NUMEROCK.AsString;
  sgConfig.Cells[1,01] := QConfigCOL_DIA.AsString;
  sgConfig.Cells[2,01] := QConfigLIN_DIA.AsString;
  sgConfig.Cells[1,02] := QConfigCOL_MES.AsString;
  sgConfig.Cells[2,02] := QConfigLIN_MES.AsString;
  sgConfig.Cells[1,03] := QConfigCOL_ANO.AsString;
  sgConfig.Cells[2,03] := QConfigLIN_ANO.AsString;
  sgConfig.Cells[1,04] := QConfigCOL_MONTOLETRA.AsString;
  sgConfig.Cells[2,04] := QConfigLIN_MONTOLETRA.AsString;
  sgConfig.Cells[1,05] := QConfigCOL_MONTO.AsString;
  sgConfig.Cells[2,05] := QConfigLIN_MONTO.AsString;
  sgConfig.Cells[1,06] := QConfigCOL_CONCEPTO1.AsString;
  sgConfig.Cells[2,06] := QConfigLIN_CONCEPTO1.AsString;
  sgConfig.Cells[1,07] := QConfigCOL_CONCEPTO2.AsString;
  sgConfig.Cells[2,07] := QConfigLIN_CONCEPTO2.AsString;
  sgConfig.Cells[1,08] := QConfigCOL_CONCEPTO3.AsString;
  sgConfig.Cells[2,08] := QConfigLIN_CONCEPTO3.AsString;
  sgConfig.Cells[1,09] := QConfigCOL_NUMEROCKCONC.AsString;
  sgConfig.Cells[2,09] := QConfigLIN_NUMEROCKCONC.AsString;
  sgConfig.Cells[1,10] := QConfigCOL_MONTOCONCEPTO.AsString;
  sgConfig.Cells[2,10] := QConfigLIN_MONTOCONCEPTO.AsString;
  sgConfig.Cells[1,11] := QConfigcol_fechackconc.AsString;
  sgConfig.Cells[2,11] := QConfiglin_fechackconc.AsString;
  sgConfig.Cells[1,12] := QConfigCOL_DETALLE.AsString;
  sgConfig.Cells[2,12] := QConfigLIN_DETALLE.AsString;
  sgConfig.Cells[1,13] := QConfigCOL_BENEF.AsString;
  sgConfig.Cells[2,13] := QConfigLIN_BENEF.AsString;
  sgConfig.Cells[1,14] := QConfigCOL_CUENTA.AsString;
  sgConfig.Cells[1,15] := QConfigCOL_DESCUENTA.AsString;
  sgConfig.Cells[1,16] := QConfigCOL_DEBITO.AsString;
  sgConfig.Cells[1,17] := QConfigCOL_CREDITO.AsString;
  sgConfig.Cells[2,18] := QConfigLIN_NOMCIA.AsString;
  sgConfig.Cells[1,18] := QConfigCOL_NOMCIA.AsString;
  sgConfig.Cells[2,19] := QConfigLIN_DIRCIA.AsString;
  sgConfig.Cells[1,19] := QConfigCOL_DIRCIA.AsString;
  sgConfig.Cells[2,20] := QConfigLIN_RNC.AsString;
  sgConfig.Cells[1,20] := QConfigCOL_RNC.AsString;
  sgConfig.Cells[2,21] := QConfigLIN_NOMBANCO.AsString;
  sgConfig.Cells[1,21] := QConfigCOL_NOMBANCO.AsString;
  sgConfig.Cells[2,22] := QConfigLIN_CTABANCO.AsString;
  sgConfig.Cells[1,22] := QConfigCOL_CTABANCO.AsString;

  for a := 0 to sgConfig.RowCount -1 do
  begin
    if sgConfig.Cells[1,a] = '' then sgConfig.Cells[1,a] := '0';
    if sgConfig.Cells[2,a] = '' then sgConfig.Cells[2,a] := '0';
  end;

  UpdateOptions(sgConfig, upCol, sgConfig.Col, sgConfig.Row);
end;

procedure TfrmConfigCK.upColClick(Sender: TObject; Button: TUDBtnType);
begin
  sgConfig.Cells[sgConfig.Col, sgConfig.Row] := IntToStr(upCol.Position);
end;

procedure TfrmConfigCK.btPostClick(Sender: TObject);
var
  fil : integer;
begin
  QConfig.Edit;
  QConfigSUC_CODIGO.Value       := QBancosSUC_CODIGO.Value;
  QConfigEMP_CODIGO.Value       := dm.QEmpresasEMP_CODIGO.Value;
  QConfigBAN_CODIGO.Value       := QBancosBAN_CODIGO.Value;
  QConfigCOL_NUMEROCK.Value     := StrToInt(sgConfig.Cells[1,00]);
  QConfigLIN_NUMEROCK.Value     := StrToInt(sgConfig.Cells[2,00]);
  QConfigCOL_DIA.Value          := StrToInt(sgConfig.Cells[1,01]);
  QConfigLIN_DIA.Value          := StrToInt(sgConfig.Cells[2,01]);
  QConfigCOL_MES.Value          := StrToInt(sgConfig.Cells[1,02]);
  QConfigLIN_MES.Value          := StrToInt(sgConfig.Cells[2,02]);
  QConfigCOL_ANO.Value          := StrToInt(sgConfig.Cells[1,03]);
  QConfigLIN_ANO.Value          := StrToInt(sgConfig.Cells[2,03]);
  QConfigCOL_MONTOLETRA.Value   := StrToInt(sgConfig.Cells[1,04]);
  QConfigLIN_MONTOLETRA.Value   := StrToInt(sgConfig.Cells[2,04]);
  QConfigCOL_MONTO.Value        := StrToInt(sgConfig.Cells[1,05]);
  QConfigLIN_MONTO.Value        := StrToInt(sgConfig.Cells[2,05]);
  QConfigCOL_CONCEPTO1.Value    := StrToInt(sgConfig.Cells[1,06]);
  QConfigLIN_CONCEPTO1.Value    := StrToInt(sgConfig.Cells[2,06]);
  QConfigCOL_CONCEPTO2.Value    := StrToInt(sgConfig.Cells[1,07]);
  QConfigLIN_CONCEPTO2.Value    := StrToInt(sgConfig.Cells[2,07]);
  QConfigCOL_CONCEPTO3.Value    := StrToInt(sgConfig.Cells[1,08]);
  QConfigLIN_CONCEPTO3.Value    := StrToInt(sgConfig.Cells[2,08]);
  QConfigCOL_NUMEROCKCONC.Value := StrToInt(sgConfig.Cells[1,09]);
  QConfigLIN_NUMEROCKCONC.Value := StrToInt(sgConfig.Cells[2,09]);
  QConfigCOL_MONTOCONCEPTO.Value := StrToInt(sgConfig.Cells[1,10]);
  QConfigLIN_MONTOCONCEPTO.Value := StrToInt(sgConfig.Cells[2,10]);
  QConfigcol_fechackconc.Value := StrToInt(sgConfig.Cells[1,11]);
  QConfiglin_fechackconc.Value := StrToInt(sgConfig.Cells[2,11]);
  QConfigCOL_DETALLE.Value := StrToInt(sgConfig.Cells[1,12]);
  QConfigLIN_DETALLE.Value := StrToInt(sgConfig.Cells[2,12]);
  QConfigCOL_BENEF.Value   := StrToInt(sgConfig.Cells[1,13]);
  QConfigLIN_BENEF.Value   := StrToInt(sgConfig.Cells[2,13]);
  QConfigCOL_CUENTA.Value  := StrToInt(sgConfig.Cells[1,14]);
  QConfigCOL_DESCUENTA.Value  := StrToInt(sgConfig.Cells[1,15]);
  QConfigCOL_DEBITO.Value  := StrToInt(sgConfig.Cells[1,16]);
  QConfigCOL_CREDITO.Value  := StrToInt(sgConfig.Cells[1,17]);
  QConfigLIN_NOMCIA.Value := StrToInt(sgConfig.Cells[2,18]);
  QConfigCOL_NOMCIA.Value := StrToInt(sgConfig.Cells[1,18]);
  QConfigLIN_DIRCIA.Value := StrToInt(sgConfig.Cells[2,19]);
  QConfigCOL_DIRCIA.Value := StrToInt(sgConfig.Cells[1,19]);
  QConfigLIN_RNC.Value    := StrToInt(sgConfig.Cells[2,20]);
  QConfigCOL_RNC.Value    := StrToInt(sgConfig.Cells[1,20]);
  QConfigLIN_NOMBANCO.Value := StrToInt(sgConfig.Cells[2,21]);
  QConfigCOL_NOMBANCO.Value := StrToInt(sgConfig.Cells[1,21]);
  QConfigLIN_CTABANCO.Value := StrToInt(sgConfig.Cells[2,22]);
  QConfigCOL_CTABANCO.Value := StrToInt(sgConfig.Cells[1,22]);
  QConfig.Post;
  QConfig.UpdateBatch;
end;

procedure TfrmConfigCK.QBancosAfterOpen(DataSet: TDataSet);
begin
  QConfig.Open;
end;

end.
