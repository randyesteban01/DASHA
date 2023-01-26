object frmCierreDiaCardnet: TfrmCierreDiaCardnet
  Left = 548
  Top = 348
  BorderStyle = bsToolWindow
  Caption = 'Cierre del D'#237'a CardNet '
  ClientHeight = 161
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object BitBtn2: TBitBtn
    Left = 270
    Top = 129
    Width = 98
    Height = 27
    Caption = 'Processar cierre'
    TabOrder = 0
    OnClick = BitBtn2Click
  end
  object btClose: TBitBtn
    Left = 379
    Top = 129
    Width = 81
    Height = 27
    Caption = '&Salir'
    TabOrder = 1
    TabStop = False
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
  object StaticText1: TStaticText
    Left = 9
    Top = 9
    Width = 449
    Height = 52
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 
      'EL CIERRE DEL DIA BLOQUEA TODAS LAS OPERACIONES CON EL VERIPHONE' +
      ' DE CARDNET'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 34
    Top = 121
    Width = 131
    Height = 22
    TabOrder = 3
    Text = 
      '{"Status":"Successful","ClosureQuantity":1,"Closures":[{"Status"' +
      ':"Successful","Result":"SuccessfulClosing","Host":"CREDITO","Bat' +
      'ch":43,"DataTime":"5/2/2022 6:01:28 p.'#160'm.","TerminalID":"8002912' +
      '6","MerchantID":null,"Purchase":{"Quantity":1,"Amount":3600,"Tax' +
      '":549.15,"OtherTax":0.00},"Return":{"Quantity":1,"Amount":1180.0' +
      '0,"Tax":180.00}}]}'
    Visible = False
  end
  object pnMsgImpresion: TPanel
    Left = 2
    Top = 47
    Width = 439
    Height = 61
    TabOrder = 4
    Visible = False
    object lblWait: TLabel
      Left = 45
      Top = 16
      Width = 319
      Height = 29
      Alignment = taCenter
      Caption = 'Buscando puerto, espere...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object qImpCardNet: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'emp'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'usu'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'DECLARE @json varchar(max)'
      'declare @emp int'
      'declare @suc int'
      'declare @usu int'
      ''
      'set @emp = :emp'
      'set @usu   = :usu'
      ''
      ''
      
        'select for_veriphone_desc json,for_monto monto, (for_monto*(p.pa' +
        'r_itbis/100)) monto_itbis, for_monto-(for_monto*(p.par_itbis/100' +
        ')) montosinitbis,'
      
        's.suc_nombre sucursal, s.suc_direccion direccion, F.EMP_CODIGO, ' +
        'F.SUC_CODIGO, F.TFA_CODIGO, F.FAC_NUMERO, F.FAC_FORMA'
      'from facformapago fp'
      'inner join Parametros p on fp.emp_codigo = p.emp_codigo'
      
        'inner join Sucursales s on fp.emp_codigo = s.emp_codigo and fp.s' +
        'uc_codigo = s.suc_codigo'
      
        'INNER JOIN FACTURAS F ON FP.EMP_CODIGO = F.EMP_CODIGO AND FP.SUC' +
        '_CODIGO = F.SUC_CODIGO AND FP.FAC_NUMERO = F.FAC_NUMERO AND FP.F' +
        'AC_FORMA = F.FAC_FORMA AND FP.TFA_CODIGO = F.TFA_CODIGO'
      'where isnull(for_veriphone_desc,'#39#39')<>'#39#39
      'and fp.emp_codigo = @emp '
      
        'and isnull(fp.for_veriphone_desc,'#39#39')<>'#39#39' AND F.FAC_STATUS <> '#39'AN' +
        'U'#39' AND F.FAC_FECHA = CAST(CAST(GETDATE() AS CHAR(11)) AS DATETIM' +
        'E)'
      'and f.usu_codigo = @usu')
    Left = 200
    Top = 104
  end
end
