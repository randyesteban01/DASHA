unit RH22;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmSolicitudEmpleo = class(TForm)
    QSolicitud: TADOQuery;
    dsSolicitud: TDataSource;
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
    TabControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSolicitudemp_codigo: TIntegerField;
    QSolicitudsuc_codigo: TIntegerField;
    QSolicitudsol_numero: TIntegerField;
    QSolicitudsol_nombre: TStringField;
    QSolicitudsol_apellido_materno: TStringField;
    QSolicitudsol_apellido_paterno: TStringField;
    QSolicitudsol_fecha_nacimiento: TDateTimeField;
    QSolicitudsol_lugar_nacimiento: TStringField;
    QSolicitudpai_codigo: TIntegerField;
    QSolicitudidi_codigo: TIntegerField;
    QSolicitudsol_cedula: TStringField;
    QSolicitudsol_pasaporte: TStringField;
    QSolicitudest_codigo: TIntegerField;
    QSolicitudsol_telefono1: TStringField;
    QSolicitudsol_direccion: TMemoField;
    QSolicitudsol_email: TStringField;
    QSolicitudsol_dependientes: TStringField;
    QSolicitudsol_fecha: TDateTimeField;
    QSolicitudsol_status: TStringField;
    QSolicitudsol_fue_empleado: TStringField;
    QSolicitudsol_ha_trabajado: TStringField;
    QSolicitudsol_actualmente_trabaja: TStringField;
    QSolicitudpos_codigo: TIntegerField;
    QSolicitudsol_salario_aspira: TBCDField;
    QSolicitudsol_fecha_disponible: TDateTimeField;
    QSolicitudsol_familiar_empresa: TStringField;
    QSolicitudsol_emer_nombre: TStringField;
    QSolicitudsol_emer_telefono: TStringField;
    QSolicitudsol_emer_direccion: TMemoField;
    QSolicitudsol_emer_alergia: TMemoField;
    QSolicitudsol_tipo_sangre: TStringField;
    QSolicitudsol_medico: TStringField;
    QSolicitudsol_telefono_medico: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    btpais: TSpeedButton;
    tpais: TEdit;
    DBEdit9: TDBEdit;
    btidioma: TSpeedButton;
    tidioma: TEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    btestcivil: TSpeedButton;
    testcivil: TEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit15: TDBEdit;
    DBComboBox1: TDBComboBox;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    DBComboBox2: TDBComboBox;
    Label19: TLabel;
    DBComboBox3: TDBComboBox;
    Label20: TLabel;
    DBComboBox4: TDBComboBox;
    QSolicitudsol_disponible_trabajar: TStringField;
    Label21: TLabel;
    DBComboBox5: TDBComboBox;
    Label22: TLabel;
    DBEdit16: TDBEdit;
    btposicion: TSpeedButton;
    tposicion: TEdit;
    Label23: TLabel;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    DBComboBox6: TDBComboBox;
    GroupBox2: TGroupBox;
    Label26: TLabel;
    DBEdit19: TDBEdit;
    Label27: TLabel;
    DBEdit20: TDBEdit;
    Label28: TLabel;
    DBMemo2: TDBMemo;
    Label29: TLabel;
    DBMemo3: TDBMemo;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit21: TDBEdit;
    Label32: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    gRef: TDBGrid;
    DBGrid2: TDBGrid;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBGrid3: TDBGrid;
    Label33: TLabel;
    DBEdit24: TDBEdit;
    Label34: TLabel;
    DBEdit25: TDBEdit;
    QSolicitudStatus: TStringField;
    QSolicitudsol_sexo: TStringField;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    DBGrid4: TDBGrid;
    btinsertest: TSpeedButton;
    btdeleteest: TSpeedButton;
    DBGrid5: TDBGrid;
    btdeleteexp: TSpeedButton;
    DBGrid6: TDBGrid;
    btinserthab: TSpeedButton;
    btdeletehab: TSpeedButton;
    DBComboBox7: TDBComboBox;
    QSolicitudsol_telefono2: TStringField;
    btdeletref: TSpeedButton;
    QReferenciasPer: TADOQuery;
    QReferenciasPeremp_codigo: TIntegerField;
    QReferenciasPersol_numero: TIntegerField;
    QReferenciasPerref_secuencia: TIntegerField;
    QReferenciasPerref_nombre: TStringField;
    QReferenciasPerref_telefono: TStringField;
    QReferenciasPerref_compania: TStringField;
    QReferenciasPerref_ocupacion: TStringField;
    dsReferenciasPer: TDataSource;
    QHabilidades: TADOQuery;
    QHabilidadeshab_nombre: TStringField;
    QHabilidadeshab_destreza: TStringField;
    QHabilidadescat_nombre: TStringField;
    dsHabilidades: TDataSource;
    QHabilidadesDestreza: TStringField;
    QHabilidadescat_codigo: TIntegerField;
    QHabilidadeshab_codigo: TIntegerField;
    QPosiciones: TADOQuery;
    dsPosiciones: TDataSource;
    QEstudios: TADOQuery;
    QEstudiospai_nombre: TStringField;
    QEstudiosins_nombre: TStringField;
    QEstudiosest_desde: TDateTimeField;
    QEstudiosest_hasta: TDateTimeField;
    QEstudiosest_titulo: TStringField;
    dsEstudios: TDataSource;
    Query1: TADOQuery;
    QEstudiosest_secuencia: TIntegerField;
    QExperiencia: TADOQuery;
    QExperienciaemp_codigo: TIntegerField;
    QExperienciasol_numero: TIntegerField;
    QExperienciaexp_secuencia: TIntegerField;
    QExperienciaexp_telefono: TStringField;
    QExperienciaexp_funcion: TStringField;
    QExperienciaexp_desde: TDateTimeField;
    QExperienciaexp_hasta: TDateTimeField;
    QExperienciaexp_motivo_salida: TStringField;
    dsExperiencia: TDataSource;
    QExperienciaexp_posicion: TStringField;
    QExperienciaexp_empleador: TStringField;
    QListado: TADOQuery;
    QListadosol_numero: TIntegerField;
    QListadosol_nombre: TStringField;
    QListadosol_apellido_materno: TStringField;
    QListadosol_apellido_paterno: TStringField;
    QListadosol_sexo: TStringField;
    QListadosol_cedula: TStringField;
    QListadosol_telefono1: TStringField;
    QListadosol_telefono2: TStringField;
    QListadosol_fecha: TDateTimeField;
    QListadosol_status: TStringField;
    dsListado: TDataSource;
    QPosicionesPosicion: TStringField;
    QPosicionespos_codigo: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QSolicitudAfterDelete(DataSet: TDataSet);
    procedure QSolicitudAfterPost(DataSet: TDataSet);
    procedure QSolicitudNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsSolicitudStateChange(Sender: TObject);
    procedure QSolicitudBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btpaisClick(Sender: TObject);
    procedure btestcivilClick(Sender: TObject);
    procedure btidiomaClick(Sender: TObject);
    procedure btposicionClick(Sender: TObject);
    procedure QSolicitudpai_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QSolicitudidi_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QSolicitudest_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QSolicitudpos_codigoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure gRefKeyPress(Sender: TObject; var Key: Char);
    procedure QReferenciasPerAfterEdit(DataSet: TDataSet);
    procedure QReferenciasPerAfterInsert(DataSet: TDataSet);
    procedure btinserthabClick(Sender: TObject);
    procedure QHabilidadesCalcFields(DataSet: TDataSet);
    procedure btdeletehabClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure btinsertestClick(Sender: TObject);
    procedure btdeleteestClick(Sender: TObject);
    procedure QExperienciaAfterEdit(DataSet: TDataSet);
    procedure QExperienciaAfterInsert(DataSet: TDataSet);
    procedure DBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    grabando : boolean;
  end;

