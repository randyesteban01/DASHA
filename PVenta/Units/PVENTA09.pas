unit PVENTA09;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet,
  IBUpdateSQL, IBQuery, ComCtrls, ADODB,
  QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmTipoFacturas = class(TForm)
    QTipo: TADOQuery;
    Search: TQrySearchDlgADO;
    dsTipo: TDataSource;
    QTipoEMP_CODIGO: TIntegerField;
    QTipoTFA_CODIGO: TIntegerField;
    QTipoTFA_NOMBRE: TIBStringField;
    QTipoTFA_ESPCLIENTE: TIBStringField;
    QTipoTFA_SELCONDI: TIBStringField;
    QTipoTFA_ACTBALANCE: TIBStringField;
    QTipoTFA_FORMATOIMP: TIntegerField;
    QTipoTFA_PUERTOIMP: TIBStringField;
    QTipoTMO_CODIGO: TIntegerField;
    QTipoTFA_CLIENTE: TIBStringField;
    QTipoVEN_CODIGO: TIntegerField;
    QTipoTFA_MENSAJE2: TIBStringField;
    QTipoTFA_MENSAJE3: TIBStringField;
    QTipoTFA_PRECIO: TIBStringField;
    QTipoCAT_CUENTA: TIBStringField;
    Query1: TADOQuery;
    QTipoFPA_CODIGO: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label12: TLabel;
    btTipo: TSpeedButton;
    Label3: TLabel;
    Label17: TLabel;
    btVendedor: TSpeedButton;
    Label1: TLabel;
    Label6: TLabel;
    btForma: TSpeedButton;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBEdit12: TDBEdit;
    tTipo: TEdit;
    DBEdit3: TDBEdit;
    dbVendedor: TDBEdit;
    tVendedor: TEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    rbPrecios: TDBRadioGroup;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    tForma: TEdit;
    Label5: TLabel;
    btCuenta: TSpeedButton;
    DBEdit7: TDBEdit;
    tCuenta: TEdit;
    Label7: TLabel;
    btTipoDoc: TSpeedButton;
    DBEdit9: TDBEdit;
    tTipoDoc: TEdit;
    QTipoTDO_CODIGO: TIBStringField;
    QTipoTFA_VERLIMITE: TIBStringField;
    DBCheckBox5: TDBCheckBox;
    QTipoTFA_TRAERFORMAPAGO: TStringField;
    QTipotfa_permite_abonar: TStringField;
    DBCheckBox6: TDBCheckBox;
    ActionList2: TActionList;
    btPrior: TAction;
    btNext: TAction;
    btInsert: TAction;
    btEdit: TAction;
    btDelete: TAction;
    btPost: TAction;
    btCancel: TAction;
    btFind: TAction;
    btPrint: TAction;
    btClose: TAction;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton13: TToolButton;
    ToolButton12: TToolButton;
    ToolButton14: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    DBCheckBox7: TDBCheckBox;
    QTipotfa_itbis: TStringField;
    DBCheckBox8: TDBCheckBox;
    QTipotfa_imprimie_encabezado: TStringField;
    DBCheckBox9: TDBCheckBox;
    QTipotfa_rnc: TStringField;
    QTipoCashflow_Grupo: TIntegerField;
    QTipoCashflow_Subgrupo: TIntegerField;
    QTipoCashflow_Concepto: TIntegerField;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    btgrupo: TSpeedButton;
    tgrupo: TEdit;
    DBEdit11: TDBEdit;
    btsubgrupo: TSpeedButton;
    tsubgrupo: TEdit;
    DBEdit13: TDBEdit;
    btconcepto: TSpeedButton;
    tconcepto: TEdit;
    QTipotfa_modifica_nombre: TStringField;
    DBCheckBox10: TDBCheckBox;
    QTipotip_codigo: TIntegerField;
    Label10: TLabel;
    bttiponcf: TSpeedButton;
    DBEdit14: TDBEdit;
    ttiponcf: TEdit;
    dbmNotas: TDBMemo;
    Label11: TLabel;
    QTipoTFA_MENSAJE1: TStringField;
    dbchkenvio_correo: TDBCheckBox;
    QTipoEnvio_Correo: TBooleanField;
    dbchkEnvio_Estado: TDBCheckBox;
    QTipoEnvio_EstadoCta: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure dsTipoStateChange(Sender: TObject);
    procedure QTipoAfterDelete(DataSet: TDataSet);
    procedure QTipoAfterPost(DataSet: TDataSet);
    procedure QTipoNewRecord(DataSet: TDataSet);
    procedure QTipoBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure QTipoTMO_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btTipoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure QTipoVEN_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormPaint(Sender: TObject);
    procedure btCuentaClick(Sender: TObject);
    procedure QTipoCAT_CUENTAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QTipoBeforeDelete(DataSet: TDataSet);
    procedure QTipoAfterInsert(DataSet: TDataSet);
    procedure QTipoAfterEdit(DataSet: TDataSet);
    procedure btFormaClick(Sender: TObject);
    procedure QTipoFPA_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btTipoDocClick(Sender: TObject);
    procedure QTipoTDO_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btgrupoClick(Sender: TObject);
    procedure btsubgrupoClick(Sender: TObject);
    procedure btconceptoClick(Sender: TObject);
    procedure QTipoCashflow_GrupoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QTipoCashflow_SubgrupoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QTipoCashflow_ConceptoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure bttiponcfClick(Sender: TObject);
    procedure QTipotip_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    accion : integer;
  end;

