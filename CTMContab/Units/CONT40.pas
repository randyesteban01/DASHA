unit CONT40;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, QuerySearchDlgADO, DB, ADODB, Printers,
  DBCtrls;

type
  TfrmRepCheque = class(TForm)
    BitBtn1: TBitBtn;
    btClose: TBitBtn;
    Label1: TLabel;
    edDesde: TEdit;
    edHasta: TEdit;
    rgOrigen: TRadioGroup;
    Label3: TLabel;
    edBanco: TEdit;
    btBanco: TSpeedButton;
    tBanco: TEdit;
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btBancoClick(Sender: TObject);
    procedure edBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edBancoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepCheque: TfrmRepCheque;

implementation

uses RCONT16, RCONT17, SIGMA01;

{$R *.dfm}

procedure TfrmRepCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmRepCheque.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tRepCheque, RepCheque);
  RepCheque.QCheques.Parameters.ParamByName('emp').Value   := dm.QEmpresasEMP_CODIGO.Value;
  RepCheque.QCheques.Parameters.ParamByName('banco').Value := StrToInt(Trim(edBanco.text));
  RepCheque.QCheques.Parameters.ParamByName('num1').Value  := StrToInt(Trim(edDesde.text));
  RepCheque.QCheques.Parameters.ParamByName('num2').Value  := StrToInt(Trim(edHasta.text));
  RepCheque.QCheques.Parameters.ParamByName('suc').Value   := DBLookupComboBox2.KeyValue;
  RepCheque.QCheques.Open;
  RepCheque.QDetalle.Open;
  //RepCheque.Page.Width:= 8.5;
  //RepCheque.Page.Length:= ;
  RepCheque.PrinterSetup;
  if rgOrigen.ItemIndex = 0 then
    RepCheque.Preview
  else
    RepCheque.Print;
  RepCheque.Destroy;
end;

procedure TfrmRepCheque.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepCheque.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Title := 'Bancos';
  Search.ResultField := 'ban_codigo';
  if Search.execute then
  begin
    edBanco.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :cod');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
  end;
end;

procedure TfrmRepCheque.edBancoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edBanco.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :cod');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
    end;
  end;
end;

procedure TfrmRepCheque.edBancoChange(Sender: TObject);
begin
  if Trim(edBanco.Text) = '' then tBanco.Text := '';
end;

procedure TfrmRepCheque.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
