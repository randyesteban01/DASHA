unit RH65;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, ADODB, DBCtrls, Mask,
  QuerySearchDlgADO, Grids, DBGrids;

type
  TfrmNominaBanco = class(TForm)
    PageControl1: TPageControl;
    banco_popular: TTabSheet;
    cbTS: TComboBox;
    btnasiento: TBitBtn;
    Label1: TLabel;
    EnvioArchivo: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    AplicaPago: TDateTimePicker;
    qryTemp: TADOQuery;
    QParam_RHumanos: TADOQuery;
    QParam_RHumanospar_rrhh_codigo_banco_popular: TIntegerField;
    QParam_RHumanostipo_cuenta: TIntegerField;
    procedure btnasientoClick(Sender: TObject);
    procedure cbTSChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QParam_RHumanosAfterOpen(DataSet: TDataSet);
  private
    TS:string[2];
    Bco_CantDB, Bco_CantCR : Integer;
    Bco_MontoTDB, Bco_MontoTCR : Currency;
    function cta_Bancaria(Cod : string; CodBanc:integer):string;
//    procedure Get_trans(vArch : textfile);
  public
    { Public declarations }
  end;

var
  frmNominaBanco: TfrmNominaBanco;

implementation

uses SIGMA01, RH51, DateUtils, Math;

{$R *.dfm}

procedure TfrmNominaBanco.btnasientoClick(Sender: TObject);
var
  Arch : textfile;
  fc : string[2];
  NomArch,NA,ctaBanc,MTrans,EMail : String;
  s,s1,s2,s3,s5 : array [0..40] of char;
  s4,s6 : array [0..136] of char;
   i,i2 : integer;
   idValue, strtipo, strcodigobanco, strtipocuenta: string;

begin
  with dm.Query1,SQL do
  begin
    close;
    clear;
    Add('select e.* ');
    add(' from Nomina_Detalle n, empleados e , Param_RHumanos p');
    Add('where n.emp_numero=e.emp_numero ');
   // Add('  and e.ban_codigo=p.par_rrhh_codigo_banco_popular');
    Add('  and n.emp_codigo=p.emp_codigo');
    Add('  and e.emp_cuenta_bancaria <> '+QuotedStr(''));
    Add('  and e.emp_tipo_cuenta <> '+QuotedStr(''));
    Add('  and n.emp_codigo = '+frmNomina.QNominaemp_codigo.AsString);
    Add('  and n.nom_codigo = '+frmNomina.QNominanom_codigo.AsString);
//    SaveToFile('ctabancaria.txt');
    open;
  end;
  if dm.Query1.IsEmpty then
       messagedlg('NO HAY EMPLEADOS CON CUENTA BANCARIA', mtInformation, [mbYes],0)
  else
