unit CONT12;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ComCtrls, Grids, DBGrids, ADODB,
  QuerySearchDlgADO, ToolWin, ActnList;

type
  TfrmTiposDoc = class(TForm)
    Search: TQrySearchDlgADO;
    QTipo: TADOQuery;
    dsTipo: TDataSource;
    QTipoEMP_CODIGO: TIntegerField;
    QTipoTDO_CODIGO: TIBStringField;
    QTipoTDO_NOMBRE: TIBStringField;
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
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    gbNCF: TGroupBox;
    DBGrid1: TDBGrid;
    btinsertNCF: TBitBtn;
    btdeleteNCF: TBitBtn;
    QNCF: TADOQuery;
    QNCFemp_codigo: TIntegerField;
    QNCFsuc_codigo: TIntegerField;
    QNCFNCF_Fijo: TStringField;
    QNCFNCF_Inicial: TBCDField;
    QNCFNCF_Final: TBCDField;
    QNCFNCF_Secuencia: TBCDField;
    QNCFNCF_Status: TStringField;
    dsNCF: TDataSource;
    QNCFsuc_nombre: TStringField;
    QNCFCantidad: TFloatField;
    QNCFNCF_Fecha_Creacion: TDateTimeField;
    QNCFtdo_codigo: TStringField;
    btmodificaNCF: TBitBtn;
    QTipoent_numero: TIntegerField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    QNCFFechaVenc: TDateField;
    QNCFVerificaVenc: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFindClick(Sender: TObject);
    procedure QTipoAfterDelete(DataSet: TDataSet);
    procedure QTipoAfterPost(DataSet: TDataSet);
    procedure QTipoNewRecord(DataSet: TDataSet);
    procedure QTipoBeforePost(DataSet: TDataSet);
    procedure dsTipoStateChange(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QTipoTDO_CODIGOChange(Sender: TField);
    procedure QTipoAfterOpen(DataSet: TDataSet);
    procedure btinsertNCFClick(Sender: TObject);
    procedure QNCFCalcFields(DataSet: TDataSet);
    procedure btdeleteNCFClick(Sender: TObject);
    procedure btmodificaNCFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTiposDoc: TfrmTiposDoc;

implementation

uses SIGMA01, SIGMA00, CONT64, cxEdit, cxCalendar, StdConvs;


{$R *.DFM}

procedure TfrmTiposDoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmTiposDoc.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTiposDoc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmTiposDoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmTiposDoc.btFindClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select tdo_nombre, tdo_codigo');
  Search.query.add('from tiposdoc');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  if search.execute then
     QTipo.locate('tdo_codigo',search.valuefield,[]);
end;

procedure TfrmTiposDoc.QTipoAfterDelete(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTiposDoc.QTipoAfterPost(DataSet: TDataSet);
begin
  QTipo.UpdateBatch;
end;

procedure TfrmTiposDoc.QTipoNewRecord(DataSet: TDataSet);
begin
  QTipoEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
end;

procedure TfrmTiposDoc.QTipoBeforePost(DataSet: TDataSet);
begin
  if trim(QTipoTDO_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if trim(QTipoTDO_CODIGO.value) = '' then
  begin
    showmessage('EL CODIGO NO PUEDE ESTAR EN BLANCO');
    DBEdit1.setfocus;
    abort;
  end;
end;

procedure TfrmTiposDoc.dsTipoStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsTipo.State = dsbrowse;
  DBEdit1.Enabled   := dsTipo.State <> dsEdit;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmTiposDoc.btPostClick(Sender: TObject);
begin
  QTipo.post;
end;

procedure TfrmTiposDoc.btCancelClick(Sender: TObject);
begin
  QTipo.cancel;
end;

procedure TfrmTiposDoc.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QTipo.delete;
end;

procedure TfrmTiposDoc.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QTipo.edit;
end;

procedure TfrmTiposDoc.btInsertClick(Sender: TObject);
begin
  DBEdit1.setfocus;
  QTipo.insert;
end;

procedure TfrmTiposDoc.btpriorClick(Sender: TObject);
begin
  if not QTipo.bof then
    QTipo.prior;
end;

procedure TfrmTiposDoc.btnextClick(Sender: TObject);
begin
  if not QTipo.eof then
    QTipo.next;
end;

procedure TfrmTiposDoc.FormActivate(Sender: TObject);
begin
  if not QTipo.active then
  begin
    QTipo.open;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select usu_crea_NCF from usuarios');
    dm.Query1.SQL.Add('where usu_codigo = :usu');
    dm.Query1.Parameters.ParamByName('usu').Value := dm.Usuario;
    dm.Query1.Open;
    btinsertNCF.Visible   := dm.Query1.FieldByName('usu_crea_NCF').AsString = 'True';
    btdeleteNCF.Visible   := dm.Query1.FieldByName('usu_crea_NCF').AsString = 'True';
    btmodificaNCF.Visible := dm.Query1.FieldByName('usu_crea_NCF').AsString = 'True';
  end;

  frmMain.ExportXLS.Sheets[1].DataSet := QTipo;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmTiposDoc.FormCreate(Sender: TObject);
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

procedure TfrmTiposDoc.QTipoTDO_CODIGOChange(Sender: TField);
begin
  if not QTipoTDO_CODIGO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_codigo from tiposdoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_codigo = :num');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value  := QTipoTDO_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      MessageDlg('ESTE CODIGO EXISTE',mtError,[mbok],0);
      QTipoTDO_CODIGO.Clear;
      Abort;
    end;
  end;
end;

procedure TfrmTiposDoc.QTipoAfterOpen(DataSet: TDataSet);
begin
  if not QNCF.Active then QNCF.Open;
end;

procedure TfrmTiposDoc.btinsertNCFClick(Sender: TObject);
begin
  Application.CreateForm(tfrmNCF, frmNCF);
  frmNCF.Label6.visible := false;
  frmNCF.edcaja.visible := false;
  frmNCF.DBLookupComboBox2.KeyValue := frmNCF.QSucursalsuc_codigo.Value;
  frmNCF.ShowModal;
  if frmNCF.ModalResult = mrOk then
  begin
    if Trim(frmNCF.edActual.Text) = '' then frmNCF.edActual.Text := Trim(frmNCF.edInicial.Text);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into NCF (emp_codigo, suc_codigo,');
    dm.Query1.SQL.Add('tdo_codigo, NCF_Fijo, NCF_Inicial, NCF_Final,');
    dm.Query1.SQL.Add('NCF_Secuencia, NCF_Status, NCF_Fecha_Creacion, FechaVenc, VerificaVenc)');
    dm.Query1.SQL.Add('select :emp, :suc, :tdo, :fijo, :ini, :fin, :sec, :st, getdate(), :FechaVenc, :VerificaVenc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    if DM.QContabpar_NCF_Sucursal.Value = True then
    dm.Query1.Parameters.ParamByName('suc').Value  := frmNCF.DBLookupComboBox2.KeyValue else
    dm.Query1.Parameters.ParamByName('suc').Value  := 1;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QTipoTDO_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fijo').Value := Trim(frmNCF.edFijo.Text);
    dm.Query1.Parameters.ParamByName('ini').Value  := StrToFloat(Trim(frmNCF.edInicial.Text));
    dm.Query1.Parameters.ParamByName('fin').Value  := StrToFloat(Trim(frmNCF.edFinal.Text));
    dm.Query1.Parameters.ParamByName('sec').Value  := StrToFloat(Trim(frmNCF.edActual.Text));
    dm.Query1.Parameters.ParamByName('st').Value   := 'ACT';
    if frmNCF.ChkB_Vencimiento.Checked = True then
    dm.Query1.Parameters.ParamByName('FechaVenc').Value := frmNCF.DEdt_Venc.Date else
    dm.Query1.Parameters.ParamByName('FechaVenc').Value := '1900-01-01';
    dm.Query1.Parameters.ParamByName('VerificaVenc').Value  := frmNCF.ChkB_Vencimiento.Checked;
    dm.Query1.ExecSQL;
    QNCF.Close;
    QNCF.Open;
  end;
end;

procedure TfrmTiposDoc.QNCFCalcFields(DataSet: TDataSet);
begin
  QNCFCantidad.Value := (QNCFNCF_Final.Value - QNCFNCF_Inicial.Value) + 1;
end;

procedure TfrmTiposDoc.btdeleteNCFClick(Sender: TObject);
begin
  if MessageDlg('Está seguro?', mtConfirmation, [mbyes, mbno], 0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from NCF');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.SQL.Add('and ncf_fijo = :fijo');
    dm.Query1.SQL.Add('and ncf_inicial = :ini');
    dm.Query1.SQL.Add('and ncf_final = :fin');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value  := QNCFsuc_codigo.Value;
    dm.Query1.Parameters.ParamByName('fijo').Value := QNCFNCF_Fijo.Value;
    dm.Query1.Parameters.ParamByName('ini').Value  := QNCFNCF_Inicial.Value;
    dm.Query1.Parameters.ParamByName('fin').Value  := QNCFNCF_Final.Value;
    dm.Query1.ExecSQL;

    QNCF.Close;
    QNCF.Open;
  end;
end;

procedure TfrmTiposDoc.btmodificaNCFClick(Sender: TObject);
var
  fij : string;
  oldNCF:String;
begin
  oldNCF :=  QNCFNCF_Fijo.AsString;
  Application.CreateForm(tfrmNCF, frmNCF);
  frmNCF.DBLookupComboBox2.KeyValue := QNCFsuc_codigo.Value;
  frmNCF.DBLookupComboBox2.visible := true; //false;
  frmNCF.label3.visible := false;
  frmNCF.edCaja.ReadOnly := True;
  //frmNCF.edFijo.ReadOnly := True;
  frmNCF.edFijo.Text := QNCFNCF_Fijo.AsString;
  frmNCF.edInicial.Text := formatfloat('00000000',QNCFNCF_Inicial.AsFloat);
  frmNCF.edFinal.Text   := formatfloat('00000000',QNCFNCF_Final.AsFloat);
  frmNCF.edActual.Text  := formatfloat('00000000',QNCFNCF_Secuencia.AsFloat);
  fij := frmNCF.edFijo.Text;
  frmNCF.DEdt_Venc.Date := QNCFFechaVenc.AsDateTime;
  frmNCF.ChkB_Vencimiento.Checked := QNCFVerificaVenc.Value;
  frmNCF.ShowModal;

  if frmNCF.ModalResult = mrOk then
  begin
    if Trim(frmNCF.edActual.Text) = '' then frmNCF.edActual.Text := Trim(frmNCF.edInicial.Text);

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update NCF set NCF_Fijo = :fij, NCF_Inicial = :ini, NCF_Final = :fin,');
    dm.Query1.SQL.Add('FechaVenc = :FechaVenc, VerificaVenc = :VerificaVenc,');
    dm.Query1.SQL.Add('NCF_Secuencia = :sec, NCF_Status = :st');
    dm.Query1.SQL.Add('where emp_codigo = :emp and suc_codigo = :suc and tdo_codigo = :tdo');
    dm.Query1.SQL.Add('and ncf_fijo = :oldNCF');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    if dm.QContabpar_NCF_Sucursal.Value = True then
    dm.Query1.Parameters.ParamByName('suc').Value  := frmNCF.DBLookupComboBox2.KeyValue else
    dm.Query1.Parameters.ParamByName('suc').Value  := 1;
    dm.Query1.Parameters.ParamByName('tdo').Value  := QTipoTDO_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('fij').Value := Trim(frmNCF.edFijo.Text);
    dm.Query1.Parameters.ParamByName('oldNCF').Value := Trim(oldNCF);
    dm.Query1.Parameters.ParamByName('VerificaVenc').Value := frmNCF.ChkB_Vencimiento.Checked;
    if frmNCF.ChkB_Vencimiento.Checked = True then
    dm.Query1.Parameters.ParamByName('FechaVenc').Value := frmNCF.DEdt_Venc.Date else
    dm.Query1.Parameters.ParamByName('FechaVenc').Value := '1900-01-01';
    dm.Query1.Parameters.ParamByName('ini').Value  := StrToFloat(Trim(frmNCF.edInicial.Text));
    dm.Query1.Parameters.ParamByName('fin').Value  := StrToFloat(Trim(frmNCF.edFinal.Text));
    dm.Query1.Parameters.ParamByName('sec').Value  := StrToFloat(Trim(frmNCF.edActual.Text));
    dm.Query1.Parameters.ParamByName('st').Value   := 'ACT';
    dm.Query1.ExecSQL;

    QNCF.Close;
    QNCF.Open;
  end;
end;

end.
