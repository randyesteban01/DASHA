unit PVENTA119;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, CheckLst;

type
  TfrmSeleccionEmp = class(TForm)
    Lista: TCheckListBox;
    Lista2: TListBox;
    BitBtn1: TBitBtn;
    ckSelec: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure ckSelecClick(Sender: TObject);
    procedure ListaKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSeleccionEmp: TfrmSeleccionEmp;

implementation

{$R *.dfm}

procedure TfrmSeleccionEmp.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSeleccionEmp.ckSelecClick(Sender: TObject);
var
  a : integer;
begin
  for a:= 0 to lista.Items.Count - 1 do
    lista.Checked[a] := ckSelec.Checked;
end;

procedure TfrmSeleccionEmp.ListaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Lista.Checked[lista.ItemIndex] := not Lista.Checked[lista.ItemIndex];
    lista.ItemIndex := lista.ItemIndex + 1;
  end;
end;

procedure TfrmSeleccionEmp.FormActivate(Sender: TObject);
begin
  lista.ItemIndex := 0;
end;

procedure TfrmSeleccionEmp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_escape then BitBtn1Click(self);
end;

end.
