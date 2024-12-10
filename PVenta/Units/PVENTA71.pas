unit PVENTA71;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, ADODB, DBCtrls;

type
  TfrmAnulaNC = class(TForm)
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
  frmAnulaNC: TfrmAnulaNC;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAnulaNC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAnulaNC.btAnularClick(Sender: TObject);
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
    dm.Query1.SQL.Add('select ncr_status, ncr_devolucion, ncr_fecha from notascredito');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ncr_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
    dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA NOTA DE CREDITO NO EXISTE',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('ncr_status').AsString = 'ANU' then
    begin
      MessageDlg('ESTA NOTA DE CREDITO ESTA ANULADA',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('ncr_devolucion').AsInteger > 0 then
    begin
      MessageDlg('ESTA NOTA DE CREDITO SE GENERO MEDIANTE UNA'+#13+
                 'DEVOLUCION. PARA ANULARLA DEBE ANULAR LA'+#13+
                 'DEVOLUCION Y EL SISTEMA AUTOMATICAMENTE'+#13+
                 'ANULARA LA NOTA DE CREDITO',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else
    begin
      Fecha := dm.Query1.FieldByName('ncr_fecha').AsDateTime;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select f.ncr_numero from facnotascredito f inner join NotasCredito c ');
      dm.Query1.SQL.Add(' on f.ncr_numero= c.ncr_numero and f.emp_codigo = c.emp_codigo ');
      dm.Query1.SQL.Add(' and f.suc_codigo= c.suc_codigo and f.fac_numero = c.fac_numero ');
      dm.Query1.SQL.Add('where c.ncr_montousado>0 and f.emp_codigo = :emp');
      dm.Query1.SQL.Add('and f.ncr_numero = :num');
      dm.Query1.SQL.Add('and f.suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
      dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        MessageDlg('ESTA NOTA DE CREDITO SE HA UTILIZADO PARA'+#13+
                   'PAGAR FACTURA Y NO PUEDE SER ANULADA, YA'+#13+
                   'QUE ES PARTE DEL EFECTIVO DE LA FACTURA.',mtError,[mbok],0);
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
          MessageDlg('NO PUEDE ANULARSE LA NOTA DE CREDITO, DEBIDO'+#13+
                     'A QUE ESTE DIA FUE CERRADO.',mtError,[mbok],0);
        end
        else
          if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('execute pr_anula_nc :emp, :suc, :num, :usu, :mot');
            dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
            dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
            dm.Query1.Parameters.ParamByName('usu').Value  := dm.NomUsu;
            dm.Query1.Parameters.ParamByName('mot').Value  := DBLookupComboBox1.KeyValue;
            dm.Query1.ExecSQL;
            MessageDlg('SE HA ANULADO LA NOTA DE CREDITO',mtInformation,[mbok],0);
          end;
      end;
    end;
  end;
end;

procedure TfrmAnulaNC.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAnulaNC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmAnulaNC.FormActivate(Sender: TObject);
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
