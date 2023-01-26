unit PVENTA67;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids,
  DB, IBCustomDataSet, IBQuery, QuerySearchDlgADO;

type
  TfrmRepMovDia = class(TForm)
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    tUsuario: TEdit;
    edUsuario: TEdit;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Search: TQrySearchDlgADO;
    Label1: TLabel;
    Fecha: TDateTimePicker;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edUsuarioChange(Sender: TObject);
    procedure edUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepMovDia: TfrmRepMovDia;

implementation

uses RVENTA23, SIGMA01;

{$R *.dfm}

procedure TfrmRepMovDia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
end;

procedure TfrmRepMovDia.SpeedButton3Click(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select usu_nombre, usu_codigo');
  Search.Query.add('from usuarios');
  Search.ResultField := 'usu_Codigo';
  Search.Title := 'Usuarios';
  if Search.execute then
  begin
    edUsuario.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select usu_nombre from usuarios');
    dm.Query1.sql.add('where usu_codigo = :cod');
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('USUARIO NO EXISTE',mterror,[mbok],0)
    else
      tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
    edUsuario.setfocus;
  end;
end;

procedure TfrmRepMovDia.edUsuarioChange(Sender: TObject);
begin
  if trim(edUsuario.text) = '' then tUsuario.text := '';
end;

procedure TfrmRepMovDia.edUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edUsuario.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select usu_nombre from usuarios');
      dm.Query1.sql.add('where usu_codigo = :cod');
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edUsuario.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('USUARIO NO EXISTE',mterror,[mbok],0);
        edUsuario.setFocus;
      end
      else
        tUsuario.text := dm.Query1.fieldbyname('usu_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepMovDia.FormCreate(Sender: TObject);
begin
  Fecha.Date := Date;
end;

procedure TfrmRepMovDia.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepMovDia.btPrintClick(Sender: TObject);
var
  fec : string;
begin
  fec := datetostr(Fecha.date);
  Application.CreateForm(tRRepMovDia, RRepMovDia);
  RRepMovDia.lbFecha.Caption := 'Al '+DateToStr(Fecha.Date);
  RRepMovDia.lbUsuario.Caption := tUsuario.Text;

  if Trim(edUsuario.Text) <> '' then
  begin
    RRepMovDia.QMov.SQL.Clear;
    RRepMovDia.QMov.SQL.Add('select * from pr_mov_dia_usu (:emp, :fecha, :usu)');
    RRepMovDia.QMov.Parameters.ParamByName('usu').Value := StrToInt(Trim(edUsuario.Text));
  end;
  RRepMovDia.QMov.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RRepMovDia.QMov.Parameters.ParamByName('fecha').DataType := ftDate;
  RRepMovDia.QMov.Parameters.ParamByName('fecha').Value  := Fecha.Date;
  RRepMovDia.QMov.Open;

  RRepMovDia.PrinterSetup;
  RRepMovDia.Preview;
  RRepMovDia.Destroy;
end;

procedure TfrmRepMovDia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if activecontrol.classtype <> tdbgrid then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepMovDia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.

