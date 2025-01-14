unit PVENTA30;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, IBUpdateSQL, ADODB,
  QuerySearchDlgADO, ComCtrls, ShellCtrls, FileCtrl,QRPrntr, Menus;

type
  TfrmTransferencia = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    edDesde: TEdit;
    tAlmacen1: TEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Grid: TDBGrid;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    edHasta: TEdit;
    tAlmacen2: TEdit;
    QTrans: TADOQuery;
    QTransEMP_CODIGO: TIntegerField;
    QTransTRA_ALMACEN1: TIntegerField;
    QTransTRA_ALMACEN2: TIntegerField;
    QTransTRA_CONCEPTO: TIBStringField;
    QTransTRA_FECHA: TDateTimeField;
    QTransTRA_NUMERO: TIntegerField;
    QTransTRA_STATUS: TIBStringField;
    QTransUSU_CODIGO: TIntegerField;
    dsTrans: TDataSource;
    QDetalle: TADOQuery;
    QDetalleDET_CANTIDAD: TFloatField;
    QDetalleDET_SECUENCIA: TIntegerField;
    QDetalleEMP_CODIGO: TIntegerField;
    QDetallePRO_CODIGO: TIntegerField;
    QDetallePRO_NOMBRE: TIBStringField;
    QDetallePRO_RFABRIC: TIBStringField;
    QDetallePRO_RORIGINAL: TIBStringField;
    QDetalleTRA_NUMERO: TIntegerField;
    dsDetalle: TDataSource;
    Search: TQrySearchDlgADO;
    QDetalleDET_MEDIDA: TIBStringField;
    SaveDialog1: TSaveDialog;
    BitBtn2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Query1: TADOQuery;
    btBuscaProd: TSpeedButton;
    QDetalledet_medida2: TStringField;
    QDetallepro_cantempaque: TBCDField;
    QTranstra_medida_almacen1: TStringField;
    QTranstra_medida_almacen2: TStringField;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    QDetalledet_cantidad2: TBCDField;
    btPost: TSpeedButton;
    btlimpiar: TSpeedButton;
    BitBtn3: TSpeedButton;
    btClose: TSpeedButton;
    bteliminar: TSpeedButton;
    ckautomatico: TCheckBox;
    QDetalledet_costo: TBCDField;
    QDetalledet_costound: TBCDField;
    QDetalledet_costoemp: TBCDField;
    PopupMenu1: TPopupMenu;
    Buscarproductoenellistado1: TMenuItem;
    Lista: TListBox;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    dsSuc: TDataSource;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    QTranssuc_codigo: TIntegerField;
    QDetallesuc_codigo: TIntegerField;
    QTransTRA_FECHA_HORA: TDateTimeField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    QTransUbicacion: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QTransNewRecord(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edDesdeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edHastaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QTransBeforePost(DataSet: TDataSet);
    procedure GridColEnter(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure QDetallePRO_CODIGOChange(Sender: TField);
    procedure QDetallePRO_RFABRICChange(Sender: TField);
    procedure QDetallePRO_RORIGINALChange(Sender: TField);
    procedure btBuscaProdClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btlimpiarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure QDetalleNewRecord(DataSet: TDataSet);
    procedure QDetalleDET_CANTIDADChange(Sender: TField);
    procedure bteliminarClick(Sender: TObject);
    procedure Buscarproductoenellistado1Click(Sender: TObject);
    procedure QDetalleBeforeEdit(DataSet: TDataSet);
    procedure QDetalleBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    vl_trans : Integer;
    function VerificarAlmNegativo(vp_alm:Integer):Boolean;

  public
    { Public declarations }
    solouno : boolean;
    procedure GrabaDisquete;
  end;

var
  frmTransferencia: TfrmTransferencia;

implementation

uses PVENTA33, RVENTA39, SIGMA01, SIGMA00, Math;

{$R *.DFM}

procedure TfrmTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if solouno = false then
  begin
    if messagedlg('SALIR DE ESTA PANTALLA?',
    mtconfirmation, [mbyes,mbno],0) = mrno then
      abort
    else
      action := cafree;
  end
  else
    action := cafree;
end;

procedure TfrmTransferencia.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTransferencia.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then close;
  if key = vk_f2 then btPostClick(Self);
  if key = vk_f3 then btlimpiarClick(Self);
  if key = vk_f4 then btBuscaProdClick(self);
  if key = vk_f7 then bteliminarClick(Self);
  if key = vk_f5 then
  begin
    ckautomatico.Checked := not ckautomatico.Checked;
  end;
end;

procedure TfrmTransferencia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    if ActiveControl.classtype <> tdbgrid then
    begin
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    end;
  end;
end;

procedure TfrmTransferencia.QTransNewRecord(DataSet: TDataSet);
var
   a : integer;
begin
  Lista.Clear;

  tAlmacen1.text := '';
  tAlmacen2.text := '';
  edDesde.Text := '';
  edHasta.Text := '';

  edDesde.Text := '1';
  edHasta.Text := '2';


  QDetalle.close;
  QDetalle.Parameters.parambyname('numero').Value := -1;
  QDetalle.Parameters.parambyname('EMP_CODIGO').Value := DM.vp_cia;
  QDetalle.open;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select alm_nombre, alm_codigo, alm_medida');
  dm.Query1.sql.add('from almacen');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and alm_codigo = :alm');
  dm.Query1.Parameters.parambyname('alm').Value := strtoint(edDesde.text);
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
  //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.open;
  tAlmacen1.text := dm.Query1.fieldbyname('alm_nombre').asstring;
  QTransTRA_ALMACEN1.value := dm.Query1.fieldbyname('alm_codigo').asinteger;
  QTranstra_medida_almacen1.Value := dm.Query1.fieldbyname('alm_medida').AsString;

  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select alm_nombre, alm_codigo, alm_medida');
  dm.Query1.sql.add('from almacen');
  dm.Query1.sql.add('where emp_codigo = :emp');
  dm.Query1.sql.add('and alm_codigo = :alm');
  dm.Query1.Parameters.parambyname('alm').Value := strtoint(edHasta.text);
  dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia; //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.open;
  tAlmacen2.text := dm.Query1.fieldbyname('alm_nombre').asstring;
  QTransTRA_ALMACEN2.value := dm.Query1.fieldbyname('alm_codigo').asinteger;
  QTranstra_medida_almacen2.Value := dm.Query1.fieldbyname('alm_medida').AsString;
  QTransTRA_CONCEPTO.Value := 'TRANSFERENCIA';
  QTransEMP_CODIGO.value := dm.vp_cia;
  QTransTRA_FECHA.value  := Date;
  QTransTRA_STATUS.value := 'EMI';
  QTransUSU_CODIGO.value := dm.Usuario;
  QTranssuc_codigo.Value := QSucursalsuc_codigo.Value;
  QTransTRA_FECHA_HORA.Value := DM.getFechaBDA;


end;

procedure TfrmTransferencia.SpeedButton2Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.ResultField := 'alm_codigo';
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    edDesde.text := search.valuefield;
    edDesde.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_codigo, alm_nombre, alm_medida');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlmacen1.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    QTransTRA_ALMACEN1.value := dm.Query1.fieldbyname('alm_Codigo').asinteger;
    QTranstra_medida_almacen1.Value := dm.Query1.fieldbyname('alm_medida').AsString;
  end;
end;

procedure TfrmTransferencia.SpeedButton3Click(Sender: TObject);
begin
  Search.AliasFields.Clear;
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('C�digo');
  Search.Query.clear;
  Search.Query.add('select alm_nombre, alm_codigo');
  Search.ResultField := 'alm_codigo';
  Search.Query.add('from almacen');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  //Search.Query.add('where emp_codigo = '+inttostr(dm.QParametrosPAR_INVEMPRESA.value));
  Search.Title := 'Listado de Almacenes';
  if Search.execute then
  begin
    edHasta.text := search.valuefield;
    edHasta.setfocus;
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_codigo, alm_nombre, alm_medida');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := strtoint(search.valuefield);
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlmacen2.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    QTransTRA_ALMACEN2.value := dm.Query1.fieldbyname('alm_Codigo').asinteger;
    QTranstra_medida_almacen2.Value := dm.Query1.fieldbyname('alm_medida').AsString;
  end;
end;

procedure TfrmTransferencia.edDesdeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edDesde.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre, alm_codigo, alm_medida');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edDesde.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tAlmacen1.text := dm.Query1.fieldbyname('alm_nombre').asstring;
      QTransTRA_ALMACEN1.value := dm.Query1.fieldbyname('alm_codigo').asinteger;
      QTranstra_medida_almacen1.Value := dm.Query1.fieldbyname('alm_medida').AsString;
    end;
  end;
end;

procedure TfrmTransferencia.edHastaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if trim(edHasta.text) <> '' then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select alm_nombre, alm_codigo, alm_medida');
      dm.Query1.sql.add('from almacen');
      dm.Query1.sql.add('where emp_codigo = :emp');
      dm.Query1.sql.add('and alm_codigo = :alm');
      dm.Query1.Parameters.parambyname('alm').Value := strtoint(edHasta.text);
      dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
      //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.open;
      tAlmacen2.text := dm.Query1.fieldbyname('alm_nombre').asstring;
      QTransTRA_ALMACEN2.value := dm.Query1.fieldbyname('alm_codigo').asinteger;
      QTranstra_medida_almacen2.Value := dm.Query1.fieldbyname('alm_medida').AsString;
    end;
  end;
end;

procedure TfrmTransferencia.FormActivate(Sender: TObject);
begin
  Lista.Items.Clear;
  
  frmTransferencia.top := 1;
  if not QTrans.active then
  begin
    QSucursal.Close;
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;

    QDetalle.Close;
    QDetalle.Open;

    QTrans.Close;
    QTrans.Parameters.parambyname('emp').Value := dm.vp_cia;
    QTrans.Parameters.parambyname('numero').Value := -1;
    QTrans.open;
    QTrans.insert;
  end;
  frmMain.ExportXLS.Sheets[1].DataSet := QTrans;;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
     Grid.Columns[0].FieldName := 'PRO_CODIGO'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
     Grid.Columns[0].FieldName := 'PRO_RFABRIC'
  else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
     Grid.Columns[0].FieldName := 'PRO_RORIGINAL';

  solouno := false;
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select alm_codigo from almacen');
  dm.Query1.SQL.Add('where emp_codigo = :emp');
  dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
  //dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Open;
  if dm.Query1.RecordCount = 1 then
  begin
    MessageDlg('SOLO EXISTE UN ALMACEN EN ESTA EMPRESA',mtInformation,[mbok],0);
    solouno := true;
    Close;
  end;

end;

procedure TfrmTransferencia.FormCreate(Sender: TObject);
var
  a : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;

  if dm.QParametrosPAR_FACMEDIDA.Value <> 'True' then
  begin
    Grid.Columns[2].Destroy;
    Grid.Columns[1].Width := Grid.Columns[1].Width + 30;
  end;

end;

procedure TfrmTransferencia.QTransBeforePost(DataSet: TDataSet);
begin
{  if QTrans.state = dsInsert then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(tra_numero),0) as maximo');
    dm.Query1.sql.add('from transfer');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    QTransTRA_NUMERO.value := dm.Query1.fieldbyname('maximo').asinteger + 1;
  end;}

end;

procedure TfrmTransferencia.GridColEnter(Sender: TObject);
begin
  if not ckautomatico.Checked then
  begin
    if Grid.SelectedIndex = 1 then Grid.SelectedIndex := 2;
  end
  else
  begin
    Grid.SelectedIndex := 0;
  end;
end;

procedure TfrmTransferencia.GridEnter(Sender: TObject);
begin
  Grid.SelectedIndex := 0;
end;

procedure TfrmTransferencia.QDetallePRO_CODIGOChange(Sender: TField);
var
  puede : boolean;
  cod : integer;
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
  begin
    if not QDetallePRO_CODIGO.isnull then
    begin
      puede := true;
      if Lista.Items.IndexOf(QDetallePRO_CODIGO.AsString) >= 0 then
      begin
        if MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          Puede := false;
          cod := QDetallePRO_CODIGO.Value;
          QDetalle.Cancel;
          QDetalle.Locate('pro_codigo', cod, []);
          Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
        end;
      end;

      if puede then
      begin
        dm.Query1.close;
        dm.Query1.sql.clear;
        dm.Query1.sql.add('select pro_codigo, pro_nombre,');
        dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_servicio, isnull(PRO_CANTEMPAQUE,0) as cantempaque,');
        dm.Query1.sql.add('pro_costo, pro_costoempaque');
        dm.Query1.sql.add('from productos');
        dm.Query1.sql.add('where emp_codigo = :emp');
        dm.Query1.sql.add('and pro_codigo = :cod');
        dm.Query1.sql.add('and pro_status = '+QuotedStr('ACT'));
        dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
        dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_CODIGO.value;
        dm.Query1.open;
        if dm.Query1.FieldByName('pro_servicio').AsString = 'True' then
        begin
          MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
                     'ES UN SERVICIO',mtError,[mbok],0);
          QDetalle.Cancel;
          Grid.SelectedIndex := 0;
        end
        else
        begin
          QDetallePRO_NOMBRE.value := dm.Query1.fieldbyname('pro_nombre').asstring;
          QDetallepro_cantempaque.Value := dm.Query1.fieldbyname('cantempaque').AsFloat;
          QDetallePRO_RORIGINAL.value := dm.Query1.fieldbyname('pro_roriginal').asstring;
          QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
          QDetalledet_costo.Value     := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalledet_costound.Value  := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalledet_costoemp.Value  := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
          if ckautomatico.Checked then
          begin
            QDetalleDET_CANTIDAD.Value := 1;
            QDetalledet_cantidad2.Value := 1;
            QDetalle.Post;
            Grid.SelectedIndex := 0;
            QDetalle.Append;
          end;
        end;
      end
      else
        Abort;
    end;
  end;
