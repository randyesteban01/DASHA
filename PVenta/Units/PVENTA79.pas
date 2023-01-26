unit PVENTA79;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, DateUtils,
  QuerySearchDlgADO, DBCtrls, DB, ADODB;

type
  TfrmRepFPago = class(TForm)
    Fecha1: TDateTimePicker;
    Label1: TLabel;
    Fecha2: TDateTimePicker;
    Label2: TLabel;
    btForma: TSpeedButton;
    edForma: TEdit;
    tForma: TEdit;
    Search: TQrySearchDlgADO;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    cbOrden: TComboBox;
    Label3: TLabel;
    rbTipo: TRadioGroup;
    cbGrupo: TRadioGroup;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure btFormaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
    procedure edFormaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFormaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ejecuto : boolean;
  end;

var
  frmRepFPago: TfrmRepFPago;

implementation

uses RVENTA45, RVENTA46, RVENTA47, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmRepFPago.btFormaClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select fpa_nombre, fpa_codigo');
  Search.Query.Add('from formaspago');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  if Search.execute then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select fpa_nombre, fpa_codigo');
    dm.Query1.SQL.Add('from formaspago');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and fpa_codigo = :fpa');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
    dm.Query1.Parameters.ParamByName('fpa').Value := StrToInt(Search.ValueField);
    dm.Query1.Open;
    tForma.Text := dm.Query1.FieldByName('fpa_nombre').AsString;
    edForma.Text := Search.ValueField;
  end;
  edForma.SetFocus;
end;

procedure TfrmRepFPago.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  cbOrden.ItemIndex := 0;
  rbTipo.ItemIndex := 0;
  ejecuto := False;
end;

procedure TfrmRepFPago.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepFPago.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if (ssCtrl in Shift) and (ord(key) = 66) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 1;
  if (ssCtrl in Shift) and (ord(key) = 65) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 0;
  if (ssCtrl in Shift) and (ord(key) = 84) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 2;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmRepFPago.btPrintClick(Sender: TObject);
