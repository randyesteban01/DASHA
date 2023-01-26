unit PVENTA114;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, DateUtils, ADODB;

type
  TfrmGeneraCuotas = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btCalcular: TBitBtn;
    lbTotal: TStaticText;
    lbIntervalo: TStaticText;
    lbFechaIni: TStaticText;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    QMov: TADOQuery;
    QMovCLI_CODIGO: TIntegerField;
    QMovEMP_CODIGO: TIntegerField;
    QMovFAC_FORMA: TIBStringField;
    QMovMOV_ABONO: TFloatField;
    QMovMOV_FECHA: TDateTimeField;
    QMovMOV_FECHAVENCE: TDateTimeField;
    QMovMOV_MONTO: TFloatField;
    QMovMOV_NUMERO: TIntegerField;
    QMovMOV_SECUENCIA: TIntegerField;
    QMovMOV_STATUS: TIBStringField;
    QMovMOV_TIPO: TIBStringField;
    QMovTFA_CODIGO: TIntegerField;
    dsMov: TDataSource;
    btClose: TBitBtn;
    edCuotas: TEdit;
    QMovMOV_CUOTA: TIBStringField;
    QMovSUC_CODIGO: TIntegerField;
    QMovMON_CODIGO: TIntegerField;
    QMovMOV_TASA: TBCDField;
    LB_1: TLabel;
    edtMontoInicial: TEdit;
    QUpdateAbono: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    FloatField2: TFloatField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IntegerField5: TIntegerField;
    IBStringField4: TIBStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    BCDField1: TBCDField;
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btCalcularClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCuotasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Tipo, Numero, Intervalo, Sucursal : Integer;
    Total, vl_tasa : Double;
    Forma, TipoM : String;
    Fecha : TDateTime;
  end;

var
  frmGeneraCuotas: TfrmGeneraCuotas;

implementation

uses PVENTA18, SIGMA01;

{$R *.dfm}

procedure TfrmGeneraCuotas.btCloseClick(Sender: TObject);
begin
  if QMov.RecordCount > 0 then
  begin
    QMov.UpdateBatch;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update facturas');
    dm.Query1.SQL.Add('set fac_cuotas = :cuo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and fac_forma = :for');
    dm.Query1.SQL.Add('and tfa_codigo = :tip');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := frmFactura.QFacturaSUC_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('for').Value := Forma;
    dm.Query1.Parameters.ParamByName('tip').Value := Tipo;
    dm.Query1.Parameters.ParamByName('num').Value := Numero;
    dm.Query1.Parameters.ParamByName('cuo').Value := StrToInt(Trim(edCuotas.Text));
    dm.Query1.ExecSQL;

    Close;
  end
  else
    messagedlg('DEBE GENERAR LAS CUOTAS',mterror,[mbok],0);
end;

procedure TfrmGeneraCuotas.FormActivate(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select m.tmo_siglas');
  dm.Query1.SQL.Add('from tiposmov m, tiposfactura t');
  dm.Query1.SQL.Add('where m.tmo_codigo = t.tmo_codigo');
  dm.Query1.SQL.Add('and m.emp_codigo = t.emp_codigo');
  dm.Query1.SQL.Add('and t.tfa_codigo = :tip');
  dm.Query1.SQL.Add('and t.emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tip').Value := Tipo;
  dm.Query1.Open;
  TipoM := dm.Query1.FieldByName('tmo_siglas').AsString;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from movimientos');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and mov_tipo = :tipom');
  dm.Query1.SQL.Add('and tfa_codigo = :tipo');
  dm.Query1.SQL.Add('and fac_forma = :for');
  dm.Query1.SQL.Add('and mov_numero = :num');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('suc').Value  :=frmFactura.QFacturaSUC_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('tipom').Value := TipoM;
  dm.Query1.Parameters.ParamByName('tipo').Value := Tipo;
  dm.Query1.Parameters.ParamByName('for').Value   := Forma;
  dm.Query1.Parameters.ParamByName('num').Value  := Numero;
  dm.Query1.ExecSQL;

  QMov.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QMov.Parameters.ParamByName('tipo').Value := TipoM;
  QMov.Parameters.ParamByName('num').Value := -1;
  QMov.Open;

  lbIntervalo.Caption := IntToStr(Intervalo);
  lbFechaIni.Caption  := DateToStr(frmFactura.QFacturaFAC_FECHA.Value);
end;

procedure TfrmGeneraCuotas.btCalcularClick(Sender: TObject);
var
  a : integer;
  vl_inicial, vl_balance : Double;
begin
  if Trim(edtMontoInicial.Text)<>'' then
   vl_inicial := StrToFloat(edtMontoInicial.Text) else
   vl_inicial := 0;
  vl_balance := StrToFloat(Format('%10.2f',[Total]))-vl_inicial;
  if trim(edCuotas.Text) <> '' then
  Begin
    //ACTUALIZAR ABONO
    with QUpdateAbono do begin
      Close;
      Parameters.ParamByName('monto').Value    := vl_inicial;
      Parameters.ParamByName('numero').Value   := Numero;
      Parameters.ParamByName('company').Value  := dm.vp_cia;
      Parameters.ParamByName('sucursal').Value := Sucursal;
    end;
    //FIN ABONO A FACTURA
    QMov.Close;
    QMov.Open;
    QMov.DisableControls;
    For a := 1 to StrToInt(Trim(edCuotas.text)) do
    Begin
      QMov.Append;
      QMovSUC_CODIGO.Value := frmFactura.QFacturaSUC_CODIGO.Value;
      QMovCLI_CODIGO.Value := frmFactura.QFacturaCLI_CODIGO.Value;
      QMovEMP_CODIGO.Value := dm.vp_cia;
      QMovFAC_FORMA.Value  := frmFactura.QFacturaFAC_FORMA.Value;
      QMovMOV_ABONO.Value  := 0;
      QMovMOV_FECHA.Value  := frmFactura.QFacturaFAC_FECHA.Value + (Intervalo*a);
      QMovMOV_FECHAVENCE.Value := QMovMOV_FECHA.Value;
      if vl_tasa = 0 then
      QMovMOV_MONTO.Value  := (vl_balance/
                              StrToInt(Trim(edCuotas.text))) else
      QMovMOV_MONTO.Value  := vl_balance/
                              StrToInt(Trim(edCuotas.text))*(1+(vl_tasa/100));
      QMovMOV_NUMERO.Value := Numero;
      QMovMOV_SECUENCIA.Value := a;
      QMovMOV_STATUS.Value := 'PEN';
      QMovMOV_TIPO.Value   := TipoM;
      QMovTFA_CODIGO.Value := Tipo;
      QMovMOV_CUOTA.Value  := 'True';
      QMovMON_CODIGO.Value := frmFactura.QFacturaMON_CODIGO.Value;
      QMovMOV_TASA.Value   := frmFactura.QFacturaFAC_TASA.Value;
      QMov.Post;
    End;
    QMov.EnableControls;
  End;
end;

procedure TfrmGeneraCuotas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ssAlt in shift then key := 0;
end;

procedure TfrmGeneraCuotas.edCuotasKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in ['0'..'9','.',#8]) then
    begin
      key:=#0;
      showmessage('Solo se permiten numero, favor verifique....');
    end;
end;

end.
