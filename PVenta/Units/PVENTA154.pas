unit PVENTA154;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, QuerySearchDlgADO, DB,
  IBCustomDataSet, ADODB, DBCtrls;

type
  TfrmProcesoColector = class(TForm)
    rbCondi: TRadioGroup;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    btFamilia: TSpeedButton;
    Label4: TLabel;
    btMarca: TSpeedButton;
    Label2: TLabel;
    tFamilia: TEdit;
    edFamilia: TEdit;
    tMarca: TEdit;
    edMarca: TEdit;
    Search: TQrySearchDlgADO;
    lbprocesando: TLabel;
    BitBtn2: TBitBtn;
    OpenDialog1: TOpenDialog;
    QEntrada: TADOQuery;
    QEntradaEMP_CODIGO: TIntegerField;
    QEntradaENT_CONCEPTO: TIBStringField;
    QEntradaENT_FECHA: TDateTimeField;
    QEntradaENT_ITBIS: TFloatField;
    QEntradaENT_NUMERO: TIntegerField;
    QEntradaENT_STATUS: TIBStringField;
    QEntradaENT_TOTAL: TFloatField;
    QEntradaSUP_CODIGO: TIntegerField;
    QEntradaALM_CODIGO: TIntegerField;
    QEntradaUSU_CODIGO: TIntegerField;
    QEntradaSubTotal: TFloatField;
    QEntradaSUC_CODIGO: TIntegerField;
    QDetalle: TADOQuery;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_CONITBIS: TIBStringField;
    QDetalleDET_COSTO: TFloatField;
    QDetalleDET_ITBIS: TFloatField;
    QDetalleDET_PRECIO: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetalleENT_NUMERO: TIntegerField;
    QDetallePRO_BARRA: TIBStringField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleValor: TFloatField;
    QDetalleDET_FECHAVENCE: TDateTimeField;
    QDetalleDET_LOTE: TIntegerField;
    QDetalleDET_VENCE: TIBStringField;
    QDetalleDET_ESCALA: TIBStringField;
    QDetalleDET_MANEJAESCALA: TIBStringField;
    QDetalleDET_MEDIDA: TIBStringField;
    QDetalleCalcItbis: TFloatField;
    QDetallePrecioItbis: TFloatField;
    QDetalleCalcDesc: TFloatField;
    QDetalleDET_COSTOEMP: TFloatField;
    QDetalleDET_COSTOUND: TFloatField;
    QDetalleSUC_CODIGO: TIntegerField;
    btAlma: TSpeedButton;
    Label6: TLabel;
    edAlma: TEdit;
    tAlma: TEdit;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    dsSuc: TDataSource;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Query1: TADOQuery;
    procedure btFamiliaClick(Sender: TObject);
    procedure btMarcaClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure btAlmaClick(Sender: TObject);
    procedure edAlmaChange(Sender: TObject);
    procedure edFamiliaChange(Sender: TObject);
    procedure edMarcaChange(Sender: TObject);
    procedure edMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edFamiliaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edAlmaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcesoColector: TfrmProcesoColector;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmProcesoColector.btFamiliaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select fam_nombre, fam_codigo');
  Search.Query.add('from familias');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'fam_codigo';
  Search.Title := 'Listado de Familias';
  if Search.execute then
  begin
    edFamilia.text := search.valuefield;
    edFamilia.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select fam_codigo, fam_nombre');
    dm.Query1.sql.add('from familias');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and fam_codigo = :fam');
    dm.Query1.Parameters.parambyname('fam').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    edFamilia.setfocus;
  end;
end;

procedure TfrmProcesoColector.btMarcaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select mar_nombre, mar_codigo');
  Search.Query.add('from marcas');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'mar_codigo';
  Search.Title := 'Listado de Marcas';
  if Search.execute then
  begin
    edMarca.text := search.valuefield;
    edMarca.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select mar_codigo, mar_nombre');
    dm.Query1.sql.add('from marcas');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and mar_codigo = :mar');
    dm.Query1.Parameters.parambyname('mar').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tMarca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    edMarca.setfocus;
  end;
end;

