unit PVENTA87;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, ComCtrls,
  DB, IBCustomDataSet, IBQuery, DateUtils, ADODB,
  QuerySearchDlgADO;

type
  TfrmConsComision = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    btClose: TBitBtn;
    Label6: TLabel;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label12: TLabel;
    btVendedor: TSpeedButton;
    tVendedor: TEdit;
    edVendedor: TEdit;
    Search: TQrySearchDlgADO;
    QFacturas: TADOQuery;
    QFacturasFAC_FORMA: TIBStringField;
    QFacturasTFA_CODIGO: TIntegerField;
    QFacturasFAC_NUMERO: TIntegerField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_STATUS: TIBStringField;
    QFacturasFAC_NOMBRE: TIBStringField;
    dsFacturas: TDataSource;
    QRecibos: TADOQuery;
    QRecibosREC_NUMERO: TIntegerField;
    QRecibosREC_NUMEROMANUAL: TIBStringField;
    QRecibosREC_NOMBRE: TIBStringField;
    QRecibosREC_FECHA: TDateTimeField;
    QRecibosREC_MONTO: TIBBCDField;
    QRecibosREC_STATUS: TIBStringField;
    QRecibosREC_COMISION: TFloatField;
    dsRecibos: TDataSource;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    QDevol: TADOQuery;
    QDevolDEV_FECHA: TDateTimeField;
    QDevolDEV_NUMERO: TIntegerField;
    QDevolDEV_STATUS: TIBStringField;
    QDevolDEV_TOTAL: TFloatField;
    dsDevol: TDataSource;
    cbGrupo: TRadioGroup;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasComision: TFloatField;
    QDevolComision: TFloatField;
    QDevolDEV_NOMBRE: TIBStringField;
    QFacturasSUC_NOMBRE: TStringField;
    QRecibosSUC_NOMBRE: TStringField;
    QDevolSUC_NOMBRE: TStringField;
    QRecibosComision: TFloatField;
    TabSheet4: TTabSheet;
    DBGrid4: TDBGrid;
    QCargos: TADOQuery;
    QCargosBAN_NOMBRE: TIBStringField;
    QCargosCAR_NUMERO: TIntegerField;
    QCargosCAR_FECHA: TDateTimeField;
    QCargosCAR_CONCEPTO1: TIBStringField;
    QCargosCAR_CONCEPTO2: TIBStringField;
    QCargosCAR_MONTO: TFloatField;
    QCargosCAR_STATUS: TIBStringField;
    QCargosCAR_TIPO: TIBStringField;
    QCargosUSU_NOMBRE: TIBStringField;
    QCargosEMP_CODIGO: TIntegerField;
    QCargosBAN_CODIGO: TIntegerField;
    QCargosCAR_ANO: TIntegerField;
    QCargosCAR_MES: TIntegerField;
    QCargosCAR_FORMA: TIBStringField;
    QCargosCAR_ABONO: TFloatField;
    QCargosSUC_CODIGO: TIntegerField;
    QCargosCLI_NOMBRE: TStringField;
    QCargosREC_NUMERO: TIntegerField;
    QCargosVEN_NOMBRE: TStringField;
    dsCargos: TDataSource;
    QCargosCAR_COMISION: TBCDField;
    QFacturasFAC_COMISION: TBCDField;
    QFacturasfac_porccomision: TBCDField;
    QRecibosrec_porccomision: TBCDField;
    QFacturasfac_itbis: TBCDField;
    QDevoldev_comision: TBCDField;
    QDevoldev_porccomision: TBCDField;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    adoFacturaPOS: TADOQuery;
    adoFacturaPOSFAC_NUMERO: TIntegerField;
    adoFacturaPOSFAC_FECHA: TDateTimeField;
    adoFacturaPOSFAC_STATUS: TStringField;
    adoFacturaPOSFAC_NOMBRE: TStringField;
    adoFacturaPOSFAC_COMISION: TBCDField;
    adoFacturaPOSfac_porccomision: TBCDField;
    adoFacturaPOSfac_total: TBCDField;
    adoFacturaPOSitbis: TBCDField;
    dsFacturaPOS: TDataSource;
    btnTickePos: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure edVendedorChange(Sender: TObject);
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btRefreshClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure QFacturasCalcFields(DataSet: TDataSet);
    procedure QDevolCalcFields(DataSet: TDataSet);
    procedure QRecibosCalcFields(DataSet: TDataSet);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure QFacturasfac_porccomisionChange(Sender: TField);
    procedure DBGrid2ColEnter(Sender: TObject);
    procedure DBGrid2Enter(Sender: TObject);
    procedure QRecibosrec_porccomisionChange(Sender: TField);
    procedure QDevoldev_porccomisionChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    TFacturas, TRecibos, TDevol : Double;
    ComVenta, ComCobro : string;
    ejecuto : boolean;
    procedure totalizar;
  end;

