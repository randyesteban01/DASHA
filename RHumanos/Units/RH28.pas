unit RH28;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, DB, ADODB, Grids, DBGrids;

type
  TfrmElegibles = class(TForm)
    btClose: TBitBtn;
    Label1: TLabel;
    cbbuscar: TComboBox;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QPosiciones: TADOQuery;
    dsPosiciones: TDataSource;
    StaticText1: TStaticText;
    QHabilidades: TADOQuery;
    QHabilidadeshab_codigo: TIntegerField;
    QHabilidadeshab_nombre: TStringField;
    dsHabilidades: TDataSource;
    DBLookupListBox1: TDBLookupListBox;
    btinsertar: TSpeedButton;
    bteliminar: TSpeedButton;
    lbporciento: TStaticText;
    QElegible: TADOQuery;
    sghabilidad: TStringGrid;
    BitBtn1: TBitBtn;
    sghabilidadcopia: TStringGrid;
    QPosicionespos_codigo: TIntegerField;
    QPosicionespos_nombre: TStringField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btinsertarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sghabilidadSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sghabilidadEnter(Sender: TObject);
    procedure dsHabilidadesDataChange(Sender: TObject; Field: TField);
    procedure sghabilidadKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure bteliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmElegibles: TfrmElegibles;

implementation

uses SIGMA01, RH29;

{$R *.dfm}

procedure TfrmElegibles.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmElegibles.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACtion := cafree;
end;

procedure TfrmElegibles.FormActivate(Sender: TObject);
begin
  if not QHabilidades.Active then
  begin
    QHabilidades.Open;
    QPosiciones.Open;

    DBLookupComboBox1.KeyValue := QPosicionespos_codigo.Value;
  end;
end;

procedure TfrmElegibles.btinsertarClick(Sender: TObject);
var
  a : integer;
begin
  if sghabilidad.Cells[0,sghabilidad.RowCount-1] = '' then
  begin
    sghabilidad.Cells[0,sghabilidad.RowCount-1] := QHabilidadeshab_nombre.Value;
    sghabilidad.Cells[1,sghabilidad.RowCount-1] := '0.00';
  end
  else
  begin
    sghabilidad.RowCount := sghabilidad.RowCount + 1;
    sghabilidad.Cells[0,sghabilidad.RowCount-1] := QHabilidadeshab_nombre.Value;
    sghabilidad.Cells[1,sghabilidad.RowCount-1] := '0.00';
  end;
  sghabilidad.Row := sghabilidad.RowCount-1;

  QHabilidades.Close;
  QHabilidades.SQL.Clear;
  QHabilidades.SQL.Add('select hab_codigo, hab_nombre');
  QHabilidades.SQL.Add('from habilidades');
  QHabilidades.SQL.Add('WHERE hab_nombre not in (');
  for a := 1 to sghabilidad.RowCount-1 do
    QHabilidades.SQL.Add(QuotedStr(sghabilidad.Cells[0,a])+',');
  QHabilidades.SQL.Add(QuotedStr('.')+')');
  QHabilidades.SQL.Add('order by hab_nombre');
  QHabilidades.Open;
end;

procedure TfrmElegibles.FormCreate(Sender: TObject);
begin
  sghabilidad.Cells[0,0] := 'Habilidades Seleccionadas';
  sghabilidad.Cells[1,0] := '   %';
end;

procedure TfrmElegibles.sghabilidadSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  CanSelect := ACol > 0;
end;

procedure TfrmElegibles.sghabilidadEnter(Sender: TObject);
begin
  sghabilidad.Col := 1;
end;

procedure TfrmElegibles.dsHabilidadesDataChange(Sender: TObject;
  Field: TField);
begin
  btinsertar.Enabled := QHabilidades.RecordCount > 0;
end;

procedure TfrmElegibles.sghabilidadKeyPress(Sender: TObject;
  var Key: Char);
var
  a : integer;
  porc : double;
begin
  if key = #13 then
  begin
    porc := 0;
    for a := 1 to sghabilidad.RowCount-1 do
    begin
      sghabilidad.Cells[1,a] := FormatFloat('0.00',strtofloat(sghabilidad.Cells[1,a]));
      porc := porc + strtofloat(sghabilidad.Cells[1,a]);
    end;
    if porc > 100 then
    begin
      MessageDlg('El total de los porcentajes debe ser menor o igual a 100',mtError,[mbok],0);
      porc := porc - strtofloat(sghabilidad.Cells[1,a-1]);
      sghabilidad.Cells[1,a-1] := '0.00';
    end;

    lbporciento.Caption := 'Por Asignar: '+formatfloat('0.00%',(100 - porc));

    if sghabilidad.Row < sghabilidad.RowCount-1 then
      sghabilidad.Row := sghabilidad.Row+1;
  end;
end;

