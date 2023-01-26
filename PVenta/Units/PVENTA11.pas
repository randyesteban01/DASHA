unit PVENTA11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, IBCustomDataSet, IBQuery,
  IBUpdateSQL, ADODB, QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmFamilias = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    QFamilias: TADOQuery;
    QFamiliasEMP_CODIGO: TIntegerField;
    QFamiliasFAM_CODIGO: TIntegerField;
    QFamiliasFAM_NOMBRE: TIBStringField;
    QFamiliasFAM_COMISION: TFloatField;
    dsFamilias: TDataSource;
    Search: TQrySearchDlgADO;
    DBCheckBox1: TDBCheckBox;
    QFamiliasfam_bar: TStringField;
    QFamiliasfac_caja: TIntegerField;
    Label6: TLabel;
    btcaja: TSpeedButton;
    dbCaja: TDBEdit;
    tcaja: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
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
    QFamiliasfam_beneficio: TBCDField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    QFamiliasfam_descuento: TBCDField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    QFamiliasfam_cta_ingreso: TStringField;
    QFamiliasfam_cta_inventario: TStringField;
    QFamiliasfam_cta_costo: TStringField;
    btcta1: TSpeedButton;
    DBEdit6: TDBEdit;
    tcuenta1: TEdit;
    btcta2: TSpeedButton;
    DBEdit7: TDBEdit;
    tcuenta2: TEdit;
    btcta3: TSpeedButton;
    DBEdit8: TDBEdit;
    tcuenta3: TEdit;
    QFamiliasfam_cta_descuento: TStringField;
    Label10: TLabel;
    btcta4: TSpeedButton;
    DBEdit9: TDBEdit;
    tcuenta4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QFamiliasNewRecord(DataSet: TDataSet);
    procedure QFamiliasAfterDelete(DataSet: TDataSet);
    procedure QFamiliasAfterPost(DataSet: TDataSet);
    procedure QFamiliasBeforePost(DataSet: TDataSet);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsFamiliasStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btcajaClick(Sender: TObject);
    procedure QFamiliasfac_cajaGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btcta1Click(Sender: TObject);
    procedure btcta2Click(Sender: TObject);
    procedure btcta3Click(Sender: TObject);
    procedure QFamiliasfam_cta_ingresoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QFamiliasfam_cta_inventarioGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QFamiliasfam_cta_costoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btcta4Click(Sender: TObject);
    procedure QFamiliasfam_cta_descuentoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFamilias: TfrmFamilias;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmFamilias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmFamilias.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFamilias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmFamilias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmFamilias.QFamiliasNewRecord(DataSet: TDataSet);
begin
  QFamiliasEMP_CODIGO.value := dm.QParametrosPAR_INVEMPRESA.Value;
  QFamiliasfam_bar.Value := 'False';
end;

procedure TfrmFamilias.QFamiliasAfterDelete(DataSet: TDataSet);
begin
  QFamilias.UpdateBatch;
end;

procedure TfrmFamilias.QFamiliasAfterPost(DataSet: TDataSet);
begin
  QFamilias.UpdateBatch;
end;

procedure TfrmFamilias.QFamiliasBeforePost(DataSet: TDataSet);
begin
  if trim(QFamiliasFAM_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QFamilias.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(fam_codigo),0) as maximo');
    dm.query1.sql.add('from familias');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.query1.open;
    QFamiliasFAM_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmFamilias.btPostClick(Sender: TObject);
begin
  QFamilias.post;
end;

procedure TfrmFamilias.btCancelClick(Sender: TObject);
begin
  QFamilias.cancel;
end;

procedure TfrmFamilias.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QFamilias.delete;
end;

procedure TfrmFamilias.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QFamilias.edit;
end;

procedure TfrmFamilias.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QFamilias.insert;
end;

procedure TfrmFamilias.btPriorClick(Sender: TObject);
begin
  if not QFamilias.bof then
    QFamilias.prior;
end;

procedure TfrmFamilias.btNextClick(Sender: TObject);
begin
  if not QFamilias.eof then
    QFamilias.next;
end;

procedure TfrmFamilias.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select fam_nombre, fam_codigo');
  Search.query.add('from familias');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'fam_codigo';
  if search.execute then
     QFamilias.locate('fam_codigo',search.valuefield,[]);
