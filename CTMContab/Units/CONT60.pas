unit CONT60;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmActivos = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    QActivos: TADOQuery;
    dsActivos: TDataSource;
    Search: TQrySearchDlgADO;
    btCat: TSpeedButton;
    Label3: TLabel;
    tCat: TEdit;
    DBEdit3: TDBEdit;
    QActivosemp_codigo: TIntegerField;
    QActivosact_codigo: TStringField;
    QActivosact_numeroserie: TStringField;
    QActivosact_referencia: TStringField;
    QActivosact_nombre: TStringField;
    QActivosact_fecadquisicion: TDateTimeField;
    QActivosact_costoadquisicion: TBCDField;
    QActivosact_tasa: TBCDField;
    QActivosact_valorlibro: TBCDField;
    QActivosact_depresiacionacumulada: TBCDField;
    QActivosact_valorresidual: TBCDField;
    QActivosact_documento: TStringField;
    QActivosact_depresiacionactual: TBCDField;
    QActivosact_depresiacionmes: TBCDField;
    QActivosdep_codigo: TIntegerField;
    QActivosfam_codigo: TIntegerField;
    QActivosmar_codigo: TIntegerField;
    QActivoscat_codigo: TIntegerField;
    QActivossup_codigo: TIntegerField;
    QActivosact_procedencia: TStringField;
    QActivosact_nuevousado: TStringField;
    QActivosusu_codigo: TIntegerField;
    QActivosact_tipo: TStringField;
    QActivosact_status: TStringField;
    QActivosact_ubicacion: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    btDep: TSpeedButton;
    Label6: TLabel;
    tDepto: TEdit;
    DBEdit6: TDBEdit;
    btFam: TSpeedButton;
    Label7: TLabel;
    tFam: TEdit;
    DBEdit7: TDBEdit;
    btMar: TSpeedButton;
    Label8: TLabel;
    tMarca: TEdit;
    DBEdit8: TDBEdit;
    btProv: TSpeedButton;
    Label9: TLabel;
    tProv: TEdit;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
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
    QActivosact_meses: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QActivosAfterDelete(DataSet: TDataSet);
    procedure QActivosAfterPost(DataSet: TDataSet);
    procedure QActivosNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsActivosStateChange(Sender: TObject);
    procedure QActivosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btCatClick(Sender: TObject);
    procedure btDepClick(Sender: TObject);
    procedure btFamClick(Sender: TObject);
    procedure btMarClick(Sender: TObject);
    procedure btProvClick(Sender: TObject);
    procedure QActivosdep_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QActivosfam_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QActivosmar_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QActivossup_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormPaint(Sender: TObject);
    procedure QActivosact_codigoChange(Sender: TField);
    procedure QActivoscat_codigoChange(Sender: TField);
    procedure QActivoscat_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmActivos: TfrmActivos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmActivos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmActivos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmActivos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmActivos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmActivos.QActivosAfterDelete(DataSet: TDataSet);
begin
  QActivos.UpdateBatch;
end;

procedure TfrmActivos.QActivosAfterPost(DataSet: TDataSet);
begin
  QActivos.UpdateBatch;
end;

procedure TfrmActivos.QActivosNewRecord(DataSet: TDataSet);
begin
  QActivosemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QActivosusu_codigo.Value := dm.Usuario;
  QActivosact_status.Value := 'ACT';
  QActivosact_tipo.Value   := 'D';
  QActivosact_nuevousado.Value := 'N';
  QActivosact_fecadquisicion.Value := Date;
  QActivosusu_codigo.Value := dm.Usuario;
end;

procedure TfrmActivos.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select act_nombre, act_codigo');
  Search.Query.Add('from activos');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
     QActivos.locate('act_codigo',search.valuefield,[]);
end;

procedure TfrmActivos.btPostClick(Sender: TObject);
begin
  QActivos.post;
end;

procedure TfrmActivos.btCancelClick(Sender: TObject);
begin
  QActivos.cancel;
end;

procedure TfrmActivos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QActivos.delete;
end;

procedure TfrmActivos.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QActivos.edit;
end;

procedure TfrmActivos.btInsertClick(Sender: TObject);
begin
  DBEdit1.setfocus;
  QActivos.insert;
end;

procedure TfrmActivos.btpriorClick(Sender: TObject);
begin
  if not QActivos.Bof then QActivos.prior;
end;

procedure TfrmActivos.btnextClick(Sender: TObject);
begin
  if not QActivos.eof then QActivos.next;
end;

procedure TfrmActivos.FormActivate(Sender: TObject);
begin
  if not QActivos.active then QActivos.open;
  frmMain.ExportXLS.Sheets[1].DataSet := QActivos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmActivos.dsActivosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsActivos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
  btCat.enabled     := not btInsert.enabled;
  btDep.enabled     := not btInsert.enabled;
  btFam.enabled     := not btInsert.enabled;
  btProv.enabled    := not btInsert.enabled;
  btMar.enabled     := not btInsert.enabled;
  btPrint.Enabled   := btInsert.enabled;
  dbedit4.Enabled   := dsActivos.State = dsInsert;
end;

