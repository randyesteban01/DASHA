unit PVENTA180;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, DBCtrls;

type
  TfrmAnulaOrden = class(TForm)
    Label3: TLabel;
    Label14: TLabel;
    edNumero: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    btAnular: TBitBtn;
    btClose: TBitBtn;
    Query1: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    QMotivo: TADOQuery;
    QMotivomanu_codigo: TIntegerField;
    QMotivomanu_nombre: TStringField;
    dsMotivo: TDataSource;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure btAnularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAnulaOrden: TfrmAnulaOrden;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmAnulaOrden.FormActivate(Sender: TObject);
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

procedure TfrmAnulaOrden.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAnulaOrden.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmAnulaOrden.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAnulaOrden.btAnularClick(Sender: TObject);
var
  Fecha : TDateTime;
  Forma : string;
  Tipo, Fact : Integer;
begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ped_status, ped_fecha, ped_numero');
    dm.Query1.SQL.Add('from pedidos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ped_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and ped_tipo = '+QuotedStr('S'));
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
    dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA ORDEN NO EXISTE',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('ped_status').AsString = 'ANU' then
    begin
      MessageDlg('ESTA ORDEN YA HA SIDO ANULADA',mterror,[mbok],0);
      edNumero.SetFocus;
    end
    else
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select fac_numero');
      dm.Query1.SQL.Add('from provfacturas');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ped_tipo = '+QuotedStr('S'));
      dm.Query1.SQL.Add('and ped_numero = '+Trim(edNumero.Text));
      dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        MessageDlg('ESTA ORDEN SE UTILIZO EN UNA FACTURA DE COMPRA,'+#13+
                   'NO PUEDE SER ANULADA.',mtError,[mbok],0);
        edNumero.SetFocus;
      end
      else
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select con_numero from conduce');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and ped_numero = '+Trim(edNumero.Text));
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.SQL.Add('and ped_tipo = '+QuotedStr('S'));
        dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
        begin
          MessageDlg('ESTA ORDEN SE UTILIZO EN UN CONDUCE,'+#13+
                     'NO PUEDE SER ANULADA.',mtError,[mbok],0);
          edNumero.SetFocus;
        end
        else
        begin
          if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('update pedidos set ped_status = :st,');
            dm.Query1.SQL.Add('ped_total = 0, ped_itbis = 0, manu_codigo = :mot');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('and suc_codigo = :suc');
            dm.Query1.SQL.Add('and ped_tipo = '+QuotedStr('S'));
            dm.Query1.SQL.Add('and ped_numero = '+Trim(edNumero.Text));
            dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
            dm.Query1.Parameters.ParamByName('st').Value   := 'ANU';
            dm.Query1.Parameters.ParamByName('mot').Value  := DBLookupComboBox1.KeyValue;
            dm.Query1.ExecSQL;

            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('update det_pedido set det_status = :st,');
            dm.Query1.SQL.Add('det_cantidad = 0, det_precio = 0, det_descuento = 0');
            dm.Query1.SQL.Add('where emp_codigo = :emp');
            dm.Query1.SQL.Add('and suc_codigo = :suc');
            dm.Query1.SQL.Add('and ped_tipo = '+QuotedStr('S'));
            dm.Query1.SQL.Add('and ped_numero = '+Trim(edNumero.Text));
            dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
            dm.Query1.Parameters.ParamByName('suc').Value  := DBLookupComboBox2.KeyValue;
            dm.Query1.Parameters.ParamByName('st').Value   := 'ANU';
            dm.Query1.ExecSQL;

            MessageDlg('SE HA ANULADO LA ORDEN',mtInformation,[mbok],0);
          end;
      end;
    end;
  end;
end;

end.
