unit RH27;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmRequerimientoPersonal = class(TForm)
    Search: TQrySearchDlgADO;
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QNiveles: TADOQuery;
    QNivelesemp_codigo: TIntegerField;
    QNivelesniv_codigo: TIntegerField;
    QNivelesniv_nombre: TStringField;
    dsNiveles: TDataSource;
    QClasif: TADOQuery;
    QClasifemp_codigo: TIntegerField;
    QClasifniv_nombre: TStringField;
    dsClasif: TDataSource;
    QPosicion: TADOQuery;
    QPosicionpos_codigo: TIntegerField;
    QPosicioncla_nombre: TStringField;
    dsPosicion: TDataSource;
    QReq: TADOQuery;
    QReqemp_codigo: TIntegerField;
    QReqreq_numero: TIntegerField;
    QReqsuc_codigo: TIntegerField;
    QReqreq_fecha_desde: TDateTimeField;
    QReqreq_fecha_hasta: TDateTimeField;
    QReqreq_status: TStringField;
    QReqreq_comentario: TMemoField;
    QReqpos_codigo: TIntegerField;
    QReqniv_codigo: TIntegerField;
    QReqcla_codigo: TIntegerField;
    DBEdit1: TDBEdit;
    dsReq: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    QReqreq_solicitado_por: TStringField;
    QReqreq_personas: TIntegerField;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    QClasifcla_nivel: TIntegerField;
    QListado: TADOQuery;
    QListadoPosicion: TStringField;
    QListadoClasificacion: TStringField;
    dsListado: TDataSource;
    QListadoreq_fecha_desde: TDateTimeField;
    QListadoreq_fecha_hasta: TDateTimeField;
    QListadoreq_personas: TIntegerField;
    QListadoreq_solicitado_por: TStringField;
    QListadoreq_numero: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsReqStateChange(Sender: TObject);
    procedure QReqBeforePost(DataSet: TDataSet);
    procedure QReqNewRecord(DataSet: TDataSet);
    procedure QReqAfterPost(DataSet: TDataSet);
    procedure QReqAfterDelete(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRequerimientoPersonal: TfrmRequerimientoPersonal;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmRequerimientoPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmRequerimientoPersonal.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRequerimientoPersonal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmRequerimientoPersonal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if (ActiveControl.ClassType <> TDBMemo) and (ActiveControl.ClassType <> TDBGrid) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmRequerimientoPersonal.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select req_numero, req_solicitado_por, req_fecha_desde');
  Search.Query.Add('from requerimiento_personal');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.ResultField := 'req_numero';
  Search.Title := 'Requerimientos de Personal';
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Número');
  Search.AliasFields.Add('Solicitado por');
  Search.AliasFields.Add('Fecha');
  if search.execute then
  begin
    QReq.Close;
    QReq.Parameters.ParamByName('num').Value := StrToInt(Search.ValueField);
    QReq.Open;
    PageControl1.ActivePageIndex := 0;
  end;
end;

procedure TfrmRequerimientoPersonal.btPostClick(Sender: TObject);
begin
  QReq.post;
end;

procedure TfrmRequerimientoPersonal.btCancelClick(Sender: TObject);
begin
  QReq.cancel;
end;

procedure TfrmRequerimientoPersonal.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QReq.delete;
end;

procedure TfrmRequerimientoPersonal.btEditClick(Sender: TObject);
begin
  DBEdit1.setfocus;
  QReq.edit;
end;

procedure TfrmRequerimientoPersonal.btInsertClick(Sender: TObject);
begin
  DBEdit1.setfocus;
  QReq.insert;
end;

procedure TfrmRequerimientoPersonal.btpriorClick(Sender: TObject);
begin
  if not QReq.Bof then QReq.prior;
end;

procedure TfrmRequerimientoPersonal.btnextClick(Sender: TObject);
begin
  if not QReq.eof then QReq.next;
end;

procedure TfrmRequerimientoPersonal.FormActivate(Sender: TObject);
begin
  if not QReq.active then
  begin
    QNiveles.Open;
    QClasif.Open;
    QPosicion.open;

    QReq.Parameters.ParamByName('num').Value := -1;
    QReq.Open;

    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QReq;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmRequerimientoPersonal.FormCreate(Sender: TObject);
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

procedure TfrmRequerimientoPersonal.dsReqStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsReq.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmRequerimientoPersonal.QReqBeforePost(DataSet: TDataSet);
begin
  if trim(QReqreq_solicitado_por.value) = '' then
  begin
    showmessage('DEBE ESPECIFICAR QUIEN SOLICITA');
    DBEdit1.setfocus;
    abort;
  end;
  if QReq.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(req_numero),0) as maximo');
    dm.query1.sql.add('from requerimiento_personal');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QReqreq_numero.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmRequerimientoPersonal.QReqNewRecord(DataSet: TDataSet);
begin
  QReqemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QReqreq_status.Value := 'PEN';
  QReqreq_fecha_desde.Value := Date;
  QReqsuc_codigo.Value := QSucursalsuc_codigo.Value;
  QReqniv_codigo.Value := QNivelesniv_codigo.Value;
end;

procedure TfrmRequerimientoPersonal.QReqAfterPost(DataSet: TDataSet);
begin
  QReq.UpdateBatch;
end;

procedure TfrmRequerimientoPersonal.QReqAfterDelete(DataSet: TDataSet);
begin
  QReq.UpdateBatch;
end;

procedure TfrmRequerimientoPersonal.DBGrid1DblClick(Sender: TObject);
begin
  QReq.Close;
  QReq.Parameters.ParamByName('num').Value := QListadoreq_numero.Value;
  QReq.Open;
  PageControl1.ActivePageIndex := 0;
end;

end.