var
  frmSolicitudEmpleo: TfrmSolicitudEmpleo;

implementation

uses SIGMA01, SIGMA00, RH23, RH24, RH25;


{$R *.DFM}

procedure TfrmSolicitudEmpleo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmSolicitudEmpleo.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSolicitudEmpleo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmSolicitudEmpleo.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmSolicitudEmpleo.QSolicitudAfterDelete(DataSet: TDataSet);
begin
  QSolicitud.UpdateBatch;
end;

procedure TfrmSolicitudEmpleo.QSolicitudAfterPost(DataSet: TDataSet);
var
  a : integer;
begin
  QSolicitud.UpdateBatch;

  //Refrencias personales
  QReferenciasPer.DisableControls;
  QReferenciasPer.First;
  a := 0;
  while not QReferenciasPer.eof do
  begin
    a := a + 1;
    QReferenciasPer.Edit;
    QReferenciasPerref_secuencia.Value := a;
    QReferenciasPeremp_codigo.Value    := dm.QEmpresasEMP_CODIGO.Value;
    QReferenciasPersol_numero.Value    := QSolicitudsol_numero.Value;
    QReferenciasPer.Post;
    QReferenciasPer.Next;
  end;
  QReferenciasPer.First;
  QReferenciasPer.EnableControls;
  QReferenciasPer.UpdateBatch;

  //Experiencias Laboral
  QExperiencia.DisableControls;
  QExperiencia.First;
  a := 0;
  while not QExperiencia.Eof do
  begin
    a := a + 1;
    QExperiencia.Edit;
    QExperienciaexp_secuencia.Value := a;
    QExperienciaemp_codigo.Value    := dm.QEmpresasEMP_CODIGO.Value;
    QExperienciasol_numero.Value    := QSolicitudsol_numero.Value;
    QExperiencia.Post;
    QExperiencia.Next;
  end;
  QExperiencia.First;
  QExperiencia.EnableControls;
  QExperiencia.UpdateBatch;