begin
try
  NomArch := 'PE'+FormatFloat('00000',DM.QParamRHpar_rrhh_numero_asignado.AsFloat)+TS+
  FormatDateTime('yyyyMMdd',EnvioArchivo.Date)+FormatFloat('0000000',DM.QParamRHpar_rrhh_secuencia_H.AsFloat)+'E.txt';
       //fer
  if FileExists(NomArch) then
     begin
       assignfile(arch, NomArch);
        reset(arch);
      end
  else
    AssignFile(arch, NomArch);
    rewrite(arch);
    s := ''; s1 := ''; s2 := ''; s3 := ''; s4 := '';
    fillchar(s, 15-length(copy(dm.QEmpresasEMP_RNC.asstring,1,15)),' ');
    fillchar(s1,35-length(copy(dm.QEmpresasEMP_NOMBRE.asstring,1,35)),' ');
    if TS = '03' then NA := FormatFloat('000000000000000',DM.QParamRHpar_rrhh_numeroafiliacion.AsFloat)
    else NA := '000000000000000';
    fillchar(s2,40-length(copy(dm.QParamRHpar_rrhh_email.asstring,1,40)),' ');
    fillchar(s3,1,' ');
    fillchar(s4,136,' ');

    qryTemp.Close;   //emp_cuenta_bancaria
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select emp_email,emp_cuenta_bancaria,ban_codigo,emp_tipo_cuenta from empleados where emp_codigo = :emp');
    qryTemp.SQL.Add('and emp_numero = :cod');
    qryTemp.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
 //    FER
    i := 1; Bco_CantDB := 0;
    while i <= frmNomina.sgnomina.RowCount-1 do
      begin
        if frmNomina.sgnomina.Cells[0, i] <> '' then
        Begin
        qryTemp.Close;
        if frmNomina.sgnomina.Cells[0, i] <> '' then
           begin
            qryTemp.Parameters.ParamByName('cod').Value := frmNomina.sgnomina.Cells[0, i];
            qryTemp.Open;
           { if (QParam_RHumanospar_rrhh_codigo_banco_popular.Asinteger = qryTemp.FieldByName('ban_codigo').AsInteger)
               and (not qryTemp.FieldByName('emp_cuenta_bancaria').IsNull)
               and (not qryTemp.FieldByName('emp_tipo_cuenta').IsNull) then begin }
                Bco_MontoTCR := Bco_MontoTCR + StrToCurr(StringReplace(trim(frmNomina.sgnomina.Cells[frmNomina.sgnomina.ColCount-1, i]),',','',[rfReplaceAll]));
//                Bco_MontoTCR := Bco_MontoTCR + StrToCurr(StringReplace(trim(frmNomina.sgnomina.Cells[9, i]),',','',[rfReplaceAll]));
                inc(Bco_CantCR,1);
               // end;
           END;
        End;
        inc(i,1);
      End;

  Bco_MontoTCR := Bco_MontoTCR *100;
    writeln(arch, 'H'+Copy(dm.QEmpresasEMP_RNC.asstring,1,15)+s+Copy(dm.QEmpresasEMP_NOMBRE.asstring,1,35)+s1
    +FormatFloat('0000000',DM.QParamRHpar_rrhh_secuencia_H.AsFloat)
    +TS+FormatDateTime('yyyyMMdd',AplicaPago.Date)
    +FormatFloat('00000000000',Bco_CantDB)  {CantDB}
    +FormatFloat('0000000000000',Bco_MontoTDB)  {MontoTDB}
    +FormatFloat('00000000000',Bco_CantCR)  {CantCR}
    +FormatFloat('0000000000000',Bco_MontoTCR)  {MontoTCR}
    +NA
    +FormatDateTime('yyyyMMdd',EnvioArchivo.Date)
    +FormatDateTime('hhmm',time)
    +Copy(dm.QParamRHpar_rrhh_email.asstring,1,40)+s2+s3+s4);

    qryTemp.Close;   //emp_cuenta_bancaria
    qryTemp.SQL.Clear;
    qryTemp.SQL.Add('select e.emp_email,e.emp_cuenta_bancaria,e.ban_codigo,e.emp_tipo_cuenta,b.codigo_banco from empleados e inner join  Bancos b on b.ban_codigo= e.ban_codigo  where e.emp_codigo = :emp');
    qryTemp.SQL.Add('and e.emp_numero = :cod');
    qryTemp.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    i := 1; i2 := 1;
    while i <= frmNomina.sgnomina.RowCount-1 do
      begin
        s1 := ''; s2 := ''; s3 := ''; s4 := ''; s5 := ''; s6 := '';
        ctaBanc := '';
        qryTemp.Close;
        if frmNomina.sgnomina.Cells[0, i] <> '' then
           begin
           qryTemp.Parameters.ParamByName('cod').Value := frmNomina.sgnomina.Cells[0, i];
           qryTemp.Open;

           EMail := trim(qryTemp.FieldByName('emp_email').AsString);
           strcodigobanco:=trim(qryTemp.FieldByName('codigo_banco').AsString);

           if (trim(qryTemp.FieldByName('emp_tipo_cuenta').AsString)='Corriente') then
           begin
            strtipocuenta:='22'  
           end else strtipocuenta:='32';

           if EMail <>'' then
              fc := '01'
           else
              fc := pchar('  ');
           fillchar(s1,  2-length(copy(QParam_RHumanostipo_cuenta.asstring,1,2)),' '); // fillchar(s1,  2-length(copy(QBancotipo_cuenta.asstring,1,2)),' ');
