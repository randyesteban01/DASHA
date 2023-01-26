unit RH24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, ADODB;

type
  TfrmPosicionesEmpleados = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QClasif: TADOQuery;
    QClasifemp_codigo: TIntegerField;
    dsClasif: TDataSource;
    QPosicion: TADOQuery;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    QNiveles: TADOQuery;
    QNivelesemp_codigo: TIntegerField;
    QNivelesniv_codigo: TIntegerField;
    QNivelesniv_nombre: TStringField;
    dsNiveles: TDataSource;
    QPosicionpos_codigo: TIntegerField;
    dsPosicion: TDataSource;
    QClasifcla_nivel: TIntegerField;
    QClasifniv_nombre: TStringField;
    QPosicionpos_nombre: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPosicionesEmpleados: TfrmPosicionesEmpleados;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmPosicionesEmpleados.FormActivate(Sender: TObject);
begin
  if not QNiveles.Active then
  begin
    QNiveles.Open;
    QClasif.Open;
    QPosicion.Open;

    DBLookupComboBox1.KeyValue := QNivelesniv_codigo.Value;
    DBLookupComboBox2.KeyValue := QClasifcla_nivel.Value;
    DBLookupComboBox3.KeyValue := QPosicionpos_codigo.Value;
  end;
end;

procedure TfrmPosicionesEmpleados.BitBtn2Click(Sender: TObject);
begin
  Modalresult := mrCancel;
end;

procedure TfrmPosicionesEmpleados.BitBtn1Click(Sender: TObject);
begin
  Modalresult := mrOK;
end;

procedure TfrmPosicionesEmpleados.DBLookupComboBox1Click(Sender: TObject);
begin
  DBLookupComboBox2.KeyValue := QClasifcla_nivel.Value;
  DBLookupComboBox3.KeyValue := QPosicionpos_codigo.Value;
end;

procedure TfrmPosicionesEmpleados.DBLookupComboBox2Click(Sender: TObject);
begin
  DBLookupComboBox3.KeyValue := QPosicionpos_codigo.Value;
end;

end.
