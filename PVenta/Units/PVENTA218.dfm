object frmFormaPagoTicket: TfrmFormaPagoTicket
  Left = 671
  Top = 311
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Forma de pago'
  ClientHeight = 179
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 286
    Height = 137
    Align = alTop
    DataSource = dsForma
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'forma'
        PickList.Strings = (
          'EFE'
          'CHE'
          'TAR'
          'OBO'
          'BOC')
        Title.Alignment = taCenter
        Title.Caption = 'Forma'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pagado'
        Title.Alignment = taCenter
        Title.Caption = 'Pagado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'devuelta'
        Title.Alignment = taCenter
        Title.Caption = 'Devuelta'
        Width = 98
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 120
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object QForma: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QFormaNewRecord
    Parameters = <
      item
        Name = 'caj'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'fec'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'tic'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      
        'caja,usu_codigo,fecha,ticket,forma,pagado,devuelta,empresa,credi' +
        'to,'
      'cliente,banco,documento'
      'from'
      'formas_pago_ticket'
      'where'
      'caja = :caj'
      'and fecha = :fec'
      'and ticket = :tic'
      'and usu_codigo = :usu'
      '')
    Left = 8
    Top = 128
    object QFormacaja: TIntegerField
      FieldName = 'caja'
    end
    object QFormausu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object QFormafecha: TDateTimeField
      FieldName = 'fecha'
    end
    object QFormaticket: TIntegerField
      FieldName = 'ticket'
    end
    object QFormaforma: TStringField
      FieldName = 'forma'
      Size = 3
    end
    object QFormapagado: TBCDField
      FieldName = 'pagado'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFormadevuelta: TBCDField
      FieldName = 'devuelta'
      currency = True
      Precision = 15
      Size = 2
    end
    object QFormaempresa: TIntegerField
      FieldName = 'empresa'
    end
    object QFormacredito: TStringField
      FieldName = 'credito'
      Size = 5
    end
    object QFormacliente: TIntegerField
      FieldName = 'cliente'
    end
    object QFormabanco: TStringField
      FieldName = 'banco'
      Size = 60
    end
    object QFormadocumento: TStringField
      FieldName = 'documento'
    end
  end
  object dsForma: TDataSource
    DataSet = QForma
    Left = 40
    Top = 128
  end
end
