unit RH56;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ADODB, StdCtrls, Mask, DBCtrls, Buttons, Grids,
  DBGrids;

type
  TfrmAFP = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QAFP: TADOQuery;
    QAFPemp_codigo: TIntegerField;
    QAFPafp_descuento: TIntegerField;
    QAFPafp_descuento_extra: TIntegerField;
    QAFPafp_fijo: TStringField;
    QAFPafp_costo_adm: TBCDField;
    QAFPafp_seguro_vida: TBCDField;
    QAFPafp_seguro_invalidez: TBCDField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    QTipoDesc: TADOQuery;
    QTipoDesctde_codigo: TIntegerField;
    QTipoDesctde_nombre: TStringField;
    dsTipoDesc: TDataSource;
    dsAFP: TDataSource;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    btincluir: TSpeedButton;
    bteliminar: TSpeedButton;
    QEmpleadosAFP: TADOQuery;
    QEmpleadosAFPemp_codigo: TIntegerField;
    QEmpleadosAFPemp_numero: TIntegerField;
    QEmpleadosAFPafp_secuencia: TIntegerField;
    QEmpleadosAFPafp_inhabilitado: TStringField;
    QEmpleadosAFPafp_aporte_extra: TBCDField;
    QEmpleadosAFPafp_fecha_aporte: TDateTimeField;
    dsEmpleadosAFP: TDataSource;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QListadoNombre: TStringField;
    QListadoafp_aporte_extra: TBCDField;
    QListadoafp_fecha_aporte: TDateTimeField;
    QListadoafp_inhabilitado: TStringField;
    QListadoafp_secuencia: TIntegerField;
    QEmpleados: TADOQuery;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosNombres: TStringField;
    dsEmpleado: TDataSource;
    btClose: TBitBtn;
    QAFPafp_aporte_empresa: TBCDField;
    QAFPafp_aporte_afiliado: TBCDField;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    QAFPafp_salario_tope: TBCDField;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure btincluirClick(Sender: TObject);
    procedure bteliminarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QAFPNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAFP: TfrmAFP;

implementation

uses SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmAFP.BitBtn1Click(Sender: TObject);
begin
  QAFP.Edit;
  QAFP.Post;
  QAFP.UpdateBatch;
end;

procedure TfrmAFP.btincluirClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(max(afp_secuencia),0) as maximo');
  dm.Query1.SQL.Add('from afp_aporte_extra');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Open;
  QEmpleadosAFPafp_secuencia.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;

  QEmpleadosAFPemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QEmpleadosAFP.Post;
  QEmpleadosAFP.UpdateBatch;

  QEmpleadosAFP.Close;
  QEmpleadosAFP.Parameters.ParamByName('sec').Value := -1;
  QEmpleadosAFP.Open;

  QEmpleadosAFP.Append;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmAFP.bteliminarClick(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    QEmpleadosAFP.Close;
    QEmpleadosAFP.Parameters.ParamByName('sec').Value := QListadoafp_secuencia.Value;
    QEmpleadosAFP.Open;

    QEmpleadosAFP.Delete;
    QEmpleadosAFP.UpdateBatch;

    QEmpleadosAFP.Close;
    QEmpleadosAFP.Parameters.ParamByName('sec').Value := -1;
    QEmpleadosAFP.Open;

    QListado.Close;
    QListado.Open;
  end;
end;

procedure TfrmAFP.FormActivate(Sender: TObject);
begin
  if not QAFP.Active then
  begin
    QAFP.Open;
    QTipoDesc.Open;

    QEmpleadosAFP.Parameters.ParamByName('sec').Value := -1;
    QEmpleadosAFP.Open;

    QEmpleadosAFP.Append;

    QEmpleados.Open;
    QListado.Open;
  end;

end;

procedure TfrmAFP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAFP.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAFP.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.ClassType <> TDBGrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmAFP.QAFPNewRecord(DataSet: TDataSet);
begin
  QAFPemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
end;

end.
