unit CONT52;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, StdCtrls, Spin, Buttons, ExtCtrls;

type
  TfrmRepCosto = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    spAno: TSpinEdit;
    cbMes: TComboBox;
    rgTipo: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');

var
  frmRepCosto: TfrmRepCosto;

implementation

uses RCONT11, RCONT14, SIGMA01, RCONT20, RCONT22;

{$R *.dfm}

procedure TfrmRepCosto.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  cbMes.ItemIndex := MonthOf(Date)-1;
end;

procedure TfrmRepCosto.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepCosto.BitBtn2Click(Sender: TObject);
var
  Mes : String;
begin
  if rgTipo.ItemIndex = 0 then
  begin
    Application.CreateForm(tRepCostoProduccion, RepCostoProduccion);
    Mes := UpperCase(DMes[cbMes.ItemIndex+1]);
    RepCostoProduccion.lbFecha.Caption := 'Al '+IntToStr(DaysInAMonth(spAno.Value,
                                      cbMes.ItemIndex+1))+' De '+
                                      DMes[cbMes.ItemIndex+1]+' Del '+
                                      IntToStr(spAno.Value);
    RepCostoProduccion.QCuentas.Parameters.ParamByName('ano').Value := spAno.Value;
    RepCostoProduccion.QCuentas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RepCostoProduccion.QCuentas.Parameters.ParamByName('mes').Value := cbMes.ItemIndex+1;
    RepCostoProduccion.QCuentas.Open;
    RepCostoProduccion.PrinterSetup;
    RepCostoProduccion.Preview;
    RepCostoProduccion.Destroy;
  end
  else
  begin
    Application.CreateForm(tRepCostoVenta, RepCostoVenta);
    Mes := UpperCase(DMes[cbMes.ItemIndex+1]);
    RepCostoVenta.lbFecha.Caption := 'Al '+IntToStr(DaysInAMonth(spAno.Value,
                                      cbMes.ItemIndex+1))+' De '+
                                      DMes[cbMes.ItemIndex+1]+' Del '+
                                      IntToStr(spAno.Value);
    RepCostoVenta.QProduccion.Parameters.ParamByName('ano').Value := spAno.Value;
    RepCostoVenta.QProduccion.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RepCostoVenta.QProduccion.Parameters.ParamByName('mes').Value := cbMes.ItemIndex+1;
    RepCostoVenta.QProduccion.Open;
    RepCostoVenta.QVenta.Parameters.ParamByName('ano').Value := spAno.Value;
    RepCostoVenta.QVenta.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    RepCostoVenta.QVenta.Parameters.ParamByName('mes').Value := cbMes.ItemIndex+1;
    RepCostoVenta.QVenta.Open;

    RepCostoVenta.PrinterSetup;
    RepCostoVenta.Preview;
    RepCostoVenta.Destroy;
  end;
end;

procedure TfrmRepCosto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
