unit CONT47;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery, DateUtils, ADODB,
  QuerySearchDlgADO, DBCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxCurrencyEdit, cxCalendar,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, dxmdaset, cxTextEdit,
  cxContainer, cxMaskEdit, cxDropDownEdit;

type
  TfrmLibroBanco = class(TForm)
    Panel2: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    btBanco: TSpeedButton;
    Fecha1: TDateTimePicker;
    Fecha2: TDateTimePicker;
    edBanco: TEdit;
    tBanco: TEdit;
    Panel1: TPanel;
    lbCantidad: TLabel;
    btClose: TBitBtn;
    BitBtn2: TBitBtn;
    btRefresh: TBitBtn;
    QLibro: TADOQuery;
    QLibroDOCUMENTO: TIBStringField;
    QLibroNUMERO: TIntegerField;
    QLibroFECHA: TDateTimeField;
    QLibroCONCEPTO: TIBStringField;
    QLibroBENEF: TIBStringField;
    QLibroSTATUS: TIBStringField;
    QLibroBALANCE: TFloatField;
    dsLibro: TDataSource;
    Search: TQrySearchDlgADO;
    QLibroORIGEN: TIBStringField;
    QLibroMONTO: TFloatField;
    StaticText1: TStaticText;
    QLibroCONCILIADO: TIBStringField;
    QLibroDebito: TFloatField;
    QLibroCredito: TFloatField;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    lbCantCR: TStaticText;
    lbMontoCR: TStaticText;
    lbCantDB: TStaticText;
    lbMontoDB: TStaticText;
    lbBalance: TStaticText;
    QLibroid: TAutoIncField;
    QSucursal: TADOQuery;
    QSucursalsuc_codigo: TIntegerField;
    QSucursalsuc_nombre: TStringField;
    dsSuc: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label14: TLabel;
    QSucursalalm_codigo: TIntegerField;
    QSucursalemp_codigo: TIntegerField;
    cbfiltro: TComboBox;
    Memo1: TMemo;
    QLibroCONCEPTO2: TStringField;
    QLibroFECHACONC: TDateField;
    DBGrid1: TDBGrid;
    DEdt_FechaPag: TcxDateEdit;
    lbLocSuc: TLabel;
    edtSucLoc: TEdit;
    btLocalidad: TSpeedButton;
    TSucLoc: TEdit;
    procedure btBancoClick(Sender: TObject);
    procedure edBancoChange(Sender: TObject);
    procedure edBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btRefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure btCloseClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QLibroCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure cbfiltroClick(Sender: TObject);
    procedure DBGrid_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Fecha2Change(Sender: TObject);
    procedure edtSucLocChange(Sender: TObject);
    procedure edtSucLocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLocalidadClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLibroBanco: TfrmLibroBanco;

implementation

uses CONT49, SIGMA01, SIGMA00, PVenta234, Math;

{$R *.dfm}

procedure TfrmLibroBanco.btBancoClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select ban_nombre, ban_codigo');
  Search.Query.Add('from bancos');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  Search.Query.Add('and suc_codigo = '+IntToStr(DBLookupComboBox2.KeyValue));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Bancos';
  Search.ResultField := 'ban_codigo';
  if Search.execute then
  begin
    edBanco.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and ban_codigo = :cod');
    dm.Query1.SQL.Add('and suc_codigo = :suc');
    dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
    dm.Query1.Open;
    tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmLibroBanco.edBancoChange(Sender: TObject);
begin
  if Trim(edBanco.Text) = '' then tBanco.Text := '';
end;