//           MTrans := StringReplace(StringReplace(frmNomina.sgnomina.Cells[9, i],'.','', [rfReplaceAll]),',','',[rfReplaceAll]);
           MTrans := StringReplace(StringReplace(frmNomina.sgnomina.Cells[frmNomina.sgnomina.ColCount-1, i],'.','', [rfReplaceAll]),',','',[rfReplaceAll]);
           fillchar(s2, 13-length(copy(MTrans,1,13)),'0');
           fillchar(s3, 35-length(copy(frmNomina.sgnomina.Cells[1, i],1,35)),' ');
           fillchar(s4, 40-length(copy('PAGO '+frmNomina.DBLookupComboBox1.Text+' '+dm.NombreEmp,1,40)),' ');
           fillchar(s5, 40-length(copy(EMail,1,40)),' ');
           fillchar(s6, 52,' ');

           

{if (QParam_RHumanospar_rrhh_codigo_banco_popular.Asinteger = qryTemp.FieldByName('ban_codigo').AsInteger)
   and (not qryTemp.FieldByName('emp_cuenta_bancaria').IsNull)
   and (not qryTemp.FieldByName('emp_tipo_cuenta').IsNull) then begin    }

           idValue := StringReplace(copy(frmNomina.sgnomina.Cells[2, i], 1, 15), '-', '', [rfReplaceAll]);
           if length(idValue) <10 then strtipo:='PS' else strtipo:='CE';

           if length(idValue) <10 then idValue := StringReplace(copy(frmNomina.sgnomina.Cells[2, i],1,15),'-','',[rfReplaceAll])+'     '
           else  idValue := StringReplace(copy(frmNomina.sgnomina.Cells[2, i],1,15),'-','',[rfReplaceAll])+'    ' ;

           IF (strtipo='PS') then
           begin
              idValue := idValue + ' ';
           end;

           inc(i2,1);
           if (s2+copy(MTrans,1,13)) <> '0000000000000' then begin
           writeln(arch,'N'+Copy(dm.QEmpresasEMP_RNC.asstring,1,15)+s
           +FormatFloat('0000000',DM.QParamRHpar_rrhh_secuencia_H.AsFloat)
           +FormatFloat('0000000',i2)
           +cta_Bancaria(frmNomina.sgnomina.Cells[0, i],QParam_RHumanospar_rrhh_codigo_banco_popular.Asinteger)
           +'214' {codigo de la moneda pesos}
           +strcodigobanco
           //Esto estaba en duro +'10101070' ahora se traslado este codigo a la tabla de bancos
           +'8'
           +strtipocuenta+s1
          // +copy(QParam_RHumanostipo_cuenta.asstring,1,2)+s1
           +s2+copy(MTrans,1,13) //MONTO DE LA TRANSACION
          // +'CE'
           + strtipo
           +idValue


           //+StringReplace(copy(frmNomina.sgnomina.Cells[2, i],1,15),'-','',[rfReplaceAll])+'    '


           +copy(frmNomina.sgnomina.Cells[1, i],1,35)+s3
           +pchar(' PAGO NOMINA')
           +copy('PAGO '+frmNomina.DBLookupComboBox1.Text+' '+dm.NombreEmp,1,40)+s4
           +pchar('0000')
           +fc {forma de contacto}
           +copy(EMail,1,40)+s5  {E-Mail Benef}
           +pchar('000000000000') {Fax Telefono Benef}
           +pchar('               ') {NumeroAut}
           +pchar('   '){Codigo Retorno Remoto}
           +pchar('   '){Codigo Razon Remoto}
           +pchar('      '){Codigo Razon Interno, Procesador Transaccion, Estatus Transacci�n}
           +s6          {Filler}
          );
         // end;
          end;
          end;
        inc(i,1);
      end;
    CloseFile(arch);
    with dm.Query1,SQL do
    begin
      close;
      clear;
      Add('UPDATE Param_RHumanos set');
      add(' par_rrhh_secuencia_H = isnull(par_rrhh_secuencia_H,0)+1');
      Add('where emp_codigo = '+frmNomina.QNominaemp_codigo.AsString);
      ExecSQL;
    end;

    if messagedlg('DESEA ABRIR LA CARPETA QUE LO CONTIENE EL ARCHIVO?',
       mtconfirmation, [mbyes,mbno],0) = mrYES then
       WinExec(PChar('explorer.exe '+ExtractFilePath(Application.ExeName)), SW_SHOW);
{finally
  if messagedlg('ARCHIVO GENERADO EXITOSAMENTE'+#13+'DESEA ABRIR LA CARPETA QUE LO CONTIENE?',
     mtconfirmation, [mbyes,mbno],0) = mrYES then
     WinExec(PChar('explorer.exe '+ExtractFilePath(Application.ExeName)), SW_SHOW);}

