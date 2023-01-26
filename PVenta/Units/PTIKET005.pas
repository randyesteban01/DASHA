unit PTIKET005;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, DB, ADODB,
  DBCtrls, frxRich, frxBarcode, frxClass, frxDBSet;

type
  TfrmBoletoPago = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    edFicha: TEdit;
    Label1: TLabel;
    fechapago: TDateTimePicker;
    QPago: TADOQuery;
    QPagoemp_codigo: TIntegerField;
    QPagousu_codigo: TIntegerField;
    QPagofecha: TDateTimeField;
    QPagoboleto: TAutoIncField;
    QPagocaja: TIntegerField;
    QPagosuc_cod_origen: TIntegerField;
    QPagosuc_cod_destino: TIntegerField;
    QPagoproducto: TIntegerField;
    QPagodescripcion: TStringField;
    QPagoprecio: TBCDField;
    QPagocobrado: TBCDField;
    QPagodevuelto: TBCDField;
    QPagoficha_pagado: TStringField;
    QPagofecha_pagado: TDateTimeField;
    QPagosecuencia_rando: TWideStringField;
    dsPago: TDataSource;
    edcodBarra: TEdit;
    Label2: TLabel;
    Button1: TButton;
    lbCantidad: TLabel;
    lbTotal: TLabel;
    QPagocodbarra: TStringField;
    DB_1: TfrxDBDataset;
    qReporte: TADOQuery;
    btnImprimir: TBitBtn;
    qReportesuc_nombre: TStringField;
    qReportesuc_telefono: TStringField;
    qReportesuc_direccion: TStringField;
    qReporteusu_nombre: TStringField;
    qReportefecha_pagado: TDateField;
    qReporteprecio: TCurrencyField;
    qReporteficha_pagado: TStringField;
    qReporteCANT: TIntegerField;
    qReporteDESCRIPCION: TStringField;
    Rpt_Pag_Ticket: TfrxReport;
    qReporteTOTAL: TCurrencyField;
    procedure Button1Click(Sender: TObject);
    procedure QPagoBeforeOpen(DataSet: TDataSet);
    procedure edcodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure edFichaExit(Sender: TObject);
    procedure QPagoAfterOpen(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure edFichaKeyPress(Sender: TObject; var Key: Char);
  end;

var
  frmBoletoPago: TfrmBoletoPago;

implementation

uses PTIKET003, SIGMA01;

{$R *.dfm}

function TotalBoletos(vQry:TADOQuery):string;
var vValor:Currency;
begin
  vValor:=0;
  vQry.DisableControls;
  vQry.First;
  while not vQry.Eof do begin
    vValor := vValor + vQry.FieldByName('precio').AsCurrency;
    vQry.Next;
  end;
  vQry.EnableControls;
  Result := FormatCurr(',0.00',vValor);
end;

procedure pagaBoleto(vCod,vFicha:string; vFecha:tDatetime);
begin
with dm.QQuery1,SQL do
begin
  close;
  clear;
  add('select A.*,B.suc_nombre SUCURSAL from boleto A ');
  Add('INNER JOIN SUCURSALES B ON A.emp_codigo = B.emp_codigo AND A.suc_cod_origen = B.suc_codigo');
  add(' where A.codbarra = :cod');
  Parameters.parambyname('cod').Value := vCod;
  open;
  if IsEmpty then
     messagedlg('ESTE BOLETO NO EXISTE', mtError, [mbno],0)
  else
  begin
    close;
    clear;
    add('select A.*,B.suc_nombre SUCURSAL from boleto A ');
    Add('INNER JOIN SUCURSALES B ON A.emp_codigo = B.emp_codigo AND A.suc_cod_origen = B.suc_codigo');
    add(' where A.codbarra = :cod');
    Add(' and A.ficha_pagado <> '+QuotedStr(''));
    Parameters.parambyname('cod').Value := vCod;
    open;
    if not IsEmpty then
       messagedlg('ESTE BOLETO ESTA PAGO'
       +#13+'FICHA ['+FieldByName('ficha_pagado').AsString+']'
       +#13+'EN FECHA ['+FieldByName('fecha_pagado').AsString+']'
       +#13+'SUCURSAL ['+FieldByName('SUCURSAL').AsString+']' , mtInformation, [mbno],0)
    else
    begin
    close;
    clear;
    add('select usu_codigo from boleto');
    add(' where codbarra = :cod');
    Parameters.parambyname('cod').Value := vCod;
    open;
    if not IsEmpty then
    if FieldByName('usu_codigo').Value <> DM.Usuario then
       messagedlg('ESTE BOLETO NO FUE GENERADO POR USTED,'+CHAR(13)+
                   'POR TANTO NO PUEDE SER PAGADO....' , mtInformation, [mbno],0)
    else
    begin
      close;
      clear;
      add('update boleto');
      add('   set fecha_pagado = :fecha, ficha_pagado = :ficha');
      add(' where codbarra = :cod');
      add('   and emp_codigo = :emp');
      Parameters.parambyname('emp').Value := dm.QParametrosEMP_CODIGO.value;
      Parameters.parambyname('cod').Value := vCod;
      Parameters.parambyname('fecha').Value := vFecha;
      Parameters.parambyname('ficha').Value := vFicha;
      ExecSQL;
    end;
end;
end
end;
end;

procedure TfrmBoletoPago.Button1Click(Sender: TObject);
begin
    if edFicha.Text <> EmptyStr then
       pagaBoleto(edcodBarra.Text,edFicha.Text,fechapago.DateTime);

QPago.Close;
QPago.Open;
edcodBarra.Text := EmptyStr;
end;

procedure TfrmBoletoPago.QPagoBeforeOpen(DataSet: TDataSet);
begin
  QPago.Parameters.parambyname('ficha').Value := edFicha.Text;
  QPago.Parameters.parambyname('fecha').Value := fechapago.DateTime;
  QPago.Parameters.parambyname('suc').Value := frmConsBoletos.DBLookupComboBox2.KeyValue;
end;

procedure TfrmBoletoPago.edcodBarraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13  then
  begin
    if edFicha.Text <> EmptyStr then
       pagaBoleto(edcodBarra.Text,edFicha.Text,fechapago.DateTime);
    QPago.Close;
    QPago.Open;
    edcodBarra.Text := EmptyStr;
  end;
end;

procedure TfrmBoletoPago.edFichaExit(Sender: TObject);
begin
  if edFicha.Text <> EmptyStr then
     begin
       QPago.Close;
       QPago.Open;
     end;
  edcodBarra.SetFocus;
end;

procedure TfrmBoletoPago.QPagoAfterOpen(DataSet: TDataSet);
begin
    lbCantidad.caption := inttostr(QPago.recordcount)+' Boleto(s)';
    lbTotal.caption    := TotalBoletos(QPago)+' Vendido';
end;

procedure TfrmBoletoPago.btnImprimirClick(Sender: TObject);
begin
WITH qReporte DO BEGIN
Close;
Parameters.ParamByName('ficha').Value := Trim(edFicha.Text);
Parameters.ParamByName('fecha').Value := fechapago.Date;
Parameters.parambyname('suc').Value := frmConsBoletos.DBLookupComboBox2.KeyValue;
Open;

if not IsEmpty then begin
Rpt_Pag_Ticket.PrintOptions.Printer := DM.QParametrospar_impresora_boleto.Value;
Rpt_Pag_Ticket.PrintOptions.Copies := 1;
Rpt_Pag_Ticket.PrepareReport(True);
Rpt_Pag_Ticket.Print;
end;
end;
edFicha.Clear;
edFichaExit(Sender);
edFicha.SetFocus;
QPago.Close;

end;



procedure TfrmBoletoPago.edFichaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
edFichaExit(Sender);
end;

end.
