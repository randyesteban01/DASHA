unit PVENTA224;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons, Menus;

type
  TfrmBuscaTemporal = class(TForm)
    DBGrid1: TDBGrid;
    QFacturas: TADOQuery;
    QFacturasfac_fecha: TDateTimeField;
    QFacturastfa_codigo: TIntegerField;
    QFacturascli_codigo: TIntegerField;
    QFacturasfac_nombre: TStringField;
    dsFacturas: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QFacturasfac_numero: TIntegerField;
    QFacturasfac_forma: TStringField;
    QFacturassuc_codigo: TIntegerField;
    QFacturasfac_total: TCurrencyField;
    QFacturasproducto: TStringField;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    acepto : integer;
  end;

var
  frmBuscaTemporal: TfrmBuscaTemporal;

implementation

uses SIGMA01, PVENTA18, PVENTA249;

{$R *.dfm}

procedure TfrmBuscaTemporal.BitBtn1Click(Sender: TObject);
begin
  Acepto := 0;
  Close;
end;

procedure TfrmBuscaTemporal.BitBtn2Click(Sender: TObject);
begin
  Acepto := 1;
  Close;
end;

procedure TfrmBuscaTemporal.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
BitBtn2Click(Sender);
end;

procedure TfrmBuscaTemporal.DBGrid1DblClick(Sender: TObject);
begin
BitBtn2Click(Sender);
end;

procedure TfrmBuscaTemporal.MenuItem2Click(Sender: TObject);
begin
  Application.CreateForm(tfrmDigitarClave, frmDigitarClave);
  if frmDigitarClave.ShowModal <> mrOk then
    frmDigitarClave.release
  else
  begin
  if MessageDlg('ESTA SEGURO QUE DESEA ELIMINAR LA FACTURA NO. ' + IntToStr(QFacturasfac_numero.Value)+'?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
      //Procedimiento que elimina la factura temporal
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('exec pr_eliminar_facturatemporal :emp, :suc, :tipo, :numero');
      dm.Query1.Parameters.parambyname('emp').Value    := dm.vp_cia;
      dm.Query1.Parameters.parambyname('suc').Value    := QFacturas.Parameters.ParamByName('suc_codigo').Value;
      dm.Query1.Parameters.parambyname('tipo').Value   := QFacturastfa_codigo.Value;
      dm.Query1.Parameters.parambyname('numero').Value := QFacturasfac_numero.Value;
      dm.Query1.ExecSQL;

      messagedlg('SE HA ELIMINADO LA FACTURA TEMPORAL NO. '+IntToStr(QFacturasfac_numero.Value),
                         mtconfirmation,[mbOk],0) ;
      Acepto := 0;
      Close;                   

  end

  end;
end;

end.