end;

procedure TfrmTransferencia.QDetallePRO_RFABRICChange(Sender: TField);
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
  begin
    if not QDetallePRO_RFABRIC.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_servicio, isnull(PRO_CANTEMPAQUE,0) as cantempaque,');
      dm.Query1.sql.add('pro_costo, pro_costoempaque');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_rfabric = :cod');
      dm.Query1.sql.add('and pro_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RFABRIC.value;
      dm.Query1.open;
      if dm.Query1.FieldByName('pro_servicio').AsString = 'True' then
      begin
        MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
                   'ES UN SERVICIO',mtError,[mbok],0);
        QDetalle.Cancel;
        Grid.SelectedIndex := 0;
      end
      else
      begin
        QDetallePRO_NOMBRE.value := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetallepro_cantempaque.Value := dm.Query1.fieldbyname('cantempaque').AsFloat;
        QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
        QDetallePRO_RORIGINAL.value   := dm.Query1.fieldbyname('pro_roriginal').asstring;
        QDetalledet_costo.Value     := dm.Query1.fieldbyname('pro_costo').AsFloat;
        QDetalledet_costound.Value  := dm.Query1.fieldbyname('pro_costo').AsFloat;
        QDetalledet_costoemp.Value  := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;

        if ckautomatico.Checked then
        begin
          QDetalleDET_CANTIDAD.Value := 1;
          QDetalledet_cantidad2.Value := 1;
          QDetalle.Post;
          Grid.SelectedIndex := 0;
          QDetalle.Append;
        end;
      end;
    end;
  end;
