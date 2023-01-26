unit PVENTA159;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, ComCtrls, ExtCtrls,
  DB, ADODB, QuerySearchDlgADO, IBCustomDataSet, Menus;

type
  TfrmConsNCProveedores = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Label14: TLabel;
    edProveedor: TEdit;
    tProveedor: TEdit;
    cbStatus: TRadioGroup;
    cbOrden: TComboBox;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    tUsuario: TEdit;
    edUsuario: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    QNotas: TADOQuery;
    dsNota: TDataSource;
    QNotasncr_numero: TIntegerField;
    QNotasncr_fecha: TDateTimeField;
    QNotasncr_concepto: TStringField;
    QNotasncr_monto: TBCDField;
    QNotasncr_Status: TStringField;
    QNotasfac_numero: TStringField;
    QNotassup_nombre: TStringField;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GridCuentas: TDBGrid;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleNCR_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    dsDetalle: TDataSource;
    QNotasemp_codigo: TIntegerField;
    QNotassuc_codigo: TIntegerField;
    Splitter1: TSplitter;
    QNotasncr_montousado: TBCDField;
    QNotasncr_devolucion: TIntegerField;
    QNotassup_codigo: TIntegerField;
    QNotasusu_codigo: TIntegerField;
    QNotasncr_usuario_anulo: TStringField;
    QNotasncr_motivo_anulo: TStringField;
    QDetalleSUC_CODIGO: TIntegerField;
    QNotasncr_ncf: TStringField;
    QNotasncr_ncf_modifica: TStringField;
    QNotasncr_itbis: TBCDField;
    QNotasncr_grabado: TBCDField;
    QNotasncr_exento: TBCDField;
    PopupMenu1: TPopupMenu;
    CambiarNCF1: TMenuItem;
    CambiarNCFModifica1: TMenuItem;
    QNotastotal_factura: TBCDField;
    procedure FormPaint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edUsuarioChange(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btRefreshClick(Sender: TObject);
    procedure QNotasAfterOpen(DataSet: TDataSet);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btEliminaClick(Sender: TObject);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure QNotasAfterScroll(DataSet: TDataSet);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure QDetalleAfterInsert(DataSet: TDataSet);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure CambiarNCF1Click(Sender: TObject);
    procedure CambiarNCFModifica1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitos, Creditos : Double;
    Modifica, Elimina : Boolean;
    Procedure TotalizaCuentas;
  end;

var
  frmConsNCProveedores: TfrmConsNCProveedores;

implementation

uses SIGMA01, SIGMA00, RVENTA104;

{$R *.dfm}

procedure TfrmConsNCProveedores.FormPaint(Sender: TObject);
begin
  with frmConsNCProveedores do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsNCProveedores.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsNCProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsNCProveedores.FormCreate(Sender: TObject);
begin
  Fecha1.date := date;
  Fecha2.date := date;
  Memo1.lines := QNotas.sql;
  cbOrden.itemindex := 0;
end;

procedure TfrmConsNCProveedores.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsNCProveedores.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsNCProveedores.SpeedButton2Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edProveedor.text := search.valuefield;
    edProveedor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsNCProveedores.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmConsNCProveedores.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProveedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
      dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
      dm.Query1.sql.add('from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
      dm.Query1.sql.add('and sup_codigo = :sup');
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(edProveedor.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end
    else
      tProveedor.text := '';
  end;
end;

procedure TfrmConsNCProveedores.SpeedButton3Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select usu_nombre, usu_codigo');
  Search.Query.add('from usuarios');
  Search.ResultField := 'usu_Codigo';
  Search.Title := 'Usuarios';
  if Search.execute then
  begin
    edUsuario.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select usu_nombre from usuarios');
    dm.Query1.sql.add('where usu_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
    else
      tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
    edUsuario.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsNCProveedores.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsNCProveedores.edUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edUsuario.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select usu_nombre from usuarios');
      dm.Query1.sql.add('where usu_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('USUARIO NO EXISTE',mterror,[mbok],0);
        edUsuario.setFocus;
      end
      else
        tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsNCProveedores.btRefreshClick(Sender: TObject);
begin
  QNotas.Close;
  QNotas.SQL.Clear;
  QNotas.SQL := Memo1.Lines;
  if Trim(edProveedor.text) <> '' then
     QNotas.SQL.Add('and n.sup_codigo = '+Trim(edProveedor.text));
  if Trim(edUsuario.text) <> '' then
     QNotas.SQL.Add('and n.usu_codigo = '+Trim(edUsuario.text));

  {if cksucursal.Checked then
     QNotas.SQL.Add('and f.suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));}

  case cbStatus.ItemIndex of
  1 : QNotas.SQL.Add('and n.ncr_status = '+#39+'ANU'+#39);
  2 : QNotas.SQL.Add('and n.ncr_status <> '+#39+'ANU'+#39);
  end;

  case cbOrden.ItemIndex of
  0 : QNotas.SQL.Add('order by n.ncr_numero');
  1 : QNotas.SQL.Add('order by n.ncr_fecha');
  end;

  QNotas.Parameters.ParamByName('fec1').DataType := ftDate;
  QNotas.Parameters.ParamByName('fec2').DataType := ftDate;
  QNotas.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  QNotas.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  QNotas.Parameters.ParamByName('emp').Value  := dm.vp_cia;
  QNotas.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
  QNotas.Open;
  lbCantidad.Caption := inttostr(QNotas.RecordCount)+' Notas de crédito';
  DBGrid1.SetFocus;
end;

procedure TfrmConsNCProveedores.QNotasAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active then QDetalle.Open;
end;

procedure TfrmConsNCProveedores.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmConsNCProveedores.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmConsNCProveedores.GridCuentasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 2 then
  begin
    if key = 68 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 3;
    end
    else if key = 67 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 3;
    end;
  end;
  if key = vk_f5 then btBuscaCtaClick(Self);
  if key = vk_f4 then btEliminaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 3 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 0;
       QDetalle.Append;
     end;
end;

procedure TfrmConsNCProveedores.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmConsNCProveedores.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmConsNCProveedores.TotalizaCuentas;
var
  Punt : TBookMark;
begin
  Debitos  := 0;
  Creditos := 0;
  Punt := QDetalle.GetBookmark;
  QDetalle.DisableControls;
  QDetalle.First;
  while not QDetalle.Eof do
  begin
    if QDetalleDET_ORIGEN.Value = 'Debito' then
      Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]))
    else
      Creditos := Creditos + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]));
    QDetalle.Next;
  end;
  QDetalle.GotoBookmark(Punt);
  QDetalle.EnableControls;
  lbCR.Caption  := Format('%n',[Creditos]);
  lbDB.Caption  := Format('%n',[Debitos]);
  lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmConsNCProveedores.QNotasAfterScroll(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmConsNCProveedores.QDetalleAfterDelete(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  TotalizaCuentas;
end;

procedure TfrmConsNCProveedores.QDetalleAfterPost(DataSet: TDataSet);
begin
  QDetalle.UpdateBatch;
  TotalizaCuentas;
end;

procedure TfrmConsNCProveedores.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
  QDetalleNCR_NUMERO.Value := QNotasNCR_NUMERO.Value;
  QDetalleSUC_CODIGO.Value := QNotassuc_codigo.Value;
end;

procedure TfrmConsNCProveedores.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
  if QDetalle.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(det_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from contdet_notacreditocompra');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ncr_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value := QNotasNCR_NUMERO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QNotasSUC_CODIGO.Value;
    dm.Query1.Open;
    QDetalleDET_SECUENCIA.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmConsNCProveedores.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QDetalleCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QDetalle.Edit;
      QDetalleCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmConsNCProveedores.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsNCProveedores.QDetalleAfterInsert(DataSet: TDataSet);
begin
  if not Modifica then QDetalle.Cancel;
end;

procedure TfrmConsNCProveedores.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  if not Elimina then Abort;
end;

procedure TfrmConsNCProveedores.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsNCProv, RConsNCProv);
  RConsNCProv.QNotas.SQL := QNotas.SQL;
  RConsNCProv.lbProv.Caption  := tProveedor.Text;
  RConsNCProv.lbUsuario.Caption  := tUsuario.Text;
  RConsNCProv.lbStatus.Caption   := cbStatus.Items[cbStatus.ItemIndex];
  RConsNCProv.lbFecha.Caption    := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsNCProv.QNotas.Parameters.parambyname('fec1').DataType := ftDate;
  RConsNCProv.QNotas.Parameters.parambyname('fec2').DataType := ftDate;
  RConsNCProv.QNotas.Parameters.parambyname('fec1').Value := fecha1.date;
  RConsNCProv.QNotas.Parameters.parambyname('fec2').Value := fecha2.date;
  RConsNCProv.QNotas.Parameters.parambyname('emp').Value := dm.vp_cia;
  RConsNCProv.QNotas.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  RConsNCProv.QNotas.open;
  RConsNCProv.PrinterSetup;
  RConsNCProv.Preview;
  RConsNCProv.Destroy;
end;

procedure TfrmConsNCProveedores.CambiarNCF1Click(Sender: TObject);
var
  Texto : String;
  p : TBookmark;
begin
  Texto := InputBox('NCF','NCF:',QNotasncr_ncf.AsString);
  if Trim(Text) <> '' then
  begin
    p := QNotas.GetBookmark;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update NotasCreditoCompra set ncr_ncf = :ncf');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and ncr_numero = :num');
    dm.Query1.Parameters.ParamByName('ncf').Value := Texto;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := QNotassuc_codigo.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QNotasncr_numero.Value;
    dm.Query1.ExecSQL;

    QNotas.DisableControls;
    QNotas.Close;
    QNotas.Open;
    QNotas.GotoBookmark(p);
    QNotas.EnableControls;
  end;
end;

procedure TfrmConsNCProveedores.CambiarNCFModifica1Click(Sender: TObject);
var
  Texto : String;
  p : TBookmark;
begin
  Texto := InputBox('NCF Modifica','NCF Modifica:',QNotasncr_ncf_modifica.AsString);
  if Trim(Text) <> '' then
  begin
    p := QNotas.GetBookmark;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update NotasCreditoCompra set ncr_ncf_modifica = :ncf');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and ncr_numero = :num');
    dm.Query1.Parameters.ParamByName('ncf').Value := Texto;
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('suc').Value := QNotassuc_codigo.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QNotasncr_numero.Value;
    dm.Query1.ExecSQL;

    QNotas.DisableControls;
    QNotas.Close;
    QNotas.Open;
    QNotas.GotoBookmark(p);
    QNotas.EnableControls;
  end;
end;

end.
