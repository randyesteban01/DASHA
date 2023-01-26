unit CONT71;

(*
	• Formato de compras de bienes y servicios (606)
	• Formato de ventas de bienes y servicios (607)
	• Formato de envío de comprobantes anulados (608)
	• Formato de envío de pago al exterior (609)
	• Formato de envío de retenciones del Estado (623)
*)

interface
 ///create index dev_numero_fac_tfa on devolucion(dev_numero,fac_numero,tfa_codigo)
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, OleServer, ExcelXP, DB, ADODB, ComCtrls,
  ExtCtrls, Excel2000, Spin;

type
  TfrmGenera607 = class(TForm)
    Query1: TADOQuery;
    ExcelApplication1: TExcelApplication;
    Label1: TLabel;
    Label2: TLabel;
    cbmes: TComboBox;
    OpenDialog1: TOpenDialog;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    Label3: TLabel;
    SaveDialog1: TSaveDialog;
    CheckBox1: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btClose: TBitBtn;
    BitBtn3: TBitBtn;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
    rgOrden: TRadioGroup;
    cbAno: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cantidad, total : string;
    procedure TransferirExcel1;
    procedure TransferirExcel2;
  end;

var
  frmGenera607: TfrmGenera607;

implementation

uses SIGMA01, DateUtils;

{$R *.dfm}

procedure TfrmGenera607.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmGenera607.FormCreate(Sender: TObject);
var
  ano, mes, dia : word;
begin
  decodedate(date, ano, mes, dia);
  cbano.Value := StrToInt(FormatDateTime('YYYY',Date));// cbano.Items.IndexOf(inttostr(ano));
  cbmes.ItemIndex := mes-1;
  fecha1.date := StartOfTheMonth(date);
  fecha2.Date := EndOfTheMonth(date);
end;

procedure TfrmGenera607.BitBtn1Click(Sender: TObject);
begin
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select count(*) as cant, sum(isnull(total,0)-isnull(itbis,0)) as total');
  Query1.SQL.Add('from pr_genera_607 (:emp, :ano, :mes, :esfecha, :fec1, :fec2)');
  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  if cbmes.Text <> 'Todos' then
    Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1
  else
    Query1.Parameters.ParamByName('mes').Value := 0;

  if CheckBox1.Checked then
    Query1.Parameters.ParamByName('esfecha').Value := 'S'
  else
    Query1.Parameters.ParamByName('esfecha').Value := 'N';

  Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  Query1.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  Query1.Parameters.ParamByName('fec2').Value    := fecha2.Date;

//Query1.sql.SaveToFile('Query1.sql');
  Query1.Open;
  cantidad := Query1.FieldbyName('cant').AsString;
  total    := Query1.FieldbyName('total').AsString;

  TransferirExcel1;
end;

procedure TfrmGenera607.TransferirExcel1;
var
  WorkBook : _Workbook;
	WorkSheet : _Worksheet;
	i : integer;
  ciclo:String;
