unit CONT64;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, DBCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmNCF = class(TForm)
    btgrabar: TBitBtn;
    BitBtn2: TBitBtn;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    edFijo: TEdit;
    Label2: TLabel;
    edInicial: TEdit;
    Label4: TLabel;
    edFinal: TEdit;
    Label5: TLabel;
    edActual: TEdit;
    Label6: TLabel;
    edCaja: TEdit;
    LB_1: TLabel;
    DEdt_Venc: TcxDateEdit;
    ChkB_Vencimiento: TCheckBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edFijoChange(Sender: TObject);
    procedure ChkB_VencimientoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNCF: TfrmNCF;

implementation

uses SIGMA01, StdConvs;

{$R *.dfm}

procedure TfrmNCF.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmNCF.FormCreate(Sender: TObject);
begin
  QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
  QSucursal.Open;
end;

procedure TfrmNCF.edFijoChange(Sender: TObject);
begin
  btgrabar.Enabled := (Trim(edFijo.Text) <> '') and
                      (Trim(edInicial.Text) <> '') and
                      (Trim(edFinal.Text) <> '');
end;

procedure TfrmNCF.ChkB_VencimientoClick(Sender: TObject);
begin
if ChkB_Vencimiento.Checked = False then
DEdt_Venc.Properties.ReadOnly := True else
DEdt_Venc.Properties.ReadOnly := False;
end;

procedure TfrmNCF.FormActivate(Sender: TObject);
begin
DBLookupComboBox2.Enabled := dm.QContabpar_NCF_Sucursal.Value;
ChkB_VencimientoClick(Sender);
end;

end.
