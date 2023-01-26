unit PVENTA56;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, ComCtrls, ADODB,
  QuerySearchDlgADO, DBCtrls;

type
  TfrmConsProdCliente = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    edCliente: TEdit;
    SpeedButton2: TSpeedButton;
    tCliente: TEdit;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    QDetalle: TADOQuery;
    Grid: TDBGrid;
    deDetalle: TDataSource;
    btClose: TBitBtn;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    Memo1: TMemo;
    Search: TQrySearchDlgADO;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetalleCANTIDAD: TFloatField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label8: TLabel;
    QDetallesuc_nombre: TStringField;
    ckSuc: TCheckBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure edClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edClienteChange(Sender: TObject);
    procedure QFacturasAfterOpen(DataSet: TDataSet);
    procedure cbStatusClick(Sender: TObject);
    procedure cbGrupoClick(Sender: TObject);
    procedure ckItbisClick(Sender: TObject);
    procedure ckDescClick(Sender: TObject);
    procedure cbOrdenClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsProdCliente: TfrmConsProdCliente;

implementation

uses RVENTA06, SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmConsProdCliente.FormCreate(Sender: TObject);
begin
  Fecha1.date := date;
  Fecha2.date := date;
  Memo1.lines := QDetalle.sql;
end;

procedure TfrmConsProdCliente.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsProdCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmConsProdCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsProdCliente.FormActivate(Sender: TObject);
begin
  frmConsProdCliente.Top := 3;
//  if not QFacturas.active then QFacturas.open;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  frmMain.ExportXLS.Sheets[0].DBGrid := Grid;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmConsProdCliente.btRefreshClick(Sender: TObject);
begin
  QDetalle.close;
  QDetalle.sql.clear;
  QDetalle.sql := Memo1.Lines;
  if trim(edCliente.text) <> '' then
  begin
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       QDetalle.sql.add('and f.cli_codigo = '+trim(edCliente.text))
    else
       QDetalle.sql.add('and f.cli_referencia = '+#39+trim(edCliente.text)+#39);

    if ckSuc.Checked then
    begin
      QDetalle.sql.add('and f.suc_codigo = :suc');
      QDetalle.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    end;
    QDetalle.sql.add('group by s.suc_nombre, d.pro_codigo, d.pro_nombre');
    QDetalle.sql.add('order by 1,3');
    QDetalle.Parameters.parambyname('fecha1').DataType := ftDate;
    QDetalle.Parameters.parambyname('fecha2').DataType := ftDate;
    QDetalle.Parameters.parambyname('fecha1').Value := fecha1.date;
    QDetalle.Parameters.parambyname('fecha2').Value := fecha2.date;
    QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
    QDetalle.open;
  end
  else
  begin
    messagedlg('DEBE SELECCIONAR EL CLIENTE',mterror,[mbok],0);
    edCliente.setfocus;
  end;
end;

procedure TfrmConsProdCliente.edClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edCliente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select cli_nombre from clientes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.sql.add('and cli_codigo = :cod')
      else
         dm.Query1.sql.add('and cli_referencia = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
         dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edcliente.text))
      else
         dm.Query1.Parameters.parambyname('cod').Value := trim(edcliente.text);
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0);
        edCliente.SetFocus;
      end
      else
        tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsProdCliente.SpeedButton2Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  search.AliasFields.add('Referencia');
  Search.Query.clear;
  Search.Query.add('select cli_nombre, cli_codigo, cli_referencia');
  Search.Query.add('from clientes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
     Search.ResultField := 'cli_Codigo'
  else
     Search.ResultField := 'cli_referencia';
  Search.Title := 'Listado de Clientes';
  if Search.execute then
  begin
    edCliente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select cli_nombre, cli_codigo, cli_referencia from clientes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.sql.add('and cli_codigo = :cod')
    else
       dm.Query1.sql.add('and cli_referencia = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    if dm.QParametrosPAR_CODIGOCLIENTE.value = 'I' then
       dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edCliente.text))
    else
       dm.Query1.Parameters.parambyname('cod').Value := trim(edCliente.text);
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('CLIENTE NO EXISTE',mterror,[mbok],0)
    else
      tCliente.text := dm.Query1.fieldbyname('cli_nombre').asstring;
    edCliente.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsProdCliente.edClienteChange(Sender: TObject);
begin
  if trim(edCliente.text) = '' then tCliente.text := '';
end;

procedure TfrmConsProdCliente.QFacturasAfterOpen(DataSet: TDataSet);
begin
  if not QDetalle.active then QDetalle.open;
end;

procedure TfrmConsProdCliente.cbStatusClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsProdCliente.cbGrupoClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsProdCliente.ckItbisClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsProdCliente.ckDescClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsProdCliente.cbOrdenClick(Sender: TObject);
begin
  btRefreshClick(self);
end;

procedure TfrmConsProdCliente.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRConsProdCliente, RConsProdCliente);
  RConsProdCliente.QDetalle.SQL := QDetalle.SQL;
  RConsProdCliente.lbCliente.Caption := tCliente.Text;
  RConsProdCliente.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsProdCliente.QDetalle.Parameters.parambyname('fecha1').DataType := ftDate;
  RConsProdCliente.QDetalle.Parameters.parambyname('fecha2').DataType := ftDate;
  RConsProdCliente.QDetalle.Parameters.parambyname('fecha1').Value := fecha1.date;
  RConsProdCliente.QDetalle.Parameters.parambyname('fecha2').Value := fecha2.date;
  RConsProdCliente.QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  if ckSuc.Checked then
    RConsProdCliente.QDetalle.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
  RConsProdCliente.QDetalle.open;
  RConsProdCliente.PrinterSetup;
  RConsProdCliente.Preview;
  RConsProdCliente.Destroy;
end;

procedure TfrmConsProdCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmConsProdCliente.FormPaint(Sender: TObject);
begin
  with frmConsProdCliente do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

end.