var
  frmTipoFacturas: TfrmTipoFacturas;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmTipoFacturas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTipoFacturas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoFacturas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTipoFacturas.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // if (key = chr(vk_return)) then
  if (Key = #13) and not (ActiveControl is TDBMemo) then
  begin

    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTipoFacturas.btPostClick(Sender: TObject);
begin
  QTipo.post;
end;

procedure TfrmTipoFacturas.btCancelClick(Sender: TObject);
begin
  QTipo.cancel;
end;

procedure TfrmTipoFacturas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipo.delete;
end;

procedure TfrmTipoFacturas.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QTipo.edit;
end;

procedure TfrmTipoFacturas.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QTipo.insert;
end;

procedure TfrmTipoFacturas.btFindClick(Sender: TObject);
begin
  Search.Title := 'Tipos de Factura';
  Search.ResultField := 'tfa_codigo';
  Search.query.clear;
  Search.query.add('select tfa_nombre, tfa_codigo');
  Search.query.add('from tiposfactura');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QTipo.locate('tfa_codigo',search.valuefield,[]);
end;

procedure TfrmTipoFacturas.dsTipoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipo.State = dsbrowse;
  btTipoDoc.enabled := not btInsert.enabled;
  btTipo.enabled    := not btInsert.enabled;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btVendedor.enabled  := not btInsert.enabled;
  btCuenta.enabled  := not btInsert.enabled;
  btForma.enabled  := not btInsert.enabled;
  btgrupo.enabled  := not btInsert.enabled;
  btsubgrupo.enabled  := not btInsert.enabled;
  btconcepto.enabled  := not btInsert.enabled;
  bttiponcf.enabled  := not btInsert.enabled;
end;

procedure TfrmTipoFacturas.QTipoAfterDelete(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTipoFacturas.QTipoAfterPost(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
  if accion = 1 then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('EXECUTE PR_INSERTA_TFA :EMP, :TFA');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('tfa').Value := QTipoTFA_CODIGO.Value;
    Query1.ExecSQL;
  end;
end;

procedure TfrmTipoFacturas.QTipoNewRecord(DataSet: TDataSet);
begin
  QTipoEMP_CODIGO.value     := dm.vp_cia;
  QTipoTFA_RNC.value := 'False';
  QTipoTFA_ESPCLIENTE.value := 'False';
  QTipoTFA_SELCONDI.value   := 'False';
  QTipoTFA_ACTBALANCE.value := 'False';
  QTipoTFA_TRAERFORMAPAGO.value := 'False';
  QTipoTFA_PRECIO.Value     := 'Precio1';
  QTipoTFA_VERLIMITE.value  := 'False';
  qtipotfa_permite_abonar.Value := 'True';
  QTipoTFA_ITBIS.Value      := 'True';
  QTipotfa_imprimie_encabezado.Value := 'True';
end;

procedure TfrmTipoFacturas.QTipoBeforePost(DataSet: TDataSet);
begin
  if trim(QTipoTFA_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QTipo.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(tfa_codigo),0) as maximo');
    dm.query1.sql.add('from tiposfactura');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QTipoTFA_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmTipoFacturas.FormActivate(Sender: TObject);
begin
  if not QTipo.active then
  begin
    if dm.QParametrospar_inv_unidad_medida.Value <> 'True' then
    begin
      rbPrecios.Items.Clear;
      rbPrecios.Items.Add(dm.QParametrosPAR_PREDESCRIP1.Value);
      rbPrecios.Items.Add(dm.QParametrosPAR_PREDESCRIP2.Value);
      rbPrecios.Items.Add(dm.QParametrosPAR_PREDESCRIP3.Value);
      rbPrecios.Items.Add(dm.QParametrosPAR_PREDESCRIP4.Value);

      rbPrecios.Values.Clear;
      rbPrecios.Values.Add(dm.QParametrosPAR_PREDESCRIP1.Value);
      rbPrecios.Values.Add(dm.QParametrosPAR_PREDESCRIP2.Value);
      rbPrecios.Values.Add(dm.QParametrosPAR_PREDESCRIP3.Value);
      rbPrecios.Values.Add(dm.QParametrosPAR_PREDESCRIP4.Value);

    end
    else
    begin
      rbPrecios.Items.Clear;
      rbPrecios.Items.Add('Precio de Contado');
      rbPrecios.Items.Add('Precio de Crédito');
      rbPrecios.Items.Add('Precio Mínimo');

      rbPrecios.Values.Clear;
      rbPrecios.Values.Add('Contado');
      rbPrecios.Values.Add('Credito');
      rbPrecios.Values.Add('Minimo');
    end;

    QTipo.open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QTipo;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := true;
end;

procedure TfrmTipoFacturas.btpriorClick(Sender: TObject);
begin
  if not QTipo.bof then
    QTipo.prior;
end;

procedure TfrmTipoFacturas.btnextClick(Sender: TObject);
begin
  if not QTipo.eof then
    QTipo.next;
end;

procedure TfrmTipoFacturas.QTipoTMO_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoTMO_CODIGO.isnull then
  begin
    text := inttostr(QTipoTMO_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tmo_nombre from tiposmov');
    dm.Query1.sql.add('where tmo_codigo = :tipo');
    dm.Query1.sql.add('and emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('tipo').Value := QTipoTMO_CODIGO.value;
    dm.Query1.Parameters.parambyname('emp').Value  := dm.vp_cia;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tTipo.text := dm.Query1.fieldbyname('tmo_nombre').asstring
    else
      tTipo.text := '';
  end
  else
    tTipo.text := '';
end;

procedure TfrmTipoFacturas.btTipoClick(Sender: TObject);
begin
  Search.Title := 'Tipos de Movimientos';
  Search.ResultField := 'tmo_codigo';
  Search.query.clear;
  Search.query.add('select tmo_nombre, tmo_codigo');
  Search.query.add('from tiposmov');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QTipoTMO_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmTipoFacturas.FormCreate(Sender: TObject);
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
end;

procedure TfrmTipoFacturas.btVendedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select ven_nombre, ven_codigo');
  Search.Query.add('from vendedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'ven_Codigo';
  Search.Title := 'Listado de Vendedores';
  if Search.execute then
  begin
    QTipoVEN_CODIGO.value := strtoint(Search.ValueField);
    dbVendedor.setfocus;
  end;
end;

procedure TfrmTipoFacturas.QTipoVEN_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoVEN_CODIGO.isnull then
  begin
    Text := inttostr(QTipoVEN_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select ven_nombre from vendedores');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and ven_Codigo = :ven');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('ven').Value := QTipoVEN_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tVendedor.text := ''
    else
      tVendedor.text := dm.Query1.fieldbyname('ven_nombre').asstring;
  end
  else
    tVendedor.text := '';
end;

procedure TfrmTipoFacturas.FormPaint(Sender: TObject);
begin
  frmTipoFacturas.Top := 1;
  frmTipoFacturas.Left := 5;
end;

procedure TfrmTipoFacturas.btCuentaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select cat_nombre, cat_cuenta');
  Search.Query.Add('from contcatalogo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if Search.execute then
  begin
    QTipoCAT_CUENTA.Value := Search.ValueField;
    DBEdit7.SetFocus;
  end;
end;

procedure TfrmTipoFacturas.QTipoCAT_CUENTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoCAT_CUENTA.IsNull then
  begin
    Text := QTipoCAT_CUENTA.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_cuenta = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value  := QTipoCAT_CUENTA.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tCuenta.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
      tCuenta.Text := '';
  end
  else
    tCuenta.Text := '';
end;

procedure TfrmTipoFacturas.QTipoBeforeDelete(DataSet: TDataSet);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('SELECT * FROM PR_BUSCA_MOV_TFA (:EMP, :TFA)');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tfa').Value := QTipoTFA_CODIGO.Value;
  dm.Query1.Open;
  if dm.Query1.FieldByName('tiene').AsString = 'S' then
  begin
    MessageDlg('NO PUEDE ELIMINAR ESTE REGISTRO, DEBIDO A'+#13+
               'QUE EXISTEN FACTURAS DE ESTE TIPO',mtError, [mbok], 0);
    Abort;
  end;
  //eliminando registro en productos
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('delete from prodcuentas');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and tfa_Codigo = :tfa');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('tfa').Value := QTipoTFA_CODIGO.Value;
  dm.Query1.ExecSQL;;
end;

procedure TfrmTipoFacturas.QTipoAfterInsert(DataSet: TDataSet);
begin
  accion := 1;
end;

procedure TfrmTipoFacturas.QTipoAfterEdit(DataSet: TDataSet);
begin
  accion := 2;
end;

procedure TfrmTipoFacturas.btFormaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select fpa_nombre, fpa_codigo');
  Search.Query.Add('from FormasPago');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'fpa_codigo';
  Search.Title := 'Formas de Pago';
  if Search.execute then
  begin
    QTipoFPA_CODIGO.Value := StrToInt(Search.ValueField);
    DBEdit8.SetFocus;
  end;

end;

procedure TfrmTipoFacturas.QTipoFPA_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoFPA_CODIGO.IsNull then
  begin
    Text := IntToStr(QTipoFPA_CODIGO.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select fpa_nombre from formaspago');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and fpa_codigo = :fpa');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('fpa').Value := QTipoFPA_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tForma.Text := dm.Query1.FieldByName('fpa_nombre').AsString
    else
      tForma.Text := '';
  end
  else
    tForma.Text := '';
end;

procedure TfrmTipoFacturas.btTipoDocClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tdo_codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QTipoTDO_CODIGO.Value := Search.ValueField;
    DBEdit9.SetFocus;
  end;
end;

procedure TfrmTipoFacturas.QTipoTDO_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoTDO_CODIGO.IsNull then
  begin
    Text := QTipoTDO_CODIGO.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_Codigo = :tdo');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QTipoTDO_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tTipoDoc.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tTipoDoc.Text := '';
  end
  else
    tTipoDoc.Text := '';
end;

procedure TfrmTipoFacturas.btgrupoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Nombre, GrupoID');
  Search.Query.Add('from Cashflow_Grupo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'GrupoID';
  Search.Title := 'Cashflow - Grupos';
  if Search.execute then
  begin
    QTipoCashflow_Grupo.Value := StrToInt(Search.ValueField);
    DBEdit10.SetFocus;
  end;
end;

procedure TfrmTipoFacturas.btsubgrupoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Nombre, SubgrupoID');
  Search.Query.Add('from Cashflow_Subgrupo');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and GrupoID = '+DBEdit10.Text);
  Search.ResultField := 'SubgrupoID';
  Search.Title := 'Cashflow - Subgrupos';
  if Search.execute then
  begin
    QTipoCashflow_Subgrupo.Value := StrToInt(Search.ValueField);
    DBEdit11.SetFocus;
  end;
end;

procedure TfrmTipoFacturas.btconceptoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select Nombre, ConceptoID');
  Search.Query.Add('from Cashflow_Conceptos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.Query.Add('and GrupoID = '+DBEdit10.Text);
  Search.Query.Add('and SubgrupoID = '+DBEdit11.Text);
  Search.ResultField := 'ConceptoID';
  Search.Title := 'Cashflow - Conceptos';
  if Search.execute then
  begin
    QTipoCashflow_Concepto.Value := StrToInt(Search.ValueField);
    DBEdit13.SetFocus;
  end;
end;

procedure TfrmTipoFacturas.QTipoCashflow_GrupoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoCashflow_Grupo.IsNull then
  begin
    Text := inttostr(QTipoCashflow_Grupo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from Cashflow_Grupo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and GrupoID = :gru');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('gru').Value := QTipoCashflow_Grupo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tgrupo.Text := dm.Query1.FieldByName('Nombre').AsString
    else
      tgrupo.Text := '';
  end
  else
    tgrupo.Text := '';
end;

procedure TfrmTipoFacturas.QTipoCashflow_SubgrupoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoCashflow_Subgrupo.IsNull then
  begin
    Text := inttostr(QTipoCashflow_Subgrupo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from Cashflow_Subgrupo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and SubgrupoID = :sub');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sub').Value := QTipoCashflow_Subgrupo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tsubgrupo.Text := dm.Query1.FieldByName('Nombre').AsString
    else
      tsubgrupo.Text := '';
  end
  else
    tsubgrupo.Text := '';
end;

procedure TfrmTipoFacturas.QTipoCashflow_ConceptoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipoCashflow_Concepto.IsNull then
  begin
    Text := inttostr(QTipoCashflow_Subgrupo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Nombre from Cashflow_Conceptos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ConceptoID = :sub');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sub').Value := QTipoCashflow_Concepto.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tconcepto.Text := dm.Query1.FieldByName('Nombre').AsString
    else
      tconcepto.Text := '';
  end
  else
    tconcepto.Text := '';
end;

procedure TfrmTipoFacturas.bttiponcfClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select tip_nombre, tip_codigo');
  Search.Query.Add('from TipoNCF');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.ResultField := 'tip_codigo';
  Search.Title := 'Tipos de Comprobantes';
  if Search.execute then
  begin
    QTipotip_codigo.Value := StrToInt(Search.ValueField);
    DBEdit14.SetFocus;
  end;
end;

procedure TfrmTipoFacturas.QTipotip_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QTipotip_codigo.IsNull then
  begin
    Text := IntToStr(QTipotip_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tip_nombre from TipoNCF');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tip_codigo = :tip');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tip').Value  := QTipotip_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      ttiponcf.Text := dm.Query1.FieldByName('tip_nombre').AsString
    else
      ttiponcf.Text := '';
  end
  else
    ttiponcf.Text := '';
end;

end.
