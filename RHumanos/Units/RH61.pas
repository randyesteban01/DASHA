unit RH61;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, QuerySearchDlgADO, WordXP,
  OleServer, DBGrids, Grids;

type
  TfrmAutorizacionCredito = class(TForm)
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    btPrint: TBitBtn;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    DBGrid1: TDBGrid;
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    OpenDialog1: TOpenDialog;
    Search: TQrySearchDlgADO;
    dsEmpleados: TDataSource;
    QEmpleados: TADOQuery;
    QEmpleadosemp_nombre: TStringField;
    QEmpleadosemp_fecha_entrada: TDateTimeField;
    QEmpleadospos_nombre: TStringField;
    QEmpleadosemp_salario: TBCDField;
    QEmpleadosemp_numero: TIntegerField;
    QCarta: TADOQuery;
    QCartaCampo: TStringField;
    QCartaValor: TStringField;
    QCartaFormato: TStringField;
    QCartaValor_Fijo: TStringField;
    Label2: TLabel;
    QEmpleadosgru_nombre: TStringField;
    QEmpleadosemp_cedula: TStringField;
    QEmpleadosemp_telefono1: TStringField;
    QEmpleadosemp_direccion: TMemoField;
    QEmpleadosemp_edad: TIntegerField;
    QEmpleadosemp_sexo: TStringField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure QCartaAfterOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAutorizacionCredito: TfrmAutorizacionCredito;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmAutorizacionCredito.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAutorizacionCredito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmAutorizacionCredito.FormKeyPress(Sender: TObject;
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

procedure TfrmAutorizacionCredito.FormActivate(Sender: TObject);
begin
  if not QEmpleados.Active then
  begin
    QEmpleados.Open;
    QCarta.Open;
  end;
end;

procedure TfrmAutorizacionCredito.QCartaAfterOpen(DataSet: TDataSet);
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

procedure TfrmAutorizacionCredito.BitBtn1Click(Sender: TObject);
begin
  Search.Query.Clear;
  Search.Query.Add('select');
  Search.Query.Add('emp_nombres, emp_apellido_paterno, emp_cedula, emp_numero');
  Search.Query.Add('from empleados');
  Search.Query.Add('where emp_codigo = '+inttostr(dm.QEmpresasEMP_CODIGO.Value));
  if Search.execute then
    QEmpleados.Locate('emp_numero',Search.ValueField,[]);
end;

procedure TfrmAutorizacionCredito.btPrintClick(Sender: TObject);
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
        begin
          if not QEmpleados.FieldByName(QCartaValor.Value).IsNull then
            texto2 := QEmpleados.FieldByName(QCartaValor.Value).Value
          else
            texto2 := '';
        end;
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

procedure TfrmAutorizacionCredito.FormPaint(Sender: TObject);
begin
  top := 5;
  Left := 0;
end;

end.