end;

procedure TfrmSolicitudEmpleo.QSolicitudNewRecord(DataSet: TDataSet);
begin
  QSolicitudEMP_CODIGO.value := dm.QEmpresasEMP_CODIGO.value;
  QSolicitudsol_status.Value := 'EMI';
  QSolicitudsol_fecha.Value  := Date;
  QSolicitudsuc_codigo.Value := QSucursalsuc_codigo.Value;
end;

procedure TfrmSolicitudEmpleo.btFindClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select sol_nombre, sol_apellido_paterno, sol_numero');
  Search.Query.Add('from solicitud_empleo');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  Search.ResultField := 'sol_numero';
  Search.Title := 'Solicitud de Empleo';
  if search.execute then
  begin
    QSolicitud.Close;
    QSolicitud.Parameters.ParamByName('sol').Value := StrToInt(Search.ValueField);
    QSolicitud.open;

    QReferenciasPer.Close;
    QReferenciasPer.Parameters.ParamByName('sol').Value := StrToInt(Search.ValueField);
    QReferenciasPer.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QReferenciasPer.Open;

    QExperiencia.Close;
    QExperiencia.Parameters.ParamByName('sol').Value := StrToInt(Search.ValueField);
    QExperiencia.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QExperiencia.Open;
  end;
end;

procedure TfrmSolicitudEmpleo.btPostClick(Sender: TObject);
begin
  Grabando := true;
  QSolicitud.post;
end;

procedure TfrmSolicitudEmpleo.btCancelClick(Sender: TObject);
begin
  QSolicitud.cancel;
  QReferenciasPer.CancelBatch;
end;

procedure TfrmSolicitudEmpleo.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QSolicitud.delete;
end;

procedure TfrmSolicitudEmpleo.btEditClick(Sender: TObject);
begin
  TabControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  Grabando := false;
  QSolicitud.edit;
end;

procedure TfrmSolicitudEmpleo.btInsertClick(Sender: TObject);
begin
  TabControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  Grabando := false;
  QSolicitud.insert;
end;

