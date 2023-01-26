unit SIGMA09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB;

type
  TFrmActScripts = class(TForm)
    qActScript: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmActScripts: TFrmActScripts;

implementation

uses
  SIGMA01;

{$R *.dfm}

procedure TFrmActScripts.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Close;
end;

procedure TFrmActScripts.FormCreate(Sender: TObject);
begin
dm.qUptimeDB.Close;
DM.qUptimeDB.ExecSQL;

qActScript.Close;
qActScript.Open;
end;

end.
