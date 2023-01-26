unit PENVIO02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid;

type
  TfrmEnvioM2 = class(TForm)
    pButton: TPanel;
    DBGrid1: TDBGrid;
    QEn: TADOQuery;
    dsEnvios: TDataSource;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Button1: TButton;
    Label5: TLabel;
    cbbFicha: TComboBox;
    EdtNombreChofer: TEdit;
    Label4: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QEnseleccion: TBooleanField;
    QEnfac_numero: TIntegerField;
    QEnIDEnvio: TIntegerField;
    QEnFecha: TDateTimeField;
    QEnNombre_envia: TStringField;
    QEnNombre_Recibe: TStringField;
    QEnDescripcion: TStringField;
    cxGrid1DBTableView1seleccion: TcxGridDBColumn;
    cxGrid1DBTableView1fac_numero: TcxGridDBColumn;
    cxGrid1DBTableView1IDEnvio: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_envia: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_Recibe: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    QEnCiudad_Destino: TStringField;
    QEnenv_status: TStringField;
    QEnTelefono_Envia: TStringField;
    QEnTelefono_Recibe: TStringField;
    QEnNombreChofer: TStringField;
    QEnSUC_CODIGO: TIntegerField;
    QEnFicha_id: TIntegerField;
    QEnDescripcionN: TStringField;
    QEnDescripcion2: TStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QEnBeforePost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1Exit(Sender: TObject);
    procedure QEnCalcFields(DataSet: TDataSet);
  private
    GridOriginalOptions:tDBGridOptions;
  public
    estado:string;
  end;

var
  frmEnvioM2: TfrmEnvioM2;
  vALL:Boolean=true;

implementation

uses SIGMA01, PVENTA230;

{$R *.dfm}

procedure TfrmEnvioM2.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
   CtrlState: array[Boolean] of integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED) ;
begin
  if (Column.Field.DataType=ftBoolean) then
  begin
    DBGrid1.Canvas.FillRect(Rect) ;
    if (VarIsNull(Column.Field.Value)) then
      DrawFrameControl(DBGrid1.Canvas.Handle,Rect, DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_INACTIVE)
    else
      DrawFrameControl(DBGrid1.Canvas.Handle,Rect, DFC_BUTTON, CtrlState[Column.Field.AsBoolean]); 
  end;
end;

procedure TfrmEnvioM2.DBGrid1CellClick(Column: TColumn);
begin
 if (Column.Field.DataType=ftBoolean) then
  begin
    Column.Grid.DataSource.DataSet.Edit;
    Column.Field.Value:= not Column.Field.AsBoolean;
    Column.Grid.DataSource.DataSet.Post;
  end;

end;

procedure TfrmEnvioM2.DBGrid1ColEnter(Sender: TObject);
begin
  if Self.DBGrid1.SelectedField.DataType = ftBoolean then
  begin
    Self.GridOriginalOptions  := Self.DBGrid1.Options;
    Self.DBGrid1.Options      := Self.DBGrid1.Options - [dgEditing];
  end;
end;

procedure TfrmEnvioM2.DBGrid1ColExit(Sender: TObject);
begin
if Self.DBGrid1.SelectedField.DataType = ftBoolean then
    Self.DBGrid1.Options := Self.GridOriginalOptions;
end;

procedure TfrmEnvioM2.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((Self.DBGrid1.SelectedField.DataType = ftBoolean) and (key = VK_SPACE)) then
  begin
    Self.DBGrid1.DataSource.DataSet.Edit;
    Self.DBGrid1.SelectedField.Value:= not Self.DBGrid1.SelectedField.AsBoolean;
    Self.DBGrid1.DataSource.DataSet.Post;
  end;
end;

procedure TfrmEnvioM2.FormDblClick(Sender: TObject);
begin
ShowMessage(IntToStr(QEn.Parameters[0].Value));
ShowMessage(IntToStr(QEn.Parameters[1].Value));
end;

procedure TfrmEnvioM2.Button1Click(Sender: TObject);
begin
  with Qen do
  begin
    First;
    DisableControls;
    while not Eof do
    begin
      Edit;
      FieldByName('seleccion').AsBoolean := vALL;
      Post;
      Next;
    end;
    vALL := not vALL;
    if vALL then
       Button1.Caption := 'Seleccionar todo'
    else
       Button1.Caption := 'Desmarcar';
    EnableControls;
  end;
  if dsEnvios.State in [dsedit, dsinsert] then
