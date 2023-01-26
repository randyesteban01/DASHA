unit PVENTA94;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, DateUtils, Db, DBCtrls,
  ADODB;

type
  TfrmRepVentaTipoFac = class(TForm)
    Label1: TLabel;
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    cbGrupo: TRadioGroup;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ejecuto : boolean;
  end;

var
  frmRepVentaTipoFac: TfrmRepVentaTipoFac;

implementation

uses RVENTA57, SIGMA01, SIGMA00;

{$R *.dfm}

procedure TfrmRepVentaTipoFac.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
  Fecha2.Date := Date;
  ejecuto := false;
end;

procedure TfrmRepVentaTipoFac.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepVentaTipoFac.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepVentaTipoFac.FormActivate(Sender: TObject);
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

procedure TfrmRepVentaTipoFac.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (ord(key) = 66) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 1;
  if (ssCtrl in Shift) and (ord(key) = 65) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 0;
  if (ssCtrl in Shift) and (ord(key) = 84) and (ssAlt in Shift) then
    cbGrupo.ItemIndex := 2;
  frmMain.stBar1.Panels[1].Text := Copy(cbGrupo.Items[cbGrupo.ItemIndex],1,1);
end;

procedure TfrmRepVentaTipoFac.btPrintClick(Sender: TObject);
begin
  ejecuto := true;
  Application.CreateForm(TRepVentaTipoFac, RepVentaTipoFac);
  RepVentaTipoFac.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepVentaTipoFac.QTipo.SQL.Clear;
  RepVentaTipoFac.QTipo.SQL.Add('SELECT DISTINCT');
  RepVentaTipoFac.QTipo.SQL.Add('T.EMP_CODIGO, T.TFA_CODIGO, T.TFA_NOMBRE, F.SUC_CODIGO');
  RepVentaTipoFac.QTipo.SQL.Add('FROM FACTURAS F, TIPOSFACTURA T');
  RepVentaTipoFac.QTipo.SQL.Add('WHERE F.EMP_CODIGO = T.EMP_CODIGO');
  RepVentaTipoFac.QTipo.SQL.Add('AND F.TFA_CODIGO = T.TFA_CODIGO');
  RepVentaTipoFac.QTipo.SQL.Add('AND F.EMP_CODIGO = :EMP_CODIGO');
  RepVentaTipoFac.QTipo.SQL.Add('AND F.SUC_CODIGO = :SUC');
  RepVentaTipoFac.QTipo.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
  RepVentaTipoFac.QTipo.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
  if cbGrupo.ItemIndex = 0 then
     RepVentaTipoFac.QTipo.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     RepVentaTipoFac.QTipo.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);
  RepVentaTipoFac.QTipo.SQL.Add('ORDER BY T.TFA_NOMBRE');

  RepVentaTipoFac.QCredito.SQL.Clear;
  RepVentaTipoFac.QCredito.SQL.Add('SELECT');
  RepVentaTipoFac.QCredito.SQL.Add('F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO,');
  RepVentaTipoFac.QCredito.SQL.Add('F.FAC_NOMBRE, F.FAC_DESCUENTO, F.FAC_ITBIS,');
  RepVentaTipoFac.QCredito.SQL.Add('F.FAC_OTROS, F.FAC_TOTAL, F.FAC_STATUS, F.FAC_FECHA');
  RepVentaTipoFac.QCredito.SQL.Add('FROM FACTURAS F, TIPOSFACTURA T');
  RepVentaTipoFac.QCredito.SQL.Add('WHERE F.EMP_CODIGO = T.EMP_CODIGO');
  RepVentaTipoFac.QCredito.SQL.Add('AND F.TFA_CODIGO = T.TFA_CODIGO');
  RepVentaTipoFac.QCredito.SQL.Add('AND F.EMP_CODIGO = :EMP_CODIGO');
  RepVentaTipoFac.QCredito.SQL.Add('AND F.SUC_CODIGO = :SUC_CODIGO');
  RepVentaTipoFac.QCredito.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
  RepVentaTipoFac.QCredito.SQL.Add('AND F.TFA_CODIGO = :TFA_CODIGO');
  RepVentaTipoFac.QCredito.SQL.Add('AND T.TFA_ACTBALANCE = '+#39+'True'+#39);
  RepVentaTipoFac.QCredito.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
  if cbGrupo.ItemIndex = 0 then
     RepVentaTipoFac.QCredito.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     RepVentaTipoFac.QCredito.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);
  RepVentaTipoFac.QCredito.SQL.Add('ORDER BY F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO');

  RepVentaTipoFac.QContado.SQL.Clear;
  RepVentaTipoFac.QContado.SQL.Add('SELECT');
  RepVentaTipoFac.QContado.SQL.Add('F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO,');
  RepVentaTipoFac.QContado.SQL.Add('F.FAC_NOMBRE, F.FAC_DESCUENTO, F.FAC_ITBIS,');
  RepVentaTipoFac.QContado.SQL.Add('F.FAC_OTROS, P.FOR_MONTO, F.FAC_STATUS, F.FAC_FECHA');
  RepVentaTipoFac.QContado.SQL.Add('FROM FACTURAS F, TIPOSFACTURA T, FACFORMAPAGO P');
  RepVentaTipoFac.QContado.SQL.Add('WHERE F.EMP_CODIGO = T.EMP_CODIGO');
  RepVentaTipoFac.QContado.SQL.Add('AND F.TFA_CODIGO = T.TFA_CODIGO');
  RepVentaTipoFac.QContado.SQL.Add('AND F.SUC_CODIGO = P.SUC_CODIGO');
  RepVentaTipoFac.QContado.SQL.Add('AND F.EMP_CODIGO = :EMP_CODIGO');
  RepVentaTipoFac.QContado.SQL.Add('AND F.FAC_STATUS <> '+#39+'ANU'+#39);
  RepVentaTipoFac.QContado.SQL.Add('AND F.TFA_CODIGO = :TFA_CODIGO');
  RepVentaTipoFac.QContado.SQL.Add('AND F.SUC_CODIGO = :SUC_CODIGO');
  RepVentaTipoFac.QContado.SQL.Add('AND T.TFA_ACTBALANCE = '+#39+'False'+#39);
  RepVentaTipoFac.QContado.SQL.Add('AND F.FAC_FECHA BETWEEN convert(datetime,:FECHA1,105) AND convert(datetime,:FECHA2,105)');
  RepVentaTipoFac.QContado.SQL.Add('AND F.EMP_CODIGO = P.EMP_CODIGO');
  RepVentaTipoFac.QContado.SQL.Add('AND F.FAC_FORMA = P.FAC_FORMA');
  RepVentaTipoFac.QContado.SQL.Add('AND F.TFA_CODIGO = P.TFA_CODIGO');
  RepVentaTipoFac.QContado.SQL.Add('AND F.FAC_NUMERO = P.FAC_NUMERO');
  RepVentaTipoFac.QContado.SQL.Add('AND P.FPA_CODIGO = :FPA_CODIGO');
  if cbGrupo.ItemIndex = 0 then
     RepVentaTipoFac.QContado.SQL.Add('AND F.FAC_FORMA = '+#39+'A'+#39)
  else if cbGrupo.ItemIndex = 1 then
     RepVentaTipoFac.QContado.SQL.Add('AND F.FAC_FORMA = '+#39+'B'+#39);
  RepVentaTipoFac.QContado.SQL.Add('ORDER BY F.FAC_FORMA, F.TFA_CODIGO, F.FAC_NUMERO');

  RepVentaTipoFac.QCredito.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepVentaTipoFac.QCredito.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepVentaTipoFac.QContado.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepVentaTipoFac.QContado.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepVentaTipoFac.QTipo.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepVentaTipoFac.QTipo.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepVentaTipoFac.QForma.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepVentaTipoFac.QForma.Parameters.ParamByName('fecha2').DataType := ftDate;

  RepVentaTipoFac.QCredito.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepVentaTipoFac.QCredito.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RepVentaTipoFac.QContado.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepVentaTipoFac.QContado.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RepVentaTipoFac.QTipo.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepVentaTipoFac.QTipo.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RepVentaTipoFac.QTipo.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
  RepVentaTipoFac.QForma.Parameters.ParamByName('fecha1').Value := Fecha1.Date;
  RepVentaTipoFac.QForma.Parameters.ParamByName('fecha2').Value := Fecha2.Date;
  RepVentaTipoFac.lbGrupo.Caption := cbGrupo.Items[cbGrupo.ItemIndex];
  RepVentaTipoFac.QTipo.Open;
  RepVentaTipoFac.QForma.Open;
  RepVentaTipoFac.QCredito.Open;
  RepVentaTipoFac.QContado.Open;
  RepVentaTipoFac.QRLSUCURSAL.Caption := UpperCase(DBLookupComboBox2.Text);
  RepVentaTipoFac.PrinterSetup;
  RepVentaTipoFac.Preview;
  RepVentaTipoFac.Destroy;
end;

end.