procedure TfrmElegibles.BitBtn1Click(Sender: TObject);
var
  a : integer;
begin
  if cbbuscar.ItemIndex = 0 then
  begin
    Application.CreateForm(tfrmElegiblesEmpleados, frmElegiblesEmpleados);
    frmElegiblesEmpleados.QElegibles.SQL.Clear;
    frmElegiblesEmpleados.QElegibles.SQL.Add('select');
    frmElegiblesEmpleados.QElegibles.SQL.Add('(t.sol_nombre+'+#39+' '+#39+'+t.sol_apellido_paterno+'+#39+' '+#39+'+t.sol_apellido_materno) as Nombre,');
    frmElegiblesEmpleados.QElegibles.SQL.Add('t.sol_cedula as Cedula, t.sol_sexo as Sexo, t.sol_telefono1 as Telefono1,');
    frmElegiblesEmpleados.QElegibles.SQL.Add('t.sol_telefono2 as Telefono2');
    frmElegiblesEmpleados.QElegibles.SQL.Add('from solicitud_empleo t, solicitud_habilidades h, habilidades l');
    frmElegiblesEmpleados.QElegibles.SQL.Add('where t.emp_codigo = :emp_codigo');
    frmElegiblesEmpleados.QElegibles.SQL.Add('and t.emp_codigo = h.emp_codigo');
    frmElegiblesEmpleados.QElegibles.SQL.Add('and t.sol_numero = h.sol_numero');
    frmElegiblesEmpleados.QElegibles.SQL.Add('and h.hab_codigo = l.hab_codigo');
    frmElegiblesEmpleados.QElegibles.SQL.Add('and l.hab_nombre in (');
    for a := 1 to sghabilidad.RowCount-1 do
      frmElegiblesEmpleados.QElegibles.SQL.Add(QuotedStr(sghabilidad.Cells[0,a])+',');

    frmElegiblesEmpleados.QElegibles.SQL.Add(QuotedStr('.')+')');
    frmElegiblesEmpleados.QElegibles.SQL.Add('and t.sol_numero in (select sol_numero from solicitud_posiciones');
    frmElegiblesEmpleados.QElegibles.SQL.Add('where emp_codigo = t.emp_codigo and sol_numero = t.sol_numero');
    frmElegiblesEmpleados.QElegibles.SQL.Add('and pos_codigo = :pos)');
    frmElegiblesEmpleados.QElegibles.Parameters.ParamByName('pos').Value := DBLookupComboBox1.KeyValue;
    frmElegiblesEmpleados.QElegibles.Open;
    frmElegiblesEmpleados.ShowModal;
    frmElegiblesEmpleados.Release;
  end;
end;

procedure TfrmElegibles.bteliminarClick(Sender: TObject);
var
  a, sec : integer;
begin
  if sghabilidad.Cells[0,sghabilidad.Row] <> '' then
  begin
    sghabilidad.Cells[0, sghabilidad.Row] := '';
    sghabilidad.Cells[1, sghabilidad.Row] := '';
    sghabilidadcopia.RowCount := 1;
    sec := 0;
    for a := 1 to sghabilidad.RowCount -1 do
      if Trim(sghabilidad.Cells[0,a]) <> '' then
      begin
        sghabilidadcopia.Cells[0,sec] := sghabilidad.Cells[0,a];
        sghabilidadcopia.Cells[1,sec] := sghabilidad.Cells[1,a];
        sghabilidadcopia.RowCount := sghabilidadcopia.RowCount + 1;
        sec := sec + 1;
      end;
    sghabilidadcopia.RowCount := sghabilidadcopia.RowCount - 1;
    if sghabilidad.RowCount >2 then
    begin
      sghabilidad.RowCount := sghabilidad.RowCount-1;
      for a := 0 to sghabilidadcopia.RowCount-1 do
        if Trim(sghabilidadcopia.Cells[0,a]) <> '' then
        begin
          sghabilidad.Cells[0,a+1] := sghabilidadcopia.Cells[0,a];
          sghabilidad.Cells[1,a+1] := sghabilidadcopia.Cells[1,a];
        end;
    end
    else
    begin
      sghabilidad.Cells[0, sghabilidad.Row] := '';
      sghabilidad.Cells[1, sghabilidad.Row] := '';
    end;
  end;

  QHabilidades.Close;
  QHabilidades.SQL.Clear;
  QHabilidades.SQL.Add('select hab_codigo, hab_nombre');
  QHabilidades.SQL.Add('from habilidades');
  QHabilidades.SQL.Add('where hab_nombre not in (');
  for a := 1 to sghabilidad.RowCount-1 do
    QHabilidades.SQL.Add(QuotedStr(sghabilidad.Cells[0,a])+',');
  QHabilidades.SQL.Add(QuotedStr('.')+')');
  QHabilidades.SQL.Add('order by hab_nombre');
  QHabilidades.Open;
end;

end.
