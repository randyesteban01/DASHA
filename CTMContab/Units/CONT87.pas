unit CONT87;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons, DateUtils,
  QuerySearchDlgADO;

type
  TfrmCashflowTransaccion = class(TForm)
    QTransacciones: TADOQuery;
    dsTransacciones: TDataSource;
    DBGrid1: TDBGrid;
    QTransaccionesGrupoID: TIntegerField;
    QTransaccionesSubgrupoID: TIntegerField;
    QTransaccionesConceptoID: TIntegerField;
    QTransaccionesTransaccionID: TBCDField;
    QTransaccionesFecha: TDateTimeField;
    QTransaccionesMonto: TBCDField;
    QTransaccionesStatus: TStringField;
    btClose: TBitBtn;
    QTransaccionesConcepto: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    QTransaccionesemp_codigo: TIntegerField;
    QTransaccionesRecurrente: TStringField;
    QTransaccionesCantidad_meses: TIntegerField;
    Query1: TADOQuery;
    QTransaccionesTransaccion_recurrente: TBCDField;
    QTransaccionesNombre: TStringField;
    QTransaccionesFacturaCxP: TStringField;
    QTransaccionesFacturaCxC: TIntegerField;
    QTransaccionesDocumento: TStringField;
    QTransaccionescen_codigo: TIntegerField;
    QTransaccionestasa: TBCDField;
    QTransaccionescen_nombre: TStringField;
    QTransaccionesmapid: TIntegerField;
    QTransaccionesdetallemapid: TIntegerField;
    BitBtn4: TBitBtn;
    Search: TQrySearchDlgADO;
    BitBtn5: TBitBtn;
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QTransaccionesNewRecord(DataSet: TDataSet);
    procedure QTransaccionesBeforePost(DataSet: TDataSet);
    procedure QTransaccionesAfterInsert(DataSet: TDataSet);
    procedure QTransaccionesAfterEdit(DataSet: TDataSet);
    procedure QTransaccionesAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure QTransaccionesCalcFields(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    accion, gru, sub, con : integer;
    operacion : string;
  end;

var
  frmCashflowTransaccion: TfrmCashflowTransaccion;

implementation

uses SIGMA01, CONT88, SIGMA00, CONT90;

{$R *.dfm}

procedure TfrmCashflowTransaccion.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCashflowTransaccion.BitBtn3Click(Sender: TObject);
var
  t : tbookmark;
begin
  t := QTransacciones.GetBookmark;
  Application.CreateForm(tfrmCashflowActTransaccion, frmCashflowActTransaccion);
  QTransacciones.Append;
  frmCashflowActTransaccion.fecha.Date := date;
  frmCashflowActTransaccion.ShowModal;
  frmCashflowActTransaccion.Release;
  QTransacciones.Close;
  QTransacciones.Open;
  QTransacciones.GotoBookmark(t);
end;

procedure TfrmCashflowTransaccion.BitBtn2Click(Sender: TObject);
var
  t : tbookmark;
begin
  t := QTransacciones.GetBookmark;
  Application.CreateForm(tfrmCashflowActTransaccion, frmCashflowActTransaccion);
  QTransacciones.Edit;
  frmCashflowActTransaccion.fecha.Date := QTransaccionesFecha.Value;
  frmCashflowActTransaccion.ShowModal;
  frmCashflowActTransaccion.Release;
  QTransacciones.Close;
  QTransacciones.Open;
  QTransacciones.GotoBookmark(t);
end;

procedure TfrmCashflowTransaccion.QTransaccionesNewRecord(
  DataSet: TDataSet);
begin
  QTransaccionesemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
  QTransaccionesStatus.Value     := 'PEN';
  QTransaccionesGrupoID.Value    := gru;
  QTransaccionesSubgrupoID.Value := sub;
  QTransaccionesConceptoID.Value := con;
  QTransaccionesRecurrente.Value := 'False';
  QTransaccionesCantidad_meses.Value := 0;
end;

procedure TfrmCashflowTransaccion.QTransaccionesBeforePost(
  DataSet: TDataSet);
begin
  if QTransacciones.State = dsinsert then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select (isnull(max(transaccionid),0) + 1) as maximo');
    dm.Query1.SQL.Add('from Cashflow_Transacciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and GrupoID = :gru');
    dm.Query1.SQL.Add('and SubgrupoID = :sub');
    dm.Query1.SQL.Add('and ConceptoID = :con');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('gru').Value := gru;
    dm.Query1.Parameters.ParamByName('sub').Value := sub;
    dm.Query1.Parameters.ParamByName('con').Value := con;
    dm.Query1.Open;
    QTransaccionesTransaccionID.Value := dm.Query1.FieldByName('maximo').Value;
    QTransaccionesTransaccion_recurrente.Value := QTransaccionesTransaccionID.Value;
  end;
end;

procedure TfrmCashflowTransaccion.QTransaccionesAfterInsert(
  DataSet: TDataSet);
begin
  accion := 1;
end;

procedure TfrmCashflowTransaccion.QTransaccionesAfterEdit(
  DataSet: TDataSet);
begin
  accion := 2;
end;

procedure TfrmCashflowTransaccion.QTransaccionesAfterPost(
  DataSet: TDataSet);
var
  a, meses, map, det, cen : integer;
  monto, recurrente, tasa : double;
  concepto, nombre : string;
  ano, mes, dia : word;
begin
  if accion = 1 then
  begin
    QTransacciones.UpdateBatch;
    if QTransaccionesRecurrente.Value = 'True' then
    begin
      if QTransaccionesCantidad_meses.Value > 0 then
      begin
        meses := QTransaccionesCantidad_meses.Value;
        monto := QTransaccionesMonto.Value;
        concepto := QTransaccionesConcepto.Value;
        decodedate(QTransaccionesFecha.Value, ano, mes, dia);
        recurrente := QTransaccionesTransaccionID.Value;
        nombre := QTransaccionesNombre.Value;
        tasa := QTransaccionestasa.Value;
        map := QTransaccionesmapid.Value;
        det := QTransaccionesdetallemapid.Value;
        cen := QTransaccionescen_codigo.Value; 

        for a := 1 to QTransaccionesCantidad_meses.Value-1 do
        begin
          meses := meses - 1;

          dm.Query1.Close;
          dm.Query1.SQL.Clear;
          dm.Query1.SQL.Add('select (isnull(max(transaccionid),0) + 1) as maximo');
          dm.Query1.SQL.Add('from Cashflow_Transacciones');
          dm.Query1.SQL.Add('where emp_codigo = :emp');
          dm.Query1.SQL.Add('and GrupoID = :gru');
          dm.Query1.SQL.Add('and SubgrupoID = :sub');
          dm.Query1.SQL.Add('and ConceptoID = :con');
          dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.Query1.Parameters.ParamByName('gru').Value := gru;
          dm.Query1.Parameters.ParamByName('sub').Value := sub;
          dm.Query1.Parameters.ParamByName('con').Value := con;
          dm.Query1.Open;

          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('insert into Cashflow_Transacciones (emp_codigo, GrupoID, SubgrupoID, ConceptoID,');
          Query1.SQL.Add('TransaccionID, Fecha, Concepto, Monto, Status, Recurrente, Cantidad_meses,');
          Query1.SQL.Add('Transaccion_recurrente, Nombre, Tasa, cen_codigo, mapid, detallemapid)');
          Query1.SQL.Add('values (:emp, :gru, :sub, :con, :tra, :fec, :concepto, :mto, :st, :rec, :mes, :recu,');
          Query1.SQL.Add(':nom, :tas, :cen, :map, :det)');
          Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          Query1.Parameters.ParamByName('gru').Value := gru;
          Query1.Parameters.ParamByName('sub').Value := sub;
          Query1.Parameters.ParamByName('con').Value := con;
          Query1.Parameters.ParamByName('tra').Value := dm.Query1.FieldByName('maximo').Value;
          if mes < 12 then
          begin
            if (mes+1 = 2) and (dia >28) then
              Query1.Parameters.ParamByName('fec').Value := EncodeDate(ano, mes+1, 28)
            else
              Query1.Parameters.ParamByName('fec').Value := EncodeDate(ano, mes+1, dia)
          end
          else
          begin
            if (mes+1 = 2) and (dia >28) then
              Query1.Parameters.ParamByName('fec').Value := EncodeDate(ano+1, 1, 28)
            else
              Query1.Parameters.ParamByName('fec').Value := EncodeDate(ano+1, 1, dia);
          end;
          Query1.Parameters.ParamByName('concepto').Value := concepto;
          Query1.Parameters.ParamByName('mto').Value      := monto;
          Query1.Parameters.ParamByName('st').Value       := 'PEN';
          Query1.Parameters.ParamByName('rec').Value      := 'True';
          Query1.Parameters.ParamByName('mes').Value      := meses;
          Query1.Parameters.ParamByName('recu').Value     := recurrente;
          Query1.Parameters.ParamByName('nom').Value      := nombre;
          Query1.Parameters.ParamByName('tas').Value      := tasa;
          Query1.Parameters.ParamByName('cen').Value      := cen;
          Query1.Parameters.ParamByName('map').Value      := map;
          Query1.Parameters.ParamByName('det').Value      := det;
          Query1.ExecSQL;

          mes := mes + 1;
        end;
      end;
    end;
  end;
end;

procedure TfrmCashflowTransaccion.BitBtn1Click(Sender: TObject);
var
  t : TBookmark;
  sup : integer;
begin
  Query1.Close;
  Query1.SQL.Clear;
  Query1.SQL.Add('select * from Cashflow_Mensajes');
  Query1.SQL.Add('where emp_codigo = :emp');
  Query1.SQL.Add('and grupoID = :gru and subgrupoid = :sub and conceptoid = :con');
  Query1.SQL.Add('and TransaccionID = :tr');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('gru').Value := QTransaccionesGrupoID.Value;
  Query1.Parameters.ParamByName('sub').Value := QTransaccionesSubgrupoID.Value;
  Query1.Parameters.ParamByName('con').Value := QTransaccionesConceptoID.Value;
  Query1.Parameters.ParamByName('tr').Value  := QTransaccionesTransaccionID.Value;
  Query1.Open;
  if Query1.RecordCount > 0 then
    MessageDlg('Esta transaccion no se puede eliminar,'+#13+'debito a que posee notas grabadas', mtError, [mbok], 0)
  else
  begin
    t := QTransacciones.GetBookmark;
    if QTransaccionesRecurrente.Value = 'True' then
    begin
      if MessageDlg('Eliminar la recurrencia?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('delete from Cashflow_Transacciones where emp_codigo = :emp');
        Query1.SQL.Add('and grupoID = :gru and subgrupoid = :sub and conceptoid = :con');
        Query1.SQL.Add('and Transaccion_recurrente = :tr');
        Query1.SQL.Add('and Cantidad_meses < :can');
        Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query1.Parameters.ParamByName('gru').Value := QTransaccionesGrupoID.Value;
        Query1.Parameters.ParamByName('sub').Value := QTransaccionesSubgrupoID.Value;
        Query1.Parameters.ParamByName('con').Value := QTransaccionesConceptoID.Value;
        Query1.Parameters.ParamByName('tr').Value  := QTransaccionesTransaccion_recurrente.Value;
        Query1.Parameters.ParamByName('can').Value := QTransaccionesCantidad_meses.Value;
        Query1.ExecSQL;
      end
      else
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('delete from Cashflow_Transacciones where emp_codigo = :emp');
        Query1.SQL.Add('and grupoID = :gru and subgrupoid = :sub and conceptoid = :con');
        Query1.SQL.Add('and TransaccionID = :tr');
        Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        Query1.Parameters.ParamByName('gru').Value := QTransaccionesGrupoID.Value;
        Query1.Parameters.ParamByName('sub').Value := QTransaccionesSubgrupoID.Value;
        Query1.Parameters.ParamByName('con').Value := QTransaccionesConceptoID.Value;
        Query1.Parameters.ParamByName('tr').Value  := QTransaccionesTransaccionID.Value;
        Query1.ExecSQL;
      end;
    end
    else
    begin
        if MessageDlg('Eliminar este flujo?',mtConfirmation,[mbyes,mbno],0) = mryes then
        begin
          Query1.Close;
          Query1.SQL.Clear;
          Query1.SQL.Add('delete from Cashflow_Transacciones where emp_codigo = :emp');
          Query1.SQL.Add('and grupoID = :gru and subgrupoid = :sub and conceptoid = :con');
          Query1.SQL.Add('and TransaccionID = :tr');
          Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
          Query1.Parameters.ParamByName('gru').Value := QTransaccionesGrupoID.Value;
          Query1.Parameters.ParamByName('sub').Value := QTransaccionesSubgrupoID.Value;
          Query1.Parameters.ParamByName('con').Value := QTransaccionesConceptoID.Value;
          Query1.Parameters.ParamByName('tr').Value  := QTransaccionesTransaccionID.Value;
          Query1.ExecSQL;

          if not QTransaccionesFacturaCxP.IsNull then
          begin
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.Add('select sup_codigo from provfacturas where emp_codigo = :emp and Cashflow_Grupo = :gru');
            Query1.SQL.Add('and Cashflow_Subgrupo = :sub and Cashflow_Concepto = :con and Cashflow_TransaccionID = :tra');
            Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            Query1.Parameters.ParamByName('gru').Value := QTransaccionesGrupoID.Value;
            Query1.Parameters.ParamByName('sub').Value := QTransaccionesSubgrupoID.Value;
            Query1.Parameters.ParamByName('con').Value := QTransaccionesConceptoID.Value;
            Query1.Parameters.ParamByName('tra').Value := QTransaccionesTransaccionID.Value;
            Query1.Open;
            sup := Query1.FieldByName('sup_codigo').AsInteger;

            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.Add('update provfacturas set Cashflow_Grupo = null,');
            Query1.SQL.Add('Cashflow_Subgrupo = null, Cashflow_Concepto = null, Cashflow_TransaccionID = null');
            Query1.SQL.Add('where emp_codigo = :emp and sup_codigo = :sup and fac_numero = :fac');
            Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
            Query1.Parameters.ParamByName('sup').Value := sup;
            Query1.Parameters.ParamByName('fac').Value := QTransaccionesFacturaCxP.Value;
            Query1.ExecSQL;
          end;
        end;
    end;
    QTransacciones.DisableControls;
    QTransacciones.Close;
    QTransacciones.Open;
    try
      QTransacciones.GotoBookmark(t);
    except
      QTransacciones.EnableControls;
    end;
    QTransacciones.EnableControls;
  end;
end;

procedure TfrmCashflowTransaccion.QTransaccionesCalcFields(
  DataSet: TDataSet);
begin
  if operacion = 'S' then
    QTransaccionesDocumento.Value := QTransaccionesFacturaCxC.AsString
  else
    QTransaccionesDocumento.Value := QTransaccionesFacturaCxP.AsString;
end;

procedure TfrmCashflowTransaccion.BitBtn4Click(Sender: TObject);
var
  t : tbookmark;
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Conceptos del flujo';
  Search.ResultField := 'conceptoid';
  Search.Query.Add('select Nombre, conceptoid from Cashflow_Conceptos');
  Search.Query.Add('where emp_codigo = '+dm.QEmpresasemp_codigo.asstring);
  Search.Query.Add('and GrupoID = ' +inttostr(gru));
  Search.Query.Add('and subgrupoid =' +inttostr(sub));
  if Search.execute then
  begin
    t := QTransacciones.GetBookmark;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select (isnull(max(TransaccionID),0) + 1) as maximo from Cashflow_Transacciones');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and GrupoID = :gru');
    dm.Query1.SQL.Add('and SubgrupoID = :sub');
    dm.Query1.SQL.Add('and ConceptoID = :con');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('gru').Value := gru;
    dm.Query1.Parameters.ParamByName('sub').Value := sub;
    dm.Query1.Parameters.ParamByName('con').Value := StrToInt(Search.ValueField);
    dm.Query1.Open;

    QTransacciones.Edit;
    QTransaccionesConceptoID.Value := StrToInt(Search.ValueField);
    QTransaccionesTransaccionID.Value := dm.Query1.FieldByName('maximo').AsInteger;
    QTransacciones.Post;
    QTransacciones.UpdateBatch;
    QTransacciones.DisableControls;
    QTransacciones.Close;
    QTransacciones.Open;
    if QTransacciones.RecordCount > 0 then
      QTransacciones.GotoBookmark(t);
    QTransacciones.EnableControls;
  end;
end;

procedure TfrmCashflowTransaccion.BitBtn5Click(Sender: TObject);
begin
  Application.CreateForm(tfrmCashflow_Mensajes, frmCashflow_Mensajes);
  frmCashflow_Mensajes.QUsuarios.Open;
  frmCashflow_Mensajes.gru := gru;
  frmCashflow_Mensajes.sub := sub;
  frmCashflow_Mensajes.con := con;
  frmCashflow_Mensajes.tra := QTransaccionesTransaccionID.AsInteger;

  frmCashflow_Mensajes.QMensaje.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  frmCashflow_Mensajes.QMensaje.Parameters.ParamByName('gru').Value := gru;
  frmCashflow_Mensajes.QMensaje.Parameters.ParamByName('sub').Value := sub;
  frmCashflow_Mensajes.QMensaje.Parameters.ParamByName('con').Value := con;
  frmCashflow_Mensajes.QMensaje.Parameters.ParamByName('tra').Value := QTransaccionesTransaccionID.AsInteger;
  frmCashflow_Mensajes.QMensaje.Open;
  frmCashflow_Mensajes.ShowModal;
  frmCashflow_Mensajes.Release;
end;

end.