end;

procedure TfrmFamilias.FormActivate(Sender: TObject);
begin
  if not QFamilias.active then QFamilias.open;
  frmMain.ExportXLS.Sheets[2].DataSet  := QFamilias;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := True;
end;

procedure TfrmFamilias.dsFamiliasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsFamilias.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btcaja.Enabled    := not btInsert.Enabled;
  btcta1.Enabled    := not btInsert.Enabled;
  btcta2.Enabled    := not btInsert.Enabled;
  btcta3.Enabled    := not btInsert.Enabled;
  btcta4.Enabled    := not btInsert.Enabled;
end;

procedure TfrmFamilias.FormCreate(Sender: TObject);
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

procedure TfrmFamilias.btcajaClick(Sender: TObject);
begin
  Search.Query.clear;
  Search.Query.add('select caj_nombre, caj_codigo');
  Search.Query.add('from cajas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'caj_Codigo';
  Search.Title := 'Listado de Cajas';
  if Search.execute then
  begin
    QFamiliasfac_caja.value := strtoint(Search.ValueField);
    dbCaja.setfocus;
  end;
end;

procedure TfrmFamilias.QFamiliasfac_cajaGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFamiliasfac_caja.isnull then
  begin
    Text := inttostr(QFamiliasfac_caja.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select caj_nombre');
    dm.Query1.sql.add('from cajas');
    dm.Query1.sql.add('where emp_Codigo = :emp');
    dm.Query1.sql.add('and caj_Codigo = :caj');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('caj').Value := QFamiliasfac_caja.value;
    dm.Query1.open;
    if dm.Query1.recordcount = 0 then
      tcaja.text := ''
    else
      tcaja.text := dm.Query1.fieldbyname('caj_nombre').asstring;
  end
  else
    tcaja.text := '';
end;

procedure TfrmFamilias.btcta1Click(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
    QFamiliasfam_cta_ingreso.Value := Search.ValueField;
    DBEdit6.SetFocus;
  end;
end;

procedure TfrmFamilias.btcta2Click(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
    QFamiliasfam_cta_inventario.Value := Search.ValueField;
    DBEdit7.SetFocus;
  end;
end;

procedure TfrmFamilias.btcta3Click(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
    QFamiliasfam_cta_costo.Value := Search.ValueField;
    DBEdit8.SetFocus;
  end;
end;

procedure TfrmFamilias.QFamiliasfam_cta_ingresoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFamiliasfam_cta_ingreso.IsNull then
  begin
    Text := QFamiliasfam_cta_ingreso.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QFamiliasfam_cta_ingreso.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tcuenta1.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tcuenta1.Text := '';
  end
  else
    tcuenta1.Text := '';
end;

procedure TfrmFamilias.QFamiliasfam_cta_inventarioGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFamiliasfam_cta_inventario.IsNull then
  begin
    Text := QFamiliasfam_cta_inventario.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QFamiliasfam_cta_inventario.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tcuenta2.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tcuenta2.Text := '';
  end
  else
    tcuenta2.Text := '';
end;

procedure TfrmFamilias.QFamiliasfam_cta_costoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFamiliasfam_cta_costo.IsNull then
  begin
    Text := QFamiliasfam_cta_costo.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QFamiliasfam_cta_costo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tcuenta3.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tcuenta3.Text := '';
  end
  else
    tcuenta3.Text := '';
end;

procedure TfrmFamilias.btcta4Click(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_cuenta');
  Search.query.add('from contcatalogo');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'cat_cuenta';
  Search.Title := 'Catálogo de Cuentas';
  if search.execute then
  begin
    QFamiliasfam_cta_descuento.Value := Search.ValueField;
    DBEdit9.SetFocus;
  end;
end;

procedure TfrmFamilias.QFamiliasfam_cta_descuentoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QFamiliasfam_cta_descuento.IsNull then
  begin
    Text := QFamiliasfam_cta_descuento.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_nombre from contcatalogo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and CAT_CUENTA = :cta');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('cta').Value := QFamiliasfam_cta_descuento.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tcuenta4.Text := dm.Query1.FieldByName('cat_nombre').AsString;
    end
    else
      tcuenta4.Text := '';
  end
  else
    tcuenta4.Text := '';
end;

end.
