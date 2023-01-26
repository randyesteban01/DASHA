unit CONT90;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ADODB, ComCtrls, DBCtrls,
  Grids, DBGrids;

type
  TfrmCashflow_Mensajes = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    QMensaje: TADOQuery;
    QMensajeemp_codigo: TIntegerField;
    QMensajeGrupoID: TIntegerField;
    QMensajeSubgrupoID: TIntegerField;
    QMensajeConceptoID: TIntegerField;
    QMensajeTransaccionID: TBCDField;
    QMensajefecha: TDateTimeField;
    QMensajeusuario: TIntegerField;
    dsMensaje: TDataSource;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    QUsuarios: TADOQuery;
    QUsuariosusu_codigo: TIntegerField;
    QUsuariosusu_nombre: TStringField;
    dsUsuarios: TDataSource;
    QMensajeNomUsu: TStringField;
    QMensajeobservacion: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    grabo, gru, sub, con, tra : integer;
  end;

var
  frmCashflow_Mensajes: TfrmCashflow_Mensajes;

implementation

uses SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmCashflow_Mensajes.BitBtn1Click(Sender: TObject);
begin
  if length(trim(Memo1.Text)) < 20 then
    MessageDlg('Debe especificar un concepto mas detallado', mtError, [mbok], 0)
  else
  begin
    grabo := 1;
    QMensaje.Insert;
    QMensajeemp_codigo.Value    := dm.QEmpresasEMP_CODIGO.Value;
    QMensajeGrupoID.Value       := gru;
    QMensajeSubgrupoID.Value    := sub;
    QMensajeConceptoID.Value    := con;
    QMensajeTransaccionID.Value := tra;
    QMensajefecha.Value         := now;
    QMensajeobservacion.Value   := Memo1.Text;
    QMensajeusuario.Value       := dm.Usuario;
    QMensaje.Post;
    QMensaje.UpdateBatch;
    close;
  end;
end;

procedure TfrmCashflow_Mensajes.BitBtn2Click(Sender: TObject);
begin
  grabo := 0;
  QMensaje.Cancel;
  close;
end;

end.