end;

procedure TfrmTransferencia.QDetallePRO_RORIGINALChange(Sender: TField);
var
  puede : boolean;
  cod : integer;
begin
  if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
  begin
    if not QDetallePRO_RORIGINAL.isnull then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('select pro_codigo, pro_nombre,');
      dm.Query1.sql.add('pro_roriginal, pro_rfabric, pro_servicio, isnull(PRO_CANTEMPAQUE,0) as cantempaque,');
      dm.Query1.sql.add('pro_costo, pro_costoempaque');
      dm.Query1.sql.add('from productos ');
      dm.Query1.sql.add('where emp_codigo = :emp ');
      dm.Query1.sql.add('and pro_roriginal = :cod');
      dm.Query1.sql.add('and pro_status = '+QuotedStr('ACT'));
      dm.Query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.parambyname('cod').Value := QDetallePRO_RORIGINAL.value;
      dm.Query1.open;
      if dm.Query1.FieldByName('pro_servicio').AsString = 'True' then
      begin
        MessageDlg('NO PUEDE INCLUIR ESTE PRODUCTO, DEBIDO A QUE'+#13+
                   'ES UN SERVICIO',mtError,[mbok],0);
        QDetalle.Cancel;
        Grid.SelectedIndex := 0;
      end
      else
      begin
        QDetallePRO_NOMBRE.value := dm.Query1.fieldbyname('pro_nombre').asstring;
        QDetallepro_cantempaque.Value := dm.Query1.fieldbyname('cantempaque').AsFloat;
        QDetallePRO_CODIGO.value := dm.Query1.fieldbyname('pro_codigo').asinteger;
        puede := true;
        if Lista.Items.IndexOf(QDetallePRO_CODIGO.AsString) >= 0 then
        begin
          if MessageDlg('Ya este producto existe en la lista, desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
          begin
            Puede := false;
            cod := QDetallePRO_CODIGO.Value;
            QDetalle.Cancel;
            QDetalle.Locate('pro_codigo', cod, []);
            Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));
          end;
        end;

        if puede then
        begin
          QDetallePRO_RFABRIC.value   := dm.Query1.fieldbyname('pro_rfabric').asstring;
          QDetalledet_costo.Value     := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalledet_costound.Value  := dm.Query1.fieldbyname('pro_costo').AsFloat;
          QDetalledet_costoemp.Value  := dm.Query1.fieldbyname('pro_costoempaque').AsFloat;
          if ckautomatico.Checked then
          begin
            QDetalleDET_CANTIDAD.Value := 1;
            QDetalledet_cantidad2.Value := 1;
            QDetalle.Post;
            Grid.SelectedIndex := 0;
            QDetalle.Append;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmTransferencia.btBuscaProdClick(Sender: TObject);