procedure TfrmActivos.QActivosBeforePost(DataSet: TDataSet);
begin
  if trim(QActivosact_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
end;

procedure TfrmActivos.FormCreate(Sender: TObject);
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

procedure TfrmActivos.btCatClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select cat_nombre, cat_codigo');
  Search.query.add('from categoria_activos');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'cat_codigo';
  Search.Title := 'Categoria Activos';
  if search.execute then
  begin
     QActivoscat_codigo.Value := StrToInt(Search.ValueField);
     DBEdit3.SetFocus;
  end;
end;

procedure TfrmActivos.btDepClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select dep_nombre, dep_codigo');
  Search.query.add('from departamentos');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.query.add('and dep_tipo = '+#39+'A'+#39);
  Search.ResultField := 'dep_codigo';
  Search.Title := 'Departamentos';
  if search.execute then
  begin
     QActivosdep_codigo.Value := StrToInt(Search.ValueField);
     DBEdit6.SetFocus;
  end;
end;

procedure TfrmActivos.btFamClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select fam_nombre, fam_codigo');
  Search.query.add('from familia_activos');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'fam_codigo';
  Search.Title := 'Familia de activos';
  if search.execute then
  begin
     QActivosfam_codigo.Value := StrToInt(Search.ValueField);
     DBEdit7.SetFocus;
  end;
end;

procedure TfrmActivos.btMarClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select mar_nombre, mar_codigo');
  Search.query.add('from marcas_activo');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'mar_codigo';
  Search.Title := 'Marca de activos';
  if search.execute then
  begin
     QActivosmar_codigo.Value := StrToInt(Search.ValueField);
     DBEdit8.SetFocus;
  end;
end;

procedure TfrmActivos.btProvClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select sup_nombre, sup_codigo');
  Search.query.add('from Proveedores');
  Search.query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.ResultField := 'sup_codigo';
  Search.Title := 'Proveedores';
  if search.execute then
  begin
     QActivossup_codigo.Value := StrToInt(Search.ValueField);
     DBEdit9.SetFocus;
  end;
end;

procedure TfrmActivos.QActivosdep_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QActivosdep_codigo.IsNull then
  begin
    Text := QActivosdep_codigo.AsString;
    dm.Query1.Close;
    dm.Query1.SQL.clear;
    dm.Query1.SQL.Add('select dep_nombre from departamentos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and dep_codigo = :dep');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('dep').Value := QActivosdep_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
       tDepto.Text := dm.Query1.FieldByName('dep_nombre').AsString
    else
       tDepto.Text := '';
  end
  else
    tDepto.Text := '';
end;

procedure TfrmActivos.QActivosfam_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QActivosfam_codigo.IsNull then
  begin
    Text := QActivosfam_codigo.AsString;
    dm.Query1.Close;
    dm.Query1.SQL.clear;
    dm.Query1.SQL.Add('select fam_nombre from familia_activos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and fam_codigo = :fam');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fam').Value := QActivosfam_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
       tFam.Text := dm.Query1.FieldByName('fam_nombre').AsString
    else
       tFam.Text := '';
  end
  else
    tFam.Text := '';
end;

procedure TfrmActivos.QActivosmar_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QActivosmar_codigo.IsNull then
  begin
    Text := QActivosmar_codigo.AsString;
    dm.Query1.Close;
    dm.Query1.SQL.clear;
    dm.Query1.SQL.Add('select mar_nombre from marcas_activo');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and mar_codigo = :mar');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('mar').Value := QActivosmar_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
       tMarca.Text := dm.Query1.FieldByName('mar_nombre').AsString
    else
       tMarca.Text := '';
  end
  else
    tMarca.Text := '';
end;

procedure TfrmActivos.QActivossup_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QActivossup_codigo.IsNull then
  begin
    Text := QActivossup_codigo.AsString;
    dm.Query1.Close;
    dm.Query1.SQL.clear;
    dm.Query1.SQL.Add('select sup_nombre from proveedores');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sup_codigo = :sup');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('sup').Value := QActivossup_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
       tProv.Text := dm.Query1.FieldByName('sup_nombre').AsString
    else
       tProv.Text := '';
  end
  else
    tProv.Text := '';
end;

procedure TfrmActivos.FormPaint(Sender: TObject);
begin
  frmActivos.Top := 3;
end;

procedure TfrmActivos.QActivosact_codigoChange(Sender: TField);
begin
  if not QActivosact_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select 1 from Activos where act_codigo = :cod');
    dm.Query1.SQL.Add('and emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cod').Value := QActivosact_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      MessageDlg('ESTE ACTIVO YA EXISTE',mtError,[mbok],0);
      QActivosact_codigo.Clear;
      DBEdit1.SetFocus;
    end;
  end;
end;

procedure TfrmActivos.QActivoscat_codigoChange(Sender: TField);
begin
  if not QActivoscat_codigo.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.clear;
    dm.Query1.SQL.Add('select cat_nombre, CAT_DEPRECIACION from categoria_activos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_codigo = :cat');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cat').Value := QActivoscat_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
       tCat.Text := dm.Query1.FieldByName('cat_nombre').AsString;
       QActivosact_tasa.Value := dm.Query1.FieldByName('CAT_DEPRECIACION').AsFloat;
    end
    else
       tCat.Text := '';
  end
  else
    tCat.Text := '';
end;

procedure TfrmActivos.QActivoscat_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QActivoscat_codigo.IsNull then
  begin
    Text := IntToStr(QActivoscat_codigo.value);
    dm.Query1.Close;
    dm.Query1.SQL.clear;
    dm.Query1.SQL.Add('select cat_nombre, CAT_DEPRECIACION from categoria_activos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cat_codigo = :cat');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cat').Value := QActivoscat_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
       tCat.Text := dm.Query1.FieldByName('cat_nombre').AsString
    else
       tCat.Text := '';
  end
  else
    tCat.Text := '';
end;

end.
