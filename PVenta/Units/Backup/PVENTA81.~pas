unit PVENTA81;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ECRti_Framework_TLB, Mask, ToolEdit, CurrEdit,
  ExtCtrls, uJSON, DB, ADODB;

type
  TfrmMontoFPago = class(TForm)
    Label1: TLabel;
    btgrabar: TBitBtn;
    Label2: TLabel;
    edDescrip: TEdit;
    btcancelar: TBitBtn;
    btnPOS: TBitBtn;
    edMonto: TCurrencyEdit;
    rgTipoVenta: TRadioGroup;
    LBTipoPOSPAD: TLabel;
    lbCantCuotas: TLabel;
    cbbCantCuotas: TComboBox;
    edtReference: TEdit;
    qPagoVeriphone: TADOQuery;
    procedure btgrabarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btcancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPOSClick(Sender: TObject);
    function QuitarPuntosDecimal(Value:Double):String ;
    procedure rgTipoVentaClick(Sender: TObject);
  private
    { Private declarations }
      core : TCore;
      result : string;
      response: String;

      ipLocal: string;
      ipRemote: String;

      timeout : Integer;
      portLocal: Integer;
      portRemote: Integer;
  public
    { Public declarations }
    Descrip : String;
    Pendiente : Double;
    graba, invoiceId : integer;
    VL_MONTO, VL_ITBIS, VL_OTROIMP : String;
  end;
var
  frmMontoFPago: TfrmMontoFPago;

implementation

uses SIGMA01, PVENTA43, PVENTA18, Math;

{$R *.dfm}

procedure TfrmMontoFPago.btgrabarClick(Sender: TObject);
begin
  if (Descrip = 'True') and (Trim(edDescrip.Text) = '') then
  begin
    MessageDlg('DEBE ESPECIFICAR LA DESCRIPCION', mtError, [mbOk], 0);
    edDescrip.SetFocus;
  end
  else if StrToFloat(Format('%10.2f',[Pendiente])) <
  StrToFloat(Format('%10.2f',[StrToFloat(Trim(EdMonto.Text))])) then
  begin
    MessageDlg('EL MONTO DEL PAGO ES MAYOR AL PENDIENTE', mtError, [mbOk], 0);
    edMonto.SetFocus;
  end
  else
  begin
    graba := 1;
    close;
  end;
end;

procedure TfrmMontoFPago.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ssAlt in Shift then
     Key := 0;

  if key = vk_f2 then btgrabarClick(Self);
  if key = vk_escape then btcancelarClick(Self);
end;

procedure TfrmMontoFPago.FormActivate(Sender: TObject);
begin
  edDescrip.Enabled := Descrip = 'True';
end;

procedure TfrmMontoFPago.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmMontoFPago.btcancelarClick(Sender: TObject);
begin
  graba := 0;
  close;
end;

procedure TfrmMontoFPago.FormCreate(Sender: TObject);
begin
WITH DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT IP, PORTCAJA, PORTPOS, TIMEOUT, CAJA FROM VerifoneEnCaja');
  SQL.Add('WHERE CAJA ='+QuotedStr(DM.GetIPAddress));
  Open;
  IF not (IsEmpty) and (frmFormaPagoFac.vl_formapago = 'Tarjeta') THEN
  BEGIN
  core := TCore.Create(Self);

  btnPOS.Visible       := True;
  LBTipoPOSPAD.Visible := btnPOS.Visible;
  rgTipoVenta.Visible  := btnPOS.Visible;
  lbCantCuotas.Visible := btnPOS.Visible;
  cbbCantCuotas.Visible:= btnPOS.Visible;
  frmFormaPagoFac.vl_respverifone := '';

  ipLocal     := DM.Query1.FieldByName('CAJA').Text;
  portLocal   := DM.Query1.FieldByName('PORTCAJA').Value;
  ipRemote    := DM.Query1.FieldByName('IP').Text;
  portRemote  := DM.Query1.FieldByName('PORTPOS').Value;
  timeout     := DM.Query1.FieldByName('TIMEOUT').Value;

  result := core.SetTimeOut(timeOut);
  result := core.SetLocalEndPoint(ipLocal, portLocal);
  result := core.SetRemoteEndPoint(ipRemote, portRemote);
  frmFactura.vp_verifone := False;

  rgTipoVentaClick(Sender);
  end
  else
  begin
  btnPOS.Visible       := False;
  LBTipoPOSPAD.Visible := btnPOS.Visible;
  rgTipoVenta.Visible  := btnPOS.Visible;
  lbCantCuotas.Visible := btnPOS.Visible;
  cbbCantCuotas.Visible:= btnPOS.Visible;
  frmFormaPagoFac.vl_respverifone := '';
  frmFactura.vp_verifone := False;
  end;
end;

end;


