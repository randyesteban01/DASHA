unit PVENTA36;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, dbcgrids, DB, ADODB;

type
  TfrmNota = class(TForm)
    DBMemo1: TDBMemo;
    DBCtrlGrid1: TDBCtrlGrid;
    DBMemo2: TDBMemo;
    QCotizaciones: TADOQuery;
    QCotizacionesdet_nota: TMemoField;
    dsCotizacion: TDataSource;
    QFacturas: TADOQuery;
    QFacturasdet_nota: TMemoField;
    DBCtrlGrid2: TDBCtrlGrid;
    DBMemo3: TDBMemo;
    dsFacturas: TDataSource;
    btClose: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNota: TfrmNota;

implementation

uses PVENTA19, PVENTA20, PVENTA18, PVENTA26, PVENTA101, PVENTA28, SIGMA01,
  PVENTA226, PVENTA27;

{$R *.dfm}

procedure TfrmNota.FormActivate(Sender: TObject);
begin
  if not QCotizaciones.Active then
  begin
    try
      QCotizaciones.Parameters.ParamByName('pro').Value := frmCotizacion.QDetallePRO_CODIGO.Value;
      QCotizaciones.Open;

      QFacturas.Parameters.ParamByName('pro').Value := frmCotizacion.QDetallePRO_CODIGO.Value;
      QFacturas.Open;
    except
    end;
    try
      QCotizaciones.Parameters.ParamByName('pro').Value := frmFactura.QDetallePRO_CODIGO.Value;
      QCotizaciones.Open;

      QFacturas.Parameters.ParamByName('pro').Value := frmFactura.QDetallePRO_CODIGO.Value;
      QFacturas.Open;
    except
    end;
  end;
end;

procedure TfrmNota.btCloseClick(Sender: TObject);
begin
  close;
end;

end.
