unit RH49;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Db, ADODB, IBCustomDataSet,
  IBQuery, IBUpdateSQL, ComCtrls, QuerySearchDlgADO, ToolWin, ActnList,
  Grids, DBGrids;

type
  TfrmDescuentos = class(TForm)
    QDescuentos: TADOQuery;
    dsDescuentos: TDataSource;
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
    QEmpleados: TADOQuery;
    dsEmpleados: TDataSource;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label7: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    QPeriodo: TADOQuery;
    QPeriodocodigo: TStringField;
    QPeriodoNombre: TStringField;
    dsPeriodo: TDataSource;
    DBGrid1: TDBGrid;
    QListado: TADOQuery;
    dsListado: TDataSource;
    QTipo: TADOQuery;
    dsTipo: TDataSource;
    QDescuentosemp_codigo: TIntegerField;
    QDescuentosdes_codigo: TIntegerField;
    QDescuentosemp_numero: TIntegerField;
    QDescuentostde_codigo: TIntegerField;
    QDescuentosdes_fecha: TDateTimeField;
    QDescuentosdes_valor: TBCDField;
    QDescuentosdes_fijo_variable: TStringField;
    QDescuentosdes_porcentual: TStringField;
    QDescuentosdes_interes: TBCDField;
    QDescuentosdes_cuotas: TIntegerField;
    QDescuentosdes_periodo_descuento: TStringField;
    QTipotde_codigo: TIntegerField;
    QTipotde_nombre: TStringField;
    DBCheckBox1: TDBCheckBox;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    QListadotde_nombre: TStringField;
    QListadodes_fecha: TDateTimeField;
    QListadodes_valor: TBCDField;
    QListadodes_fijo_variable: TStringField;
    QListadodes_codigo: TIntegerField;
    QDescuentosdes_monto_pagado: TBCDField;
    QDescuentosSaldo: TFloatField;
    QDescuentosTotal: TFloatField;
    QDescuentosDeduccion: TFloatField;
    QDescuentosdes_cuotas_pagadas: TIntegerField;
    QDescuentosdes_status: TStringField;
    DBLookupComboBox4: TDBLookupComboBox;
    fdesde: TDateTimePicker;
    fhasta: TDateTimePicker;
    btrefrescar: TBitBtn;
    QListadoemp_codigo: TIntegerField;
    ckempleado: TCheckBox;
    ckfecha: TCheckBox;
    Memo1: TRichEdit;
    QListadoemp_nombres: TStringField;
    QListadoemp_apellido_paterno: TStringField;
    QListadoemp_apellido_materno: TStringField;
    QListadoNombres: TStringField;
    QEmpleadosemp_numero: TIntegerField;
    QEmpleadosemp_codigo: TIntegerField;
    QEmpleadosNombres: TStringField;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    Label14: TLabel;
    Label15: TLabel;
    fec_acreditar: TDateTimePicker;
    fec_recibo: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QRecibos: TADOQuery;
    QRecibosrec_numero: TIntegerField;
    QRecibosrec_fecha: TDateTimeField;
    QReciboscli_codigo: TIntegerField;
    QRecibosrec_nombre: TStringField;
    QRecibosrec_monto: TBCDField;
    QRecibosrec_concepto: TStringField;
    dsRecibos: TDataSource;
    QRecibosemp_numero: TIntegerField;
    DBLookupComboBox5: TDBLookupComboBox;
    Label16: TLabel;
    Query1: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QDescuentosAfterDelete(DataSet: TDataSet);
    procedure QDescuentosAfterPost(DataSet: TDataSet);
    procedure QDescuentosNewRecord(DataSet: TDataSet);
    procedure btFindClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btpriorClick(Sender: TObject);
    procedure btnextClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsDescuentosStateChange(Sender: TObject);
    procedure QDescuentosBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure QDescuentosCalcFields(DataSet: TDataSet);
    procedure btrefrescarClick(Sender: TObject);
    procedure QListadoCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDescuentos: TfrmDescuentos;

implementation

uses SIGMA01, SIGMA00;


{$R *.DFM}

procedure TfrmDescuentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmDescuentos.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDescuentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmDescuentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmDescuentos.QDescuentosAfterDelete(DataSet: TDataSet);
begin
  QDescuentos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmDescuentos.QDescuentosAfterPost(DataSet: TDataSet);
begin
  QDescuentos.UpdateBatch;
  QListado.Close;
  QListado.Open;
end;

procedure TfrmDescuentos.QDescuentosNewRecord(DataSet: TDataSet);
begin
  QDescuentosdes_status.Value := 'EMI';
  QDescuentosemp_codigo.value := dm.QEmpresasEMP_CODIGO.value;
  QDescuentosdes_fecha.Value  := Date;
  QDescuentosdes_fijo_variable.Value := 'V';
  QDescuentosdes_periodo_descuento.Value  := '1';
  QDescuentosdes_porcentual.Value := 'False';
  QDescuentosdes_monto_pagado.Value := 0;
  QDescuentosdes_cuotas_pagadas.Value := 0;
end;