procedure TfrmLibroBanco.edBancoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edBanco.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select ban_nombre, ban_codigo from bancos');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and ban_codigo = :cod');
      dm.Query1.SQL.Add('and suc_codigo = :suc');
      dm.Query1.Parameters.ParamByName('cod').Value := StrToInt(edBanco.Text);
      dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      dm.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      dm.Query1.Open;
      tBanco.Text := dm.Query1.FieldByName('ban_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmLibroBanco.btRefreshClick(Sender: TObject);
var
  MontoDB, MontoCR : Double;
  CantDB, CantCR, CantCK : Integer;
begin
  if Trim(edBanco.Text) <> '' then
  begin
    QLibro.Close;
    QLibro.SQL.Clear;
    QLibro.SQL := Memo1.Lines;

    case cbfiltro.ItemIndex of
    1: QLibro.SQL.Add('where documento = '+QuotedStr('CK'));
    2: QLibro.SQL.Add('where documento = '+QuotedStr('DP'));
    3: QLibro.SQL.Add('where documento = '+QuotedStr('CB'));
    //4: QLibro.SQL.Add('where documento = '+QuotedStr('CK')+ ' and FECHA <= @fecha1 AND MONTO > 0');
    end;

    QLibro.Parameters.ParamByName('emp').Value       := dm.QEmpresasEMP_CODIGO.Value;
    QLibro.Parameters.ParamByName('banco').Value     := StrToInt(Trim(edBanco.Text));
    QLibro.Parameters.ParamByName('fecha1').DataType := ftDate;
    QLibro.Parameters.ParamByName('fecha2').DataType := ftDate;
    QLibro.Parameters.ParamByName('sucloc').DataType := ftString;
    QLibro.Parameters.ParamByName('fecha1').Value    := Fecha1.Date;
    QLibro.Parameters.ParamByName('fecha2').Value    := Fecha2.Date;
    QLibro.Parameters.ParamByName('suc').Value       := DBLookupComboBox2.KeyValue;
    IF edtSucLoc.Text = '' THEN
    QLibro.Parameters.ParamByName('sucloc').Value       := null ELSE
    QLibro.Parameters.ParamByName('sucloc').Value       := edtSucLoc.Text;

    QLibro.Open;
    QLibro.DisableControls;
    CantDB  := 0;
    MontoDB := 0;
    CantCR  := 0;
    MontoCR := 0;
    CantCK  := 0;
    while not QLibro.Eof do
    begin
      if (QLibroDOCUMENTO.Value = 'CK') and
      (StrToFloat(Format('%10.2f',[QLibroMONTO.Value])) > 0) then
        IF QLibroFECHA.Value>=Fecha1.Date THEN
        CantCK := CantCK + 1;
      if QLibroORIGEN.Value = 'C' then
      begin
        IF QLibroFECHA.Value>=Fecha1.Date THEN BEGIN
        if StrToFloat(Format('%10.2f',[QLibroMONTO.Value])) > 0 then
          CantCR  := CantCR + 1;
        MontoCR := MontoCR + StrToFloat(Format('%10.2f',[QLibroMONTO.Value]));
        end;
      end
      else
      begin
        IF QLibroFECHA.Value>=Fecha1.Date THEN BEGIN
        if StrToFloat(Format('%10.2f',[QLibroMONTO.Value])) > 0 then
        CantDB  := CantDB + 1;
        MontoDB := MontoDB + StrToFloat(Format('%10.2f',[QLibroMONTO.Value]));
        end;
      end;
      QLibro.Next;
    end;
    lbBalance.Caption  := Format('%n',[QLibroBALANCE.Value]);
    QLibro.First;
    QLibro.EnableControls;
    lbCantDB.Caption   := IntToStr(CantDB)+ ' ('+IntToStr(CantCK)+' cks.)';
    lbCantCR.Caption   := IntToStr(CantCR);
    lbMontoDB.Caption  := Format('%n',[MontoDB]);
    lbMontoCR.Caption := Format('%n',[MontoCR]);


    lbCantidad.Caption := IntToStr(QLibro.RecordCount)+' Transacciones';
  end
  else
    MessageDlg('Debe seleccionar el Banco',mtError,[mbok],0);


  DBGrid1.SetFocus;


end;

procedure TfrmLibroBanco.FormCreate(Sender: TObject);
begin
  Fecha1.Date := StartOfTheMonth(Date);
  Fecha2.Date := EndOfTheMonth(Date);
  Memo1.Lines := QLibro.SQL;
  DEdt_FechaPag.Date := Now;
end;

procedure TfrmLibroBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmLibroBanco.FormPaint(Sender: TObject);
begin
  with frmLibroBanco do
  begin
    Top  := 2;
    Left := 2;
    width := frmMain.Width - 230;
    height := frmMain.Height - 120;
  end;
end;

procedure TfrmLibroBanco.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLibroBanco.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(tRepLibroBanco, RepLibroBanco);
  RepLibroBanco.lbFecha.Caption := 'Del '+DateToStr(Fecha1.Date)+' Al '+DateToStr(Fecha2.Date);
  RepLibroBanco.lbBanco.Caption := tBanco.Text;

  RepLibroBanco.QLibro.Close;
  RepLibroBanco.QLibro.SQL.Clear;
  RepLibroBanco.QLibro.SQL.Add(QLibro.SQL.GetText);
  RepLibroBanco.QLibro.Parameters.ParamByName('emp').Value       := dm.QEmpresasEMP_CODIGO.Value;
  RepLibroBanco.QLibro.Parameters.ParamByName('banco').Value     := StrToInt(Trim(edBanco.Text));
  RepLibroBanco.QLibro.Parameters.ParamByName('fecha1').DataType := ftDate;
  RepLibroBanco.QLibro.Parameters.ParamByName('fecha2').DataType := ftDate;
  RepLibroBanco.QLibro.Parameters.ParamByName('sucloc').DataType := ftString;
  RepLibroBanco.QLibro.Parameters.ParamByName('fecha1').Value    := Fecha1.Date;
  RepLibroBanco.QLibro.Parameters.ParamByName('fecha2').Value    := Fecha2.Date;
  RepLibroBanco.QLibro.Parameters.ParamByName('suc').Value       := DBLookupComboBox2.KeyValue;
  IF edtSucLoc.Text = '' THEN
    QLibro.Parameters.ParamByName('sucloc').Value       := null ELSE
    QLibro.Parameters.ParamByName('sucloc').Value       := edtSucLoc.Text;
  RepLibroBanco.QLibro.Open;
  RepLibroBanco.lbCantDB.Caption  := lbCantDB.Caption;
  RepLibroBanco.lbMontoDB.Caption := lbMontoDB.Caption;
  RepLibroBanco.lbCantCR.Caption  := lbMontoCR.Caption;
  RepLibroBanco.lbMontoCR.Caption := lbMontoCR.Caption;
  RepLibroBanco.lbBalance.Caption := lbBalance.Caption;
  RepLibroBanco.PrinterSetup;
  RepLibroBanco.Preview;
  RepLibroBanco.Destroy;
end;

procedure TfrmLibroBanco.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  t : TBookmark;
begin
  if key = vk_f2 then
  begin
    t := QLibro.GetBookmark;
    if QLibroDOCUMENTO.Value = 'CK' then
    begin
      DM.Query1.Close;
      DM.Query1.SQL.Clear;
      if QLibroCONCILIADO.Value = 'S' then
      begin
        DM.Query1.SQL.Add('update cheques set che_conciliado = '+#39+'N'+#39+',');
        if ((QLibroFECHA.Value>=Fecha1.Date) AND (QLibroFECHACONC.IsNull = False)) then
        DM.Query1.SQL.Add('CHE_FECPAGO = NULL');
        DM.Query1.SQL.Add(',che_status = '+#39+'EMI'+#39);
      end
      else
      begin
        DM.Query1.SQL.Add('update cheques set che_conciliado = '+#39+'S'+#39+',');
        DM.Query1.SQL.Add('che_status = '+#39+'PAG'+#39);
      end;
      DM.Query1.SQL.Add('where emp_codigo = :emp');
      DM.Query1.SQL.Add('and ban_codigo = :ban');
      DM.Query1.SQL.Add('and che_numero = :num');
      DM.Query1.SQL.Add('and suc_codigo = :suc');
      DM.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      DM.Query1.Parameters.ParamByName('ban').Value := StrToInt(Trim(edBanco.Text));
      DM.Query1.Parameters.ParamByName('num').Value := QLibroNUMERO.Value;
      DM.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      DM.Query1.ExecSQL;
    end
    else if QLibroDOCUMENTO.Value = 'DP' then
    begin
      DM.Query1.Close;
      DM.Query1.SQL.Clear;
      if QLibroCONCILIADO.Value = 'S' then
        DM.Query1.SQL.Add('update depositos set dep_conciliado = '+#39+'N'+#39)
      else
        DM.Query1.SQL.Add('update depositos set dep_conciliado = '+#39+'S'+#39);
      DM.Query1.SQL.Add('where emp_codigo = :emp');
      DM.Query1.SQL.Add('and ban_codigo = :ban');
      DM.Query1.SQL.Add('and dep_numero = :num');
      DM.Query1.SQL.Add('and dep_fecha = :fec');
      DM.Query1.SQL.Add('and suc_codigo = :suc');
      DM.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      DM.Query1.Parameters.ParamByName('ban').Value := StrToInt(Trim(edBanco.Text));
      DM.Query1.Parameters.ParamByName('num').Value := QLibroNUMERO.Value;
      DM.Query1.Parameters.ParamByName('fec').Value    := QLibroFECHA.Value;
      DM.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      DM.Query1.ExecSQL;
    end
    else if QLibroDOCUMENTO.Value = 'CB' then
    begin
      DM.Query1.Close;
      DM.Query1.SQL.Clear;
      if QLibroCONCILIADO.Value = 'S' then
        DM.Query1.SQL.Add('update cargosbanco set car_conciliado = '+#39+'N'+#39)
      else
        DM.Query1.SQL.Add('update cargosbanco set car_conciliado = '+#39+'S'+#39);
      DM.Query1.SQL.Add('where emp_codigo = :emp');
      DM.Query1.SQL.Add('and ban_codigo = :ban');
      DM.Query1.SQL.Add('and car_numero = :num');
      DM.Query1.SQL.Add('and car_fecha = :fec');
      DM.Query1.SQL.Add('and suc_codigo = :suc');
      DM.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      DM.Query1.Parameters.ParamByName('ban').Value := StrToInt(Trim(edBanco.Text));
      DM.Query1.Parameters.ParamByName('num').Value := QLibroNUMERO.Value;
      DM.Query1.Parameters.ParamByName('fec').Value    := QLibroFECHA.Value;
      DM.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      DM.Query1.ExecSQL;
    end;
//    QLibro.DisableControls;
    QLibro.Close;
    QLibro.Open;
    QLibro.GotoBookmark(t);
//    QLibro.EnableControls;


  end;
end;

procedure TfrmLibroBanco.QLibroCalcFields(DataSet: TDataSet);
begin
  if QLibroORIGEN.Value = 'C' then
    QLibroCredito.Value := QLibroMONTO.Value
  else
    QLibroDebito.Value := QLibroMONTO.Value;
end;

procedure TfrmLibroBanco.FormActivate(Sender: TObject);
begin
  frmMain.ExportXLS.Sheets[0].DBGrid := DBGrid1;
  frmMain.ExportXLS.Sheets[1].Exported := False;
  frmMain.ExportXLS.Sheets[2].Exported := False;
  frmMain.ExportXLS.Sheets[0].Exported := True;
  if not QSucursal.Active then
  begin
    QSucursal.Parameters.ParamByName('usu').Value := dm.Usuario;
    QSucursal.Open;
    DBLookupComboBox2.KeyValue := QSucursalsuc_codigo.Value;
  end;
  
end;

procedure TfrmLibroBanco.cbfiltroClick(Sender: TObject);
begin
  btRefreshClick(Self);
end;

procedure TfrmLibroBanco.DBGrid_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  t : TBookmark;
begin
  if key = vk_f2 then
  begin
    t := QLibro.GetBookmark;
    if QLibroDOCUMENTO.Value = 'CK' then
    begin
      DM.Query1.Close;
      DM.Query1.SQL.Clear;
      if QLibroCONCILIADO.Value = 'S' then
      begin
        DM.Query1.SQL.Add('update cheques set che_conciliado = '+#39+'N'+#39+',');
        DM.Query1.SQL.Add('CHE_FECPAGO = NULL');
        DM.Query1.SQL.Add(',che_status = '+#39+'EMI'+#39);
      end
      else
      begin
        DM.Query1.SQL.Add('update cheques set che_conciliado = '+#39+'S'+#39+',');
        DM.Query1.SQL.Add('CHE_FECPAGO = :FECHAPAG');
        DM.Query1.SQL.Add(',che_status = '+#39+'PAG'+#39);
        DM.Query1.Parameters.ParamByName('FECHAPAG').Value := DEdt_FechaPag.Date;
      end;
      DM.Query1.SQL.Add('where emp_codigo = :emp');
      DM.Query1.SQL.Add('and ban_codigo = :ban');
      DM.Query1.SQL.Add('and che_numero = :num');
      DM.Query1.SQL.Add('and suc_codigo = :suc');
      DM.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      DM.Query1.Parameters.ParamByName('ban').Value := StrToInt(Trim(edBanco.Text));
      DM.Query1.Parameters.ParamByName('num').Value := QLibroNUMERO.Value;
      DM.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      DM.Query1.ExecSQL;
    end
    else if QLibroDOCUMENTO.Value = 'DP' then
    begin
      DM.Query1.Close;
      DM.Query1.SQL.Clear;
      if QLibroCONCILIADO.Value = 'S' then
      begin
        DM.Query1.SQL.Add('update DEPOSITOS set DEP_CONCILIADO = '+#39+'N'+#39+',');
        DM.Query1.SQL.Add('DEP_FECPAGO = NULL');
        DM.Query1.SQL.Add(',DEP_status = '+#39+'EMI'+#39);
      end
      else
      begin
        DM.Query1.SQL.Add('update DEPOSITOS set DEP_CONCILIADO = '+#39+'S'+#39+',');
        DM.Query1.SQL.Add('DEP_FECPAGO = :FECHAPAG');
        DM.Query1.SQL.Add(',DEP_status = '+#39+'PAG'+#39);
        DM.Query1.Parameters.ParamByName('FECHAPAG').Value := DEdt_FechaPag.Date;
      end;
      DM.Query1.SQL.Add('where emp_codigo = :emp');
      DM.Query1.SQL.Add('and ban_codigo = :ban');
      DM.Query1.SQL.Add('and DEP_NUMERO = :num');
      DM.Query1.SQL.Add('and suc_codigo = :suc');
      DM.Query1.SQL.Add('and DEP_ANO = '+QuotedStr(FormatDateTime('YYYY',QLibroFECHA.Value)));
      DM.Query1.SQL.Add('and DEP_MES = '+QuotedStr(FormatDateTime('MM',QLibroFECHA.Value)));
      DM.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      DM.Query1.Parameters.ParamByName('ban').Value := StrToInt(Trim(edBanco.Text));
      DM.Query1.Parameters.ParamByName('num').Value := QLibroNUMERO.Value;
      DM.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      DM.Query1.ExecSQL;
    end
    else if QLibroDOCUMENTO.Value = 'CB' then
    begin
      DM.Query1.Close;
      DM.Query1.SQL.Clear;
      if QLibroCONCILIADO.Value = 'S' then
        DM.Query1.SQL.Add('update cargosbanco set car_conciliado = '+#39+'N'+#39)
      else
        DM.Query1.SQL.Add('update cargosbanco set car_conciliado = '+#39+'S'+#39);
      DM.Query1.SQL.Add('where emp_codigo = :emp');
      DM.Query1.SQL.Add('and ban_codigo = :ban');
      DM.Query1.SQL.Add('and car_numero = :num');
      DM.Query1.SQL.Add('and car_fecha = :fec');
      DM.Query1.SQL.Add('and suc_codigo = :suc');
      DM.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
      DM.Query1.Parameters.ParamByName('ban').Value := StrToInt(Trim(edBanco.Text));
      DM.Query1.Parameters.ParamByName('num').Value := QLibroNUMERO.Value;
      DM.Query1.Parameters.ParamByName('fec').Value    := QLibroFECHA.Value;
      DM.Query1.Parameters.ParamByName('suc').Value := DBLookupComboBox2.KeyValue;
      DM.Query1.ExecSQL;
    end;
//    QLibro.DisableControls;
    QLibro.Close;
    QLibro.Open;
    QLibro.GotoBookmark(t);
//    QLibro.EnableControls;


  end;

end;

procedure TfrmLibroBanco.Fecha2Change(Sender: TObject);
begin
DEdt_FechaPag.Date := Fecha2.Date;
end;

procedure TfrmLibroBanco.edtSucLocChange(Sender: TObject);
begin
if Trim(edtSucLoc.Text) = '' then TSucLoc.Text := '';
btRefreshClick(Sender);
end;

procedure TfrmLibroBanco.edtSucLocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    if Trim(edtSucLoc.Text) <> '' then
    begin
      dm.Query1.Close;
      dm.Query1.SQL.Clear;
      dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
      dm.Query1.SQL.Add('where emp_codigo = :emp');
      dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
      dm.Query1.Parameters.ParamByName('emp').Value := dm.vp_cia;
      dm.Query1.Open;
      TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
      btRefreshClick(Self);
    end;
  end;
end;

procedure TfrmLibroBanco.btLocalidadClick(Sender: TObject);
begin
  Search.Query.Clear;
  Search.AliasFields.Clear;
  Search.Query.Add('select suc_nombre, cont_numeroSucursal from sucursales');
  Search.Query.Add('where emp_codigo = '+IntToStr(dm.vp_cia));
  Search.AliasFields.Add('Nombre');
  Search.AliasFields.Add('Código');
  Search.Title := 'Localidades / Sucursales';
  Search.ResultField := 'cont_numeroSucursal';
  if Search.execute then
  begin
    edtSucLoc.Text := Search.ValueField;
    dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('select suc_nombre, cont_numeroSucursal from sucursales');
    dm.Query1.SQL.Add('where emp_codigo = :emp');
    dm.Query1.SQL.Add('and cont_numeroSucursal = '+QuotedStr(edtSucLoc.Text));
    dm.Query1.Parameters.ParamByName('emp').Value := dm.QEmpresasEMP_CODIGO.Value;
    dm.Query1.Open;
    TSucLoc.Text := dm.Query1.FieldByName('suc_nombre').AsString;
    btRefreshClick(Self);
  end;
end;

procedure TfrmLibroBanco.FormShow(Sender: TObject);
begin
if dm.QParametrospar_banca_apuestas.Value = True then begin
lbLocSuc.Visible := True;
edtSucLoc.Visible := True;
btLocalidad.Visible := True;
TSucLoc.Visible := True;
end;
if not dm.QParametrospar_banca_apuestas.Value = True then begin
LbLocSuc.Visible := False;
edtSucLoc.Visible := False;
btLocalidad.Visible := False;
TSucLoc.Visible := False;
end;
end;

end.
