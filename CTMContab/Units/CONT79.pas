unit CONT79;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, ADODB;

type
  TfrmNumerosRNC = class(TForm)
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    edSearch: TEdit;
    cbsearch: TComboBox;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
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
    Memo1: TMemo;
    dsRNC: TDataSource;
    procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNumerosRNC: TfrmNumerosRNC;

implementation

uses SIGMA01, SIGMA00, CONT80;

{$R *.dfm}

procedure TfrmNumerosRNC.FormPaint(Sender: TObject);
begin
  with frmNumerosRNC do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmNumerosRNC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmNumerosRNC.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNumerosRNC.FormCreate(Sender: TObject);
begin
  memo1.lines := QRNC.SQL;
end;

procedure TfrmNumerosRNC.SpeedButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  QRNC.Close;
  QRNC.SQL := Memo1.Lines;
  if trim(edSearch.Text) <> '' then
  begin
    case cbsearch.ItemIndex of
    0 : QRNC.SQL.Add('where rnc_cedula like '+QuotedStr(Trim(edSearch.Text)+'%'));
    1 : QRNC.SQL.Add('where razon_social like '+QuotedStr(Trim(edSearch.Text)+'%'));
    2 : QRNC.SQL.Add('where nombre_comercial like '+QuotedStr(Trim(edSearch.Text)+'%'));
    end
  end;
  QRNC.Open;
  Screen.Cursor := crDefault;
end;

procedure TfrmNumerosRNC.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tfrmActNumeroRNC, frmActNumeroRNC);
  frmActNumeroRNC.accion := 1;
  frmActNumeroRNC.QRNC.Open;
  frmActNumeroRNC.QRNC.Insert;
  frmActNumeroRNC.ShowModal;
  frmActNumeroRNC.Release;
end;

procedure TfrmNumerosRNC.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmActNumeroRNC, frmActNumeroRNC);
  frmActNumeroRNC.accion := 2;
  frmActNumeroRNC.QRNC.Parameters.ParamByName('rnc').Value := QRNCrnc_cedula.Value;
  frmActNumeroRNC.QRNC.Open;
  frmActNumeroRNC.QRNC.Edit;
  frmActNumeroRNC.ShowModal;
  frmActNumeroRNC.Release;
end;

end.