Except on E : Exception do ShowMessage('ERROR AL GENERAR EL ARCHIVO'+#13+E.Message);
//  ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
end;
end;
end;

procedure TfrmNominaBanco.cbTSChange(Sender: TObject);
begin
  case cbTS.ItemIndex of
    0: TS := '01';
    1: TS := '02';
    2: TS := '03';
  end;
  btnasiento.Enabled := cbTS.ItemIndex > -1;
end;

procedure TfrmNominaBanco.FormShow(Sender: TObject);
begin
  cbTSChange(Self);
  if (not QParam_RHumanos.Active) {and(not frmNomina.Active)} then
     QParam_RHumanos.Active := true;
end;

function TfrmNominaBanco.cta_Bancaria(Cod: string;
  CodBanc: integer): string;
  var s,s2 : array [0..40] of char;
      ctaBan:string;
begin
  s := '';
  fillchar(s, 20,' ');
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select emp_cuenta_bancaria');
  dm.Query1.SQL.Add(', case upper(emp_tipo_cuenta)when '+QuotedStr('CORRIENTE')+' THEN 1 WHEN '+QuotedStr('AHORRO')+' THEN 2 END tipo_cuenta');
  dm.Query1.SQL.Add(' from empleados where emp_codigo = :emp');
  dm.Query1.SQL.Add('and emp_numero = :cod');
  //dm.Query1.SQL.Add('and ban_codigo = :codBanc');
  dm.Query1.Parameters.ParamByName('emp').Value     := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('cod').Value     := StrToInt(Cod);
  //dm.Query1.Parameters.ParamByName('codBanc').Value := CodBanc;
  dm.Query1.Open;
  if not dm.Query1.IsEmpty then
     begin
      ctaBan := trim(StringReplace(dm.Query1.FieldByName('emp_cuenta_bancaria').AsString,'-','', [rfReplaceAll]));
      s := ''; s2 := '';
      fillchar(s, 20-length(copy(ctaBan,1,20)),' ');
      fillchar(s2, 1-length(copy(dm.Query1.FieldByName('tipo_cuenta').AsString,1,1)),' ');
      Result := Copy(ctaBan,1,20)+s
      +Copy(dm.Query1.FieldByName('tipo_cuenta').AsString,1,1)+s2;
     end
    else
    Result := s+s2[1];
end;

procedure TfrmNominaBanco.QParam_RHumanosAfterOpen(DataSet: TDataSet);
begin
  if DataSet.FieldByName('tipo_cuenta').AsString = '' then
     messagedlg('TIPO DE CUENTA NO DEFINIDO EN CUENTA BANCARIA', mtInformation, [mbYes],0);

  btnasiento.Enabled := (DataSet.FieldByName('tipo_cuenta').AsString <> '')AND(cbTS.ItemIndex > 0);
end;

end.
