unit SERV04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DB, ADODB, Grids, DBGrids, QuerySearchDlgADO,
  Buttons;

type
  TfrmSalidaEquipos = class(TForm)
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    edNumero: TEdit;
    QOrden: TADOQuery;
    QOrdenemp_codigo: TIntegerField;
    QOrdensuc_codigo: TIntegerField;
    QOrdenord_numero: TIntegerField;
    QOrdenord_fecha: TDateTimeField;
    QOrdenusu_codigo: TIntegerField;
    QOrdencli_codigo: TIntegerField;
    QOrdenord_nombre: TStringField;
    QOrdenord_direccion: TStringField;
    QOrdenord_localidad: TStringField;
    QOrdenord_telefono: TStringField;
    QOrdenord_status: TStringField;
    QOrdenord_fecha_entrega: TDateTimeField;
    QOrdenord_fecha_expira: TDateTimeField;
    QOrdenord_nota: TMemoField;
    dsOrden: TDataSource;
    QDetalle: TADOQuery;
    QDetalleemp_codigo: TIntegerField;
    QDetallesuc_codigo: TIntegerField;
    QDetalleord_numero: TIntegerField;
    QDetalledet_secuencia: TIntegerField;
    QDetalletip_codigo: TIntegerField;
    QDetalledet_numero_serie: TStringField;
    QDetalledet_descripcion: TStringField;
    QDetalledet_problema: TMemoField;
    QDetalledet_fecha_entrada: TDateTimeField;
    QDetalledet_fecha_entrega: TDateTimeField;
    QDetalletec_codigo: TIntegerField;
    QDetalledet_monto: TBCDField;
    QDetalledet_comentario: TMemoField;
    QDetalledet_tiene_garantia: TStringField;
    QDetalletip_nombre: TStringField;
    QDetalledet_status: TStringField;
    dsDetalle: TDataSource;
    Search: TQrySearchDlgADO;
    Grid: TDBGrid;
    btClose: TBitBtn;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSalidaEquipos: TfrmSalidaEquipos;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmSalidaEquipos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;

end;

procedure TfrmSalidaEquipos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSalidaEquipos.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmSalidaEquipos.SpeedButton1Click(Sender: TObject);
begin
  QOrden.Close;
  QOrden.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QOrden.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  QOrden.Parameters.ParamByName('ord').Value := StrToInt(edNumero.Text);
  QOrden.Open;
  QDetalle.Open;
end;

procedure TfrmSalidaEquipos.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Desea dar salida al equipo?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update det_orden_servicio set det_status = :st');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and ord_numero = :ord');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.SQL.Add('and det_numero_serie = :ser');
    dm.Query1.Parameters.ParamByName('st').Value  := 'ENT';
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('ord').Value := StrToInt(edNumero.Text);
    dm.Query1.Parameters.ParamByName('tip').Value := QDetalletip_codigo.Value;
    dm.Query1.Parameters.ParamByName('ser').Value := QDetalledet_numero_serie.Value;
    dm.Query1.ExecSQL;

    QDetalle.Close;
    QDetalle.Open;
  end;  
end;

procedure TfrmSalidaEquipos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

end.
