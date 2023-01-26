unit CONT81;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, OleServer, ExcelXP, DB, ADODB, ComCtrls, Spin;

type
  TfrmGenera608 = class(TForm)
    Query1: TADOQuery;
    ExcelApplication1: TExcelApplication;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    cbmes: TComboBox;
    BitBtn2: TBitBtn;
    btClose: TBitBtn;
    OpenDialog1: TOpenDialog;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    CheckBox1: TCheckBox;
    fecha1: TDateTimePicker;
    fecha2: TDateTimePicker;
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
  frmGenera608: TfrmGenera608;

implementation

uses SIGMA01, DateUtils;

{$R *.dfm}

procedure TfrmGenera608.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TfrmGenera608.FormCreate(Sender: TObject);
var
  ano, mes, dia : word;
begin
  decodedate(date, ano, mes, dia);
  cbano.Value := StrToInt(FormatDateTime('YYYY',Date));// cbano.Items.IndexOf(inttostr(ano));
  cbmes.ItemIndex := mes-1;
  fecha1.date := StartOfTheMonth(date);
  fecha2.Date := EndOfTheMonth(date);
end;

procedure TfrmGenera608.BitBtn1Click(Sender: TObject);
begin
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select count(*) as cant, sum(isnull(total,0)-isnull(itbis,0)) as total');
  Query1.SQL.Add('from pr_genera_608 (:emp, :ano, :mes, :esfecha, :fec1, :fec2)');
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

  TransferirExcel1;
end;

procedure TfrmGenera608.TransferirExcel1;
var
  WorkBook : _Workbook;
	WorkSheet : _Worksheet;
	i : integer;
  mes:String;
begin
  if OpenDialog1.Execute then
  begin
case cbmes.ItemIndex of
0:mes  := '01';
1:mes  := '02';
2:mes  := '03';
3:mes  := '04';
4:mes  := '05';
5:mes  := '06';
6:mes  := '07';
7:mes  := '08';
8:mes  := '09';
9:mes  := '10';
10:mes := '11';
11:mes := '12';
end;

    //Bring up excel
    ExcelApplication1.Visible[0] := true;
    ExcelApplication1.Workbooks.Open(OpenDialog1.FileName, False, False,
         EmptyParam,'',False,False,EmptyParam,EmptyParam,EmptyParam,
         EmptyParam,false,false,EmptyParam,false,0);
    //ExcelApplication1.Workbooks.Add(xlWBatWorksheet, 0);
    WorkBook  := ExcelApplication1.Workbooks.Item[1];
    WorkSheet := Workbook.Worksheets.Get_Item(1) as _Worksheet;
    WorkSheet.Cells.Item[5,3] := dm.QEmpresasEMP_RNC.Value;
    WorkSheet.Cells.Item[6,3] := cbano.Text+mes;
    WorkSheet.Cells.Item[7,3] := cantidad;


  end;
end;

procedure TfrmGenera608.TransferirExcel2;
var
  WorkBook  : _Workbook;
	WorkSheet : _Worksheet;
	i, ln : integer;
begin
  //Bring up excel
  //ExcelApplication1.Visible[0] := true;
  {ExcelApplication1.Workbooks.Open(OpenDialog1.FileName, False, False,
       EmptyParam,'',False,False,EmptyParam,EmptyParam,EmptyParam,
       EmptyParam,false,false,EmptyParam,false,0);}
  //ExcelApplication1.Workbooks.Add(xlWBatWorksheet, 0);
  WorkBook  := ExcelApplication1.Workbooks.Item[1];
  WorkSheet := Workbook.Worksheets.Get_Item(1) as _Worksheet;
  ln := 12;
  while not Query1.Eof do
  begin
    Application.ProcessMessages;
    ProgressBar1.Position := ProgressBar1.Position + 1;

    WorkSheet.Cells.Item[ln,02] := Query1.FieldByName('ncf').AsString;
    WorkSheet.Cells.Item[ln,04] := Query1.FieldByName('ano').AsString+formatfloat('00',Query1.FieldByName('mes').asfloat)+
                                   formatfloat('00',Query1.FieldByName('dia').asfloat);
    WorkSheet.Cells.Item[ln,05] := Query1.FieldByName('motivo').AsString;
    Query1.Next;
    inc(ln);
  end;
  //ExcelApplication1.Disconnect;
  showmessage('Proceso terminado, favor verificar la Hoja de Excel');
end;

procedure TfrmGenera608.BitBtn2Click(Sender: TObject);
begin
  Query1.close;
  Query1.SQL.clear;
  Query1.SQL.Add('select ncf, ncfmodifica, year(fecha) as ano, month(fecha) as mes, day(fecha) as dia, motivo');
  Query1.SQL.Add('from pr_genera_608 (:emp, :ano, :mes, :esfecha, :fec1, :fec2)');
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

  TransferirExcel2;
end;

procedure TfrmGenera608.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGenera608.BitBtn3Click(Sender: TObject);
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
    Query1.SQL.Add('select count(*) as cant, 0 as total from');
    Query1.SQL.Add('pr_genera_608 (:emp, :ano, :mes, :esfecha, :fec1, :fec2)');
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
    writeln(arch, '608'+s+trim(dm.QEmpresasEMP_RNC.AsString)+cbano.Text+formatfloat('000000000000',strtofloat(cantidad))+
            formatfloat('0000000000000.00',strtofloat(total)));

    //Creando detalle
    Query1.close;
    Query1.SQL.clear;
    Query1.SQL.Add('select rnc, ncf, ncfmodifica, year(fecha) as ano, month(fecha) as mes, day(fecha) as dia,');
    Query1.SQL.Add('itbis, total');
    Query1.SQL.Add('from pr_genera_608 (:emp, :ano, :mes, :esfecha, :fec1, :fec2)');
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

procedure TfrmGenera608.CheckBox1Click(Sender: TObject);
begin
  fecha1.visible := CheckBox1.Checked;
  fecha2.visible := CheckBox1.Checked;
end;

end.
