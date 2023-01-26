unit CONT10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, QuerySearchDlgIB,
  IBCustomDataSet, IBUpdateSQL, Db, IBQuery, ComCtrls, CheckLst, ImgList;

type
  TfrmUsuarios = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    btInsert: TBitBtn;
    btEdit: TBitBtn;
    btDelete: TBitBtn;
    Panel3: TPanel;
    btPost: TBitBtn;
    btCancel: TBitBtn;
    Panel5: TPanel;
    btFind: TBitBtn;
    btClose: TBitBtn;
    btNext: TBitBtn;
    btPrior: TBitBtn;
    QUsuarios: TIBQuery;
    dsUsuarios: TDataSource;
    UPDUsuarios: TIBUpdateSQL;
    Search: TQrySearchDlgIB;
    QUsuariosUSU_CODIGO: TIntegerField;
    QUsuariosUSU_NOMBRE: TIBStringField;
    QUsuariosUSU_CLAVE: TIBStringField;
    QUsuariosUSU_STATUS: TIBStringField;
    QUsuariosStatus: TStringField;
    DBText1: TDBText;
    Lista2: TListBox;
    Imagenes: TImageList;
    QAccesos: TIBQuery;
    QAccesosUSU_CODIGO: TIntegerField;
    QAccesosPRI_NOMBRE: TIBStringField;
    Lista3: TListBox;
    Lista1: TTreeView;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    ckExpand: TCheckBox;
    Lista4: TListBox;
    ckInsert: TCheckBox;
    ckEdit: TCheckBox;
    ckDelete: TCheckBox;
    Ins: TListBox;
    Modi: TListBox;
    Del: TListBox;
    QAccesosINSERTA: TIBStringField;
    QAccesosMODIFICA: TIBStringField;
    QAccesosELIMINA: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure QUsuariosCalcFields(DataSet: TDataSet);
    procedure dsUsuariosStateChange(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btEditClick(Sender: TObject);
    procedure btInsertClick(Sender: TObject);
    procedure btFindClick(Sender: TObject);
    procedure btPriorClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure QUsuariosBeforePost(DataSet: TDataSet);
    procedure QUsuariosAfterDelete(DataSet: TDataSet);
    procedure QUsuariosAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QUsuariosNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Lista1DblClick(Sender: TObject);
    procedure dsUsuariosDataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ckExpandClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Lista1Change(Sender: TObject; Node: TTreeNode);
    procedure ckInsertClick(Sender: TObject);
    procedure ckEditClick(Sender: TObject);
    procedure ckDeleteClick(Sender: TObject);
    procedure QUsuariosUSU_CODIGOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

uses CONT01, CONT00;

{$R *.DFM}

procedure TfrmUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if messagedlg('SALIR DE ESTA PANTALLA?',
  mtconfirmation, [mbyes,mbno],0) = mrno then
    abort
  else
    action := cafree;
end;

procedure TfrmUsuarios.btCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f10 then
     close;
end;

procedure TfrmUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmUsuarios.QUsuariosCalcFields(DataSet: TDataSet);
begin
  if QUsuariosUSU_STATUS.value = 'ACT' then
     QUsuariosStatus.value := 'Activo'
  else
     QUsuariosStatus.value := 'InActivo';
end;

procedure TfrmUsuarios.dsUsuariosStateChange(Sender: TObject);
begin
  btInsert.enabled  := dsUsuarios.State = dsbrowse;
  btEdit.enabled    := btInsert.enabled;
  btDelete.enabled  := btInsert.enabled;
  btNext.enabled    := btInsert.enabled;
  btPrior.enabled   := btInsert.enabled;
  btPost.enabled    := not btInsert.enabled;
  btCancel.enabled  := not btInsert.enabled;
  btFind.enabled    := btInsert.enabled;
end;

procedure TfrmUsuarios.btPostClick(Sender: TObject);
begin
  QUsuarios.post;
end;

procedure TfrmUsuarios.btCancelClick(Sender: TObject);
begin
  QUsuarios.cancel;
end;

procedure TfrmUsuarios.btDeleteClick(Sender: TObject);
begin
  if messagedlg('DESEA ELIMINAR EL REGISTRO?',
  mtConfirmation, [mbyes, mbno],0) = mryes then
  begin
    dm.Query1.close;
    dm.Query1.sql.clear;
    dm.Query1.sql.add('delete from contprivilegios');
    dm.Query1.sql.add('where usu_codigo = :usu');
    dm.Query1.parambyname('usu').asinteger := QUsuariosUSU_CODIGO.value;
    dm.Query1.ExecSQL;
    QUsuarios.delete;
  end;
end;

procedure TfrmUsuarios.btEditClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QUsuarios.edit;
end;

procedure TfrmUsuarios.btInsertClick(Sender: TObject);
begin
  DBEdit2.setfocus;
  QUsuarios.insert;
end;

procedure TfrmUsuarios.btFindClick(Sender: TObject);
begin
  if search.execute then
     QUsuarios.locate('usu_codigo',search.valuefield,[]);
end;

procedure TfrmUsuarios.btPriorClick(Sender: TObject);
begin
  if not QUsuarios.bof then
    QUsuarios.prior;
end;

procedure TfrmUsuarios.btNextClick(Sender: TObject);
begin
  if not QUsuarios.eof then
    QUsuarios.next;
end;

procedure TfrmUsuarios.QUsuariosBeforePost(DataSet: TDataSet);
begin
  if trim(QUsuariosUSU_NOMBRE.value) = '' then
  begin
    showmessage('EL NOMBRE NO PUEDE ESTAR EN BLANCO');
    DBEdit2.setfocus;
    abort;
  end;
  if QUsuarios.State = dsInsert then
  begin
    dm.query1.close;
    dm.query1.sql.clear;
    dm.query1.sql.add('select max(usu_codigo) as maximo');
    dm.query1.sql.add('from usuarios');
    dm.query1.open;
    QUsuariosUSU_CODIGO.value := dm.query1.fieldbyname('maximo').asinteger +1;
  end;
end;

procedure TfrmUsuarios.QUsuariosAfterDelete(DataSet: TDataSet);
begin
  QUsuarios.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmUsuarios.QUsuariosAfterPost(DataSet: TDataSet);
begin
  QUsuarios.ApplyUpdates;
  dm.IBTransaction1.CommitRetaining;
end;

procedure TfrmUsuarios.FormActivate(Sender: TObject);
begin
  frmUsuarios.top := 25;
  if not QUsuarios.active then
  begin
    QAccesos.open;
    QUsuarios.open;
  end;
  Lista1.refresh;
  frmMain.ExportXLS.Sheets[1].DataSet := QUsuarios;
  frmMain.ExportXLS.Sheets[0].Exported := False;
  frmMain.ExportXLS.Sheets[1].Exported := True;
end;

procedure TfrmUsuarios.QUsuariosNewRecord(DataSet: TDataSet);
begin
  QUsuariosUSU_STATUS.value := 'ACT';
end;

procedure TfrmUsuarios.FormCreate(Sender: TObject);
var
  a, b, c : integer;
begin
  for a := 0 to (Sender as TForm).ComponentCount -1 DO
  begin
    if Components[a].ClassType = tdbedit then
    begin
      (Components[a] as tdbedit).OnEnter := frmMain.Entra;
      (Components[a] as tdbedit).OnExit := frmMain.sale;
    end;
  end;
  lockwindowupdate(lista1.Handle);
  Lista1.items.clear;
  Lista2.items.clear;
  Lista3.items.clear;
  Lista4.items.clear;
  Ins.items.clear;
  Del.items.clear;
  Modi.items.clear;
  for a := 0 to frmMain.MainMenu1.Items.Count -1 do
  begin
    Lista2.items.add(frmMain.MainMenu1.Items[a].Caption);
    Lista3.items.add(frmMain.MainMenu1.Items[a].Name);
    Lista4.Items.add(inttostr(frmMain.MainMenu1.Items[a].tag));
    Ins.items.add('False');
    Del.items.add('False');
    Modi.items.add('False');
    for b := 0 to frmMain.MainMenu1.Items.Items[a].Count -1 do
    begin
      if frmMain.MainMenu1.Items[a].Items[b].Caption <> '-' then
      begin
        Lista2.items.add(chr(vk_tab)+frmMain.MainMenu1.Items[a].Items[b].Caption);
        Lista3.items.add(frmMain.MainMenu1.Items[a].Items[b].Name);
        Lista4.Items.add(inttostr(frmMain.MainMenu1.Items[a].Items[b].tag));
        Ins.items.add('False');
        Del.items.add('False');
        Modi.items.add('False');
      end;
      for c := 0 to frmMain.MainMenu1.Items.Items[a].Items[b].Count -1 do
      begin
        if frmMain.MainMenu1.Items[a].Items[b].Items[c].Caption <> '-' then
        begin
          Lista2.items.add(chr(vk_tab)+chr(vk_tab)+frmMain.MainMenu1.Items[a].Items[b].Items[c].Caption);
          Lista3.items.add(frmMain.MainMenu1.Items[a].Items[b].Items[c].Name);
          Lista4.Items.add(inttostr(frmMain.MainMenu1.Items[a].Items[b].Items[c].tag));
          Ins.items.add('False');
          Del.items.add('False');
          Modi.items.add('False');
        end;
      end;
    end;
  end;
  Lista2.items.savetofile('c:\t.txt');
  Lista1.LoadFromFile('c:\t.txt');
  Lista1.Refresh;
  lockwindowupdate(0);
end;

procedure TfrmUsuarios.Lista1DblClick(Sender: TObject);
begin
{  showmessage(Lista3.items[Lista1.Selected.AbsoluteIndex]);
  showmessage(Lista1.Selected.text);}
  if Lista1.Selected.ImageIndex = 0 then
  begin
     Lista1.Selected.ImageIndex := 1;
     Lista1.Selected.SelectedIndex := 1;
  end
  else
  begin
     Lista1.Selected.ImageIndex := 0;
     Lista1.Selected.SelectedIndex := 0;
  end;
  Lista1.Repaint;
end;

procedure TfrmUsuarios.dsUsuariosDataChange(Sender: TObject;
  Field: TField);
begin
{  lockwindowupdate(lista1.Handle);
  Lista1.LoadFromFile('c:\t.txt');
  QAccesos.disablecontrols;
  QAccesos.first;
  while not QAccesos.eof do
  begin
    for a := 0 to Lista1.Items.Count -1 do
    begin
      if UpperCase(QAccesosPRI_NOMBRE.value) = uppercase(Lista3.items[a]) then
      begin
        Lista1.items[a].ImageIndex := 1;
        Lista1.items[a].SelectedIndex := 1;
        Ins.items[a] := QAccesosINSERTA.value;
        Modi.items[a] := QAccesosMODIFICA.value;
        Del.items[a] := QAccesosELIMINA.value;
        break;
      end
      else
      begin
        Ins.items.add('False');
        Modi.items.add('False');
        Del.items.add('False');
      end;
    end;
    QAccesos.next;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  QAccesos.enablecontrols;}
end;

procedure TfrmUsuarios.BitBtn3Click(Sender: TObject);
var
  a : integer;
begin
  lockwindowupdate(lista1.Handle);
  for a := 0 to lista1.Items.Count - 1 do
  begin
    lista1.Items[a].ImageIndex := 1;
    lista1.Items[a].SelectedIndex := 1;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  Lista1.setfocus;
end;

procedure TfrmUsuarios.BitBtn4Click(Sender: TObject);
var
  a : integer;
begin
  lockwindowupdate(lista1.Handle);
  for a := 0 to lista1.Items.Count - 1 do
  begin
    lista1.Items[a].ImageIndex := 0;
    lista1.Items[a].SelectedIndex := 0;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  Lista1.setfocus;
end;

procedure TfrmUsuarios.BitBtn5Click(Sender: TObject);
var
  a, b : integer;
begin
  lockwindowupdate(lista1.Handle);
  if Lista1.Selected.Count > 0 then
  begin
    for a := Lista1.Selected.AbsoluteIndex to
    (Lista1.Selected.AbsoluteIndex+Lista1.Selected.Count) do
    begin
      Lista1.Items[a].ImageIndex := 1;
      Lista1.Items[a].SelectedIndex := 1;
      for b := Lista1.Items.Item[a].AbsoluteIndex to
      Lista1.Items.Item[a].AbsoluteIndex+Lista1.Items.Item[a].Count do
      begin
        Lista1.Items[b].ImageIndex := 1;
        Lista1.Items[b].SelectedIndex := 1;
      end;
    end;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  Lista1.setfocus;
end;

procedure TfrmUsuarios.BitBtn6Click(Sender: TObject);
var
  a : integer;
begin
  lockwindowupdate(lista1.Handle);
  if Lista1.Selected.Count > 0 then
  begin
    for a := Lista1.Selected.AbsoluteIndex to
    (Lista1.Selected.AbsoluteIndex+Lista1.Selected.Count) do
    begin
      Lista1.Items[a].ImageIndex := 0;
      Lista1.Items[a].SelectedIndex := 0;
    end;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  Lista1.setfocus;
end;

procedure TfrmUsuarios.ckExpandClick(Sender: TObject);
begin
  if ckExpand.Checked then
     Lista1.FullExpand
  else
     Lista1.FullCollapse;
end;

procedure TfrmUsuarios.BitBtn1Click(Sender: TObject);
var
  a : integer;
begin
  lockwindowupdate(lista1.Handle);
  QAccesos.close;
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('delete from contprivilegios');
  dm.Query1.sql.add('where usu_codigo = :usu');
  dm.Query1.parambyname('usu').asinteger := QUsuariosUSU_CODIGO.value;
  dm.Query1.ExecSQL;

  for a := 0 to lista1.Items.Count - 1 do
  begin
    if lista1.Items[a].ImageIndex = 1 then
    begin
      dm.Query1.close;
      dm.Query1.sql.clear;
      dm.Query1.sql.add('insert into contprivilegios (usu_codigo, pri_nombre,');
      dm.Query1.sql.add('inserta, modifica, elimina)');
      dm.Query1.sql.add('values (:usu, :nom, :ins, :modi, :del)');
      dm.Query1.ParamByName('usu').asinteger := QUsuariosUSU_CODIGO.value;
      dm.Query1.ParamByName('nom').asstring  := Lista3.items[a];
      dm.Query1.ParamByName('ins').asstring  := Ins.items[a];
      dm.Query1.ParamByName('Modi').asstring := Modi.items[a];
      dm.Query1.ParamByName('Del').asstring  := Del.items[a];
      dm.Query1.ExecSQL;
    end;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  Lista1.setfocus;
  dm.Query1.enablecontrols;
  QAccesos.open;
end;

procedure TfrmUsuarios.Lista1Change(Sender: TObject; Node: TTreeNode);
begin
  ckInsert.enabled := Lista4.Items[Lista1.Selected.AbsoluteIndex] = '1';
  ckEdit.enabled   := Lista4.Items[Lista1.Selected.AbsoluteIndex] = '1';
  ckDelete.enabled := Lista4.Items[Lista1.Selected.AbsoluteIndex] = '1';

  ckInsert.Checked := Ins.items[Lista1.Selected.AbsoluteIndex] = 'True';
  ckEdit.Checked   := Modi.items[Lista1.Selected.AbsoluteIndex] = 'True';
  ckDelete.Checked := Del.items[Lista1.Selected.AbsoluteIndex] = 'True';
end;

procedure TfrmUsuarios.ckInsertClick(Sender: TObject);
begin
  if ckInsert.Checked then
     Ins.Items[Lista1.Selected.AbsoluteIndex] := 'True'
  else
     Ins.Items[Lista1.Selected.AbsoluteIndex] := 'False';
end;

procedure TfrmUsuarios.ckEditClick(Sender: TObject);
begin
  if ckEdit.Checked then
     Modi.Items[Lista1.Selected.AbsoluteIndex] := 'True'
  else
     Modi.Items[Lista1.Selected.AbsoluteIndex] := 'False';
end;

procedure TfrmUsuarios.ckDeleteClick(Sender: TObject);
begin
  if ckDelete.Checked then
     Del.Items[Lista1.Selected.AbsoluteIndex] := 'True'
  else
     Del.Items[Lista1.Selected.AbsoluteIndex] := 'False';
end;

procedure TfrmUsuarios.QUsuariosUSU_CODIGOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  a : integer;
begin
  text := IntToStr(QUsuariosUSU_CODIGO.Value);
  lockwindowupdate(lista1.Handle);
  Lista1.LoadFromFile('c:\t.txt');
  QAccesos.disablecontrols;
  QAccesos.first;
  while not QAccesos.eof do
  begin
    for a := 0 to Lista1.Items.Count -1 do
    begin
      if UpperCase(QAccesosPRI_NOMBRE.value) = uppercase(Lista3.items[a]) then
      begin
        Lista1.items[a].ImageIndex := 1;
        Lista1.items[a].SelectedIndex := 1;
        Ins.items[a] := QAccesosINSERTA.value;
        Modi.items[a]:= QAccesosMODIFICA.value;
        Del.items[a] := QAccesosELIMINA.value;
        break;
      end
      else
      begin
        Ins.items.add('False');
        Modi.items.add('False');
        Del.items.add('False');
      end;
    end;
    QAccesos.next;
  end;
  Lista1.Refresh;
  lockwindowupdate(0);
  QAccesos.enablecontrols;
end;

end.
