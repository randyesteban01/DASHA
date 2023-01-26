unit RH59;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB, ADODB, ComCtrls, DateUtils;

type
  TfrmRepEmpleados = class(TForm)
    btClose: TBitBtn;
    btPrint: TBitBtn;
    rgtipo: TRadioGroup;
    QTipoNomina: TADOQuery;
    QTipoNominatno_codigo: TIntegerField;
    QTipoNominatno_nombre: TStringField;
    dsTipoNomina: TDataSource;
    Label2: TLabel;
    cbtiponomina: TDBLookupComboBox;
    Label1: TLabel;
    Label3: TLabel;
    edsueldodesde: TEdit;
    edsueldohasta: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    fdesde: TDateTimePicker;
    fhasta: TDateTimePicker;
    Label6: TLabel;
    cbgrupo: TDBLookupComboBox;
    Label7: TLabel;
    cbposicion: TDBLookupComboBox;
    Label8: TLabel;
    cbestado: TDBLookupComboBox;
    Label9: TLabel;
    cbtipoemp: TDBLookupComboBox;
    Label10: TLabel;
    cbformapago: TComboBox;
    QGrupos: TADOQuery;
    QGruposgru_codigo: TIntegerField;
    QGruposgru_nombre: TStringField;
    dsGrupos: TDataSource;
    QPosicion: TADOQuery;
    QPosicionpos_codigo: TIntegerField;
    QPosicionpos_nombre: TStringField;
    dsPosicion: TDataSource;
    dsTipoEmp: TDataSource;
    QTipoEmp: TADOQuery;
    QTipoEmptip_codigo: TIntegerField;
    QTipoEmptip_nombre: TStringField;
    QEstado: TADOQuery;
    QEstadoest_codigo: TIntegerField;
    QEstadoest_nombre: TStringField;
    dsEstado: TDataSource;
    cktipo: TCheckBox;
    procedure btCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btPrintClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepEmpleados: TfrmRepEmpleados;

implementation

uses SIGMA01, RHR03, RHR04, RHR05;

{$R *.dfm}

procedure TfrmRepEmpleados.btCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRepEmpleados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepEmpleados.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = chr(vk_return) then
     begin
       perform(wm_nextdlgctl, 0, 0);
       key := #0;
     end;
end;

procedure TfrmRepEmpleados.FormCreate(Sender: TObject);
begin
  fdesde.Date := Date;
  fhasta.Date := Date;
end;

procedure TfrmRepEmpleados.btPrintClick(Sender: TObject);
var
  mes1, mes2, dia1, dia2 : integer;
