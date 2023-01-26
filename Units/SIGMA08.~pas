unit SIGMA08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, cxControls, cxContainer, cxListView, cxStyles,
  cxGraphics, cxEdit, cxVGrid, cxInplaceContainer, ExtCtrls, StdCtrls, DB,
  ADODB, Grids, DBGrids, Buttons, QuerySearchDlgADO;

type
  TfrmCentrosXCuenta = class(TForm)
    Panel1: TPanel;
    lbcuenta: TStaticText;
    Panel2: TPanel;
    GridCentro: TDBGrid;
    dsCentro: TDataSource;
    btbuscacen: TSpeedButton;
    BitBtn2: TSpeedButton;
    BitBtn3: TSpeedButton;
    Search: TQrySearchDlgADO;
    btbuscasub: TSpeedButton;
    QLimpiar: TADOQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    BCDField1: TBCDField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    QCentro: TADOQuery;
    QCentroemp_codigo: TIntegerField;
    QCentroban_codigo: TIntegerField;
    QCentroche_numero: TIntegerField;
    QCentrocen_codigo: TIntegerField;
    QCentrodet_secuencia: TIntegerField;
    QCentrocen_nombre: TStringField;
    QCentrodet_monto: TBCDField;
    QCentrosuc_codigo: TIntegerField;
    QCentrocen_referencia: TStringField;
    QCentrosub_secuencia: TIntegerField;
    QCentrocat_cuenta: TStringField;
    QCentrosub_referencia: TStringField;
    txtTotal: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btbuscacenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btbuscasubClick(Sender: TObject);
    procedure QCentrocen_referenciaChange(Sender: TField);
    procedure QCentrosub_referenciaChange(Sender: TField);
    procedure GridCentroKeyPress(Sender: TObject; var Key: Char);
    procedure GridCentroColEnter(Sender: TObject);
    procedure QCentroBeforePost(DataSet: TDataSet);
    procedure GridCentroColExit(Sender: TObject);
    procedure QCentroAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Totalizar;
  public
    { Public declarations }
    cta : string;
    vMontototal: Double;
    vTotal : Double;
  end;

var
  frmCentrosXCuenta: TfrmCentrosXCuenta;

implementation

uses SERV01, SIGMA01, Math, PVENTA45, PVENTA25;

{$R *.dfm}

procedure TfrmCentrosXCuenta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCentrosXCuenta.BitBtn3Click(Sender: TObject);
begin
  if QCentro.State in [dsedit, dsinsert] then
  if QCentrocat_cuenta.Value<>'' then 
  QCentro.Post;
  Totalizar;
if vTotal < 0 then begin
  ShowMessage('TIENES UNA DIFERENCIA DE '+FormatCurr('#,0.00',vTotal)+CHAR(13)+
  'FAVOR REVISAR....');
  Exit;
end
else
  frmCentrosXCuenta.Close;
end;

procedure TfrmCentrosXCuenta.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Está seguro?', mtConfirmation, [mbyes, mbno], 0) = mryes then
    QCentro.Delete;
    Totalizar;
end;

procedure TfrmCentrosXCuenta.btbuscacenClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select cen_nombre, cen_referencia');
  Search.Query.Add('from CentroCostos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cen_codigo in (select cen_codigo from CentroCostos_Hijos_Cuentas');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cat_cuenta = '+QuotedStr(cta)+')');
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'cen_referencia';
  Search.Title := 'Centros de Costo';
  if Search.execute then
  begin
    QCentro.Edit;
    QCentrocen_referencia.Value := Search.ValueField;
  end;
  GridCentro.SetFocus;
end;

procedure TfrmCentrosXCuenta.FormCreate(Sender: TObject);
begin
  QCentro.Open;

end;

