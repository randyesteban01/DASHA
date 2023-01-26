unit CONT73;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TfrmCuentasAcumulan = class(TForm)
    btClose: TBitBtn;
    btRefresh: TBitBtn;
    DBGrid1: TDBGrid;
    QCuentas: TADOQuery;
    QCuentascuenta_sumar: TStringField;
    QCuentascat_nombre: TStringField;
    QCuentasBalance: TBCDField;
    dsCuentas: TDataSource;
    procedure btCloseClick(Sender: TObject);
    procedure btRefreshClick(Sender: TObject);
    procedure QCuentasFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCuentasAcumulan: TfrmCuentasAcumulan;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmCuentasAcumulan.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCuentasAcumulan.btRefreshClick(Sender: TObject);
begin
  //Close;
end;

procedure TfrmCuentasAcumulan.QCuentasFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if QCuentasBalance.Value = 0 then Accept := False else Accept := True;
end;

end.