var
  primera : boolean;
begin
  application.createform(tfrmBuscaProducto, frmBuscaProducto);
  frmBuscaProducto.facturando := true;
  if edDesde.Text <> '' then
  frmBuscaProducto.almacen := StrToInt(edDesde.Text) else
  frmBuscaProducto.almacen := 0;
  frmBuscaProducto.vp_suc := DBLookupComboBox2.KeyValue;
  primera := true;
  while (frmBuscaProducto.ckactiva.Checked) or (Primera) do
  begin
    frmBuscaProducto.showmodal;
    Primera := false;
    if frmBuscaProducto.seleccion = 1 then
    begin
      QDetalle.Edit;
      if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'I' then
         QDetallePRO_CODIGO.value := frmBuscaProducto.QProductosPRO_CODIGO.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'F' then
         QDetallePRO_RFABRIC.value := frmBuscaProducto.QProductosPRO_RFABRIC.value
      else if dm.QParametrosPAR_CODIGOPRODUCTO.value = 'O' then
         QDetallePRO_RORIGINAL.value := frmBuscaProducto.QProductosPRO_RORIGINAL.value;

      if frmBuscaProducto.ckactiva.Checked then
      begin
        QDetalle.Append;
        Grid.SelectedIndex := 0;
      end;
    end;
  end;
  frmBuscaProducto.release;
  Grid.setfocus;
end;

procedure TfrmTransferencia.btPostClick(Sender: TObject);
var
  a : integer;
  Papel :TQRPaperSize;
begin
if Trim(edDesde.Text)='' then begin
  ShowMessage('Debe indicar el almacen Origen');
  edDesde.SetFocus;
  Abort;
  end;

if Trim(edHasta.Text)='' then begin
  ShowMessage('Debe indicar el almacen Destino');
  edHasta.SetFocus;
  Abort;
  end;

IF QTransTRA_ALMACEN1.Value = QTransTRA_ALMACEN2.Value THEN BEGIN
 ShowMessage('EL ALMACEN DE ORIGEN NO PUEDE SER EL MISMO DE DESTINO');
 Abort;
end;

IF QDetalle.RecordCount = 0 THEN BEGIN
  ShowMessage('DEBES INDICAR POR LO MENOS 1 PRODUCTO PARA ESTA TRANSFERENCIA....');
  Abort;
end;

  Papel := TQRPaperSize(0);

  if trim(edDesde.text) = '' then
  begin
    messagedlg('DEBE ESPECIFICAR EL ALMACEN DE ORIGEN',mterror,[mbok],0);
    edDesde.SetFocus;
  end
  else if trim(edHasta.text) = '' then
  begin
    messagedlg('DEBE ESPECIFICAR EL ALMACEN DE DESTINO',mterror,[mbok],0);
    edDesde.SetFocus;
  end
  else if trim(DBEdit2.text) = '' then
  begin
    messagedlg('DEBE ESPECIFICAR EL CONCEPTO',mterror,[mbok],0);
    DBEdit2.SetFocus;
  end
  else
  begin
  QDetalle.disablecontrols;
  QDetalle.first;
  while not QDetalle.eof do
    begin
    if QDetalleDET_CANTIDAD.IsNull then begin
    ShowMessage('LA CANTIDAD NO PUEDE ESTAR EN BLANCO,'+CHAR(13)+
                'FAVOR VERIFICAR');
    QDetalle.EnableControls;
    Exit;
    Grid.Columns[2].Field.FocusControl;
    end;
    if QDetalleDET_CANTIDAD.Value=0 then begin
    ShowMessage('LA CANTIDAD NO PUEDE SER IGUAL A CERO,'+CHAR(13)+
                'FAVOR VERIFICAR');
    QDetalle.EnableControls;
    Exit;
    Grid.Columns[2].Field.FocusControl;
    end;
    if QDetalleDET_CANTIDAD.Value<0 then begin
    ShowMessage('LA CANTIDAD NO PUEDE SER NEGATIVA,'+CHAR(13)+
                'FAVOR VERIFICAR');
    QDetalle.EnableControls;
    Exit;
    Grid.Columns[2].Field.FocusControl;
    end;
    QDetalle.Next;
    end;
    QDetalle.EnableControls;

    //Buscar Numero Transferencia
     dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select isnull(max(tra_numero),0) as maximo');
    dm.Query1.sql.add('from transfer');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    dm.Query1.open;
    vl_trans := dm.Query1.fieldbyname('maximo').asinteger + 1;
    dm.Query1.Close;

    QTransTRA_NUMERO.Value := vl_trans;
    QTrans.post;
    QTrans.UpdateBatch;


    QDetalle.disablecontrols;
    QDetalle.first;
    a := 0;
    while not QDetalle.eof do
    begin
      a := a + 1;
      QDetalle.edit;
      QDetalleTRA_NUMERO.value    := vl_trans;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleEMP_CODIGO.value    := dm.vp_cia;
      QDetalle.post;
      QDetalle.next;
    end;
    QDetalle.EnableControls;
    QDetalle.UpdateBatch;

    if dm.QParametrospar_inv_transferencia_auto.Value = 'True' then
    begin
      Screen.Cursor := crSQLWait;
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.add('execute PR_PROCESA_TRANS :emp, :num');
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Parameters.ParamByName('num').Value := QTransTRA_NUMERO.value;
      dm.Query1.ExecSQL;
      Screen.Cursor := crDefault;
    end;

    GrabaDisquete;
    end;

    if messagedlg('DESEA IMPRIMIR ESTA TRANSFERENCIA?',mtconfirmation,[mbyes,mbno],0) = mryes then
    begin
      Application.CreateForm(tRTransferencia, RTransferencia);
      RTransferencia.QTrans.Parameters.ParamByName('numero').Value := QTransTRA_NUMERO.Value;
      RTransferencia.QTrans.Open;
      RTransferencia.QDetalle.Open;
      RTransferencia.PrinterSetup;

      RTransferencia.Page.PaperSize :=Papel;

      RTransferencia.Printersettings.papersize:=Papel;
      RTransferencia.Prepare;
      RTransferencia.Print;
      RTransferencia.Destroy;
    end;

    QDetalle.Close;
    QDetalle.Open;

    QTrans.close;
    QTrans.Parameters.parambyname('numero').Value := -1;
    QTrans.open;
    edDesde.setfocus;
    QTrans.insert;