procedure TfrmCentrosXCuenta.btbuscasubClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select h.sub_nombre, h.sub_referencia');
  Search.Query.Add('from CentroCostos_Hijos h, CentroCostos_Hijos_Cuentas c');
  Search.Query.Add('where h.emp_codigo = c.emp_codigo');
  Search.Query.Add('and h.cen_codigo = c.cen_codigo');
  Search.Query.Add('and h.sub_secuencia = c.sub_secuencia');
  Search.Query.Add('and c.emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and c.cat_cuenta = '+QuotedStr(cta));
  Search.Query.Add('and c.cen_codigo in (select cen_codigo from CentroCostos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and cen_referencia = '+QuotedStr(QCentrocen_referencia.AsString)+')');
  Search.AliasFields.Add('Descripción');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'sub_referencia';
  Search.Title := 'Sub-Centros de Costo';
  if Search.execute then
  begin
    QCentro.Edit;
    QCentrosub_referencia.Value := Search.ValueField;
  end;
  GridCentro.SetFocus;
end;

procedure TfrmCentrosXCuenta.QCentrocen_referenciaChange(Sender: TField);
begin
  if not QCentrocen_referencia.IsNull then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre, cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrocen_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      QCentrocen_codigo.Value := dm.Query1.FieldByName('cen_codigo').AsInteger;
    end;
  end;
end;

procedure TfrmCentrosXCuenta.QCentrosub_referenciaChange(Sender: TField);
begin
  if (not QCentrocen_referencia.IsNull) and (not QCentrosub_referencia.IsNull) then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select cen_nombre, cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrocen_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := dm.Query1.FieldByName('cen_nombre').AsString;
      QCentrocen_codigo.Value := dm.Query1.FieldByName('cen_codigo').AsInteger;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select sub_nombre, sub_secuencia  from CentroCostos_Hijos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cen_codigo in (select cen_codigo from CentroCostos');
    dm.Query1.SQL.Add('where emp_codigo = '+dm.QEmpresasEMP_CODIGO.AsString);
    dm.Query1.SQL.Add('and cen_referencia = '+QuotedStr(QCentrocen_referencia.AsString)+')');
    dm.Query1.SQL.Add('and sub_referencia = :ref');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('ref').Value := QCentrosub_referencia.Value;
    dm.Query1.Open;
    if dm.Query1.RecordCount > 0 then
    begin
      QCentrocen_nombre.Value := QCentrocen_nombre.Value+' - '+dm.Query1.FieldByName('sub_nombre').AsString;
      QCentrosub_secuencia.Value := dm.Query1.FieldByName('sub_secuencia').AsInteger;
    end;
  end;
end;

procedure TfrmCentrosXCuenta.GridCentroKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if GridCentro.SelectedIndex <> 3 then
      GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1
    else
    begin
      GridCentro.SelectedIndex := 0;
      QCentro.Append;
    end;
  end;
end;

procedure TfrmCentrosXCuenta.GridCentroColEnter(Sender: TObject);
begin
  if GridCentro.SelectedIndex = 2 then GridCentro.SelectedIndex := GridCentro.SelectedIndex + 1;
end;

procedure TfrmCentrosXCuenta.QCentroBeforePost(DataSet: TDataSet);
begin
 if QCentrocen_nombre.Value= '' then QCentro.Cancel;
end;

procedure TfrmCentrosXCuenta.GridCentroColExit(Sender: TObject);
begin
if QCentro.State in [dsedit,dsinsert] then QCentro.Post;
end;

procedure TfrmCentrosXCuenta.Totalizar;
begin
  with QCentro do begin
  DisableControls;
  First;
  vTotal :=  vMontototal;
  while not Eof do begin
  vTotal := vTotal - QCentrodet_monto.Value;
  Next;
  end;
  EnableControls;
  end;
  if vTotal <> 0 then
  txtTotal.Font.Color := clRed else
  txtTotal.Font.Color := clBlack;
   txtTotal.Caption := FormatCurr('#,0.00',vTotal);

end;

procedure TfrmCentrosXCuenta.QCentroAfterPost(DataSet: TDataSet);
begin
Totalizar;
end;

procedure TfrmCentrosXCuenta.FormShow(Sender: TObject);
begin
 txtTotal.Caption := FormatCurr('#,0.00',vMontototal);
 Totalizar;
end;

end.
