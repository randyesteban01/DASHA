unit CONT88;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Mask, DBCtrls, DB, ADODB;

type
  TfrmCashflowActTransaccion = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    fecha: TDateTimePicker;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QCentro: TADOQuery;
    dsCentro: TDataSource;
    QCentrocen_codigo: TIntegerField;
    QCentrocen_nombre: TStringField;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashflowActTransaccion: TfrmCashflowActTransaccion;

implementation

uses SIGMA01, CONT87, CONT90;

{$R *.dfm}

procedure TfrmCashflowActTransaccion.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmCashflowActTransaccion.BitBtn1Click(Sender: TObject);
begin
  if frmCashflowTransaccion.QTransaccionestasa.AsFloat = 0 then
  begin
    MessageDlg('DEBE COLOCAR LA TASA', mtError, [mbok],0);
    DBEdit7.SetFocus;
  end
  else
  begin
    if frmCashflowTransaccion.QTransacciones.State = dsEdit then
    begin
      Application.CreateForm(tfrmCashflow_Mensajes, frmCashflow_Mensajes);
      frmCashflow_Mensajes.QUsuarios.Open;
      frmCashflow_Mensajes.gru := frmCashflowTransaccion.gru;
      frmCashflow_Mensajes.sub := frmCashflowTransaccion.sub;
      frmCashflow_Mensajes.con := frmCashflowTransaccion.con;
      frmCashflow_Mensajes.tra := frmCashflowTransaccion.QTransaccionesTransaccionID.AsInteger;

      frmCashflow_Mensajes.QMensaje.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      frmCashflow_Mensajes.QMensaje.Parameters.ParamByName('gru').Value := frmCashflowTransaccion.gru;
      frmCashflow_Mensajes.QMensaje.Parameters.ParamByName('sub').Value := frmCashflowTransaccion.sub;
      frmCashflow_Mensajes.QMensaje.Parameters.ParamByName('con').Value := frmCashflowTransaccion.con;
      frmCashflow_Mensajes.QMensaje.Parameters.ParamByName('tra').Value := frmCashflowTransaccion.QTransaccionesTransaccionID.AsInteger;
      frmCashflow_Mensajes.QMensaje.Open;
      frmCashflow_Mensajes.ShowModal;
      if frmCashflow_Mensajes.grabo = 1 then
      begin
        frmCashflowTransaccion.QTransaccionesFecha.Value := fecha.Date;
        frmCashflowTransaccion.QTransacciones.Post;
        frmCashflowTransaccion.QTransacciones.UpdateBatch;
        Close;
      end;
      frmCashflow_Mensajes.Release;
    end
    else
    begin
      frmCashflowTransaccion.QTransaccionesFecha.Value := fecha.Date;
      frmCashflowTransaccion.QTransacciones.Post;
      frmCashflowTransaccion.QTransacciones.UpdateBatch;
      Close;
    end;
  end;
end;

procedure TfrmCashflowActTransaccion.BitBtn2Click(Sender: TObject);
begin
  frmCashflowTransaccion.QTransacciones.Cancel;
  Close;
end;

procedure TfrmCashflowActTransaccion.FormActivate(Sender: TObject);
begin
  if not QCentro.Active then QCentro.Open;
end;

end.
