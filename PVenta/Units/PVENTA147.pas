unit PVENTA147;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls,
  DB, ADODB;

type
  TfrmBono = class(TForm)
    Shape8: TShape;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    lbNumero: TLabel;
    lbEmision: TLabel;
    lbVence: TLabel;
    lbNombre: TLabel;
    lbMonto: TLabel;
    DBEdit1: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    rlbNumero: TQRLabel;
    rlbEmision: TQRLabel;
    rlbVence: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel9: TQRLabel;
    rlbNombre: TQRLabel;
    rlbMontoLetra: TQRLabel;
    rlbMonto: TQRLabel;
    QBono: TADOQuery;
    QBonoemp_codigo: TIntegerField;
    QBonosuc_codigo: TIntegerField;
    QBonobon_numero: TStringField;
    QBonobon_fecha: TDateTimeField;
    QBonobon_monto: TBCDField;
    QBonobon_status: TStringField;
    QBonocli_codigo: TIntegerField;
    QBonobon_vence: TDateTimeField;
    dsBono: TDataSource;
    QBonousu_codigo: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label36: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBText1: TDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    procedure BitBtn1Click(Sender: TObject);
    procedure dsBonoDataChange(Sender: TObject; Field: TField);
    procedure QBonoNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBono: TfrmBono;

implementation

uses SIGMA00, SIGMA01, PVENTA146;

{$R *.dfm}

procedure TfrmBono.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmBono.dsBonoDataChange(Sender: TObject; Field: TField);
begin
  if QBonobon_monto.value > 0 then
    lbMonto.caption := dm.numero2Letras(strtofloat(format('%10.2F',[QBonobon_monto.Value])));
end;

procedure TfrmBono.QBonoNewRecord(DataSet: TDataSet);
var
  existe : boolean;
begin
  existe := True;
  Randomize;
  while existe = True do
  begin                                     
    QBonobon_numero.Value  := IntToStr(frmClientesClub.QClientescli_codigo.Value) +
                         IntToStr(Random(frmClientesClub.QClientescli_codigo.Value*
                         StrToInt(copy(frmClientesClub.QClientescli_cedula.value,5,7)+
                         copy(frmClientesClub.QClientescli_cedula.value,1,3))));
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select bon_numero from bono_club');
    dm.Query1.sql.add('where bon_numero = :bon');
    dm.Query1.Parameters.ParamByName('bon').Value := QBonobon_numero.Value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      existe := False
    else
      existe := True;
  end;
  QBonoemp_codigo.Value := dm.vp_cia;
  QBonousu_codigo.value := dm.Usuario;
  QBonocli_codigo.value := frmClientesClub.QClientescli_codigo.value;
  QBonobon_fecha.value  := Date;
  QBonobon_vence.value  := Date + 90;
  QBonobon_monto.value  := StrToFloat(Format('%10.2F',[frmClientesClub.QClientescli_balance_mto.value]));
  QBonobon_status.value := 'PEN';
  lbNumero.caption   := QBonobon_numero.Value;
  lbEmision.caption  := datetostr(date);
  lbVence.caption    := datetostr(date + 90);
end;

procedure TfrmBono.BitBtn2Click(Sender: TObject);
begin
  if StrToFloat(Format('%10.2F',[QBonobon_monto.value])) >
  StrToFloat(Format('%10.2F',[frmClientesClub.QClientescli_balance_mto.value])) then
  begin
    showmessage('EL MONTO DEL BONO NO PUEDE SER MAYOR QUE '+
    Format('%n',[frmClientesClub.QClientescli_balance_mto.value]));
    DBEdit1.setfocus;
  end
  else
  if StrToFloat(Format('%10.2F',[QBonobon_monto.value])) = 0 then
  begin
    showmessage('EL MONTO DEL BONO NO PUEDE SER CERO');
    DBEdit1.setfocus;
  end
  else
  begin
    QBonosuc_codigo.Value := DBLookupComboBox2.KeyValue;
    QBono.post;
    QBono.UpdateBatch;

    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('update cliente_club set cli_balance_ptos = cli_balance_ptos - :pto');
    dm.query1.sql.add('where emp_codigo = :emp and suc_codigo = :suc and cli_codigo = :cli');
    dm.query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.query1.Parameters.parambyname('cli').Value := QBonocli_codigo.value;
    dm.query1.Parameters.parambyname('pto').Value := strtofloat(format('%10.2f',[QBonobon_monto.value]))/
                                            strtofloat(format('%10.2f',[dm.QParametrospar_valor_punto.value]));
    dm.query1.ExecSQL;

    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('update cliente_club set cli_balance_mto = cli_balance_ptos * :valor');
    dm.query1.sql.add('where cli_codigo = :cli');
    dm.query1.Parameters.parambyname('cli').Value := QBonocli_codigo.value;
    dm.query1.Parameters.parambyname('valor').Value := strtofloat(format('%10.2f',[dm.QParametrospar_valor_punto.value]));
    dm.query1.ExecSQL;

    rlbNumero.caption  := lbNumero.caption;
    rlbEmision.caption := lbEmision.caption;
    rlbVence.caption   := lbVence.caption;
    rlbNombre.caption  := lbNombre.caption;
    rlbMonto.caption   := Format('%n',[QBonobon_monto.value]);
    rlbMontoLetra.caption := lbMonto.caption;    
    QuickRep1.PrinterSetup;
    QuickRep1.print;
    Close;
  end;
end;

procedure TfrmBono.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

end.
