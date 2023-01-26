unit CONT17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DateUtils, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsMovimiento = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    btCuenta: TSpeedButton;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    edCuenta: TEdit;
    tCuenta: TEdit;
    Panel2: TPanel;
    lbCantidad: TLabel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    QTrans: TADOQuery;
    QTransCLI_CODIGO: TIntegerField;
    QTransEMP_CODIGO: TIntegerField;
    QTransENT_NUMERO: TIntegerField;
    QTransSUP_CODIGO: TIntegerField;
    QTransTDO_CODIGO: TIBStringField;
    QTransTRA_ANO: TIntegerField;
    QTransTRA_BENEF: TIBStringField;
    QTransTRA_CONCEPTO1: TIBStringField;
    QTransTRA_CONCEPTO2: TIBStringField;
    QTransTRA_DOC: TIBStringField;
    QTransTRA_FECHA: TDateTimeField;
    QTransTRA_MES: TIntegerField;
    QTransTRA_STATUS: TIBStringField;
    QTransTRA_DEBITOS: TFloatField;
    QTransTRA_CREDITOS: TFloatField;
    QTransTRA_NUMERO: TIntegerField;
    QTransTDO_NOMBRE: TIBStringField;
    QTransUSU_CODIGO: TIntegerField;
    dsTrans: TDataSource;
    Search: TQrySearchDlgADO;
    Label1: TLabel;
    lbAnt: TStaticText;
    Label2: TLabel;
    lbAct: TStaticText;
    Label4: TLabel;
    lbDB: TStaticText;
    Label5: TLabel;
    lbCR: TStaticText;
    QTransid: TAutoIncField;
    QTransSUC_CODIGO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Query1: TADOQuery;
    QTransBALANCE: TBCDField;
    Label8: TLabel;
    edProveedor: TEdit;
    btProv: TSpeedButton;
    tProv: TEdit;
    Label9: TLabel;
    btcliente: TSpeedButton;
    edcliente: TEdit;
    tcliente: TEdit;
    QTransORIGEN: TStringField;
    QTransNCF: TStringField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure edCuentaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btRefreshClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btProvClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btclienteClick(Sender: TObject);
    procedure edclienteChange(Sender: TObject);
    procedure edclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsMovimiento: TfrmConsMovimiento;

implementation

uses CONT15, RCONT05, RCONT06, SIGMA00, SIGMA01, PVENTA27;

{$R *.dfm}

procedure TfrmConsMovimiento.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsMovimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsMovimiento.FormCreate(Sender: TObject);
begin
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);
end;

procedure TfrmConsMovimiento.btCuentaClick(Sender: TObject);
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
    dm.Query1.Parameters.ParamByName('cta').Value := Trim(edCuenta.Text);
    dm.Query1.Open;
    tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsMovimiento.edCuentaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TfrmConsMovimiento.btRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select * from CONTPR_BUSCA_BALMOV (:EMP, :SUC, :FEC1, :FEC2, :CTA, :SUP, :CLI)');
  Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  Query1.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  Query1.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  Query1.Parameters.ParamByName('cta').Value  := Trim(edCuenta.Text);
  Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;

  if trim(edProveedor.Text) <> '' then
     Query1.Parameters.ParamByName('sup').Value := StrToInt(edProveedor.Text)
  else
     Query1.Parameters.ParamByName('sup').Value := 0;

  if trim(edcliente.Text) <> '' then
     Query1.Parameters.ParamByName('cli').Value := StrToInt(edcliente.Text)
  else
     Query1.Parameters.ParamByName('cli').Value := 0;

  Query1.Open;
  lbAnt.Caption := Format('%n',[Query1.FieldByName('anterior').AsFloat]);
  lbDB.Caption  := Format('%n',[Query1.FieldByName('debitos').AsFloat]);
  lbCR.Caption  := Format('%n',[Query1.FieldByName('creditos').AsFloat]);
  lbAct.Caption := Format('%n',[Query1.FieldByName('actual').AsFloat]);

  QTrans.Close;
  QTrans.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QTrans.Parameters.ParamByName('fec1').DataType := ftDate;
  QTrans.Parameters.ParamByName('fec2').DataType := ftDate;
  QTrans.Parameters.ParamByName('fec1').Value   := Fecha1.Date;
  QTrans.Parameters.ParamByName('fec2').Value   := Fecha2.Date;
  QTrans.Parameters.ParamByName('cta').Value    := Trim(edCuenta.Text);
  QTrans.Parameters.ParamByName('suc').Value    := DBLookupComboBox2.KeyValue;
  QTrans.Parameters.ParamByName('ant').Value    := Query1.FieldByName('anterior').AsFloat;

  if trim(edProveedor.Text) <> '' then
     QTrans.Parameters.ParamByName('sup').Value := StrToInt(edProveedor.Text)
  else
     QTrans.Parameters.ParamByName('sup').Value := 0;

  if trim(edcliente.Text) <> '' then
     QTrans.Parameters.ParamByName('cli').Value := StrToInt(edcliente.Text)
  else
     QTrans.Parameters.ParamByName('cli').Value := 0;

  QTrans.Open;

  lbCantidad.Caption := IntToStr(QTrans.RecordCount)+' Entradas';

  Screen.Cursor := crDefault;
  DBGrid1.SetFocus;
end;

procedure TfrmConsMovimiento.FormPaint(Sender: TObject);
begin
  with frmConsMovimiento do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsMovimiento.BitBtn1Click(Sender: TObject);
