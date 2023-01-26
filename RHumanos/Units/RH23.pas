unit RH23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ADODB, DBCtrls, Buttons;

type
  TfrmHabilidadEmpleado = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    QCategoria: TADOQuery;
    QCategoriacat_codigo: TIntegerField;
    QCategoriacat_nombre: TStringField;
    dsCategoria: TDataSource;
    QHabilidad: TADOQuery;
    QHabilidadhab_codigo: TIntegerField;
    QHabilidadhab_nombre: TStringField;
    dsHabilidad: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QCategoriaemp_codigo: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHabilidadEmpleado: TfrmHabilidadEmpleado;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmHabilidadEmpleado.BitBtn1Click(Sender: TObject);
begin
  Modalresult := mrOK;
end;

procedure TfrmHabilidadEmpleado.BitBtn2Click(Sender: TObject);
begin
  Modalresult := mrCancel;
end;

procedure TfrmHabilidadEmpleado.FormActivate(Sender: TObject);
begin
  if not QCategoria.Active then
  begin
    QCategoria.Open;
    QHabilidad.Open;

    DBLookupComboBox1.KeyValue := QHabilidadhab_codigo.Value;
    DBLookupComboBox2.KeyValue := QCategoriacat_codigo.Value;
  end;
end;

end.
