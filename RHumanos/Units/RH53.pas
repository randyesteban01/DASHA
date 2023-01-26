unit RH53;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TfrmSemanasSS = class(TForm)
    btClose: TBitBtn;
    DBGrid1: TDBGrid;
    QSemanas: TADOQuery;
    QSemanasemp_codigo: TIntegerField;
    QSemanasss_mes: TIntegerField;
    QSemanasss_semanas: TIntegerField;
    dsSemanas: TDataSource;
    QSemanasMes: TStringField;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QSemanasCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure QSemanasAfterPost(DataSet: TDataSet);
    procedure QSemanasBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  DMes : array[1..12] of string =('Enero','Febrero','Marzo','Abril',
                                  'Mayo','Junio','Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');

var
  frmSemanasSS: TfrmSemanasSS;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmSemanasSS.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSemanasSS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmSemanasSS.QSemanasCalcFields(DataSet: TDataSet);
begin
  QSemanasMes.Value := DMes[QSemanasss_mes.Value];
end;

procedure TfrmSemanasSS.FormActivate(Sender: TObject);
var
  a : integer;
begin
  if not QSemanas.Active then
  begin
    QSemanas.Open;
    if QSemanas.RecordCount = 0 then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('insert into ss_semanas (emp_codigo, ss_mes)');
      dm.Query1.SQL.Add('values (:emp, :mes)');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      for a := 1 to 12 do
      begin
        dm.Query1.Parameters.ParamByName('mes').Value := a;
        dm.Query1.ExecSQL;
      end;
      QSemanas.Close;
      QSemanas.Open;
    end;
  end;
end;

procedure TfrmSemanasSS.DBGrid1ColEnter(Sender: TObject);
begin
  if DBGrid1.SelectedIndex <> 2 then DBGrid1.SelectedIndex := 2;
end;

procedure TfrmSemanasSS.DBGrid1Enter(Sender: TObject);
begin
  DBGrid1.SelectedIndex := 2;
end;

procedure TfrmSemanasSS.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if QSemanasss_mes.Value <> 12 then
    begin
      QSemanas.Edit;
      QSemanas.Post;
      QSemanas.Next;
    end;
  end;
end;

procedure TfrmSemanasSS.QSemanasAfterPost(DataSet: TDataSet);
begin
  QSemanas.UpdateBatch;
end;

procedure TfrmSemanasSS.QSemanasBeforeDelete(DataSet: TDataSet);
begin
  abort;
end;

end.
