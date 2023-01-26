unit USBK00;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, magwmi, magsubs1, StdCtrls, DIMime, Buttons;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    Memo2: TMemo;
    Memo3: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
    rows, instances, I, J, k: integer ;
    WmiResults: T2DimStrArray ;
    OldCursor: TCursor ;
    errstr, query, sn, basura: string ;
begin
    Screen.Cursor := crHourGlass ;
    try
        memo1.lines.Clear ;
        Application.ProcessMessages ;
        rows := MagWmiGetInfoEx ('.', 'root\CIMV2', '', '', edit1.Text, WmiResults, instances, errstr) ;
        memo2.lines.clear;
        memo3.lines.clear;
        if rows > 0 then
        begin
            for I := 1 to rows do
            begin
                  for J := 1 to instances do
                  begin
                    if WmiResults[0, I] = 'PNPDeviceID' then
                    begin
                       memo1.Lines.Add (WmiResults [J, I]);
                       sn := (WmiResults [J, I]);
                       basura := '';
                       for k := 1 to length(sn) do
                       begin
                         if copy(sn,k,1) <> '_' then
                           basura := basura + copy(sn,k,1);
                       end;
                       //sn := copy(basura,1,pos('&', basura)-1);
                       sn := basura;
                       memo2.Lines.Add(sn);
                       memo3.lines.Add(MimeEncodeString(sn));
                    end;
                  end;
            end ;
        end;
    finally
        Screen.Cursor := OldCursor ;
        WmiResults := Nil ;
    end ;
    sn := memo1.Lines[memo1.Lines.count-1];
    basura := '';
    for i := 1 to length(sn) do
    begin
      if copy(sn,i,1) = '\' then
        basura := ''
      else
        basura := basura + copy(sn,i,1);
    end;
end;

end.