dsEnvios.DataSet.Post;
end;

procedure TfrmEnvioM2.FormCreate(Sender: TObject);
begin
with Dm.Query1 do begin
Close;
SQL.Clear;
SQL.Add('select Ficha_id Codigo, (ficha_nombre) nombre from Fichas_Transp order by nombre');
Open;
if not IsEmpty then begin
cbbFicha.Clear;
while not Eof do begin
cbbFicha.Items.AddObject(FieldByName('nombre').Text,TObject(FieldByName('Codigo').Text));
Next;
end;
cbbFicha.ItemIndex := 0;
end;
end;
end;

procedure TfrmEnvioM2.QEnBeforePost(DataSet: TDataSet);
begin
  if cbbFicha.Visible then begin
  if cbbFicha.Text = '' then begin
  ShowMessage('Debes indicar la Ficha que transportara el envio....');
  cbbFicha.SetFocus;
  QEn.FieldByName('seleccion').AsBoolean := False;
  Exit;
  end;
  if EdtNombreChofer.Text = '' then begin
  ShowMessage('Debes indicar el Chofer que transportara el envio....');
  EdtNombreChofer.SetFocus;
  QEn.FieldByName('seleccion').AsBoolean := False;
  Exit;
  end;
  end;



end;

procedure TfrmEnvioM2.BitBtn2Click(Sender: TObject);
begin
if dsEnvios.State in [dsedit, dsinsert] then
dsEnvios.DataSet.Post;
frmConsFTEnvios.ficha := cbbFicha.Text;
frmConsFTEnvios.chofer := EdtNombreChofer.Text;

QEn.UpdateBatch;

QEn.DisableControls;
QEn.First;
while not QEn.Eof do begin
if QEnseleccion.Value = True then begin
with dm.Query1 do begin
         Close;
         SQL.Clear;
         sql.Add('UPDATE ENVIO');
         if cbbFicha.Visible = True then begin
         SQL.Add('SET env_status ='+QuotedStr('PR'));
         SQL.Add(',NombreChofer ='+QuotedStr(EdtNombreChofer.Text));
         SQL.Add(',FICHA_ID = (select Ficha_id from Fichas_Transp where ficha_nombre= '+QuotedStr(cbbFicha.Text)+')');
         end
         ELSE
         begin
         SQL.Add('SET env_status ='+QuotedStr('R'));
         end;
         SQL.Add(',USU_REPORTE = :USU');
         SQL.Add('WHERE EMP_CODIGO = :EMP AND SUC_CODIGO = :SUC AND FAC_NUMERO = :FAC AND IDENVIO = :ENV');
         Parameters.ParamByName('USU').DataType := ftInteger;
         Parameters.ParamByName('USU').Value := DM.Usuario;
         Parameters.ParamByName('EMP').Value := DM.vp_cia;
         Parameters.ParamByName('SUC').Value := QEnSUC_CODIGO.Value;
         Parameters.ParamByName('ENV').Value := QEnIDEnvio.Value;
         Parameters.ParamByName('FAC').Value := QEnfac_numero.Value;
         ExecSQL;
end;
end;
QEn.Next;
end;
QEn.EnableControls;
end;

procedure TfrmEnvioM2.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Edit;
    cxGrid1DBTableView1seleccion.DataBinding.Field.Value:= not cxGrid1DBTableView1seleccion.DataBinding.Field.AsBoolean;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Post;
 end;

procedure TfrmEnvioM2.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   Self.cxGrid1DBTableView1.DataController.DataSource.DataSet.Edit;
   Self.cxGrid1DBTableView1seleccion.DataBinding.Field.Value:= not cxGrid1DBTableView1seleccion.DataBinding.Field.AsBoolean;
   Self.cxGrid1DBTableView1.DataController.DataSource.DataSet.Post;
end;

procedure TfrmEnvioM2.cxGrid1Exit(Sender: TObject);
begin
if dsEnvios.State in [dsedit, dsinsert] then
dsEnvios.DataSet.Post;
end;

procedure TfrmEnvioM2.QEnCalcFields(DataSet: TDataSet);
begin
QEnDescripcionN.Value := Trim(QEnDescripcion.Text)+' '+Trim(QEnDescripcion.Text);
end;

end.
