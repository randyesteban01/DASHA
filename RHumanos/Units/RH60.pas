unit RH60;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DB, ADODB, DBGrids, QuerySearchDlgADO,
  WordXP, OleServer;

type
  TfrmCartaCertificacionIngreso = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    QEmpleados: TADOQuery;
    QEmpleadosemp_nombre: TStringField;
    QEmpleadosemp_fecha_entrada: TDateTimeField;
    QEmpleadospos_nombre: TStringField;
    QEmpleadosemp_salario: TBCDField;
    dsEmpleados: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Search: TQrySearchDlgADO;
    QEmpleadosemp_numero: TIntegerField;
    QCarta: TADOQuery;
    QCartaCampo: TStringField;
    QCartaValor: TStringField;
    QCartaFormato: TStringField;
    QCartaValor_Fijo: TStringField;
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    OpenDialog1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btCloseClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure QCartaAfterOpen(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCartaCertificacionIngreso: TfrmCartaCertificacionIngreso;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmCartaCertificacionIngreso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCartaCertificacionIngreso.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if (ActiveControl.ClassType <> TDBGrid) and
    (ActiveControl.ClassType <> TStringGrid) then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmCartaCertificacionIngreso.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCartaCertificacionIngreso.FormPaint(Sender: TObject);
begin
  top := 5;
  Left := 0;
end;

procedure TfrmCartaCertificacionIngreso.BitBtn1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select');
  Search.Query.Add('emp_nombres, emp_apellido_paterno, emp_cedula, emp_numero');
  Search.Query.Add('from empleados');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if Search.execute then
    QEmpleados.Locate('emp_numero',Search.ValueField,[]);
end;

procedure TfrmCartaCertificacionIngreso.btPrintClick(Sender: TObject);
var
  FileName, texto1, texto2, index: OleVariant;
  a : integer;
begin
  if OpenDialog1.Execute then
  begin
    WordDocument1.Disconnect;
    WordApplication1.Disconnect;
    WordApplication1.Connect;
    WordApplication1.Visible := True;
    FileName := OpenDialog1.FileName;
    wordApplication1.Documents.Openold(FileName, EmptyParam, EmptyParam, EmptyParam,EmptyParam, EmptyParam, EmptyParam, EmptyParam,EmptyParam, EmptyParam);

    QCarta.First;
    while not QCarta.Eof do
    begin
      WordApplication1.Selection.SetRange(1,1);
      if copy(QCartaValor.Value,1,1) <> '_' then
      begin
        texto1 := QCartaCampo.Value;
        if QCartaFormato.Value = 'Date' then
          texto2 := FormatDateTime('dd/mm/yyyy',QEmpleados.FieldByName(QCartaValor.Value).AsDateTime)
        else if QCartaFormato.Value = '$' then
          texto2 := Format('%n',[QEmpleados.FieldByName(QCartaValor.Value).AsFloat])
        else
          texto2 := QEmpleados.FieldByName(QCartaValor.Value).Value;
      end
      else
      begin
        for a := 0 to StringGrid1.RowCount-1 do
        begin
          if StringGrid1.Cells[0,a] = QCartaValor.Value then
          begin
            texto1 := QCartaCampo.Value;
            texto2 := StringGrid1.Cells[1,a];
          end;
        end;
      end;
      WordApplication1.Selection.Find.Execute(texto1, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, texto2, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
      QCarta.Next;
    end;
    index := 1;
    WordDocument1.ConnectTo(WordApplication1.Documents.Item(index));
    WordApplication1.Selection.SetRange(1,1);

    {WordDocument1.ConnectTo(WordApplication1.Documents.Item(index));
    WordDocument1.PrintPreview;
    WordDocument1.Disconnect;
    WordApplication1.Disconnect;}
  end;
end;

procedure TfrmCartaCertificacionIngreso.QCartaAfterOpen(DataSet: TDataSet);
begin
  StringGrid1.RowCount := 1;
  QCarta.First;
  while not QCarta.Eof do
  begin
    if copy(QCartaValor.Value,1,1) = '_' then
    begin
      StringGrid1.Cells[0,StringGrid1.RowCount-1] := QCartaValor.Value;
      if QCartaFormato.Value <> 'Fijo' then
      begin
        if QCartaFormato.Value = 'Now' then
          StringGrid1.Cells[1,StringGrid1.RowCount-1] := FormatDateTime('dd "de" mmmmmmmmmm "del" yyyy',now);
      end
      else
      begin
        StringGrid1.Cells[1,StringGrid1.RowCount-1] := QCartaValor_Fijo.Value;
      end;
      StringGrid1.RowCount := StringGrid1.RowCount + 1;
    end;

    QCarta.Next;
  end;
  QCarta.First;
  StringGrid1.RowCount := StringGrid1.RowCount - 1;
end;

procedure TfrmCartaCertificacionIngreso.FormActivate(Sender: TObject);
begin
  if not QEmpleados.Active then
  begin
    QEmpleados.Open;
    QCarta.Open;
  end;
end;

end.
