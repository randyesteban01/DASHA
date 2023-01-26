unit PVENTA144;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, DBCtrls,
  Mask, DB, ADODB, QuerySearchDlgADO, IBCustomDataSet;

type
  TfrmNotaCreditoCompra = class(TForm)
    btLimpiar: TSpeedButton;
    BitBtn2: TSpeedButton;
    btPost: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel2: TPanel;
    Label2: TLabel;
    btCliente: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edProv: TEdit;
    tprov: TEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dsSuc: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Search: TQrySearchDlgADO;
    Label5: TLabel;
    QNota: TADOQuery;
    QNotaemp_codigo: TIntegerField;
    QNotasuc_codigo: TIntegerField;
    QNotancr_numero: TIntegerField;
    QNotancr_fecha: TDateTimeField;
    QNotancr_concepto: TStringField;
    QNotancr_monto: TBCDField;
    QNotancr_status: TStringField;
    QNotancr_montousado: TBCDField;
    QNotancr_devolucion: TIntegerField;
    QNotasup_codigo: TIntegerField;
    QNotafac_numero: TStringField;
    QNotausu_codigo: TIntegerField;
    dsNota: TDataSource;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GridCuentas: TDBGrid;
    btBuscaCta: TSpeedButton;
    btElimina: TSpeedButton;
    lbCR: TStaticText;
    lbBAL: TStaticText;
    lbDB: TStaticText;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleNCR_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    dsDetalle: TDataSource;
    cbfactura: TDBComboBox;
    TabSheet1: TTabSheet;
    DBGrid3: TDBGrid;
    QFac: TADOQuery;
    QFacFAC_NUMERO: TIBStringField;
    QFacFAC_FECHA: TDateTimeField;
    QFacFAC_VENCE: TDateTimeField;
    QFacFAC_TOTAL: TFloatField;
    QFacFAC_ABONO: TFloatField;
    QFacSaldo: TFloatField;
    QFacEMP_CODIGO: TIntegerField;
    QFacSUP_CODIGO: TIntegerField;
    dsCxP: TDataSource;
    QNotancr_ncf: TStringField;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    QNotancr_ncf_modifica: TStringField;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    QNotancr_itbis: TBCDField;
    QNotancr_grabado: TBCDField;
    QNotancr_exento: TBCDField;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    DBEdit5: TDBEdit;
    Query1: TADOQuery;
    QFacNCF: TStringField;
    procedure btClienteClick(Sender: TObject);
    procedure edProvKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure QNotaNewRecord(DataSet: TDataSet);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure GridCuentasColEnter(Sender: TObject);
    procedure GridCuentasEnter(Sender: TObject);
    procedure GridCuentasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure btEliminaClick(Sender: TObject);
    procedure QNotancr_montoChange(Sender: TField);
    procedure QDetalleAfterDelete(DataSet: TDataSet);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QFacCalcFields(DataSet: TDataSet);
    procedure QFacAfterScroll(DataSet: TDataSet);
    procedure QNotancr_grabadoChange(Sender: TField);
    procedure QNotancr_itbisChange(Sender: TField);
    procedure QNotancr_exentoChange(Sender: TField);
    procedure QNotafac_numeroChange(Sender: TField);
    procedure cbfacturaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure cbfacturaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CtaSup : String;
    totaliza : boolean;
    Debitos, Creditos : double;
    procedure TotalizaCuentas;
  end;

var
  frmNotaCreditoCompra: TfrmNotaCreditoCompra;

implementation