procedure TfrmSolicitudEmpleo.btpriorClick(Sender: TObject);
begin
  if not QSolicitud.Bof then QSolicitud.prior;
end;

procedure TfrmSolicitudEmpleo.btnextClick(Sender: TObject);
begin
  if not QSolicitud.eof then QSolicitud.next;
end;

procedure TfrmSolicitudEmpleo.FormActivate(Sender: TObject);
begin
  if not QSolicitud.active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;

    QSolicitud.Parameters.ParamByName('sol').Value := -1;
    QSolicitud.open;

    QReferenciasPer.Parameters.ParamByName('sol').Value := -1;
    QReferenciasPer.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QReferenciasPer.Open;

    QHabilidades.Open;
    QPosiciones.Open;
    QEstudios.Open;
    QExperiencia.Open;

    QListado.Open;
  end;

  frmMain.ExportXLS.Sheets[1].DataSet := QSolicitud;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmSolicitudEmpleo.dsSolicitudStateChange(Sender: TObject);
begin
  btInsert.enabled    := dsSolicitud.State = dsbrowse;
  btEdit.enabled      := btInsert.enabled;
  btDelete.enabled    := btInsert.enabled;
  btNext.enabled      := btInsert.enabled;
  btPrior.enabled     := btInsert.enabled;
  btPost.enabled      := not btInsert.enabled;
  btCancel.enabled    := not btInsert.enabled;
  btFind.enabled      := btInsert.enabled;
  btpais.Enabled      := not btInsert.enabled;
  btidioma.Enabled    := not btInsert.enabled;
  btestcivil.Enabled  := not btInsert.enabled;
  btposicion.Enabled  := not btInsert.enabled;
  btdeletref.Enabled  := not btInsert.enabled;
  btinserthab.Enabled := btInsert.enabled;
  btdeletehab.Enabled := btInsert.enabled;
end;                                                                                            

procedure TfrmSolicitudEmpleo.QSolicitudBeforePost(DataSet: TDataSet);
begin
  if trim(QSolicitudsol_nombre.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if trim(QSolicitudsol_apellido_materno.value) = '' then
  begin
    showmessage('EL APELLIDO MATERNO NO PUEDE ESTAR EN BLANCO');
    DBEdit4.setfocus;
    abort;
  end;

  if trim(QSolicitudsol_apellido_paterno.value) = '' then
  begin
    showmessage('EL APELLIDO PATERNO NO PUEDE ESTAR EN BLANCO');
    DBEdit3.setfocus;
    abort;
  end;

  if QSolicitud.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(sol_numero),0) as maximo');
    dm.query1.sql.add('from solicitud_empleo');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QSolicitudsol_numero.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmSolicitudEmpleo.FormCreate(Sender: TObject);
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

procedure TfrmSolicitudEmpleo.btpaisClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select pai_nacionalidad, pai_codigo');
  Search.query.add('from paises');
  Search.ResultField := 'pai_codigo';
  Search.Title := 'Países';
  if search.execute then
  begin
     QSolicitudpai_codigo.Value := StrToInt(Search.ValueField);
     DBEdit8.SetFocus;
  end;
end;

procedure TfrmSolicitudEmpleo.btestcivilClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select est_nombre, est_codigo');
  Search.query.add('from estado_civil');
  Search.ResultField := 'est_codigo';
  Search.Title := 'Estado cívil';
  if search.execute then
  begin
     QSolicitudest_codigo.Value := StrToInt(Search.ValueField);
     DBEdit12.SetFocus;
  end;
end;

procedure TfrmSolicitudEmpleo.btidiomaClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select idi_nombre, idi_codigo');
  Search.query.add('from idiomas');
  Search.ResultField := 'idi_codigo';
  Search.Title := 'Idiomas';
  if search.execute then
  begin
     QSolicitudidi_codigo.Value := StrToInt(Search.ValueField);
     DBEdit9.SetFocus;
  end;
end;