var
  frmConsComision: TfrmConsComision;

implementation

uses RVENTA54, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmConsComision.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmConsComision.FormPaint(Sender: TObject);
begin
  with frmConsComision do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmConsComision.FormCreate(Sender: TObject);
begin
  Fecha1.date := date;
  Fecha2.date := date;
  ejecuto := false;
end;

procedure TfrmConsComision.btVendedorClick(Sender: TObject);
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
    dm.Query1.sql.add('select ven_nombre, ven_comision_venta, ven_comision_cobro from vendedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and ven_codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
    dm.Query1.open;
    ComVenta := 'False';
    ComCobro := 'False';
    if dm.Query1.recordcount = 0 then
      messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0)
    else
    begin
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
      if not dm.Query1.fieldbyname('ven_comision_venta').IsNull then
        ComVenta := dm.Query1.fieldbyname('ven_comision_venta').Value;
      if not   dm.Query1.fieldbyname('ven_comision_cobro').IsNull then
        ComCobro := dm.Query1.fieldbyname('ven_comision_cobro').Value;
    end;
    edVendedor.setfocus;
    btRefreshClick(self);
  end;
end;

procedure TfrmConsComision.edVendedorChange(Sender: TObject);
begin
  if trim(edVendedor.text) = '' then tVendedor.text := '';
end;

procedure TfrmConsComision.edVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edVendedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select ven_nombre, ven_comision_venta, ven_comision_cobro from vendedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and ven_codigo = :ven');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('ven').Value := strtoint(trim(edVendedor.text));
      dm.Query1.open;
      ComVenta := 'False';
      ComCobro := 'False';
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('VENDEDOR NO EXISTE',mterror,[mbok],0);
        edVendedor.SetFocus;
      end
      else
      begin
        tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
        if not dm.Query1.fieldbyname('ven_comision_venta').IsNull then
          ComVenta := dm.Query1.fieldbyname('ven_comision_venta').Value;
        if not   dm.Query1.fieldbyname('ven_comision_cobro').IsNull then
          ComCobro := dm.Query1.fieldbyname('ven_comision_cobro').Value;
      end;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmConsComision.btRefreshClick(Sender: TObject);
