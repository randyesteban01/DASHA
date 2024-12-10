unit RVENTA129;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls, QuerySearchDlgADO, DB,
  ADODB, ExtCtrls, frxClass, frxDBSet;

type
  TfrmRepFacVencCxP = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Search: TQrySearchDlgADO;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Fecha1: TDateTimePicker;
    Label1: TLabel;
    QFacturas: TADOQuery;
    Rpt_FacVencCxP: TfrxReport;
    QFacturasemp_nombre: TStringField;
    QFacturasemp_direccion: TStringField;
    QFacturasemp_localidad: TStringField;
    QFacturasemp_telefono: TStringField;
    QFacturasemp_rnc: TStringField;
    QFacturassup_codigo: TIntegerField;
    QFacturassup_nombre: TStringField;
    QFacturasFAC_FECHA: TDateField;
    QFacturasFAC_DIAS: TIntegerField;
    QFacturasfac_vence: TDateField;
    QFacturasSALDO: TCurrencyField;
    DB_FACVENC: TfrxDBDataset;
    QFacturasFAC_NUMERO: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure Rpt_FacVencCxPBeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepFacVencCxP: TfrmRepFacVencCxP;

implementation

uses RVENTA50, SIGMA01;

{$R *.dfm}

procedure TfrmRepFacVencCxP.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepFacVencCxP.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepFacVencCxP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRepFacVencCxP.FormActivate(Sender: TObject);
begin
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
end;

procedure TfrmRepFacVencCxP.FormCreate(Sender: TObject);
begin
  Fecha1.Date := Date;
end;

procedure TfrmRepFacVencCxP.btPrintClick(Sender: TObject);
begin
 { Application.CreateForm(tRFacVencidasProv, RFacVencidasProv);
  RFacVencidasProv.lbFecha.Caption := 'Al '+DateToStr(Date);
  RFacVencidasProv.QFacturas.Parameters.ParamByName('emp').Value := dm.vp_cia;
  RFacVencidasProv.QFacturas.Parameters.ParamByName('invemp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  RFacVencidasProv.QFacturas.Parameters.ParamByName('fecha').DataType := ftDate;
  RFacVencidasProv.QFacturas.Parameters.ParamByName('fecha').Value  := Fecha1.Date;
  RFacVencidasProv.QFacturas.Open;
  RFacVencidasProv.PrinterSetup;
  RFacVencidasProv.Preview;
  RFacVencidasProv.Destroy;}

  with QFacturas do begin
    Close;
    Parameters.ParamByName('FECHA').Value := Fecha1.Date;
    Parameters.ParamByName('emp').Value   := dm.vp_cia;
    Parameters.ParamByName('EMPINV').Value:= dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    Parameters.ParamByName('SUC').Value:= DBLookupComboBox2.KeyValue;
    Open;
     if not IsEmpty then begin
      Rpt_FacVencCxP.ShowReport();
    end;
    if IsEmpty then begin
      ShowMessage('No existen datos para el reporte');
    end;
  end;
end;

procedure TfrmRepFacVencCxP.Rpt_FacVencCxPBeforePrint(
  Sender: TfrxReportComponent);
begin
TfrxMemoView(Rpt_FacVencCxP.FindObject('MFecha')).Text  := 'Al '+DateToStr(Fecha1.Date);
end;

end.