begin
  if OpenDialog1.Execute then
  begin

    ciclo := cbano.Text;

     if cbmes.Text <> 'Todos' then
       ciclo := ciclo +  Copy('0000',1,(2 - Length(IntToStr(cbmes.ItemIndex+1))))+IntToStr(cbmes.ItemIndex+1);



    //Bring up excel
    ExcelApplication1.Visible[0] := true;

    ExcelApplication1.Workbooks.Open(OpenDialog1.FileName, EmptyParam, False,
         EmptyParam,EmptyParam,EmptyParam,False,EmptyParam,EmptyParam,EmptyParam,
         EmptyParam,EmptyParam,EmptyParam,0);

         { ExcelApplication1.Workbooks.Open(OpenDialog1.FileName, False, False,
         EmptyParam,'',False,False,EmptyParam,EmptyParam,EmptyParam,
         EmptyParam,false,false,EmptyParam,false,0);}
    //ExcelApplication1.Workbooks.Add(xlWBatWorksheet, 0);
    WorkBook  := ExcelApplication1.Workbooks.Item[1];
    WorkSheet := Workbook.Worksheets.Get_Item(1) as _Worksheet;
    WorkSheet.Cells.Item[4,3] := dm.QEmpresasEMP_RNC.Value;
    WorkSheet.Cells.Item[5,3] := ciclo;
    WorkSheet.Cells.Item[6,3] := cantidad;
 //   WorkSheet.Cells.Item[7,3] := total;

    // Now transfer the listbox contents to the spreadsheet
    {for i := 0 to 100 do
      WorkSheet.Cells.Item[i + 1,1] := 'A'+inttostr(i);}

    //ExcelApplication1.Save('C:\file.xls');
    //ExcelApplication1.Disconnect;
    //ExcelApplication1.Quit;

    {procedure Tfresumen.Btn_pasar_a_excelClick(Sender: TObject);
var
  aLCID,x,y : Integer;
  sValue:String;
begin
      // Abrir plantilla de excel
      aLCID := GetUserDefaultLCID;
      ArchivoXL := ExtractFilePath(ParamStr(0))+'resumen.xls'; //Plantilla EXCEL
      ExcelApplication1.Connect;
      ExcelApplication1.Visible[aLCID] := True;
      ExcelApplication1.UserControl := True;
      ExcelApplication1.Workbooks.Open(archivoXL, False, False,
         EmptyParam,'',False,False,EmptyParam,
         EmptyParam,false,false,EmptyParam,false,0);
     ExcelWorkbook1.ConnectTo(ExcelApplication1.ActiveWorkBook);
     ExcelWorksheet1.ConnectTo(ExcelWorkbook1.Sheets.Item[1] as _Worksheet);
      ExcelWorksheet1.PageSetup.LeftHeader := 'resumen';
end;

procedure Tfresumen.Btn_Cerrar_ExcelClick(Sender: TObject);
begin
   ExcelWorksheet1.Disconnect;
   ExcelWorkbook1.Disconnect;
   ExcelApplication1.Disconnect;
   ExcelApplication1.Quit;}
  end;
end;

procedure TfrmGenera607.TransferirExcel2;
var
  WorkBook  : _Workbook;
	WorkSheet : _Worksheet;
	i, ln : integer;
begin
  WorkBook  := ExcelApplication1.Workbooks.Item[1];
  WorkSheet := Workbook.Worksheets.Get_Item(1) as _Worksheet;
  ln := 12;
  while not Query1.Eof do
  begin
    Application.ProcessMessages;
    ProgressBar1.Position := ProgressBar1.Position + 1;

    WorkSheet.Cells.Item[ln,02] := Null;
    if ((Trim(Query1.FieldByName('rnc').AsString) <> '') and
        (Trim(Query1.FieldByName('rnc').AsString) <> '0') )then
    WorkSheet.Cells.Item[ln,02] := Trim(Query1.FieldByName('rnc').AsString);
    WorkSheet.Cells.Item[ln,03] := Trim(Query1.FieldByName('tipoid').AsString);
    WorkSheet.Cells.Item[ln,04] := Query1.FieldByName('ncf').AsString;
    WorkSheet.Cells.Item[ln,05] := Query1.FieldByName('ncfmodifica').AsString;
    WorkSheet.Cells.Item[ln,06] := Query1.FieldByName('tipoing').AsString;
    WorkSheet.Cells.Item[ln,07] := Query1.FieldByName('ano').AsString+formatfloat('00',Query1.FieldByName('mes').asfloat)+
                                   formatfloat('00',Query1.FieldByName('dia').asfloat);
    //WorkSheet.Cells.Item[ln,08] := Query1.FieldByName('fecharet').AsString;

    WorkSheet.Cells.Item[ln,09] := FloatToStr(Query1.FieldByName('total').AsFloat - Query1.FieldByName('itbis').AsFloat);
    WorkSheet.Cells.Item[ln,10] := FloatToStr(Query1.FieldByName('itbis').AsFloat);
    WorkSheet.Cells.Item[ln,11] := FloatToStr(Query1.FieldByName('itbisretterc').AsFloat);
    //WorkSheet.Cells.Item[ln,12] := FloatToStr(Query1.FieldByName('itbispercibido').AsFloat);
    //WorkSheet.Cells.Item[ln,13] := FloatToStr(Query1.FieldByName('retrentaterc').AsFloat);
    //WorkSheet.Cells.Item[ln,14] := FloatToStr(Query1.FieldByName('isrpercibido').AsFloat);
    WorkSheet.Cells.Item[ln,15] := FloatToStr(Query1.FieldByName('impselconsumo').AsFloat);
    WorkSheet.Cells.Item[ln,16] := FloatToStr(Query1.FieldByName('otrosimptasas').AsFloat);
    WorkSheet.Cells.Item[ln,17] := FloatToStr(Query1.FieldByName('propinalegal').AsFloat);
    WorkSheet.Cells.Item[ln,18] := FloatToStr(Query1.FieldByName('efectivo').AsFloat);
    WorkSheet.Cells.Item[ln,19] := FloatToStr(Query1.FieldByName('cheqtransfdep').AsFloat);
    WorkSheet.Cells.Item[ln,20] := FloatToStr(Query1.FieldByName('tarjetadebcred').AsFloat);
    WorkSheet.Cells.Item[ln,21] := FloatToStr(Query1.FieldByName('ventacredito').AsFloat);
    WorkSheet.Cells.Item[ln,22] := FloatToStr(Query1.FieldByName('bonoscertif').AsFloat);
    WorkSheet.Cells.Item[ln,23] := FloatToStr(Query1.FieldByName('permuta').AsFloat);
    WorkSheet.Cells.Item[ln,24] := FloatToStr(Query1.FieldByName('otrasformpag').AsFloat);
    Query1.Next;
    inc(ln);
  end;
  //ExcelApplication1.Disconnect;
  showmessage('Proceso terminado, favor verificar la Hoja de Excel');