procedure TfrmDescuentos.btFindClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombres');
  Search.AliasFields.Add('Dscuento');
  Search.AliasFields.Add('Codigo');
  Search.ResultField := 'des_codigo';
  Search.Title := 'Descuentos';
  Search.Query.Clear;
  Search.Query.Add('select (e.emp_nombres+'+#39+' '+#39+'+e.emp_apellido_paterno+'+#39+' '+#39+'+e.emp_apellido_materno as Nombres,');
  Search.Query.Add('t.tde_nombre, d.des_codigo');
  Search.Query.Add('from descuentos d, empleados e, tipo_descuentos t');
  Search.Query.Add('where d.emp_codigo = e.emp_codigo');
  Search.Query.Add('and d.emp_numero = e.emp_numero');
  Search.Query.Add('and d.emp_codigo = t.emp_codigo');
  Search.Query.Add('and d.tde_codigo = t.tde_codigo');
  Search.Query.Add('and d.emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if search.execute then
  begin
    QDescuentos.Close;
    QDescuentos.Parameters.ParamByName('des').Value := StrToInt(Search.ValueField);
    QDescuentos.Open;
  end;
end;

procedure TfrmDescuentos.btPostClick(Sender: TObject);
begin
  QDescuentos.post;
end;

procedure TfrmDescuentos.btCancelClick(Sender: TObject);
begin
  QDescuentos.cancel;
end;

procedure TfrmDescuentos.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
    QDescuentos.delete;
end;

procedure TfrmDescuentos.btEditClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QDescuentos.edit;
end;

procedure TfrmDescuentos.btInsertClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DBEdit2.setfocus;
  QDescuentos.insert;
end;

procedure TfrmDescuentos.btpriorClick(Sender: TObject);
begin
  if not QDescuentos.Bof then QDescuentos.prior;
end;

procedure TfrmDescuentos.btnextClick(Sender: TObject);
begin
  if not QDescuentos.eof then QDescuentos.next;
end;

procedure TfrmDescuentos.FormActivate(Sender: TObject);
begin
  if not QDescuentos.active then
  begin
    QDescuentos.open;
    QEmpleados.Open;
    QPeriodo.Open;
    QTipo.Open;
    QListado.Open;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QDescuentos;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmDescuentos.dsDescuentosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsDescuentos.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmDescuentos.QDescuentosBeforePost(DataSet: TDataSet);
begin
  if QDescuentosdes_valor.value <= 0 then
  begin
    showmessage('EL VALOR NO PUEDE ESTAR EN BLANCO');
    DBEdit3.setfocus;
    abort;
  end;
  if QDescuentos.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select isnull(max(des_codigo),0) as maximo');
    dm.query1.sql.add('from descuentos');
    dm.query1.sql.add('where emp_codigo = :emp');
    dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
    dm.query1.open;
    QDescuentosdes_codigo .value := dm.query1.fieldbyname('maximo').asinteger +1;

    if QDescuentosdes_cuotas.Value > 0 then
      QDescuentosdes_status.Value := 'PEN';
  end;
end;

procedure TfrmDescuentos.FormCreate(Sender: TObject);
var
  a : integer;
begin
  fdesde.Date := Date;
  fhasta.Date := Date;
  fec_acreditar.Date := Date;
  fec_recibo.Date := Date;
  Memo1.Lines := QListado.SQL;

  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
end;

procedure TfrmDescuentos.DBGrid1DblClick(Sender: TObject);
begin
  QDescuentos.Close;
  QDescuentos.Parameters.ParamByName('des').Value := QListadodes_codigo.Value;
  QDescuentos.Open;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfrmDescuentos.QDescuentosCalcFields(DataSet: TDataSet);
begin
  if QDescuentosdes_cuotas.Value > 0 then
  begin
    QDescuentosSaldo.Value := QDescuentosdes_valor.Value - QDescuentosdes_monto_pagado.Value;
    QDescuentosTotal.Value := QDescuentosdes_valor.Value + ((QDescuentosdes_valor.Value *
                                                           QDescuentosdes_interes.Value)/100);
    QDescuentosDeduccion.Value := QDescuentosTotal.Value / QDescuentosdes_cuotas.Value;
  end;
end;

procedure TfrmDescuentos.btrefrescarClick(Sender: TObject);
begin
  QListado.Close;
  QListado.SQL := Memo1.Lines;
  if ckempleado.Checked then
     QListado.SQL.Add('and e.emp_numero = '+IntToStr(DBLookupComboBox4.KeyValue));

  if ckfecha.Checked then
  begin
    QListado.SQL.Add('and d.des_fecha between convert(datetime, :fec1, 105) and convert(datetime, :fec2, 105)');
    QListado.Parameters.ParamByName('fec1').DataType := ftDate;
    QListado.Parameters.ParamByName('fec2').DataType := ftDate;
    QListado.Parameters.ParamByName('fec1').Value    := fdesde.Date;
    QListado.Parameters.ParamByName('fec2').Value    := fhasta.Date;
  end;
  QListado.SQL.Add('order by d.des_codigo');
  QListado.Open;
end;

procedure TfrmDescuentos.QListadoCalcFields(DataSet: TDataSet);
begin
  QListadoNombres.Value := QListadoemp_nombres.Value + ' ' +
                           QListadoemp_apellido_paterno.Value + ' '+
                           QListadoemp_apellido_materno.Value;
end;

procedure TfrmDescuentos.BitBtn1Click(Sender: TObject);
begin
  QRecibos.Close;
  QRecibos.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QRecibos.Parameters.ParamByName('tip').Value := dm.QParamRHpar_tipo_cliente_empleado.Value;
  QRecibos.Parameters.ParamByName('fec').DataType := ftDate;
  QRecibos.Parameters.ParamByName('fec').Value := fec_recibo.Date;
  QRecibos.Open;
  DBGrid2.SetFocus;
end;

procedure TfrmDescuentos.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Verifico que la fecha a acreditar es la fecha de la nomina?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select des_codigo from descuentos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and emp_numero = :cod');
    dm.Query1.SQL.Add('and tde_codigo = :des');
    dm.Query1.SQL.Add('and des_fecha = :fec');
    dm.Query1.SQL.Add('and des_valor = :val');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('cod').Value := QRecibosemp_numero.Value;
    dm.Query1.Parameters.ParamByName('des').Value := dm.QParamRHpar_tipo_descuento_cxc.Value;
    dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
    dm.Query1.Parameters.ParamByName('fec').Value := fec_recibo.Date;
    dm.Query1.Parameters.ParamByName('val').Value := QRecibosrec_monto.AsFloat;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      if MessageDlg('Ya existe un descuento con para este empleado con este monto'+#13+
      'y para esta fecha, desea continuar?', mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('select max(des_codigo) as maximo');
        Query1.SQL.Add('from descuentos');
        Query1.SQL.Add('where emp_codigo = :emp');
        Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query1.Open;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('insert into descuentos (emp_codigo, des_codigo,');
        dm.Query1.SQL.Add('emp_numero, tde_codigo, des_fecha, des_valor, des_fijo_variable,');
        dm.Query1.SQL.Add('des_porcentual, des_interes, des_cuotas, des_periodo_descuento,');
        dm.Query1.SQL.Add('des_monto_pagado, des_cuotas_pagadas, des_status)');
        dm.Query1.SQL.Add('values (:emp, :sec, :cod, :tip, :fec, :val, '+QuotedStr('V')+',');
        dm.Query1.SQL.Add(QuotedStr('False')+',null, null, :per,');
        dm.Query1.SQL.Add('0, 0, :st)');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('sec').Value := Query1.FieldByName('maximo').AsInteger + 1; 
        dm.Query1.Parameters.ParamByName('cod').Value := QRecibosemp_numero.Value;
        dm.Query1.Parameters.ParamByName('tip').Value := dm.QParamRHpar_tipo_descuento_cxc.Value;
        dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
        dm.Query1.Parameters.ParamByName('fec').Value := fec_recibo.Date;
        dm.Query1.Parameters.ParamByName('val').Value := QRecibosrec_monto.AsFloat;
        dm.Query1.Parameters.ParamByName('per').Value := DBLookupComboBox5.KeyValue;
        dm.Query1.Parameters.ParamByName('st').Value  := 'EMI';
        dm.Query1.ExecSQL;
        QListado.Close;
        QListado.Open;
      end
      else
      begin
        DBGrid2.SetFocus;
      end;
    end
    else
    begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select max(des_codigo) as maximo');
      Query1.SQL.Add('from descuentos');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      Query1.Open;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('insert into descuentos (emp_codigo, des_codigo,');
      dm.Query1.SQL.Add('emp_numero, tde_codigo, des_fecha, des_valor, des_fijo_variable,');
      dm.Query1.SQL.Add('des_porcentual, des_interes, des_cuotas, des_periodo_descuento,');
      dm.Query1.SQL.Add('des_monto_pagado, des_cuotas_pagadas, des_status)');
      dm.Query1.SQL.Add('values (:emp, :sec, :cod, :tip, :fec, :val, '+QuotedStr('V')+',');
      dm.Query1.SQL.Add(QuotedStr('False')+',null, null, :per,');
      dm.Query1.SQL.Add('0, 0, :st)');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('sec').Value := Query1.FieldByName('maximo').AsInteger + 1;
      dm.Query1.Parameters.ParamByName('cod').Value := QRecibosemp_numero.Value;
      dm.Query1.Parameters.ParamByName('tip').Value := dm.QParamRHpar_tipo_descuento_cxc.Value;
      dm.Query1.Parameters.ParamByName('fec').DataType := ftDate;
      dm.Query1.Parameters.ParamByName('fec').Value := fec_acreditar.Date;
      dm.Query1.Parameters.ParamByName('val').Value := QRecibosrec_monto.AsFloat;
      dm.Query1.Parameters.ParamByName('per').Value := DBLookupComboBox5.KeyValue;
      dm.Query1.Parameters.ParamByName('st').Value  := 'EMI';
      dm.Query1.ExecSQL;
      QListado.Close;
      QListado.Open;
    end;
  end
  else
    DBGrid2.SetFocus;
end;

procedure TfrmDescuentos.FormPaint(Sender: TObject);
begin
  with frmDescuentos do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

end.
