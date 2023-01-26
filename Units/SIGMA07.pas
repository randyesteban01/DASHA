unit SIGMA07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, ActnList, cxControls,
  cxContainer, cxTreeView, dxNavBarCollns, cxClasses, dxNavBarBase,
  dxNavBar, ImgList, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  ComCtrls, Menus, cxLookAndFeelPainters, cxButtons, cxExportGrid4Link,
  cxTimeEdit, cxCheckBox, cxDropDownEdit, cxDBLookupComboBox;

type
  TfrmAdministracion = class(TForm)
    ActionList1: TActionList;
    aInsert: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aPost: TAction;
    aCancel: TAction;
    aFind: TAction;
    aPrint: TAction;
    aExit: TAction;
    aDarAlta: TAction;
    Panel7: TPanel;
    ImageList1: TImageList;
    dxNavMenu: TdxNavBar;
    navMaestros: TdxNavBarGroup;
    navMaestrosControl: TdxNavBarGroupControl;
    tvMaestros: TcxTreeView;
    Panel1: TPanel;
    BitBtn16: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn6: TBitBtn;
    cxGridComunDBTableView1: TcxGridDBTableView;
    cxGridComunLevel1: TcxGridLevel;
    cxGridComun: TcxGrid;
    QMaestros: TADOQuery;
    dsMaestros: TDataSource;
    aExcel: TAction;
    aXML: TAction;
    cxButton1: TcxButton;
    mExportar: TPopupMenu;
    Excel1: TMenuItem;
    PDF1: TMenuItem;
    SaveDialog1: TSaveDialog;
    QCuentas: TADOQuery;
    dsCuentas: TDataSource;
    cxGridComunDBTableView1Column1: TcxGridDBColumn;
    QCuentasCuenta: TStringField;
    QCuentasNombre: TStringField;
    QGrupo: TADOQuery;
    QGrupoemp_codigo: TIntegerField;
    QGrupoGrupoID: TIntegerField;
    QGrupoNombre: TStringField;
    QGrupoOperacion: TStringField;
    dsGrupo: TDataSource;
    QSubrupo: TADOQuery;
    QSubrupoemp_codigo: TIntegerField;
    QSubrupoGrupoID: TIntegerField;
    QSubrupoSubgrupoID: TIntegerField;
    QSubrupoNombre: TStringField;
    dsSubgrupo: TDataSource;
    QConceptos: TADOQuery;
    QConceptosemp_codigo: TIntegerField;
    QConceptosGrupoID: TIntegerField;
    QConceptosSubgrupoID: TIntegerField;
    QConceptosConceptoID: TIntegerField;
    QConceptosNombre: TStringField;
    dsConceptos: TDataSource;
    QTiposDoc: TADOQuery;
    QTiposDoctdo_codigo: TStringField;
    QTiposDoctdo_nombre: TStringField;
    dsTiposDoc: TDataSource;
    qLocalidades: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DSLocalidades: TDataSource;
    dsSucursal: TDataSource;
    QSucursal: TADOQuery;
    QSucursalEMP_CODIGO: TIntegerField;
    QSucursalSUC_DIRECCION: TStringField;
    QSucursalSUC_EMAIL: TStringField;
    QSucursalSUC_FAX: TStringField;
    QSucursalSUC_LOCALIDAD: TStringField;
    QSucursalSUC_NOMBRE: TStringField;
    QSucursalSUC_RNC: TStringField;
    QSucursalSUC_STATUS: TStringField;
    QSucursalSUC_TELEFONO: TStringField;
    QSucursalSUC_CODIGO: TIntegerField;
    QSucursalALM_CODIGO: TIntegerField;
    QSucursalSUC_GENERANCF: TStringField;
    QSucursalcont_numeroSucursal: TStringField;
    procedure FormPaint(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QMaestrosAfterPost(DataSet: TDataSet);
    procedure aDeleteExecute(Sender: TObject);
    procedure aExcelExecute(Sender: TObject);
    procedure aXMLExecute(Sender: TObject);
    procedure tvMaestrosChange(Sender: TObject; Node: TTreeNode);
    procedure QMaestrosBeforePost(DataSet: TDataSet);
    procedure cxGridComunTableView1Column1PropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure QMaestrosNewRecord(DataSet: TDataSet);
    procedure qLocalidadesAfterPost(DataSet: TDataSet);
    procedure QMaestrosAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdministracion: TfrmAdministracion;

implementation

uses SIGMA00, SIGMA01;

{$R *.dfm}

procedure TfrmAdministracion.FormPaint(Sender: TObject);
begin
  with frmAdministracion do
  begin
    Top  := 2;
    Left := frmMain.Width - (frmMain.Width - 5);
    width := frmMain.Width - 230;
    height := frmMain.Height - 130;
  end;
end;

procedure TfrmAdministracion.aExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmAdministracion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if MessageDlg('Desea salir y cancelar?',mtConfirmation,[mbyes,mbno],0) = mryes then
    action := cafree
  else
    abort;
end;

procedure TfrmAdministracion.QMaestrosAfterPost(DataSet: TDataSet);
begin
  QMaestros.UpdateBatch;
end;

procedure TfrmAdministracion.aDeleteExecute(Sender: TObject);
begin
  if MessageDlg('Desea eliminar este registro?',mtConfirmation, [mbyes,mbno],0) = mryes then
  begin
    QMaestros.Delete;
    QMaestros.UpdateBatch;
  end;
end;

procedure TfrmAdministracion.aExcelExecute(Sender: TObject);
begin
  SaveDialog1.DefaultExt := '.xls';
  if SaveDialog1.Execute then
  begin
    ExportGrid4ToExcel(SaveDialog1.FileName, cxGridComun, true, true, true, 'xls');
  end;
end;

procedure TfrmAdministracion.aXMLExecute(Sender: TObject);
begin
  SaveDialog1.DefaultExt := '.xml';
  if SaveDialog1.Execute then
  begin
    ExportGrid4ToXML(SaveDialog1.FileName, cxGridComun, true, true, 'xml');
  end;
end;

procedure TfrmAdministracion.cxGridComunTableView1Column1PropertiesEditValueChanged(Sender: TObject);
var
  ACheck: TcxCheckBox;
  AGridSite: TcxGridSite;
  AView: TcxGridTableView;
  ACombo : TcxComboBox;
  i: Integer;
begin
  if (Sender.ClassType = TcxCheckBox) then
  begin
    ACheck := Sender as TcxCheckBox;
    AGridSite :=  ACheck.Parent as TcxGridSite;
    AView := AGridSite.GridView as TcxGridTableView;
    AView.Controller.EditingController.HideEdit(true);
    AView.BeginUpdate;
    try
      if AView.Controller.FocusedRecord.Values[0] = true then
        for i := 0 to AView.DataController.RecordCount - 1 do
          if i <> AView.DataController.FocusedRecordIndex then
            AView.DataController.Values[i, 0] := false;
    finally
      AView.EndUpdate;
      AView.Controller.EditingController.ShowEdit();
      if QMaestros.State = dsEdit then
      begin
        QMaestros.UpdateBatch;
      end
    end;
  end
  else if (Sender.ClassType = TcxComboBox) then
  begin
    ACombo := Sender as TcxComboBox;
    AGridSite :=  ACombo.Parent as TcxGridSite;
    AView := AGridSite.GridView as TcxGridTableView;
    AView.Controller.EditingController.HideEdit(true);
    AView.BeginUpdate;
    try
      if AView.Controller.FocusedRecord.Values[0] = true then
        for i := 0 to AView.DataController.RecordCount - 1 do
          if i <> AView.DataController.FocusedRecordIndex then
            AView.DataController.Values[i, 0] := false;
    finally
      AView.EndUpdate;
      AView.Controller.EditingController.ShowEdit();
      if QMaestros.State = dsEdit then
      begin
        QMaestros.UpdateBatch;
      end
    end;
  end;
end;

procedure TfrmAdministracion.tvMaestrosChange(Sender: TObject;
  Node: TTreeNode);
var
  a : integer;
  ck : TcxCustomEditProperties;
begin
  screen.Cursor := crHourGlass;
  case tvMaestros.Selected.Index of
  0 : //Camiones
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select CamionID, Marca, Modelo, Placa, Chofer, Metraje, Compania');
      QMaestros.SQL.Add('from camiones');
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[1].Width := 140;
      cxGridComunDBTableView1.Columns[2].Width := 140;
      cxGridComunDBTableView1.Columns[3].Width := 140;
      cxGridComunDBTableView1.Columns[4].Width := 140;
      cxGridComunDBTableView1.Columns[5].Width := 140;
      cxGridComunDBTableView1.Columns[6].Width := 140;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  1 : //Conceptos
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, con_codigo as Codigo, con_nombre as Nombre, cat_cuenta as Cuenta');
      QMaestros.SQL.Add('from conceptos');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[2].Width := 300;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;

      cxGridComunDBTableView1.Columns[3].PropertiesClass := TcxLookupComboBoxProperties;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).ListSource := dsCuentas;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).ListFieldNames := 'Nombre;Cuenta';
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).KeyFieldNames := 'Cuenta';
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).DropDownWidth := 300;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).GridMode := false;
      cxGridComunDBTableView1.Columns[3].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[3].Width := 300;
    end;
  2 : //Condiciones de Pago
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, cpa_codigo as Codigo, cpa_nombre as Nombre, cpa_dias as Dias');
      QMaestros.SQL.Add('from Condiciones');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
      cxGridComunDBTableView1.Columns[0].Visible := false;
    end;
  3 : //Courriers
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, cou_codigo as Codigo, cou_nombre as Nombre, cou_direccion_envio as Direccion_Envio');
      QMaestros.SQL.Add('from courriers');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[2].Width := 300;
      cxGridComunDBTableView1.Columns[3].Width := 300;
    end;
  4 : //Formas de pago
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, fpa_codigo as Codigo, fpa_nombre as Nombre, fpa_espdescrip as Especificar_Detalle,');
      QMaestros.SQL.Add('cat_cuenta as Cuenta, fpa_pantalladevolver as Pantalla_Devolucion, fpa_sumaefectivocuadre as Suma_Cuadre,');
      QMaestros.SQL.Add('fpa_actualizabalance as Actualiza_Bce');
      QMaestros.SQL.Add('from formaspago');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;

      cxGridComunDBTableView1.Columns[4].PropertiesClass := TcxLookupComboBoxProperties;
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).ListSource := dsCuentas;
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).ListFieldNames := 'Nombre;Cuenta';
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).KeyFieldNames := 'Cuenta';
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).DropDownWidth := 300;
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).GridMode := false;
      cxGridComunDBTableView1.Columns[4].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[4].Width := 300;

      cxGridComunDBTableView1.Columns[3].PropertiesClassName := 'TcxCheckBoxProperties';
      cxGridComunDBTableView1.Columns[3].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[3].Width := 120;

      cxGridComunDBTableView1.Columns[5].PropertiesClassName := 'TcxCheckBoxProperties';
      cxGridComunDBTableView1.Columns[5].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[5].Width := 120;

      cxGridComunDBTableView1.Columns[6].PropertiesClassName := 'TcxCheckBoxProperties';
      cxGridComunDBTableView1.Columns[6].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[6].Width := 95;

      cxGridComunDBTableView1.Columns[7].PropertiesClassName := 'TcxCheckBoxProperties';
      cxGridComunDBTableView1.Columns[7].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[7].Width := 95;

      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  5 : //Gastos aduanales
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, gas_codigo as Codigo, gas_nombre as Nombre, cat_cuenta as Cuenta');
      QMaestros.SQL.Add('from gastos_aduanales');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[2].Width := 300;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;

      cxGridComunDBTableView1.Columns[3].PropertiesClass := TcxLookupComboBoxProperties;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).ListSource := dsCuentas;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).ListFieldNames := 'Nombre;Cuenta';
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).KeyFieldNames := 'Cuenta';
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).DropDownWidth := 300;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).GridMode := false;
      cxGridComunDBTableView1.Columns[3].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[3].Width := 300;
    end;
  6 : //Medidores
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select MedidorID as Codigo, Nombre, Secuencia');
      QMaestros.SQL.Add('from medidores');
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  7 : //Motivos de anulacion
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, manu_codigo as Codigo, manu_nombre as Nombre');
      QMaestros.SQL.Add('from Motivo_Anulacion');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  8 : //Motivos de devolucion
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, mot_codigo as Codigo, mot_nombre as Nombre');
      QMaestros.SQL.Add('from motivo_devolucion');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  9 : //Moneda
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, mon_codigo as Codigo, mon_nombre as Nombre, mon_sigla as Sigla,');
      QMaestros.SQL.Add('mon_relacionpesoventa as Tasa_Venta, mon_relacionpesocompra as Tasa_Compra');
      QMaestros.SQL.Add('from moneda');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[3].Width := 60;
      (QMaestros.Fields[4] as TBCDField).currency := true;
      (QMaestros.Fields[5] as TBCDField).currency := true;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  10 : //Preventas
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, pre_codigo as Codigo, pre_nombre as Nombre,');
      QMaestros.SQL.Add('pre_telefono as Telefono, pre_celular as Celular');
      QMaestros.SQL.Add('from preventas');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  11 : //Provincias
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, pro_codigo as Codigo, pro_nombre as Nombre');
      QMaestros.SQL.Add('from provincias');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  12 : //Retenciones
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, ret_codigo as Codigo, ret_nombre as Nombre, ret_porciento as Porciento,');
      QMaestros.SQL.Add('cat_cuenta as Cuenta');
      QMaestros.SQL.Add('from retenciones');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[2].Width := 300;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;

      cxGridComunDBTableView1.Columns[4].PropertiesClass := TcxLookupComboBoxProperties;
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).ListSource := dsCuentas;
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).ListFieldNames := 'Nombre;Cuenta';
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).KeyFieldNames := 'Cuenta';
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).DropDownWidth := 300;
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).GridMode := false;
      cxGridComunDBTableView1.Columns[4].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[4].Width := 300;
    end;
  13 : //Tipos de cliente
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, tcl_codigo as Codigo, tcl_nombre as Nombre, tcl_precio as Precio');
      QMaestros.SQL.Add('from tipoclientes');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[3].Width := 60;
      cxGridComunDBTableView1.Columns[3].PropertiesClass := TcxComboBoxProperties;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxComboBoxProperties).Items.Add('Precio1');
      (cxGridComunDBTableView1.Columns[3].Properties as TcxComboBoxProperties).Items.Add('Precio2');
      (cxGridComunDBTableView1.Columns[3].Properties as TcxComboBoxProperties).Items.Add('Precio3');
      (cxGridComunDBTableView1.Columns[3].Properties as TcxComboBoxProperties).Items.Add('Precio4');
      cxGridComunDBTableView1.Columns[3].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;

      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  14 : //Tipos de comprobantes
    begin
      if not QTiposDoc.Active then QTiposDoc.Open;
      
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, tip_codigo as Codigo, tip_nombre as Nombre, tdo_codigo as Documento,');
      QMaestros.SQL.Add('tip_rnc as Requiere_RNC');
      QMaestros.SQL.Add('from TipoNCF');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[2].Width := 300;

      cxGridComunDBTableView1.Columns[3].PropertiesClass := TcxLookupComboBoxProperties;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).ListSource := dsTiposDoc;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).ListFieldNames := 'tdo_nombre;tdo_codigo';
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).KeyFieldNames := 'tdo_codigo';
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).DropDownWidth := 300;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).GridMode := false;
      cxGridComunDBTableView1.Columns[3].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[3].Width := 200;

      cxGridComunDBTableView1.Columns[4].Width := 160;
      cxGridComunDBTableView1.Columns[4].PropertiesClass := TcxComboBoxProperties;
      (cxGridComunDBTableView1.Columns[4].Properties as TcxComboBoxProperties).Items.Add('Si');
      (cxGridComunDBTableView1.Columns[4].Properties as TcxComboBoxProperties).Items.Add('No');
      cxGridComunDBTableView1.Columns[4].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  15 : //Tipos de movimiento
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, tmo_codigo as Codigo, tmo_nombre as Nombre, tmo_siglas as Sigla');
      QMaestros.SQL.Add('from tiposmov');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[3].Width := 50;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  16 : //Tipos de proveedor
    begin
      if not QGrupo.Active     then QGrupo.Open;
      if not QSubrupo.Active   then QSubrupo.Open;
      if not QConceptos.Active then QConceptos.Open;
      
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, tip_codigo as Codigo, tip_nombre as Nombre, Cashflow_Grupo,');
      QMaestros.SQL.Add('Cashflow_Subgrupo, Cashflow_Concepto');
      QMaestros.SQL.Add('from tipo_proveedor');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QParametrosPAR_INVEMPRESA.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[2].Width := 200;

      cxGridComunDBTableView1.Columns[3].PropertiesClass := TcxLookupComboBoxProperties;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).ListSource := dsGrupo;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).ListFieldNames := 'Nombre;GrupoID';
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).KeyFieldNames := 'GrupoID';
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).DropDownWidth := 300;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).GridMode := false;
      cxGridComunDBTableView1.Columns[3].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[3].Width := 200;

      cxGridComunDBTableView1.Columns[4].PropertiesClass := TcxLookupComboBoxProperties;
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).ListSource := dsSubgrupo;
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).ListFieldNames := 'Nombre;SubgrupoID';
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).KeyFieldNames := 'SubgrupoID';
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).DropDownWidth := 300;
      (cxGridComunDBTableView1.Columns[4].Properties as TcxLookupComboBoxProperties).GridMode := false;
      cxGridComunDBTableView1.Columns[4].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[4].Width := 200;

      cxGridComunDBTableView1.Columns[5].PropertiesClass := TcxLookupComboBoxProperties;
      (cxGridComunDBTableView1.Columns[5].Properties as TcxLookupComboBoxProperties).ListSource := dsConceptos;
      (cxGridComunDBTableView1.Columns[5].Properties as TcxLookupComboBoxProperties).ListFieldNames := 'Nombre;ConceptoID';
      (cxGridComunDBTableView1.Columns[5].Properties as TcxLookupComboBoxProperties).KeyFieldNames := 'ConceptoID';
      (cxGridComunDBTableView1.Columns[5].Properties as TcxLookupComboBoxProperties).DropDownWidth := 300;
      (cxGridComunDBTableView1.Columns[5].Properties as TcxLookupComboBoxProperties).GridMode := false;
      cxGridComunDBTableView1.Columns[5].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[5].Width := 200;

      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  17 : //Vendedores
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, ven_codigo as Codigo, ven_nombre as Nombre, ven_telefono as Telefono,');
      QMaestros.SQL.Add('ven_celular as Celular, ven_comision_cobro as Comision_Cobro, ven_comision_venta as Comision_Venta,');
      QMaestros.SQL.Add('ven_comcobro as Porciento_Cobro, ven_comventa as Porciento_Venta,');
      QMaestros.SQL.Add('ven_fecha_entrada as Fecha_Entrada, ven_email as Correo');
      QMaestros.SQL.Add('from vendedores');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[2].Width := 300;

      cxGridComunDBTableView1.Columns[5].PropertiesClassName := 'TcxCheckBoxProperties';
      cxGridComunDBTableView1.Columns[5].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[5].Width := 110;

      cxGridComunDBTableView1.Columns[6].PropertiesClassName := 'TcxCheckBoxProperties';
      cxGridComunDBTableView1.Columns[6].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[6].Width := 110;

      cxGridComunDBTableView1.Columns[7].Width := 110;
      cxGridComunDBTableView1.Columns[8].Width := 110;

      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;

    18 : //Fichas Transporte
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, ficha_id as Codigo, ficha_nombre as Nombre, ficha_propietario Propietario, ficha_placa Placa, ficha_chofer Chofer, usu_codigo');
      QMaestros.SQL.Add('from Fichas_Transp');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[6].Visible := false;
      cxGridComunDBTableView1.Columns[1].Width := 100;
      cxGridComunDBTableView1.Columns[2].Width := 200;
      cxGridComunDBTableView1.Columns[3].Width := 100;
      cxGridComunDBTableView1.Columns[4].Width := 200;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
    19 : //Conceptos de Envios
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do
        cxGridComunDBTableView1.Columns[0].Destroy;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('select emp_codigo, con_codigo as Codigo, con_nombre as Nombre');
      QMaestros.SQL.Add('from Conceptos_Envios');
      QMaestros.SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;
      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[2].Width := 300;
      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;

     { cxGridComunDBTableView1.Columns[3].PropertiesClass := TcxLookupComboBoxProperties;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).ListSource := dsCuentas;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).ListFieldNames := 'Nombre';
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).KeyFieldNames := 'Cuenta';
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).DropDownWidth := 300;
      (cxGridComunDBTableView1.Columns[3].Properties as TcxLookupComboBoxProperties).GridMode := false;
      cxGridComunDBTableView1.Columns[3].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[3].Width := 300;}
    end;
     20 : //Localidades
    begin
      for a := 0 to cxGridComunDBTableView1.ColumnCount -1 do begin
        cxGridComunDBTableView1.Columns[0].Destroy;
        end;

      cxGridComunDBTableView1.DataController.DataSource := nil;
      QMaestros.Close;
      QMaestros.SQL.Clear;
      QMaestros.SQL.Add('SELECT emp_codigo, fechaC, usu_creacion, fechaM, loc_codigo Codigo, loc_nombre Nombre, loc_descripcion Descripcion, suc_codigo');
      QMaestros.SQL.Add(',usu_modifica');
      QMaestros.SQL.Add('FROM dbo.Localidades');
      QMaestros.SQL.Add('WHERE emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
      QMaestros.SQL.Add('order by 1');
      QMaestros.Open;
      for a := 0 to QMaestros.FieldCount-1 do
      begin
        cxGridComunDBTableView1.CreateColumn;
        cxGridComunDBTableView1.Columns[a].DataBinding.FieldName := QMaestros.Fields[a].FieldName;
      end;

      cxGridComunDBTableView1.Columns[0].Visible := false;
      cxGridComunDBTableView1.Columns[1].Visible := false;
      cxGridComunDBTableView1.Columns[2].Visible := false;
      cxGridComunDBTableView1.Columns[3].Visible := false;
      cxGridComunDBTableView1.Columns[8].Visible := false;


      cxGridComunDBTableView1.Columns[4].Width := 100;
      cxGridComunDBTableView1.Columns[5].Width := 300;
      cxGridComunDBTableView1.Columns[6].Width := 400;
      cxGridComunDBTableView1.Columns[7].Width := 500;



      cxGridComunDBTableView1.Columns[7].PropertiesClass := TcxLookupComboBoxProperties;
       cxGridComunDBTableView1.Columns[7].Caption := 'SUCURSAL';
      (cxGridComunDBTableView1.Columns[7].Properties as TcxLookupComboBoxProperties).ListSource := dsSucursal;
      (cxGridComunDBTableView1.Columns[7].Properties as TcxLookupComboBoxProperties).ListFieldNames := 'SUC_NOMBRE';
      (cxGridComunDBTableView1.Columns[7].Properties as TcxLookupComboBoxProperties).KeyFieldNames := 'SUC_CODIGO';
      (cxGridComunDBTableView1.Columns[7].Properties as TcxLookupComboBoxProperties).DropDownWidth := 300;
      (cxGridComunDBTableView1.Columns[7].Properties as TcxLookupComboBoxProperties).GridMode := false;
      cxGridComunDBTableView1.Columns[7].Properties.OnChange := cxGridComunTableView1Column1PropertiesEditValueChanged;
      cxGridComunDBTableView1.Columns[7].Width := 500;


      cxGridComunDBTableView1.DataController.DataSource := dsMaestros;
    end;
  end;
  screen.Cursor := crDefault;
end;

procedure TfrmAdministracion.QMaestrosBeforePost(DataSet: TDataSet);
begin
  if QMaestros.State = dsInsert then
  begin
    case tvMaestros.Selected.Index of
    0 : begin
          //Camiones
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(CamionID),0) as maximo');
          dm.query1.sql.add('from camiones');
          dm.query1.open;
          QMaestros.FieldByName('CamionID').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    1 : begin
          //Conceptos
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(con_codigo),0) as maximo');
          dm.query1.sql.add('from conceptos');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    2 : begin
          //Condiciones de pago
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(cpa_codigo),0) as maximo');
          dm.query1.sql.add('from condiciones');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    3 : begin
          //courriers
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(cou_codigo),0) as maximo');
          dm.query1.sql.add('from courriers');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    4 : begin
          //formas de pago
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(fpa_codigo),0) as maximo');
          dm.query1.sql.add('from formaspago');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    5 : begin
          //Gastos aduanales
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(gas_codigo),0) as maximo');
          dm.query1.sql.add('from gastos_aduanales');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    6 : begin
          //Medidores
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(MedidorID),0) as maximo');
          dm.query1.sql.add('from medidores');
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    7 : begin
          //Motivos de anulacion
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(manu_codigo),0) as maximo');
          dm.query1.sql.add('from Motivo_Anulacion');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    8 : begin
          //Motivos de devolucion
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(mot_codigo),0) as maximo');
          dm.query1.sql.add('from motivo_devolucion');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    9 : begin
          //Moneda
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(mon_codigo),0) as maximo');
          dm.query1.sql.add('from moneda');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    10 : begin
          //Preventas
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(pre_codigo),0) as maximo');
          dm.query1.sql.add('from preventas');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    11 : begin
          //Provincias
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(pro_codigo),0) as maximo');
          dm.query1.sql.add('from provincias');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    12: begin
          //Retenciones
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(ret_codigo),0) as maximo');
          dm.query1.sql.add('from retenciones');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    13: begin
          //Tipos de cliente
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(tcl_codigo),0) as maximo');
          dm.query1.sql.add('from tipoclientes');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    14: begin
          //Tipos de comprobante
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(tip_codigo),0) as maximo');
          dm.query1.sql.add('from TipoNCF');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    15: begin
          //Tipos de movimiento
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(tmo_codigo),0) as maximo');
          dm.query1.sql.add('from tiposmov');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    16: begin
          //Tipos de proveedor
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(tip_codigo),0) as maximo');
          dm.query1.sql.add('from tipo_proveedor');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QParametrosPAR_INVEMPRESA.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;
    17: begin
          //Vendedores
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(ven_codigo),0) as maximo');
          dm.query1.sql.add('from vendedores');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
        end;

    18: begin
          //Fichas Transporte
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(ficha_id),0) as maximo');
          dm.query1.sql.add('from Fichas_Transp');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;

        end;

    19 : begin
          //Conceptos
          QMaestros.FieldByName('emp_codigo').Value := dm.QEmpresasEMP_CODIGO.Value;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(con_codigo),0) as maximo');
          dm.query1.sql.add('from Conceptos_Envios');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.QEmpresasEMP_CODIGO.value;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
    end;
    20 : begin
          //Localidades
          if QMaestros.FieldByName('suc_codigo').IsNull then begin
            ShowMessage('DEBES INDICAR LA SUCURSAL..');
            Abort;
          end;
          QMaestros.FieldByName('usu_creacion').Value := DM.Usuario;
          QMaestros.FieldByName('fechaC').Value := dm.getFechaBDA;
          QMaestros.FieldByName('emp_codigo').Value := DM.vp_cia;
          dm.query1.close;
          dm.query1.sql.clear;
          dm.query1.sql.add('select isnull(max(loc_codigo),0) as maximo');
          dm.query1.sql.add('from Localidades');
          dm.query1.sql.add('where emp_codigo = :emp');
          dm.query1.Parameters.parambyname('emp').Value := dm.vp_cia;
          dm.query1.open;
          QMaestros.FieldByName('Codigo').Value := dm.query1.fieldbyname('maximo').asinteger +1;
    end;
    end;
  end;
end;

procedure TfrmAdministracion.FormActivate(Sender: TObject);
begin
  if not QCuentas.Active then QCuentas.Open;
end;

procedure TfrmAdministracion.QMaestrosNewRecord(DataSet: TDataSet);
begin
if QMaestros.State = dsInsert then
  begin
    case tvMaestros.Selected.Index of
    18: //Ficha Transporte
    begin
    QMaestros.FieldByName('emp_codigo').Value := DM.QContabEMP_CODIGO.Value;
    QMaestros.FieldByName('usu_codigo').Value := dm.vp_usuario;
    end;
    19: //Conceptos de Envio
    begin
    QMaestros.FieldByName('emp_codigo').Value := DM.QContabEMP_CODIGO.Value;
    end;

    end;
end;
end;

procedure TfrmAdministracion.qLocalidadesAfterPost(DataSet: TDataSet);
begin
  QMaestros.UpdateBatch;
end;

procedure TfrmAdministracion.QMaestrosAfterOpen(DataSet: TDataSet);
begin
QSucursal.Close;
QSucursal.Open;
end;

end.
