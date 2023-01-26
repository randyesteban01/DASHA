unit CONT26;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, DateUtils,
  QuerySearchDlgADO, DB, ADODB, DBCtrls;

type
  TfrmConsBalances = class(TForm)
    btClose: TBitBtn;
    Label3: TLabel;
    edCuenta: TEdit;
    btCuenta: TSpeedButton;
    tCuenta: TEdit;
    Search: TQrySearchDlgADO;
    btRefresh: TBitBtn;
    BitBtn3: TBitBtn;
    lbEne: TStaticText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbFeb: TStaticText;
    lbMar: TStaticText;
    lbAbr: TStaticText;
    lbMay: TStaticText;
    lbJun: TStaticText;
    lbJul: TStaticText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lbAgo: TStaticText;
    lbSep: TStaticText;
    lbOct: TStaticText;
    lbNov: TStaticText;
    lbDic: TStaticText;
    Label14: TLabel;
    spAno: TSpinEdit;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label15: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCuentaClick(Sender: TObject);
    procedure edCuentaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsBalances: TfrmConsBalances;

implementation

uses SIGMA01, RCONT24;


{$R *.dfm}

procedure TfrmConsBalances.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsBalances.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsBalances.btCuentaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    edCuenta.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value  := Trim(edCuenta.Text);
    dm.Query1.Open;
    tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsBalances.edCuentaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCuenta.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cat_cuenta = :cta');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('cta').Value  := Trim(edCuenta.Text);
      dm.Query1.Open;
      tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsBalances.btRefreshClick(Sender: TObject);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from contbalances');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.SQL.Add('and bal_ano = :ano');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ano').Value := spAno.Value;
  dm.Query1.Parameters.ParamByName('cta').Value := trim(edCuenta.Text);
  dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  dm.Query1.Open;
  lbEne.Caption := Format('%n',[dm.Query1.FieldByName('bal_ene').AsFloat]);
  lbFeb.Caption := Format('%n',[dm.Query1.FieldByName('bal_feb').AsFloat]);
  lbMar.Caption := Format('%n',[dm.Query1.FieldByName('bal_mar').AsFloat]);
  lbAbr.Caption := Format('%n',[dm.Query1.FieldByName('bal_abr').AsFloat]);
  lbMay.Caption := Format('%n',[dm.Query1.FieldByName('bal_may').AsFloat]);
  lbJun.Caption := Format('%n',[dm.Query1.FieldByName('bal_jun').AsFloat]);
  lbJul.Caption := Format('%n',[dm.Query1.FieldByName('bal_jul').AsFloat]);
  lbAgo.Caption := Format('%n',[dm.Query1.FieldByName('bal_ago').AsFloat]);
  lbSep.Caption := Format('%n',[dm.Query1.FieldByName('bal_sep').AsFloat]);
  lbOct.Caption := Format('%n',[dm.Query1.FieldByName('bal_oct').AsFloat]);
  lbNov.Caption := Format('%n',[dm.Query1.FieldByName('bal_nov').AsFloat]);
  lbDic.Caption := Format('%n',[dm.Query1.FieldByName('bal_dic').AsFloat]);
  for a := 0 to frmConsBalances.ComponentCount -1 do
  begin
    if frmConsBalances.Components[a].ClassType = TStaticText then
    begin
      if Pos('-',(frmConsBalances.Components[a] as TStaticText).Caption) > 0 then
        (frmConsBalances.Components[a] as TStaticText).Font.Color := clMaroon
      else
        (frmConsBalances.Components[a] as TStaticText).Font.Color := clBlue;
    end;
  end;
end;

procedure TfrmConsBalances.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
end;

procedure TfrmConsBalances.BitBtn3Click(Sender: TObject);
begin
  application.CreateForm(tRepBalanceCta, tform(RepBalanceCta));
  RepBalanceCta.lbFecha.Caption := 'Año : '+IntToStr(spAno.Value);
  RepBalanceCta.lbCuenta.Caption := edCuenta.Text+' - '+tCuenta.Text;
  RepBalanceCta.lbEne.Caption := lbEne.Caption;
  RepBalanceCta.lbFeb.Caption := lbFeb.Caption;
  RepBalanceCta.lbMar.Caption := lbMar.Caption;
  RepBalanceCta.lbAbr.Caption := lbAbr.Caption;
  RepBalanceCta.lbMay.Caption := lbMay.Caption;
  RepBalanceCta.lbJun.Caption := lbJun.Caption;
  RepBalanceCta.lbJul.Caption := lbJul.Caption;
  RepBalanceCta.lbAgo.Caption := lbAgo.Caption;
  RepBalanceCta.lbSep.Caption := lbSep.Caption;
  RepBalanceCta.lbOct.Caption := lbOct.Caption;
  RepBalanceCta.lbNov.Caption := lbNov.Caption;
  RepBalanceCta.lbDic.Caption := lbDic.Caption;
  RepBalanceCta.PrinterSetup;
  RepBalanceCta.Preview;
  RepBalanceCta.Destroy;
end;

procedure TfrmConsBalances.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

end.
