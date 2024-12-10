unit PVENTA106;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DateUtils, Db, 
  QuerySearchDlgADO, DBCtrls, ADODB;

type
  TfrmRepVentaMarca = class(TForm)
    Label1: TLabel;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbGrupo: TRadioGroup;
    btMarca: TSpeedButton;
    Label4: TLabel;
    tMarca: TEdit;
    edMarca: TEdit;
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure btMarcaClick(Sender: TObject);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ejecuto : boolean;
  end;

var
  frmRepVentaMarca: TfrmRepVentaMarca;

implementation

uses RVENTA60, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmRepVentaMarca.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  ejecuto := false;
end;

procedure TfrmRepVentaMarca.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepVentaMarca.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  if ejecuto = False then
    if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
    (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
       cbGrupo.ItemIndex := 0
    else
       cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmRepVentaMarca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (ord(key) = 66) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 1;
  if (ssCtrl in Shift) and (ord(key) = 65) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 0;
  if (ssCtrl in Shift) and (ord(key) = 84) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 2;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmRepVentaMarca.btPrintClick(Sender: TObject);
begin
  ejecuto := true;
  Application.CreateForm(TRepVentaMarca, RepVentaMarca);
  RepVentaMarca.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepVentaMarca.QMarcas.SQL.Clear;
  RepVentaMarca.QMarcas.SQL.Add('SELECT DISTINCT');
  RepVentaMarca.QMarcas.SQL.Add('M.MAR_CODIGO, M.MAR_NOMBRE, F.SUC_CODIGO, F.EMP_CODIGO');
  RepVentaMarca.QMarcas.SQL.Add('FROM FACTURAS F, DET_FACTURA D, MARCAS M, PRODUCTOS P');
  RepVentaMarca.QMarcas.SQL.Add('WHERE F.EMP_CODIGO = D.EMP_CODIGO');
  RepVentaMarca.QMarcas.SQL.Add('AND F.FAC_FORMA = D.FAC_FORMA');
  RepVentaMarca.QMarcas.SQL.Add('AND F.TFA_CODIGO = D.TFA_CODIGO');
  RepVentaMarca.QMarcas.SQL.Add('AND F.FAC_NUMERO = D.FAC_NUMERO');
  RepVentaMarca.QMarcas.SQL.Add('AND F.SUC_CODIGO = D.SUC_CODIGO');
  RepVentaMarca.QMarcas.SQL.Add('AND D.EMP_CODIGO = P.EMP_CODIGO');
  RepVentaMarca.QMarcas.SQL.Add('AND D.PRO_CODIGO = P.PRO_CODIGO');
  RepVentaMarca.QMarcas.SQL.Add('AND P.MAR_CODIGO = M.MAR_CODIGO');
  RepVentaMarca.QMarcas.SQL.Add('AND F.EMP_CODIGO = :EMP_CODIGO');
  RepVentaMarca.QMarcas.SQL.Add('AND F.SUC_CODIGO = :SUC');
  RepVentaMarca.QMarcas.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
  RepVentaMarca.QMarcas.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
  if cbGrupo.ItemIndex = 0 then
     RepVentaMarca.QMarcas.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     RepVentaMarca.QMarcas.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);
  if Trim(edMarca.Text) <> '' then
     RepVentaMarca.QMarcas.SQL.Add('AND P.MAR_CODIGO = '+Trim(edMarca.Text));
  RepVentaMarca.QMarcas.SQL.Add('ORDER BY M.MAR_NOMBRE');

  RepVentaMarca.QFacturas.SQL.Clear;
  RepVentaMarca.QFacturas.SQL.Add('SELECT');
  RepVentaMarca.QFacturas.SQL.Add('P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_NOMBRE,');
  RepVentaMarca.QFacturas.SQL.Add('SUM(D.DET_TOTAL) AS TOTAL,');
  RepVentaMarca.QFacturas.SQL.Add('SUM(D.DET_CANTIDAD) AS CANTIDAD');
  RepVentaMarca.QFacturas.SQL.Add('FROM FACTURAS F, DET_FACTURA D, PRODUCTOS P');
  RepVentaMarca.QFacturas.SQL.Add('WHERE F.EMP_CODIGO = D.EMP_CODIGO');
  RepVentaMarca.QFacturas.SQL.Add('AND F.FAC_FORMA = D.FAC_FORMA');
  RepVentaMarca.QFacturas.SQL.Add('AND F.TFA_CODIGO = D.TFA_CODIGO');
  RepVentaMarca.QFacturas.SQL.Add('AND F.FAC_NUMERO = D.FAC_NUMERO');
  RepVentaMarca.QFacturas.SQL.Add('AND F.SUC_CODIGO = D.SUC_CODIGO');
  RepVentaMarca.QFacturas.SQL.Add('AND D.EMP_CODIGO = P.EMP_CODIGO');
  RepVentaMarca.QFacturas.SQL.Add('AND D.PRO_CODIGO = P.PRO_CODIGO');
  RepVentaMarca.QFacturas.SQL.Add('AND P.MAR_CODIGO = :MAR_CODIGO');
  RepVentaMarca.QFacturas.SQL.Add('AND F.EMP_CODIGO = :EMP_CODIGO');
  RepVentaMarca.QFacturas.SQL.Add('AND F.SUC_CODIGO = :SUC_CODIGO');
  RepVentaMarca.QFacturas.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
  RepVentaMarca.QFacturas.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
  if cbGrupo.ItemIndex = 0 then
     RepVentaMarca.QFacturas.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     RepVentaMarca.QFacturas.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);
  if Trim(edMarca.Text) <> '' then
     RepVentaMarca.QFacturas.SQL.Add('AND P.MAR_CODIGO = '+Trim(edMarca.Text));
  RepVentaMarca.QFacturas.SQL.Add('GROUP BY P.PRO_CODIGO, P.PRO_RORIGINAL, P.PRO_NOMBRE');
  RepVentaMarca.QFacturas.SQL.Add('ORDER BY P.PRO_NOMBRE');

  RepVentaMarca.QFacturas.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepVentaMarca.QFacturas.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepVentaMarca.QMarcas.Parameters.ParamByName('fecha1').DataType   := ftDate;
  RepVentaMarca.QMarcas.Parameters.ParamByName('fecha2').DataType   := ftDate;

  RepVentaMarca.QFacturas.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepVentaMarca.QFacturas.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RepVentaMarca.QMarcas.Parameters.ParamByName('fecha1').Value   := Fecha1.Date;
  RepVentaMarca.QMarcas.Parameters.ParamByName('fecha2').Value   := Fecha2.Date;
  RepVentaMarca.QMarcas.Parameters.ParamByName('suc').Value      := DBLookupComboBox2.KeyValue;
  RepVentaMarca.lbGrupo.Caption := cbGrupo.Items[cbGrupo.ItemIndex];
  RepVentaMarca.QMarcas.Open;
  RepVentaMarca.QFacturas.Open;
  RepVentaMarca.QRLSUCURSAL.Caption := UpperCase(DBLookupComboBox2.Text);
  RepVentaMarca.PrinterSetup;
  RepVentaMarca.Preview;
  RepVentaMarca.Destroy;
end;

procedure TfrmRepVentaMarca.btMarcaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select mar_nombre, mar_codigo');
  Search.Query.add('from marcas');
  Search.ResultField := 'mar_codigo';
  Search.Title := 'Listado de Marcas';
  if Search.execute then
  begin
    edMarca.text := search.valuefield;
    edMarca.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mar_codigo, mar_nombre');
    dm.Query1.sql.add('from marcas');
    dm.Query1.sql.add('where mar_codigo = :mar');
    dm.Query1.Parameters.parambyname('mar').Value := strtoint(search.valuefield);
    dm.Query1.open;
    tMarca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    edMarca.setfocus;
  end;
end;

procedure TfrmRepVentaMarca.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMarca.text := '';
end;

procedure TfrmRepVentaMarca.edMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edMarca.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mar_codigo, mar_nombre');
      dm.Query1.sql.add('from marcas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mar_codigo = :mar');
      dm.Query1.Parameters.parambyname('mar').Value := strtoint(edMarca.text);
      dm.Query1.open;
      tMarca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    end
    else
      tMarca.text := '';
  end;
end;

procedure TfrmRepVentaMarca.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepVentaMarca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
