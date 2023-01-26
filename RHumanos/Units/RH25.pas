unit RH25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, ADODB, ComCtrls;

type
  TfrmEstudiosRealizados = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    QPaises: TADOQuery;
    QPaisespai_codigo: TIntegerField;
    QPaisespai_nombre: TStringField;
    dsPaises: TDataSource;
    QInstitucion: TADOQuery;
    QInstitucionins_codigo: TIntegerField;
    QInstitucionins_nombre: TStringField;
    dsInst: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    edtitulo: TEdit;
    Label5: TLabel;
    edestudio: TEdit;
    Label6: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstudiosRealizados: TfrmEstudiosRealizados;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmEstudiosRealizados.FormActivate(Sender: TObject);
begin
  if not QPaises.Active then
  begin
    QPaises.Open;
    QInstitucion.Open;

    DBLookupComboBox1.KeyValue := QPaisespai_codigo.Value;
    DBLookupComboBox2.KeyValue := QInstitucionins_codigo.Value;
  end;
end;

procedure TfrmEstudiosRealizados.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmEstudiosRealizados.FormCreate(Sender: TObject);
begin
  fecha1.Date := date;
  fecha2.Date := date;
end;

procedure TfrmEstudiosRealizados.BitBtn1Click(Sender: TObject);
begin
  Modalresult := mrOK;
end;

procedure TfrmEstudiosRealizados.BitBtn2Click(Sender: TObject);
begin
  Modalresult := mrCancel;
end;

end.