procedure TfrmSolicitudEmpleo.btposicionClick(Sender: TObject);
begin
  Search.query.clear;
  Search.query.add('select pos_nombre, pos_codigo');
  Search.query.add('from posiciones');
  Search.query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'pos_codigo';
  Search.Title := 'Posiciones';
  if search.execute then
  begin
     QSolicitudpos_codigo.Value := StrToInt(Search.ValueField);
     DBEdit16.SetFocus;
  end;
end;

procedure TfrmSolicitudEmpleo.QSolicitudpai_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QSolicitudpai_codigo.IsNull then
  begin
    Text := IntToStr(QSolicitudpai_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select pai_nacionalidad from paises');
    dm.Query1.SQL.Add('where pai_codigo = :pai');
    dm.Query1.Parameters.ParamByName('pai').Value := QSolicitudpai_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tpais.Text := dm.Query1.FieldByName('pai_nacionalidad').AsString;
    end
    else
      tpais.Text := '';
  end
  else
    tpais.Text := '';
end;

procedure TfrmSolicitudEmpleo.QSolicitudidi_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QSolicitudidi_codigo.IsNull then
  begin
    Text := IntToStr(QSolicitudidi_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select idi_nombre from idiomas');
    dm.Query1.SQL.Add('where idi_codigo = :idi');
    dm.Query1.Parameters.ParamByName('idi').Value := QSolicitudidi_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tidioma.Text := dm.Query1.FieldByName('idi_nombre').AsString;
    end
    else
      tidioma.Text := '';
  end
  else
    tidioma.Text := '';
end;

procedure TfrmSolicitudEmpleo.QSolicitudest_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QSolicitudest_codigo.IsNull then
  begin
    Text := IntToStr(QSolicitudest_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select est_nombre from estado_civil');
    dm.Query1.SQL.Add('where est_codigo = :est');
    dm.Query1.Parameters.ParamByName('est').Value := QSolicitudest_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      testcivil.Text := dm.Query1.FieldByName('est_nombre').AsString;
    end
    else
      testcivil.Text := '';
  end
  else
    testcivil.Text := '';
end;

procedure TfrmSolicitudEmpleo.QSolicitudpos_codigoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if not QSolicitudpos_codigo.IsNull then
  begin
    Text := IntToStr(QSolicitudpos_codigo.Value);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select pos_nombre from posiciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pos_codigo = :pos');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('pos').Value := QSolicitudpos_codigo.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      tposicion.Text := dm.Query1.FieldByName('pos_nombre').AsString;
    end
    else
      tposicion.Text := '';
  end
  else
    tposicion.Text := '';
end;

procedure TfrmSolicitudEmpleo.gRefKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if gRef.SelectedIndex <> 3 then
      gRef.SelectedIndex := gRef.SelectedIndex + 1
    else
    begin
      gRef.SelectedIndex := 0;
      QReferenciasPer.Append;
    end;
  end;
end;

procedure TfrmSolicitudEmpleo.QReferenciasPerAfterEdit(DataSet: TDataSet);
begin
  if not grabando then
    if QSolicitud.State = dsBrowse then QReferenciasPer.Cancel;
end;

procedure TfrmSolicitudEmpleo.QReferenciasPerAfterInsert(DataSet: TDataSet);
begin
  if not grabando then
    if QSolicitud.State = dsBrowse then QReferenciasPer.Cancel;
end;

procedure TfrmSolicitudEmpleo.btinserthabClick(Sender: TObject);
var
  sec : integer;
begin
  Application.CreateForm(tfrmHabilidadEmpleado, frmHabilidadEmpleado);
  frmHabilidadEmpleado.ShowModal;
  if frmHabilidadEmpleado.ModalResult = mrOk then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(hab_secuencia),0) as maximo');
    dm.Query1.SQL.Add('from solicitud_habilidades');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_numero = :sol');
    dm.Query1.SQL.Add('and cat_codigo = :cat');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sol').Value := QSolicitudsol_numero.Value;
    dm.Query1.Parameters.ParamByName('cat').Value := frmHabilidadEmpleado.DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    sec := dm.Query1.FieldByName('maximo').Value + 1;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into solicitud_habilidades (emp_codigo, sol_numero, cat_codigo,');
    dm.Query1.SQL.Add('hab_codigo, hab_secuencia, hab_destreza)');
    dm.Query1.SQL.Add('values (:emp, :sol, :cat, :hab, :sec, :des)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sol').Value := QSolicitudsol_numero.Value;
    dm.Query1.Parameters.ParamByName('cat').Value := frmHabilidadEmpleado.DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('hab').Value := frmHabilidadEmpleado.DBLookupComboBox1.KeyValue;
    dm.Query1.Parameters.ParamByName('sec').Value := sec;
    dm.Query1.Parameters.ParamByName('des').Value := Copy(frmHabilidadEmpleado.RadioGroup1.Items[frmHabilidadEmpleado.RadioGroup1.ItemIndex],1,1);
    dm.Query1.ExecSQL;

    QHabilidades.Close;
    QHabilidades.Open;
  end;
  frmHabilidadEmpleado.Release;
end;

procedure TfrmSolicitudEmpleo.QHabilidadesCalcFields(DataSet: TDataSet);
begin
  if QHabilidadeshab_destreza.Value = 'E' then
    QHabilidadesDestreza.Value := 'Excelente'
  else if QHabilidadeshab_destreza.Value = 'M' then
    QHabilidadesDestreza.Value := 'Muy Bueno'
  else if QHabilidadeshab_destreza.Value = 'B' then
    QHabilidadesDestreza.Value := 'Bueno'
  else if QHabilidadeshab_destreza.Value = 'R' then
    QHabilidadesDestreza.Value := 'Regular';
end;

procedure TfrmSolicitudEmpleo.btdeletehabClick(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from solicitud_habilidates');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_numero = :num');
    dm.Query1.SQL.Add('and cat_codigo = :cat');
    dm.Query1.SQL.Add('and hab_codigo = :hab');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QSolicitudsol_numero.Value;
    dm.Query1.Parameters.ParamByName('cat').Value := QHabilidadescat_codigo.Value;
    dm.Query1.Parameters.ParamByName('hab').Value := QHabilidadeshab_codigo.Value;
    dm.Query1.ExecSQL;

    QHabilidades.Close;
    QHabilidades.Open;
  end;

  DBGrid6.SetFocus;
end;

procedure TfrmSolicitudEmpleo.SpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(tfrmPosicionesEmpleados, frmPosicionesEmpleados);
  frmPosicionesEmpleados.ShowModal;
  if frmPosicionesEmpleados.ModalResult = mrok then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into solicitud_posiciones (emp_codigo, sol_numero,');
    dm.Query1.SQL.Add('pos_codigo, cla_codigo)');
    dm.Query1.SQL.Add('values (:emp, :sol, :pos, :cla)');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sol').Value := QSolicitudsol_numero.Value;
    dm.Query1.Parameters.ParamByName('pos').Value := frmPosicionesEmpleados.DBLookupComboBox3.KeyValue;
    dm.Query1.Parameters.ParamByName('cla').Value := frmPosicionesEmpleados.DBLookupComboBox2.KeyValue;
    dm.Query1.ExecSQL;

    QPosiciones.Close;
    QPosiciones.Open;
  end;
  frmPosicionesEmpleados.Release;
end;

procedure TfrmSolicitudEmpleo.SpeedButton6Click(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from solicitud_posiciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_numero = :num');
    dm.Query1.SQL.Add('and pos_codigo = :pos');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('num').Value := QSolicitudsol_numero.Value;
    dm.Query1.Parameters.ParamByName('pos').Value := QPosicionespos_codigo.Value;
    dm.Query1.ExecSQL;

    QPosiciones.Close;
    QPosiciones.Open;
  end;

  DBGrid2.SetFocus;
end;

procedure TfrmSolicitudEmpleo.btinsertestClick(Sender: TObject);
begin
  Application.CreateForm(tfrmEstudiosRealizados, frmEstudiosRealizados);
  frmEstudiosRealizados.ShowModal;
  if frmEstudiosRealizados.ModalResult = mrok then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select max(est_secuencia) as maximo');
    Query1.SQL.Add('from solicitud_estudios');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and sol_numero = :sol');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('sol').Value := QSolicitudsol_numero.Value;
    Query1.Open;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('insert into solicitud_estudios (emp_codigo, sol_numero,');
    dm.Query1.SQL.Add('est_secuencia, est_desde, est_hasta, pai_codigo, est_titulo,');
    dm.Query1.SQL.Add('ins_codigo, est_estudio)');
    dm.Query1.SQL.Add('values (:emp, :sol, :sec, :desde, :hasta, :pai, :titulo, :inst, :estudio)');
    dm.Query1.Parameters.ParamByName('emp').Value     := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sol').Value     := QSolicitudsol_numero.Value;
    dm.Query1.Parameters.ParamByName('sec').Value     := Query1.FieldByName('maximo').AsInteger + 1;
    dm.Query1.Parameters.ParamByName('desde').Value   := frmEstudiosRealizados.fecha1.Date;
    dm.Query1.Parameters.ParamByName('hasta').Value   := frmEstudiosRealizados.fecha2.Date;
    dm.Query1.Parameters.ParamByName('pai').Value     := frmEstudiosRealizados.DBLookupComboBox1.KeyValue;
    dm.Query1.Parameters.ParamByName('inst').Value    := frmEstudiosRealizados.DBLookupComboBox2.KeyValue;
    dm.Query1.Parameters.ParamByName('titulo').Value  := frmEstudiosRealizados.edtitulo.Text;
    dm.Query1.Parameters.ParamByName('estudio').Value := frmEstudiosRealizados.edestudio.Text;
    dm.Query1.ExecSQL;

    QEstudios.Close;
    QEstudios.Open;
  end;
  frmEstudiosRealizados.Release;
end;

procedure TfrmSolicitudEmpleo.btdeleteestClick(Sender: TObject);
begin
  if MessageDlg('Está seguro?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('delete from solicitud_estudios');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_numero = :sol');
    dm.Query1.SQL.Add('and est_secuencia = :sec');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('sol').Value := QSolicitudsol_numero.Value;
    dm.Query1.Parameters.ParamByName('sec').Value := QEstudiosest_secuencia.Value;
    dm.Query1.ExecSQL;
    
    QEstudios.Close;
    QEstudios.Open;
  end;
  DBGrid4.SetFocus;
end;

procedure TfrmSolicitudEmpleo.QExperienciaAfterEdit(DataSet: TDataSet);
begin
  if not grabando then
    if QSolicitud.State = dsBrowse then QExperiencia.Cancel;
end;

procedure TfrmSolicitudEmpleo.QExperienciaAfterInsert(DataSet: TDataSet);
begin
  if not grabando then
    if QSolicitud.State = dsBrowse then QExperiencia.Cancel;
end;

procedure TfrmSolicitudEmpleo.DBGrid5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if DBGrid5.SelectedIndex <> 6 then
      DBGrid5.SelectedIndex := DBGrid5.SelectedIndex + 1
    else
    begin
      DBGrid5.SelectedIndex := 0;
      QExperiencia.Append;
    end;
  end;
end;

procedure TfrmSolicitudEmpleo.DBGrid3DblClick(Sender: TObject);
begin
  QSolicitud.Close;
  QSolicitud.Parameters.ParamByName('sol').Value := QListadosol_numero.Value;
  QSolicitud.open;

  QReferenciasPer.Close;
  QReferenciasPer.Parameters.ParamByName('sol').Value := QListadosol_numero.Value;
  QReferenciasPer.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QReferenciasPer.Open;

  QExperiencia.Close;
  QExperiencia.Parameters.ParamByName('sol').Value := QListadosol_numero.Value;
  QExperiencia.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QExperiencia.Open;

  TabControl1.ActivePageIndex := 0;  
end;

end.
