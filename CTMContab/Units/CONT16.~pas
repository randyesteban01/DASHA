unit CONT16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DateUtils, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsEntradas = class(TForm)
    Panel1: TPanel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    Panel2: TPanel;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbStatus: TRadioGroup;
    Label7: TLabel;
    btUsu: TSpeedButton;
    tUsu: TEdit;
    edUsuario: TEdit;
    Label2: TLabel;
    btCliente: TSpeedButton;
    edCliente: TEdit;
    tCliente: TEdit;
    Label5: TLabel;
    cbOrden: TComboBox;
    Label1: TLabel;
    btProv: TSpeedButton;
    edProveedor: TEdit;
    tProv: TEdit;
    Label3: TLabel;
    btTipo: TSpeedButton;
    edTipo: TEdit;
    tTipo: TEdit;
    lbCantidad: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QTrans: TADOQuery;
    QTransValor: TFloatField;
    dsTrans: TDataSource;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_CREDITO: TFloatField;
    QDetalleDET_DEBITO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SEC: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleENT_NUMERO: TIntegerField;
    QDetalleTRA_ANO: TIntegerField;
    QDetalleTRA_DOC: TIBStringField;
    QDetalleTRA_MES: TIntegerField;
    QDetalleValor: TFloatField;
    QDetalleTRA_NUMERO: TIntegerField;
    dsDetalle: TDataSource;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    Search: TQrySearchDlgADO;
    Label4: TLabel;
    edConc: TEdit;
    Label8: TLabel;
    edBenef: TEdit;
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
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    QTransid: TAutoIncField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QTransSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    Splitter1: TSplitter;
    lbLocSuc: TLabel;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure QTransAfterOpen(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QTransFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edUsuarioChange(Sender: TObject);
    procedure btTipoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btClienteClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btProvClick(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btUsuClick(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QDetalleBeforeOpen(DataSet: TDataSet);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Cliente, Prov : Integer;
  end;

var
  frmConsEntradas: TfrmConsEntradas;

implementation

uses CONT15, RCONT04, RCONT05, SIGMA00, SIGMA01, PVENTA27;

{$R *.dfm}

procedure TfrmConsEntradas.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsEntradas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsEntradas.FormPaint(Sender: TObject);
begin
  with frmConsEntradas do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsEntradas.FormCreate(Sender: TObject);
begin
  Memo1.Lines := QTrans.SQL;
  cbOrden.ItemIndex := 0;
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);
end;

procedure TfrmConsEntradas.btRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QTrans.Close;
  QTrans.Filtered := False;
  QTrans.SQL.Clear;
  QTrans.SQL := Memo1.Lines;
  case cbStatus.ItemIndex of
  1 : QTrans.SQL.Add('and tra_status = '+#39+'ANU'+#39);
  2 : QTrans.SQL.Add('and tra_status = '+#39+'POS'+#39);
  3 : QTrans.SQL.Add('and tra_status = '+#39+'EMI'+#39);
  4 : Begin
        QTrans.Filtered := True;
      End;
  end;
  if trim(edBenef.Text) <> '' then
    QTrans.SQL.Add('and tra_benef like '+#39+trim(edBenef.Text)+#39);

  if trim(edConc.Text) <> '' then
    QTrans.SQL.Add('and tra_concepto1 like '+#39+trim(edConc.Text)+#39);

  if Trim(edTipo.Text) <> '' then
    QTrans.SQL.Add('and tdo_codigo = '+#39+trim(edTipo.Text)+#39);

  if Trim(edCliente.Text) <> '' then
    QTrans.SQL.Add('and cli_codigo = '+inttostr(Cliente));

  if Trim(edProveedor.Text) <> '' then
    QTrans.SQL.Add('and sup_codigo = '+inttostr(Prov));

  if Trim(edUsuario.Text) <> '' then
    QTrans.SQL.Add('and usu_codigo = '+Trim(edUsuario.Text));

  QTrans.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QTrans.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  QTrans.Parameters.ParamByName('fecha1').DataType := ftDate;
  QTrans.Parameters.ParamByName('fecha2').DataType := ftDate;
  QTrans.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  QTrans.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  QTrans.Parameters.ParamByName('sucloc').DataType := ftInteger;
  QTrans.Parameters.ParamByName('sucloc').DataType := ftString;
  if Trim(edtSucLoc.Text)= '' then
  QTrans.Parameters.ParamByName('sucloc').Value := Null else
  QTrans.Parameters.ParamByName('sucloc').Value :=  edtSucLoc.Text;


  case cbOrden.ItemIndex of
  0 : QTrans.SQL.Add('order by ent_numero');
  1 : QTrans.SQL.Add('order by tra_doc');
  2 : QTrans.SQL.Add('order by tra_fecha');
  3 : QTrans.SQL.Add('order by tdo_nombre');
  end;
  QTrans.Open;
  lbCantidad.Caption := IntToStr(QTrans.REcordCount)+' Documentos';
  Screen.Cursor := crDefault;
end;

procedure TfrmConsEntradas.QTransAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active then QDetalle.Open;
end;

procedure TfrmConsEntradas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if format('%n',[QTransTRA_DEBITOS.Value]) <>
  format('%n',[QTransTRA_CREDITOS.Value]) then
  begin
     DBGrid1.canvas.font.color := clRed;
     DBGrid1.canvas.font.Style := [fsbold];
     DBGrid1.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmConsEntradas.QTransFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if format('%n',[QTransTRA_DEBITOS.Value]) <>
  format('%n',[QTransTRA_CREDITOS.Value]) then
    Accept := True
  else
    Accept := False;
end;

procedure TfrmConsEntradas.BitBtn1Click(Sender: TObject);
begin
  frmmain.ActivaForma(tfrmEntradasDiario, TForm(frmEntradasDiario));
  frmEntradasDiario.DBLookupComboBox2.KeyValue := QTransSUC_CODIGO.Value;
  frmEntradasDiario.BuscaEntrada(QTransSUC_CODIGO.Value, QTransENT_NUMERO.Value,
                           QTransTRA_ANO.Value,
                           QTransTRA_MES.Value,
                           QTransTRA_DOC.Value);
end;

procedure TfrmConsEntradas.edTipoChange(Sender: TObject);
begin
  if Trim(edTipo.Text) = '' then tTipo.Text := '';
end;

procedure TfrmConsEntradas.edClienteChange(Sender: TObject);
begin
  if Trim(edCliente.Text) = '' then tCliente.Text := '';
end;

procedure TfrmConsEntradas.edProveedorChange(Sender: TObject);
begin
  if Trim(edProveedor.Text) = '' then tProv.Text := '';
end;

procedure TfrmConsEntradas.edUsuarioChange(Sender: TObject);
begin
  if Trim(edUsuario.Text) = '' then tUsu.Text := '';
end;

procedure TfrmConsEntradas.btTipoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Tipos de Documentos';
  Search.ResultField := 'tdo_codigo';
  if Search.execute then
  begin
    edTipo.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_codigo = :cod');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cod').Value  := edTipo.Text;
    dm.Query1.Open;
    tTipo.Text := dm.Query1.FieldByName('tdo_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsEntradas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if activecontrol.ClassType <> tdbGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmConsEntradas.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and tdo_codigo = :cod');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('cod').Value  := edTipo.Text;
      dm.Query1.Open;
      tTipo.Text := dm.Query1.FieldByName('tdo_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsEntradas.btClienteClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cli_nombre, cli_referencia, cli_codigo');
  Search.Query.Add('from clientes');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Referencia');
  Search.AliasFields.Add('Código');
  Search.Title := 'Clientes';
  if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    Search.ResultField := 'cli_codigo'
  else
    Search.ResultField := 'cli_referencia';
  if Search.execute then
  begin
    edCliente.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_nombre, cli_codigo from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
    begin
      dm.Query1.SQL.Add('and cli_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edCliente.Text);
    end
    else
    begin
      dm.Query1.SQL.Add('and cli_referencia = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := edCliente.Text;
    end;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    tCliente.Text := dm.Query1.FieldByName('cli_nombre').AsString;
    Cliente := dm.Query1.FieldByName('cli_codigo').AsInteger;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsEntradas.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCliente.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cli_nombre, cli_codigo from clientes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.Value = 'I' then
      begin
        dm.Query1.SQL.Add('and cli_codigo = :cod');
        dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edCliente.Text);
      end
      else
      begin
        dm.Query1.SQL.Add('and cli_referencia = :cod');
        dm.Query1.Parameters.ParamByName('cod').Value  := edCliente.Text;
      end;
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Open;
      tCliente.Text := dm.Query1.FieldByName('cli_nombre').AsString;
      Cliente := dm.Query1.FieldByName('cli_codigo').AsInteger;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsEntradas.btProvClick(Sender: TObject);
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
    Prov := dm.Query1.FieldByName('sup_codigo').AsInteger;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsEntradas.edProveedorKeyDown(Sender: TObject;
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
      Prov := dm.Query1.FieldByName('sup_codigo').AsInteger;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsEntradas.btUsuClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select usu_nombre, usu_codigo');
  Search.Query.Add('from usuarios');
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Usuarios';
  Search.ResultField := 'usu_codigo';
  if Search.execute then
  begin
    edUsuario.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select usu_nombre from usuarios');
    dm.Query1.SQL.Add('where usu_codigo = :cod');
    dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edUsuario.Text);
    dm.Query1.Open;
    tUsu.Text := dm.Query1.FieldByName('usu_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsEntradas.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edUsuario.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select usu_nombre from usuarios');
      dm.Query1.SQL.Add('where usu_codigo = :cod');
      dm.Query1.Parameters.ParamByName('cod').Value  := StrToInt(edUsuario.Text);
      dm.Query1.Open;
      tUsu.Text := dm.Query1.FieldByName('usu_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsEntradas.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRepConsEntradas, RepConsEntradas);
  RepConsEntradas.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+
                                     ' Al '+DateToStr(Fecha2.Date);
  RepConsEntradas.QTrans.SQL := QTrans.SQL;
  RepConsEntradas.QTrans.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  RepConsEntradas.QTrans.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RepConsEntradas.QTrans.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepConsEntradas.QTrans.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepConsEntradas.QTrans.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepConsEntradas.QTrans.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  if Trim(edtSucLoc.Text)= '' then
  RepConsEntradas.QTrans.Parameters.ParamByName('sucloc').Value := Null else
  RepConsEntradas.QTrans.Parameters.ParamByName('sucloc').Value := edtSucLoc.Text;
  RepConsEntradas.QTrans.Open;
  RepConsEntradas.PrinterSetup;
  RepConsEntradas.Preview;
  RepConsEntradas.Destroy;
end;

procedure TfrmConsEntradas.BitBtn3Click(Sender: TObject);
begin
  Application.CreateForm(tRepDocumento, RepDocumento);
  RepDocumento.QTrans.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  RepDocumento.QTrans.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepDocumento.QTrans.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepDocumento.QTrans.Parameters.ParamByName('fecha1').Value   := Fecha1.Date;
  RepDocumento.QTrans.Parameters.ParamByName('fecha2').Value   := Fecha2.Date;
  RepDocumento.QTrans.Parameters.ParamByName('num').Value := QTransTRA_NUMERO.Value;
  RepDocumento.QTrans.Parameters.ParamByName('suc').Value := QTransSUC_CODIGO.Value;
  if Trim(edtSucLoc.Text)= '' then
  RepDocumento.QTrans.Parameters.ParamByName('sucloc').Value := Null else
  RepDocumento.QTrans.Parameters.ParamByName('sucloc').Value := edtSucLoc.Text;
  RepDocumento.QTrans.Open;
  RepDocumento.QDetalle.Open;
  RepDocumento.PrinterSetup;
  RepDocumento.Preview;
  RepDocumento.Destroy;
end;

procedure TfrmConsEntradas.BitBtn4Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select count(*) as cant from contmeses');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ano = :ano');
  dm.Query1.SQL.Add('and mes = :mes');
  dm.Query1.SQL.Add('and status = '+#39+'C'+#39);
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ano').Value := YearOf(QTransTRA_FECHA.Value);
  dm.Query1.Parameters.ParamByName('mes').Value := MonthOf(QTransTRA_FECHA.Value);
  dm.Query1.Open;
  if dm.Query1.FieldByName('cant').AsInteger > 0 then
    MessageDlg('ESTE MES ESTA CERRADO Y NO PUEDE REALIZAR MODIFICACIONES',mtError,[mbok],0)
  else
  begin
    if MessageDlg('DESEA ELIMINAR ESTA ENTRADA?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('delete from contdet_trans');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and tra_numero = :num');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('num').Value := QTransTRA_NUMERO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QTransSUC_CODIGO.Value;
      dm.Query1.ExecSQL;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('delete from conttrans');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and tra_numero = :num');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('num').Value := QTransTRA_NUMERO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QTransSUC_CODIGO.Value;
      dm.Query1.ExecSQL;

      QTrans.Close;
      QTrans.Open;
    end;
  end;
  DBGrid1.SetFocus;
end;

procedure TfrmConsEntradas.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
    btRefreshClick(Self);
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsEntradas.FormShow(Sender: TObject);
begin
if dm.QParametrospar_banca_apuestas.Value = True then begin
lbLocSuc.Visible := True;
edtSucLoc.Visible := True;
btLocalidad.Visible := True;
TSucLoc.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
edtSucLoc.Visible := False;
btLocalidad.Visible := False;
TSucLoc.Visible := False;
end;
end;

procedure TfrmConsEntradas.QDetalleBeforeOpen(DataSet: TDataSet);
begin
if edtSucLoc.Text <> '' then begin
QDetalle.SQL.Delete(11);
QDetalle.SQL.AddObject('AND cont_numeroSucursal = '+edtSucLoc.Text+' ORDER BY DET_SEC',TObject(11));
end;

if edtSucLoc.Text = '' then begin
QDetalle.SQL.Delete(11);
QDetalle.SQL.AddObject('ORDER BY DET_SEC',TObject(11));
end;


end;

procedure TfrmConsEntradas.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
btRefreshClick(Sender);
end;

procedure TfrmConsEntradas.edtSucLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edtSucLoc.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;

end;

procedure TfrmConsEntradas.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    edtSucLoc.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
    btRefreshClick(Self);
  end;

end;

end.
