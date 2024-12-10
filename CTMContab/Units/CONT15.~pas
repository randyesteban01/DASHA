unit CONT15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, DateUtils, ADODB,
  QuerySearchDlgADO, DBGridObj;

type
  TfrmEntradasDiario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    btTipo: TSpeedButton;
    tTipo: TEdit;
    Panel2: TPanel;
    QTrans: TADOQuery;
    QTransCLI_CODIGO: TIntegerField;
    QTransEMP_CODIGO: TIntegerField;
    QTransENT_NUMERO: TIntegerField;
    QTransSUP_CODIGO: TIntegerField;
    QTransTDO_CODIGO: TIBStringField;
    QTransTRA_ANO: TIntegerField;
    QTransTRA_BENEF: TIBStringField;
    QTransTRA_CONCEPTO1: TIBStringField;
    QTransTRA_CONCEPTO2: TIBStringField;
    QTransTRA_DOC: TIBStringField;
    QTransTRA_FECHA: TDateTimeField;
    QTransTRA_MES: TIntegerField;
    QTransTRA_STATUS: TIBStringField;
    QDetalle: TADOQuery;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleDET_CREDITO: TFloatField;
    QDetalleDET_DEBITO: TFloatField;
    QDetalleDET_ORIGEN: TIBStringField;
    QDetalleDET_SEC: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleENT_NUMERO: TIntegerField;
    QDetalleTRA_ANO: TIntegerField;
    QDetalleTRA_DOC: TIBStringField;
    QDetalleTRA_MES: TIntegerField;
    dsDetalle: TDataSource;
    btGrabar: TBitBtn;
    btLimpia: TBitBtn;
    btBuscaCta: TBitBtn;
    btElimina: TBitBtn;
    btModifica: TBitBtn;
    btSalir: TBitBtn;
    dsTrans: TDataSource;
    Search: TQrySearchDlgADO;
    lbCR: TStaticText;
    Label8: TLabel;
    lbDB: TStaticText;
    Label9: TLabel;
    lbBAL: TStaticText;
    Label10: TLabel;
    QDetalleValor: TFloatField;
    QTransValor: TFloatField;
    QTransTRA_DEBITOS: TFloatField;
    QTransTRA_CREDITOS: TFloatField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    QTransTRA_NUMERO: TIntegerField;
    QDetalleTRA_NUMERO: TIntegerField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QTransSUC_CODIGO: TIntegerField;
    QDetalleSUC_CODIGO: TIntegerField;
    QSucursalalm_codigo: TIntegerField;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentrotra_numero: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrosuc_codigo: TIntegerField;
    QCentrocen_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    Grid: TDBGridObj;
    spcentros: TSpeedButton;
    QCentrocat_cuenta: TStringField;
    QCentrosub_referencia: TStringField;
    TSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    lbLocSuc: TLabel;
    dbedtcont_numeroSucursal: TDBEdit;
    QTranscont_numeroSucursal: TIntegerField;
    procedure QTransNewRecord(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btSalirClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btTipoClick(Sender: TObject);
    procedure QTransTDO_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QDetalleDET_ORIGENChange(Sender: TField);
    procedure QTransTRA_FECHAChange(Sender: TField);
    procedure QDetalleCAT_CUENTAChange(Sender: TField);
    procedure btBuscaCtaClick(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QDetalleAfterPost(DataSet: TDataSet);
    procedure GridEnter(Sender: TObject);
    procedure GridColEnter(Sender: TObject);
    procedure QDetalleBeforePost(DataSet: TDataSet);
    procedure btEliminaClick(Sender: TObject);
    procedure QTransCalcFields(DataSet: TDataSet);
    procedure btGrabarClick(Sender: TObject);
    procedure QTransENT_NUMEROChange(Sender: TField);
    procedure QTransBeforePost(DataSet: TDataSet);
    procedure btLimpiaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QDetalleBeforeDelete(DataSet: TDataSet);
    procedure QDetalleAfterEdit(DataSet: TDataSet);
    procedure btModificaClick(Sender: TObject);
    procedure spcentrosClick(Sender: TObject);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbedtcont_numeroSucursalChange(Sender: TObject);
    procedure dbedtcont_numeroSucursalKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitos, Creditos : Double;
    Totaliza, Modifica : Boolean;
    procedure Totalizar;
    procedure BuscaEntrada(Suc, Ent, Ano, Mes :Integer; Doc :String);
  end;

var
  frmEntradasDiario: TfrmEntradasDiario;

implementation

uses SIGMA01, PVENTA27, SIGMA00, SIGMA08;

{$R *.dfm}

procedure TfrmEntradasDiario.QTransNewRecord(DataSet: TDataSet);
var
  a : Integer;
begin
  DBEdit1.ReadOnly := False;
  DBEdit2.ReadOnly := False;
  DBEdit3.ReadOnly := False;
  DBEdit4.ReadOnly := False;
  DBEdit5.ReadOnly := False;
  DBEdit6.ReadOnly := False;
  DBEdit7.ReadOnly := False;

  lbCR.Caption  := '0.00';
  lbDB.Caption  := '0.00';
  lbBAL.Caption := '0.00';
  tTipo.Text    := '';

  QTransEMP_CODIGO.Value := DM.QEmpresasEMP_CODIGO.Value;
  QTransTRA_STATUS.Value := 'EMI';
  Totaliza := True;
  Modifica := True;

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

end;

procedure TfrmEntradasDiario.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
  QDetalleTRA_ANO.Value    := QTransTRA_ANO.Value;
  QDetalleTRA_MES.Value    := QTransTRA_MES.Value;
  QDetalleENT_NUMERO.Value := QTransENT_NUMERO.Value;
  QDetalleTRA_DOC.Value    := QTransTRA_DOC.Value;
  QDetalleSUC_CODIGO.Value := DBLookupComboBox2.KeyValue;
end;

procedure TfrmEntradasDiario.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  if not QTrans.Active then
  begin
    QTrans.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QTrans.Parameters.ParamByName('num').Value := -1;
    QTrans.Parameters.ParamByName('suc').Value := -1;
    QTrans.Open;
    QTrans.Insert;
  end;
end;

procedure TfrmEntradasDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmEntradasDiario.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEntradasDiario.FormPaint(Sender: TObject);
begin
  frmEntradasDiario.Top := 6;
  frmEntradasDiario.left := 1;
end;

procedure TfrmEntradasDiario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2  then btGrabarClick(Self);
  if key = vk_f3  then btLimpiaClick(self);
  if key = vk_f10 then btSalirClick(Self);
  if key = vk_f6  then btModificaClick(Self);
end;

procedure TfrmEntradasDiario.btTipoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select tdo_nombre, tdo_codigo');
  Search.Query.Add('from tiposdoc');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'tdo_codigo';
  Search.Title := 'Tipos de Documentos';
  if Search.execute then
  begin
    QTransTDO_CODIGO.Value := Search.ValueField;
    DBEdit4.SetFocus;
  end;
end;

procedure TfrmEntradasDiario.QTransTDO_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (not QTransTDO_CODIGO.IsNull) and (QTrans.State <> dsBrowse) then
  begin
    Text := QTransTDO_CODIGO.Value;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_nombre from TiposDoc');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and tdo_codigo = :cod');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cod').Value  := QTransTDO_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      tTipo.Text := dm.Query1.FieldByName('tdo_nombre').AsString
    else
      tTipo.Text := ' ';
  end;
end;

procedure TfrmEntradasDiario.FormCreate(Sender: TObject);
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

procedure TfrmEntradasDiario.QDetalleDET_ORIGENChange(Sender: TField);
begin
  if not QDetalleDET_ORIGEN.IsNull then
  begin
    if UpperCase(QDetalleDET_ORIGEN.value) = 'D' then
      QDetalleDET_CREDITO.Clear
    else if UpperCase(QDetalleDET_ORIGEN.value) = 'C' then
      QDetalleDET_DEBITO.Clear
    else
    begin
      QDetalleDET_ORIGEN.Clear;
      QDetalleDET_CREDITO.Clear;
      QDetalleDET_DEBITO.Clear;
      abort;
    end;
  end;
end;

procedure TfrmEntradasDiario.Totalizar;
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
      Debitos  := Debitos  + StrToFloat(Format('%10.2f',[QDetalleDET_DEBITO.Value]));
      Creditos := Creditos + StrToFloat(Format('%10.2f',[QDetalleDET_CREDITO.Value]));
      QDetalle.Next;
    end;
    QDetalle.GotoBookmark(Punt);
    QDetalle.EnableControls;
    lbCR.Caption  := Format('%n',[Creditos]);
    lbDB.Caption  := Format('%n',[Debitos]);
    lbBAL.Caption := Format('%n',[Debitos-Creditos]);
    QTrans.Edit;
    QTransTRA_DEBITOS.Value  := Debitos;
    QTransTRA_CREDITOS.Value := Creditos;
  end;
end;

procedure TfrmEntradasDiario.QTransTRA_FECHAChange(Sender: TField);
begin
  if not QTransTRA_FECHA.IsNull then
  begin
    QTransTRA_ANO.Value := YearOf(QTransTRA_FECHA.Value);
    QTransTRA_MES.Value := MonthOf(QTransTRA_FECHA.Value);
  end;
end;

procedure TfrmEntradasDiario.QDetalleCAT_CUENTAChange(Sender: TField);
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
      Grid.SelectedIndex := 2;
    end;
  end;
end;

procedure TfrmEntradasDiario.btBuscaCtaClick(Sender: TObject);
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

procedure TfrmEntradasDiario.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f4 then btBuscaCtaClick(Self);
  if key = vk_f5 then btEliminaClick(Self);
  if key = vk_insert then abort;
  if (ssCtrl in Shift) and (key = vk_delete) then abort;

  if key = vk_return then
  begin
     if (Grid.SelectedIndex = 4) and (UpperCase(QDetalleDET_ORIGEN.Value) = 'D') then
     begin
       Grid.SelectedIndex := 1;
       QDetalle.Append;
     end
     else if (Grid.SelectedIndex = 5) and (UpperCase(QDetalleDET_ORIGEN.Value) = 'C') then
     begin
       Grid.SelectedIndex := 1;
       QDetalle.Append;
     end
     else
        Grid.SelectedIndex := Grid.SelectedIndex + 1
  end;

  if Grid.SelectedIndex = 3 then
  begin
    if key = 68 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'D';
      Grid.SelectedIndex := Grid.SelectedIndex + 1;
    end
    else if key = 67 then
    begin
      QDetalle.Edit;
      QDetalleDET_ORIGEN.Value := 'C';
      Grid.SelectedIndex := Grid.SelectedIndex + 1;
    end;
    //Grid.SelectedIndex := Grid.SelectedIndex + 1;
  end;
end;

procedure TfrmEntradasDiario.QDetalleAfterPost(DataSet: TDataSet);
begin
  Totalizar;
end;

procedure TfrmEntradasDiario.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := 1;
end;

procedure TfrmEntradasDiario.GridColEnter(Sender: TObject);
begin
  if Grid.SelectedIndex = 2 then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;
  if (Grid.SelectedIndex = 4) and (UpperCase(QDetalleDET_ORIGEN.Value) = 'C') then
    Grid.SelectedIndex := Grid.SelectedIndex + 1;
  if (Grid.SelectedIndex = 5) and (UpperCase(QDetalleDET_ORIGEN.Value) = 'D') then
  begin
    Grid.SelectedIndex := 1;
    QDetalle.Next;
  end;
end;

procedure TfrmEntradasDiario.QDetalleBeforePost(DataSet: TDataSet);
begin
  if not QDetalleDET_ORIGEN.IsNull then
    QDetalleDET_ORIGEN.Value := UpperCase(QDetalleDET_ORIGEN.Value);
  if UpperCase(QDetalleDET_ORIGEN.Value) = 'D' then
    QDetalleDET_CREDITO.Clear
  else if UpperCase(QDetalleDET_ORIGEN.Value) = 'C' then
    QDetalleDET_DEBITO.Clear
  else
  begin
    QDetalleDET_DEBITO.Clear;
    QDetalleDET_CREDITO.Clear;
  end;
end;

procedure TfrmEntradasDiario.btEliminaClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR LA CUENTA?',mtconfirmation,[mbyes,mbno],0) = mryes then
  begin
    QDetalle.edit;
    QDetalleCAT_CUENTA.clear;
    QDetalleCAT_NOMBRE.clear;
    QDetalleDET_ORIGEN.clear;
    QDetalleDET_CREDITO.clear;
    QDetalleDET_DEBITO.clear;
    QDetalle.post;
    Totalizar;
  end;
  Grid.setfocus;
end;

procedure TfrmEntradasDiario.QTransCalcFields(DataSet: TDataSet);
begin
  if Trim(lbBAL.Caption) <> '0.00' then
    lbBAL.Font.Color := clRed
  else
    lbBAL.Font.Color := clBlack;
end;

procedure TfrmEntradasDiario.btGrabarClick(Sender: TObject);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select count(*) as cant from contmeses');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ano = :ano');
  dm.Query1.SQL.Add('and mes = :mes');
  dm.Query1.SQL.Add('and status = '+#39+'C'+#39);
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ano').Value := YearOf(QTransTRA_FECHA.Value);
  dm.Query1.Parameters.ParamByName('mes').Value := MonthOf(QTransTRA_FECHA.Value);
  dm.Query1.Open;
  if dm.Query1.FieldByName('cant').AsInteger > 0 then
    MessageDlg('ESTE MES ESTA CERRADO Y NO PUEDE REALIZAR MODIFICACIONES',mtError,[mbok],0)
  else
  begin
    if Trim(lbBAL.Caption) <> '0.00' then
    begin
      MessageDlg('EL DOCUMENTO NO ESTA CUADRADO',mtError,[mbok],0);
      Grid.SetFocus
    end
    else if (QTransENT_NUMERO.IsNull) or (QTransENT_NUMERO.Value <= 0) then
    begin
      MessageDlg('DEBE ESPECIFICAR EL NUMERO DE ENTRADA',mtError,[mbok],0);
      DBEdit1.SetFocus
    end
    else if (QTransTDO_CODIGO.IsNull) or (Trim(QTransTDO_CODIGO.Value) = '') then
    begin
      MessageDlg('DEBE ESPECIFICAR EL TIPO DE DOCUMENTO',mtError,[mbok],0);
      DBEdit4.SetFocus
    end
    else if (QTransTRA_ANO.IsNull) or (QTransTRA_ANO.Value = 0) then
    begin
      MessageDlg('DEBE ESPECIFICAR LA FECHA DEL DOCUMENTO',mtError,[mbok],0);
      DBEdit3.SetFocus
    end
    else if (QTransTRA_DOC.IsNull) or (Trim(QTransTRA_DOC.Value) = '') then
    begin
      MessageDlg('DEBE ESPECIFICAR EL NUMERO DEL DOCUMENTO',mtError,[mbok],0);
      DBEdit2.SetFocus
    end
    else if (QTransTRA_CONCEPTO1.IsNull) or (Trim(QTransTRA_CONCEPTO1.Value) = '') then
    begin
      MessageDlg('DEBE ESPECIFICAR EL CONCEPTO DEL DOCUMENTO',mtError,[mbok],0);
      DBEdit2.SetFocus
    end
    else
    Begin
      if MessageDlg('DESEA GRABAR EL DOCUMENTO?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        Modifica := True;
        Totalizar;
        QTrans.Post;
        QTrans.UpdateBatch;

        Totaliza := False;
        a := 0;
        QDetalle.DisableControls;
        QDetalle.First;
        while not QDetalle.Eof do
        begin
          a := a + 1;
          QDetalle.Edit;
          QDetalleEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
          QDetalleTRA_NUMERO.Value := QTransTRA_NUMERO.Value;
          QDetalleDET_SEC.Value    := a;
          QDetalleENT_NUMERO.Value := QTransENT_NUMERO.Value;
          QDetalleTRA_ANO.Value    := QTransTRA_ANO.Value;
          QDetalleTRA_DOC.Value    := QTransTRA_DOC.Value;
          QDetalleTRA_MES.Value    := QTransTRA_MES.Value;
          QDetalleSUC_CODIGO.Value := DBLookupComboBox2.KeyValue;
          QDetalle.Post;
          QDetalle.Next;
        end;
        QDetalle.EnableControls;
        QDetalle.UpdateBatch;

        //Centros de Costo
        QCentro.DisableControls;
        QCentro.First;
        a := 0;
        while not QCentro.Eof do
        begin
          a := a + 1;
          QCentro.Edit;
          QCentroEMP_CODIGO.Value := dm.QEmpresasEMP_CODIGO.Value;
          QCentroTRA_NUMERO.Value := QTransTRA_NUMERO.Value;
          QCentrodet_secuencia.Value    := a;
          QCentroSUC_CODIGO.Value := DBLookupComboBox2.KeyValue;
          QCentro.Post;
          QCentro.Next;
        end;
        QCentro.EnableControls;
        QCentro.UpdateBatch;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute CONTPR_GRABA_TRANS :emp, :suc, :num');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('num').Value := QTransTRA_NUMERO.Value;
        dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        dm.Query1.ExecSQL;

        DBEdit1.SetFocus;
        QTrans.Insert;
      end
      else
        Grid.SetFocus;
    End;
  end;
end;

procedure TfrmEntradasDiario.BuscaEntrada(Suc, Ent, Ano, Mes: Integer; Doc: String);
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select tra_numero from conttrans');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ent_numero = :ent');
  dm.Query1.SQL.Add('and tra_ano = :ano');
  dm.Query1.SQL.Add('and tra_mes = :mes');
  dm.Query1.SQL.Add('and tra_doc = :doc');
  dm.Query1.SQL.Add('and suc_codigo = :suc');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ent').Value := Ent;
  dm.Query1.Parameters.ParamByName('ano').Value := Ano;
  dm.Query1.Parameters.ParamByName('mes').Value := Mes;
  dm.Query1.Parameters.ParamByName('Doc').Value := Doc;
  dm.Query1.Parameters.ParamByName('suc').Value := Suc;
  dm.Query1.Open;
  Modifica := True;
  if dm.Query1.RecordCount > 0 then
  begin
    QTrans.Close;
    QTrans.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QTrans.Parameters.ParamByName('num').Value := dm.Query1.FieldByName('tra_numero').AsInteger;
    QTrans.Parameters.ParamByName('suc').Value := Suc;
    QTrans.Open;

    QDetalle.Close;
    QDetalle.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QDetalle.Parameters.ParamByName('num').Value := dm.Query1.FieldByName('tra_numero').AsInteger;
    QDetalle.Parameters.ParamByName('suc').Value := Suc;
    QDetalle.Open;

    QCentro.Close;
    QCentro.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QCentro.Parameters.ParamByName('num').Value := dm.Query1.FieldByName('tra_numero').AsInteger;
    QCentro.Parameters.ParamByName('suc').Value := Suc;
    QCentro.Open;

    Totaliza := True;
    Totalizar;
    Modifica := False;

    DBEdit1.ReadOnly := True;
    DBEdit2.ReadOnly := True;
    DBEdit3.ReadOnly := True;
    DBEdit4.ReadOnly := True;
    DBEdit5.ReadOnly := True;
    DBEdit6.ReadOnly := True;
    DBEdit7.ReadOnly := True;
  end;
end;

procedure TfrmEntradasDiario.QTransENT_NUMEROChange(Sender: TField);
begin
  if not QTransENT_NUMERO.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select tdo_codigo from contentradas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ent_numero = :ent');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ent').Value := QTransENT_NUMERO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
      QTransTDO_CODIGO.Value := dm.Query1.FieldByName('tdo_codigo').AsString
    else
      QTransTDO_CODIGO.Clear;
  end;

  if (not QTransENT_NUMERO.IsNull) and (not QTransTRA_ANO.isnull)
  and (not QTransTRA_MES.isnull) and (not QTransTRA_DOC.isnull) then
    BuscaEntrada(DBLookupComboBox2.KeyValue , QTransENT_NUMERO.Value, QTransTRA_ANO.Value,
                 QTransTRA_MES.Value, QTransTRA_DOC.Value);
