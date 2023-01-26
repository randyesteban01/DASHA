object DM_Update: TDM_Update
  OldCreateOrder = False
  Left = 352
  Top = 242
  Height = 383
  Width = 532
  object qVerScript: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    SQL.Strings = (
      
        'select month(getdate()) Months, rtrim(year(getdate())) years, da' +
        'tediff(day,(select max(Fecha) from UpTimeDB),getdate()) dias')
    Left = 16
    Top = 8
  end
  object qActualiza: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 16
    Top = 56
  end
end
