unit CONT80;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Mask, DBCtrls;

type
  TfrmActNumeroRNC = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QRNC: TADOQuery;
    QRNCrnc_cedula: TStringField;
    QRNCrazon_social: TStringField;
    QRNCnombre_comercial: TStringField;
    QRNCactividad_economica: TStringField;
    QRNCdireccion: TStringField;
    QRNCnumero: TStringField;
    QRNCurbanizacion: TStringField;
    QRNCtelefono: TStringField;
    QRNCestatus: TStringField;
    dsRNC: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure QRNCNewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dsRNCStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmActNumeroRNC: TfrmActNumeroRNC;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmActNumeroRNC.QRNCNewRecord(DataSet: TDataSet);
begin
  QRNCestatus.Value := 'ACTIVO';
end;

procedure TfrmActNumeroRNC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmActNumeroRNC.dsRNCStateChange(Sender: TObject);
begin
  DBEdit1.Enabled := QRNC.State = dsInsert;
end;

procedure TfrmActNumeroRNC.BitBtn1Click(Sender: TObject);
begin
  if not QRNCrnc_cedula.IsNull then
  begin
    if accion = 1 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select razon_social from rnc');
      dm.Query1.SQL.Add('where rnc_cedula = :rnc');
      dm.Query1.Parameters.ParamByName('rnc').Value := DBEdit1.Text;
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        MessageDlg('Este RNC ya existe',mtError,[mbOk],0);
        DBEdit1.SetFocus;
      end
      else
      begin
        QRNC.Post;
        QRNC.UpdateBatch;
        Close;
      end;
    end
    else
    begin
      QRNC.Post;
      QRNC.UpdateBatch;
      Close;
    end;
  end
end;

procedure TfrmActNumeroRNC.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
