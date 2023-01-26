unit PVENTA123;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Grids, DBGrids,
  IBCustomDataSet, IBUpdateSQL, DB, IBQuery, DateUtils,
  ADODB, QuerySearchDlgADO;

type
  TfrmChequeDevol = class(TForm)
    Label1: TLabel;
    edSol: TEdit;
    btSol: TSpeedButton;
    Panel1: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    tBanco: TEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    StaticText1: TStaticText;
    GridCuentas: TDBGrid;
    btGrabar: TBitBtn;
    Search: TQrySearchDlgADO;
    QCheques: TADOQuery;
    QChequesBAN_CODIGO: TIntegerField;
    QChequesCHE_ANO: TIntegerField;
    QChequesCHE_BENEF: TIBStringField;
    QChequesCHE_CONCEPTO1: TIBStringField;
    QChequesCHE_CONCEPTO2: TIBStringField;
    QChequesCHE_FECANULO: TDateTimeField;
    QChequesCHE_FECHA: TDateTimeField;
    QChequesCHE_MES: TIntegerField;
    QChequesCHE_MONTO: TFloatField;
    QChequesCHE_MOTIVOANULO: TIBStringField;
    QChequesCHE_NUMERO: TIntegerField;
    QChequesCHE_STATUS: TIBStringField;
    QChequesCHE_TIPO: TIBStringField;
    QChequesCLI_CODIGO: TIntegerField;
    QChequesEMP_CODIGO: TIntegerField;
    QChequesEMP_NUMERO: TIntegerField;
    QChequesSUP_CODIGO: TIntegerField;
    QChequesUSU_CODIGO: TIntegerField;
    QChequesCHE_DESCUENTO: TFloatField;
    QChequesCHE_IMPRESO: TIBStringField;
    QChequesCHE_ABONO: TFloatField;
    dsCheques: TDataSource;
    QDetalle: TADOQuery;
    QDetalleBAN_CODIGO: TIntegerField;
    QDetalleCAT_CUENTA: TIBStringField;
    QDetalleCAT_NOMBRE: TIBStringField;
    QDetalleCHE_NUMERO: TIntegerField;
    QDetalleDET_MONTO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleDET_ORIGEN: TIBStringField;
    dsDetalle: TDataSource;
    Query1: TADOQuery;
    procedure QChequesNewRecord(DataSet: TDataSet);
    procedure QChequesBeforePost(DataSet: TDataSet);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure btSolClick(Sender: TObject);
    procedure btGrabarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edSolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QChequesBAN_CODIGOChange(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure buscasol;
  end;

var
  frmChequeDevol: TfrmChequeDevol;

implementation

uses SIGMA01, PVENTA23;

{$R *.dfm}

procedure TfrmChequeDevol.QChequesNewRecord(DataSet: TDataSet);
begin
  QChequesCHE_IMPRESO.Value := 'N';
  QChequesCHE_FECHA.Value  := Date;
  QChequesCHE_STATUS.Value := 'EMI';
  QChequesCHE_TIPO.Value   := 'GAS';
  QChequesCHE_DESCUENTO.Value := 0;
  QChequesEMP_CODIGO.Value := dm.vp_cia;
  QChequesUSU_CODIGO.Value := dm.Usuario;
  QChequesCHE_ABONO.Value  := 0;

  QDetalle.Close;
  QDetalle.Parameters.ParamByName('emp').Value := dm.vp_cia;
  QDetalle.Parameters.ParamByName('ban').Value := -1;
  QDetalle.Parameters.ParamByName('num').Value := -1;
  QDetalle.Open;
end;

procedure TfrmChequeDevol.QChequesBeforePost(DataSet: TDataSet);
begin
  QChequesCHE_ANO.Value := YearOf(QChequesCHE_FECHA.Value);
  QChequesCHE_MES.Value := MonthOf(QChequesCHE_FECHA.Value);
end;

procedure TfrmChequeDevol.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleBAN_CODIGO.Value := QChequesBAN_CODIGO.Value;
  QDetalleCHE_NUMERO.Value := QChequesCHE_NUMERO.Value;
  QDetalleEMP_CODIGO.Value := dm.vp_cia;
end;

procedure TfrmChequeDevol.btSolClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select sol_numero, sol_fecha, sol_benef');
  Search.Query.Add('from solicitud');
  Search.Query.Add('where sol_status = '+#39+'EMI'+#39);
  Search.Query.Add('and emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'sol_numero';
  Search.Title := 'Solicitud';
  if Search.execute then
  begin
    edSol.Text := Search.ValueField;
  end;
end;

procedure TfrmChequeDevol.buscasol;
var
  a : integer;
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select ban_codigo, sol_benef, sol_concepto1,');
  dm.Query1.SQL.Add('sol_concepto2, sol_monto, sol_fecha, sol_status');
  dm.Query1.SQL.Add('from solicitud');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.SQL.Add('and sol_numero = :sol');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('sol').Value := StrToInt(Trim(edSol.Text));
  dm.Query1.Open;
  if dm.Query1.RecordCount = 0 then
  begin
    MessageDlg('Esta solicitud no existe',mtError,[mbok],0);
    edSol.SetFocus;
  end
  else if dm.Query1.FieldByName('sol_status').AsString = 'ANU' then
  begin
    MessageDlg('Esta solicitud está Anulada',mtError,[mbok],0);
    edSol.SetFocus;
  end
  else if dm.Query1.FieldByName('sol_status').AsString = 'APR' then
  begin
    MessageDlg('Esta solicitud está Aprobada',mtError,[mbok],0);
    edSol.SetFocus;
  end
  else
  begin
    if not QDetalle.Active then QDetalle.Open;
    QCheques.Close;
    QCheques.Parameters.ParamByName('banco').Value := -1;
    QCheques.Parameters.ParamByName('numero').Value := -1;
    QCheques.Open;
    QCheques.Insert;

    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select isnull(max(che_numero),0) as maximo');
    Query1.SQL.Add('from cheques');
    Query1.SQL.Add('where emp_codigo = :emp');
    Query1.SQL.Add('and ban_codigo = :ban');
    Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    Query1.Parameters.ParamByName('ban').Value := dm.Query1.FieldByName('ban_codigo').AsInteger;
    Query1.Open;

    QChequesCHE_CONCEPTO1.Value := dm.Query1.FieldByName('sol_concepto1').AsString;
    QChequesCHE_CONCEPTO2.Value := dm.Query1.FieldByName('sol_concepto2').AsString;
    QChequesCHE_BENEF.Value     := dm.Query1.FieldByName('sol_benef').AsString;
    QChequesCHE_MONTO.Value     := dm.Query1.FieldByName('sol_monto').AsFloat;
    QChequesCHE_NUMERO.Value    := Query1.FieldByName('maximo').AsInteger + 1;
    QChequesBAN_CODIGO.Value    := dm.Query1.FieldByName('ban_codigo').AsInteger;
    QCheques.Post;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cat_cuenta, cat_nombre, det_monto, det_origen');
    dm.Query1.SQL.Add('from det_solicitud');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and sol_numero = :sol');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('sol').Value := StrToInt(Trim(edSol.Text));
    dm.Query1.Open;
    dm.Query1.DisableControls;
    a := 0;
    while not dm.Query1.Eof do
    begin
      a := a + 1;
      QDetalle.Append;
      QDetalleDET_SECUENCIA.Value := a;
      QDetalleCAT_CUENTA.Value    := dm.Query1.FieldByName('cat_cuenta').AsString;
      QDetalleCAT_NOMBRE.Value    := dm.Query1.FieldByName('cat_nombre').AsString;
      QDetalleDET_MONTO.Value     := dm.Query1.FieldByName('det_monto').AsFloat;
      QDetalleDET_ORIGEN.Value    := dm.Query1.FieldByName('det_origen').AsString;
      QDetalle.Post;
      dm.Query1.Next;
    end;
    dm.Query1.EnableControls;
  end;
end;

procedure TfrmChequeDevol.btGrabarClick(Sender: TObject);
begin
  if format('%10.2f',[QChequesCHE_MONTO.Value]) <> format('%10.2f',[frmDevolucion.QDevolucionDEV_TOTAL.value]) then
  begin
    MessageDlg('El monto de la solicitud no se corresponde'+#13+
               'al monto de la devolucion',mtError,[mbok],0);
    edSol.SetFocus;
  end
  else if QChequesCHE_MONTO.Value > 0 then
    close
  else
  begin
    MessageDlg('Debe completar los datos',mtError,[mbok],0);
    edSol.SetFocus;
  end;
end;

procedure TfrmChequeDevol.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmChequeDevol.edSolKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then buscasol;
end;

procedure TfrmChequeDevol.QChequesBAN_CODIGOChange(Sender: TField);
begin
  if not QChequesBAN_CODIGO.IsNull then
  Begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre');
    dm.Query1.SQL.Add('from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :ban');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('ban').Value := QChequesBAN_CODIGO.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
      tBanco.Text := ''
    else
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
  End
  else
    tBanco.Text := '';
end;

procedure TfrmChequeDevol.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then btGrabarClick(self);
end;

end.
