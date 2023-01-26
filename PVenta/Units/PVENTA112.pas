unit PVENTA112;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Mask,
  QuerySearchDlgADO;

type
  TfrmVencimiento = class(TForm)
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    edProd: TEdit;
    tProd: TEdit;
    edCantidad: TEdit;
    Search: TQrySearchDlgADO;
    btClose: TBitBtn;
    btPost: TBitBtn;
    edFecha: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    btAlmacen: TSpeedButton;
    edAlmacen: TEdit;
    tAlmacen: TEdit;
    btProveedor: TSpeedButton;
    edProveedor: TEdit;
    tProveedor: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edEtiquetas: TEdit;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btPostClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btAlmacenClick(Sender: TObject);
    procedure edAlmacenChange(Sender: TObject);
    procedure edAlmacenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure btProveedorClick(Sender: TObject);
    procedure edProveedorChange(Sender: TObject);
    procedure edProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Prod, Lote, prov : Integer;
    oRef, fRef, detallado : String;
    Precio : Double;
    procedure RepBarra;
    Function ClavePrecio (Monto : Double) : String;
  end;

var
  frmVencimiento: TfrmVencimiento;

implementation

uses PVENTA33, SIGMA01;

{$R *.dfm}

procedure TfrmVencimiento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmVencimiento.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVencimiento.SpeedButton1Click(Sender: TObject);
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.showmodal;
  if frmBuscaProducto.seleccion = 1 then
  begin
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       edProd.text := inttostr(frmBuscaProducto.QProductosPRO_CODIGO.value)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       edProd.text := frmBuscaProducto.QProductosPRO_RFABRIC.value
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       edProd.text := frmBuscaProducto.QProductosPRO_RORIGINAL.value;
    prod := frmBuscaProducto.QProductosPRO_CODIGO.value;
    oRef := frmBuscaProducto.QProductosPRO_RORIGINAL.Value;
    fRef := frmBuscaProducto.QProductosPRO_RFABRIC.Value;
    Precio := frmBuscaProducto.QProductosPRO_PRECIO1.Value;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select pro_nombre, pro_detallado, sup_codigo from productos');
    dm.Query1.sql.add('where emp_codigo = :emp');
    if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
       dm.Query1.sql.add('and pro_codigo = '+edProd.text)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
       dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
    else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
       dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
    dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
    detallado  := dm.Query1.FieldByName('pro_detallado').AsString;
    edProd.SetFocus;
  end;
  frmBuscaProducto.release;
end;

