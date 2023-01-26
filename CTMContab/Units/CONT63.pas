unit CONT63;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, QuerySearchDlgADO, StdCtrls, Buttons, Mask,
  DBCtrls, Grids, DBGrids;

type
  TfrmMovActivos = class(TForm)
    Panel1: TPanel;
    Search: TQrySearchDlgADO;
    btTipo: TSpeedButton;
    Label6: TLabel;
    tTipo: TEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    btprov: TSpeedButton;
    Label4: TLabel;
    tProv: TEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btClose: TBitBtn;
    btgrabar: TBitBtn;
    btlimpiar: TBitBtn;
    btbuscaactivo: TBitBtn;
    bteliminar: TBitBtn;
    btbuscamov: TBitBtn;
    btbuscadepto: TBitBtn;
    QMov: TADOQuery;
    QMovemp_codigo: TIntegerField;
    QMovmov_numero: TIntegerField;
    QMovtip_codigo: TIntegerField;
    QMovmov_fecha: TDateTimeField;
    QMovmov_concepto: TMemoField;
    QMovmov_autorizado: TStringField;
    QMovmov_realizado: TStringField;
    QMovsup_codigo: TIntegerField;
    QMovusu_codigo: TIntegerField;
    QMovmov_fecharetorno: TDateTimeField;
    QMovmov_status: TStringField;
    dsMov: TDataSource;
    QDetalle: TADOQuery;
    QDetalleemp_codigo: TIntegerField;
    QDetallemov_numero: TIntegerField;
    QDetalleact_codigo: TStringField;
    QDetalledet_nota: TMemoField;
    QDetalledet_deptoorigen: TIntegerField;
    QDetalledet_deptodestino: TIntegerField;
    QDetalleact_nombre: TStringField;
    QDetalledet_secuencia: TIntegerField;
    dsDetalle: TDataSource;
    QDeptos: TADOQuery;
    QDeptosdep_codigo: TIntegerField;
    QDeptosdep_nombre: TStringField;
    QDetalleDesde: TStringField;
    QDetalleHasta: TStringField;
    procedure btTipoClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure QMovNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btprovClick(Sender: TObject);
    procedure QMovsup_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QMovtip_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovActivos: TfrmMovActivos;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmMovActivos.btTipoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.query.clear;
  Search.query.add('select tip_nombre, tip_codigo');
  Search.query.add('from tipo_movimientos_activos');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'tip_codigo';
  Search.Title := 'Tipo de movimientos';
  if Search.execute then
  begin
    QMovtip_codigo.Value := StrToInt(search.valuefield);
    DBEdit1.setfocus;
  end;
end;

procedure TfrmMovActivos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMovActivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmMovActivos.FormPaint(Sender: TObject);
begin
  frmMovActivos.Top := 7;
end;

procedure TfrmMovActivos.QMovNewRecord(DataSet: TDataSet);
begin
  QMovemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QMovmov_fecha.Value  := Date;
  QMovusu_codigo.Value := dm.Usuario;
  QMovmov_status.Value := 'EMI';

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QDetalle.Parameters.ParamByName('num').Value := -1;
  QDetalle.Open;
end;

procedure TfrmMovActivos.FormActivate(Sender: TObject);
begin
  if not QDeptos.Active then QDeptos.Open;
  if not QMov.Active then
  begin
    QMov.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QMov.Parameters.ParamByName('num').Value := -1;
    QMov.Open;
    QMov.Insert;
  end;
end;

procedure TfrmMovActivos.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
end;

procedure TfrmMovActivos.btprovClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.query.clear;
  Search.query.add('select sup_nombre, sup_codigo');
  Search.query.add('from proveedores');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'sup_codigo';
  Search.Title := 'Proveedores';
  if Search.execute then
  begin
    QMovsup_codigo.Value := StrToInt(search.valuefield);
    DBEdit5.setfocus;
  end;
end;

procedure TfrmMovActivos.QMovsup_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QMovsup_codigo.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_nombre');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := QMovsup_codigo.Value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tProv.text := dm.Query1.fieldbyname('sup_nombre').asstring
    else
      tProv.text := '';
  end
  else
    tProv.text := '';
end;

procedure TfrmMovActivos.QMovtip_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QMovtip_codigo.IsNull then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tip_nombre');
    dm.Query1.sql.add('from tipo_movimientos_activos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tip_codigo = :tip');
    dm.Query1.Parameters.parambyname('tip').Value := QMovtip_codigo.Value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tTipo.text := dm.Query1.fieldbyname('tip_nombre').asstring
    else
      tTipo.text := '';
  end
  else
    tTipo.text := '';
end;

end.
