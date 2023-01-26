unit PVENTA148;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, ADODB, QRCtrls,
  QuickRpt, ComCtrls, QuerySearchDlgADO;

type
  TfrmConsBonos = class(TForm)
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    QBonos: TADOQuery;
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
    QBonossuc_nombre: TStringField;
    QBonossuc_codigo: TIntegerField;
    QBonosbon_numero: TStringField;
    QBonosbon_fecha: TDateTimeField;
    QBonosbon_monto: TBCDField;
    QBonosbon_status: TStringField;
    QBonoscli_nombre: TStringField;
    QBonoscli_codigo: TIntegerField;
    QBonosbon_vence: TDateTimeField;
    Panel1: TPanel;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    SpeedButton2: TSpeedButton;
    tCliente: TEdit;
    Search: TQrySearchDlgADO;
    dsBonos: TDataSource;
    ckCliente: TCheckBox;
    BitBtn1: TBitBtn;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    procedure FormPaint(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cliente : integer;
  end;

var
  frmConsBonos: TfrmConsBonos;

implementation

uses SIGMA01, RVENTA75, SIGMA00;

{$R *.dfm}

procedure TfrmConsBonos.FormPaint(Sender: TObject);
begin
  with frmConsBonos do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsBonos.BitBtn2Click(Sender: TObject);
begin
  rlbNumero.caption  := QBonosbon_numero.AsString;
  rlbEmision.caption := DateToStr(QBonosbon_fecha.Value);
  rlbVence.caption   := DateToStr(QBonosbon_vence.Value);
  rlbNombre.caption  := QBonoscli_nombre.Value;
  rlbMonto.caption   := Format('%n',[QBonosbon_monto.value]);
  rlbMontoLetra.caption := dm.numero2Letras(QBonosbon_monto.value);
  QuickRep1.PrinterSetup;
  QuickRep1.Print;
end;

procedure TfrmConsBonos.SpeedButton2Click(Sender: TObject);
begin
  Search.Title := 'Listado de Clientes';
  Search.ResultField := 'cli_codigo';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Apellido');
  Search.AliasFields.Add('Carnet');
  Search.AliasFields.Add('Código');
  Search.query.clear;
  Search.query.add('select cli_nombre, cli_apellido, cli_carnet_club, cli_codigo');
  Search.query.add('from cliente_club');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    btRefreshClick(Self);
    cliente := StrToInt(search.ValueField);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_nombre from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cli').Value := cliente;
    dm.Query1.Open;
    tCliente.Text := dm.Query1.FieldByName('cli_nombre').Value;
  end;
end;

procedure TfrmConsBonos.btRefreshClick(Sender: TObject);
begin
  QBonos.Close;
  QBonos.SQL.Clear;
  QBonos.SQL := Memo1.Lines;
  if ckCliente.Checked then
    QBonos.SQL.Add('and c.cli_codigo = '+IntToStr(cliente)); 
  QBonos.SQL.Add('order by c.cli_nombre, b.bon_numero');
  QBonos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QBonos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  QBonos.Open;
  DBGrid1.SetFocus;
end;

procedure TfrmConsBonos.FormCreate(Sender: TObject);
begin
  Memo1.Lines := QBonos.SQL;
  Fecha1.Date := Date;
  Fecha2.Date := Date;
end;

procedure TfrmConsBonos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsBonos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsBonos.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tRepListaBonos, RepListaBonos);
  RepListaBonos.lbFecha.CAption := 'Del '+DateToStr(Fecha1.date)+' Al ' + DateToStr(Fecha2.Date);
  RepListaBonos.QBonos.SQL.Clear;
  RepListaBonos.QBonos.SQL := Memo1.Lines;
  if ckCliente.Checked then
    RepListaBonos.QBonos.SQL.Add('and c.cli_codigo = '+IntToStr(cliente));
  RepListaBonos.QBonos.SQL.Add('order by c.cli_nombre, b.bon_numero');
  RepListaBonos.QBonos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RepListaBonos.QBonos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RepListaBonos.QBonos.Open;
  RepListaBonos.PrinterSetup;
  RepListaBonos.Preview;
  RepListaBonos.Destroy;
end;

end.
