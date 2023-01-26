unit SERV03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, Buttons, ExtCtrls,
  QuerySearchDlgADO, DB, ADODB;

type
  TfrmDetalleOrdenServicio = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBRichEdit1: TDBRichEdit;
    DBRichEdit2: TDBRichEdit;
    tTipo: TEdit;
    btcaja: TSpeedButton;
    tTecnico: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Search: TQrySearchDlgADO;
    BitBtn3: TBitBtn;
    QCrioTalle: TADOQuery;
    lbGarantia: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btcajaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalleOrdenServicio: TfrmDetalleOrdenServicio;

implementation

uses SERV02, SIGMA01;

{$R *.dfm}

procedure TfrmDetalleOrdenServicio.SpeedButton1Click(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select tec_nombre, tec_codigo');
  Search.Query.add('from tecnicos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'tec_Codigo';
  Search.Title := 'Técnicos';
  if Search.execute then
  begin
    frmOrdenServicio.QDetalletec_codigo.Value := strtoint(Search.ValueField);
    dbEdit7.setfocus;
  end;
end;

procedure TfrmDetalleOrdenServicio.btcajaClick(Sender: TObject);
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Nombre');
  Search.AliasFields.add('Código');
  Search.Query.clear;
  Search.Query.add('select tip_nombre, tip_codigo');
  Search.Query.add('from tipo_equipos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.value));
  Search.ResultField := 'tip_Codigo';
  Search.Title := 'Tipos de equipo';
  if Search.execute then
  begin
    frmOrdenServicio.QDetalletip_codigo.Value := strtoint(Search.ValueField);
    dbEdit1.setfocus;
  end;
end;

procedure TfrmDetalleOrdenServicio.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.classtype <> TDBRichEdit then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmDetalleOrdenServicio.BitBtn1Click(Sender: TObject);
begin
  frmOrdenServicio.QDetalle.Post;
  Close;
end;

procedure TfrmDetalleOrdenServicio.BitBtn2Click(Sender: TObject);
begin
  frmOrdenServicio.QDetalle.Cancel;
  Close;
end;

procedure TfrmDetalleOrdenServicio.BitBtn3Click(Sender: TObject);
var vComent, vTecCodigo, vstatus : string;
    vMonto:Currency;
    vLastDate : tdateTime;
begin
  vMonto := 0;
  vComent:= EmptyStr;
  with QCrioTalle do
    begin
      close;
      open;
      First;
      vLastDate   := fieldbyname('ta_fecha').AsDateTime;
      vTecCodigo  := fieldbyname('tec_codigo').AsString;
      vstatus     := fieldbyname('ta_status').AsString;
      while not eof do
        begin
          if vComent = EmptyStr then
             vComent := trim(fieldbyname('tec_nombre').AsString) +' : '+ trim(fieldbyname('ta_comentario').AsString)
          else
             vComent := vComent +' - '+trim(fieldbyname('tec_nombre').AsString) +' : '+ trim(fieldbyname('ta_comentario').AsString);

          vMonto  := vMonto  + fieldbyname('ta_monto').AsCurrency;
          next;
        end;
      if frmOrdenServicio.dsDetalle.State in [dsedit,dsinsert] then
         begin
           frmOrdenServicio.QDetalledet_monto.Value      := vMonto;
           frmOrdenServicio.QDetalledet_comentario.Value := vComent;
           frmOrdenServicio.QDetalletec_codigo.Value     := strtoint(vTecCodigo);
         end;
    end;
end;

procedure TfrmDetalleOrdenServicio.DBEdit2Exit(Sender: TObject);
var vQry : tadoQuery;
begin
  if TDBEdit(Sender).Text <>'' then begin
     vQry := TADOQuery.Create(self);
     vQry.Connection := frmOrdenServicio.QOrden.Connection;
     vQry.SQL.clear;
     vQry.SQL.add('select a.pro_codigo,a.ser_numero,b.pro_nombre,b.pro_Garantia,b.pro_Garantia_Cantidad,b.pro_Garantia_Periodo');                  // else '* * GARANTIA CADUCADA * *'
     vQry.SQL.add(' ,c.fac_fecha');
     vQry.SQL.add(',CASE b.pro_Garantia_periodo ');
     vQry.SQL.add('WHEN ('+QuotedStr('DIA')+')THEN CASE WHEN DATEADD(DAY,b.pro_Garantia_Cantidad,c.fac_fecha)>= GETDATE() THEN '+QuotedStr('GARANTIA VIGENTE')+'ELSE '+QuotedStr('* * GARANTIA CADUCADA * *')+' END ');
     vQry.SQL.add('WHEN ('+QuotedStr('MES')+')THEN CASE WHEN DATEADD(MONTH,b.pro_Garantia_Cantidad,c.fac_fecha)>= GETDATE() THEN '+QuotedStr('GARANTIA VIGENTE')+'ELSE '+QuotedStr('* * GARANTIA CADUCADA * *')+' END ');
     vQry.SQL.add('WHEN ('+QuotedStr('ANO')+')THEN CASE WHEN DATEADD(YEAR,b.pro_Garantia_Cantidad,c.fac_fecha)>= GETDATE() THEN '+QuotedStr('GARANTIA VIGENTE')+'ELSE '+QuotedStr('* * GARANTIA CADUCADA * *')+' END ');
     vQry.SQL.add('ELSE '+QuotedStr('* * GARANTIA CADUCADA * *')+' END AS Garantia ');
     vQry.SQL.add('from FacSerie AS a');
     vQry.SQL.add('LEFT JOIN Productos  AS b ON a.pro_codigo = b.pro_codigo');
     vQry.SQL.add('LEFT JOIN Facturas   AS c ON a.fac_numero = c.fac_numero');
     vQry.SQL.add('where a.ser_numero = '+QuotedStr(TDBEdit(Sender).Text));
     vQry.Open;
     if not vQry.IsEmpty then begin
        frmOrdenServicio.QDetalle.FieldByName('det_descripcion').AsString := vQry.fieldbyname('pro_nombre').AsString;
        frmOrdenServicio.QDetalle.FieldByName('det_tiene_garantia').AsString := vQry.fieldbyname('pro_Garantia').AsString;
        DBRichEdit1.setfocus;
        lbGarantia.Caption := vQry.fieldbyname('Garantia').AsString;
        IF vQry.fieldbyname('Garantia').AsString = 'GARANTIA VIGENTE' THEN
           lbGarantia.Font.Color := clGreen
        else
           lbGarantia.Font.Color := clRed;
     end;
     lbGarantia.Visible := not vQry.IsEmpty;
     vQry.close;
     vQry.free;
  end;
end;

procedure TfrmDetalleOrdenServicio.FormActivate(Sender: TObject);
begin
  tTipo.Text    := frmOrdenServicio.tTipo.Text;
  tTecnico.Text := frmOrdenServicio.tTecnico.Text;
end;

end.