begin
  frmmain.ActivaForma(tfrmEntradasDiario, TForm(frmEntradasDiario));
  frmEntradasDiario.BuscaEntrada(QTransSUC_CODIGO.Value, QTransENT_NUMERO.Value,
                           QTransTRA_ANO.Value,
                           QTransTRA_MES.Value,
                           QTransTRA_DOC.Value);
  frmEntradasDiario.QDetalle.Locate('cat_cuenta',Trim(edCuenta.Text),[]);
  frmEntradasDiario.Grid.SetFocus;
end;

procedure TfrmConsMovimiento.BitBtn3Click(Sender: TObject);
begin
  Application.CreateForm(tRepDocumento, RepDocumento);
  RepDocumento.QTrans.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  RepDocumento.QTrans.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepDocumento.QTrans.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepDocumento.QTrans.Parameters.ParamByName('fecha1').Value   := Fecha1.Date;
  RepDocumento.QTrans.Parameters.ParamByName('fecha2').Value   := Fecha2.Date;
  RepDocumento.QTrans.Parameters.ParamByName('num').Value := QTransTRA_NUMERO.Value;
  RepDocumento.QTrans.Parameters.ParamByName('suc').Value := QTransSUC_CODIGO.Value;
  RepDocumento.QTrans.Open;
  RepDocumento.QDetalle.Open;
  RepDocumento.PrinterSetup;
  RepDocumento.Preview;
  RepDocumento.Destroy;
end;

procedure TfrmConsMovimiento.BitBtn2Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Application.CreateForm(tRepMovimiento, RepMovimiento);
  RepMovimiento.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+
                                   DateToStr(Fecha2.Date);
  RepMovimiento.lbCuenta.Caption := edCuenta.Text+' - '+tCuenta.Text;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select * from CONTPR_BUSCA_BALMOV (:EMP, :SUC, :FEC1, :FEC2, :CTA, :SUP, :CLI)');
  dm.Query1.Parameters.ParamByName('emp').Value     := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  dm.Query1.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
  dm.Query1.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
  dm.Query1.Parameters.ParamByName('cta').Value     := Trim(edCuenta.Text);
  dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  if trim(edProveedor.Text) <> '' then
     dm.Query1.Parameters.ParamByName('sup').Value := StrToInt(edProveedor.Text)
  else
     dm.Query1.Parameters.ParamByName('sup').Value := 0;

  if trim(edcliente.Text) <> '' then
     dm.Query1.Parameters.ParamByName('cli').Value := StrToInt(edcliente.Text)
  else
     dm.Query1.Parameters.ParamByName('cli').Value := 0;

  dm.Query1.Open;
  RepMovimiento.lbAnt.Caption := Format('%n',[dm.Query1.FieldByName('anterior').AsFloat]);
  RepMovimiento.lbActual.Caption := Format('%n',[dm.Query1.FieldByName('actual').AsFloat]);

  RepMovimiento.QTrans.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  RepMovimiento.QTrans.Parameters.ParamByName('fec1').DataType := ftDate;
  RepMovimiento.QTrans.Parameters.ParamByName('fec2').DataType := ftDate;
  RepMovimiento.QTrans.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
  RepMovimiento.QTrans.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
  RepMovimiento.QTrans.Parameters.ParamByName('cta').Value     := Trim(edCuenta.Text);
  RepMovimiento.QTrans.Parameters.ParamByName('suc').Value     := DBLookupComboBox2.KeyValue;
  RepMovimiento.QTrans.Parameters.ParamByName('ant').Value    := dm.Query1.FieldByName('anterior').AsFloat;
  if trim(edProveedor.Text) <> '' then
     RepMovimiento.QTrans.Parameters.ParamByName('sup').Value := StrToInt(edProveedor.Text)
  else
     RepMovimiento.QTrans.Parameters.ParamByName('sup').Value := 0;

  if trim(edcliente.Text) <> '' then
     RepMovimiento.QTrans.Parameters.ParamByName('cli').Value := StrToInt(edcliente.Text)
  else
     RepMovimiento.QTrans.Parameters.ParamByName('cli').Value := 0;

  RepMovimiento.QTrans.Open;

  Screen.Cursor := crDefault;
  RepMovimiento.PrinterSetup;
  RepMovimiento.Preview;
  RepMovimiento.Destroy;
end;

procedure TfrmConsMovimiento.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmConsMovimiento.btProvClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sup_nombre, sup_codigo');
  Search.Query.Add('from proveedores');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Proveedores';
  Search.ResultField := 'sup_codigo';
  if Search.execute then
  begin
    edProveedor.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre, sup_codigo from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edProveedor.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Open;
    tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsMovimiento.edProveedorChange(Sender: TObject);
begin
  if Trim(edProveedor.Text) = '' then tProv.Text := '';
end;

procedure TfrmConsMovimiento.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edProveedor.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sup_nombre, sup_codigo from proveedores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sup_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edProveedor.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Open;
      tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsMovimiento.btclienteClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cli_nombre, cli_codigo');
  Search.Query.Add('from clientes');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Clientes';
  Search.ResultField := 'cli_codigo';
  if Search.execute then
  begin
    edcliente.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_nombre, cli_codigo from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edcliente.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    tcliente.Text := dm.Query1.FieldByName('cli_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsMovimiento.edclienteChange(Sender: TObject);
begin
  if Trim(edcliente.Text) = '' then tcliente.Text := '';
end;

procedure TfrmConsMovimiento.edclienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edcliente.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cli_nombre, cli_codigo from clientes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cli_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edcliente.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Open;
      tcliente.Text := dm.Query1.FieldByName('cli_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

end.
