unit CONT02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Spin, DateUtils;

type
  TfrmAcceso = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edUsuario: TEdit;
    edClave: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Panel1: TPanel;
    Grid: TDBGrid;
    spAno: TSpinEdit;
    Label3: TLabel;
    cbMes: TComboBox;
    Label4: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure GridCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcceso: TfrmAcceso;

implementation

uses CONT01, CONT00;

{$R *.DFM}

procedure TfrmAcceso.BitBtn2Click(Sender: TObject);
begin
  application.terminate;
end;

procedure TfrmAcceso.BitBtn1Click(Sender: TObject);
var
  a, b, c : integer;
  s : string;
begin
  dm.Query1.close;
  dm.Query1.sql.clear;
  dm.Query1.sql.add('select usu_codigo, usu_clave from usuarios');
  dm.Query1.sql.add('where usu_nombre = :usu');
  dm.Query1.parambyname('usu').asstring := trim(edUsuario.text);
  dm.Query1.open;
  if dm.Query1.recordcount = 0 then
  begin
    showmessage('ESTE USUARIO NO EXISTE');
    edUsuario.setfocus;
  end
  else if dm.Query1.FieldByName('usu_clave').asstring <> trim(edClave.text) then
  begin
    showmessage('ESTA CLAVE NO PERTENECE A ESTE USUARIO');
    edClave.setfocus;
  end
  else
  begin
    dm.QParametros.open;
    frmMain.acceso := 1;
    dm.Usuario := dm.Query1.fieldbyname('usu_codigo').asinteger;
    frmMain.stBar1.Panels[0].Text := 'USUARIO : '+edUsuario.text;
    frmMain.stBar2.Panels[0].Text := 'EMPRESA : '+dm.QEmpresasEMP_NOMBRE.value;
    frmMain.Ano := spAno.Value;
    frmMain.Mes := cbMes.ItemIndex+1;
    dm.Query1.close;
    dm.Query1.SQL.clear;
    dm.Query1.SQL.add('select pri_nombre from contprivilegios');
    dm.Query1.SQL.add('where usu_codigo = :usu');
    dm.Query1.parambyname('usu').asinteger := dm.usuario;
    dm.Query1.open;
    dm.Query1.disablecontrols;
    lockwindowupdate(frmMain.MainMenu1.Handle);
    for a := 0 to frmMain.MainMenu1.Items.Count -1 do
    begin
      frmMain.MainMenu1.Items[a].visible:=false;
      for b := 0 to frmMain.MainMenu1.Items[a].Count -1 do
      begin
        frmMain.MainMenu1.Items[a].items[b].visible:=false;
        for c := 0 to frmMain.MainMenu1.Items[a].items[b].Count -1 do
           frmMain.MainMenu1.Items[a].items[b].items[c].visible:=false;
      end;
    end;
    While not dm.Query1.Eof do
    begin
     s:=uppercase(dm.Query1.fieldbyname('pri_nombre').asstring);
     for a := 0 to frmMain.MainMenu1.Items.Count -1 do
     begin
       if s = uppercase(frmMain.MainMenu1.Items[a].name) then
          frmMain.MainMenu1.Items[a].visible:=true;
       for b := 0 to frmMain.MainMenu1.Items[a].Count -1 do
       begin
         if s=uppercase(frmMain.MainMenu1.Items[a].items[b].name) then
            frmMain.MainMenu1.Items[a].items[b].visible:=true;
         for c := 0 to frmMain.MainMenu1.Items[a].items[b].Count -1 do
         begin
           if s=uppercase(frmMain.MainMenu1.Items[a].items[b].items[c].name) then
              frmMain.MainMenu1.Items[a].items[b].items[c].visible:=true;
         end;
       end;
     end;
     dm.Query1.Next;
    end;
    dm.Query1.enablecontrols;
    lockwindowupdate(0);

    //Transacciones
{    frmMain.OBar.Items[0].Items[0].Enabled  := frmMain.PedidosdeClientes1.Visible;
    frmMain.OBar.Items[0].Items[1].Enabled  := frmMain.Pedidosaproveedores1.Visible;
    frmMain.OBar.Items[0].Items[2].Enabled  := frmMain.Facturacin1.Visible;
    frmMain.OBar.Items[0].Items[3].Enabled  := frmMain.Notasdecrdito1.Visible;
    frmMain.OBar.Items[0].Items[4].Enabled  := frmMain.Notasdedbido1.Visible;
    frmMain.OBar.Items[0].Items[5].Enabled  := frmMain.Devoluciones2.Visible;
    frmMain.OBar.Items[0].Items[6].Enabled  := frmMain.Recibos1.Visible;
    frmMain.OBar.Items[0].Items[7].Enabled  := frmMain.Desembolsos1.Visible;
    frmMain.OBar.Items[0].Items[8].Enabled  := frmMain.Cotizaciones1.Visible;
    frmMain.OBar.Items[0].Items[9].Enabled  := frmMain.Factura2.Visible;
    frmMain.OBar.Items[0].Items[10].Enabled := frmMain.Pagosaproveedores1.Visible;}

    frmAcceso.close;
    frmAcceso.release;
  end;
end;

procedure TfrmAcceso.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TfrmAcceso.FormActivate(Sender: TObject);
begin
  if not dm.QEmpresas.Active then dm.QEmpresas.Open;
  Grid.Visible := frmMain.MDIChildCount < 1;
  spAno.Value  := YearOf(Date);
  cbMes.ItemIndex := MonthOf(Date)-1;
end;

procedure TfrmAcceso.GridCellClick(Column: TColumn);
begin
  edUsuario.SetFocus;
end;

end.
