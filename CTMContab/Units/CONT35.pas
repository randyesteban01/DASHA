unit CONT35;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB, ADODB;

type
  TfrmRepSolicitud = class(TForm)
    BitBtn1: TBitBtn;
    btClose: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edDesde: TEdit;
    edHasta: TEdit;
    rgOrigen: TRadioGroup;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepSolicitud: TfrmRepSolicitud;

implementation

uses RCONT16, SIGMA01;

{$R *.dfm}

procedure TfrmRepSolicitud.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmRepSolicitud.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tRepSolicitud, RepSolicitud);
  RepSolicitud.QSolicitud.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
  RepSolicitud.QSolicitud.Parameters.ParamByName('sol1').Value := StrToInt(Trim(edDesde.Text));
  RepSolicitud.QSolicitud.Parameters.ParamByName('sol2').Value := StrToInt(Trim(edHasta.Text));
  RepSolicitud.QSolicitud.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RepSolicitud.QSolicitud.Open;
  RepSolicitud.QDetalle.Open;
  RepSolicitud.QFacturas.Open;
  RepSolicitud.PrinterSetup;
  if rgOrigen.ItemIndex = 0 then
     RepSolicitud.Preview
  else
     RepSolicitud.Print;
  RepSolicitud.Destroy;
end;

procedure TfrmRepSolicitud.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepSolicitud.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByNAme('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepSolicitud.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
