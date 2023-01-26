unit PVENTA164;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DateUtils, Db, 
  QuerySearchDlgADO, DBCtrls, ADODB;

type
  TfrmRepVentaTipoCliente = class(TForm)
    Label1: TLabel;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbGrupo: TRadioGroup;
    btTipo: TSpeedButton;
    Label4: TLabel;
    ttipo: TEdit;
    edTipo: TEdit;
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
    procedure btTipoClick(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
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
  frmRepVentaTipoCliente: TfrmRepVentaTipoCliente;

implementation

uses RVENTA60, SIGMA01, SIGMA00, RVENTA81;

{$R *.dfm}

procedure TfrmRepVentaTipoCliente.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  ejecuto := false;
end;

procedure TfrmRepVentaTipoCliente.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepVentaTipoCliente.FormActivate(Sender: TObject);
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

procedure TfrmRepVentaTipoCliente.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepVentaTipoCliente.btPrintClick(Sender: TObject);
begin
  ejecuto := true;
  Application.CreateForm(TRepVentaTipoCliente, RepVentaTipoCliente);
  RepVentaTipoCliente.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepVentaTipoCliente.QTipo.SQL.Clear;
  RepVentaTipoCliente.QTipo.SQL.Add('SELECT DISTINCT');
  RepVentaTipoCliente.QTipo.SQL.Add('T.TCL_CODIGO, T.TCL_NOMBRE, F.SUC_CODIGO, F.EMP_CODIGO');
  RepVentaTipoCliente.QTipo.SQL.Add('FROM FACTURAS F, TIPOCLIENTES T, CLIENTES C');
  RepVentaTipoCliente.QTipo.SQL.Add('WHERE F.EMP_CODIGO = C.EMP_CODIGO');
  RepVentaTipoCliente.QTipo.SQL.Add('AND F.CLI_CODIGO = C.CLI_CODIGO');
  RepVentaTipoCliente.QTipo.SQL.Add('AND T.EMP_CODIGO = C.EMP_CODIGO');
  RepVentaTipoCliente.QTipo.SQL.Add('AND T.TCL_CODIGO = C.TCL_CODIGO');
  RepVentaTipoCliente.QTipo.SQL.Add('AND F.EMP_CODIGO = :EMP_CODIGO');
  RepVentaTipoCliente.QTipo.SQL.Add('AND F.SUC_CODIGO = :SUC');
  RepVentaTipoCliente.QTipo.SQL.Add('AND F.FAC_STATUS <> '+QuotedStr('ANU'));
  RepVentaTipoCliente.QTipo.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');

  if cbGrupo.ItemIndex = 0 then
     RepVentaTipoCliente.QTipo.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     RepVentaTipoCliente.QTipo.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);
  if Trim(edTipo.Text) <> '' then
     RepVentaTipoCliente.QTipo.SQL.Add('AND C.TCL_CODIGO = '+Trim(edTipo.Text));
  RepVentaTipoCliente.QTipo.SQL.Add('ORDER BY T.TCL_NOMBRE');

  RepVentaTipoCliente.QFacturas.SQL.Clear;
  RepVentaTipoCliente.QFacturas.SQL.Add('SELECT');
  RepVentaTipoCliente.QFacturas.SQL.Add('F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO, F.FAC_NOMBRE,');
  RepVentaTipoCliente.QFacturas.SQL.Add('F.FAC_FECHA, F.FAC_TOTAL');
  RepVentaTipoCliente.QFacturas.SQL.Add('FROM FACTURAS F, CLIENTES C');
  RepVentaTipoCliente.QFacturas.SQL.Add('WHERE F.EMP_CODIGO = C.EMP_CODIGO');
  RepVentaTipoCliente.QFacturas.SQL.Add('AND F.CLI_CODIGO = C.CLI_CODIGO');
  RepVentaTipoCliente.QFacturas.SQL.Add('AND C.TCL_CODIGO = :TCL_CODIGO');
  RepVentaTipoCliente.QFacturas.SQL.Add('AND F.EMP_CODIGO = :EMP_CODIGO');
  RepVentaTipoCliente.QFacturas.SQL.Add('AND F.SUC_CODIGO = :SUC_CODIGO');
  RepVentaTipoCliente.QFacturas.SQL.Add('AND F.FAC_STATUS <> '+QuotedStr('ANU'));
  RepVentaTipoCliente.QFacturas.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');

  if cbGrupo.ItemIndex = 0 then
     RepVentaTipoCliente.QFacturas.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     RepVentaTipoCliente.QFacturas.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);
  if Trim(edTipo.Text) <> '' then
     RepVentaTipoCliente.QFacturas.SQL.Add('AND C.TCL_CODIGO = '+Trim(edTipo.Text));
  RepVentaTipoCliente.QFacturas.SQL.Add('ORDER BY F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO');

  RepVentaTipoCliente.QFacturas.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepVentaTipoCliente.QFacturas.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepVentaTipoCliente.QTipo.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepVentaTipoCliente.QTipo.Parameters.ParamByName('fecha2').DataType := ftDate;

  RepVentaTipoCliente.QFacturas.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepVentaTipoCliente.QFacturas.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RepVentaTipoCliente.QTipo.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepVentaTipoCliente.QTipo.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RepVentaTipoCliente.QTipo.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RepVentaTipoCliente.lbGrupo.Caption := cbGrupo.Items[cbGrupo.ItemIndex];
  RepVentaTipoCliente.QTipo.Open;
  RepVentaTipoCliente.QFacturas.Open;
  RepVentaTipoCliente.QRLSUCURSAL.Caption := UpperCase(DBLookupComboBox2.Text);
  RepVentaTipoCliente.PrinterSetup;
  RepVentaTipoCliente.Preview;
  RepVentaTipoCliente.Destroy;
end;

procedure TfrmRepVentaTipoCliente.btTipoClick(Sender: TObject);
begin
  Search.query.clear;
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Title := 'Tipos de Clientes';
  Search.ResultField := 'tcl_codigo';
  Search.query.add('select tcl_nombre, tcl_codigo');
  Search.query.add('from tipoclientes');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tcl_nombre from tipoclientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tcl_codigo = '+edTipo.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Open;
    tTipo.Text := dm.Query1.FieldByname('tcl_nombre').AsString;
    edTipo.SetFocus;
  end;
end;

procedure TfrmRepVentaTipoCliente.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmRepVentaTipoCliente.edTipoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
      dm.Query1.sql.add('from tiposfactura');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tfa_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE FACTURA NO EXISTE');
        edTipo.setfocus;
      end
      else
        tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    end;
  end;
end;

procedure TfrmRepVentaTipoCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepVentaTipoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
