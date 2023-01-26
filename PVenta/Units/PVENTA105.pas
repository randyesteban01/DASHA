unit PVENTA105;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DateUtils, Db,
  QuerySearchDlgADO, DBCtrls, ADODB;

type
  TfrmRepVentaDepto = class(TForm)
    Label1: TLabel;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbGrupo: TRadioGroup;
    Search: TQrySearchDlgADO;
    Label27: TLabel;
    edDepto: TEdit;
    btDepto: TSpeedButton;
    tDepto: TEdit;
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
    procedure edFamiliaChange(Sender: TObject);
    procedure btDeptoClick(Sender: TObject);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
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
  frmRepVentaDepto: TfrmRepVentaDepto;

implementation

uses RVENTA59, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmRepVentaDepto.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  ejecuto := False;
end;

procedure TfrmRepVentaDepto.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepVentaDepto.FormActivate(Sender: TObject);
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

procedure TfrmRepVentaDepto.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepVentaDepto.btPrintClick(Sender: TObject);
begin
  Application.CreateForm(TRepVentaDepto, RepVentaDepto);
  RepVentaDepto.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepVentaDepto.QDeptos.SQL.Clear;
  RepVentaDepto.QDeptos.SQL.Add('SELECT DISTINCT');
  RepVentaDepto.QDeptos.SQL.Add('DP.EMP_CODIGO, DP.DEP_CODIGO, DP.DEP_NOMBRE, F.SUC_CODIGO');
  RepVentaDepto.QDeptos.SQL.Add('FROM FACTURAS F, DET_FACTURA D, DEPARTAMENTOS DP, PRODUCTOS P');
  RepVentaDepto.QDeptos.SQL.Add('WHERE F.EMP_CODIGO = D.EMP_CODIGO');
  RepVentaDepto.QDeptos.SQL.Add('AND F.FAC_FORMA = D.FAC_FORMA');
  RepVentaDepto.QDeptos.SQL.Add('AND F.TFA_CODIGO = D.TFA_CODIGO');
  RepVentaDepto.QDeptos.SQL.Add('AND F.FAC_NUMERO = D.FAC_NUMERO');
  RepVentaDepto.QDeptos.SQL.Add('AND F.SUC_CODIGO = D.SUC_CODIGO');
  RepVentaDepto.QDeptos.SQL.Add('AND D.EMP_CODIGO = P.EMP_CODIGO');
  RepVentaDepto.QDeptos.SQL.Add('AND D.PRO_CODIGO = P.PRO_CODIGO');
  RepVentaDepto.QDeptos.SQL.Add('AND P.DEP_CODIGO = DP.DEP_CODIGO');
  RepVentaDepto.QDeptos.SQL.Add('AND P.EMP_CODIGO = DP.EMP_CODIGO');
  RepVentaDepto.QDeptos.SQL.Add('AND F.SUC_CODIGO = :SUC');
  RepVentaDepto.QDeptos.SQL.Add('AND F.EMP_CODIGO = :EMP_CODIGO');
  RepVentaDepto.QDeptos.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
  RepVentaDepto.QDeptos.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
  if cbGrupo.ItemIndex = 0 then
     RepVentaDepto.QDeptos.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     RepVentaDepto.QDeptos.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);
  if Trim(edDepto.Text) <> '' then
     RepVentaDepto.QDeptos.SQL.Add('AND P.DEP_CODIGO = '+Trim(edDepto.Text));
  RepVentaDepto.QDeptos.SQL.Add('ORDER BY DP.DEP_NOMBRE');

  RepVentaDepto.QFacturas.SQL.Clear;
  RepVentaDepto.QFacturas.SQL.Add('SELECT');
  RepVentaDepto.QFacturas.SQL.Add('F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO,');
  RepVentaDepto.QFacturas.SQL.Add('F.FAC_NOMBRE, F.FAC_FECHA, SUM(D.DET_TOTAL) AS TOTAL');
  RepVentaDepto.QFacturas.SQL.Add('FROM FACTURAS F, DET_FACTURA D, PRODUCTOS P');
  RepVentaDepto.QFacturas.SQL.Add('WHERE F.EMP_CODIGO = D.EMP_CODIGO');
  RepVentaDepto.QFacturas.SQL.Add('AND F.FAC_FORMA = D.FAC_FORMA');
  RepVentaDepto.QFacturas.SQL.Add('AND F.TFA_CODIGO = D.TFA_CODIGO');
  RepVentaDepto.QFacturas.SQL.Add('AND F.FAC_NUMERO = D.FAC_NUMERO');
  RepVentaDepto.QFacturas.SQL.Add('AND F.SUC_CODIGO = D.SUC_CODIGO');
  RepVentaDepto.QFacturas.SQL.Add('AND D.EMP_CODIGO = P.EMP_CODIGO');
  RepVentaDepto.QFacturas.SQL.Add('AND D.PRO_CODIGO = P.PRO_CODIGO');
  RepVentaDepto.QFacturas.SQL.Add('AND P.DEP_CODIGO = :DEP_CODIGO');
  RepVentaDepto.QFacturas.SQL.Add('AND F.EMP_CODIGO = :EMP_CODIGO');
  RepVentaDepto.QFacturas.SQL.Add('AND F.SUC_CODIGO = :SUC_CODIGO');
  RepVentaDepto.QFacturas.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
  RepVentaDepto.QFacturas.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
  if cbGrupo.ItemIndex = 0 then
     RepVentaDepto.QFacturas.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     RepVentaDepto.QFacturas.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);
  if Trim(edDepto.Text) <> '' then
     RepVentaDepto.QFacturas.SQL.Add('AND P.DEP_CODIGO = '+Trim(edDepto.Text));
  RepVentaDepto.QFacturas.SQL.Add('GROUP BY F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO,');
  RepVentaDepto.QFacturas.SQL.Add('F.FAC_NOMBRE, F.FAC_FECHA');
  RepVentaDepto.QFacturas.SQL.Add('ORDER BY F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO');

  RepVentaDepto.QDeptos.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;

  RepVentaDepto.QFacturas.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepVentaDepto.QFacturas.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepVentaDepto.QDeptos.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepVentaDepto.QDeptos.Parameters.ParamByName('fecha2').DataType := ftDate;

  RepVentaDepto.QFacturas.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepVentaDepto.QFacturas.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RepVentaDepto.QDeptos.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepVentaDepto.QDeptos.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RepVentaDepto.lbGrupo.Caption := cbGrupo.Items[cbGrupo.ItemIndex];
  RepVentaDepto.QDeptos.Open;
  RepVentaDepto.QFacturas.Open;
  RepVentaDepto.QRLSUCURSAL.Caption := UpperCase(DBLookupComboBox2.Text);
  RepVentaDepto.PrinterSetup;
  RepVentaDepto.Preview;
  RepVentaDepto.Destroy;
end;

procedure TfrmRepVentaDepto.edFamiliaChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepVentaDepto.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'dep_codigo';
  Search.Title := 'Listado de Departamentos';
  if Search.execute then
  begin
    edDepto.text := search.valuefield;
    edDepto.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select dep_codigo, dep_nombre');
    dm.Query1.sql.add('from departamentos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and dep_codigo = :dep');
    dm.Query1.Parameters.parambyname('dep').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
  end;
end;

procedure TfrmRepVentaDepto.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepVentaDepto.edDeptoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDepto.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select dep_codigo, dep_nombre');
      dm.Query1.sql.add('from departamentos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and dep_codigo = :dep');
      dm.Query1.Parameters.parambyname('dep').Value := strtoint(edDepto.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmRepVentaDepto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepVentaDepto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
