unit PVENTA70;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DateUtils, DB,
  IBCustomDataSet, IBQuery, ADODB, QuerySearchDlgADO, DBCtrls, ECRti_Framework_TLB,
  uJSON;

type
  TfrmAnulaFac = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btTipo: TSpeedButton;
    edTipo: TEdit;
    tTipo: TEdit;
    edNumero: TEdit;
    edGrupo: TEdit;
    Search: TQrySearchDlgADO;
    btClose: TBitBtn;
    btAnular: TBitBtn;
    Query1: TADOQuery;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    Label4: TLabel;
    QMotivo: TADOQuery;
    QMotivomanu_codigo: TIntegerField;
    QMotivomanu_nombre: TStringField;
    dsMotivo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btTipoClick(Sender: TObject);
    procedure edTipoChange(Sender: TObject);
    procedure edTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAnularClick(Sender: TObject);
    procedure edGrupoChange(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
      core : TCore;
      result : string;
      response: String;

      ipLocal: string;
      ipRemote: String;

      timeout : Integer;
      portLocal: Integer;
      portRemote: Integer;
      Host:Integer;
      ReferenceNumber:Integer;
  public
    { Public declarations }
  end;

var
  frmAnulaFac: TfrmAnulaFac;

implementation

uses SIGMA01;


{$R *.dfm}

procedure TfrmAnulaFac.btTipoClick(Sender: TObject);
begin
  search.Query.clear;
  search.Query.add('select tfa_nombre, tfa_codigo');
  search.Query.add('from tiposfactura');
  search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  search.AliasFields.clear;
  search.AliasFields.add('Nombre');
  search.AliasFields.add('C�digo');
  search.ResultField := 'tfa_codigo';
  search.Title := 'Tipos de factura';
  if search.execute then
  begin
    edTipo.text := search.valuefield;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
    dm.Query1.sql.add('from tiposfactura');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and tfa_codigo = :cod');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
    dm.Query1.open;
    tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    edTipo.SetFocus;
  end;
end;

procedure TfrmAnulaFac.edTipoChange(Sender: TObject);
begin
  if trim(edTipo.text) = '' then tTipo.text := '';
end;

procedure TfrmAnulaFac.edTipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edTipo.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select tfa_nombre, tfa_selcondi, tfa_formatoimp, tfa_puertoimp');
      dm.Query1.sql.add('from tiposfactura');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and tfa_codigo = :cod');
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.parambyname('cod').Value := strtoint(trim(edTipo.text));
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        tTipo.text := '';
        showmessage('ESTE TIPO DE FACTURA NO EXISTE');
        edTipo.setfocus;
      end
      else
        tTipo.text := dm.Query1.fieldbyname('tfa_nombre').asstring;
    end;
  end;
end;

procedure TfrmAnulaFac.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmAnulaFac.btAnularClick(Sender: TObject);
var
  ActBalance : String;
  a : myJSONItem;
begin
  if QMotivo.RecordCount = 0 then
  begin
    MessageDlg('Debe especificar un Motivo de Anulaci�n',mtError,[mbok],0);
  end
  else
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select TFA_ACTBALANCE from tiposfactura');
    dm.Query1.SQL.Add('where emp_Codigo = :emp');
    dm.Query1.SQL.Add('and tfa_codigo = :tipo');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('tipo').Value := StrToInt(Trim(edTipo.Text));
    dm.Query1.Open;
    ActBalance := dm.Query1.FieldByName('TFA_ACTBALANCE').AsString;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select fac_abono, fac_status, fac_fecha from facturas');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and fac_forma = :forma');
    dm.Query1.SQL.Add('and tfa_codigo = :tipo');
    dm.Query1.SQL.Add('and fac_numero = :num');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('emp').Value  := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('forma').Value := edGrupo.Text;
    dm.Query1.Parameters.ParamByName('tipo').Value := StrToInt(Trim(edTipo.Text));
    dm.Query1.Parameters.ParamByName('num').Value  := StrToInt(Trim(edNumero.Text));
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      MessageDlg('ESTA FACTURA NO EXISTE',mtInformation,[mbok],0);
      edNumero.SetFocus;
    end
    else if dm.Query1.FieldByName('fac_status').AsString = 'ANU' then
    begin
      MessageDlg('ESTA FACTURA ESTA ANULADA',mtInformation,[mbok],0);
      edNumero.SetFocus;
    end
    else if (StrToFloat(format('%10.2f',[dm.Query1.FieldByName('fac_abono').AsFloat])) > 0)
    and (ActBalance = 'True') then
    begin
      MessageDlg('ESTA FACTURA TIENE ABONO, NO PUEDE ANULARSE',mtInformation,[mbok],0);
      edNumero.SetFocus;
    end
    else if DaysBetween(dm.Query1.FieldByName('fac_fecha').AsDateTime, Date) >
    dm.QParametrosPAR_FACDIASANULA.Value then
    begin
      MessageDlg('ESTA FACTURA NO PUEDE ANULARSE',mtInformation,[mbok],0);
      edNumero.SetFocus;
    end
    else
    begin
      //verificando si el cierre se hizo para esta fecha
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select cie_fecha from cierre');
      Query1.SQL.Add('where emp_codigo = :emp');
      Query1.SQL.Add('and cie_fecha = :fec');
      Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      Query1.Parameters.ParamByName('fec').Value    := dm.Query1.FieldByname('fac_fecha').AsDateTime;
      Query1.Open;
      if Query1.RecordCount > 0 then
      begin
        MessageDlg('NO PUEDE ANULARSE LA FACTURA, DEBIDO A QUE ESTE'+#13+
                   'DIA FUE CERRADO.',mtError,[mbok],0);
      end
      else if MessageDlg('ESTA SEGURO?',mtConfirmation,[mbyes,mbno],0) = mryes then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('execute pr_anula_fac :emp, :suc, :forma, :tipo, :num, :usu, :mot');
        dm.Query1.Parameters.ParamByName('emp').Value   := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('forma').Value := edGrupo.Text;
        dm.Query1.Parameters.ParamByName('tipo').Value  := StrToInt(Trim(edTipo.Text));
        dm.Query1.Parameters.ParamByName('num').Value   := StrToInt(Trim(edNumero.Text));
        dm.Query1.Parameters.ParamByName('suc').Value   := DBLookupComboBox2.KeyValue;
        dm.Query1.Parameters.ParamByName('usu').Value   := dm.NomUsu;
        dm.Query1.Parameters.ParamByName('mot').Value   := DBLookupComboBox1.KeyValue;
        dm.Query1.ExecSQL;

        //Anular Trasaccion en Veriphone
        dm.Query1.Close;
        DM.Query1.SQL.Clear;
        //DM.Query1.SQL.Add('SELECT JSON_VALUE(@Json,''$.Host.Value'') As Host_Value');
        //DM.Query1.SQL.Add(',JSON_VALUE(@Json,''$.Transaction.RetrievalReference'') As RetrievalReference');
        DM.Query1.SQL.Add('SELECT for_veriphone_desc JSON');
        DM.Query1.SQL.Add('from facformapago fp');
        DM.Query1.SQL.Add('where fp.emp_codigo = :emp and fp.suc_codigo = :suc and fp.fac_numero = :num and fp.tfa_codigo = :tip and fp.fac_forma = :for');
        DM.Query1.SQL.Add('and len(for_veriphone_desc)>=180');
        dm.Query1.Parameters.ParamByName('emp').Value   := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('for').Value := edGrupo.Text;
        dm.Query1.Parameters.ParamByName('tip').Value  := StrToInt(Trim(edTipo.Text));
        dm.Query1.Parameters.ParamByName('num').Value   := StrToInt(Trim(edNumero.Text));
        dm.Query1.Parameters.ParamByName('suc').Value   := DBLookupComboBox2.KeyValue;
        dm.Query1.Open;
        if DM.Query1.RecordCount > 0 then begin
        a               := myJSONItem.Create;
        a.Code          := DM.Query1.FieldByName('JSON').Value;
        Host            := StrToInt(a['Host']['Value'].getStr);
        ReferenceNumber := StrToInt(a['Transaction']['Reference'].getStr);
        response := core.Initialice;
        response := core.ProcessAnnulment(Host,ReferenceNumber);
        dm.query1.close;
        if Length(response)>80 then begin
        DM.Query1.SQL.Add('update facformapago');
        DM.Query1.SQL.Add('set for_veriphone_devolucion = :response');
        DM.Query1.SQL.Add('where emp_codigo = :emp and suc_codigo = :suc and tfa_codigo = :tip and fac_forma = :for and fac_numero = :num');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
        dm.Query1.Parameters.ParamByName('for').Value := edGrupo.Text;
        dm.Query1.Parameters.ParamByName('tip').Value := StrToInt(Trim(edTipo.Text));
        dm.Query1.Parameters.ParamByName('num').Value := StrToInt(Trim(edNumero.Text));
        dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        dm.Query1.Parameters.ParamByName('response').Value := response;
        dm.Query1.ExecSQL;
        end
        else
        ShowMessage('LA TRASACCION NO SE ENCONTRO EN EL VERIPHONE, POSIBLE CIERRE EJECUTADO...');
        end;
        MessageDlg('SE HA ANULADO LA FACTURA',mtInformation,[mbok],0);
      end;
    end;
  end;
