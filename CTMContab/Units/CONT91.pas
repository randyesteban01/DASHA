unit CONT91;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Mask, Buttons, Grids, DBGrids,
  DBGridObj, ComCtrls, DB, ADODB;

type
  TfrmTransferenciaBanco = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GridCuentas: TDBGridObj;
    spcentros: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btElimina: TSpeedButton;
    btBuscaCta: TSpeedButton;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btSalir: TBitBtn;
    QTrans: TADOQuery;
    QTransemp_codigo: TIntegerField;
    QTranssuc_codigo: TIntegerField;
    QTranstra_numero: TIntegerField;
    QTranstra_fecha: TDateTimeField;
    QTransban_codigo1: TIntegerField;
    QTransban_codigo2: TIntegerField;
    QTranstra_concepto1: TStringField;
    QTranstra_concepto2: TStringField;
    QTranstra_monto: TBCDField;
    QTransusu_codigo: TIntegerField;
    QTranstra_usuario_anulo: TIntegerField;
    QTransmanu_codigo: TIntegerField;
    QTranstra_status: TStringField;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    QBancos: TADOQuery;
    QBancosban_codigo: TIntegerField;
    QBancosban_nombre: TStringField;
    dsBancos: TDataSource;
    dsTrans: TDataSource;
    QTranstra_tasa: TBCDField;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransferenciaBanco: TfrmTransferenciaBanco;

implementation

uses SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmTransferenciaBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTransferenciaBanco.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmTransferenciaBanco.FormPaint(Sender: TObject);
begin
  with frmTransferenciaBanco do
  begin
    Top  := 2;
    Left := 2;
  end;
end;

end.
