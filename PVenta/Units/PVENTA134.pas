unit PVENTA134;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DIMime;

type
  TfrmDescuentoGeneral = class(TForm)
    Label1: TLabel;
    edDesc: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure edDescKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDescuentoGeneral: TfrmDescuentoGeneral;

implementation

uses PVENTA18, SIGMA01, PVENTA209;

{$R *.dfm}

procedure TfrmDescuentoGeneral.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmDescuentoGeneral.edDescKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key = #27 then
KEY := #0;


  if key = #13 then  begin
if frmFactura.DescuentoGeneral(StrToCurr(edDesc.Text)) =  False then begin
IF (dm.QUsuariosusu_excede_descuento.Value <> 'True') THEN BEGIN
IF MessageDlg('ESTE PRODUCTO NO ACEPTA EL PORCIENTO DE DESCUENTO GENERAL APLICADO DE UN '+edDesc.Text+QuotedStr('%')+CHAR(13)+
'DEBE SER AUTORIZADO POR UN SUPERVISOR'+CHAR(13)+
'DESEA CONTINUAR?',mtConfirmation,[mbYes,mbNo],0)=MRYES THEN BEGIN
          Application.CreateForm(tfrmPideClave, frmPideClave);
          frmPideClave.ShowModal;
          if frmPideClave.acepto = 1 then
          begin
            dm.Query1.Close;
            dm.Query1.SQL.Clear;
            dm.Query1.SQL.Add('select usu_excede_descuento from usuarios');
            dm.Query1.SQL.Add('where usu_clave = :cla');
            dm.Query1.Parameters.ParamByName('cla').Value := MimeEncodeString(frmPideClave.edclave.Text);
            dm.Query1.Open;
            if (dm.Query1.RecordCount = 0) or (dm.Query1.FieldByName('usu_excede_descuento').Value <> 'True') then
            begin
              MessageDlg('NO TIENE ACCESO PARA EXCEDER EL DESCUENTO MAXIMO DE '+edDesc.Text+'%',mtError,[mbok],0);
              edDesc.Text := '0';
              Close;
            end;
          end
          else
          begin
           Close;
          end;
          frmPideClave.Release;
       end
       ELSE
       BEGIN
   edDesc.Text := '0';
   Close;
end;
end;
  end;
  close;
end;
end;

end.
