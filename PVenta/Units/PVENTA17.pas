unit PVENTA17;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, Db,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, ComCtrls, ToolWin, ActnList;

type
  TfrmOfertas = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    PGrid: TDBGrid;
    Label4: TLabel;
    QOfertas: TADOQuery;
    QOfertasEMP_CODIGO: TIntegerField;
    QOfertasOFE_CODIGO: TIntegerField;
    QOfertasOFE_NOMBRE: TIBStringField;
    QOfertasOFE_FECHA1: TDateTimeField;
    QOfertasOFE_FECHA2: TDateTimeField;
    dsOfertas: TDataSource;
    Search: TQrySearchDlgADO;
    QOProductos: TADOQuery;
    QOProductosEMP_CODIGO: TIntegerField;
    QOProductosOFE_CODIGO: TIntegerField;
    QOProductosPRO_CODIGO: TIntegerField;
    QOProductosOPR_PRECIO: TFloatField;
    QOProductosOPR_CANTIDAD: TFloatField;
    dsOProductos: TDataSource;
    btOProd: TBitBtn;
    PanelProd: TPanel;
    Label5: TLabel;
    btProducto: TSpeedButton;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    QOProductosPRO_RORIGINAL: TIBStringField;
    QOProductosPRO_RFABRIC: TIBStringField;
    DBNavigator1: TDBNavigator;
    pbtpost: TSpeedButton;
    pbtinsert: TSpeedButton;
    pbtedit: TSpeedButton;
    pbtdelete: TSpeedButton;
    pbtcancel: TSpeedButton;
    QProductos: TADOQuery;
    QProductosPRO_CODIGO: TIntegerField;
    QProductosPRO_NOMBRE: TIBStringField;
    QOProductosDescrip: TStringField;
    QOProductosOPR_PORCADA: TFloatField;
    DBEdit8: TDBEdit;
    btFamilia: TSpeedButton;
    DBEdit12: TDBEdit;
    tFamilia: TEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    QOfertasFAM_CODIGO: TIntegerField;
    QOfertasOFE_DESCUENTO: TFloatField;
    QOfertasOFE_TIPO: TIBStringField;
    QOProductosOPR_DESCUENTO: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    cbTipo: TDBRadioGroup;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QOfertasAfterDelete(DataSet: TDataSet);
    procedure QOfertasAfterPost(DataSet: TDataSet);
    procedure QOfertasNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure dsOfertasStateChange(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure QOfertasBeforePost(DataSet: TDataSet);
    procedure btOProdClick(Sender: TObject);
    procedure btProductoClick(Sender: TObject);
    procedure dsOProductosStateChange(Sender: TObject);
    procedure pbtinsertClick(Sender: TObject);
    procedure pbteditClick(Sender: TObject);
    procedure pbtdeleteClick(Sender: TObject);
    procedure pbtpostClick(Sender: TObject);
    procedure pbtcancelClick(Sender: TObject);
    procedure QOProductosAfterDelete(DataSet: TDataSet);
    procedure QOProductosAfterPost(DataSet: TDataSet);
    procedure QOProductosNewRecord(DataSet: TDataSet);
    procedure QOProductosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure QOfertasFAM_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dsOfertasDataChange(Sender: TObject; Field: TField);
    procedure cbTipoClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Producto : integer;
  end;

var
  frmOfertas: TfrmOfertas;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmOfertas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmOfertas.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOfertas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmOfertas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.classtype <> tdbgrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmOfertas.QOfertasAfterDelete(DataSet: TDataSet);
begin
  QOfertas.UpdateBatch;
end;

procedure TfrmOfertas.QOfertasAfterPost(DataSet: TDataSet);
begin
  QOfertas.UpdateBatch;
end;

procedure TfrmOfertas.QOfertasNewRecord(DataSet: TDataSet);
begin
  QOfertasEMP_CODIGO.value := dm.vp_cia;
  QOfertasOFE_TIPO.Value := 'G';
end;

procedure TfrmOfertas.FormActivate(Sender: TObject);
begin
  if not QOfertas.active then
  begin
    QOfertas.open;
    QOProductos.open;
    QProductos.open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QOfertas;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmOfertas.btPostClick(Sender: TObject);
begin
  QOfertas.post;
end;

procedure TfrmOfertas.btCancelClick(Sender: TObject);
begin
  QOfertas.cancel;
end;

procedure TfrmOfertas.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QOfertas.delete;
end;

procedure TfrmOfertas.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QOfertas.edit;
end;

procedure TfrmOfertas.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QOfertas.insert;;
end;

procedure TfrmOfertas.btFindClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.ResultField := 'ofe_codigo';
  Search.Title := 'Listado de Ofertas';
  Search.query.clear;
  Search.query.add('select ofe_nombre, ofe_codigo');
  Search.query.add('from ofertas');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QOfertas.locate('ofe_codigo',search.valuefield,[]);
end;

procedure TfrmOfertas.dsOfertasStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsOfertas.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmOfertas.btPriorClick(Sender: TObject);
begin
  if not QOfertas.bof then
    QOfertas.prior;
end;

procedure TfrmOfertas.btNextClick(Sender: TObject);
begin
  if not QOfertas.eof then
    QOfertas.next;
end;

procedure TfrmOfertas.QOfertasBeforePost(DataSet: TDataSet);
begin
  if trim(QOfertasOFE_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QOfertas.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(ofe_codigo),0) as maximo');
    dm.query1.sql.add('from ofertas');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.query1.open;
    QOfertasOFE_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmOfertas.btOProdClick(Sender: TObject);
begin
  if not PanelProd.visible then
  begin
    PGrid.Visible     := false;
    PanelProd.visible := true;
    btOProd.caption   := 'Listado de Productos de la Oferta';
  end
  else
  begin
    PGrid.Visible     := true;
    PanelProd.visible := false;
    btOProd.caption   := 'Introducir Productos de la Oferta';
  end;
end;

procedure TfrmOfertas.btProductoClick(Sender: TObject);
begin
  search.Query.clear;
  search.AliasFields.clear;
  search.Query.add('select pro_nombre, pro_codigo');
  search.Query.add('from productos');
  search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  search.AliasFields.add('Nombre');
  search.AliasFields.add('Codigo');
  search.AliasFields.add('Ref. Original');
  search.AliasFields.add('Ref. Fabric.');
  search.ResultField := 'pro_codigo';
  search.Title := 'Listado de Productos';
  if search.execute then
  begin
    QOProductosPRO_CODIGO.value := strtoint(search.valuefield);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre, pro_codigo, pro_roriginal,');
    dm.Query1.sql.add('pro_rfabric');
    dm.Query1.sql.add('from productos');
    dm.Query1.sql.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
    dm.Query1.sql.add('and pro_codigo = '+search.valuefield);
    dm.Query1.open;
    Producto := dm.Query1.fieldbyname('pro_codigo').asinteger;
  end;
end;

procedure TfrmOfertas.dsOProductosStateChange(Sender: TObject);
begin
  pbtInsert.enabled  := dsOProductos.State = dsbrowse;
  pbtEdit.enabled    := pbtInsert.enabled;
  pbtDelete.enabled  := pbtInsert.enabled;
  pbtPost.enabled    := not pbtInsert.enabled;
  pbtCancel.enabled  := not pbtInsert.enabled;
  btProducto.enabled := not pbtInsert.enabled;
end;

procedure TfrmOfertas.pbtinsertClick(Sender: TObject);
begin
  DBEdit5.setfocus;
  QOProductos.append;
end;

procedure TfrmOfertas.pbteditClick(Sender: TObject);
begin
  DBEdit5.setfocus;
  QOProductos.edit;
end;

procedure TfrmOfertas.pbtdeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QOProductos.delete;
end;

procedure TfrmOfertas.pbtpostClick(Sender: TObject);
begin
  QOProductos.post;
end;

procedure TfrmOfertas.pbtcancelClick(Sender: TObject);
begin
  QOProductos.cancel;
end;

procedure TfrmOfertas.QOProductosAfterDelete(DataSet: TDataSet);
begin
  QOProductos.UpdateBatch;
end;

procedure TfrmOfertas.QOProductosAfterPost(DataSet: TDataSet);
begin
  QOProductos.UpdateBatch;
end;

procedure TfrmOfertas.QOProductosNewRecord(DataSet: TDataSet);
begin
  QOProductosEMP_CODIGO.value := dm.vp_cia;
  QOProductosOFE_CODIGO.value := QOfertasOFE_CODIGO.value;
end;

procedure TfrmOfertas.QOProductosBeforePost(DataSet: TDataSet);
begin
  if QOProductos.State = dsInsert then
    QOProductosPRO_CODIGO.value := Producto;
end;

procedure TfrmOfertas.FormCreate(Sender: TObject);
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

procedure TfrmOfertas.btFamiliaClick(Sender: TObject);
begin
  Search.Title := 'Listado de Familias';
  Search.ResultField := 'fam_codigo';
  Search.query.clear;
  Search.query.add('select fam_nombre, fam_codigo');
  Search.query.add('from familias');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  if search.execute then
     QOfertasFAM_CODIGO.value := strtoint(search.valuefield);
end;

procedure TfrmOfertas.QOfertasFAM_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QOfertasFAM_CODIGO.isnull then
  begin
    text := inttostr(QOfertasFAM_CODIGO.value);
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fam_nombre from familias');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and fam_Codigo = :fam');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('fam').Value := QOfertasFAM_CODIGO.value;
    dm.Query1.open;
    if dm.Query1.RecordCount > 0 then
      tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring
    else
      tFamilia.text := '';
  end
  else
    tFamilia.text := '';
