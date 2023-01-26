unit PVENTA86;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, DateUtils, Db,
  QuerySearchDlgADO;

type
  TfrmRepVentaCliente = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Label1: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbGrupo: TRadioGroup;
    Label2: TLabel;
    edCantidad: TEdit;
    CheckBox1: TCheckBox;
    cbtipo: TRadioGroup;
    Label11: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    Search: TQrySearchDlgADO;
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btVendedorClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    ejecuto : boolean;
  end;

var
  frmRepVentaCliente: TfrmRepVentaCliente;

implementation

uses RVENTA52, SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmRepVentaCliente.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  ejecuto := false;
end;

procedure TfrmRepVentaCliente.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepVentaCliente.btPrintClick(Sender: TObject);
begin
  ejecuto := true;
  Application.CreateForm(TRRepVentaCliente, RRepVentaCliente);
  if tVendedor.Text <> '' then
     RRepVentaCliente.lbVendedor.Caption := 'Vendedor: '+tVendedor.Text;

  RRepVentaCliente.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RRepVentaCliente.QClientes.Close;
  RRepVentaCliente.QClientes.SQL.Clear;
  RRepVentaCliente.QClientes.SQL.Add('SELECT');
  if Trim(edCantidad.Text) = '' then CheckBox1.Checked := true;
  if not CheckBox1.Checked then
    RRepVentaCliente.QClientes.SQL.Add('TOP '+Trim(edCantidad.Text));

  RRepVentaCliente.QClientes.SQL.Add('C.CLI_CODIGO, C.CLI_REFERENCIA, C.CLI_NOMBRE,');
  if cbtipo.ItemIndex = 0 then
    RRepVentaCliente.QClientes.SQL.Add('SUM(D.DET_CANTIDAD - D.DET_CANTDEVUELTA)')
  else
  RRepVentaCliente.QClientes.SQL.Add('SUM(f.fac_total)');
  RRepVentaCliente.QClientes.SQL.Add('as TOTAL FROM CLIENTES C, FACTURAS F');
  if cbtipo.ItemIndex = 0 then
  RRepVentaCliente.QClientes.SQL.Add(',DET_FACTURA D');
  RRepVentaCliente.QClientes.SQL.Add('WHERE C.EMP_CODIGO = F.EMP_CODIGO');
  RRepVentaCliente.QClientes.SQL.Add('AND C.CLI_CODIGO = F.CLI_CODIGO');
  if cbtipo.ItemIndex = 0 then begin
  RRepVentaCliente.QClientes.SQL.Add('AND F.EMP_CODIGO = D.EMP_CODIGO');
  RRepVentaCliente.QClientes.SQL.Add('AND F.FAC_FORMA = D.FAC_FORMA');
  RRepVentaCliente.QClientes.SQL.Add('AND F.TFA_CODIGO = D.TFA_CODIGO');
  RRepVentaCliente.QClientes.SQL.Add('AND F.FAC_NUMERO = D.FAC_NUMERO');
  RRepVentaCliente.QClientes.SQL.Add('AND F.SUC_CODIGO = D.SUC_CODIGO');
  RRepVentaCliente.QClientes.SQL.Add('AND D.DET_CANTIDAD IS NOT NULL');
  RRepVentaCliente.QClientes.SQL.Add('AND D.DET_CANTIDAD > D.DET_CANTDEVUELTA');
  end;
  RRepVentaCliente.QClientes.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
  RRepVentaCliente.QClientes.SQL.Add('AND F.EMP_CODIGO = :EMP_CODIGO');
  RRepVentaCliente.QClientes.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
  if cbGrupo.ItemIndex = 0 then
     RRepVentaCliente.QClientes.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     RRepVentaCliente.QClientes.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);

  if edVendedor.Text <> '' then
     RRepVentaCliente.QClientes.SQL.Add('and f.ven_codigo = '+edVendedor.Text) else
     RRepVentaCliente.lbVendedor.Visible := False;

  RRepVentaCliente.QClientes.SQL.Add('GROUP BY C.CLI_CODIGO, C.CLI_REFERENCIA, C.CLI_NOMBRE');
  RRepVentaCliente.QClientes.SQL.Add('ORDER BY 4 DESC');
  RRepVentaCliente.QClientes.Parameters.ParamByName('fecha1').DataType := ftDate;
  RRepVentaCliente.QClientes.Parameters.ParamByName('fecha2').DataType := ftDate;
  RRepVentaCliente.QClientes.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RRepVentaCliente.QClientes.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RRepVentaCliente.lbGrupo.Caption := cbGrupo.Items[cbGrupo.ItemIndex];
  RRepVentaCliente.QClientes.Open;
  RRepVentaCliente.QClientes2.Close;
  RRepVentaCliente.QClientes2.Parameters.ParamByName('fecha1').DataType := ftDate;
  RRepVentaCliente.QClientes2.Parameters.ParamByName('fecha2').DataType := ftDate;
  RRepVentaCliente.QClientes2.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RRepVentaCliente.QClientes2.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RRepVentaCliente.QClientes2.Open;
  RRepVentaCliente.PrinterSetup;
  RRepVentaCliente.vl_total := 0;
  RRepVentaCliente.Preview;
  RRepVentaCliente.Destroy;
end;

procedure TfrmRepVentaCliente.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmRepVentaCliente.FormActivate(Sender: TObject);
begin
  if ejecuto = False then
    if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
    (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
       cbGrupo.ItemIndex := 0
    else
       cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmRepVentaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepVentaCliente.btVendedorClick(Sender: TObject);
begin
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    edVendedor.text := Search.ValueField;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    edVendedor.setfocus;
  end;
end;

procedure TfrmRepVentaCliente.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmRepVentaCliente.edVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edVendedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ven_nombre from vendedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ven_codigo = :ven');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0);
        edVendedor.SetFocus;
      end
      else
        tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
    end;
  end;
end;

end.
