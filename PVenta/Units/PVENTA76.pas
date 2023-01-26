unit PVENTA76;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, IBCustomDataSet,
  IBQuery, DBCtrls, Mask, QuerySearchDlgIB;

type
  TfrmParametros = class(TForm)
    tvParam: TTreeView;
    pnGeneral: TPanel;
    btClose: TBitBtn;
    btPost: TBitBtn;
    btCancel: TBitBtn;
    QParametros: TIBQuery;
    QParametrosEMP_CODIGO: TIntegerField;
    QParametrosPAR_CODIGOPRODUCTO: TIBStringField;
    QParametrosPAR_CODIGOCLIENTE: TIBStringField;
    QParametrosPAR_TIPOPRECIO: TIBStringField;
    QParametrosPAR_ITBIS: TFloatField;
    QParametrosPAR_FACFORMA: TIBStringField;
    QParametrosPAR_TFACODIGO: TIntegerField;
    QParametrosPAR_ALMACENVENTA: TIntegerField;
    QParametrosPAR_FORMATOCOT: TIntegerField;
    QParametrosPAR_FORMATODES: TIntegerField;
    QParametrosPAR_FORMATODEV: TIntegerField;
    QParametrosPAR_FORMATONC: TIntegerField;
    QParametrosPAR_FORMATOND: TIntegerField;
    QParametrosPAR_FORMATOPED: TIntegerField;
    QParametrosPAR_FORMATORC: TIntegerField;
    QParametrosPAR_FORMATORI: TIntegerField;
    QParametrosPAR_PUERTOCOT: TIBStringField;
    QParametrosPAR_PUERTODES: TIBStringField;
    QParametrosPAR_PUERTODEV: TIBStringField;
    QParametrosPAR_PUERTONC: TIBStringField;
    QParametrosPAR_PUERTOND: TIBStringField;
    QParametrosPAR_PUERTOPED: TIBStringField;
    QParametrosPAR_PUERTORC: TIBStringField;
    QParametrosPAR_PUERTORI: TIBStringField;
    QParametrosPAR_MOVNDE: TIntegerField;
    dsParametros: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    btTipo: TSpeedButton;
    DBEdit12: TDBEdit;
    tTipo: TEdit;
    Search: TQrySearchDlgIB;
    Label14: TLabel;
    DBComboBox1: TDBComboBox;
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParametros: TfrmParametros;

implementation


{$R *.dfm}

procedure TfrmParametros.btCloseClick(Sender: TObject);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mryes then
    Close;
end;

end.