begin
  ejecuto := True;
  case rbTipo.ItemIndex of
  0 : begin //Ventas
        Application.CreateForm(TRepVentaFPago, RepVentaFPago);
        RepVentaFPago.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
        if Trim(edForma.Text) <> '' then
          RepVentaFPago.QForma.SQL.Add('and fp.fpa_Codigo = '+Trim(edForma.Text));
        if cbGrupo.ItemIndex = 0 then
        begin
          RepVentaFPago.QForma.SQL.Add('and f.fac_forma = '+#39+'A'+#39);
          RepVentaFPago.QFacturas.SQL.Add('and f.fac_forma = '+#39+'A'+#39);
        end
        else if cbGrupo.ItemIndex = 1 then
        begin
          RepVentaFPago.QForma.SQL.Add('and f.fac_forma = '+#39+'B'+#39);
          RepVentaFPago.QFacturas.SQL.Add('and f.fac_forma = '+#39+'B'+#39);
        end;

        RepVentaFPago.QForma.SQL.Add('order by FP.fpa_codigo');

        case cbOrden.ItemIndex of
          0 : RepVentaFPago.QFacturas.SQL.Add('ORDER BY F.FAC_FECHA');
          1 : RepVentaFPago.QFacturas.SQL.Add('ORDER BY F.FAC_NOMBRE');
          2 : RepVentaFPago.QFacturas.SQL.Add('ORDER BY F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO');
        end;

        RepVentaFPago.QForma.Parameters.ParamByName('fecha1').DataType := ftDate;
        RepVentaFPago.QForma.Parameters.ParamByName('fecha2').DataType := ftDate;
        RepVentaFPago.QForma.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
        RepVentaFPago.QForma.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
        RepVentaFPago.QForma.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        RepVentaFPago.QForma.Open;
        RepVentaFPago.QFacturas.Parameters.ParamByName('fecha1').DataType := ftDate;
        RepVentaFPago.QFacturas.Parameters.ParamByName('fecha2').DataType := ftDate;
        RepVentaFPago.QFacturas.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
        RepVentaFPago.QFacturas.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
        RepVentaFPago.QFacturas.Open;
        RepVentaFPago.PrinterSetup;
        RepVentaFPago.Preview;
        RepVentaFPago.Destroy;
      end;
  1 : begin //Recibos
        Application.CreateForm(TRepRecFPago, RepRecFPago);
        RepRecFPago.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
        if Trim(edForma.Text) <> '' then
          RepRecFPago.QForma.SQL.Add('and fp.fpa_Codigo = '+Trim(edForma.Text));
        RepRecFPago.QForma.SQL.Add('order by FP.fpa_codigo');

        case cbOrden.ItemIndex of
          0 : RepRecFPago.QRecibos.SQL.Add('ORDER BY R.REC_FECHA');
          1 : RepRecFPago.QRecibos.SQL.Add('ORDER BY R.REC_NOMBRE');
          2 : RepRecFPago.QRecibos.SQL.Add('ORDER BY R.REC_NUMERO');
        end;

        RepRecFPago.QForma.Parameters.ParamByName('fecha1').DataType := ftDate;
        RepRecFPago.QForma.Parameters.ParamByName('fecha2').DataType := ftDate;
        RepRecFPago.QForma.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
        RepRecFPago.QForma.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
        RepRecFPago.QForma.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        RepRecFPago.QForma.Open;
        RepRecFPago.QRecibos.Parameters.ParamByName('fecha1').DataType := ftDate;
        RepRecFPago.QRecibos.Parameters.ParamByName('fecha2').DataType := ftDate;
        RepRecFPago.QRecibos.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
        RepRecFPago.QRecibos.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
        RepRecFPago.QRecibos.Open;
        RepRecFPago.PrinterSetup;
        RepRecFPago.Preview;
        RepRecFPago.Destroy;
      end;
  2 : begin //Desembolsos
        Application.CreateForm(TRepDesemFPago, RepDesemFPago);
        RepDesemFPago.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
        if Trim(edForma.Text) <> '' then
          RepDesemFPago.QForma.SQL.Add('and fp.fpa_Codigo = '+Trim(edForma.Text));
        RepDesemFPago.QForma.SQL.Add('order by FP.fpa_codigo');

        case cbOrden.ItemIndex of
          0 : RepDesemFPago.QDesem.SQL.Add('ORDER BY D.DES_FECHA');
          1 : RepDesemFPago.QDesem.SQL.Add('ORDER BY D.DES_BENEFICIARIO');
          2 : RepDesemFPago.QDesem.SQL.Add('ORDER BY D.DES_NUMERO');
        end;

        RepDesemFPago.QForma.Parameters.ParamByName('fecha1').DataType := ftDate;
        RepDesemFPago.QForma.Parameters.ParamByName('fecha2').DataType := ftDate;
        RepDesemFPago.QForma.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
        RepDesemFPago.QForma.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
        RepDesemFPago.QForma.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
        RepDesemFPago.QForma.Open;
        RepDesemFPago.QDesem.Parameters.ParamByName('fecha1').DataType := ftDate;
        RepDesemFPago.QDesem.Parameters.ParamByName('fecha2').DataType := ftDate;
        RepDesemFPago.QDesem.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
        RepDesemFPago.QDesem.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
        RepDesemFPago.QDesem.Open;
        RepDesemFPago.PrinterSetup;
        RepDesemFPago.Preview;
        RepDesemFPago.Destroy;
      end;
  end;
end;

procedure TfrmRepFPago.edFormaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edForma.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select fpa_nombre, fpa_codigo');
      dm.Query1.SQL.Add('from formaspago');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and fpa_codigo = :fpa');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('fpa').Value := StrToInt(Trim(edForma.Text));
      dm.Query1.Open;
      if dm.Query1.RecordCount >0 then
        tForma.Text := dm.Query1.FieldByName('fpa_nombre').AsString
      else
        tForma.Text := '';
    end;
  end;
end;

procedure TfrmRepFPago.edFormaChange(Sender: TObject);
begin
  if Trim(edForma.Text) = '' then tForma.Text := '';
end;

procedure TfrmRepFPago.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  if ejecuto = False then
    if (Time >= TimeOf(dm.QParametrosPAR_AHORA1.Value)) and
    (Time <= TimeOf(dm.QParametrosPAR_AHORA2.Value)) then
       cbGrupo.ItemIndex := 0
    else
       cbGrupo.ItemIndex := 1;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmRepFPago.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepFPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
