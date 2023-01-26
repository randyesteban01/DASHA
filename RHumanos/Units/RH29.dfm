object frmElegiblesEmpleados: TfrmElegiblesEmpleados
  Left = 459
  Top = 94
  Width = 594
  Height = 393
  BorderIcons = [biSystemMenu]
  Caption = 'Posibles Elegibles'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 586
    Height = 321
    Align = alTop
    DataSource = dsElegibles
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nombre'
        Width = 244
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cedula'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Sexo'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Telefono1'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Telefono2'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object btClose: TBitBtn
    Left = 504
    Top = 328
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
  object BitBtn2: TBitBtn
    Left = 423
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    Glyph.Data = {
      E6000000424DE6000000000000007600000028000000100000000E0000000100
      0400000000007000000000000000000000001000000010000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333330000000000003330777777777777033088888888899703308888888888
      870333000000000000333330FCCCCCCF03333330FFFFFFFF03333330FCCCCCCF
      03333330FFFFFFFF03333330FCCCCCCF03333330FFFFFFFF0333333000000000
      03333333333333333333}
  end
  object QElegibles: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        '(sol_nombre+'#39' '#39'+sol_apellido_paterno+'#39' '#39'+sol_apellido_materno) a' +
        's Nombre,'
      
        'sol_cedula as Cedula, sol_sexo as Sexo, sol_telefono1 as Telefon' +
        'o1,'
      'sol_telefono2 as Telefono2'
      'from'
      'solicitud_empleo'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 408
    Top = 256
    object QElegiblesNombre: TStringField
      FieldName = 'Nombre'
      ReadOnly = True
      Size = 182
    end
    object QElegiblesCedula: TStringField
      FieldName = 'Cedula'
      Size = 13
    end
    object QElegiblesSexo: TStringField
      FieldName = 'Sexo'
      Size = 10
    end
    object QElegiblesTelefono1: TStringField
      FieldName = 'Telefono1'
      Size = 13
    end
    object QElegiblesTelefono2: TStringField
      FieldName = 'Telefono2'
      Size = 13
    end
  end
  object dsElegibles: TDataSource
    DataSet = QElegibles
    Left = 440
    Top = 256
  end
end