end;

procedure TfrmTransferencia.btlimpiarClick(Sender: TObject);
begin
  if messagedlg('DESEA CANCELAR ESTA TRANSFERENCIA?',mtconfirmation,[mbyes,mbno],0)=mryes then
  begin
    QDetalle.Close;
    
    QTrans.close;
    QTrans.Parameters.parambyname('numero').Value := -1;
    QTrans.open;
    edDesde.setfocus;
    QTrans.insert;
  end;
end;

procedure TfrmTransferencia.BitBtn3Click(Sender: TObject);
var
  a : integer;
begin
  Search.Query.clear;
  Search.AliasFields.clear;
  Search.Query.add('select tra_numero, tra_concepto, tra_fecha');
  Search.Query.add('from transfer');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and tra_status = '+#39+'EMI'+#39);
  Search.AliasFields.Add('N�mero');
  Search.AliasFields.Add('Concepto');
  Search.AliasFields.Add('Fecha');
  Search.Title := 'Transferencias';
  Search.ResultField := 'tra_numero';
  if Search.execute then
  begin
    QTrans.close;
    QTrans.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QTrans.open;

    QDetalle.close;
    QDetalle.Parameters.parambyname('numero').Value := strtoint(Search.valuefield);
    QDetalle.Parameters.parambyname('EMP_CODIGO').Value := DM.vp_cia;
    QDetalle.open;

    lista.Items.Clear;
    QDetalle.Last;
    QDetalle.disablecontrols;
    QDetalle.First;
    while not QDetalle.Eof do begin
      QDetalle.Append;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleEMP_CODIGO.value    := dm.vp_cia;
      if not QDetallePRO_CODIGO.isnull then
        Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));
      QDetalle.Post;
    QDetalle.Next;
    end;
    QDetalle.First;
    QDetalle.enablecontrols;

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre, alm_codigo');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := QTransTRA_ALMACEN1.value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlmacen1.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edDesde.text := inttostr(QTransTRA_ALMACEN1.value);

    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('select alm_nombre, alm_codigo');
    dm.Query1.sql.add('from almacen');
    dm.Query1.sql.add('where emp_codigo = :emp');
    dm.Query1.sql.add('and alm_codigo = :alm');
    dm.Query1.Parameters.parambyname('alm').Value := QTransTRA_ALMACEN2.value;
    dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;
    //dm.Query1.Parameters.parambyname('emp').Value := dm.vp_cia;//dm.QParametrosPAR_INVEMPRESA.Value;
    dm.Query1.open;
    tAlmacen2.text := dm.Query1.fieldbyname('alm_nombre').asstring;
    edHasta.text := inttostr(QTransTRA_ALMACEN2.value);

    edDesde.setfocus;
    QTrans.edit;
  end;
end;

procedure TfrmTransferencia.GridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA2' then
    begin
      QDetalle.Append;
      Grid.SelectedIndex := 0;
    end
    else
      Grid.SelectedIndex := Grid.SelectedIndex + 1;
  end;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA' then
  begin
    QDetalle.Edit;
    if uppercase(key) = 'E' then
    begin
      QDetalleDET_MEDIDA.Value := 'Emp';
      if QDetalleDET_MEDIDA2.Value = 'Und' then
        QDetalledet_cantidad2.Value := QDetalleDET_CANTIDAD.Value * QDetallepro_cantempaque.Value
      else
        QDetalledet_cantidad2.Value := QDetalleDET_CANTIDAD.Value;
    end
    else if uppercase(key) = 'U' then
    begin
      QDetalleDET_MEDIDA.Value := 'Und';
      if QDetalleDET_MEDIDA2.Value = 'Emp' then
      begin
        MessageDlg('Usted no puede transferir de Unidad a Empaque',mtError,[mbok],0);
        QDetalledet_medida2.Value := 'Und';
        QDetalledet_cantidad2.Value := QDetalledet_cantidad.Value;
      end
      else
      begin
        QDetalledet_cantidad2.Value := QDetalledet_cantidad.Value;
      end
    end;
  end;

  if uppercase(Grid.Columns[Grid.selectedindex].FieldName) = 'DET_MEDIDA2' then
  begin
    QDetalle.Edit;
    if uppercase(key) = 'U' then
    begin
      QDetalleDET_MEDIDA2.Value := 'Und';
      if QDetalleDET_MEDIDA.Value = 'Emp' then
        QDetalledet_cantidad2.Value := QDetalleDET_CANTIDAD.Value * QDetallepro_cantempaque.Value
      else
        QDetalledet_cantidad2.Value := QDetalleDET_CANTIDAD.Value;
    end
    else if uppercase(key) = 'E' then
    begin
      QDetalleDET_MEDIDA2.Value := 'Emp';
      if QDetalleDET_MEDIDA.Value = 'Und' then
      begin
        MessageDlg('Usted no puede transferir de Unidad a Empaque',mtError,[mbok],0);
        QDetalledet_medida2.Value := 'Und';
        QDetalledet_cantidad2.Value := QDetalledet_cantidad.Value;
      end
      else
      begin
        QDetalledet_cantidad2.Value := QDetalledet_cantidad.Value;
      end
    end;
  end;

