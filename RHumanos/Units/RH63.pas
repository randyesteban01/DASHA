unit RH63;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TfrmConsNovedadesNomina = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edEmpleado: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    QNovedades: TADOQuery;
    DBGrid1: TDBGrid;
    dsNovedades: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsNovedadesNomina: TfrmConsNovedadesNomina;

implementation

uses SIGMA01;

{$R *.dfm}

end.