end;

procedure TfrmOfertas.dsOfertasDataChange(Sender: TObject; Field: TField);
begin
  btOProd.Enabled   := (dsOfertas.State = dsBrowse) and
                       (cbTipo.ItemIndex = 2);
  btFamilia.Enabled := (dsOfertas.State <> dsBrowse) and
                       (cbTipo.ItemIndex = 1);
  DBEdit12.Enabled := (dsOfertas.State <> dsBrowse) and
                       (cbTipo.ItemIndex = 1);
  DBEdit9.Enabled := (dsOfertas.State <> dsBrowse) and
                       (cbTipo.ItemIndex <= 1);
end;

procedure TfrmOfertas.cbTipoClick(Sender: TObject);
begin
  DBEdit2.SetFocus;
  btOProd.Enabled   := (dsOfertas.State = dsBrowse) and
                       (cbTipo.ItemIndex = 2);
  btFamilia.Enabled := (dsOfertas.State <> dsBrowse) and
                       (cbTipo.ItemIndex = 1);
  DBEdit12.Enabled := (dsOfertas.State <> dsBrowse) and
                       (cbTipo.ItemIndex = 1);
  DBEdit9.Enabled := (dsOfertas.State <> dsBrowse) and
                       (cbTipo.ItemIndex <= 1);
end;

procedure TfrmOfertas.FormPaint(Sender: TObject);
begin
  frmOfertas.Top := 5;
end;

end.
