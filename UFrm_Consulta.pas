unit UFrm_Consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB;

type
  TFrm_Consulta = class(TForm)
    DS_CONSULTA: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    CB_Criterio: TComboBox;
    Edt_Consulta: TEdit;
    DBGrid_Consulta: TDBGrid;
    Panel2: TPanel;
    Btn_Confirmar: TSpeedButton;
    Btn_Cerrar: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Btn_ConfirmarClick(Sender: TObject);
    procedure Btn_CerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Consulta: TFrm_Consulta;

implementation

uses SIGMA01, PVENTA135, ADODB;



{$R *.dfm}

procedure TFrm_Consulta.Btn_CerrarClick(Sender: TObject);
begin
Close;
end;

procedure TFrm_Consulta.Btn_ConfirmarClick(Sender: TObject);
begin
if DS_Consulta.DataSet.RecordCount > 0 then begin
//Movimientos por Centro de Costo
if DM.vp_formactivo = 'frmConsCentroCosto' then begin
  with frmConsCentroCosto do begin
  if DM.vl_tipocons = 1 then
   ExtraerCentroCostos;
  if DM.vl_tipocons = 2 then
   ExtraerSubCentroCostos;
   edSubCEntro.SetFocus;
   end;
  end;
end;
Btn_CerrarClick(Sender);
end;

procedure TFrm_Consulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFrm_Consulta.FormShow(Sender: TObject);
begin
//Movimientos por Centro de Costo
if DM.vp_formactivo = 'frmConsCentroCosto' then BEGIN
if dm.vl_tipocons = 1 then begin
DBGrid_Consulta.Columns.Items[0].Title.Caption := 'ID Cent.Cost.';
DBGrid_Consulta.Columns.Items[0].FieldName     := 'Codigo';
DBGrid_Consulta.Columns.Items[1].Title.Caption := 'Nombre Cent.Cost.';
DBGrid_Consulta.Columns.Items[1].FieldName     := 'Nombre';
CB_Criterio.Clear;
CB_Criterio.Items.Add('[TODOS]');
CB_Criterio.Items.Add('[CODIGO]');
CB_Criterio.Items.Add('[NOMBRE]');
CB_Criterio.ItemIndex := 0;
Frm_Consulta.Caption := 'Consultando Centro de Costos....'
END;

if dm.vl_tipocons = 2 then begin
DBGrid_Consulta.Columns.Items[0].Title.Caption := 'ID Sub-Centro';
DBGrid_Consulta.Columns.Items[0].FieldName     := 'Codigo';
DBGrid_Consulta.Columns.Items[1].Title.Caption := 'Nombre Sub-Centro';
DBGrid_Consulta.Columns.Items[1].FieldName     := 'Nombre';
CB_Criterio.Clear;
CB_Criterio.Items.Add('[TODOS]');
CB_Criterio.Items.Add('[CODIGO]');
CB_Criterio.Items.Add('[NOMBRE]');
CB_Criterio.ItemIndex := 0;
Frm_Consulta.Caption := 'Consultando Sub Centro de Costos....'
END;
end;

Edt_Consulta.SetFocus;
SpeedButton1Click(Sender);  
END;


procedure TFrm_Consulta.SpeedButton1Click(Sender: TObject);
begin
//Movimientos por Centro de Costo
if DM.vp_formactivo = 'frmConsCentroCosto' then begin
  with frmConsCentroCosto do begin
  if DM.vl_tipocons = 1 then begin
  with dm.qBuscar do begin
  Close;
  SQL.Clear;
  SQL.Add('select cen_nombre NOMBRE, cen_codigo CODIGO ');
  SQL.Add('from centrocostos ');
  SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  case CB_Criterio.ItemIndex of
  1:SQL.Add(' AND cen_codigo Like'+QuotedStr('%'+Edt_Consulta.Text+'%'));
  2:SQL.Add(' AND cen_nombre Like'+QuotedStr('%'+Edt_Consulta.Text+'%'));
  end;
  Open;
  IF IsEmpty THEN
  ShowMessage('NO EXISTEN DATOS CON ESTOS CRITERIOS DE BUSQUEDA.....');
  END;
  END;


  if DM.vl_tipocons = 2 then begin
  with dm.qBuscar do begin
  Close;
  SQL.Clear;
  SQL.Add('select sub_nombre NOMBRE, sub_secuencia CODIGO ');
  SQL.Add('from CentroCostos_Hijos  ');
  SQL.Add('where emp_codigo = '+IntToStr(dm.QEmpresasEMP_CODIGO.Value));
  SQL.Add('and cen_codigo = '+Trim(edCEntro.Text));
  case CB_Criterio.ItemIndex of
  1:SQL.Add(' AND sub_secuencia Like'+QuotedStr('%'+Edt_Consulta.Text+'%'));
  2:SQL.Add(' AND sub_nombre Like'+QuotedStr('%'+Edt_Consulta.Text+'%'));
  end;
  Open;
  IF IsEmpty THEN
  ShowMessage('NO EXISTEN DATOS CON ESTOS CRITERIOS DE BUSQUEDA.....');
  END;
  END;

  END;

end;


end;

end.
