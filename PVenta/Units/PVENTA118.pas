unit PVENTA118;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, IBCustomDataSet, IBUpdateSQL,
  DB, IBQuery, ADODB;

type
  TfrmAccesoEmp = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    QUsuarios: TADOQuery;
    dsUsuarios: TDataSource;
    QEmpresas: TADOQuery;
    dsEmp: TDataSource;
    QEmp: TADOQuery;
    Query1: TADOQuery;
    QUsuariosUSU_CODIGO: TIntegerField;
    QUsuariosUSU_NOMBRE: TIBStringField;
    QEmpresasEMP_CODIGO: TIntegerField;
    QEmpresasEMP_NOMBRE: TIBStringField;
    QEmpEMP_CODIGO: TIntegerField;
    QEmpUSU_CODIGO: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAccesoEmp: TfrmAccesoEmp;

implementation

uses SIGMA01, PVENTA119;

{$R *.dfm}

procedure TfrmAccesoEmp.FormActivate(Sender: TObject);
begin
  if not QUsuarios.Active then
  begin
    QUsuarios.open;
    QEmpresas.open;
    QEmp.open;
  end;
end;

procedure TfrmAccesoEmp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAccesoEmp.BitBtn2Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTA COMPAÑIA?',
  mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QEmp.Locate('emp_codigo',QEmpresasEMP_CODIGO.value,[]);
    QEmp.Delete;
    QEmp.UpdateBatch;
    QEmpresas.close;
    QEmpresas.open;
  end;
end;

procedure TfrmAccesoEmp.BitBtn1Click(Sender: TObject);
var
  a : integer;
begin
  application.createform(tfrmSeleccionEmp, frmSeleccionEmp);
  query1.close;
  query1.sql.clear;
  query1.sql.add('select emp_codigo, emp_nombre');
  query1.sql.add('from empresas');
  query1.sql.add('where emp_codigo not in (select emp_codigo');
  query1.sql.add('from empaccesos');
  query1.sql.add('where usu_codigo = :usu)');
  query1.sql.add('order by emp_nombre');
  query1.Parameters.parambyname('usu').Value := QUsuariosUSU_CODIGO.value;
  query1.open;
  frmSeleccionEmp.Lista.items.clear;
  frmSeleccionEmp.Lista2.items.clear;
  while not query1.eof do
  begin
    frmSeleccionEmp.Lista.items.add(query1.fieldbyname('emp_nombre').asstring);
    frmSeleccionEmp.Lista2.items.add(query1.fieldbyname('emp_codigo').asstring);
    query1.next;
  end;
  frmSeleccionEmp.showmodal;
  for a := 0 to frmSeleccionEmp.Lista.Items.Count - 1 do
  begin
    if frmSeleccionEmp.Lista.Checked[a] then
    begin
      QEmp.insert;
      QEmpEMP_CODIGO.value := strtoint(frmSeleccionEmp.Lista2.items[a]);
      QEmpUSU_CODIGO.value := QUsuariosUSU_CODIGO.value;
      QEmp.post;
    end;
  end;
  QEmp.UpdateBatch;
  frmSeleccionEmp.release;
  QEmpresas.close;
  QEmpresas.open;
end;

procedure TfrmAccesoEmp.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

end.
