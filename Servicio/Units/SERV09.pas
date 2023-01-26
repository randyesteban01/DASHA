unit SERV09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls;

type
  TfrmMemo = class(TForm)
    BitBtn1: TBitBtn;
    DBMemo1: TDBRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMemo: TfrmMemo;

implementation

{$R *.dfm}

procedure TfrmMemo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DBMemo1.DataSource := nil;
  DBMemo1.DataField := EmptyStr;

end;

end.
