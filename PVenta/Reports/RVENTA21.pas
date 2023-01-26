unit RVENTA21;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRPDFFilt, QRExport, QRCtrls, DB, IBCustomDataSet,
  IBQuery, ADODB;

type
  TRRepClientes = class(TQuickRep)
    QRBand1: TQRBand;
    lbTitulo: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    lbTipo: TQRLabel;
    lbCondi: TQRLabel;
    lbFecha: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText10: TQRDBText;
    QRBand4: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    lbUsuario: TQRLabel;
    lbStatus: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    lbDesc: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbPrecio: TQRLabel;
    QClientes: TADOQuery;
    QClientesCLI_BALANCE: TFloatField;
    QClientesCLI_CEDULA: TIBStringField;
    QClientesCLI_CODIGO: TIntegerField;
    QClientesCLI_CUENTA: TIBStringField;
    QClientesCLI_DESCUENTO: TFloatField;
    QClientesCLI_DIRECCION: TIBStringField;
    QClientesCLI_EMAIL: TIBStringField;
    QClientesCLI_FAX: TIBStringField;
    QClientesCLI_LIMITE: TFloatField;
    QClientesCLI_LOCALIDAD: TIBStringField;
    QClientesCLI_NOMBRE: TIBStringField;
    QClientesCLI_PRECIO: TIBStringField;
    QClientesCLI_REFERENCIA: TIBStringField;
    QClientesCLI_RNC: TIBStringField;
    QClientesCLI_STATUS: TIBStringField;
    QClientesCLI_TELEFONO: TIBStringField;
    QClientesCLI_WEB: TIBStringField;
    QClientesCPA_CODIGO: TIntegerField;
    QClientesEMP_CODIGO: TIntegerField;
    QClientesFPA_CODIGO: TIntegerField;
    QClientesTCL_CODIGO: TIntegerField;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    lbCliente: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel19: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    lbVend: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    lbProvincia: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel17: TQRLabel;
    QClientesCPA_NOMBRE: TStringField;
    QClientesTCL_NOMBRE: TStringField;
    QRLabel30: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    PageFooterBand1: TQRBand;
    qrlUsuario: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  RRepClientes: TRRepClientes;

implementation

uses SIGMA01;


{$R *.DFM}

procedure TRRepClientes.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  a : integer;
  cambiar : TQRLabel;
begin
  if dm.QParametrosIdioma.AsString = 'I' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select objeto, ingles from Traduccion where modulo = :mod');
    dm.Query1.Parameters.ParamByName('mod').Value := 'RRepClientes';
    dm.Query1.Open;
    dm.Query1.DisableControls;
    while not dm.Query1.Eof do
    begin
      cambiar := (FindComponent(dm.Query1.FieldByName('objeto').AsString) as TQRLabel);
      cambiar.Caption := dm.Query1.FieldByName('ingles').AsString;
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
  end;

  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    lbCliente.DataField := 'CLI_CODIGO'
  else
    lbCliente.DataField := 'CLI_REFERENCIA';

  qrlUsuario.Caption :='Impreso por :'+ dm.getNombreUsuario(DM.Usuario) +
                       ' Fecha/Hora ' + FormatDateTime('dd/mm/yyyy hh:mm:ss AM/PM',now);   
end;

end.