begin
  case rgtipo.ItemIndex of
  0 : begin
        Application.CreateForm(tRepEmpleados, RepEmpleados);
        if cktipo.Checked then
        begin
          RepEmpleados.QRLabel1.Caption := 'Relacion de Personal de '+cbtiponomina.Text;
          RepEmpleados.QGrupo.SQL.Add('and e.emp_numero in (');
          RepEmpleados.QGrupo.SQL.Add('select emp_numero from');
          RepEmpleados.QGrupo.SQL.Add('Empleados_Tipo_Nomina');
          RepEmpleados.QGrupo.SQL.Add('where emp_codigo = e.emp_codigo');
          RepEmpleados.QGrupo.SQL.Add('and emp_numero = e.emp_numero');
          RepEmpleados.QGrupo.SQL.Add('and tno_codigo = '+IntToStr(cbtiponomina.KeyValue)+')');

          RepEmpleados.QEmpleados.SQL.Add('and e.emp_numero in (');
          RepEmpleados.QEmpleados.SQL.Add('select emp_numero from');
          RepEmpleados.QEmpleados.SQL.Add('Empleados_Tipo_Nomina');
          RepEmpleados.QEmpleados.SQL.Add('where emp_codigo = e.emp_codigo');
          RepEmpleados.QEmpleados.SQL.Add('and emp_numero = e.emp_numero');
          RepEmpleados.QEmpleados.SQL.Add('and tno_codigo = '+IntToStr(cbtiponomina.KeyValue)+')');
        end;
        RepEmpleados.QEmpleados.SQL.Add('order by 2');
        RepEmpleados.QGrupo.SQL.Add('order by g.gru_codigo');
        RepEmpleados.QGrupo.Open;
        RepEmpleados.QEmpleados.Open;
        RepEmpleados.PrinterSetup;
        RepEmpleados.Preview;
        RepEmpleados.Destroy;
      end;
  1 : begin
        Application.CreateForm(tRepEmpleadoSueldos, RepEmpleadoSueldos);
        RepEmpleadoSueldos.QTipoNomina.Parameters.ParamByName('tno').Value := cbtiponomina.KeyValue;
        RepEmpleadoSueldos.QTipoNomina.Open;
        RepEmpleadoSueldos.QGrupo.Open;

        if (trim(edsueldodesde.Text) <> '') and (trim(edsueldohasta.Text) <> '') then
        begin
          RepEmpleadoSueldos.QEmpleados.SQL.Add('and e.emp_salario between :sdo1 and :sdo2');
          RepEmpleadoSueldos.QEmpleados.Parameters.ParamByName('sdo1').Value := trim(edsueldodesde.Text);
          RepEmpleadoSueldos.QEmpleados.Parameters.ParamByName('sdo2').Value := trim(edsueldohasta.Text);
        end;

        RepEmpleadoSueldos.QEmpleados.SQL.Add('order by 2');
        RepEmpleadoSueldos.QEmpleados.Open;
        RepEmpleadoSueldos.PrinterSetup;
        RepEmpleadoSueldos.Preview;
        RepEmpleadoSueldos.Destroy;
      end;
  2 : begin
        Application.CreateForm(tRepEmpleados, RepEmpleados);
        RepEmpleados.lbtitulo.Caption := 'EMPLEADOS DE INGRESO ENTRE '+DateToStr(fdesde.Date)+' Al '+DateToStr(fhasta.Date);
        if cktipo.Checked then
        begin
          RepEmpleados.QRLabel1.Caption := 'Relacion de Personal de '+cbtiponomina.Text;
          RepEmpleados.QGrupo.SQL.Add('and e.emp_numero in (');
          RepEmpleados.QGrupo.SQL.Add('select emp_numero from');
          RepEmpleados.QGrupo.SQL.Add('Empleados_Tipo_Nomina');
          RepEmpleados.QGrupo.SQL.Add('where emp_codigo = e.emp_codigo');
          RepEmpleados.QGrupo.SQL.Add('and emp_numero = e.emp_numero');
          RepEmpleados.QGrupo.SQL.Add('and tno_codigo = '+IntToStr(cbtiponomina.KeyValue)+')');

          RepEmpleados.QEmpleados.SQL.Add('and e.emp_numero in (');
          RepEmpleados.QEmpleados.SQL.Add('select emp_numero from');
          RepEmpleados.QEmpleados.SQL.Add('Empleados_Tipo_Nomina');
          RepEmpleados.QEmpleados.SQL.Add('where emp_codigo = e.emp_codigo');
          RepEmpleados.QEmpleados.SQL.Add('and emp_numero = e.emp_numero');
          RepEmpleados.QEmpleados.SQL.Add('and tno_codigo = '+IntToStr(cbtiponomina.KeyValue)+')');
        end;

        RepEmpleados.QEmpleados.SQL.Add('and e.emp_fecha_entrada between convert(datetime, :fec1, 105)');
        RepEmpleados.QEmpleados.SQL.Add('and convert(datetime, :fec2, 105)');
        RepEmpleados.QEmpleados.SQL.Add('order by 2');
        RepEmpleados.QEmpleados.Parameters.ParamByName('fec1').DataType := ftDate;
        RepEmpleados.QEmpleados.Parameters.ParamByName('fec2').DataType := ftDate;
        RepEmpleados.QEmpleados.Parameters.ParamByName('fec1').Value    := fdesde.Date;
        RepEmpleados.QEmpleados.Parameters.ParamByName('fec2').Value    := fhasta.Date;

        RepEmpleados.QGrupo.SQL.Add('order by g.gru_codigo');
        RepEmpleados.QGrupo.Open;
        RepEmpleados.QEmpleados.Open;
        RepEmpleados.PrinterSetup;
        RepEmpleados.Preview;
        RepEmpleados.Destroy;
      end;
  3 : begin
        Application.CreateForm(tRepEmpleados, RepEmpleados);
        RepEmpleados.lbtitulo.Caption := 'EMPLEADOS QUE CUMPLEN AÑOS ENTRE '+DateToStr(fdesde.Date)+' Al '+DateToStr(fhasta.Date);

        if cktipo.Checked then
        begin
          RepEmpleados.QRLabel1.Caption := 'Relacion de Cumpleaños de '+cbtiponomina.Text;
          RepEmpleados.QGrupo.SQL.Add('and e.emp_numero in (');
          RepEmpleados.QGrupo.SQL.Add('select emp_numero from');
          RepEmpleados.QGrupo.SQL.Add('Empleados_Tipo_Nomina');
          RepEmpleados.QGrupo.SQL.Add('where emp_codigo = e.emp_codigo');
          RepEmpleados.QGrupo.SQL.Add('and emp_numero = e.emp_numero');
          RepEmpleados.QGrupo.SQL.Add('and tno_codigo = '+IntToStr(cbtiponomina.KeyValue)+')');

          RepEmpleados.QEmpleados.SQL.Add('and e.emp_numero in (');
          RepEmpleados.QEmpleados.SQL.Add('select emp_numero from');
          RepEmpleados.QEmpleados.SQL.Add('Empleados_Tipo_Nomina');
          RepEmpleados.QEmpleados.SQL.Add('where emp_codigo = e.emp_codigo');
          RepEmpleados.QEmpleados.SQL.Add('and emp_numero = e.emp_numero');
          RepEmpleados.QEmpleados.SQL.Add('and tno_codigo = '+IntToStr(cbtiponomina.KeyValue)+')');
        end;

        RepEmpleados.QRLabel5.Caption := 'Nacimiento';
        RepEmpleados.QRDBText8.DataField := 'emp_fecha_nacimiento';
        RepEmpleados.QEmpleados.SQL.Add('and ((month(e.emp_fecha_nacimiento) between :mes1 and :mes2) or');
        RepEmpleados.QEmpleados.SQL.Add('(month(e.emp_fecha_nacimiento) between :mes3 and :mes4))');
        RepEmpleados.QEmpleados.SQL.Add('and ((day(e.emp_fecha_nacimiento) between :dia1 and :dia2) or');
        RepEmpleados.QEmpleados.SQL.Add('(month(e.emp_fecha_nacimiento) between :dia3 and :dia4))');
        RepEmpleados.QEmpleados.SQL.Add('and year(e.emp_fecha_nacimiento) between 1 and 5000');

        mes1 := MonthOf(fdesde.Date);
        mes2 := MonthOf(fhasta.Date);
        dia1 := DayOf(fdesde.Date);
        dia2 := DayOf(fhasta.Date);
        if mes1 > mes2 then
        begin
          RepEmpleados.QEmpleados.Parameters.ParamByName('mes1').Value  := mes1;
          RepEmpleados.QEmpleados.Parameters.ParamByName('mes2').Value  := 12;
          RepEmpleados.QEmpleados.Parameters.ParamByName('mes3').Value  := 1;
          RepEmpleados.QEmpleados.Parameters.ParamByName('mes4').Value  := mes2;
        end
        else if mes1 <= mes2 then
        begin
          RepEmpleados.QEmpleados.Parameters.ParamByName('mes1').Value  := mes1;
          RepEmpleados.QEmpleados.Parameters.ParamByName('mes2').Value  := mes2;
          RepEmpleados.QEmpleados.Parameters.ParamByName('mes3').Value  := mes1;
          RepEmpleados.QEmpleados.Parameters.ParamByName('mes4').Value  := mes2;
        end;

        if dia1 > dia2 then
        begin
          RepEmpleados.QEmpleados.Parameters.ParamByName('dia1').Value  := dia1;
          RepEmpleados.QEmpleados.Parameters.ParamByName('dia2').Value  := 31;
          RepEmpleados.QEmpleados.Parameters.ParamByName('dia3').Value  := 1;
          RepEmpleados.QEmpleados.Parameters.ParamByName('dia4').Value  := dia2;
        end
        else if dia1 <= dia2 then
        begin
          RepEmpleados.QEmpleados.Parameters.ParamByName('dia1').Value  := dia1;
          RepEmpleados.QEmpleados.Parameters.ParamByName('dia2').Value  := dia2;
          RepEmpleados.QEmpleados.Parameters.ParamByName('dia3').Value  := dia1;
          RepEmpleados.QEmpleados.Parameters.ParamByName('dia4').Value  := dia2;
        end;

        RepEmpleados.QEmpleados.SQL.Add('order by 2');
        RepEmpleados.QGrupo.SQL.Add('order by g.gru_codigo');
        RepEmpleados.QGrupo.Open;
        RepEmpleados.QEmpleados.Open;
        RepEmpleados.PrinterSetup;
        RepEmpleados.Preview;
        RepEmpleados.Destroy;
      end;
  4 : begin
        Application.CreateForm(tRepEmpleadosDirecciones, RepEmpleadosDirecciones);
        if cktipo.Checked then
        begin
          RepEmpleadosDirecciones.QRLabel1.Caption := 'Relacion de Cumpleaños de '+cbtiponomina.Text;
          RepEmpleadosDirecciones.QGrupo.SQL.Add('and e.emp_numero in (');
          RepEmpleadosDirecciones.QGrupo.SQL.Add('select emp_numero from');
          RepEmpleadosDirecciones.QGrupo.SQL.Add('Empleados_Tipo_Nomina');
          RepEmpleadosDirecciones.QGrupo.SQL.Add('where emp_codigo = e.emp_codigo');
          RepEmpleadosDirecciones.QGrupo.SQL.Add('and emp_numero = e.emp_numero');
          RepEmpleadosDirecciones.QGrupo.SQL.Add('and tno_codigo = '+IntToStr(cbtiponomina.KeyValue)+')');

          RepEmpleadosDirecciones.QEmpleados.SQL.Add('and e.emp_numero in (');
          RepEmpleadosDirecciones.QEmpleados.SQL.Add('select emp_numero from');
          RepEmpleadosDirecciones.QEmpleados.SQL.Add('Empleados_Tipo_Nomina');
          RepEmpleadosDirecciones.QEmpleados.SQL.Add('where emp_codigo = e.emp_codigo');
          RepEmpleadosDirecciones.QEmpleados.SQL.Add('and emp_numero = e.emp_numero');
          RepEmpleadosDirecciones.QEmpleados.SQL.Add('and tno_codigo = '+IntToStr(cbtiponomina.KeyValue)+')');
        end;

        RepEmpleadosDirecciones.QEmpleados.SQL.Add('order by 2');
        RepEmpleadosDirecciones.QGrupo.SQL.Add('order by g.gru_codigo');
        RepEmpleadosDirecciones.QGrupo.Open;
        RepEmpleadosDirecciones.QEmpleados.Open;
        RepEmpleadosDirecciones.PrinterSetup;
        RepEmpleadosDirecciones.Preview;
        RepEmpleadosDirecciones.Destroy;
      end;
  end;

end;

procedure TfrmRepEmpleados.FormActivate(Sender: TObject);
begin
  if not QTipoNomina.Active then
  begin
    QTipoNomina.Open;
    cbtiponomina.KeyValue := QTipoNominatno_codigo.Value;

    QGrupos.Open;
    QPosicion.Open;
    QEstado.Open;
    QTipoEmp.Open;
  end;
end;

end.
