unit PVENTA204;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DateUtils, Db,
  QuerySearchDlgADO, DBCtrls, ADODB, Spin, Grids, DBGrids;

type
  TfrmRepVentaGerenteProveedor = class(TForm)
    Label1: TLabel;
    btClose: TBitBtn;
    cbGrupo: TRadioGroup;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label3: TLabel;
    cbtrimestre: TComboBox;
    spAno: TSpinEdit;
    btRefresh: TBitBtn;
    Search: TQrySearchDlgADO;
    dsReporte: TDataSource;
    QReporte: TADOQuery;
    QReportecodigo: TIntegerField;
    QReporteproveedor: TStringField;
    QReportemonto1: TBCDField;
    QReportemonto2: TBCDField;
    QReportemonto3: TBCDField;
    QReporteTotal: TFloatField;
    QReporteVariacion1: TFloatField;
    QReporteVariacion2: TFloatField;
    QReporteVariacion3: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    btGerente: TSpeedButton;
    Label4: TLabel;
    edGerente: TEdit;
    tGerente: TEdit;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    btFamilia: TSpeedButton;
    Label5: TLabel;
    tFamilia: TEdit;
    edFamilia: TEdit;
    btDepto: TSpeedButton;
    Label27: TLabel;
    tDepto: TEdit;
    edDepto: TEdit;
    QFamilia: TADOQuery;
    dsFamilia: TDataSource;
    QDepartamento: TADOQuery;
    dsDepto: TDataSource;
    QFamiliacodigo: TIntegerField;
    QFamiliaproveedor: TStringField;
    QFamiliamonto1: TBCDField;
    QFamiliamonto2: TBCDField;
    QFamiliamonto3: TBCDField;
    QFamiliaVariacion1: TFloatField;
    QFamiliaVariacion2: TFloatField;
    QFamiliaTotal: TFloatField;
    QDepartamentocodigo: TIntegerField;
    QDepartamentoproveedor: TStringField;
    QDepartamentomonto1: TBCDField;
    QDepartamentomonto2: TBCDField;
    QDepartamentomonto3: TBCDField;
    QDepartamentoVariacion1: TFloatField;
    QDepartamentoVariacion2: TFloatField;
    QDepartamentoTotal: TFloatField;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edGerenteChange(Sender: TObject);
    procedure edGerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QReporteCalcFields(DataSet: TDataSet);
    procedure btRefreshClick(Sender: TObject);
    procedure btGerenteClick(Sender: TObject);
    procedure cbtrimestreChange(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btDeptoClick(Sender: TObject);
    procedure edDeptoChange(Sender: TObject);
    procedure edDeptoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QFamiliaCalcFields(DataSet: TDataSet);
    procedure QDepartamentoCalcFields(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ejecuto : boolean;
  end;

var
  frmRepVentaGerenteProveedor: TfrmRepVentaGerenteProveedor;

implementation

uses RVENTA58, SIGMA01, SIGMA00, RVENTA99, RVENTA112;

{$R *.dfm}

procedure TfrmRepVentaGerenteProveedor.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  ejecuto := false;

  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmRepVentaGerenteProveedor.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepVentaGerenteProveedor.FormActivate(Sender: TObject);
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

procedure TfrmRepVentaGerenteProveedor.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepVentaGerenteProveedor.edGerenteChange(Sender: TObject);
begin
  if trim(edGerente.text) = '' then tgerente.text := '';
end;

procedure TfrmRepVentaGerenteProveedor.edGerenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edGerente.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ger_nombre from Gerentes');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ger_codigo = :ger');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ger').Value := strtoint(trim(edGerente.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0);
        edGerente.SetFocus;
      end
      else
        tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepVentaGerenteProveedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepVentaGerenteProveedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepVentaGerenteProveedor.QReporteCalcFields(
  DataSet: TDataSet);
begin
  QReporteTotal.Value := QReportemonto1.Value + QReportemonto2.Value + QReportemonto3.Value;
  QReporteVariacion1.Value := 0;
  QReporteVariacion2.Value := 0;
  if (QReportemonto1.Value > 0) then
    QReporteVariacion1.Value := ((QReportemonto2.Value - QReportemonto1.Value)/QReportemonto1.Value)*100;

  if (QReportemonto2.Value > 0) then
    QReporteVariacion2.Value := ((QReportemonto3.Value - QReportemonto2.Value)/QReportemonto2.Value)*100;

end;

procedure TfrmRepVentaGerenteProveedor.btRefreshClick(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    if Trim(edGerente.Text) <> '' then
    begin
      Screen.Cursor := crHourGlass;
      QReporte.Close;
      QReporte.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QReporte.Parameters.ParamByName('ano').Value := spAno.Value;
      QReporte.Parameters.ParamByName('tri').Value := cbtrimestre.ItemIndex+1;
      QReporte.Parameters.ParamByName('ger').Value := StrToInt(edGerente.Text);
      QReporte.Open;
      Screen.Cursor := crDefault;
      DBGrid1.SetFocus;
    end
    else
      MessageDlg('Debe seleccionar el gerente',mtError,[mbok],0);
  end
  else if PageControl1.ActivePageIndex = 1 then
  begin
    if Trim(edFamilia.Text) <> '' then
    begin
      Screen.Cursor := crHourGlass;
      QFamilia.Close;
      QFamilia.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QFamilia.Parameters.ParamByName('ano').Value := spAno.Value;
      QFamilia.Parameters.ParamByName('tri').Value := cbtrimestre.ItemIndex+1;
      QFamilia.Parameters.ParamByName('fam').Value := StrToInt(edFamilia.Text);
      QFamilia.Open;
      Screen.Cursor := crDefault;
      DBGrid2.SetFocus;
    end
    else
      MessageDlg('Debe seleccionar el la familia',mtError,[mbok],0);
  end
  else if PageControl1.ActivePageIndex = 2 then
  begin
    if Trim(edDepto.Text) <> '' then
    begin
      Screen.Cursor := crHourGlass;
      QDepartamento.Close;
      QDepartamento.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QDepartamento.Parameters.ParamByName('ano').Value := spAno.Value;
      QDepartamento.Parameters.ParamByName('tri').Value := cbtrimestre.ItemIndex+1;
      QDepartamento.Parameters.ParamByName('dep').Value := StrToInt(edDepto.Text);
      QDepartamento.Open;
      Screen.Cursor := crDefault;
      DBGrid3.SetFocus;
    end
    else
      MessageDlg('Debe seleccionar el el departamento',mtError,[mbok],0);
  end
end;

procedure TfrmRepVentaGerenteProveedor.btGerenteClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select ger_nombre, ger_codigo');
  Search.Query.add('from gerentes');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ger_Codigo';
  Search.Title := 'Gerentes';
  if Search.execute then
  begin
    edGerente.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ger_nombre from gerentes');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ger_Codigo = :ger');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ger').Value := strtoint(trim(edGerente.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('PREVENTA NO EXISTE',mterror,[mbok],0)
    else
      tgerente.text := dm.Query1.fieldbyname('ger_nombre').asstring;
    edGerente.setfocus;
  end;
end;

procedure TfrmRepVentaGerenteProveedor.cbtrimestreChange(Sender: TObject);
begin
  case cbtrimestre.ItemIndex of
  0 : begin
        DBGrid1.Columns[1].Title.Caption := 'Enero';
        DBGrid1.Columns[2].Title.Caption := 'Febrero';
        DBGrid1.Columns[4].Title.Caption := 'Marzo';

        DBGrid2.Columns[1].Title.Caption := 'Enero';
        DBGrid2.Columns[2].Title.Caption := 'Febrero';
        DBGrid2.Columns[4].Title.Caption := 'Marzo';

        DBGrid3.Columns[1].Title.Caption := 'Enero';
        DBGrid3.Columns[2].Title.Caption := 'Febrero';
        DBGrid3.Columns[4].Title.Caption := 'Marzo';
      end;
  1 : begin
        DBGrid1.Columns[1].Title.Caption := 'Abril';
        DBGrid1.Columns[2].Title.Caption := 'Mayo';
        DBGrid1.Columns[4].Title.Caption := 'Junio';

        DBGrid2.Columns[1].Title.Caption := 'Abril';
        DBGrid2.Columns[2].Title.Caption := 'Mayo';
        DBGrid2.Columns[4].Title.Caption := 'Junio';

        DBGrid3.Columns[1].Title.Caption := 'Abril';
        DBGrid3.Columns[2].Title.Caption := 'Mayo';
        DBGrid3.Columns[4].Title.Caption := 'Junio';
      end;
  2 : begin
        DBGrid1.Columns[1].Title.Caption := 'Julio';
        DBGrid1.Columns[2].Title.Caption := 'Agosto';
        DBGrid1.Columns[4].Title.Caption := 'Septiembre';

        DBGrid2.Columns[1].Title.Caption := 'Julio';
        DBGrid2.Columns[2].Title.Caption := 'Agosto';
        DBGrid2.Columns[4].Title.Caption := 'Septiembre';

        DBGrid3.Columns[1].Title.Caption := 'Julio';
        DBGrid3.Columns[2].Title.Caption := 'Agosto';
        DBGrid3.Columns[4].Title.Caption := 'Septiembre';
      end;
  3 : begin
        DBGrid1.Columns[1].Title.Caption := 'Octubre';
        DBGrid1.Columns[2].Title.Caption := 'Noviembre';
        DBGrid1.Columns[4].Title.Caption := 'Diciembre';

        DBGrid2.Columns[1].Title.Caption := 'Octubre';
        DBGrid2.Columns[2].Title.Caption := 'Noviembre';
        DBGrid2.Columns[4].Title.Caption := 'Diciembre';

        DBGrid3.Columns[1].Title.Caption := 'Octubre';
        DBGrid3.Columns[2].Title.Caption := 'Noviembre';
        DBGrid3.Columns[4].Title.Caption := 'Diciembre';
      end;
  end;
end;

procedure TfrmRepVentaGerenteProveedor.FormPaint(Sender: TObject);
begin
  with frmRepVentaGerenteProveedor do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmRepVentaGerenteProveedor.btFamiliaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select fam_nombre, fam_codigo');
  Search.Query.add('from familias');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'fam_codigo';
  Search.Title := 'Listado de Familias';
  if Search.execute then
  begin
    edFamilia.text := search.valuefield;
    edFamilia.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fam_codigo, fam_nombre');
    dm.Query1.sql.add('from familias');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and fam_codigo = :fam');
    dm.Query1.Parameters.parambyname('fam').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    edFamilia.setfocus;
  end;
end;

procedure TfrmRepVentaGerenteProveedor.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmRepVentaGerenteProveedor.edFamiliaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edFamilia.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select fam_codigo, fam_nombre');
      dm.Query1.sql.add('from familias');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fam_codigo = :fam');
      dm.Query1.Parameters.parambyname('fam').Value := strtoint(edFamilia.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    end
    else
      tFamilia.text := '';
  end;
end;

procedure TfrmRepVentaGerenteProveedor.btDeptoClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select dep_nombre, dep_codigo');
  Search.Query.add('from departamentos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Query.add('and dep_tipo = '+QuotedStr('V'));
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
    dm.Query1.sql.add('and dep_tipo = '+QuotedStr('V'));
    dm.Query1.Parameters.parambyname('dep').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    edDepto.setfocus;
  end;
end;

procedure TfrmRepVentaGerenteProveedor.edDeptoChange(Sender: TObject);
begin
  if trim(edDepto.text) = '' then tDepto.text := '';
end;

procedure TfrmRepVentaGerenteProveedor.edDeptoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tDepto.text := dm.Query1.fieldbyname('dep_nombre').asstring;
    end
    else
      tDepto.text := '';
  end;
end;

procedure TfrmRepVentaGerenteProveedor.QFamiliaCalcFields(
  DataSet: TDataSet);
begin
  QFamiliaTotal.Value := QFamiliamonto1.Value + QFamiliamonto2.Value + QFamiliamonto3.Value;
  QFamiliaVariacion1.Value := 0;
  QFamiliaVariacion2.Value := 0;
  if (QFamiliamonto1.Value > 0) then
    QFamiliaVariacion1.Value := ((QFamiliamonto2.Value - QFamiliamonto1.Value)/QFamiliamonto1.Value)*100;

  if (QFamiliamonto2.Value > 0) then
    QFamiliaVariacion2.Value := ((QFamiliamonto3.Value - QFamiliamonto2.Value)/QFamiliamonto2.Value)*100;
end;

procedure TfrmRepVentaGerenteProveedor.QDepartamentoCalcFields(
  DataSet: TDataSet);
begin
  QDepartamentoTotal.Value := QDepartamentomonto1.Value + QDepartamentomonto2.Value + QDepartamentomonto3.Value;
  QDepartamentoVariacion1.Value := 0;
  QDepartamentoVariacion2.Value := 0;
  if (QDepartamentomonto1.Value > 0) then
    QDepartamentoVariacion1.Value := ((QDepartamentomonto2.Value - QDepartamentomonto1.Value)/QDepartamentomonto1.Value)*100;

  if (QDepartamentomonto2.Value > 0) then
    QDepartamentoVariacion2.Value := ((QDepartamentomonto3.Value - QDepartamentomonto2.Value)/QDepartamentomonto2.Value)*100;
end;

procedure TfrmRepVentaGerenteProveedor.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
    frmMain.ExportXLS.Sheets[1].Exported := False;
    frmMain.ExportXLS.Sheets[2].Exported := False;
    frmMain.ExportXLS.Sheets[0].Exported := True;
  end
  else if PageControl1.ActivePageIndex = 1 then
  begin
    frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid2;
    frmMain.ExportXLS.Sheets[1].Exported := False;
    frmMain.ExportXLS.Sheets[2].Exported := False;
    frmMain.ExportXLS.Sheets[0].Exported := True;
  end
  else if PageControl1.ActivePageIndex = 2 then
  begin
    frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid3;
    frmMain.ExportXLS.Sheets[1].Exported := False;
    frmMain.ExportXLS.Sheets[2].Exported := False;
    frmMain.ExportXLS.Sheets[0].Exported := True;
  end;
end;

procedure TfrmRepVentaGerenteProveedor.BitBtn1Click(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  Application.CreateForm(tRepVentaGerenteProveedor, RepVentaGerenteProveedor);
  RepVentaGerenteProveedor.lbAno.Caption := 'Ano: '+spAno.Text;
  RepVentaGerenteProveedor.lbMes.Caption := cbtrimestre.Text;

  case PageControl1.ActivePageIndex of
  0: begin
       RepVentaGerenteProveedor.lbtipo.Caption := tGerente.Text;
       RepVentaGerenteProveedor.QReporte.SQL := QReporte.SQL;

     end;
  1: begin
       RepVentaGerenteProveedor.lbtipo.Caption := tFamilia.Text;
       RepVentaGerenteProveedor.QReporte.SQL := QFamilia.SQL;
     end;
  2: begin
       RepVentaGerenteProveedor.lbtipo.Caption := tDepto.Text;
       RepVentaGerenteProveedor.QReporte.SQL := QDepartamento.SQL;
     end;
  end;

  case cbtrimestre.ItemIndex of
  0 : begin
        RepVentaGerenteProveedor.lbMes1.Caption := 'Enero';
        RepVentaGerenteProveedor.lbMes2.Caption := 'Febrero';
        RepVentaGerenteProveedor.lbMes3.Caption := 'Marzo';
      end;
  1 : begin
        RepVentaGerenteProveedor.lbMes1.Caption := 'Abril';
        RepVentaGerenteProveedor.lbMes2.Caption := 'Mayo';
        RepVentaGerenteProveedor.lbMes3.Caption := 'Junio';
      end;
  2 : begin
        RepVentaGerenteProveedor.lbMes1.Caption := 'Julio';
        RepVentaGerenteProveedor.lbMes2.Caption := 'Agosto';
        RepVentaGerenteProveedor.lbMes3.Caption := 'Septiembre';
      end;
  3 : begin
        RepVentaGerenteProveedor.lbMes1.Caption := 'Octubre';
        RepVentaGerenteProveedor.lbMes2.Caption := 'Noviembre';
        RepVentaGerenteProveedor.lbMes3.Caption := 'Diciembre';
      end;
  end;
       
  
  RepVentaGerenteProveedor.QReporte.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RepVentaGerenteProveedor.QReporte.Parameters.ParamByName('ano').Value := spAno.Value;
  RepVentaGerenteProveedor.QReporte.Parameters.ParamByName('tri').Value := cbtrimestre.ItemIndex+1;
  RepVentaGerenteProveedor.QReporte.Parameters.ParamByName('ger').Value := StrToInt(edGerente.Text);
  RepVentaGerenteProveedor.QReporte.Open;
  RepVentaGerenteProveedor.QRLSUCURSAL.Caption := UpperCase(DBLookupComboBox2.Text);
  Screen.Cursor := crDefault;
  RepVentaGerenteProveedor.PrinterSetup;
  RepVentaGerenteProveedor.Preview;
  RepVentaGerenteProveedor.Destroy; 
end;

end.