uses SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmNotaCreditoCompra.btClienteClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_balance > 0');
  Search.Title := 'Proveedores';
  if Search.execute then
  begin
    edProv.text := search.valuefield;
    edProv.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance, sup_cuenta');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    QNotasup_codigo.value := dm.Query1.fieldbyname('sup_Codigo').asinteger;
    tprov.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    CtaSup := dm.Query1.fieldbyname('sup_cuenta').asstring;
    dbedit2.setfocus;

    //Buscar ultimo comprobante
    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select max(ncr_ncf) as ncr_ncf from notascreditocompra');
    Query1.sql.add('where emp_codigo = :emp');
    Query1.sql.add('and sup_codigo = :sup');
    Query1.sql.add('and ncr_ncf is not null');
    Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    Query1.open;
    if trim(Query1.FieldByName('ncr_ncf').AsString) <> '' then
      QNotancr_ncf.Value := Query1.FieldByName('ncr_ncf').AsString;

    //Buscar Facturas Pendientes
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fac_numero from provfacturas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.sql.add('and fac_status = :st');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('st').Value  := 'PEN';
    dm.Query1.Open;
    dm.Query1.DisableControls;
    cbfactura.Items.Clear;
    while not dm.Query1.Eof do
    begin
      cbfactura.Items.Add(dm.Query1.FieldByName('fac_numero').AsString);
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
    cbfactura.ItemIndex := 0;
    QFac.Locate('FAC_NUMERO',cbfactura.Text,[]);

    QFac.Close;
    QFac.Parameters.ParamByName('emp').Value := dm.vp_cia;
    QFac.Parameters.ParamByName('sup').Value := strtoint(search.valuefield);
    QFac.Open;

    if CtaSup <> '' then
    begin
      if not QDetalle.Locate('cat_cuenta', CtaSup,[]) then
      begin
        QDetalle.Append;
        QDetalleCAT_CUENTA.Value := CtaSup;
        QDetalleDET_MONTO.Value  := QNotaNCR_MONTO.Value;
        QDetalleDET_ORIGEN.Value := 'Debito';
        QDetalle.Post;
      end;
    end;
  end;
end;

