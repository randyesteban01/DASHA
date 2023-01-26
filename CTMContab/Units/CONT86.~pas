unit CONT86;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Spin, DateUtils, Grids, DBGrids,
  DB, ADODB, DBCtrls, ComCtrls, Menus, QuerySearchDlgADO;

type
  TfrmCashflow = class(TForm)
    Panel2: TPanel;
    btprocesar: TBitBtn;
    btClose: TBitBtn;
    Label3: TLabel;
    spAno: TSpinEdit;
    QCashflow: TADOStoredProc;
    QCashflowSec: TAutoIncField;
    QCashflowNegrita: TStringField;
    QCashflowConcepto: TStringField;
    QCashflowEne: TBCDField;
    QCashflowFeb: TBCDField;
    QCashflowMar: TBCDField;
    QCashflowAbr: TBCDField;
    QCashflowMay: TBCDField;
    QCashflowJun: TBCDField;
    QCashflowJul: TBCDField;
    QCashflowAgo: TBCDField;
    QCashflowSep: TBCDField;
    QCashflowOct: TBCDField;
    QCashflowNov: TBCDField;
    QCashflowDic: TBCDField;
    QCashflowTotal: TBCDField;
    QCashflowPorciento: TBCDField;
    dsCashflow: TDataSource;
    PopupMenu1: TPopupMenu;
    Actualizartransaccin1: TMenuItem;
    QCashflowGru: TIntegerField;
    QCashflowSub: TIntegerField;
    QCashflowCon: TIntegerField;
    QCashflowOperacion: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QCashflowSemanal: TADOStoredProc;
    dsCashflowSemana: TDataSource;
    Panel1: TPanel;
    fecha: TDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Search: TQrySearchDlgADO;
    Label2: TLabel;
    edcentro: TEdit;
    Label4: TLabel;
    edmap: TEdit;
    procedure FormPaint(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btprocesarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Actualizartransaccin1Click(Sender: TObject);
    procedure dsCashflowDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');

var
  frmCashflow: TfrmCashflow;

implementation

uses SIGMA00, SIGMA01, CONT87, CONT89;

{$R *.dfm}

procedure TfrmCashflow.FormPaint(Sender: TObject);
begin
  with frmCashflow do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmCashflow.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCashflow.FormCreate(Sender: TObject);
begin
  spAno.Value  := YearOf(Date);
  fecha.Date   := date;
end;

procedure TfrmCashflow.btprocesarClick(Sender: TObject);
var
  t : tbookmark;
  a : integer;
begin
  Screen.Cursor := crHourGlass;

  if PageControl1.ActivePageIndex = 0 then
  begin
    QCashflow.DisableControls;
    t := QCashflow.GetBookmark;
    QCashflow.Close;
    QCashflow.Parameters.ParamByName('@emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    QCashflow.Parameters.ParamByName('@ano').Value := spAno.Value;
    if trim(edcentro.Text) = '' then
      QCashflow.Parameters.ParamByName('@cen').Value := 0
    else
      QCashflow.Parameters.ParamByName('@cen').Value := StrToInt(trim(edcentro.Text));

    if trim(edmap.Text) = '' then
      QCashflow.Parameters.ParamByName('@map').Value := 0
    else
      QCashflow.Parameters.ParamByName('@map').Value := StrToInt(trim(edmap.Text));

    QCashflow.Open;
    QCashflow.GotoBookmark(t);
    QCashflow.EnableControls;
  end
  else
  begin
    QCashflowSemanal.DisableControls;
    t := QCashflowSemanal.GetBookmark;
    QCashflowSemanal.Close;
    QCashflowSemanal.Parameters.ParamByName('@emp').Value   := dm.QEmpresasEMP_CODIGO.Value;
    QCashflowSemanal.Parameters.ParamByName('@fecha').Value := fecha.Date;;
    if trim(edcentro.Text) = '' then
      QCashflowSemanal.Parameters.ParamByName('@cen').Value := 0
    else
      QCashflowSemanal.Parameters.ParamByName('@cen').Value := StrToInt(trim(edcentro.Text));

    if trim(edmap.Text) = '' then
      QCashflowSemanal.Parameters.ParamByName('@map').Value := 0
    else
      QCashflowSemanal.Parameters.ParamByName('@map').Value := StrToInt(trim(edmap.Text));

    QCashflowSemanal.Open;

    QCashflowSemanal.FieldByName('sec').Visible := False;
    QCashflowSemanal.FieldByName('Negrita').Visible := False;
    QCashflowSemanal.FieldByName('Gru').Visible := False;
    QCashflowSemanal.FieldByName('Sub').Visible := False;
    QCashflowSemanal.FieldByName('Con').Visible := False;
    QCashflowSemanal.FieldByName('Operacion').Visible := False;
    QCashflowSemanal.FieldByName('Total').Index := QCashflowSemanal.FieldCount;

    for a := 1 to QCashflowSemanal.FieldCount-1 do
      if (QCashflowSemanal.Fields[a].DataType = ftBCD) or (QCashflowSemanal.Fields[a].DataType = ftFloat) then
        (QCashflowSemanal.Fields[a] as TBCDField).currency := true;

    for a := 1 to DBGrid2.Columns.Count -1 do
      DBGrid2.Columns[a].Title.Alignment := taCenter;

    QCashflowSemanal.GotoBookmark(t);
    QCashflowSemanal.EnableControls;

    DBGrid2.Columns[0].Width := 273;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmCashflow.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (QCashflowNegrita.Value = 'S') or (QCashflowNegrita.Value = 'T') then
  begin
     DBGrid1.canvas.font.Style := [fsBold];
     DBGrid1.Canvas.Brush.Color := $00DFFFDF;
     if QCashflow.FieldByName(Column.FieldName).DataType <> ftString then
       if QCashflow.FieldByName(Column.FieldName).Value < 0 then
          DBGrid1.canvas.font.Color := clRed;
     DBGrid1.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmCashflow.Actualizartransaccin1Click(Sender: TObject);
var
  monto, mes, campo : string;
  a : integer;
  nummes, ano, dia : word;
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    if UpperCase(QCashflow.FieldByName(DBGrid1.Columns[0].FieldName).AsString) = 'SALDO INICIAL' then
    begin
      monto := QCashflow.FieldByName(DBGrid1.Columns[1].FieldName).AsString;
      monto := InputBox('Saldo Inicial', 'Saldo', monto);
      if monto <> '' then
      begin
        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('delete from Cashflow_Saldo where emp_codigo = :emp and ano = :ano');
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('ano').Value := spAno.Value;
        dm.Query1.ExecSQL;

        dm.Query1.Close;
        dm.Query1.SQL.Clear;
        dm.Query1.SQL.Add('insert into Cashflow_Saldo (emp_codigo, ano, saldo) values (:emp, :ano, :mto)');
        dm.Query1.Parameters.ParamByName('mto').Value := StrToFloat(monto);
        dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
        dm.Query1.Parameters.ParamByName('ano').Value := spAno.Value;
        dm.Query1.ExecSQL;

        btprocesarClick(Self);
      end;
    end
    else
    begin
      Application.CreateForm(tfrmCashflowTransaccion, frmCashflowTransaccion);

      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select Operacion from Cashflow_Grupo where emp_codigo = :emp');
      dm.Query1.SQL.Add('and GrupoID = :gru');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('gru').Value := QCashflowGru.Value;
      dm.Query1.Open;
      frmCashflowTransaccion.operacion := dm.Query1.FieldByName('Operacion').AsString;

      frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('con').Value := QCashflowCon.Value;

      if trim(edcentro.text) = '' then
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen1').Value := 0;
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen2').Value := 99999;
      end
      else
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen1').Value := strtoint(trim(edcentro.text));
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen2').Value := strtoint(trim(edcentro.text));
      end;

      if trim(edmap.text) = '' then
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map1').Value := 0;
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map2').Value := 99999;
      end
      else
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map1').Value := strtoint(trim(edmap.text));
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map2').Value := strtoint(trim(edmap.text));
      end;

      ano := spAno.Value;
      nummes := DBGrid1.SelectedIndex;
      dia := 1;

      frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('fec1').Value := EncodeDate(ano, nummes, dia);
      frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('fec2').Value := EncodeDate(ano, nummes, DaysInAMonth(ano, nummes));
      frmCashflowTransaccion.QTransacciones.Open;

      frmCashflowTransaccion.gru := QCashflowGru.Value;
      frmCashflowTransaccion.sub := QCashflowSub.Value;
      frmCashflowTransaccion.con := QCashflowCon.Value;
      frmCashflowTransaccion.ShowModal;
      frmCashflowTransaccion.Release;

      btprocesarClick(Self);
    end;
  end
  else
  begin
    if UpperCase(QCashflowSemanal.FieldByName(DBGrid2.Columns[0].FieldName).AsString) <> 'SALDO INICIAL' then
    begin
      Application.CreateForm(tfrmCashflowTransaccion, frmCashflowTransaccion);
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select Operacion from Cashflow_Grupo where emp_codigo = :emp');
      dm.Query1.SQL.Add('and GrupoID = :gru');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('gru').Value := QCashflowSemanal.FieldByName('Gru').Value;
      dm.Query1.Open;
      frmCashflowTransaccion.operacion := dm.Query1.FieldByName('Operacion').AsString;

      frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
      frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('con').Value  := QCashflowSemanal.FieldByName('con').Value;

      if trim(edcentro.text) = '' then
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen1').Value := 0;
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen2').Value := 99999;
      end
      else
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen1').Value := strtoint(trim(edcentro.text));
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen2').Value := strtoint(trim(edcentro.text));
      end;

      if trim(edmap.text) = '' then
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map1').Value := 0;
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map2').Value := 99999;
      end
      else
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map1').Value := strtoint(trim(edmap.text));
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map2').Value := strtoint(trim(edmap.text));
      end;

      campo := DBGrid2.Columns[DBGrid2.Selectedindex].FieldName;

      campo := trim(copy(campo, pos('_',campo)+1, length(campo)));
      dia := strtoint(copy(campo,1,pos('_',campo)-1));

      campo := trim(copy(campo, pos('_',campo)+1, length(campo)));
      mes   := copy(campo,1,pos('_',campo)-1);

      campo := trim(copy(campo, pos('_',campo)+1, length(campo)));
      ano := strtoint(campo);

      for a := 1 to 12 do
        if copy(DMes[a],1,3) = mes then
        begin
          nummes := a;
          break;
        end;

      frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('fec1').Value := EncodeDate(ano, nummes, dia);
      frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('fec2').Value := EncodeDate(ano, nummes, dia);
      frmCashflowTransaccion.QTransacciones.Open;

      frmCashflowTransaccion.gru := QCashflowGru.Value;
      frmCashflowTransaccion.sub := QCashflowSub.Value;
      frmCashflowTransaccion.con := QCashflowCon.Value;
      frmCashflowTransaccion.ShowModal;
      frmCashflowTransaccion.Release;

      btprocesarClick(Self);
    end;
  end;
end;

procedure TfrmCashflow.dsCashflowDataChange(Sender: TObject;
  Field: TField);
begin
  Actualizartransaccin1.Enabled := ((QCashflowNegrita.Value <> 'S') and (QCashflowConcepto.Value <> ''))
      or (UpperCase(QCashflowConcepto.Value) = 'SALDO INICIAL');
end;

procedure TfrmCashflow.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCashflow.DBGrid2DblClick(Sender: TObject);
var
  monto, mes, campo : string;
  a : integer;
  nummes, ano, dia : word;
begin
  if UpperCase(QCashflowSemanal.FieldByName(DBGrid2.Columns[0].FieldName).AsString) <> 'SALDO INICIAL' then
  begin
    Application.CreateForm(tfrmCashflowTransaccion, frmCashflowTransaccion);
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select Operacion from Cashflow_Grupo where emp_codigo = :emp');
    dm.Query1.SQL.Add('and GrupoID = :gru');
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('gru').Value := QCashflowSemanal.FieldByName('Gru').Value;
    dm.Query1.Open;
    frmCashflowTransaccion.operacion := dm.Query1.FieldByName('Operacion').AsString;

    frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('emp').Value  := dm.QEmpresasEMP_CODIGO.Value;
    frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('con').Value  := QCashflowSemanal.FieldByName('con').Value;
    campo := DBGrid2.Columns[DBGrid2.Selectedindex].FieldName;

    campo := trim(copy(campo, pos('_',campo)+1, length(campo)));
    dia := strtoint(copy(campo,1,pos('_',campo)-1));

    campo := trim(copy(campo, pos('_',campo)+1, length(campo)));
    mes   := copy(campo,1,pos('_',campo)-1);

    campo := trim(copy(campo, pos('_',campo)+1, length(campo)));
    ano := strtoint(campo);

    for a := 1 to 12 do
      if copy(DMes[a],1,3) = mes then
      begin
        nummes := a;
        break;
      end;

    frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('fec1').Value := EncodeDate(ano, nummes, dia);
    frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('fec2').Value := EncodeDate(ano, nummes, dia);

      if trim(edcentro.text) = '' then
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen1').Value := 0;
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen2').Value := 99999;
      end
      else
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen1').Value := strtoint(trim(edcentro.text));
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('cen2').Value := strtoint(trim(edcentro.text));
      end;

      if trim(edmap.text) = '' then
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map1').Value := 0;
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map2').Value := 99999;
      end
      else
      begin
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map1').Value := strtoint(trim(edmap.text));
        frmCashflowTransaccion.QTransacciones.Parameters.ParamByName('map2').Value := strtoint(trim(edmap.text));
      end;

    frmCashflowTransaccion.QTransacciones.Open;

    frmCashflowTransaccion.gru := QCashflowGru.Value;
    frmCashflowTransaccion.sub := QCashflowSub.Value;
    frmCashflowTransaccion.con := QCashflowCon.Value;
    frmCashflowTransaccion.ShowModal;
    frmCashflowTransaccion.Release;

    btprocesarClick(Self);
  end;
end;

procedure TfrmCashflow.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (QCashflowSemanal.FieldByName('Negrita').Value = 'S') or (QCashflowSemanal.FieldByName('Negrita').Value = 'T') then
  begin
     DBGrid2.canvas.font.Style := [fsBold];
     DBGrid2.Canvas.Brush.Color := $00DFFFDF;
     if QCashflowSemanal.FieldByName(Column.FieldName).DataType <> ftString then
       if QCashflowSemanal.FieldByName(Column.FieldName).Value < 0 then
          DBGrid2.canvas.font.Color := clRed;
     DBGrid2.DefaultDrawcolumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfrmCashflow.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(tfrmCashFlow_ImprimeMes, frmCashFlow_ImprimeMes);
  if (DBGrid1.SelectedIndex > 0) and (DBGrid1.SelectedIndex < 13) then
     frmCashFlow_ImprimeMes.cbMes.ItemIndex := DBGrid1.SelectedIndex -1;
  frmCashFlow_ImprimeMes.ano := spAno.Value;
  frmCashFlow_ImprimeMes.opcion := 'm';   
  frmCashFlow_ImprimeMes.ShowModal;
  frmCashFlow_ImprimeMes.Release;   
end;

procedure TfrmCashflow.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tfrmCashFlow_ImprimeMes, frmCashFlow_ImprimeMes);

  if (DBGrid2.SelectedIndex > 0) and (DBGrid2.SelectedIndex < (DBGrid2.Columns.Count-2)) then
     frmCashFlow_ImprimeMes.cbMes.ItemIndex := DBGrid2.SelectedIndex -1;

  frmCashFlow_ImprimeMes.ano := spAno.Value;
  frmCashFlow_ImprimeMes.opcion := 's';
  frmCashFlow_ImprimeMes.cbMes.Visible := false;
  frmCashFlow_ImprimeMes.Label1.Visible := false;
  frmCashFlow_ImprimeMes.campo1 := DBGrid2.Columns[1].FieldName;
  frmCashFlow_ImprimeMes.campo2 := DBGrid2.Columns[(DBGrid2.Columns.Count-2)].FieldName;
  frmCashFlow_ImprimeMes.ShowModal;
  frmCashFlow_ImprimeMes.Release;
end;

procedure TfrmCashflow.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
end;

procedure TfrmCashflow.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
  begin
    frmMain.ExportXLS.Sheets[0].DBGrid   := DBGrid1;
    frmMain.ExportXLS.Sheets[1].Exported := False;
    frmMain.ExportXLS.Sheets[2].Exported := False;
    frmMain.ExportXLS.Sheets[0].Exported := True;
  end
  else
  begin
    frmMain.ExportXLS.Sheets[0].DBGrid   := DBGrid2;
    frmMain.ExportXLS.Sheets[1].Exported := False;
    frmMain.ExportXLS.Sheets[2].Exported := False;
    frmMain.ExportXLS.Sheets[0].Exported := True;
  end;
end;

end.