procedure TfrmMontoFPago.btnPOSClick(Sender: TObject);
var
ResponseMemo : String;
amount, tax, otherTaxes, quantyOfPayments : Integer;
tamount, ttax :Currency;
a : myJSONItem;
begin
try
  if edMonto.Value > 0 then begin
  if StrToFloat(Format('%10.2f',[Pendiente])) <
  StrToFloat(Format('%10.2f',[StrToFloat(Trim(EdMonto.Text))])) then
  begin
    MessageDlg('EL MONTO DEL PAGO ES MAYOR AL PENDIENTE', mtError, [mbOk], 0);
    edMonto.SetFocus;
  end
  else
  begin
  btnPOS.Enabled := False;

  ResponseMemo := '';

  if rgTipoVenta.ItemIndex = 0 then
  quantyOfPayments := 0 else
  quantyOfPayments := StrToInt(cbbCantCuotas.Text);

  if frmFactura.QFacturaFAC_ITBIS.Value > 0 then
  ttax :=  (edMonto.Value/1.18)*0.18 else
  ttax := 0;

  tax := StrToInt(QuitarPuntosDecimal(ttax));

  tamount := edMonto.Value;

  amount := StrToInt(QuitarPuntosDecimal(tamount));


  otherTaxes := 0;

  invoiceId := frmFactura.QFacturaFAC_NUMERO.Value;

  result := core.Initialice();
  case rgTipoVenta.ItemIndex of
  {0:begin
  qPagoVeriphone.Close;
  qPagoVeriphone.Parameters.ParamByName('tipo').Value := rgTipoVenta.ItemIndex;
  qPagoVeriphone.Parameters.ParamByName('CantCuotas').Value := 0;
  qPagoVeriphone.Open;
  response := qPagoVeriphone.fieldbyname('for_veriphone_desc').Text;
  qPagoVeriphone.Close;
  end;
  1:begin
  qPagoVeriphone.Close;
  qPagoVeriphone.Parameters.ParamByName('tipo').Value := rgTipoVenta.ItemIndex;
  qPagoVeriphone.Parameters.ParamByName('CantCuotas').Value := cbbCantCuotas.Text;
  qPagoVeriphone.Open;
  response := qPagoVeriphone.fieldbyname('for_veriphone_desc').Text;
  qPagoVeriphone.Close;
  end;
  //}
  0:response := core.ProcessNormalSale(amount, tax, otherTaxes, invoiceId);
  1:response := core.ProcessDeferredSale(amount, tax, otherTaxes, invoiceId, quantyOfPayments);
  end;



  ResponseMemo := response;

  frmFormaPagoFac.vl_respverifone := response;


 // ResponseMemo := edtReference.Text;
 // frmFormaPagoFac.vl_respverifone := edtReference.Text;


  if Length(ResponseMemo)< 180 then begin
  a := myJSONItem.Create;
  a.Code :=  ResponseMemo;
  ShowMessage('FAVOR REVISE LA CONEXION, FALLO LA TRANSACCION '+Char(13)+ResponseMemo);
  graba := 0;
  frmFactura.vp_verifone := False;
  btnPOS.Enabled := True;
  edMonto.SetFocus;
  end
  else
  if Length(ResponseMemo)> 180 then begin
  a := myJSONItem.Create;
  a.Code :=  ResponseMemo;

  //edDescrip.Text := DM.Query1.FieldByName('CardNumber').Text + ' / '+
  //                  DM.Query1.FieldByName('AuthorizationNumber').Text;

  edDescrip.Text := copy(a['Card']['CardNumber'].getStr,Length(a['Card']['CardNumber'].getStr)-3,Length(a['Card']['CardNumber'].getStr)) + ' / '+
                    a['Transaction']['AuthorizationNumber'].getStr;

  frmFactura.vp_verifone := True;
  graba := 1;
  end
  else
  begin
  graba := 0;
  frmFactura.vp_verifone := True;
  edMonto.SetFocus;
  end;
end;
end;
except
    on E : Exception do
      ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
end;
end;

function TfrmMontoFPago.QuitarPuntosDecimal(Value: Double): String;
var
  ValorDoubleTxt:String;
  ParteEntera  ,ParteDecimal :String;
begin
  ValorDoubleTxt := Format('%.2f', [Value]);
  ParteEntera:= copy(ValorDoubleTxt,0,pos('.',ValorDoubleTxt)-1);
  ParteDecimal:= copy(ValorDoubleTxt,pos('.',ValorDoubleTxt)+1,length(ValorDoubleTxt));
  result :=  ParteEntera+ParteDecimal;
end;

procedure TfrmMontoFPago.rgTipoVentaClick(Sender: TObject);
begin
case rgTipoVenta.ItemIndex of
0:cbbCantCuotas.Visible := False;
1:cbbCantCuotas.Visible := True;
end;

end;

end.