end;

procedure TfrmEntradasDiario.QTransBeforePost(DataSet: TDataSet);
begin
  QTransSUC_CODIGO.Value := DBLookupComboBox2.KeyValue;
  if QTrans.State = dsInsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(tra_numero),0) as maximo');
    dm.Query1.SQL.Add('from conttrans');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := QTransSUC_CODIGO.Value;
    dm.Query1.Open;
    QTransTRA_NUMERO.Value := dm.Query1.FieldByName('maximo').AsInteger + 1;
  end;
end;

procedure TfrmEntradasDiario.btLimpiaClick(Sender: TObject);
begin
  if MessageDlg('DESEA CANCELAR ESTA ENTRADA?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    DBEdit1.SetFocus;
    QTrans.Insert;
  end
  else
    Grid.SetFocus;
end;

procedure TfrmEntradasDiario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     if (activecontrol.classtype <> tdbgrid) and (activecontrol.classtype <> TDBGridObj) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmEntradasDiario.QDetalleBeforeDelete(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmEntradasDiario.QDetalleAfterEdit(DataSet: TDataSet);
begin
  if Modifica = False then QDetalle.Cancel;
end;

procedure TfrmEntradasDiario.btModificaClick(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select count(*) as cant from contmeses');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and ano = :ano');
  dm.Query1.SQL.Add('and mes = :mes');
  dm.Query1.SQL.Add('and status = '+#39+'C'+#39);
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ano').Value := YearOf(QTransTRA_FECHA.Value);
  dm.Query1.Parameters.ParamByName('mes').Value := MonthOf(QTransTRA_FECHA.Value);
  dm.Query1.Open;
  if dm.Query1.FieldByName('cant').AsInteger > 0 then
    MessageDlg('ESTE MES ESTA CERRADO Y NO PUEDE REALIZAR MODIFICACIONES',mtError,[mbok],0)
  else
  begin
    Modifica := True;
    QTrans.Edit;
    DBEdit1.ReadOnly := False;
    DBEdit2.ReadOnly := False;
    DBEdit3.ReadOnly := False;
    DBEdit4.ReadOnly := False;
    DBEdit5.ReadOnly := False;
    DBEdit6.ReadOnly := False;
    DBEdit7.ReadOnly := False;
  end;
  Grid.SetFocus;
end;

procedure TfrmEntradasDiario.spcentrosClick(Sender: TObject);
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
    Grid.SetFocus;
  end
  else
  begin
    Application.CreateForm(tfrmCentrosXCuenta, frmCentrosXCuenta);
    frmCentrosXCuenta.lbcuenta.Caption := QDetalleCAT_CUENTA.AsString+': '+QDetalleCAT_NOMBRE.AsString;
    frmCentrosXCuenta.cta := QDetalleCAT_CUENTA.AsString;
    if QDetalleDET_CREDITO.Value > 0 then
    frmCentrosXCuenta.vMontototal := QDetalleDET_CREDITO.Value else
    if QDetalleDET_DEBITO.Value > 0 then
    frmCentrosXCuenta.vMontototal := QDetalleDET_DEBITO.Value;
    //Grabando registro en la pantalla
    QCentro.DisableControls;
    QCentro.First;
    while not QCentro.Eof do
    begin
      if QCentrocat_cuenta.Value = QDetalleCAT_CUENTA.AsString then
      begin
        frmCentrosXCuenta.QCentro.Append;
        frmCentrosXCuenta.QCentrocen_nombre.Value := QCentrocen_nombre.AsString;
        frmCentrosXCuenta.QCentrodet_monto.Value  := QCentrodet_monto.Value;
        frmCentrosXCuenta.QCentrocen_referencia.Value := QCentrocen_referencia.AsString;
        frmCentrosXCuenta.QCentrosub_referencia.Value := QCentrosub_referencia.AsString;
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

procedure TfrmEntradasDiario.GridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
Var
  DataRect : TRect ;
Begin
   // Place the button in the first column.
   If (Column.Index = 0) Then
   Begin
      With Grid Do
      Begin
         DataRect := CellRect(Column.Index,Row);
      End;
   // Assign the button's parent to the grid.
   If spcentros.Parent <> Grid Then
      spcentros.Parent := Grid ;
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

procedure TfrmEntradasDiario.dbedtcont_numeroSucursalChange(
  Sender: TObject);
begin
if Trim(dbedtcont_numeroSucursal.Text) = '' then TSucLoc.Text := '';
end;

procedure TfrmEntradasDiario.dbedtcont_numeroSucursalKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmEntradasDiario.btLocalidadClick(Sender: TObject);
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

procedure TfrmEntradasDiario.FormShow(Sender: TObject);
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

end.