end;

procedure TfrmTransferencia.GrabaDisquete;
var
  arch : textfile;
  linea : string;
  a : integer;
begin
  //Creando archivo de productos
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select p.emp_codigo, p.pro_codigo, p.pro_roriginal, p.pro_nombre,');
  dm.Query1.SQL.Add('p.fam_codigo, p.pro_descmax, p.pro_ultcosto, p.pro_costo, p.pro_precio1,');
  dm.Query1.SQL.Add('p.pro_precio2, p.pro_precio3, p.pro_precio4, p.pro_status,');
  dm.Query1.SQL.Add('p.pro_ctainvent, p.pro_ctacosto, p.dep_codigo, p.pro_itbis, p.pro_beneficio, p.pro_servicio,');
  dm.Query1.SQL.Add('p.mar_codigo, p.sup_codigo, p.pro_comision, p.pro_beneficio2, p.pro_beneficio3, p.pro_beneficio4,');
  dm.Query1.SQL.Add('p.pro_costous, p.pro_preciomenor, p.pro_combo, p.pro_comisiondescuento, p.pro_detallado, p.pro_controlado');
  dm.Query1.SQL.Add('from productos p, det_transfer d');
  dm.Query1.SQL.Add('where p.pro_codigo = d.pro_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = :empinv');
  dm.Query1.SQL.Add('and d.emp_codigo = :emp');
  dm.Query1.SQL.Add('and d.tra_numero = :num');
  dm.Query1.Parameters.ParamByName('empinv').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value    := QTransTRA_NUMERO.Value;
  dm.Query1.Open;

  AssignFile(arch, 'productos.txt');
  rewrite(arch);

  dm.Query1.DisableControls;

  for a := 0 to dm.Query1.FieldCount-1 do
    write(arch, dm.Query1.Fields[a].FieldName+'|');
  writeln(arch, '');
  while not dm.Query1.EOF do
  begin
    for a := 0 to dm.Query1.FieldCount-1 do
      write(arch, dm.Query1.FieldByName(dm.Query1.Fields[a].FieldName).AsString+'|');

    writeln(arch, '');

    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  closefile(arch);

  //Creando archivo de proveedores
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select distinct s.emp_codigo, p.sup_codigo, s.sup_nombre, s.sup_rnc, s.sup_direccion,');
  dm.Query1.SQL.Add('s.sup_localidad, s.sup_telefono, s.sup_fax, s.sup_status, s.sup_ctacompra,');
  dm.Query1.SQL.Add('s.sup_cuenta, s.sup_tipo');
  dm.Query1.SQL.Add('from productos p, proveedores s, det_transfer d');
  dm.Query1.SQL.Add('where p.pro_codigo = d.pro_codigo');
  dm.Query1.SQL.Add('and p.sup_codigo = s.sup_codigo');
  dm.Query1.SQL.Add('and s.emp_codigo = p.emp_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = :empinv');
  dm.Query1.SQL.Add('and d.emp_codigo = :emp');
  dm.Query1.SQL.Add('and d.tra_numero = :num');
  dm.Query1.Parameters.ParamByName('empinv').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value    := QTransTRA_NUMERO.Value;
  dm.Query1.Open;

  AssignFile(arch, 'proveedores.txt');
  rewrite(arch);

  dm.Query1.DisableControls;

  for a := 0 to dm.Query1.FieldCount-1 do
    write(arch, dm.Query1.Fields[a].FieldName+'|');
  writeln(arch, '');
  while not dm.Query1.EOF do
  begin
    for a := 0 to dm.Query1.FieldCount-1 do
      write(arch, dm.Query1.FieldByName(dm.Query1.Fields[a].FieldName).AsString+'|');

    writeln(arch, '');

    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  closefile(arch);

  //Creando archivo de marcas
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select distinct p.emp_codigo, p.mar_codigo, m.mar_nombre');
  dm.Query1.SQL.Add('from productos p, marcas m, det_transfer d');
  dm.Query1.SQL.Add('where p.pro_codigo = d.pro_codigo');
  dm.Query1.SQL.Add('and p.mar_codigo = m.mar_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = m.emp_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = :empinv');
  dm.Query1.SQL.Add('and d.emp_codigo = :emp');
  dm.Query1.SQL.Add('and d.tra_numero = :num');
  dm.Query1.Parameters.ParamByName('empinv').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value    := QTransTRA_NUMERO.Value;
  dm.Query1.Open;

  AssignFile(arch, 'marcas.txt');
  rewrite(arch);

  dm.Query1.DisableControls;

  for a := 0 to dm.Query1.FieldCount-1 do
    write(arch, dm.Query1.Fields[a].FieldName+'|');
  writeln(arch, '');
  while not dm.Query1.EOF do
  begin
    for a := 0 to dm.Query1.FieldCount-1 do
      write(arch, dm.Query1.FieldByName(dm.Query1.Fields[a].FieldName).AsString+'|');

    writeln(arch, '');

    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  closefile(arch);

  //Creando archivo de departamentos
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select distinct p.emp_codigo, p.dep_codigo, dp.dep_nombre');
  dm.Query1.SQL.Add('from productos p, departamentos dp, det_transfer d');
  dm.Query1.SQL.Add('where p.pro_codigo = d.pro_codigo');
  dm.Query1.SQL.Add('and p.dep_codigo = dp.dep_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = dp.emp_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = :empinv');
  dm.Query1.SQL.Add('and d.emp_codigo = :emp');
  dm.Query1.SQL.Add('and d.tra_numero = :num');
  dm.Query1.Parameters.ParamByName('empinv').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value    := QTransTRA_NUMERO.Value;
  dm.Query1.Open;

  AssignFile(arch, 'deptos.txt');
  rewrite(arch);

  dm.Query1.DisableControls;

  for a := 0 to dm.Query1.FieldCount-1 do
    write(arch, dm.Query1.Fields[a].FieldName+'|');
  writeln(arch, '');
  while not dm.Query1.EOF do
  begin
    for a := 0 to dm.Query1.FieldCount-1 do
      write(arch, dm.Query1.FieldByName(dm.Query1.Fields[a].FieldName).AsString+'|');

    writeln(arch, '');

    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  closefile(arch);

  //Creando archivo de familias
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select distinct p.emp_codigo, p.fam_codigo, f.fam_nombre');
  dm.Query1.SQL.Add('from productos p, familias f, det_transfer d');
  dm.Query1.SQL.Add('where p.pro_codigo = d.pro_codigo');
  dm.Query1.SQL.Add('and p.fam_codigo = f.fam_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = f.emp_codigo');
  dm.Query1.SQL.Add('and p.emp_codigo = :empinv');
  dm.Query1.SQL.Add('and d.emp_codigo = :emp');
  dm.Query1.SQL.Add('and d.tra_numero = :num');
  dm.Query1.Parameters.ParamByName('empinv').Value := dm.QParametrosPAR_INVEMPRESA.Value;
  dm.Query1.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value    := QTransTRA_NUMERO.Value;
  dm.Query1.Open;

  AssignFile(arch, 'familias.txt');
  rewrite(arch);

  dm.Query1.DisableControls;

  for a := 0 to dm.Query1.FieldCount-1 do
    write(arch, dm.Query1.Fields[a].FieldName+'|');
  writeln(arch, '');
  while not dm.Query1.EOF do
  begin
    for a := 0 to dm.Query1.FieldCount-1 do
      write(arch, dm.Query1.FieldByName(dm.Query1.Fields[a].FieldName).AsString+'|');

    writeln(arch, '');

    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  closefile(arch);

  //Creando archivo de Transferencia
  dm.Query1.Close;
  dm.Query1.SQL.Clear;
  dm.Query1.SQL.Add('select t.emp_codigo, d.pro_codigo, d.det_cantidad');
  dm.Query1.SQL.Add('from det_transfer d, transfer t');
  dm.Query1.SQL.Add('where d.emp_codigo = t.emp_codigo');
  dm.Query1.SQL.Add('and d.tra_numero = t.tra_numero');
  dm.Query1.SQL.Add('and d.emp_codigo = :emp');
  dm.Query1.SQL.Add('and d.tra_numero = :num');
  dm.Query1.Parameters.ParamByName('emp').Value    := dm.vp_cia;
  dm.Query1.Parameters.ParamByName('num').Value    := QTransTRA_NUMERO.Value;
  dm.Query1.Open;

  AssignFile(arch, 'transferencia.txt');
  rewrite(arch);

  dm.Query1.DisableControls;

  for a := 0 to dm.Query1.FieldCount-1 do
    write(arch, dm.Query1.Fields[a].FieldName+'|');
  writeln(arch, '');
  while not dm.Query1.EOF do
  begin
    for a := 0 to dm.Query1.FieldCount-1 do
      write(arch, dm.Query1.FieldByName(dm.Query1.Fields[a].FieldName).AsString+'|');

    writeln(arch, '');

    dm.Query1.Next;
  end;
  dm.Query1.EnableControls;
  closefile(arch);
