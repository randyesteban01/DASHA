unit CONT89;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB, Buttons, Dateutils;

type
  TfrmCashFlow_ImprimeMes = class(TForm)
    Label1: TLabel;
    cbMes: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    QGrupos: TADOQuery;
    QGruposGrupoID: TIntegerField;
    QGruposNombre: TStringField;
    BitBtn1: TBitBtn;
    btClose: TBitBtn;
    dsGrupos: TDataSource;
    procedure btCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ano : word;
    opcion, campo, campo1, campo2 : string;
  end;

Const
  DMes : array[1..12] of String = ('Enero','Febrero','Marzo',
                                  'Abril','Mayo','Junio',
                                  'Julio','Agosto','Septiembre',
                                  'Octubre','Noviembre','Diciembre');

var
  frmCashFlow_ImprimeMes: TfrmCashFlow_ImprimeMes;

implementation

uses SIGMA01, RCONT31;

{$R *.dfm}

procedure TfrmCashFlow_ImprimeMes.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCashFlow_ImprimeMes.FormActivate(Sender: TObject);
begin
  if not QGrupos.Active then QGrupos.Open;
end;

procedure TfrmCashFlow_ImprimeMes.BitBtn1Click(Sender: TObject);
var
  nummes, dia : word;
  monto, mes : string;
  a : integer;
begin
  Application.CreateForm(tRCashflow_Mes, RCashflow_Mes);

  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select Operacion from Cashflow_Grupo where emp_codigo = :emp');
  dm.Query1.SQL.Add('and GrupoID = :gru');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('gru').Value := DBLookupComboBox1.KeyValue;
  dm.Query1.Open;
  RCashflow_Mes.operacion := dm.Query1.FieldByName('Operacion').AsString;

  RCashflow_Mes.QConceptos.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  RCashflow_Mes.QConceptos.Parameters.ParamByName('gru').Value := DBLookupComboBox1.KeyValue;

  if opcion = 'm' then
  begin
    nummes := cbMes.ItemIndex + 1;
    dia := 1;

    RCashflow_Mes.QConceptos.Parameters.ParamByName('fec1').Value := EncodeDate(ano, nummes, dia);
    RCashflow_Mes.QConceptos.Parameters.ParamByName('fec2').Value := EncodeDate(ano, nummes, DaysInAMonth(ano, nummes));

    RCashflow_Mes.QTransacciones.Parameters.ParamByName('fec1').Value := EncodeDate(ano, nummes, dia);
    RCashflow_Mes.QTransacciones.Parameters.ParamByName('fec2').Value := EncodeDate(ano, nummes, DaysInAMonth(ano, nummes));

    RCashflow_Mes.lbmes.Caption := DBLookupComboBox1.Text+' de '+cbMes.Text+'/'+inttostr(ano);
  end
  else
  begin
    //Primer dia de la semana
    campo := campo1;
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

    RCashflow_Mes.QTransacciones.Parameters.ParamByName('fec1').Value := EncodeDate(ano, nummes, dia);
    RCashflow_Mes.QConceptos.Parameters.ParamByName('fec1').Value := EncodeDate(ano, nummes, dia);

    //Ultimo dia dia de la semana
    campo := campo2;
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

    RCashflow_Mes.QTransacciones.Parameters.ParamByName('fec2').Value := EncodeDate(ano, nummes, dia);
    RCashflow_Mes.QConceptos.Parameters.ParamByName('fec2').Value := EncodeDate(ano, nummes, dia);

    RCashflow_Mes.lbmes.Caption := DBLookupComboBox1.Text + ' Del '+DateToStr(RCashflow_Mes.QTransacciones.Parameters.ParamByName('fec1').Value) + ' Al ' +
                                   DateToStr(RCashflow_Mes.QTransacciones.Parameters.ParamByName('fec2').Value);
  end;
  RCashflow_Mes.QConceptos.Open;
  RCashflow_Mes.QTransacciones.Open;

  RCashflow_Mes.PrinterSetup;
  RCashflow_Mes.Preview;
  RCashflow_Mes.Destroy;
end;

end.
