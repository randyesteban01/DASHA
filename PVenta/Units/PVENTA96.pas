unit PVENTA96;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ADODB, DBCtrls;

type
  TfrmAnulaDesem = class(TForm)
    Label3: TLabel;
    edNumero: TEdit;
    btClose: TBitBtn;
    btAnular: TBitBtn;
    Query1: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label4: TLabel;
    QMotivo: TADOQuery;
    QMotivomanu_codigo: TIntegerField;
    QMotivomanu_nombre: TStringField;
    dsMotivo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAnularClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnulaDesem: TfrmAnulaDesem;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAnulaDesem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAnulaDesem.btAnularClick(Sender: TObject);
var
  Fecha : TDateTime;
begin
  if QMotivo.RecordCount = 0 then
  begin
    MessageDlg('Debe especificar un Motivo de Anulación',mtError,[mbok],0);
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select des_status, dev_numero, des_fecha from desembolsos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and des_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTE DESEMBOLSO NO EXISTE',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('des_status').AsString = 'ANU' then
    begin
      MessageDlg('ESTE DESEMBOLSO ESTA ANULADO',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('dev_numero').AsInteger > 0 then
    begin
      MessageDlg('ESTE DESEMBOLSO SE GENERO MEDIANTE UNA'+#13+
                 'DEVOLUCION. PARA ANULARLO DEBE ANULAR LA'+#13+
                 'DEVOLUCION Y EL SISTEMA AUTOMATICAMENTE'+#13+
                 'ANULARA EL DESEMBOLSO ',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else
    begin
      //verificando si el cierre se hizo para esta fecha
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select cie_fecha from cierre');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.SQL.Add('and cie_fecha = :fec');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Parameters.ParamByName('fec').Value    := Fecha;
      Query1.Open;
      if Query1.RecordCount > 0 then
      begin
        MessageDlg('NO PUEDE ANULARSE ESTE DESEMBOLSO , DEBIDO'+#13+
                   'A QUE ESTE DIA FUE CERRADO.',mtError,[mbok],0);
      end
      else
        if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('execute pr_anula_desem :emp, :suc, :num, :usu, :mot');
          dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
          dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
          dm.Query1.Parameters.ParamByName('usu').Value  := dm.NomUsu;
          dm.Query1.Parameters.ParamByName('mot').Value  := DBLookupComboBox1.KeyValue;
          dm.Query1.ExecSQL;
          MessageDlg('SE HA ANULADO EL DESEMBOLSO ',mtInformation,[mbok],0);
        end;
    end;
  end;
end;

procedure TfrmAnulaDesem.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAnulaDesem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmAnulaDesem.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    QMotivo.Open;
    DBLookupComboBox1.KeyValue := QMotivomanu_codigo.Value;
  end;
end;

end.