end;

procedure TfrmTransferencia.BitBtn2Click(Sender: TObject);
var
  dirlocal, dirsave : string;
begin
  if SaveDialog1.Execute then
  begin
    dirlocal := copy(uppercase(Application.ExeName),1,pos('SIGMA.EXE',uppercase(Application.ExeName))-1);
    dirsave := copy(SaveDialog1.FileName, 1, pos('productos.txt',SaveDialog1.FileName)-1);
    CopyFile(pchar(dirlocal+'\productos.txt'), pchar(dirsave+'\productos.txt'), false);
    CopyFile(pchar(dirlocal+'\deptos.txt'), pchar(dirsave+'\deptos.txt'), false);
    CopyFile(pchar(dirlocal+'\familias.txt'), pchar(dirsave+'\familias.txt'), false);
    CopyFile(pchar(dirlocal+'\marcas.txt'), pchar(dirsave+'\marcas.txt'), false);
    CopyFile(pchar(dirlocal+'\proveedores.txt'), pchar(dirsave+'\proveedores.txt'), false);
    CopyFile(pchar(dirlocal+'\transferencia.txt'), pchar(dirsave+'\transferencia.txt'), false);
  end;
end;

procedure TfrmTransferencia.SpeedButton1Click(Sender: TObject);
var
  a : integer;