procedure TfrmVencimiento.edProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProd.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_nombre, pro_codigo, pro_rfabric, sup_codigo, pro_costo,'); //titin pro_costo
      dm.Query1.sql.add('pro_roriginal, pro_precio1, pro_detallado from productos');
      dm.Query1.sql.add('where emp_codigo = :emp');
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         dm.Query1.sql.add('and pro_codigo = '+edProd.text)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         dm.Query1.sql.add('and pro_rfabric = '+#39+edProd.text+#39)
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         dm.Query1.sql.add('and pro_roriginal = '+#39+edProd.text+#39);
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if dm.Query1.recordcount = 0 then
      begin
        messagedlg('ESTE PRODUCTO NO EXISTE',mterror,[mbyes,mbno],0);
        edProd.setfocus;
      end
      else
      begin
        tProd.text := dm.Query1.FieldByName('pro_nombre').AsString;
        prod := dm.Query1.FieldByName('pro_codigo').asinteger;
        oRef := dm.Query1.FieldByName('pro_roriginal').AsString;
        fRef := dm.Query1.FieldByName('pro_rfabric').AsString;
        //titin
        if (dm.QParametrosPAR_OPC1RALINEA.Value = 'Costo') or
           (dm.QParametrosPAR_OPC5TALINEA.Value = 'Costo')  then
          Precio := dm.Query1.FieldByName('pro_costo').AsFloat
        else
          Precio := dm.Query1.FieldByName('pro_precio1').AsFloat;
        detallado  := dm.Query1.FieldByName('pro_detallado').AsString;
      end;
    end;
  end;
end;

procedure TfrmVencimiento.btPostClick(Sender: TObject);
begin
  if trim(edAlmacen.text) = '' then begin
    ShowMessage('Debes seleccionar un almacen valido para realizar esta tarea.....');
    Abort;
  end;
  if (Prod > 0) and (Trim(edCantidad.Text) <> '') then
  begin
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ven_lote from provence');
    dm.Query1.SQL.Add('where pro_codigo = :pro');
    dm.Query1.SQL.Add('and ven_fecha = :fec');
    dm.Query1.SQL.Add('and emp_codigo = :emp');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('fec').Value := StrToDate(edFecha.Text);
    dm.Query1.Parameters.ParamByName('pro').Value := Prod;
    dm.Query1.Open;
    if dm.Query1.RecordCount = 0 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select isnull(max(ven_lote),0) as lote from provence');
      dm.Query1.SQL.Add('where pro_codigo = :pro');
      dm.Query1.SQL.Add('and emp_codigo = :emp');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('pro').Value := Prod;
      dm.Query1.Open;
      Lote := dm.Query1.FieldByName('lote').AsInteger + 1;

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('insert into provence (emp_codigo, pro_codigo,');
      dm.Query1.SQL.Add('ven_fecha, ven_cantvendida, ven_cantpendiente, ven_lote, sup_codigo)');
      dm.Query1.SQL.Add('values (:emp, :pro, :fec, 0, :pen, :lot, :sup)');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('pro').Value := Prod;
      dm.Query1.Parameters.ParamByName('fec').Value := StrToDate(edFecha.Text);
      dm.Query1.Parameters.ParamByName('pen').Value := StrToFloat(edCantidad.Text);
      dm.Query1.Parameters.ParamByName('lot').Value := Lote;
      dm.Query1.Parameters.ParamByName('sup').Value := strtoint(edProveedor.Text);
      dm.Query1.ExecSQL;
    end
    else
    begin
      Lote := dm.Query1.FieldByName('ven_lote').AsInteger;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('update provence set ven_cantpendiente =');
      dm.Query1.SQL.Add('ven_cantpendiente + :can');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and pro_codigo = :pro');
      dm.Query1.SQL.Add('and ven_lote = :lot');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('pro').Value := Prod;
      dm.Query1.Parameters.ParamByName('can').Value := StrToFloat(edCantidad.Text);
      dm.Query1.Parameters.ParamByName('lot').Value := Lote;
      dm.Query1.ExecSQL;
    end;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update productos set pro_existencia =');
    dm.Query1.SQL.Add('pro_Existencia + :can');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := Prod;
    dm.Query1.Parameters.ParamByName('can').Value   := StrToFloat(edCantidad.Text);
    dm.Query1.ExecSQL;

    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('update existencias set exi_cantidad =');
    dm.Query1.SQL.Add('exi_cantidad + :can');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and pro_codigo = :pro');
    dm.Query1.SQL.Add('and alm_codigo = :alm');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.Parameters.ParamByName('pro').Value := Prod;
    dm.Query1.Parameters.ParamByName('can').Value := StrToFloat(edCantidad.Text);
    dm.Query1.Parameters.ParamByName('alm').Value := StrToInt(edAlmacen.Text);
    dm.Query1.ExecSQL;

    if MessageDlg('IMPRIMIR CODIGO DE BARRA?',mtConfirmation,[mbyes,mbno],0) = mryes then
      RepBarra;

    edCantidad.Text  := '';
    edEtiquetas.Text := '';
    edFecha.Clear;
    edProd.SetFocus;
  end;
end;

procedure TfrmVencimiento.RepBarra;
var
  ar : textfile;
  s : array[0..20] of char;
  Relleno, IniBarra : String;
  a : integer;
begin
  if Trim(edCantidad.Text) <> '' then
  begin
    if not FileExists('c:\barra.ini') then
    begin
      AssignFile(ar, 'c:\barra.ini');
      rewrite(ar);
      writeln(ar,'prn');
      IniBarra := 'prn';
      closefile(ar);
    end
    else
    begin
      AssignFile(ar, 'c:\barra.ini');
      reset(ar);
      read(ar,IniBarra);
      closefile(ar);
    end;

    AssignFile(ar, 'c:\imp.bat');
    rewrite(ar);
    writeln(ar, 'type c:\t.txt > '+IniBarra);
    closefile(ar);

    assignfile(ar, 'c:\t.txt');
    rewrite(ar);

    for a := 0 to Memo1.Lines.Count-1 do
      if Trim(Memo1.Lines[a]) <> '' then
         writeln(ar,Memo1.Lines[a]);

    {writeln(ar,'q288');
    writeln(ar,'Q152,40');
    writeln(ar,'N');
    writeln(ar,'ZT');}
    s := '';
    Relleno := '';
    if dm.QParametrosPAR_VENVERIFICA.Value = '1' then
    begin
      FillChar(s, dm.QParametrosPAR_VENDIGITOSLOTE.Value-Length(IntToStr(Lote)),'0');
      Relleno := s+IntToStr(Lote);
    end
    else
      Relleno := '99';

    if (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio1') or
    (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio2') or
    (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio3') or
    (dm.QParametrosPAR_OPC1RALINEA.Value = 'Precio4') or
    (dm.QParametrosPAR_OPC1RALINEA.Value = 'Costo') then   //titin costo
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
              copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
              'RD$'+format('%n',[Precio])+#34)
    else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Original' then
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
              copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
              Relleno+oRef+#34)
    else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Ref. Fabircante' then
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
              copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
              Relleno+fRef+#34)
    else if dm.QParametrosPAR_OPC1RALINEA.Value = 'Clave de Precio' then
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+
              copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+' '+
              ClavePrecio(Precio)+#34)
    else
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA1.value+#34+copy(dm.QEmpresasEMP_NOMBRE.value,1,24)+#34);

    writeln(ar,dm.QParametrosPAR_TEXTOBARRA2.value+#34+trim(dm.QEmpresasEMP_TELEFONO.value)+' p:'+edproveedor.text +#34);
    if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'I' then
    begin
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+inttostr(Prod)+#34);
    end
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'O' then
    begin
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+oRef+#34);
    end
    else if dm.QParametrosPAR_CODIGOPRODUCTO.Value = 'F' then
    begin
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA3.value+#34+Relleno+fRef+#34);
    end;
    writeln(ar,dm.QParametrosPAR_TEXTOBARRA4.value+#34+copy(tProd.text,1,27)+#34);
    if (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio1') or
    (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio2') or
    (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio3') or
    (dm.QParametrosPAR_OPC5TALINEA.Value = 'Precio4') or
    (dm.QParametrosPAR_OPC5TALINEA.Value = 'Costo') then
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+'RD$'+format('%n',[Precio])+'  v:'+edFecha.Text+#34)
    else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Original' then
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+oRef+#34)
    else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Ref. Fabircante' then
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+fRef+#34)
    else if dm.QParametrosPAR_OPC5TALINEA.Value = 'Clave de Precio' then
      writeln(ar,dm.QParametrosPAR_TEXTOBARRA5.value+#34+Relleno+ClavePrecio(Precio)+'  v:'+edFecha.Text+#34);
    writeln(ar,'P'+trim(edEtiquetas.text));
    closefile(ar);

    winexec('c:\imp.bat',0);
    edProd.SetFocus;
  end;
end;

procedure TfrmVencimiento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

function TfrmVencimiento.ClavePrecio(Monto: Double): String;
var
  Precio, lbClave : String;
  a : Integer;
begin
    lbClave := '';
    Precio := Format('%n',[Monto]);
    For a := 1 To Length(Precio) do
    begin
      if Copy(Precio, a, 1) = '0' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_0.Value;
      if Copy(Precio, a, 1) = '1' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_1.Value;
      if Copy(Precio, a, 1) = '2' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_2.Value;
      if Copy(Precio, a, 1) = '3' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_3.Value;
      if Copy(Precio, a, 1) = '4' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_4.Value;
      if Copy(Precio, a, 1) = '5' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_5.Value;
      if Copy(Precio, a, 1) = '6' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_6.Value;
      if Copy(Precio, a, 1) = '7' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_7.Value;
      if Copy(Precio, a, 1) = '8' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_8.Value;
      if Copy(Precio, a, 1) = '9' then
        lbClave := lbClave + dm.QParametrosPAR_PRECIOLETRA_9.Value;
    end;
  Result := lbClave;
end;

procedure TfrmVencimiento.btAlmacenClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select alm_nombre, alm_codigo');
  Search.Query.Add('from almacen');
  Search.Query.Add('where emp_Codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.Value));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.ResultField := 'alm_codigo';
  Search.Title := 'Almacenes';
  if Search.execute then
  begin
    edAlmacen.text := search.valuefield;
    edAlmacen.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edAlmacen.setfocus;
  end;
end;

procedure TfrmVencimiento.edAlmacenChange(Sender: TObject);
begin
  if trim(edAlmacen.text) = '' then tAlmacen.text := '';
end;

procedure TfrmVencimiento.edAlmacenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edAlmacen.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edAlmacen.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      if DM.Query1.RecordCount = 0 then begin
        ShowMessage('ESTE ALMACEN NO ES VALIDO, '+Char(13)+
        'FAVOR VERIFICAR.....');
        edAlmacen.Clear;
        edAlmacen.SetFocus;
        Exit;
      end;
      tAlmacen.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    end
    else
      tAlmacen.text := '';
  end;
end;

procedure TfrmVencimiento.FormActivate(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select alm_nombre from almacen');
  dm.Query1.SQL.Add('where emp_Codigo = :emp');
  dm.Query1.SQL.Add('and alm_codigo = 1');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Open;
  tAlmacen.Text := dm.Query1.FieldByName('alm_nombre').AsString;
  edAlmacen.Text := '1';

  memo1.Lines.Clear;
  memo1.Lines.Text := dm.QParametrospar_barra_header.Value;
  
end;

procedure TfrmVencimiento.btProveedorClick(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Query.clear;
  Search.Query.add('select sup_nombre, sup_codigo');
  Search.ResultField := 'sup_codigo';
  Search.Query.add('from proveedores');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and sup_Status = '+#39+'ACT'+#39);
  Search.Title := 'Listado de Proveedores';
  if Search.execute then
  begin
    edProveedor.text := search.valuefield;
    edProveedor.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
    dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
    dm.Query1.sql.add('from proveedores');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
    dm.Query1.sql.add('and sup_codigo = :sup');
    dm.Query1.Parameters.parambyname('sup').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    edProveedor.setfocus;
  end;
end;

procedure TfrmVencimiento.edProveedorChange(Sender: TObject);
begin
  if trim(edProveedor.text) = '' then tProveedor.text := '';
end;

procedure TfrmVencimiento.edProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edProveedor.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select sup_codigo, sup_nombre, sup_balance,');
      dm.Query1.sql.add('sup_direccion, sup_localidad, sup_telefono, sup_fax');
      dm.Query1.sql.add('from proveedores');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and sup_Status = '+#39+'ACT'+#39);
      dm.Query1.sql.add('and sup_codigo = :sup');
      dm.Query1.Parameters.parambyname('sup').Value := strtoint(edProveedor.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tProveedor.text := dm.Query1.fieldbyname('sup_nombre').asstring;
    end
    else
      tProveedor.text := '';
  end;
end;

end.
