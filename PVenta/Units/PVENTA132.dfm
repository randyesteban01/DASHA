object frmActividadCaja: TfrmActividadCaja
  Left = 394
  Top = 288
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Actividad de las Cajas'
  ClientHeight = 386
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 29
      Height = 13
      Caption = 'Fecha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btver: TSpeedButton
      Left = 360
      Top = 8
      Width = 73
      Height = 25
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Ver Tickets'
      OnClick = btverClick
    end
    object Fecha: TDateTimePicker
      Left = 48
      Top = 10
      Width = 89
      Height = 21
      Date = 38473.000000000000000000
      Time = 38473.000000000000000000
      TabOrder = 0
    end
    object btClose: TBitBtn
      Left = 520
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 1
      OnClick = btCloseClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Refrescar'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 353
    Height = 345
    Align = alLeft
    DataSource = dsCaja
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USU_NOMBRE'
        Title.Caption = 'Usuario'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAJA'
        Title.Alignment = taCenter
        Title.Caption = 'Caja'
        Width = 39
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IP'
        Title.Alignment = taCenter
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 70
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 353
    Top = 41
    Width = 248
    Height = 168
    DataSource = dsTickets
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'TICKET'
        Title.Alignment = taCenter
        Title.Caption = '# Ticket'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 111
        Visible = True
      end>
  end
  object Timer1: TTimer
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 440
    Top = 80
  end
  object QCajas: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'FECHA'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'T.USU_codigo, U.USU_NOMBRE, T.CAJA, T.FECHA, C.IP,'
      'SUM(t.TOTAL) AS TOTAL'
      'FROM'
      'MONTOS_TICKET T, USUARIOS U, CAJAS_IP C'
      'WHERE'
      'T.FECHA = :FECHA'
      'AND T.usu_codigo = U.USU_CODIGO'
      'AND t.STATUS = '#39'FAC'#39
      'AND T.CAJA = C.CAJA'
      'GROUP BY '
      'T.USU_codigo, U.USU_NOMBRE, T.CAJA, T.FECHA, C.IP'
      'ORDER BY'
      '3,2')
    Left = 80
    Top = 104
    object QCajasTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object QCajasUSU_NOMBRE: TIBStringField
      FieldName = 'USU_NOMBRE'
      Size = 60
    end
    object QCajasFECHA: TDateTimeField
      FieldName = 'FECHA'
      Required = True
    end
    object QCajasUSU_codigo: TIntegerField
      FieldName = 'USU_codigo'
    end
    object QCajasCAJA: TIntegerField
      FieldName = 'CAJA'
    end
    object QCajasIP: TStringField
      FieldName = 'IP'
      Size = 15
    end
  end
  object dsCaja: TDataSource
    DataSet = QCajas
    Left = 112
    Top = 104
  end
  object QTickets: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsCaja
    Parameters = <
      item
        Name = 'FECHA'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'CAJA'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'USU_codigo, CAJA, FECHA, TICKET, '
      'SUM(PRECIO*CANTIDAD) AS TOTAL'
      'FROM'
      'TICKET'
      'WHERE'
      'FECHA = :FECHA'
      'AND CAJA = :CAJA'
      'GROUP BY'
      'USU_codigo, CAJA, FECHA, TICKET'
      'ORDER BY'
      'TICKET')
    Left = 80
    Top = 136
    object QTicketsFECHA: TDateTimeField
      FieldName = 'FECHA'
      Required = True
    end
    object QTicketsTICKET: TIntegerField
      FieldName = 'TICKET'
      Required = True
    end
    object QTicketsTOTAL: TFloatField
      FieldName = 'TOTAL'
      currency = True
    end
    object QTicketsUSU_codigo: TIntegerField
      FieldName = 'USU_codigo'
    end
    object QTicketsCAJA: TIntegerField
      FieldName = 'CAJA'
    end
  end
  object dsTickets: TDataSource
    DataSet = QTickets
    Left = 112
    Top = 136
  end
end
