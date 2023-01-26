unit PVENTA165;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DateUtils, Db, 
  QuerySearchDlgADO, DBCtrls, ADODB;

type
  TfrmRepCumpleanos = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepCumpleanos: TfrmRepCumpleanos;

implementation

uses SIGMA00, SIGMA01, RVENTA82;


{$R *.dfm}

procedure TfrmRepCumpleanos.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepCumpleanos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepCumpleanos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepCumpleanos.btPrintClick(Sender: TObject);
var
  mes1, mes2, dia1, dia2 : integer;
begin
  Application.CreateForm(tRepCumpleanos, RepCumpleanos);

  mes1 := MonthOf(fecha1.Date);
  mes2 := MonthOf(fecha2.Date);
  dia1 := DayOf(fecha1.Date);
  dia2 := DayOf(fecha2.Date);
  if mes1 > mes2 then
  begin
    RepCumpleanos.QClientes.Parameters.ParamByName('mes1').Value  := mes1;
    RepCumpleanos.QClientes.Parameters.ParamByName('mes2').Value  := 12;
    RepCumpleanos.QClientes.Parameters.ParamByName('mes3').Value  := 1;
    RepCumpleanos.QClientes.Parameters.ParamByName('mes4').Value  := mes2;
  end
  else if mes1 <= mes2 then
  begin
    RepCumpleanos.QClientes.Parameters.ParamByName('mes1').Value  := mes1;
    RepCumpleanos.QClientes.Parameters.ParamByName('mes2').Value  := mes2;
    RepCumpleanos.QClientes.Parameters.ParamByName('mes3').Value  := mes1;
    RepCumpleanos.QClientes.Parameters.ParamByName('mes4').Value  := mes2;
  end;

  if dia1 > dia2 then
  begin
    RepCumpleanos.QClientes.Parameters.ParamByName('dia1').Value  := dia1;
    RepCumpleanos.QClientes.Parameters.ParamByName('dia2').Value  := 31;
    RepCumpleanos.QClientes.Parameters.ParamByName('dia3').Value  := 1;
    RepCumpleanos.QClientes.Parameters.ParamByName('dia4').Value  := dia2;
  end
  else if dia1 <= dia2 then
  begin
    RepCumpleanos.QClientes.Parameters.ParamByName('dia1').Value  := dia1;
    RepCumpleanos.QClientes.Parameters.ParamByName('dia2').Value  := dia2;
    RepCumpleanos.QClientes.Parameters.ParamByName('dia3').Value  := dia1;
    RepCumpleanos.QClientes.Parameters.ParamByName('dia4').Value  := dia2;
  end;

  RepCumpleanos.QClientes.Open;
  RepCumpleanos.lbfecha.Caption := 'Desde '+IntToStr(DayOf(fecha1.Date))+'/'+
                                   IntToStr(MonthOf(Fecha1.Date))+' al '+
                                   IntToStr(DayOf(fecha2.Date))+'/'+
                                   IntToStr(MonthOf(Fecha2.Date));
                                   
  RepCumpleanos.PrinterSetup;
  RepCumpleanos.Preview;
  RepCumpleanos.Destroy;
end;

procedure TfrmRepCumpleanos.FormCreate(Sender: TObject);
begin
  fecha1.date := date;
  fecha2.date := date;
end;

end.