procedure TfrmProcesoColector.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProcesoColector.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmProcesoColector.BitBtn1Click(Sender: TObject);
var
  arch, noexiste : textfile;
  linea, rCod, rRef, rUnd, rEmp : string;
  a : integer;
  total : double;
begin
  if OpenDialog1.Execute then
  begin
    lbprocesando.Visible := true;

    if not QEntrada.active then
    begin
      QEntrada.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      QEntrada.Parameters.parambyname('numero').Value := -1;
      QEntrada.Parameters.parambyname('suc').Value := -1;
      QEntrada.open;

      QDetalle.close;
      QDetalle.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      QDetalle.Parameters.parambyname('numero').Value := -1;
      QDetalle.Parameters.parambyname('suc').Value := -1;
      QDetalle.open;
    end;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select isnull(max(ent_numero),0) as maximo from entradainv');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;

    QEntrada.insert;
    QEntradaEMP_CODIGO.Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    QEntradaENT_NUMERO.Value := dm.Query1.FieldByName('maximo').Value + 1;
    QEntradaENT_FECHA.Value  := Date;
    QEntradaENT_CONCEPTO.Value := 'Recepcion Via Colector de Inventario';
    QEntradaENT_ITBIS.Value  := 0;
    QEntradaENT_STATUS.Value := 'EMI';
    QEntradaENT_TOTAL.Value  := 0;
    QEntradaALM_CODIGO.Value := StrToInt(edAlma.Text);
    QEntradaUSU_CODIGO.Value := dm.Usuario;
    QEntradaSUC_CODIGO.Value := DBLookupComboBox2.KeyValue;
    QEntrada.Post;
    QEntrada.UpdateBatch;

    assignfile(arch, OpenDialog1.FileName);
    reset(arch);
    a := 0;
    assignfile(noexiste, OpenDialog1.FileName+'_ERROR');
    rewrite(noexiste);

    total := 0;
    while not eof(arch) do
    begin
      readln(arch, linea);
      a := a + 1;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select campo from recibir_colector where emp_codigo = :emp');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      rUnd := '';
      rEmp := '';
      rCod := '';
      rRef := '';
      while not dm.Query1.Eof do
      begin
        if dm.Query1.FieldByName('campo').AsString = 'Codigo' then
          rCod := Trim(Copy(linea,1,pos(',',linea)-1))
        else if dm.Query1.FieldByName('campo').AsString = 'Ref. Original' then
          rRef := Trim(Copy(linea,1,pos(',',linea)-1))
        else if dm.Query1.FieldByName('campo').AsString = 'Cantidad Und' then
          rUnd := Trim(Copy(linea,pos(',',linea)+1,length(linea)))
        else if dm.Query1.FieldByName('campo').AsString = 'Cantidad Emp' then
          rEmp := Trim(Copy(linea,pos(',',linea)+1,length(linea)));

        dm.Query1.Next;
      end;

      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('select pro_codigo, pro_nombre, pro_roriginal, isnull(pro_itbis,'+QuotedStr('N')+') as pro_itbis,');
      Query1.SQL.Add('isnull(pro_costo,0) as pro_costo,');
      Query1.SQL.Add('isnull(pro_costoempaque,0) as pro_costoempaque');
      Query1.SQL.Add('from productos where emp_codigo = :emp');
      if rCod = '' then
        Query1.SQL.Add('and pro_roriginal = '+QuotedStr(rRef))
      else
        Query1.SQL.Add('and pro_codigo = '+rCod);
      Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
      Query1.Open;

      if Query1.RecordCount = 0 then
      begin
        if rUnd <> '' then
          writeln(noexiste, rRef+','+rUnd)
        else
          writeln(noexiste, rRef+','+rEmp);
      end
      else
      begin
        try
        begin
          QDetalle.Append;
          QDetalleDET_SECUENCIA.Value := a;
          if rUnd <> '' then
            QDetalleDET_CANTIDAD.Value := StrToFloat(rUnd)
          else
            QDetalleDET_CANTIDAD.Value := StrToFloat(rEmp);

          QDetalleEMP_CODIGO.Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
          QDetalleENT_NUMERO.Value := QEntradaENT_NUMERO.Value;
          QDetallePRO_RORIGINAL.Value := Query1.FieldByName('pro_roriginal').Value;
          QDetallePRO_CODIGO.Value    := Query1.FieldByName('pro_codigo').Value;
          QDetallePRO_NOMBRE.Value    := Query1.FieldByName('pro_nombre').Value;
          QDetalleSUC_CODIGO.Value    := DBLookupComboBox2.KeyValue;
          QDetalleDET_CONITBIS.Value  := Query1.FieldByName('pro_itbis').Value;
          if rUnd <> '' then
            QDetalleDET_COSTO.Value     := Query1.FieldByName('pro_costo').Value
          else
            QDetalleDET_COSTO.Value     := Query1.FieldByName('pro_costoempaque').Value;
          QDetalle.Post;

          total := total + Qdetalledet_costo.value * qdetalledet_cantidad.value;
        end
        except
          if rUnd <> '' then
            writeln(noexiste, rRef+','+rUnd)
          else
            writeln(noexiste, rRef+','+rEmp);
        end;
      end;
    end;
    closefile(arch);
    closefile(noexiste);
    QDetalle.UpdateBatch;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('execute pr_graba_ent :emp, :suc, :num, :alm, 1');
    dm.Query1.Parameters.parambyname('emp').Value := QEntradaEMP_CODIGO.Value;
    dm.Query1.Parameters.parambyname('num').Value := QEntradaENT_NUMERO.value;
    dm.Query1.Parameters.parambyname('alm').Value := QEntradaALM_CODIGO.value;
    dm.Query1.Parameters.parambyname('suc').Value := QEntradaSUC_CODIGO.Value;
    dm.Query1.ExecSQL;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('update EntradaInv set ent_total = (select sum(det_costo*det_cantidad)');
    dm.Query1.sql.add('from det_entrada where emp_codigo = entradainv.emp_codigo');
    dm.Query1.sql.add('and ent_numero = entradainv.ent_numero)');
    dm.Query1.sql.add('where ent_numero = :num');
    dm.Query1.sql.add('and emp_codigo = :emp');
    dm.Query1.sql.add('and suc_codigo = :suc');
    dm.Query1.Parameters.parambyname('emp').Value := QEntradaEMP_CODIGO.Value;
    dm.Query1.Parameters.parambyname('num').Value := QEntradaENT_NUMERO.value;
    dm.Query1.Parameters.parambyname('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.ExecSQL;

    MessageDlg('PROCESO TERMINADO',mtInformation,[mbok],0);

    lbprocesando.Visible := false;
  end;
end;

procedure TfrmProcesoColector.btAlmaClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    edAlma.text := search.valuefield;
    edAlma.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlma.setfocus;
  end;
end;

procedure TfrmProcesoColector.edAlmaChange(Sender: TObject);
begin
  if trim(edAlma.text) = '' then tAlma.text := '';
end;

procedure TfrmProcesoColector.edFamiliaChange(Sender: TObject);
begin
  if trim(edFamilia.text) = '' then tFamilia.text := '';
end;

procedure TfrmProcesoColector.edMarcaChange(Sender: TObject);
begin
  if trim(edMarca.text) = '' then tMArca.text := '';
end;

procedure TfrmProcesoColector.edMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edMarca.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select mar_nombre');
      dm.Query1.sql.add('from marcas');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and mar_codigo = :mar');
      dm.Query1.Parameters.parambyname('mar').Value := strtoint(edMarca.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tMArca.text := dm.Query1.fieldbyname('mar_nombre').asstring;
    end
    else
      tMArca.text := '';
  end;
end;

procedure TfrmProcesoColector.edFamiliaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edFamilia.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select fam_codigo, fam_nombre');
      dm.Query1.sql.add('from familias');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and fam_codigo = :fam');
      dm.Query1.Parameters.parambyname('fam').Value := strtoint(edFamilia.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tFamilia.text := dm.Query1.fieldbyname('fam_nombre').asstring;
    end
    else
      tFamilia.text := '';
  end;
end;

procedure TfrmProcesoColector.edAlmaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edAlma.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edAlma.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tAlma.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end
    else
      tAlma.text := '';
  end;
end;

procedure TfrmProcesoColector.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmProcesoColector.FormActivate(Sender: TObject);
begin
  QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
  QSucursal.Open;
  DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
end;

end.