begin
  if Trim(edVendedor.Text) <> '' then
  begin
    Screen.Cursor := crSQLWait;

   { dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('execute arregla :ven, :fec1, :fec2');
    dm.Query1.Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
    dm.Query1.Parameters.ParamByName('fec1').DataType := ftDate;
    dm.Query1.Parameters.ParamByName('fec2').DataType := ftDate;
    dm.Query1.Parameters.ParamByName('fec1').Value    := Fecha1.Date;
    dm.Query1.Parameters.ParamByName('fec2').Value    := Fecha2.Date;
    dm.Query1.ExecSQL;       }

    QFacturas.Close;
    QFacturas.SQL.Clear;
    QFacturas.SQL.Add('SELECT F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO, F.FAC_FECHA,');
    QFacturas.SQL.Add('F.FAC_STATUS, F.FAC_NOMBRE, S.SUC_NOMBRE, F.FAC_COMISION, ');
    QFacturas.SQL.Add('(f.fac_total-f.fac_itbis) as fac_total, f.fac_itbis, f.fac_porccomision');
    QFacturas.SQL.Add('FROM FACTURAS F, SUCURSALES S');
    QFacturas.SQL.Add('WHERE F.EMP_CODIGO = S.EMP_CODIGO');
    QFacturas.SQL.Add('AND F.SUC_CODIGO = S.SUC_CODIGO');
    QFacturas.SQL.Add('AND F.EMP_CODIGO = :EMP');
    QFacturas.SQL.Add('AND f.VEN_CODIGO = :VEN');
    QFacturas.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
    QFacturas.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
    if cbGrupo.ItemIndex = 0 then
       QFacturas.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
    else if cbGrupo.ItemIndex = 1 then
       QFacturas.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);
    QFacturas.SQL.Add('ORDER BY F.FAC_FECHA');

    QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QFacturas.Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
    QFacturas.Parameters.ParamByName('fecha1').DataType := ftDate;
    QFacturas.Parameters.ParamByName('fecha2').DataType := ftDate;
    QFacturas.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
    QFacturas.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
    QFacturas.Open;

    //----------------------------Vendedor------------------
     With adoFacturaPOS do begin
      Close;
      SQL.Clear;
      SQL.Add('Select Ticket FAC_NUMERO,fecha FAC_FECHA,[status] as FAC_STATUS,');
      SQL.Add('nombre  FAC_NOMBRE,tk_Monto_comision FAC_COMISION,');
      SQL.Add('porciento_Com fac_porccomision, (Total - itbis) fac_total,itbis ');
      SQL.Add('From dbo.Montos_Ticket  ');
      SQL.Add('Where emp_codigo = :EMP  and ven_codigo = :VEN ');
      SQL.Add('  and status <> ''ANU'' ');
      SQL.Add('  and fecha BETWEEN convert(datetime,:FECHA1,105) ');
      SQL.Add('  AND convert(datetime,:FECHA2,105) ');
      SQL.Add('Order by Fecha ');

      Parameters.ParamByName('emp').Value := dm.vp_cia;
      Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
      Parameters.ParamByName('fecha1').DataType := ftDate;
      Parameters.ParamByName('fecha2').DataType := ftDate;
      Parameters.ParamByName('fecha1').Value := Fecha1.Date;
      Parameters.ParamByName('fecha2').Value := Fecha2.Date;
      Open;
     end;

     //----------------------------Vendedor------------------


    QRecibos.Close;
    QRecibos.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QRecibos.Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
    QRecibos.Parameters.ParamByName('fecha1').DataType := ftDate;
    QRecibos.Parameters.ParamByName('fecha2').DataType := ftDate;
    QRecibos.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
    QRecibos.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
    QRecibos.Open;

    QDevol.Close;
    QDevol.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QDevol.Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
    QDevol.Parameters.ParamByName('fecha1').DataType := ftDate;
    QDevol.Parameters.ParamByName('fecha2').DataType := ftDate;
    QDevol.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
    QDevol.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
    QDevol.Open;

    QCargos.Close;
    QCargos.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QCargos.Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
    QCargos.Parameters.ParamByName('fec1').DataType := ftDate;
    QCargos.Parameters.ParamByName('fec2').DataType := ftDate;
    QCargos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
    QCargos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
    QCargos.Open;

    Totalizar;

    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmConsComision.totalizar;
begin
end;

procedure TfrmConsComision.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsComision.BitBtn2Click(Sender: TObject);
begin
  ejecuto := True;
  Application.CreateForm(TRConsComision, RConsComision);
  RConsComision.ComCobro := ComCobro;
  RConsComision.ComVenta := ComVenta;

  RConsComision.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RConsComision.lbVendedor.Caption := tVendedor.Text;
  RConsComision.QVendedor.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RConsComision.QVendedor.Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
  RConsComision.QVendedor.Open;

  if ComVenta = 'True' then
    begin

      if (Sender = btnTickePos)  then
        begin
          With RConsComision.QFacturas do begin
            close;
            sql.clear();
            sql.add('Select ''A'' as FAC_FORMA,0 as TFA_CODIGO,Ticket FAC_NUMERO,fecha FAC_FECHA,[status] as FAC_STATUS,');
            sql.add('nombre  FAC_NOMBRE, tk_Monto_comision FAC_COMISION,');
            sql.add(' porciento_Com fac_porccomision, (Total - itbis) fac_total,itbis ');
            sql.add(' From dbo.Montos_Ticket  Where emp_codigo = :EMP ');
            sql.add('  and ven_codigo = :VEN  and status <> ''ANU'' ' );
            sql.add(' and fecha BETWEEN convert(datetime,:FECHA1,105) AND ');
            sql.add(' convert(datetime,:FECHA2,105)  Order by Fecha');
          end;
        end;

      RConsComision.QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
      RConsComision.QFacturas.Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
      RConsComision.QFacturas.Parameters.ParamByName('fecha1').DataType := ftDate;
      RConsComision.QFacturas.Parameters.ParamByName('fecha2').DataType := ftDate;
      RConsComision.QFacturas.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
      RConsComision.QFacturas.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
      RConsComision.QFacturas.Open;
    end;

  if ComCobro = 'True' then
  begin
    RConsComision.QRecibos.Close;
    RConsComision.QRecibos.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RConsComision.QRecibos.Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
    RConsComision.QRecibos.Parameters.ParamByName('fecha1').DataType := ftDate;
    RConsComision.QRecibos.Parameters.ParamByName('fecha2').DataType := ftDate;
    RConsComision.QRecibos.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
    RConsComision.QRecibos.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
    RConsComision.QRecibos.Open;
  end;

  if ComVenta = 'True' then
  begin
    RConsComision.QDevol.Close;
    RConsComision.QDevol.Parameters.ParamByName('emp').Value := dm.vp_cia;
    RConsComision.QDevol.Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
    RConsComision.QDevol.Parameters.ParamByName('fecha1').DataType := ftDate;
    RConsComision.QDevol.Parameters.ParamByName('fecha2').DataType := ftDate;
    RConsComision.QDevol.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
    RConsComision.QDevol.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
    RConsComision.QDevol.Open;
  end;

  RConsComision.QCargos.Close;
  RConsComision.QCargos.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RConsComision.QCargos.Parameters.ParamByName('ven').Value := StrToInt(Trim(edVendedor.Text));
  RConsComision.QCargos.Parameters.ParamByName('fec1').DataType := ftDate;
  RConsComision.QCargos.Parameters.ParamByName('fec2').DataType := ftDate;
  RConsComision.QCargos.Parameters.ParamByName('fec1').Value := Fecha1.Date;
  RConsComision.QCargos.Parameters.ParamByName('fec2').Value := Fecha2.Date;
  RConsComision.QCargos.Open;


    try

       RConsComision.PrinterSetup;

        RConsComision.PrinterSetup;
        RConsComision.qrdbFac_Forma.Enabled := not (Sender = btnTickePos);
        RConsComision.qrdbTFa_Codigo.Enabled := not (Sender = btnTickePos);
        RConsComision.qrlTipo.Enabled := not (Sender = btnTickePos);
        RConsComision.qrlGrupo.Enabled := not (Sender = btnTickePos);

        if (Sender = btnTickePos)  then  begin
          RConsComision.qrdbFac_Forma.DataSet := nil;
          RConsComision.qrdbTFa_Codigo.DataSet:=nil;

        end;


        RConsComision.Preview;
      finally
        RConsComision.Destroy;
      end;

