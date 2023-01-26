unit CONT32;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids,
  DB, IBCustomDataSet, IBQuery, IBUpdateSQL, DateUtils,
  ADODB, QuerySearchDlgADO, ComCtrls, DBGridObj;

type
  TfrmSolicitud = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    btBanco: TSpeedButton;
    tBanco: TEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    btBenef: TBitBtn;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lbCR: TStaticText;
    lbDB: TStaticText;
    lbBAL: TStaticText;
    btGrabar: TBitBtn;
    btLimpiar: TBitBtn;
    btSalir: TBitBtn;
    rbTipo: TDBRadioGroup;
    Search: TQrySearchDlgADO;
    QSolicitud: TADOQuery;
    dsSolicitud: TDataSource;
    QDetalle: TADOQuery;
    dsDetalle: TDataSource;
    QFacturas: TADOQuery;
    dsFacturas: TDataSource;
    Query1: TADOQuery;
    QSolicitudBAN_CODIGO: TIntegerField;
    QSolicitudCLI_CODIGO: TIntegerField;
    QSolicitudEMP_CODIGO: TIntegerField;
    QSolicitudEMP_NUMERO: TIntegerField;
    QSolicitudSOL_ANO: TIntegerField;
    QSolicitudSOL_BENEF: TIBStringField;
    QSolicitudSOL_CONCEPTO1: TIBStringField;
    QSolicitudSOL_CONCEPTO2: TIBStringField;
    QSolicitudSOL_DESCUENTO: TFloatField;
    QSolicitudSOL_FECANULO: TDateTimeField;
    QSolicitudSOL_FECHA: TDateTimeField;
    QSolicitudSOL_MES: TIntegerField;
    QSolicitudSOL_MONTO: TFloatField;
    QSolicitudSOL_MOTIVOANULO: TIBStringField;
    QSolicitudSOL_NUMERO: TIntegerField;
    QSolicitudSOL_STATUS: TIBStringField;
    QSolicitudSOL_TIPO: TIBStringField;
    QSolicitudSUP_CODIGO: TIntegerField;
    QSolicitudUSU_CODIGO: TIntegerField;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleSOL_NUMERO: TIntegerField;
    QFacturasEMP_CODIGO: TIntegerField;
    QFacturasFAC_ABONO: TFloatField;
    QFacturasFAC_DESCUENTO: TFloatField;
    QFacturasFAC_FECHA: TDateTimeField;
    QFacturasFAC_NUMERO: TIBStringField;
    QFacturasFAC_PAGO: TFloatField;
    QFacturasFAC_SALDO: TFloatField;
    QFacturasFAC_SECUENCIA: TIntegerField;
    QFacturasFAC_TOTAL: TFloatField;
    QFacturasFAC_VENCE: TDateTimeField;
    QFacturasSOL_NUMERO: TIntegerField;
    QFacturasSUP_CODIGO: TIntegerField;
    QSolicitudSOL_CHEQUE: TIntegerField;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    QSolicitudSOL_GENERACHEQUE: TIBStringField;
    QSolicitudCEN_CODIGO: TIntegerField;
    QSolicitudSOL_CONCEPTO3: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lbFacturas: TStaticText;
    GriFacturas: TDBGrid;
    QCentro: TADOQuery;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    dsCentro: TDataSource;
    QCentroemp_codigo: TIntegerField;
    QCentrosol_numero: TIntegerField;
    TabSheet4: TTabSheet;
    QRetenciones: TADOQuery;
    QRetencionesemp_codigo: TIntegerField;
    QRetencionessol_numero: TIntegerField;
    QRetencionesret_codigo: TIntegerField;
    QRetencionesdet_nombre: TStringField;
    QRetencionesdet_porciento: TBCDField;
    QRetencionesdet_monto: TBCDField;
    Panel3: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    dsRet: TDataSource;
    QRetencionesdet_secuencia: TIntegerField;
    QRetencionesdet_cuenta: TStringField;
    QSolicitudSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QFacturasSUC_CODIGO: TIntegerField;
    QCentrosuc_codigo: TIntegerField;
    QRetencionessuc_codigo: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    SpeedButton7: TSpeedButton;
    QFacturasFAC_ITBIS: TBCDField;
    QSolicitudSOL_RETENCION: TBCDField;
    QFacturasFAC_RETENCION: TBCDField;
    Label6: TLabel;
    DBEdit9: TDBEdit;
    GridRet: TDBGrid;
    QSolicitudSOL_MONTO_BANCO: TBCDField;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    btfindcuenta: TSpeedButton;
    btdelete: TSpeedButton;
    QSolicitudSOL_TASA: TBCDField;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    edCodigo: TEdit;
    QCentrocen_referencia: TStringField;
    QCentrosub_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    GridCuentas: TDBGridObj;
    spcentros: TSpeedButton;
    QCentrocat_cuenta: TStringField;
    lbLocSuc: TLabel;
    dbedtcont_numeroSucursal: TDBEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    QSolicitudcont_numeroSucursal: TStringField;
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btBancoClick(Sender: TObject);
    procedure QSolicitudNewRecord(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure rbTipoClick(Sender: TObject);
    procedure btBenefClick(Sender: TObject);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure btLimpiarClick(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure GriFacturasEnter(Sender: TObject);
    procedure GriFacturasColEnter(Sender: TObject);
    procedure GriFacturasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QFacturasFAC_DESCUENTOChange(Sender: TField);
    procedure QFacturasAfterPost(DataSet: TDataSet);
    procedure QFacturasBeforeDelete(DataSet: TDataSet);
    procedure btGrabarClick(Sender: TObject);
    procedure QSolicitudAfterPost(DataSet: TDataSet);
    procedure QSolicitudBAN_CODIGOChange(Sender: TField);
    procedure QSolicitudBeforePost(DataSet: TDataSet);
    procedure QSolicitudAfterInsert(DataSet: TDataSet);
    procedure QSolicitudAfterEdit(DataSet: TDataSet);
    procedure QSolicitudSOL_MONTOChange(Sender: TField);
    procedure btBuscaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QSolicitudSOL_NUMEROChange(Sender: TField);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure QCentroNewRecord(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure QRetencionesret_codigoChange(Sender: TField);
    procedure QRetencionesBeforePost(DataSet: TDataSet);
    procedure QRetencionesNewRecord(DataSet: TDataSet);
    procedure GridRetColEnter(Sender: TObject);
    procedure GridRetEnter(Sender: TObject);
    procedure GridRetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRetencionesdet_montoChange(Sender: TField);
    procedure QSolicitudSUC_CODIGOChange(Sender: TField);
    procedure SpeedButton7Click(Sender: TObject);
    procedure QRetencionesAfterPost(DataSet: TDataSet);
    procedure QFacturasFAC_RETENCIONChange(Sender: TField);
    procedure QRetencionesAfterDelete(DataSet: TDataSet);
    procedure QSolicitudSOL_RETENCIONChange(Sender: TField);
    procedure QSolicitudSOL_DESCUENTOChange(Sender: TField);
    procedure btdeleteClick(Sender: TObject);
    procedure btfindcuentaClick(Sender: TObject);
    procedure QSolicitudSOL_MONTO_BANCOChange(Sender: TField);
    procedure QFacturasAfterInsert(DataSet: TDataSet);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spcentrosClick(Sender: TObject);
    procedure GridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure dbedtcont_numeroSucursalChange(Sender: TObject);
    procedure dbedtcont_numeroSucursalKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
  private
    { Private declarations }
    BAN_CHEQUE : Integer;
  public
    { Public declarations }
    CtaBanco, CtaBenef, TipoSolicitud : String;
    Debitos, Creditos, TotalPagoFacturas : Double;
    Totaliza, Elimina, PuedeInsertar : Boolean;
    Accion : Integer;
    Procedure Totalizar;
    Procedure TotalizaFac;
    Procedure TotalizaRet;
    Procedure Beneficiario(Tipo: string);
  end;

var
  frmSolicitud: TfrmSolicitud;

implementation

uses RCONT16, SIGMA00, SIGMA01, SIGMA08;

{$R *.dfm}

procedure TfrmSolicitud.FormPaint(Sender: TObject);
begin
  with frmSolicitud do
  begin
    Top  := 2;
    Left := 2;
    //width := frmMain.Width - 100;
    //height := frmMain.Height - 120;
  end;
end;

procedure TfrmSolicitud.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
  GridCuentas.Height := 220;
end;

procedure TfrmSolicitud.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then btSalirClick(Self);
  if key = vk_f3  then btLimpiarClick(Self);
  if key = vk_f2  then btGrabarClick(self);
end;

procedure TfrmSolicitud.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSolicitud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmSolicitud.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.Query.Add('and ban_tarjeta = '+QuotedStr('False'));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'ban_codigo';
  Search.Title := 'Bancos';
  if Search.execute then
  begin
    QSolicitudBAN_CODIGO.Value := StrToInt(Search.ValueField);
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmSolicitud.QSolicitudNewRecord(DataSet: TDataSet);
begin

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QDetalle.Parameters.ParamByName('num').Value := -1;
  QDetalle.Parameters.ParamByName('suc').Value := -1;
  QDetalle.Open;

  QCentro.Close;
  QCentro.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QCentro.Parameters.ParamByName('num').Value := -1;
  QCentro.Parameters.ParamByName('suc').Value := -1;
  QCentro.Open;

  QRetenciones.Close;
  QRetenciones.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QRetenciones.Parameters.ParamByName('num').Value := -1;
  QRetenciones.Parameters.ParamByName('suc').Value := -1;
  QRetenciones.Open;

  QFacturas.Close;
  QFacturas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QFacturas.Parameters.ParamByName('num').Value := -1;
  QFacturas.Parameters.ParamByName('suc').Value := -1;
  QFacturas.Open;

  PageControl1.ActivePageIndex := 0;

  Totaliza := True;
  lbCR.Caption := '0.00';
  lbDB.Caption := '0.00';
  lbBAL.Caption := '0.00';
  edCodigo.Text := '';

  QSolicitudSUC_CODIGO.Value := QSucursalsuc_codigo.Value;

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(max(sol_numero),0) as maximo');
  dm.Query1.SQL.Add('from solicitud');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
  dm.Query1.Open;
  QSolicitudSOL_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  
  TotalPagoFacturas := 0;
  if TipoSolicitud = '' then TipoSolicitud := 'GAS';
  QSolicitudSOL_GENERACHEQUE.Value := 'N';
  QSolicitudSOL_FECHA.Value  := Date;
  QSolicitudSOL_STATUS.Value := 'EMI';
  QSolicitudSOL_TIPO.Value   := TipoSolicitud;
  QSolicitudSOL_DESCUENTO.Value := 0;
  QSolicitudSOL_RETENCION.Value := 0;
  QsolicitudSOL_MONTO_BANCO.Value := 0;
  QSolicitudEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
  QSolicitudUSU_CODIGO.Value := dm.Usuario;
  rbTipoClick(Self);
end;

procedure TfrmSolicitud.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleSOL_NUMERO.Value := QSolicitudSOL_NUMERO.Value;
  QDetalleEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
  QDetalleSUC_CODIGO.Value := QSolicitudSUC_CODIGO.Value;

end;

procedure TfrmSolicitud.FormActivate(Sender: TObject);
begin
  if not QSolicitud.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    //QSolicitud.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    QSolicitud.Parameters.ParamByName('numero').Value := -1;
    QSolicitud.Parameters.ParamByName('suc').Value := -1;
    QSolicitud.Open;
    QSolicitud.Insert;
  end;
end;

procedure TfrmSolicitud.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 2 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmSolicitud.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 1;
end;

procedure TfrmSolicitud.GridCuentasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 3 then
  begin
    if key = 68 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 4;
    end
    else if key = 67 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 4;
    end;
  end;
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 4 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 1;
       QDetalle.Append;
     end;

  if key = vk_f4 then btfindcuentaClick(Self);
  if key = vk_f6 then btdeleteClick(Self);
end;

procedure TfrmSolicitud.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cta').Value  := QDetalleCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA CUENTA NO EXISTE',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.FieldByName('cat_movimiento').AsString = 'N' then
    begin
      MessageDlg('ESTA CUENTA NO ACEPTA MOVIMIENTO',mtError,[mbok],0);
      QDetalleCAT_CUENTA.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QDetalle.Edit;
      QDetalleCAT_NOMBRE.Value := dm.Query1.FieldByName('cat_nombre').AsString;
      QDetalleDET_ORIGEN.VALUE := dm.Query1.FieldByName('cat_origen').AsString;
      GridCuentas.SelectedIndex := 3;
    end;
  end;
end;

procedure TfrmSolicitud.rbTipoClick(Sender: TObject);
begin
  DBEdit8.Enabled := rbTipo.ItemIndex = 3;
  btBenef.Enabled := rbTipo.ItemIndex <= 3;
  edCodigo.Enabled := rbTipo.ItemIndex < 3;
  //DBEdit4.Enabled := rbTipo.ItemIndex > 0;

  {GriFacturas.Visible := rbTipo.ItemIndex = 0;
  lbFacturas.Visible  := rbTipo.ItemIndex = 0;
  if rbTipo.ItemIndex > 0 then
    GridCuentas.Height := 180
  else
    GridCuentas.Height := 92;}
end;

procedure TfrmSolicitud.btBenefClick(Sender: TObject);
var
  a : integer;
begin
  case rbTipo.ItemIndex of
  0 : begin
        Search.Query.Clear;
        Search.AliasFields.Clear;
        Search.Query.Add('select sup_nombre, sup_codigo');
        Search.Query.Add('from proveedores');
        Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
        Search.Query.Add('and sup_balance > 0');
        Search.AliasFields.Add('Nombre');
        Search.AliasFields.Add('Código');
        Search.ResultField := 'sup_codigo';
        Search.Title := 'Proveedores';
        if Search.execute then
        begin
          QSolicitudSUP_CODIGO.Value := StrToInt(Search.ValueField);
          edCodigo.Text := Search.ValueField;
          Beneficiario('SUP');
        end;
      end;
  1 : begin
        Search.Query.Clear;
        Search.AliasFields.Clear;
        Search.Query.Add('select cli_nombre, cli_codigo');
        Search.Query.Add('from clientes');
        Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
        Search.AliasFields.Add('Nombre');
        Search.AliasFields.Add('Código');
        Search.ResultField := 'cli_codigo';
        Search.Title := 'Clientes';
        if Search.execute then
        begin
          QSolicitudCLI_CODIGO.Value := StrToInt(Search.ValueField);
          edCodigo.Text := Search.ValueField;
          Beneficiario('CLI');
        end;
      end;
  2 : begin
        Search.Query.Clear;
        Search.AliasFields.Clear;
        Search.Query.Add('select emp_nombres, emp_apellido_paterno, emp_cedula, emp_numero');
        Search.Query.Add('from empleados');
        Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
        Search.Query.Add('and emp_status = '+QuotedStr('ACT'));
        Search.AliasFields.Add('Nombre');
        Search.AliasFields.Add('Apellido');
        Search.AliasFields.Add('Cédula');
        Search.AliasFields.Add('Código');
        Search.ResultField := 'emp_numero';
        Search.Title := 'Empleados';
        if Search.execute then
        begin
          QSolicitudEMP_NUMERO.Value := StrToInt(Search.ValueField);
          edCodigo.Text := Search.ValueField;
          Beneficiario('EMP');
        end;
      end;

  3 : begin
        Search.Query.Clear;
        Search.AliasFields.Clear;
        Search.Query.Add('select sup_nombre, sup_codigo');
        Search.Query.Add('from proveedores');
        Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
        Search.Query.Add('and sup_balance = 0');
        Search.AliasFields.Add('Nombre');
        Search.AliasFields.Add('Código');
        Search.ResultField := 'sup_codigo';
        Search.Title := 'Proveedores';
        if Search.execute then
        begin
          QSolicitudSUP_CODIGO.Value := StrToInt(Search.ValueField);
          edCodigo.Text := Search.ValueField;
          Beneficiario('SUP');
        end;
      end;

  end;
end;

procedure TfrmSolicitud.Totalizar;
var
  Punt : TBookMark;
begin
  if Totaliza = True then
  Begin
    Debitos  := 0;
    Creditos := 0;
    Punt := QDetalle.GetBookmark;
    QDetalle.DisableControls;
    QDetalle.First;
    while not QDetalle.Eof do
    begin
      if QDetalleDET_ORIGEN.Value = 'Debito' then
        Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]))
      else
        Creditos := Creditos + StrToFloat(Format('%10.2f',[QDetalleDET_MONTO.Value]));
      QDetalle.Next;
    end;
    QDetalle.GotoBookmark(Punt);
    QDetalle.EnableControls;
    lbCR.Caption  := Format('%n',[Creditos]);
    lbDB.Caption  := Format('%n',[Debitos]);
    lbBAL.Caption := Format('%n',[Debitos-Creditos]);
  end;
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmSolicitud.QDetalleAfterPost(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmSolicitud.QDetalleAfterDelete(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmSolicitud.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA LIMPIAR LA PANTALLA Y EMPEZAR UNA SOLICITUD NUEVA?',
  mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QSolicitud.Close;
    QSolicitud.Parameters.ParamByName('numero').Value := -1;
    QSolicitud.Parameters.ParamByName('suc').Value := -1;
    QSolicitud.Open;
    QSolicitud.Insert;
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmSolicitud.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
end;

procedure TfrmSolicitud.GriFacturasEnter(Sender: TObject);
begin
  GriFacturas.SelectedIndex := 6;
end;

procedure TfrmSolicitud.GriFacturasColEnter(Sender: TObject);
begin
  if GriFacturas.SelectedIndex < 7 then
    GriFacturas.SelectedIndex := 7;
end;

procedure TfrmSolicitud.GriFacturasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if GriFacturas.SelectedIndex < 7 then
       GriFacturas.SelectedIndex := GriFacturas.SelectedIndex + 1
    else
    begin
      GriFacturas.SelectedIndex := 7;
      QFacturas.Edit;
      QFacturas.Post;
      QFacturas.Next;
    end;
  end;
  if key = vk_f8 then
  begin
    QFacturas.Edit;
    QFacturasFAC_PAGO.Value      := QFacturasFAC_SALDO.Value;
    QFacturasFAC_DESCUENTO.Value := 0;
  end;
end;

procedure TfrmSolicitud.QFacturasFAC_DESCUENTOChange(Sender: TField);
begin
  if Totaliza = True then
  Begin
    QFacturasFAC_PAGO.Value := StrToFloat(Format('%10.2f',[QFacturasFAC_SALDO.Value]))-
                               StrToFloat(Format('%10.2f',[QFacturasFAC_DESCUENTO.Value]));
    QFacturas.Post;
  End;
end;

procedure TfrmSolicitud.TotalizaFac;
var
  Total, Desc, Ret : Double;
  punt : TBookmark;
  vConcepto1, vConcepto2, vConcepto3 : String;
begin
  if Totaliza = True then
  Begin
    Total := 0;
    Desc  := 0;
    Ret   := 0;
    TotalPagoFacturas := 0;
    punt := QFacturas.GetBookmark;
    QFacturas.DisableControls;
    QFacturas.First;
    vConcepto1 := 'Pago Factura: ';
    vConcepto2 := '';
    vConcepto3 := '';
    while not QFacturas.Eof do
    Begin
      Total := Total + QFacturasFAC_PAGO.Value;
      Desc  := Desc  + QFacturasFAC_DESCUENTO.Value;
      Ret   := Ret   + QfacturasFAC_RETENCION.Value;
      TotalPagoFacturas := TotalPagoFacturas + QFacturasFAC_PAGO.Value;
      if (QFacturasFAC_PAGO.Value > 0) then
      begin
        if ((length(vConcepto1)+length(QFacturasFAC_NUMERO.AsString+',')) < 80) then
          vConcepto1 := vConcepto1 + QFacturasFAC_NUMERO.AsString+','
        else
        begin
          if ((length(vConcepto2)+length(QFacturasFAC_NUMERO.AsString+',')) < 80) then
            vConcepto2 := vConcepto2 + QFacturasFAC_NUMERO.AsString+','
          else
          begin
            if ((length(vConcepto3)+length(QFacturasFAC_NUMERO.AsString+',')) < 80) then
            vConcepto3 := vConcepto3 + QFacturasFAC_NUMERO.AsString+',';
          end;
        end;
      end;

      QFacturas.Next;
    end;
    QFacturas.GotoBookmark(punt);
    QFacturas.EnableControls;
    QSolicitudSOL_MONTO.Value := (Total+Ret+Desc)/QSolicitudsol_tasa.Value;
    QSolicitudSOL_DESCUENTO.Value := Desc/QSolicitudsol_tasa.Value;
    QSolicitudSOL_RETENCION.Value := Ret;
    QSolicitudsol_concepto1.Value := vConcepto1;
    QSolicitudsol_concepto2.Value := vConcepto2;
    QSolicitudsol_concepto3.Value := vConcepto3;
    if QDetalle.Locate('cat_cuenta',CtaBenef,[]) then
    Begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := Total + QSolicitudSOL_RETENCION.Value+QSolicitudSOL_DESCUENTO.Value;
      QDetalle.Post;
    End;
  End;
end;

procedure TfrmSolicitud.QFacturasAfterPost(DataSet: TDataSet);
begin
  TotalizaFac;
end;

procedure TfrmSolicitud.QFacturasBeforeDelete(DataSet: TDataSet);
begin
  if elimina = false then Abort;
end;

procedure TfrmSolicitud.btGrabarClick(Sender: TObject);
var
  a : integer;
begin
  if lbBAL.Caption <> '0.00' then
  begin
    MessageDlg('LAS CUENTAS CONTABLES DE ESTA SOLICITUD'+#13+
               'NO ESTAN CUADRADAS',mtError,[mbok],0);

    PageControl1.ActivePageIndex := 0;
    GridCuentas.SetFocus;
  end
  else if Trim(DBEdit6.Text) = '' then
  begin
    MessageDlg('DEBE ESPECIFICAR LA PRIMERA LINEA DEL CONCEPTO',mtError,[mbok],0);
    DBEdit6.SetFocus;
  end
  else if Trim(DBEdit8.Text) = '' then
  begin
    MessageDlg('DEBE ESPECIFICAR EL BENEFICIARIO',mtError,[mbok],0);
    DBEdit8.SetFocus;
  end
  else if QSolicitudSOL_MONTO_BANCO.Value <= 0 then
  begin
    MessageDlg('EL MONTO DEBE SER MAYOR QUE CERO (0)',mtError,[mbok],0);
    DBEdit4.SetFocus;
  end
  else if (QSolicitudBAN_CODIGO.Value = 0) or (QSolicitudBAN_CODIGO.isnull) then
  begin
    MessageDlg('DEBE ESPECIFICAR EL NUMERO BANCO',mtError,[mbok],0);
    DBEdit1.SetFocus;
  end
  else if (rbtipo.ItemIndex = 0) and (TotalPagoFacturas = 0) then
  begin
    MessageDlg('DEBE ESPECIFICAR LAS FACTURAS QUE SE VAN A PAGAR',mtError,[mbok],0);
    PageControl1.ActivePageIndex := 1;
  end
  else if Trim(tBanco.Text) = '' then
  begin
    MessageDlg('ESTE BANCO NO EXISTE',mtError,[mbok],0);
    DBEdit1.SetFocus;
  end
  else if MessageDlg('TODOS LOS DATOS ESTAN CORRECTOS?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Totaliza := False;
    //Otro
    QSolicitud.Post;

    QDetalle.DisableControls;
    QDetalle.First;
    a := 0;
    while not QDetalle.eof do
    begin
      a := a + 1;
      QDetalle.Edit;
      QDetalleSOL_NUMERO.Value := QSolicitudSOL_NUMERO.Value;
      QDetalleDET_SECUENCIA.Value := a;
      QDetalleEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
      QDetalleSUC_CODIGO.Value := QSolicitudSUC_CODIGO.Value;
      QDetalle.Post;
      QDetalle.Next;
    end;
    QDetalle.First;
    QDetalle.EnableControls;
    QDetalle.UpdateBatch;

    //Centros de costo
    QCentro.DisableControls;
    QCentro.First;
    a := 0;
    while not QCentro.eof do
    begin
      a := a + 1;
      QCentro.Edit;
      QCentroSOL_NUMERO.Value := QSolicitudSOL_NUMERO.Value;
      QCentroDET_SECUENCIA.Value := a;
      QCentroEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
      QCentrosuc_codigo.Value := QSolicitudSUC_CODIGO.Value;
      QCentro.Post;
      QCentro.Next;
    end;
    QCentro.First;
    QCentro.EnableControls;
    QCentro.UpdateBatch;

    //Retenciones
    QRetenciones.DisableControls;
    QRetenciones.First;
    a := 0;
    while not QRetenciones.eof do
    begin
      a := a + 1;
      QRetenciones.Edit;
      QRetencionessol_numero.Value := QSolicitudSOL_NUMERO.Value;
      QRetencionesdet_secuencia.Value := a;
      QRetencionesemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
      QRetencionessuc_codigo.Value := QSolicitudSUC_CODIGO.Value;
      QRetenciones.Post;
      QRetenciones.Next;
    end;
    QRetenciones.First;
    QRetenciones.EnableControls;
    QRetenciones.UpdateBatch;

    //Cuentas por Pagar
    if rbTipo.ItemIndex = 0 then
    begin
      QFacturas.DisableControls;
      QFacturas.First;
      a := 0;
      while not QFacturas.Eof do
      begin
        a := a + 1;
        QFacturas.Edit;
        QFacturasSOL_NUMERO.Value := QSolicitudSOL_NUMERO.Value;
        QFacturasEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
        if QFacturasFAC_DESCUENTO.IsNull then QFacturasFAC_DESCUENTO.Value := 0;
        QFacturasFAC_SECUENCIA.Value := a;
        QFacturasSUC_CODIGO.Value := QSolicitudSUC_CODIGO.Value;
        QFacturas.Post;
        QFacturas.Next;
      end;
      QFacturas.First;
      QFacturas.EnableControls;
      QFacturas.UpdateBatch;

      dm.Query1.Close;
      dm.Query1.SQL.clear;
      dm.Query1.SQL.Add('delete from DET_SOLFACTURAS');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sol_numero = :sol');
      dm.Query1.SQL.Add('and (fac_pago is null or fac_pago = 0)');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('sol').Value := QSolicitudSOL_NUMERO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
      dm.Query1.ExecSQL;
    end;

    IF NOT BAN_CHEQUE = 0 THEN BEGIN
      dm.Query1.Close;
      dm.Query1.SQL.clear;
      dm.Query1.SQL.Add('UPDATE BANCOS SET BAN_CHEQUE = :num');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :ban');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('emp').DataType := ftInteger;
      dm.Query1.Parameters.ParamByName('suc').DataType := ftInteger;
      dm.Query1.Parameters.ParamByName('ban').DataType := ftInteger;
      dm.Query1.Parameters.ParamByName('num').DataType := ftInteger;
      dm.Query1.Parameters.ParamByName('emp').Value := QSolicitudEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('ban').Value := QSolicitudBAN_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('num').Value := BAN_CHEQUE+1;
      dm.Query1.ExecSQL;
    end;

    if MessageDlg('DESEA IMPRIMIR ESTA SOLICITUD?',mtConfirmation,[mbyes,mbno],0) = mryes then
    begin
      Application.CreateForm(tRepSolicitud, RepSolicitud);
      RepSolicitud.QSolicitud.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
      RepSolicitud.QSolicitud.Parameters.ParamByName('sol1').Value := QSolicitudSOL_NUMERO.Value;
      RepSolicitud.QSolicitud.Parameters.ParamByName('sol2').Value := QSolicitudSOL_NUMERO.Value;
      RepSolicitud.QSolicitud.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
      RepSolicitud.QSolicitud.Open;
      RepSolicitud.QDetalle.Open;
      RepSolicitud.QFacturas.Open;
      RepSolicitud.PrinterSetup;
      RepSolicitud.Print;
      RepSolicitud.Destroy;
    end;

    TipoSolicitud := QSolicitudSOL_TIPO.Value;
    QSolicitud.Close;
    QSolicitud.Parameters.ParamByName('numero').Value := -1;
    QSolicitud.Parameters.ParamByName('suc').Value := -1;
    QSolicitud.Open;
    QSolicitud.Insert;
    DBEdit1.SetFocus;
  end
  else
  begin
    GridCuentas.SetFocus;
    PageControl1.ActivePageIndex := 0;
  end;
end;

procedure TfrmSolicitud.QSolicitudAfterPost(DataSet: TDataSet);
begin
  QSolicitud.UpdateBatch;
end;

procedure TfrmSolicitud.QSolicitudBAN_CODIGOChange(Sender: TField);
begin
  if not QSolicitudBAN_CODIGO.IsNull then
  Begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select b.ban_nombre, b.cat_cuenta, b.BAN_MODSECUENCIA,');
    dm.Query1.SQL.Add('isnull(m.mon_relacionpesocompra,1) as tasa');
    dm.Query1.SQL.Add('from bancos b');
    dm.Query1.SQL.Add('left outer join moneda m on (b.emp_codigo = m.emp_codigo');
    dm.Query1.SQL.Add('and b.mon_codigo = m.mon_codigo)');
    dm.Query1.SQL.Add('where b.emp_codigo = :emp');
    dm.Query1.SQL.Add('and b.ban_codigo = :ban');
    dm.Query1.SQL.Add('and b.suc_codigo = :suc');
    dm.Query1.SQL.Add('and b.ban_tarjeta = '+QuotedStr('False'));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QSolicitudBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tBanco.Text := ''
    else
    begin
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
      CtaBanco    := dm.Query1.FieldByName('cat_cuenta').AsString;
      QSolicitudSOL_TASA.Value := dm.Query1.FieldByName('tasa').AsFloat;
      if not dm.Query1.FieldByName('cat_cuenta').IsNull then
      begin
        if not QDetalle.Locate('cat_cuenta',
        dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
        Begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
          QDetalleDET_ORIGEN.Value := 'Credito';
          QDetalleDET_MONTO.Value  := QSolicitudSOL_MONTO_BANCO.Value;
          QDetalle.Post;
        End;
      end;
    end;
  End
  else
    tBanco.Text := '';
end;

procedure TfrmSolicitud.QSolicitudBeforePost(DataSet: TDataSet);
begin
  if dm.QParametrospar_inv_compra_centro_costo.Value = 'True' then
  begin
    if QCentro.RecordCount = 0 then
    begin
      MessageDlg('Debe Digitar los Centros de Costos',mtError,[mbok],0);
      PageControl1.ActivePageIndex := 3;
      Abort;
    end;
  end;

  QSolicitudSOL_ANO.Value := YearOf(QSolicitudSOL_FECHA.Value);
  QSolicitudSOL_MES.Value := MonthOf(QSolicitudSOL_FECHA.Value);
  if (QSolicitud.State = dsInsert) and (QSolicitudSOL_NUMERO.IsNull) then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(sol_numero),0) as maximo');
    dm.Query1.SQL.Add('from solicitud');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
    dm.Query1.Open;
    QSolicitudSOL_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmSolicitud.QSolicitudAfterInsert(DataSet: TDataSet);
begin
  accion := 1;
end;

procedure TfrmSolicitud.QSolicitudAfterEdit(DataSet: TDataSet);
begin
  accion := 2;
end;

procedure TfrmSolicitud.QSolicitudSOL_MONTOChange(Sender: TField);
begin
  if (not QSolicitudSOL_MONTO.IsNull) and (CtaBanco <> '') and (QSolicitudSOL_MONTO.Value > 0) then
  Begin
    QSolicitudSOL_MONTO_BANCO.Value := QSolicitudSOL_MONTO.Value -
                                       (QSolicitudSOL_DESCUENTO.Value +
                                        (QSolicitudSOL_RETENCION.Value/QSolicitudSOL_TASA.Value));
    if QDetalle.Locate('cat_cuenta',CtaBanco,[]) then
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QSolicitudSOL_MONTO_BANCO.Value;
      QDetalle.Post;
    end;
  End;
end;

procedure TfrmSolicitud.btBuscaClick(Sender: TObject);
var
  Suc : integer;
begin
  Suc := DBLookupComboBox2.KeyValue;
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sol_numero, sol_benef');
  Search.Query.Add('from solicitud');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and sol_status = '+#39+'EMI'+#39);
  Search.Query.Add('and suc_codigo = '+IntToStr(Suc));
  Search.AliasFields.Add('Numero');
  Search.AliasFields.Add('Beneficiario');
  Search.ResultField := 'sol_numero';
  Search.Title := 'Solicitudes';
  if Search.execute then
  begin
    QSolicitud.Close;
    QSolicitud.Parameters.ParamByName('numero').Value := StrToInt(Search.ValueField);
    QSolicitud.Open;

    QDetalle.Close;
    QDetalle.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QDetalle.Parameters.ParamByName('suc').Value := Suc;
    QDetalle.Open;

    QFacturas.Close;
    QFacturas.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    QFacturas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QFacturas.Parameters.ParamByName('suc').Value := Suc;
    QFacturas.Open;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select cat_cuenta from bancos');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and ban_codigo = :ban');
    Query1.SQL.Add('and suc_codigo = :suc');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('ban').Value := QSolicitudBAN_CODIGO.Value;
    Query1.Parameters.ParamByName('suc').Value := Suc;
    Query1.Open;
    CtaBanco := Query1.FieldByName('cat_cuenta').AsString;

    if QSolicitudSOL_TIPO.Value = 'SUP' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select sup_cuenta from proveedores');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and sup_codigo = :sup');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('sup').Value := QSolicitudSUP_CODIGO.Value;
      dm.Query1.Open;
      CtaBenef := dm.Query1.FieldByName('sup_cuenta').AsString;
    end;

    if QSolicitudSOL_TIPO.Value = 'CLI' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select cli_cuenta from clientes');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cli_codigo = :cli');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('cli').Value := QSolicitudCLI_CODIGO.Value;
      dm.Query1.Open;
      CtaBenef := dm.Query1.FieldByName('cli_cuenta').AsString;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre, cat_cuenta, BAN_MODSECUENCIA');
    dm.Query1.SQL.Add('from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QSolicitudBAN_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := Suc;
    dm.Query1.Open;
    tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;

    rbTipoClick(Self);
    QSolicitud.Edit;
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmSolicitud.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmSolicitud.QSolicitudSOL_NUMEROChange(Sender: TField);
var
  Suc : Integer;
begin
  if not QSolicitudSOL_NUMERO.IsNull then
  begin
    Suc := QSolicitudSUC_CODIGO.Value;
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select sol_numero, sol_cheque, sol_status');
    Query1.SQL.Add('from solicitud');
    Query1.SQL.Add('where sol_numero = :num');
    Query1.SQL.Add('and emp_codigo = :emp');
    Query1.SQL.Add('and suc_codigo = :suc');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('num').Value := QSolicitudSOL_NUMERO.Value;
    Query1.Parameters.ParamByName('suc').Value := Suc;
    Query1.Open;
    if Query1.RecordCount > 0 then
    begin
      if Query1.FieldByName('sol_status').AsString = 'ANU' then
      begin
        MessageDlg('ESTA SOLICITUD NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE ESTA ANULADA',mtError,[mbok],0);
        QSolicitudSOL_NUMERO.Clear;
        Abort;
      end
      else if Query1.FieldByName('sol_status').AsString = 'APR' then
      begin
        MessageDlg('ESTA SOLICITUD NO PUEDE MODIFICARSE, DEBIDO A'+#13+
                   'QUE ESTA APROBADA',mtError,[mbok],0);
        QSolicitudSOL_NUMERO.Clear;
        Abort;
      end
      else
      Begin
        QSolicitud.Close;
        QSolicitud.Parameters.ParamByName('numero').Value := Query1.FieldByName('sol_numero').AsInteger;
        QSolicitud.Parameters.ParamByName('suc').Value    := Suc;
        QSolicitud.Open;

        DBEdit8.Enabled := rbTipo.ItemIndex = 3;
        btBenef.Enabled := rbTipo.ItemIndex < 3;

        QDetalle.Close;
        QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        QDetalle.Parameters.ParamByName('num').Value := QSolicitudSOL_NUMERO.Value;
        QDetalle.Parameters.ParamByName('suc').Value := Suc;
        QDetalle.Open;

        QCentro.Close;
        QCentro.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        QCentro.Parameters.ParamByName('num').Value := QSolicitudSOL_NUMERO.Value;
        QCentro.Parameters.ParamByName('suc').Value := Suc;
        QCentro.Open;

        QRetenciones.Close;
        QRetenciones.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        QRetenciones.Parameters.ParamByName('num').Value := QSolicitudSOL_NUMERO.Value;
        QRetenciones.Parameters.ParamByName('suc').Value := Suc;
        QRetenciones.Open;

        if QSolicitudSOL_TIPO.Value = 'SUP' then
        begin
          QFacturas.Close;
          QFacturas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          QFacturas.Parameters.ParamByName('num').Value := QSolicitudSOL_NUMERO.Value;
          QFacturas.Parameters.ParamByName('suc').Value := Suc;
          QFacturas.Open;
        end;

        Totalizar;
        QSolicitud.Edit;
      end;
    end;
  end;
end;

procedure TfrmSolicitud.QCentroBeforePost(DataSet: TDataSet);
begin
  if QCentrocen_nombre.IsNull then QCentro.Cancel;
end;

procedure TfrmSolicitud.QCentroNewRecord(DataSet: TDataSet);
begin
  QCentrosol_numero.Value := QSolicitudSOL_NUMERO.Value;
  QCentroemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
end;

procedure TfrmSolicitud.SpeedButton2Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
end;

procedure TfrmSolicitud.SpeedButton5Click(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR ESTA RETENCION?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QRetenciones.Delete
  end;
  GridRet.setfocus;
end;

procedure TfrmSolicitud.SpeedButton6Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ret_nombre, ret_codigo');
  Search.Query.Add('from retenciones');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'ret_codigo';
  Search.Title := 'Retenciones';
  if Search.execute then
  begin
    QRetenciones.Edit;
    QRetencionesret_codigo.Value := StrToInt(Search.ValueField);
  end;
end;

procedure TfrmSolicitud.QRetencionesret_codigoChange(Sender: TField);
begin
  if not QRetencionesret_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ret_nombre, ret_porciento, cat_cuenta from retenciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ret_codigo = :ret');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ret').Value  := QRetencionesret_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA RETENCION NO EXISTE',mtError,[mbok],0);
      QRetencionesret_codigo.Clear;
      Abort;
    end
    else if dm.Query1.RecordCount > 0 then
    begin
      QRetenciones.Edit;
      QRetencionesdet_nombre.Value := dm.Query1.FieldByName('ret_nombre').AsString;
      QRetencionesdet_cuenta.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
      if dm.Query1.FieldByName('ret_porciento').AsFloat > 0 then
        QRetencionesdet_monto.Value := (QSolicitudSOL_MONTO.Value * dm.Query1.FieldByName('ret_porciento').AsFloat)/100;

      GridRet.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmSolicitud.QRetencionesBeforePost(DataSet: TDataSet);
begin
  if QRetencionesdet_nombre.IsNull then QRetenciones.Cancel;
end;

procedure TfrmSolicitud.QRetencionesNewRecord(DataSet: TDataSet);
begin
  QRetencionessol_numero.Value := QSolicitudSOL_NUMERO.Value;
  QRetencionesemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QRetencionessuc_codigo.Value := QSolicitudSUC_CODIGO.Value;
end;

procedure TfrmSolicitud.GridRetColEnter(Sender: TObject);
begin
  if GridRet.SelectedIndex = 1 then
    GridRet.SelectedIndex := GridRet.SelectedIndex + 1;
end;

procedure TfrmSolicitud.GridRetEnter(Sender: TObject);
begin
  GridRet.SelectedIndex := 0;
end;

procedure TfrmSolicitud.GridRetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridRet.SelectedIndex <> 2 then
        GridRet.SelectedIndex := GridRet.SelectedIndex + 1
     else
     begin
       GridRet.SelectedIndex := 0;
       QRetenciones.Append;
     end;
end;

procedure TfrmSolicitud.QRetencionesdet_montoChange(Sender: TField);
begin
  if not QRetencionesdet_monto.IsNull then
  begin
    if not QDetalle.Locate('cat_cuenta',QRetencionesdet_cuenta.Value,[]) then
    begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := QRetencionesdet_cuenta.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalleDET_MONTO.Value  := QRetencionesdet_monto.Value;
      QDetalle.Post;
    end
    else
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value  := QRetencionesdet_monto.Value;
      QDetalle.Post;
    end;
  end;
end;

procedure TfrmSolicitud.QSolicitudSUC_CODIGOChange(Sender: TField);
var
  Suc : Integer;
begin
  Suc := QSolicitudSUC_CODIGO.Value;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select isnull(max(sol_numero),0) as maximo');
  dm.Query1.SQL.Add('from solicitud');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
  dm.Query1.Open;
  QSolicitudSOL_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
end;

procedure TfrmSolicitud.SpeedButton7Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select con_nombre, con_codigo');
  Search.Query.Add('from conceptos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'con_codigo';
  Search.Title := 'Conceptos';
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select con_nombre, cat_cuenta from conceptos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and con_codigo = :con');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('con').Value := StrToInt(Search.ValueField);
    dm.Query1.Open;
    QSolicitudSOL_CONCEPTO1.Value := dm.Query1.FieldByName('con_nombre').AsString;
    if not dm.Query1.FieldByName('cat_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta', dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalleDET_MONTO.Value  := QSolicitudSOL_MONTO.Value;
        QDetalle.Post;
      End;
    end;
  end;
end;

procedure TfrmSolicitud.QRetencionesAfterPost(DataSet: TDataSet);
begin
  TotalizaRet;
  if rbTipo.ItemIndex = 0 then
    TotalizaFac;
end;

procedure TfrmSolicitud.TotalizaRet;
var
  Ret : Double;
  punt : TBookmark;
begin
  if Totaliza = True then
  Begin
    Ret   := 0;
    punt := QRetenciones.GetBookmark;
    QRetenciones.DisableControls;
    QRetenciones.First;
    while not QRetenciones.Eof do
    Begin
      Ret  := Ret  + QRetencionesdet_monto.Value;
      QRetenciones.Next;
    End;
    QRetenciones.GotoBookmark(punt);
    QRetenciones.EnableControls;
    QSolicitudSOL_RETENCION.Value := Ret;
  End;
end;

procedure TfrmSolicitud.QFacturasFAC_RETENCIONChange(Sender: TField);
begin
  if not QFacturasFAC_RETENCION.IsNull then
    QFacturasFAC_PAGO.Value := QFacturasFAC_SALDO.Value -
                               (QFacturasFAC_DESCUENTO.Value + QFacturasFAC_RETENCION.Value)
  else if not QFacturasFAC_DESCUENTO.IsNull then
    QFacturasFAC_PAGO.Value := QFacturasFAC_SALDO.Value -
                               (QFacturasFAC_DESCUENTO.Value + QFacturasFAC_RETENCION.Value)
  else
    QFacturasFAC_PAGO.Value := QFacturasFAC_SALDO.Value;

  
end;

procedure TfrmSolicitud.QRetencionesAfterDelete(DataSet: TDataSet);
begin
  TotalizaRet;
end;

procedure TfrmSolicitud.QSolicitudSOL_RETENCIONChange(Sender: TField);
begin
  if (not QSolicitudSOL_RETENCION.IsNull) and (QSolicitudSOL_RETENCION.Value > 0) then
  begin
    QSolicitudSOL_MONTO_BANCO.Value := QSolicitudSOL_MONTO.Value -
                                       (QSolicitudSOL_DESCUENTO.Value +
                                        (QSolicitudSOL_RETENCION.Value/QSolicitudSOL_TASA.Value));
    if QDetalle.Locate('cat_cuenta',CtaBanco,[]) then
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QSolicitudSOL_MONTO_BANCO.Value;
      QDetalle.Post;
    end;
  end;
end;

procedure TfrmSolicitud.QSolicitudSOL_DESCUENTOChange(Sender: TField);
begin
  if (not QSolicitudSOL_DESCUENTO.IsNull) and (QSolicitudSOL_DESCUENTO.Value > 0) then
  begin
    QSolicitudSOL_MONTO_BANCO.Value := QSolicitudSOL_MONTO.Value -
                                       (QSolicitudSOL_DESCUENTO.Value +
                                        (QSolicitudSOL_RETENCION.Value/QSolicitudSOL_TASA.Value));
    if QDetalle.Locate('cat_cuenta',CtaBanco,[]) then
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QSolicitudSOL_MONTO_BANCO.Value;
      QDetalle.Post;
    end;
    if not QDetalle.Locate('cat_cuenta',dm.QContabPAR_CTADESCCOMP.AsString,[]) then
    begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.AsString;
      QDetalleDET_MONTO.Value  := QSolicitudSOL_DESCUENTO.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalle.Post;
    end
    else
    begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.AsString;
      QDetalleDET_MONTO.Value  := QSolicitudSOL_DESCUENTO.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalle.Post;
    end;
    
  end;
end;

procedure TfrmSolicitud.btdeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  PageControl1.ActivePageIndex := 0;
  GridCuentas.setfocus;
end;

procedure TfrmSolicitud.btfindcuentaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_movimiento = '+#39+'S'+#39);
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Cuenta');
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catalogo de Cuentas';
  if Search.execute then
  begin
    QDetalle.Edit;
    QDetalleCAT_CUENTA.Value := Search.ValueField;
  end;
  PageControl1.ActivePageIndex := 0;
  GridCuentas.setfocus;
end;

procedure TfrmSolicitud.QSolicitudSOL_MONTO_BANCOChange(Sender: TField);
begin
  if not QSolicitudSOL_MONTO_BANCO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(mon_codigo,0) as mon_codigo from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ban').Value := QSolicitudBAN_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.FieldByName('mon_codigo').AsInteger > 0 then
    begin
      if dm.Query1.FieldByName('mon_codigo').AsInteger <> dm.QParametrospar_moneda_local.Value then
      begin
        if not dm.QContabpar_cta_prima.IsNull then
        begin
          if not QDetalle.Locate('cat_cuenta', dm.QContabpar_cta_prima.Value,[]) then
          Begin
            QDetalle.Append;
            QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_prima.Value;
            QDetalleDET_ORIGEN.Value := 'Credito';
            QDetalleDET_MONTO.Value  := (QSolicitudSOL_MONTO_BANCO.Value*QSolicitudsol_tasa.Value) - QSolicitudSOL_MONTO_BANCO.Value;
            QDetalle.Post;
          End
          else
          Begin
            QDetalle.Edit;
            QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_prima.Value;
            QDetalleDET_ORIGEN.Value := 'Credito';
            QDetalleDET_MONTO.Value  := (QSolicitudSOL_MONTO_BANCO.Value*QSolicitudsol_tasa.Value) - QSolicitudSOL_MONTO_BANCO.Value;
            QDetalle.Post;
          End;
        end;
      end;
    end;
  end;
end;

procedure TfrmSolicitud.QFacturasAfterInsert(DataSet: TDataSet);
begin
  if not PuedeInsertar then QFacturas.Cancel;
end;

procedure TfrmSolicitud.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edCodigo.Text) <> '' then
    begin
      case rbTipo.ItemIndex of
      0 : Beneficiario('SUP');
      1 : Beneficiario('CLI');
      2 : Beneficiario('EMP');
      end;
    end;
  end;
end;

procedure TfrmSolicitud.Beneficiario(Tipo: string);
var
  a : integer;
begin
  if Tipo = 'SUP' then
  begin
    QSolicitudSUP_CODIGO.Value := StrToInt(edCodigo.Text);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sup_nombre, sup_cuenta');
    dm.Query1.SQL.Add('from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QSolicitudSUP_CODIGO.Value;
    dm.Query1.Open;
    QSolicitudSOL_BENEF.Value := '****'+dm.Query1.FieldByName('sup_nombre').AsString+'****';
    CtaBenef := dm.Query1.FieldByName('sup_cuenta').AsString;
    if not dm.Query1.FieldByName('sup_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta',
      dm.Query1.FieldByName('sup_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('sup_cuenta').AsString;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalleDET_MONTO.Value  := QSolicitudSOL_MONTO.Value;
        QDetalle.Post;
      End;
    end;

    PuedeInsertar := True;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select fac_numero, fac_fecha, fac_vence,');
    dm.Query1.SQL.Add('fac_total, fac_abono, fac_itbis');
    dm.Query1.SQL.Add('from provfacturas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_status = '+#39+'PEN'+#39);
    dm.Query1.SQL.Add('order by fac_fecha');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QSolicitudSUP_CODIGO.Value;
    dm.Query1.Open;
    dm.Query1.DisableControls;
    QFacturas.Close;
    QFacturas.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QFacturas.Parameters.ParamByName('num').Value := QSolicitudSOL_NUMERO.Value;
    QFacturas.Parameters.ParamByName('suc').Value := QSolicitudSUC_CODIGO.Value;
    QFacturas.Open;
    QFacturas.DisableControls;
    a := 0;
    Totaliza := false;
    while not dm.Query1.Eof do
    Begin
      a := a + 1;
      QFacturas.Insert;
      QFacturasSUC_CODIGO.Value := QSolicitudSUC_CODIGO.Value;
      QFacturasFAC_ABONO.Value  := StrToFloat(Format('%10.2f',[
                                   dm.Query1.FieldByName('fac_abono').AsFloat]));
      QFacturasFAC_NUMERO.Value := dm.Query1.FieldByName('fac_numero').AsString;
      QFacturasFAC_SALDO.Value  := StrToFloat(Format('%10.2f',[
                                   dm.Query1.FieldByName('fac_total').AsFloat]))-
                                   StrToFloat(Format('%10.2f',[
                                   dm.Query1.FieldByName('fac_abono').AsFloat]));
      QFacturasFAC_SECUENCIA.Value := a;
      QFacturasSUP_CODIGO.Value := QSolicitudSUP_CODIGO.Value;
      QFacturasEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
      QFacturasSOL_NUMERO.Value := QSolicitudSOL_NUMERO.Value;
      QFacturasFAC_FECHA.Value  := Dateof(dm.Query1.FieldByName('fac_fecha').AsDateTime);
      QFacturasFAC_VENCE.Value  := Dateof(dm.Query1.FieldByName('fac_vence').AsDateTime);
      QFacturasFAC_TOTAL.Value  := StrToFloat(Format('%10.2f',[
                                   dm.Query1.FieldByName('fac_total').AsFloat]));
      QFacturasFAC_ITBIS.Value  := dm.Query1.FieldByName('fac_itbis').AsFloat;
      QFacturas.Post;
      dm.Query1.Next;
    End;
    Totaliza := true;
    dm.Query1.EnableControls;
    QFacturas.EnableControls;
    QFacturas.First;
    PageControl1.ActivePageIndex := 0;

    PuedeInsertar := False;

    GridCuentas.SetFocus;
  end;
  if Tipo = 'CLI' then
  begin
    QSolicitudCLI_CODIGO.Value := StrToInt(edCodigo.Text);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cli_nombre, cli_cuenta');
    dm.Query1.SQL.Add('from clientes');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cli_codigo = :cli');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cli').Value := QSolicitudCLI_CODIGO.Value;
    dm.Query1.Open;
    QSolicitudSOL_BENEF.Value := '****'+dm.Query1.FieldByName('cli_nombre').AsString+'****';
    CtaBenef := dm.Query1.FieldByName('cli_cuenta').AsString;
    if not dm.Query1.FieldByName('cli_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta',
      dm.Query1.FieldByName('cli_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cli_cuenta').AsString;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalleDET_MONTO.Value  := QSolicitudSOL_MONTO.Value;
        QDetalle.Post;
      end;
    end;
    PageControl1.ActivePageIndex := 0;
    GridCuentas.SetFocus;
  end;
  if Tipo = 'EMP' then
  begin
    QSolicitudEMP_NUMERO.Value := StrToInt(edCodigo.Text);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select emp_nombres, emp_apellido_paterno, cat_cuenta');
    dm.Query1.SQL.Add('from empleados');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value :=QSolicitudEMP_NUMERO.Value;
    dm.Query1.Open;
    QSolicitudSOL_BENEF.Value := dm.Query1.FieldByName('emp_nombres').AsString + ' ' +dm.Query1.FieldByName('emp_apellido_paterno').AsString;
    CtaBenef := dm.Query1.FieldByName('cat_cuenta').AsString;
    if not dm.Query1.FieldByName('cat_cuenta').IsNull then
    begin
      if not QDetalle.Locate('cat_cuenta',
      dm.Query1.FieldByName('cat_cuenta').AsString,[]) then
      Begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := dm.Query1.FieldByName('cat_cuenta').AsString;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalleDET_MONTO.Value  := QSolicitudSOL_MONTO.Value;
        QDetalle.Post;
      End;
    end;
    PageControl1.ActivePageIndex := 0;
    GridCuentas.SetFocus;
  end;
end;


procedure TfrmSolicitud.spcentrosClick(Sender: TObject);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select cat_maneja_centro from contcatalogo');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and cat_cuenta = :cta');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cta').Value := QDetalleCAT_CUENTA.AsString;
  dm.Query1.Open;
  if dm.Query1.FieldByName('cat_maneja_centro').AsString <> 'S' then
  begin
    MessageDlg('Esta cuenta no acepta Centros de Costo', mtError, [mbyes], 0);
    GridCuentas.SetFocus;
  end
  else
  begin
    Application.CreateForm(tfrmCentrosXCuenta, frmCentrosXCuenta);
    frmCentrosXCuenta.lbcuenta.Caption := QDetalleCAT_CUENTA.AsString+': '+QDetalleCAT_NOMBRE.AsString;
    frmCentrosXCuenta.cta := QDetalleCAT_CUENTA.AsString;
    frmCentrosXCuenta.vMontototal := QDetalleDET_MONTO.Value;
    //Grabando registro en la pantalla
    QCentro.DisableControls;
    QCentro.First;
    while not QCentro.Eof do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
      begin
        frmCentrosXCuenta.QCentro.Append;
        frmCentrosXCuenta.QCentrocen_nombre.Value := QCentrocen_nombre.Value;
        frmCentrosXCuenta.QCentrodet_monto.Value  := QCentrodet_monto.Value;
        frmCentrosXCuenta.QCentrocen_referencia.Value := QCentrocen_referencia.Value;
        frmCentrosXCuenta.QCentrosub_referencia.Value := QCentrosub_referencia.Value;
        frmCentrosXCuenta.QCentrocen_codigo.Value     := QCentrocen_codigo.Value;
        frmCentrosXCuenta.QCentrosub_secuencia.Value  := QCentrosub_secuencia.Value;
        frmCentrosXCuenta.QCentro.Post;
      end;

      QCentro.Next;
    end;
    QCentro.EnableControls;  

    frmCentrosXCuenta.ShowModal;

    //eliminando registros de la cuenta selccionada
    QCentro.DisableControls;
    QCentro.First;
    a := QCentro.RecordCount;
    while a > 0 do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
        QCentro.Delete
      else
        QCentro.Next;

      a := a - 1;
    end;
    QCentro.EnableControls;

    //insertando registros de la cuenta selccionada
    frmCentrosXCuenta.QCentro.DisableControls;
    frmCentrosXCuenta.QCentro.First;
    while not frmCentrosXCuenta.QCentro.Eof do
    begin
      QCentro.Append;
      QCentrocat_cuenta.Value := QDetalleCAT_CUENTA.AsString;
      QCentrocen_nombre.Value := frmCentrosXCuenta.QCentrocen_nombre.Value;
      QCentrodet_monto.Value  := frmCentrosXCuenta.QCentrodet_monto.Value;
      QCentrocen_referencia.Value := frmCentrosXCuenta.QCentrocen_referencia.Value;
      QCentrosub_referencia.Value := frmCentrosXCuenta.QCentrosub_referencia.Value;
      QCentrocen_codigo.Value     := frmCentrosXCuenta.QCentrocen_codigo.Value;
      QCentrosub_secuencia.Value  := frmCentrosXCuenta.QCentrosub_secuencia.Value;
      QCentro.Post;

      frmCentrosXCuenta.QCentro.Next;
    end;
    frmCentrosXCuenta.QCentro.EnableControls;
    frmCentrosXCuenta.Release;
  end;
end;

procedure TfrmSolicitud.GridCuentasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var
  DataRect : TRect ;
Begin
   // Place the button in the first column.
   If (Column.Index = 0) Then
   Begin
      With GridCuentas Do
      Begin
         DataRect := CellRect(Column.Index,Row);
      End;
   // Assign the button's parent to the grid.
   If spcentros.Parent <> GridCuentas Then
      spcentros.Parent := GridCuentas ;
   // Set the button's coordinates.
   // In this case, right justify the button.
   If spcentros.Left <> (DataRect.Right - spcentros.Width) Then
      spcentros.Left := (DataRect.Right - spcentros.Width) ;
   If (spcentros.Top <> DataRect.Top) Then
      spcentros.Top := DataRect.Top ;

   // Make sure the button's height fits in row.
   If (spcentros.Height <> (DataRect.Bottom-DataRect.Top)) Then
      spcentros.Height := (DataRect.Bottom-DataRect.Top);

   End;
end;

procedure TfrmSolicitud.FormShow(Sender: TObject);
begin
if dm.QParametrospar_banca_apuestas.Value = True then begin
lbLocSuc.Visible := True;
dbedtcont_numeroSucursal.Visible := True;
btLocalidad.Visible := True;
TSucLoc.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
dbedtcont_numeroSucursal.Visible := False;
btLocalidad.Visible := False;
TSucLoc.Visible := False;
end;
end;

procedure TfrmSolicitud.dbedtcont_numeroSucursalChange(Sender: TObject);
begin
if Trim(dbedtcont_numeroSucursal.Text) = '' then TSucLoc.Text := '';
end;

procedure TfrmSolicitud.dbedtcont_numeroSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(dbedtcont_numeroSucursal.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(dbedtcont_numeroSucursal.Text));
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
      end;
  end;
end;

procedure TfrmSolicitud.btLocalidadClick(Sender: TObject);
begin
Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    dbedtcont_numeroSucursal.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(dbedtcont_numeroSucursal.Text));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
  end;
end;

end.
