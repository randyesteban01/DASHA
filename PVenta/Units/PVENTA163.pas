unit PVENTA163;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,
  DB, DateUtils,
  ADODB, QuerySearchDlgADO, ComCtrls, Menus, IBCustomDataSet;

type
  TfrmFacturasHOLD = class(TForm)
    Panel2: TPanel;
    lbCantidad: TLabel;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    QFacturas: TADOQuery;
    QFacturasALM_CODIGO: TIntegerField;
    QFacturasCAJ_CODIGO: TIntegerField;
    QFacturasCLI_CODIGO: TIntegerField;
    QFacturasCLI_REFERENCIA: TIBStringField;
    QFacturasCOT_NUMERO: TIntegerField;
    QFacturasCPA_CODIGO: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_ABONO: TFloatField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_DIRECCION: TIBStringField;
    QFacturasFAC_FAX: TIBStringField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasFAC_ITBIS: TFloatField;
    QFacturasFAC_LOCALIDAD: TIBStringField;
    QFacturasFAC_NOMBRE: TIBStringField;
    QFacturasFAC_NOTA: TMemoField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_OTROS: TFloatField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasFAC_TELEFONO: TIBStringField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasPED_NUMERO: TIntegerField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasUSU_CODIGO: TIntegerField;
    QFacturasVEN_CODIGO: TIntegerField;
    QFacturasUSU_NOMBRE: TIBStringField;
    QFacturasCAJ_NOMBRE: TIBStringField;
    QFacturasFAC_VENCE: TDateTimeField;
    QFacturasFAC_COMISION: TFloatField;
    QFacturasFAC_CUOTAS: TIntegerField;
    QFacturasCON_NUMERO: TIntegerField;
    QFacturasFAC_DEVUELTO: TFloatField;
    QFacturassuc_codigo: TIntegerField;
    QFacturasfac_conitbis: TStringField;
    QFacturasCaja: TStringField;
    QFacturasNCF_Fijo: TStringField;
    QFacturasNCF_Secuencia: TBCDField;
    QFacturasNCF: TStringField;
    dsFacturas: TDataSource;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    Timer1: TTimer;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure btRefreshClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    Cajero : integer;
    SelCajero : Boolean;
    { Public declarations }
  end;

var
  frmFacturasHOLD: TfrmFacturasHOLD;

implementation

{$R *.dfm}

procedure TfrmFacturasHOLD.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFacturasHOLD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmFacturasHOLD.QFacturasCalcFields(DataSet: TDataSet);
begin
  if not QFacturasNCF_Fijo.IsNull then
    QfacturasNCF.Value := QFacturasNCF_Fijo.Value + formatfloat('00000000',QFacturasNCF_Secuencia.Value)
  else
    QfacturasNCF.Value := '';
end;

procedure TfrmFacturasHOLD.btRefreshClick(Sender: TObject);
begin
  QFacturas.Close;
  QFacturas.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  QFacturas.Parameters.ParamByName('fec').DataType := ftDate;
  QFacturas.Parameters.ParamByName('fec').Value    := Date;
  QFacturas.Parameters.ParamByName('caj').Value    := Cajero;
  QFacturas.Open;
  lbCantidad.caption := inttostr(QFacturas.recordcount)+' Facturas';
end;

procedure TfrmFacturasHOLD.FormActivate(Sender: TObject);
begin
  if SelCajero = False then
  begin
    Application.CreateForm(tfrmPideCajero, frmPideCajero);
    if frmPideCajero.ShowModal <> mrOk then
    begin
      frmPideCajero.release;
      close;
    end
    else
    begin
      SelCajero := True;
      Cajero := dm.Query1.fieldbyname('caj_codigo').asinteger;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmFacturasHOLD.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Desea quitar el status de HOLD?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Timer1.Enabled := false;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update facturas set fac_hold = :st');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and fac_forma = :for');
    dm.Query1.SQL.Add('and tfa_codigo = :tfa');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := QFacturassuc_codigo.Value;
    dm.Query1.Parameters.ParamByName('for').Value := QFacturasFAC_FORMA.Value;
    dm.Query1.Parameters.ParamByName('tfa').Value := QFacturasTFA_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QFacturasFAC_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('st').Value  := 'False';
    dm.Query1.ExecSQL;

    btRefreshClick(Self);
    Timer1.Enabled := false;
  end;
end;

procedure TfrmFacturasHOLD.Timer1Timer(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmFacturasHOLD.FormCreate(Sender: TObject);
begin
  SelCajero := False;
end;

procedure TfrmFacturasHOLD.FormPaint(Sender: TObject);
begin
  Top := 3;
  left := 1;
end;

end.
