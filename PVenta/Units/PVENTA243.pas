unit PVENTA243;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB;

type
  TFrmComentCoti = class(TForm)
    Panel2: TPanel;
    btClose: TBitBtn;
    btnAgregar: TBitBtn;
    mmo1: TMemo;
    qComentarios: TADOQuery;
    btnAgregarCerrar: TBitBtn;
    procedure btCloseClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAgregarCerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmComentCoti: TFrmComentCoti;

implementation

uses SIGMA01, PVENTA242;

{$R *.dfm}

procedure TFrmComentCoti.btCloseClick(Sender: TObject);
begin
FrmComentCoti.close;
FrmComentCoti.release;
end;

procedure TFrmComentCoti.btnAgregarClick(Sender: TObject);
begin
with qComentarios do begin
Close;
Parameters.ParamByName('EMP').Value := FrmCotizacionVencidas.QCotizacionEMP_CODIGO.Value;
Parameters.ParamByName('SUC').Value := FrmCotizacionVencidas.QCotizacionSUC_CODIGO.Value;
Parameters.ParamByName('COT').Value := FrmCotizacionVencidas.QCotizacionCOT_NUMERO.Value;
Parameters.ParamByName('COM').Value := mmo1.Lines.Text;
Parameters.ParamByName('USU').Value := DM.vp_usuario;
Parameters.ParamByName('TIPO').Value := 0;
ExecSQL;
end;
ShowMessage('COMENTERIO AGREGADO CORRECTAMENTE...');
FrmCotizacionVencidas.btrefreshClick(Sender);
btCloseClick(Sender);
end;

procedure TFrmComentCoti.FormShow(Sender: TObject);
begin
mmo1.Clear;
end;

procedure TFrmComentCoti.btnAgregarCerrarClick(Sender: TObject);
begin
with qComentarios do begin
Close;
Parameters.ParamByName('EMP').Value := FrmCotizacionVencidas.QCotizacionEMP_CODIGO.Value;
Parameters.ParamByName('SUC').Value := FrmCotizacionVencidas.QCotizacionSUC_CODIGO.Value;
Parameters.ParamByName('COT').Value := FrmCotizacionVencidas.QCotizacionCOT_NUMERO.Value;
Parameters.ParamByName('COM').Value := mmo1.Lines.Text;
Parameters.ParamByName('USU').Value := DM.vp_usuario;
Parameters.ParamByName('TIPO').Value := 1;
ExecSQL;
end;
ShowMessage('COMENTERIO AGREGADO Y CERRADA CORRECTAMENTE...');
FrmCotizacionVencidas.btrefreshClick(Sender);
btCloseClick(Sender);
end;

end.
