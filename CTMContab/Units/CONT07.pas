unit CONT07;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, MSI_GUI, ComCtrls, ImgList;

type
  TfrmAcerca = class(TForm)
    BitBtn1: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbReg: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label8: TLabel;
    Panel1: TPanel;
    MSystemInfo: TMSystemInfo;
    img: TImageList;
    ProcList: TListView;
    Panel4: TPanel;
    Panel3: TPanel;
    List: TListView;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcerca: TfrmAcerca;

implementation

uses MiTeC_Datetime, MiTeC_Routines, MiTeC_CtrlRtns, MiTeC_PerfLibNT,
  MiTeC_EnumsNT, MiTeC_Enums9x, MSI_SMBIOS, MSI_Devices, MSI_CPU,
  AVLockGold, MSI_Machine, CONT00;


{$R *.DFM}

procedure TfrmAcerca.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmAcerca.FormCreate(Sender: TObject);
var
  PLNT: TPerfLibNT;
  ProcessList: TStringList;
  i,c,n,p: Integer;
  s: string;
  k: TSlotType;
begin
//  Form_HideCaption(Self);
  try

  with MSystemInfo do begin
    Refresh;
//    TitlePanel.Caption:=About;
    with List.Items.Add do begin
      Caption:='Systema';
      SubItems.Add(Format('%s %s',[Machine.SMBIOS.SystemManufacturer,
                                       Machine.SMBIOS.SystemModel]));
      ImageIndex:=0;
    end;
    with List.Items.Add do begin
      Caption:='Tiempo Encendido';
      SubItems.Add(Format('%s',[formatseconds(Machine.SystemUpTime,true,false,False)]));
      ImageIndex:=12;
    end;
    with List.Items.Add do ImageIndex:=-1;
    with List.Items.Add do begin
      Caption:='CPU';
      if Trim(CPU.CPUIDNameString)='' then
        SubItems.Add(Format('%d x %s %s',[CPU.Count,CPUVendors[CPU.vendorType],CPU.FriendlyName]))
      else
        SubItems.Add(Format('%d x %s ',[CPU.Count,Trim(CPU.CPUIDNameString)]));
      ImageIndex:=9;
    end;
    with List.Items.Add do begin
      Caption:='Frecuencia';
      SubItems.Add(Format('%d Mhz',[CPU.Frequency]));
      ImageIndex:=13;
    end;
    if Machine.SMBIOS.ProcessorCount>0 then begin
      with List.Items.Add do begin
        Caption:='Voltaje';
        SubItems.Add(Format('%1.1fV',[Machine.SMBIOS.Processor[0].Voltage]));
      ImageIndex:=11;
    end;
      with List.Items.Add do begin
        Caption:='Socket';
        SubItems.Add(Format('%s (%s)',[Machine.SMBIOS.Processor[0].Socket,Machine.SMBIOS.Processor[0].Upgrade]));
        ImageIndex:=14;
      end;
    end;
    with List.Items.Add do ImageIndex:=-1;
    with List.Items.Add do begin
      Caption:='Mainboard';
      SubItems.Add(Format('%s %s',[Machine.SMBIOS.MainboardManufacturer,Machine.SMBIOS.MainboardModel]));
      ImageIndex:=10;
    end;
    c:=0;
    n:=0;
    p:=0;
    s:='';
    for i:=0 to Machine.SMBIOS.MemorySlotCount-1 do
      if Machine.SMBIOS.MemoryBank[i].Size>0 then begin
        Inc(c);
        n:=Machine.SMBIOS.MemoryBank[i].Size;
        case Machine.SMBIOS.MemoryBank[i].Table of
          SMB_MEMMOD: s:=Machine.SMBIOS.GetMemoryTypeStr(Machine.SMBIOS.MemoryBank[i].Types);
          SMB_MEMDEV: s:=MemoryFormFactors[Machine.SMBIOS.MemoryBank[i].FormFactor]+','+MemoryDevices[Machine.SMBIOS.MemoryBank[i].Device];
        end;
        p:=Machine.SMBIOS.MemoryBank[i].Speed;
      end;

    with List.Items.Add do begin
      Caption:='Memoria';
      SubItems.Add(Format('%d x %d %s (%d KB Libre)',[c,n,s,Memory.PhysicalFree div 1024]));
      ImageIndex:=8;
    end;
    with List.Items.Add do begin
      Caption:='Velocidad';
      SubItems.Add(Format('%d ns',[p]));
      ImageIndex:=8;
    end;

    for i:=0 to Machine.SMBIOS.PortCount-1 do
      with List.Items.Add do begin
        Caption:=Machine.SMBIOS.Port[i].Designator;
        SubItems.Add(Format('%s (%s)',[PortTypes[Machine.SMBIOS.Port[i].Typ],
                                      ConnectorTypes[Machine.SMBIOS.Port[i].Connector]]));
        ImageIndex:=2;
      end;
    for k:=Low(TSlotType) to High(TSlotType) do begin
      c:=0;
      for i:=0 to Machine.SMBIOS.SystemSlotCount-1 do
        if Machine.SMBIOS.SystemSlot[i].Typ=k then begin
          Inc(c);
          s:=Format('%s',[DataBusTypes[Machine.SMBIOS.SystemSlot[i].DataBus]]);
        end;
      if c>0 then
        with List.Items.Add do begin
          Caption:=Format('%d x %s',[c,SlotTypes[k]]);
          SubItems.Add(Format('%s',[s]));
          ImageIndex:=3;
        end;
    end;
    with List.Items.Add do ImageIndex:=-1;
    with List.Items.Add do begin
      Caption:=Format('%s %s',[OSVersion,OS.CSD]);
      SubItems.Add(Format('%d.%d.%d',[OS.MajorVersion,OS.MinorVersion,OS.BuildNumber]));
      ImageIndex:=15;
    end;
    with List.Items.Add do begin
      Caption:='Usuario';
      SubItems.Add(Machine.User);
      ImageIndex:=16;
    end;
    with List.Items.Add do ImageIndex:=-1;
    with List.Items.Add do begin
      Caption:='Adaptador de Video';
      SubItems.Add(Display.Adapter);
      ImageIndex:=1;
    end;
    with List.Items.Add do begin
      Caption:='Resolución';
      SubItems.Add(Format('Resolución: %d x %d - %d bit',[Display.HorzRes,
                                                     Display.VertRes,
                                                     Display.ColorDepth]));
      ImageIndex:=12;
    end;
    with List.Items.Add do ImageIndex:=-1;
    if Media.Devices.Count>0 then begin
      with List.Items.Add do begin
        Caption:='Adaptador de Sonido';
        if Media.Devices.Count>0 then begin
          if Media.SoundCardIndex>-1 then
            SubItems.Add(Media.Devices[Media.SoundCardIndex])
          else
            SubItems.Add(Media.Devices[0]);
        end;
        ImageIndex:=4;
      end;
      if (Media.GamePortIndex>-1) and (Media.Devices.Count>0) then
        with List.Items.Add do begin
          Caption:='Adaptador de Juego';
          SubItems.Add(Media.Devices[Media.GamePortIndex]);
          ImageIndex:=5;
        end;
    end;
    with List.Items.Add do ImageIndex:=-1;
    if Network.Adapters.Count>0 then begin
      with List.Items.Add do begin
        Caption:='Adaptador de Red';
         if Network.CardAdapterIndex>-1 then
           SubItems.Add(Network.Adapters[Network.CardAdapterIndex])
         else
           SubItems.Add(Network.Adapters[0]);
         ImageIndex:=17;
      end;
      with List.Items.Add do begin
        Caption:='Computador Local';
        SubItems.Add(Machine.Name);
        ImageIndex:=12;
      end;
      if Network.IPAddresses.Count>0 then
      with List.Items.Add do begin
        Caption:='Dirección IP';
        SubItems.Add(Network.IPAddresses[0]);
        ImageIndex:=12;
      end;
      if Network.MACAddresses.Count>0 then
      with List.Items.Add do begin
        Caption:='Dirección MAC';
        SubItems.Add(Network.MACAddresses[0]);
        ImageIndex:=12;
      end;
    end;


    with List.Items.Add do ImageIndex:=-1;
    c:=0;
    for i:=0 to Devices.DeviceCount-1 do
      if Devices.Devices[i].DeviceClass=dcFloppyDisk then
        with List.Items.Add do begin
          Caption:=Format('Disquetera %d:',[c]);
          if Trim(Devices.Devices[i].FriendlyName)='' then
            SubItems.Add(Devices.Devices[i].Description)
          else
            SubItems.Add(Devices.Devices[i].FriendlyName);
          ImageIndex:=18;
          Inc(c);
        end;
    c:=0;
    for i:=0 to Devices.DeviceCount-1 do
      if Devices.Devices[i].DeviceClass=dcDiskDrive then
        with List.Items.Add do begin
          Caption:=Format('Disco Duro %d:',[c]);
          if Trim(Devices.Devices[i].FriendlyName)='' then
            SubItems.Add(Devices.Devices[i].Description)
          else
            SubItems.Add(Devices.Devices[i].FriendlyName);
          Inc(c);
          ImageIndex:=19;
        end;

    c:=0;
    for i:=0 to Devices.DeviceCount-1 do
      if Devices.Devices[i].DeviceClass=dcCDROM then
        with List.Items.Add do begin
          Caption:=Format('CDROM %d:',[c]);
          if Trim(Devices.Devices[i].FriendlyName)='' then
            SubItems.Add(Devices.Devices[i].Description)
          else
            SubItems.Add(Devices.Devices[i].FriendlyName);
          Inc(c);
          ImageIndex:=20;
        end;

    c:=0;
    for i:=0 to Devices.DeviceCount-1 do
      if Devices.Devices[i].DeviceClass=dcTapeDrive then
        with List.Items.Add do begin
          Caption:=Format('Cintas de Backup %d:',[c]);
          if Trim(Devices.Devices[i].FriendlyName)='' then
            SubItems.Add(Devices.Devices[i].Description)
          else
            SubItems.Add(Devices.Devices[i].FriendlyName);
          Inc(c);
          ImageIndex:=21;
        end;

      with List.Items.Add do ImageIndex:=-1;
      s:='<none>';
      for i:=0 to Devices.DeviceCount-1 do
        if Devices.Devices[i].DeviceClass=dcModem then begin
          if Trim(Devices.Devices[i].FriendlyName)='' then
            s:=Devices.Devices[i].Description
          else
            s:=Devices.Devices[i].FriendlyName;
          Break;
        end;

      with List.Items.Add do begin
        Caption:='Modem';
        SubItems.Add(s);
        Inc(c);
        ImageIndex:=24;
      end;

      with List.Items.Add do ImageIndex:=-1;
      s:='<none>';
      for i:=0 to Devices.DeviceCount-1 do
        if Devices.Devices[i].DeviceClass=dcMouse then begin
          if Trim(Devices.Devices[i].FriendlyName)='' then
            s:=Devices.Devices[i].Description
          else
            s:=Devices.Devices[i].FriendlyName;
          Break;
        end;
      with List.Items.Add do begin
        Caption:='Mouse';                  
        SubItems.Add(s);
        Inc(c);
        ImageIndex:=23;
      end;

      with List.Items.Add do ImageIndex:=-1;
      s:='<none>';
      for i:=0 to Devices.DeviceCount-1 do
        if Devices.Devices[i].DeviceClass=dcKeyboard then begin
          if Trim(Devices.Devices[i].FriendlyName)='' then
            s:=Devices.Devices[i].Description
          else
            s:=Devices.Devices[i].FriendlyName;
          Break;
        end;
      with List.Items.Add do begin
        Caption:='Teclado';
        SubItems.Add(s);
        Inc(c);
        ImageIndex:=22;
      end;

    with List.Items.Add do ImageIndex:=-1;
    if Printers.Names.Count>0 then
      with List.Items.Add do begin
        Caption:=Printers.Names[Printers.DefaultIndex];
        SubItems.Add(Printers.Ports[Printers.DefaultIndex]);
        ImageIndex:=7;
      end;

    ProcessList:=TStringList.Create;
    if IsNT then begin
      PLNT:=TPerfLibNT.Create;
      PLNT.Refresh;
      GetNTProcessList(PLNT,ProcessList);
      for i:=0 to ProcessList.Count-1 do
        with ProcList.Items.Add do begin
          Caption:=PNTProcess(ProcessList.objects[i])^.Name;
          SubItems.Add(Format('%d',[PNTProcess(ProcessList.objects[i])^.PID]));
          SubItems.Add(Format('%d',[PNTProcess(ProcessList.objects[i])^.PriorityBase]));
          ImageIndex:=6;
        end;
      PLNT.Free;
    end else begin
      Get95ProcessList(ProcessList);
      for i:=0 to ProcessList.Count-1 do
        with ProcList.Items.Add do begin
          Caption:=P95Process(ProcessList.objects[i])^.Name;
          SubItems.Add(Format('%d',[P95Process(ProcessList.objects[i])^.PID]));
          SubItems.Add(Format('%d',[P95Process(ProcessList.objects[i])^.Priority]));
          ImageIndex:=6;
        end;
    end;
    ProcessList.Free;
  end;
  except
  end;
  lbReg.Caption   := frmMain.AV.Make(True, 0);
end;

procedure TfrmAcerca.BitBtn2Click(Sender: TObject);
begin
  MSystemInfo.Refresh;
end;

end.