begin
  Search.AliasFields.clear;
  Search.AliasFields.add('Numero');
  Search.AliasFields.add('Nombre del Cliente');
  Search.Query.clear;
  Search.Query.add('select ped_numero, ped_nombre');
  Search.Query.add('from pedidos');
  Search.Query.add('where emp_codigo = '+inttostr(dm.vp_cia));
  Search.Query.add('and ped_tipo = '+#39+'C'+#39);
  Search.Query.add('and ped_status = '+#39+'EMI'+#39);
  Search.ResultField := 'ped_numero';
  Search.Title := 'Pedido del Cliente';
  if Search.execute then
  begin
    QDetalle.close;
    QDetalle.open;
  
    Query1.close;
    Query1.sql.clear;
    Query1.sql.add('select d.pro_codigo, d.pro_roriginal, d.pro_rfabric, d.det_medida,');
    Query1.sql.add('d.det_cantidad, d.det_precio, d.det_conitbis, d.det_itbis,');
    Query1.sql.add('d.det_descuento, d.det_descripcion, d.det_manejaescala, d.det_Escala,');
    Query1.sql.add('p.pro_Servicio');
    Query1.sql.add('from det_pedido d, productos p');
    Query1.sql.add('where d.pro_codigo = p.pro_codigo');
    Query1.sql.add('and d.emp_codigo = :emp');
    Query1.sql.add('and p.emp_codigo = :empinv');
    Query1.sql.add('and d.ped_tipo = '+#39+'C'+#39);
    Query1.sql.add('and d.ped_numero = :numero');
    Query1.Parameters.parambyname('emp').Value    := dm.vp_cia;
    Query1.Parameters.parambyname('empinv').Value := dm.QParametrosPAR_INVEMPRESA.Value;
    Query1.Parameters.parambyname('numero').Value := strtoint(search.valuefield);
    Query1.open;

    a := 0;
    QDetalle.DisableControls;
    while not Query1.eof do
    begin
      a := a + 1;
      QDetalle.append;
      QDetalleEMP_CODIGO.value    := dm.vp_cia;
      QDetalleDET_SECUENCIA.value := a;
      QDetalleDET_CANTIDAD.value  := Query1.fieldbyname('det_cantidad').asfloat;
      QDetallePRO_NOMBRE.Value    := Query1.FieldByName('det_descripcion').AsString;
      QDetalleDET_MEDIDA.Value    := Query1.fieldbyname('det_medida').asstring;
      QDetallePRO_CODIGO.value    := Query1.fieldbyname('pro_codigo').asinteger;
      QDetallePRO_RORIGINAL.value := Query1.fieldbyname('pro_roriginal').asstring;
      QDetallePRO_RFABRIC.value   := Query1.fieldbyname('pro_rfabric').asstring;
      QDetalle.post;
      Query1.next;
    end;
    QDetalle.EnableControls;
    QDetalle.First;
  end;
end;

procedure TfrmTransferencia.FormPaint(Sender: TObject);
begin
  Top := 5;
  Left := 0;
end;

procedure TfrmTransferencia.QDetalleNewRecord(DataSet: TDataSet);
begin
  QDetalleDET_MEDIDA.Value  := QTranstra_medida_almacen1.Value;
  QDetalledet_medida2.Value := QTranstra_medida_almacen2.Value;
  QDetallesuc_codigo.Value := QSucursalsuc_codigo.Value;

end;

procedure TfrmTransferencia.QDetalleDET_CANTIDADChange(Sender: TField);
begin
  if not QDetalledet_Cantidad.IsNull then
  begin
    if QDetalleDET_MEDIDA.Value = 'Emp' then
    begin
      if qdetalledet_medida2.Value = 'Und' then
        QDetalledet_cantidad2.Value := QDetalleDET_CANTIDAD.Value * QDetallepro_cantempaque.Value
      else
        QDetalledet_cantidad2.Value := QDetalleDET_CANTIDAD.Value;
    end
    else
      QDetalledet_cantidad2.Value := QDetalleDET_CANTIDAD.Value;
  end;
end;

procedure TfrmTransferencia.bteliminarClick(Sender: TObject);
begin
  if MessageDlg('DESEA ELIMINAR ESTE PRODUCTO?',mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
    QDetalle.Delete;
  end;
  Grid.SetFocus;
end;

procedure TfrmTransferencia.Buscarproductoenellistado1Click(
  Sender: TObject);
var
  nom : string;
begin
  nom := InputBox('Buscar producto', 'Nombre', '');
  if length(nom) > 0 then
  begin
    if not QDetalle.Locate('pro_nombre', nom, [loPartialKey]) then
    begin
      MessageDlg('Producto no encontrato en la lista', mtError, [mbOK], 0);
      Grid.SetFocus;
    end;
  end;
end;

procedure TfrmTransferencia.QDetalleBeforeEdit(DataSet: TDataSet);
begin
  Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
end;

procedure TfrmTransferencia.QDetalleBeforePost(DataSet: TDataSet);
begin
      if (QTrans.State in [dsinsert, dsedit]) then begin
      if (edDesde.Text <> '')  then begin
      Lista.Items.Add(IntToStr(QDetallePRO_CODIGO.Value));
      if VerificarAlmNegativo(StrToInt(edDesde.Text)) = False then begin
      QTransTRA_ALMACEN1.Value := StrToInt(edDesde.Text);
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select isnull(exi_cantidad,0) cant from existencias e where emp_codigo = :emp and alm_codigo = :alm and pro_codigo = :pro');
      dm.Query1.Parameters.ParamByName('emp').Value  := QTransEMP_CODIGO.Value;//dm.QParametrosPAR_INVEMPRESA.Value;
      dm.Query1.Parameters.ParamByName('alm').Value  := QTransTRA_ALMACEN1.Value;
      dm.Query1.Parameters.ParamByName('pro').Value  := QDetallePRO_CODIGO.Value;
      dm.Query1.Open;
      if not dm.Query1.IsEmpty then begin
      if (dm.Query1.FieldByName('cant').Value < QDetalleDET_CANTIDAD.Value)  then
      begin
        MessageDlg('NO HAY SUFICIENTE DE ESTE PRODUCTO PARA'+#13+
                   'TRANSFERIR ESTA CANTIDAD',mtError,[mbok],0);

        Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
        QDetalleDET_CANTIDAD.Value := 0;
        Grid.SelectedIndex := 2;
        abort;
      end;
      end
      else
      if QDetalleDET_CANTIDAD.Value <=0  then
      begin
        MessageDlg('NO SE PUEDE TRANSFERIR NEGATIVO O EN CERO',mtError,[mbok],0);

        Lista.Items.Delete(Lista.Items.IndexOf(IntToStr(QDetallePRO_CODIGO.Value)));
        QDetalleDET_CANTIDAD.Value := 0;
        Grid.SelectedIndex := 2;

        abort;
      end;
      end;
      end;
      end;
end;

function TfrmTransferencia.VerificarAlmNegativo(vp_alm: Integer): Boolean;
begin
with dm.Query1 do begin
Close;
SQL.Clear;
SQL.Add('select isnull(alm_existneg,''False'') NegPos from almacen where emp_codigo = :emp and alm_codigo = :alm');
Parameters.ParamByName('emp').DataType := ftInteger;
Parameters.ParamByName('alm').DataType := ftInteger;
Parameters.ParamByName('emp').Value := DM.vp_cia;
Parameters.ParamByName('alm').Value := vp_alm;
Open;
if not IsEmpty then
Result := FieldByName('NegPos').Value;
Close;



end;
end;

end.

