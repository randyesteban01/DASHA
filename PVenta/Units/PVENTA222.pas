unit PVENTA222;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, QuerySearchDlgADO;

type
  TfrmDatosMedidor = class(TForm)
    btClose: TBitBtn;
    Label1: TLabel;
    edMedidor: TEdit;
    btmoneda: TSpeedButton;
    tMedidor: TEdit;
    edAnterior: TEdit;
    Label2: TLabel;
    edActual: TEdit;
    Label3: TLabel;
    lbGalones: TLabel;
    Search: TQrySearchDlgADO;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edActualExit(Sender: TObject);
    procedure btmonedaClick(Sender: TObject);
    procedure edMedidorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDatosMedidor: TfrmDatosMedidor;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmDatosMedidor.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDatosMedidor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmDatosMedidor.edActualExit(Sender: TObject);
begin
  if (trim(edAnterior.Text) <> '') and (trim(edActual.Text) <> '') then
    lbGalones.Caption := FloatToStr(StrToFloat(edActual.Text) - StrToFloat(edAnterior.Text)) + ' Galones';
end;

procedure TfrmDatosMedidor.btmonedaClick(Sender: TObject);
begin
  if Search.execute then
  begin
    edMedidor.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select nombre, Secuencia from medidores where medidorid = :med');
    dm.Query1.Parameters.ParamByName('med').Value := StrToInt(edMedidor.Text);
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tMedidor.Text   := dm.Query1.FieldByName('nombre').AsString;
      edAnterior.Text := dm.Query1.FieldByName('Secuencia').AsString;
      edActual.Text   := floattostr(dm.Query1.FieldByName('Secuencia').AsFloat + 1);
      lbGalones.Caption := FloatToStr(StrToFloat(edActual.Text) - StrToFloat(edAnterior.Text)) + ' Galones';
    end
    else
      tMedidor.Text := '';
    edMedidor.SetFocus;
  end;
end;

procedure TfrmDatosMedidor.edMedidorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edMedidor.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select nombre, Secuencia from medidores where medidorid = :med');
      dm.Query1.Parameters.ParamByName('med').Value := StrToInt(edMedidor.Text);
      dm.Query1.Open;
      if dm.Query1.RecordCount > 0 then
      begin
        tMedidor.Text := dm.Query1.FieldByName('nombre').AsString;
        edAnterior.Text := dm.Query1.FieldByName('Secuencia').AsString;
        edActual.Text := floattostr(dm.Query1.FieldByName('Secuencia').AsFloat + 1);
        lbGalones.Caption := FloatToStr(StrToFloat(edActual.Text) - StrToFloat(edAnterior.Text)) + ' Galones';
      end
      else
        tMedidor.Text := '';

    end;
  end;
end;

end.
