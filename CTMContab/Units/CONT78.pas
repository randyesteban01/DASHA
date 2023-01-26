unit CONT78;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Buttons, Mask, DBCtrls;

type
  TfrmNotificacionComprobantes = class(TForm)
    Label1: TLabel;
    cbtipo: TComboBox;
    Memo1: TMemo;
    Label2: TLabel;
    QNotificacion: TADOQuery;
    btClose: TBitBtn;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    QNotificacionemp_codigo: TIntegerField;
    QNotificacionncf_fijo: TStringField;
    QNotificacionncf_cantidad: TBCDField;
    dsNotificacion: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbtipoClick(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotificacionComprobantes: TfrmNotificacionComprobantes;

implementation

uses SIGMA01;

{$R *.dfm}

procedure TfrmNotificacionComprobantes.FormCreate(Sender: TObject);
begin
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select distinct ncf_fijo from ncf');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Open;
  cbtipo.Items.Clear;
  while not dm.Query1.Eof do
  begin
    cbtipo.Items.Add(dm.Query1.FieldByName('ncf_fijo').AsString);
    dm.Query1.Next;
  end;
end;

procedure TfrmNotificacionComprobantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmNotificacionComprobantes.cbtipoClick(Sender: TObject);
begin
  memo1.Lines.Clear;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select NCF_Inicial, NCF_Final, NCF_Secuencia from ncf where emp_codigo = :emp');
  dm.Query1.SQL.Add('and NCF_Fijo = :ncf');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  dm.Query1.Parameters.ParamByName('ncf').Value := cbtipo.Items[cbtipo.ItemIndex];
  dm.Query1.Open;
  memo1.Lines.Add('NCF: '+cbtipo.SelText);
  memo1.Lines.Add('Desde: '+formatfloat('00000000',dm.Query1.FieldByName('NCF_Inicial').AsFloat));
  memo1.Lines.Add('Hasta: '+formatfloat('00000000',dm.Query1.FieldByName('NCF_Final').AsFloat));
  memo1.Lines.Add('Secuencia actual: '+formatfloat('00000000',dm.Query1.FieldByName('NCF_Secuencia').AsFloat));
  memo1.Lines.Add('Restante: '+floattostr(dm.Query1.FieldByName('NCF_Final').AsFloat - dm.Query1.FieldByName('NCF_Secuencia').AsFloat));

  QNotificacion.Close;
  QNotificacion.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
  QNotificacion.Parameters.ParamByName('ncf').Value := cbtipo.Items[cbtipo.ItemIndex];
  QNotificacion.Open;
end;

procedure TfrmNotificacionComprobantes.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNotificacionComprobantes.BitBtn1Click(Sender: TObject);
begin
  if QNotificacionncf_cantidad.AsFloat > 0 then
  begin
    QNotificacion.Edit;
    QNotificacionemp_codigo.Value := dm.QEmpresasEMP_CODIGO.Value;
    QNotificacionncf_fijo.Value   := cbtipo.Items[cbtipo.ItemIndex];
    QNotificacion.Post;
    QNotificacion.UpdateBatch;
  end;
end;

end.

