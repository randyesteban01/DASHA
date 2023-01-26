unit SIGMA10;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM_Update = class(TDataModule)
    qVerScript: TADOQuery;
    qActualiza: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Update: TDM_Update;

implementation

uses
  SIGMA01;

{$R *.dfm}

end.