end;

procedure TfrmAnulaFac.edGrupoChange(Sender: TObject);
begin
  if (trim(edGrupo.Text) <> 'A') and (trim(edGrupo.Text) <> 'B') then
     edGrupo.Text := '';
end;

procedure TfrmAnulaFac.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAnulaFac.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmAnulaFac.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    QMotivo.Open;
    DBLookupComboBox1.KeyValue := QMotivomanu_codigo.Value;
  end;
end;

procedure TfrmAnulaFac.FormCreate(Sender: TObject);
begin
  edGrupo.Text := 'A';

  WITH DM.Query1 do begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT IP, PORTCAJA, PORTPOS, TIMEOUT, CAJA FROM VerifoneEnCaja WHERE CAJA ='+QuotedStr(DM.GetIPAddress));
  Open;
  IF not IsEmpty THEN
  BEGIN
  core := TCore.Create(Self);

  ipLocal     := DM.Query1.FieldByName('CAJA').Text;
  portLocal   := DM.Query1.FieldByName('PORTCAJA').Value;
  ipRemote    := DM.Query1.FieldByName('IP').Text;
  portRemote  := DM.Query1.FieldByName('PORTPOS').Value;
  timeout     := DM.Query1.FieldByName('TIMEOUT').Value;

  result := core.SetTimeOut(timeOut);
  result := core.SetLocalEndPoint(ipLocal, portLocal);
  result := core.SetRemoteEndPoint(ipRemote, portRemote);
end;
end;
end;

end.
