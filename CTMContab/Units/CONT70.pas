unit CONT70;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, Buttons, QuerySearchDlgADO;

type
  TfrmConfigSituacion = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    QEstado: TADOQuery;
    dsEstado: TDataSource;
    Label2: TLabel;
    QEstadocuenta: TStringField;
    QEstadocat_nombre: TStringField;
    DBGrid2: TDBGrid;
    btClose: TBitBtn;
    QDetalle: TADOQuery;
    QEstadoemp_codigo: TIntegerField;
    QDetallecuenta_sumar: TStringField;
    QDetallecat_nombre: TStringField;
    dsDetalle: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Search: TQrySearchDlgADO;
    SpeedButton5: TSpeedButton;
    QEstadoNivel: TIntegerField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    QEstadonegrita: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QEstadoAfterOpen(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigSituacion: TfrmConfigSituacion;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmConfigSituacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConfigSituacion.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConfigSituacion.SpeedButton2Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_cuenta, cat_nombre from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_cuenta not in (select cuenta from ContConfig_Situacion');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value)+')');
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into ContConfig_Situacion (emp_codigo, cuenta)');
    dm.Query1.SQL.Add('values (:emp, :cta)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := Search.ValueField;
    dm.Query1.ExecSQL;
    QEstado.Close;
    QEstado.Open;
    QEstado.Locate('cuenta',Search.ValueField,[]);
  end;
end;

procedure TfrmConfigSituacion.SpeedButton1Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from ContConfig_Situacion');
  dm.Query1.SQL.Add('where emp_codigo = :emp and cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
  dm.Query1.ExecSQL;
  QEstado.Close;
  QEstado.Open;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from ContConfig_Situacion_Detalle');
  dm.Query1.SQL.Add('where emp_codigo = :emp and cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
  dm.Query1.ExecSQL;

end;

procedure TfrmConfigSituacion.SpeedButton4Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_cuenta, cat_nombre from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_cuenta not in (select cuenta_sumar from ContConfig_Situacion_Detalle');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cuenta = '+QuotedStr(QEstadocuenta.Value)+')');
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into ContConfig_Situacion_Detalle (emp_codigo, cuenta, cuenta_sumar)');
    dm.Query1.SQL.Add('values (:emp, :cta, :sum)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
    dm.Query1.Parameters.ParamByName('sum').Value := Search.ValueField;
    dm.Query1.ExecSQL;
    QDetalle.Close;
    QDetalle.Open;
    QDetalle.Locate('cuenta_sumar',Search.ValueField,[]);
  end;
end;

procedure TfrmConfigSituacion.SpeedButton3Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from ContConfig_Situacion_Detalle');
  dm.Query1.SQL.Add('where emp_codigo = :emp and cuenta = :cta');
  dm.Query1.SQL.Add('and cuenta_sumar = :sum');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
  dm.Query1.Parameters.ParamByName('sum').Value := QDetallecuenta_sumar.Value;
  dm.Query1.ExecSQL;
  QDetalle.Close;
  QDetalle.Open;
end;

procedure TfrmConfigSituacion.FormActivate(Sender: TObject);
begin
  if not QEstado.Active then QEstado.Open;
end;

procedure TfrmConfigSituacion.QEstadoAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.Active then QDetalle.Open;
end;

procedure TfrmConfigSituacion.SpeedButton5Click(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('insert into ContConfig_Situacion_Detalle (emp_codigo, cuenta, cuenta_sumar)');
  dm.Query1.SQL.Add('select emp_codigo, :cta, cat_cuenta from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp and cat_control = :ctr');
  dm.Query1.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ctr').Value := QEstadocuenta.Value;
  dm.Query1.ExecSQL;
  QDetalle.Close;
  QDetalle.Open;
end;

procedure TfrmConfigSituacion.BitBtn1Click(Sender: TObject);
var
  t : tbookmark;
begin
  t := QEstado.GetBookmark;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('update ContConfig_Situacion set nivel = isnull(nivel,0)+1');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
  dm.Query1.ExecSQL;

  QEstado.DisableControls;
  QEstado.Close;
  QEstado.Open;
  QEstado.GotoBookmark(t);
  QEstado.EnableControls;
end;

procedure TfrmConfigSituacion.BitBtn2Click(Sender: TObject);
var
  t : tbookmark;
begin
  t := QEstado.GetBookmark;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('update ContConfig_Situacion set nivel = isnull(nivel,0)-1');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
  dm.Query1.ExecSQL;

  QEstado.DisableControls;
  QEstado.Close;
  QEstado.Open;
  QEstado.GotoBookmark(t);
  QEstado.EnableControls;
end;

procedure TfrmConfigSituacion.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if QEstadonegrita.Value = 'S' then
  begin
     DBGrid1.canvas.font.Style := DBGrid1.canvas.font.Style + [fsbold];
     DBGrid1.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end
  else
  begin
     DBGrid1.canvas.font.Style := DBGrid1.canvas.font.Style - [fsbold];
     DBGrid1.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmConfigSituacion.BitBtn3Click(Sender: TObject);
var
  t : tbookmark;
begin
  if QEstadonegrita.Value <> 'S' then
  begin
    t := QEstado.GetBookmark;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update ContConfig_Situacion set negrita = :neg');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
    dm.Query1.Parameters.ParamByName('neg').Value := 'S';
    dm.Query1.ExecSQL;

    QEstado.DisableControls;
    QEstado.Close;
    QEstado.Open;
    QEstado.GotoBookmark(t);
    QEstado.EnableControls;
  end
  else
  begin
    t := QEstado.GetBookmark;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update ContConfig_Situacion set negrita = :neg');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value := QEstadocuenta.Value;
    dm.Query1.Parameters.ParamByName('neg').Value := 'N';
    dm.Query1.ExecSQL;

    QEstado.DisableControls;
    QEstado.Close;
    QEstado.Open;
    QEstado.GotoBookmark(t);
    QEstado.EnableControls;
  end;
end;

end.
