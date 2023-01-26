unit RH58;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, ADODB, Mask, DBCtrls;

type
  TfrmSFS = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    QSFS: TADOQuery;
    QSFSemp_codigo: TIntegerField;
    QSFSsfs_secuencia: TIntegerField;
    QSFSsfs_aporte_empresa: TBCDField;
    QSFSsfs_aporte_afiliado: TBCDField;
    QSFSsfs_tope_sueldo: TBCDField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dsSFS: TDataSource;
    BitBtn1: TBitBtn;
    btClose: TBitBtn;
    QSFSsfs_pago_padres: TBCDField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSFS: TfrmSFS;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmSFS.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSFS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmSFS.FormActivate(Sender: TObject);
begin
  if not QSFS.Active then QSFS.Open;
end;

procedure TfrmSFS.BitBtn1Click(Sender: TObject);
begin
  QSFS.Edit;
  QSFSemp_codigo.Value    := dm.QEmpresasEMP_CODIGO.Value;
  QSFSsfs_secuencia.Value := 1;
  QSFS.Post;
  QSFS.UpdateBatch;
end;

procedure TfrmSFS.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

end.
