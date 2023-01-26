unit CONT37;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ADODB, QuerySearchDlgADO, DBCtrls;

type
  TfrmEliminaSOL = class(TForm)
    Search: TQrySearchDlgADO;
    edDesde: TEdit;
    Label1: TLabel;
    btClose: TBitBtn;
    btElimina: TBitBtn;
    Query1: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure edDesdeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEliminaSOL: TfrmEliminaSOL;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmEliminaSOL.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmEliminaSOL.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEliminaSOL.btEliminaClick(Sender: TObject);
begin
  if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sol_numero, sol_status from solicitud');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_numero = :num1');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num1').Value := StrToInt(Trim(edDesde.Text));
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.FieldByName('sol_status').AsString = 'APR' then
    begin
      MessageDlg('Esta Solicitud esta aprobada y no puede eliminarse',mtError,[mbok],0);
      edDesde.SetFocus;
    end
    else
    begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('execute contpr_elimina_solicitud :emp, :suc, :num');
      Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      Query1.Parameters.ParamByName('num').Value := dm.Query1.FieldByName('sol_numero').AsInteger;
      Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      Query1.ExecSQL;
      MessageDlg('EL PROCESO DE ELIMINAR HA FINALIZADO', mtInformation, [mbok], 0);
    end;
    edDesde.Text := '';
    edDesde.SetFocus;
  end;
end;

procedure TfrmEliminaSOL.edDesdeChange(Sender: TObject);
begin
  btElimina.Enabled := Trim(edDesde.Text) <> '';
end;

procedure TfrmEliminaSOL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEliminaSOL.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

end.