end;

procedure TfrmConsComision.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsComision.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  if ejecuto = False then
    if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
    (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
       cbGrupo.ItemIndex := 0
    else
       cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmConsComision.QFacturasCalcFields(DataSet: TDataSet);
begin
  if ComVenta = 'True' then
    QFacturasComision.Value := QFacturasFAC_COMISION.Value
  else
    QFacturasComision.Value := 0;
end;

procedure TfrmConsComision.QDevolCalcFields(DataSet: TDataSet);
begin
  if ComVenta = 'True' then
     QDevolComision.Value := QDevoldev_comision.Value
  else
     QDevolComision.Value := 0;
end;

procedure TfrmConsComision.QRecibosCalcFields(DataSet: TDataSet);
begin
  if ComCobro = 'True' then
    QRecibosComision.Value := QRecibosREC_COMISION.Value
  else
    QRecibosComision.Value := 0;
end;

procedure TfrmConsComision.DBGrid1ColEnter(Sender: TObject);
begin
  if DBGrid1.SelectedIndex <> 7 then DBGrid1.SelectedIndex := 7;
end;

procedure TfrmConsComision.DBGrid1Enter(Sender: TObject);
begin
  DBGrid1.SelectedIndex := 7;
end;

procedure TfrmConsComision.QFacturasfac_porccomisionChange(Sender: TField);
begin
  if not QFacturasfac_porccomision.IsNull then
  begin
    QFacturas.Edit;
    QFacturasFAC_COMISION.Value := (QFacturasFAC_TOTAL.Value * QFacturasfac_porccomision.Value)/100;
    QFacturas.Post;
  end;
end;

procedure TfrmConsComision.DBGrid2ColEnter(Sender: TObject);
begin
  if DBGrid2.SelectedIndex <> 6 then DBGrid2.SelectedIndex := 6;
end;

procedure TfrmConsComision.DBGrid2Enter(Sender: TObject);
begin
  DBGrid2.SelectedIndex := 6;
end;

procedure TfrmConsComision.QRecibosrec_porccomisionChange(Sender: TField);
begin
  if not QRecibosrec_porccomision.IsNull then
  begin
    QRecibos.Edit;
    QRecibosREC_COMISION.Value := (QRecibosREC_MONTO.Value * QRecibosrec_porccomision.Value)/100;
    QRecibos.Post;
  end;
end;

procedure TfrmConsComision.QDevoldev_porccomisionChange(Sender: TField);
begin
  if not QDevoldev_porccomision.IsNull then
  begin
    QDevol.Edit;
    QDevoldev_COMISION.Value := (QDevolDEV_TOTAL.Value * QDevoldev_porccomision.Value)/100;
    QDevol.Post;
  end;
end;

end.