end;

procedure TfrmGenera607.BitBtn2Click(Sender: TObject);
begin
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select rnc, tipoid, ncf, ncfmodifica, tipoing, fecha, fecharet, '+
                 'total, itbis, itbisretterc, itbispercibido, retrentaterc, isrpercibido, '+
                 'impselconsumo, otrosimptasas, propinalegal, efectivo, cheqtransfdep, '+
                 'tarjetadebcred, ventacredito, bonoscertif, permuta, otrasformpag,'+
                 'year(fecha) as ano, month(fecha) as mes, day(fecha) as dia');
  Query1.SQL.Add('from pr_genera_607 (:emp, :ano, :mes, :esfecha, :fec1, :fec2)');

  case rgOrden.ItemIndex of
   0: Query1.SQL.Add('order by substring(ncf,1,11), cast(substring(ncf,12,8) as int)');
   1: Query1.SQL.Add('order by rnc');
   2: Query1.SQL.Add('order by 4,5,6');
  end;

  Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
  if cbmes.Text <> 'Todos' then
    Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1
  else
    Query1.Parameters.ParamByName('mes').Value := 0;

  if CheckBox1.Checked then
    Query1.Parameters.ParamByName('esfecha').Value := 'S'
  else
    Query1.Parameters.ParamByName('esfecha').Value := 'N';

  Query1.Parameters.ParamByName('fec1').DataType := ftDate;
  Query1.Parameters.ParamByName('fec2').DataType := ftDate;
  Query1.Parameters.ParamByName('fec1').Value    := fecha1.Date;
  Query1.Parameters.ParamByName('fec2').Value    := fecha2.Date;
  Query1.Open;
  ProgressBar1.Max := Query1.RecordCount;
  ProgressBar1.Position := 0;

  TransferirExcel2;
end;

procedure TfrmGenera607.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGenera607.BitBtn3Click(Sender: TObject);
var
  arch : textfile;
  s, s1 : array [0..20] of char;
  tipo : string;