procedure TfrmNotaCreditoCompra.edProvKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProv.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance, sup_cuenta');
      dm.Query1.sql.add('from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_codigo = :sup');
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(edProv.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.open;
      QNotaSUP_CODIGO.value := dm.Query1.fieldbyname('sup_Codigo').asinteger;
      tprov.text := dm.Query1.fieldbyname('sup_nombre').asstring;
      CtaSup := dm.Query1.fieldbyname('sup_cuenta').asstring;

      //Buscar ultimo comprobante
      Query1.close;
      Query1.sql.clear;
      Query1.sql.add('select  max(ncr_ncf) as ncr_ncf from notascreditocompra');
      Query1.sql.add('where emp_codigo = :emp');
      Query1.sql.add('and sup_codigo = :sup');
      Query1.sql.add('and ncr_ncf is not null');
      Query1.Parameters.parambyname('sup').Value := strtoint(edProv.text);
      Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      Query1.open;
      if trim(Query1.FieldByName('ncr_ncf').AsString) <> '' then
        QNotancr_ncf.Value := Query1.FieldByName('ncr_ncf').AsString;

      //Buscar Facturas Pendientes
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select fac_numero from provfacturas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_codigo = :sup');
      dm.Query1.sql.add('and fac_status = :st');
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(edProv.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('st').Value  := 'PEN';
      dm.Query1.Open;
      dm.Query1.DisableControls;
      cbfactura.Items.Clear;
      while not dm.Query1.Eof do
      begin
        cbfactura.Items.Add(dm.Query1.FieldByName('fac_numero').AsString);
        dm.Query1.Next;
      end;
      dm.Query1.EnableControls;
      cbfactura.ItemIndex := 0;

      QFac.Close;
      QFac.Parameters.ParamByName('emp').Value := dm.vp_cia;
      QFac.Parameters.ParamByName('sup').Value := strtoint(edProv.text);
      QFac.Open;


      if CtaSup <> '' then
      begin
        if not QDetalle.Locate('cat_cuenta', CtaSup,[]) then
        begin
          QDetalle.Append;
          QDetalleCAT_CUENTA.Value := CtaSup;
          QDetalleDET_MONTO.Value  := QNotaNCR_MONTO.Value;
          QDetalleDET_ORIGEN.Value := 'Debito';
          QDetalle.Post;
        end;
      end;

    end
    else
      edProv.SetFocus;
  end;
end;

procedure TfrmNotaCreditoCompra.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if activecontrol.ClassType <> tdbgrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmNotaCreditoCompra.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmNotaCreditoCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmNotaCreditoCompra.FormPaint(Sender: TObject);
begin
  Top := 1;
end;

procedure TfrmNotaCreditoCompra.btLimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA NOTA DE CREDITO?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QNota.close;
    QNota.Parameters.parambyname('emp').Value := dm.vp_cia;
    QNota.Parameters.parambyname('num').Value := -1;
    QNota.Parameters.parambyname('suc').Value := -1;
    QNota.open;
    QNota.insert;
  end;
  edProv.setfocus;
end;

procedure TfrmNotaCreditoCompra.FormActivate(Sender: TObject);
begin
  if not QNota.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    QNota.Parameters.parambyname('emp').Value := dm.vp_cia;
    QNota.Parameters.parambyname('num').Value := -1;
    QNota.Parameters.parambyname('suc').Value := -1;
    QNota.open;
    QNota.insert;
  end;
end;

procedure TfrmNotaCreditoCompra.btPostClick(Sender: TObject);
var
  a : integer;
begin
  if QNotancr_monto.Value > 0 then
  begin
  if Trim(QNotancr_ncf.Text)<>'' then begin
    if not (Length(QNotancr_ncf.Value) IN [0,11,19,13]) then begin
      ShowMessage('El NCF contiene '+IntToStr(Length(QNotancr_ncf.Value))+' digitos,'+Char(13)+
                  'Solo se permite 11 o 19 digitos numericos......');
      DBEdit4.SetFocus;
      Abort;
    end;
  end;


    if messagedlg('TODOS LOS DATOS ESTAN CORECTOS?',mtconfirmation,[mbyes,mbno],0) = mryes then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select count(*) as cant');
      dm.Query1.SQL.Add('from NotasCreditoCompra');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ncr_NCF = :ncf');
      dm.Query1.SQL.Add('and sup_codigo = '+edProv.Text);
      dm.Query1.SQL.Add('and ncr_ncf is not null');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('ncf').Value := QNotancr_ncf.Value;
      dm.Query1.Open;
      //if Trim(QNotancr_ncf.Text)<>'' then begin
      if not (Length(QNotancr_ncf.Value) in [0,11,19,13])  then begin
      ShowMessage('El NCF contiene '+IntToStr(Length(QNotancr_ncf.Value))+' digitos,'+Char(13)+
                  'Solo se permite 11 o 19 digitos numericos......');
      DBEdit4.SetFocus;
      Abort;
      end
      else
      if (not QNotancr_ncf.isnull) and (Trim(QNotancr_ncf.AsString) <> '') and
      ((copy(Trim(QNotancr_ncf.AsString),3,1) <> '4') and (Length(QNotancr_ncf.Value) in [11])) then
      begin
        messagedlg('EL NCF DIGITADO SOLO DEBE SER DE NOTAS DE CREDITO',mterror,[mbok],0);
        DBEdit4.Setfocus;
      end
      else
      if (not QNotancr_ncf.isnull) and (Trim(QNotancr_ncf.AsString) <> '') and
      ((copy(Trim(QNotancr_ncf.AsString),11,1) <> '4') and (Length(QNotancr_ncf.Value) in [19])) then
      begin
        ShowMessage(copy(Trim(QNotancr_ncf.AsString),11,1));
        messagedlg('EL NCF DIGITADO SOLO DEBE SER DE NOTAS DE CREDITO',mterror,[mbok],0);
        DBEdit4.Setfocus;
      end
      else if (not QNotancr_ncf.isnull) and (Trim(QNotancr_ncf.AsString) <> '') and (dm.Query1.FieldByName('cant').AsInteger > 0) then
      begin
        MessageDlg('ESTE NCF ESTA REPETIDO',mtError,[mbok],0);
        DBEdit4.Setfocus;
      end
      else
      begin
        totaliza := False;
        QNotaemp_codigo.Value := dm.vp_cia;
        QNotasuc_codigo.Value := DBLookupComboBox2.KeyValue;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select isnull(max(ncr_numero),0) as maximo');
        dm.Query1.SQL.Add('from notascreditocompra');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and suc_codigo = :suc');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        dm.Query1.Open;
        QNotancr_numero.Value := dm.Query1.FieldByName('maximo').Value + 1;

        QNota.Post;
        QNota.UpdateBatch;

        //Cuentas contables
        QDetalle.First;
        QDetalle.DisableControls;
        a := 0;
        while not QDetalle.Eof do
        begin
          a := a + 1;
          QDetalle.Edit;
          QDetalleDET_SECUENCIA.Value := a;
          QDetalleEMP_CODIGO.Value    := dm.vp_cia;
          QDetalleNCR_NUMERO.Value    := QNotaNCR_NUMERO.Value;
          QDetalleSUC_CODIGO.Value    := QNotaSUC_CODIGO.Value;
          QDetalle.Post;
          QDetalle.Next;
        end;
        QDetalle.EnableControls;
        QDetalle.UpdateBatch;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('select fac_numero from provfacturas');
        dm.Query1.SQL.Add('where emp_codigo = :emp');
        dm.Query1.SQL.Add('and sup_codigo = :sup');
        dm.Query1.SQL.Add('and fac_numero = :fac');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('sup').Value := QNotasup_codigo.Value;
        dm.Query1.Parameters.ParamByName('fac').Value := QNotafac_numero.Value;
        dm.Query1.Open;
        if dm.Query1.RecordCount > 0 then
        begin
          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('update provfacturas set fac_abono = isnull(fac_abono + :mto,0)');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and sup_codigo = :sup');
          dm.Query1.SQL.Add('and fac_numero = :fac');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('sup').Value := QNotasup_codigo.Value;
          dm.Query1.Parameters.ParamByName('fac').Value := QNotafac_numero.Value;
          dm.Query1.Parameters.ParamByName('mto').Value := QNotancr_monto.Value;
          dm.Query1.ExecSQL;

          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('update provfacturas set fac_status = :st');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and sup_codigo = :sup');
          dm.Query1.SQL.Add('and fac_numero = :fac');
          dm.Query1.SQL.Add('and fac_abono >= fac_total');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('sup').Value := QNotasup_codigo.Value;
          dm.Query1.Parameters.ParamByName('fac').Value := QNotafac_numero.Value;
          dm.Query1.Parameters.ParamByName('st').Value  := 'PAG';
          dm.Query1.ExecSQL;

          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('update proveedores set sup_balance = isnull(sup_balance - :mto,0)');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and sup_codigo = :sup');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
          dm.Query1.Parameters.ParamByName('sup').Value := QNotasup_codigo.Value;
          dm.Query1.Parameters.ParamByName('mto').Value := QNotancr_monto.Value;
          dm.Query1.ExecSQL;

          QNota.close;
          QNota.Parameters.parambyname('emp').Value := dm.vp_cia;
          QNota.Parameters.parambyname('num').Value := -1;
          QNota.Parameters.parambyname('suc').Value := -1;
          QNota.open;
          QNota.insert;
        end;
      end;
  
    end;
  end;
  edProv.setfocus;
end;

procedure TfrmNotaCreditoCompra.QNotaNewRecord(DataSet: TDataSet);
begin
  QFac.Close;
  QFac.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QFac.Parameters.ParamByName('sup').Value := -1;
  QFac.Open;
  cbfactura.Items.Clear;

  totaliza := False;
  QNotancr_fecha.Value      := date;
  QNotancr_status.Value     := 'EMI';
  QNotancr_monto.Value      := 0;
  QNotancr_montousado.Value := 0;
  QNotausu_codigo.Value     := dm.Usuario;
  QNotancr_itbis.Value      := 0;
  QNotancr_grabado.Value    := 0;
  QNotancr_exento.Value     := 0;
  PageControl1.ActivePageIndex := 0;

  QDetalle.close;
  QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;
  QDetalle.Parameters.parambyname('num').Value := -1;
  QDetalle.Parameters.parambyname('suc').Value := -1;
  QDetalle.open;

  if not dm.QContabPAR_CTADESCCOMP.IsNull then
  begin
    QDetalle.Append;
    QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.Value;
    QDetalleDET_ORIGEN.Value := 'Credito';
    QDetalle.Post;
  end;  
  totaliza := true;
end;

procedure TfrmNotaCreditoCompra.QDetalleCAT_CUENTAChange(Sender: TField);
begin
  if not QDetalleCAT_CUENTA.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre, cat_origen, cat_movimiento from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
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
      GridCuentas.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmNotaCreditoCompra.GridCuentasColEnter(Sender: TObject);
begin
  if GridCuentas.SelectedIndex = 1 then
    GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1;
end;

procedure TfrmNotaCreditoCompra.GridCuentasEnter(Sender: TObject);
begin
  GridCuentas.SelectedIndex := 0;
end;

procedure TfrmNotaCreditoCompra.GridCuentasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if GridCuentas.SelectedIndex = 2 then
  begin
    if key = 68 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Debito';
      GridCuentas.SelectedIndex := 3;
    end
    else if key = 67 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'Credito';
      GridCuentas.SelectedIndex := 3;
    end;
  end;
  if key = vk_f5 then btBuscaCtaClick(Self);
  if key = vk_f4 then btEliminaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;
  if key = vk_return then
     if GridCuentas.SelectedIndex <> 3 then
        GridCuentas.SelectedIndex := GridCuentas.SelectedIndex + 1
     else
     begin
       GridCuentas.SelectedIndex := 0;
       QDetalle.Append;
     end;
end;

procedure TfrmNotaCreditoCompra.btBuscaCtaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
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

procedure TfrmNotaCreditoCompra.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.Delete
  end;
  GridCuentas.setfocus;
end;

procedure TfrmNotaCreditoCompra.QNotancr_montoChange(Sender: TField);
begin
  if (not QNotaNCR_MONTO.IsNull) and (Totaliza = True) and (QNotaNCR_MONTO.value > 0) then
  begin
    {QDetalle.DisableControls;
    QDetalle.First;
    While not QDetalle.Eof do
    begin
      QDetalle.Edit;
      QDetalleDET_MONTO.Value := QNotaNCR_MONTO.Value;
      QDetalle.Post;
      QDetalle.Next;
    end;
    QDetalle.First;
    QDetalle.EnableControls;}

    if not QDetalle.Locate('cat_cuenta', dm.QContabPAR_CTADESCCOMP.Value ,[]) then
    Begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalleDET_MONTO.Value  := QNotancr_monto.Value - QNotancr_itbis.Value;
      QDetalle.Post;
    End
    else
    Begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := dm.QContabPAR_CTADESCCOMP.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalleDET_MONTO.Value  := QNotancr_monto.Value - QNotancr_itbis.Value;
      QDetalle.Post;
    End;
    
    TotalizaCuentas;
  end;
end;

procedure TfrmNotaCreditoCompra.TotalizaCuentas;
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

procedure TfrmNotaCreditoCompra.QDetalleAfterDelete(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmNotaCreditoCompra.QDetalleAfterPost(DataSet: TDataSet);
begin
  TotalizaCuentas;
end;

procedure TfrmNotaCreditoCompra.QDetalleBeforePost(DataSet: TDataSet);
begin
  if QDetalleCAT_NOMBRE.IsNull then QDetalle.Cancel;
end;

procedure TfrmNotaCreditoCompra.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
  QDetalleSUC_CODIGO.Value := QNotaSUC_CODIGO.Value;
end;

procedure TfrmNotaCreditoCompra.QFacCalcFields(DataSet: TDataSet);
begin
  QFacSaldo.value := QFacFAC_TOTAL.value - QFacFAC_ABONO.value;
end;

procedure TfrmNotaCreditoCompra.QFacAfterScroll(DataSet: TDataSet);
begin
  if not QFacFAC_NUMERO.IsNull then
    QNotafac_numero.Value := QFacFAC_NUMERO.Value;
end;

procedure TfrmNotaCreditoCompra.QNotancr_grabadoChange(Sender: TField);
begin
  if (not QNotancr_grabado.IsNull) and (QNotancr_grabado.value > 0) then
  begin
    QNotancr_monto.Value := QNotancr_grabado.Value + QNotancr_itbis.Value + QNotancr_exento.Value;

    if not QDetalle.Locate('cat_cuenta', CtaSup,[]) then
    Begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := CtaSup;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QNotancr_monto.Value;
      QDetalle.Post;
    End
    else
    Begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := CtaSup;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QNotancr_monto.Value;
      QDetalle.Post;
    End;
  end;
end;

procedure TfrmNotaCreditoCompra.QNotancr_itbisChange(Sender: TField);
begin
  if (not QNotancr_itbis.IsNull) and (QNotancr_itbis.value > 0) then
  begin
    QNotancr_monto.Value := QNotancr_grabado.Value + QNotancr_itbis.Value + QNotancr_exento.Value;
    if not QDetalle.Locate('cat_cuenta', dm.QContabpar_cta_itbis_compra.Value ,[]) then
    Begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_itbis_compra.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalleDET_MONTO.Value  := QNotancr_itbis.Value;
      QDetalle.Post;
    End
    else
    Begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := dm.QContabpar_cta_itbis_compra.Value;
      QDetalleDET_ORIGEN.Value := 'Credito';
      QDetalleDET_MONTO.Value  := QNotancr_itbis.Value;
      QDetalle.Post;
    End;

    if not QDetalle.Locate('cat_cuenta', CtaSup,[]) then
    Begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := CtaSup;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QNotancr_monto.Value;
      QDetalle.Post;
    End
    else
    Begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := CtaSup;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QNotancr_monto.Value;
      QDetalle.Post;
    End;
    
  end;
end;

procedure TfrmNotaCreditoCompra.QNotancr_exentoChange(Sender: TField);
begin
  if (not QNotancr_exento.IsNull) and (QNotancr_exento.value > 0) then
  begin
    QNotancr_monto.Value := QNotancr_grabado.Value + QNotancr_itbis.Value + QNotancr_exento.Value;

    if not QDetalle.Locate('cat_cuenta', CtaSup,[]) then
    Begin
      QDetalle.Append;
      QDetalleCAT_CUENTA.Value := CtaSup;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QNotancr_monto.Value;
      QDetalle.Post;
    End
    else
    Begin
      QDetalle.Edit;
      QDetalleCAT_CUENTA.Value := CtaSup;
      QDetalleDET_ORIGEN.Value := 'Debito';
      QDetalleDET_MONTO.Value  := QNotancr_monto.Value;
      QDetalle.Post;
    End;
  end;
end;

procedure TfrmNotaCreditoCompra.QNotafac_numeroChange(Sender: TField);
begin
IF QFacNCF.Text <> '' then
QNotancr_ncf_modifica.Text := QFacNCF.Text ELSE
QNotancr_ncf_modifica.Text := '';

{  if not QNotafac_numero.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ncf from provfacturas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_numero = :fac');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sup').Value := QNotasup_codigo.Value;
    dm.Query1.Parameters.ParamByName('fac').Value := cbfactura.Text;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      if not dm.Query1.FieldByName('ncf').IsNull then
        QNotancr_ncf_modifica.Value := dm.Query1.FieldByName('ncf').AsString
      else
        QNotancr_ncf_modifica.clear;
    end
    else
      QNotancr_ncf_modifica.clear;
  end
  else
    QNotancr_ncf_modifica.clear;}
end;

procedure TfrmNotaCreditoCompra.cbfacturaChange(Sender: TObject);
begin
IF QFacNCF.Text <> '' then
QNotancr_ncf_modifica.Text := QFacNCF.Text ELSE
QNotancr_ncf_modifica.Text := '';
  {if cbfactura.Text <> '' then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ncf from provfacturas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.SQL.Add('and fac_numero = :fac');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sup').Value := QNotasup_codigo.Value;
    dm.Query1.Parameters.ParamByName('fac').Value := cbfactura.Text;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      if not dm.Query1.FieldByName('ncf').IsNull then
        QNotancr_ncf_modifica.Value := dm.Query1.FieldByName('ncf').AsString
      else
        QNotancr_ncf_modifica.clear;
    end
    else
      QNotancr_ncf_modifica.clear;
  end
  else
    QNotancr_ncf_modifica.clear;}
end;

procedure TfrmNotaCreditoCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then btPostClick(Self);
  if key = vk_f3 then btLimpiarClick(Self);
  if key = vk_f10 then BitBtn2Click(Self);
end;

procedure TfrmNotaCreditoCompra.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in ['0'..'9','A','B',#8]) then key:=#0;
end;

procedure TfrmNotaCreditoCompra.cbfacturaClick(Sender: TObject);
begin
QFac.Locate('FAC_NUMERO',cbfactura.Text,[]);
IF QFacNCF.Text <> '' then
QNotancr_ncf_modifica.Text := QFacNCF.Text ELSE
QNotancr_ncf_modifica.Text := '';

end;

end.
