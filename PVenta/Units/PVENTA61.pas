unit PVENTA61;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, IBCustomDataSet, IBQuery,
  ComCtrls, Grids, DBGrids, DBCtrls, QuerySearchDlgADO, ADODB;

type
  TfrmConsPago = class(TForm)
    Panel2: TPanel;
    lbCantidad: TLabel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    QPagos: TADOQuery;
    QPagosEMP_CODIGO: TIntegerField;
    QPagosPAG_DOCUMENTO: TIBStringField;
    QPagosPAG_FECHA: TDateTimeField;
    QPagosPAG_MONTO: TFloatField;
    QPagosPAG_NUMERO: TIntegerField;
    QPagosPAG_STATUS: TIBStringField;
    QPagosPAG_TIPO: TIBStringField;
    QPagosSUP_CODIGO: TIntegerField;
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    tUsuario: TEdit;
    edUsuario: TEdit;
    DBGrid1: TDBGrid;
    dsPagos: TDataSource;
    Label2: TLabel;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Search: TQrySearchDlgADO;
    QPagosSUP_NOMBRE: TIBStringField;
    QPagosUSU_NOMBRE: TIBStringField;
    rbTipo: TRadioGroup;
    QBancos: TADOQuery;
    QBancosBAN_CODIGO: TIntegerField;
    QBancosBAN_NOMBRE: TIBStringField;
    QPagosBAN_CODIGO: TIntegerField;
    QPagosBanco: TStringField;
    Label1: TLabel;
    btBanco: TSpeedButton;
    edBAnco: TEdit;
    tBanco: TEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edUsuarioChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure btBancoClick(Sender: TObject);
    procedure edBAncoChange(Sender: TObject);
    procedure edBAncoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsPago: TfrmConsPago;

implementation

uses RVENTA15, SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmConsPago.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmConsPago.FormActivate(Sender: TObject);
begin
  if not QBancos.Active then QBancos.Open;
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsPago.SpeedButton3Click(Sender: TObject);
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

procedure TfrmConsPago.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmConsPago.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmConsPago.FormCreate(Sender: TObject);
begin
  Fecha1.date := date;
  Fecha2.date := date;
end;

procedure TfrmConsPago.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmConsPago.btRefreshClick(Sender: TObject);
begin
  QPagos.close;
  QPagos.SQL.Clear;
  QPagos.SQL.Add('select');
  QPagos.SQL.Add('p.EMP_CODIGO, p.PAG_DOCUMENTO, p.PAG_FECHA, p.PAG_MONTO,');
  QPagos.SQL.Add('p.PAG_NUMERO, p.PAG_STATUS, p.PAG_TIPO, p.SUP_CODIGO,');
  QPagos.SQL.Add('s.sup_nombre, u.usu_nombre, p.ban_codigo');
  QPagos.SQL.Add('from');
  QPagos.SQL.Add('PAGOS P, proveedores s, usuarios u');
  QPagos.SQL.Add('where p.emp_codigo = s.emp_codigo');
  QPagos.SQL.Add('and p.sup_codigo = s.sup_codigo');
  QPagos.SQL.Add('and p.emp_codigo = :emp_codigo');
  QPagos.SQL.Add('and p.usu_codigo = u.usu_codigo');
  QPagos.SQL.Add('and p.pag_fecha between :fecha1 and :fecha2');
  case rbTipo.ItemIndex of
  1 : QPagos.SQL.Add('and p.pag_tipo = '+#39+'C'+#39);
  2 : QPagos.SQL.Add('and p.pag_tipo = '+#39+'E'+#39);
  3 : QPagos.SQL.Add('and p.pag_tipo = '+#39+'N'+#39);
  end;
  if Trim(edProveedor.text) <> '' then
     QPagos.SQL.Add('and p.sup_codigo = '+Trim(edProveedor.text));
  if Trim(edUsuario.Text) <> '' then
     QPagos.SQL.Add('and p.usu_codigo = '+Trim(edUsuario.text));
  if Trim(edBanco.Text) <> '' then
     QPagos.SQL.Add('and p.ban_codigo = '+Trim(edBanco.text));

  QPagos.SQL.Add('order by p.pag_fecha desc');
  QPagos.Parameters.ParamByName('Fecha1').Value := Fecha1.Date;
  QPagos.Parameters.ParamByName('Fecha2').Value := Fecha2.Date;
  QPagos.Open;
  lbCantidad.Caption := inttostr(QPagos.RecordCount)+' Registros';
  DBGrid1.SetFocus;

end;

procedure TfrmConsPago.btProveedorClick(Sender: TObject);
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
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsPago.edProveedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end
    else
      tProveedor.text := 'INVALIDO';
  end;
end;

procedure TfrmConsPago.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsPago, RConsPago);
  RConsPago.QPagos.SQL := QPagos.SQL;
  RConsPago.QPagos.Parameters.ParamByName('Fecha1').Value := Fecha1.Date;
  RConsPago.QPagos.Parameters.ParamByName('Fecha2').Value := Fecha2.Date;
  RConsPago.QPagos.Open;
  RConsPago.lbCliente.Caption := tProveedor.Text;
  RConsPago.QBancos.Open;
  RConsPago.lbBanco.Caption := tBanco.Text;
  RConsPago.lbUsuario.Caption := tUsuario.Text;
  RConsPago.lbStatus.Caption  := rbTipo.Items[rbTipo.ItemIndex];
  RConsPago.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsPago.PrinterSetup;
  RConsPago.Preview;
  RConsPago.Destroy;
end;

procedure TfrmConsPago.btBancoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select ban_nombre, ban_codigo');
  Search.ResultField := 'ban_codigo';
  Search.Query.add('from bancos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Title := 'Bancos';
  if Search.execute then
  begin
    edBanco.text := search.valuefield;
    edBanco.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ban_codigo, ban_nombre');
    dm.Query1.sql.add('from bancos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ban_codigo = :ban');
    dm.Query1.Parameters.parambyname('ban').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    tBanco.text := dm.Query1.fieldbyname('ban_nombre').asstring;
    edBanco.setfocus;
    btRefreshClick(Self);
  end;
end;

procedure TfrmConsPago.edBAncoChange(Sender: TObject);
begin
  if trim(edBanco.text) = '' then tBanco.text := '';
end;

procedure TfrmConsPago.edBAncoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edBanco.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ban_nombre');
      dm.Query1.sql.add('from bancos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ban_codigo = :ban');
      dm.Query1.Parameters.parambyname('ban').Value := strtoint(edBanco.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      tBanco.text := dm.Query1.fieldbyname('ban_nombre').asstring;
    end
    else
      tBanco.text := 'INVALIDO';
  end;
end;

procedure TfrmConsPago.FormPaint(Sender: TObject);
begin
  frmConsPago.Top := 4;
  frmConsPago.left := 1;
end;

procedure TfrmConsPago.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

end.