begin
  if SaveDialog1.Execute then
  begin
    assignfile(arch, SaveDialog1.FileName);
    rewrite(arch);

    //Creando cabecera
    Query1.close;
    Query1.SQL.clear;
    Query1.SQL.Add('select count(*) as cant, sum(isnull(total,0)-isnull(itbis,0)) as total from');
    Query1.SQL.Add('pr_genera_607 (:emp, :ano, :mes, :esfecha, :fec1, :fec2)');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
    if cbmes.Text <> 'Todos' then
      Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1
    else
      Query1.Parameters.ParamByName('mes').Value := 0;

    Query1.Parameters.ParamByName('fec1').DataType := ftDate;
    Query1.Parameters.ParamByName('fec2').DataType := ftDate;
    Query1.Parameters.ParamByName('fec1').Value    := fecha1.Date;
    Query1.Parameters.ParamByName('fec2').Value    := fecha2.Date;
    if CheckBox1.Checked then
      Query1.Parameters.ParamByName('esfecha').Value := 'S'
    else
      Query1.Parameters.ParamByName('esfecha').Value := 'N';

    Query1.Open;

    cantidad := Query1.FieldbyName('cant').AsString;
    total    := Query1.FieldbyName('total').AsString;

    s := '';
    fillchar(s, 11-length(trim(dm.QEmpresasEMP_RNC.AsString)),' ');
    writeln(arch, '607'+s+trim(dm.QEmpresasEMP_RNC.AsString)+cbano.Text+formatfloat('000000000000',strtofloat(cantidad))+
            formatfloat('0000000000000.00',strtofloat(total)));

    //Creando detalle
    Query1.close;
    Query1.SQL.clear;
    Query1.SQL.Add('select rnc, ncf, ncfmodifica, year(fecha) as ano, month(fecha) as mes, day(fecha) as dia,');
    Query1.SQL.Add('itbis, total');
    Query1.SQL.Add('from pr_genera_607 (:emp, :ano, :mes, :esfecha, :fec1, :fec2)');
    Query1.SQL.Add('order by substring(ncf,1,11), cast(substring(ncf,12,8) as int)');
    Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    Query1.Parameters.ParamByName('ano').Value := StrToInt(cbano.Text);
    if cbmes.Text <> 'Todos' then
      Query1.Parameters.ParamByName('mes').Value := cbmes.ItemIndex+1
    else
      Query1.Parameters.ParamByName('mes').Value := 0;

    Query1.Parameters.ParamByName('fec1').DataType := ftDate;
    Query1.Parameters.ParamByName('fec2').DataType := ftDate;
    Query1.Parameters.ParamByName('fec1').Value    := fecha1.Date;
    Query1.Parameters.ParamByName('fec2').Value    := fecha2.Date;
    if CheckBox1.Checked then
      Query1.Parameters.ParamByName('esfecha').Value := 'S'
    else
      Query1.Parameters.ParamByName('esfecha').Value := 'N';
    Query1.Open;
    ProgressBar1.Max := Query1.RecordCount;
    ProgressBar1.Position := 0;
    while not Query1.Eof do
    begin
      Application.ProcessMessages;
      ProgressBar1.Position := ProgressBar1.Position + 1;

      s := '';
      fillchar(s,11-length(trim(Query1.FieldByName('rnc').AsString)),' ');

      s1 := '';
      fillchar(s1,19-length(trim(Query1.FieldByName('ncfmodifica').AsString)),' ');

      if length(trim(Query1.FieldByName('rnc').AsString)) = 11 then
        tipo := '2'
      else if length(trim(Query1.FieldByName('rnc').AsString)) = 9 then
        tipo := '1'
      else
        tipo := '3';

      writeln(arch, s+trim(Query1.FieldByName('rnc').AsString)+tipo+Query1.FieldByName('ncf').AsString+
              s1+trim(Query1.FieldByName('ncfmodifica').AsString)+cbano.text+formatfloat('00',Query1.FieldByName('mes').AsFloat)+
              formatfloat('00',Query1.FieldByName('dia').AsFloat)+formatfloat('000000000.00',Query1.FieldByName('itbis').AsFloat)+
              formatfloat('000000000.00',Query1.FieldByName('total').AsFloat));

      Query1.Next;
    end;

    closefile(arch);
    showmessage('Proceso terminado, favor verificar el archivo');

  end;

end;

procedure TfrmGenera607.CheckBox1Click(Sender: TObject);
begin
  fecha1.visible := CheckBox1.Checked;
  fecha2.visible := CheckBox1.Checked;
end;

end.
