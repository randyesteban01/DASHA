unit PVENTA121;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, IBCustomDataSet, IBQuery, StdCtrls, Buttons,
  ADODB;

type
  TfrmConsCombo = class(TForm)
    QCombo: TADOQuery;
    QComboPRO_NOMBRE: TIBStringField;
    QComboCOM_CANTIDAD: TFloatField;
    QComboCOM_PRECIO: TFloatField;
    QComboCOM_PRODUCTO: TIntegerField;
    QComboCOM_SECUENCIA: TIntegerField;
    QComboEMP_CODIGO: TIntegerField;
    QComboPRO_CODIGO: TIntegerField;
    dsCombo: TDataSource;
    DBGrid8: TDBGrid;
    btClose: TBitBtn;
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCombo: TfrmConsCombo;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmConsCombo.btCloseClick(Sender: TObject);
begin
  close;
end;

end.
