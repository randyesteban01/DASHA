object FrmComentCoti: TFrmComentCoti
  Left = 738
  Top = 323
  Width = 416
  Height = 361
  ActiveControl = mmo1
  BorderIcons = []
  Caption = 'Agregar Comentarios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 281
    Width = 400
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      400
      41)
    object btClose: TBitBtn
      Left = 314
      Top = 8
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 0
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
    object btnAgregar: TBitBtn
      Left = 116
      Top = 8
      Width = 83
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Agregar'
      TabOrder = 1
      OnClick = btnAgregarClick
    end
    object btnAgregarCerrar: TBitBtn
      Left = 204
      Top = 8
      Width = 96
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Agregar /Cerrar'
      TabOrder = 2
      OnClick = btnAgregarCerrarClick
    end
  end
  object mmo1: TMemo
    Left = 0
    Top = 0
    Width = 400
    Height = 281
    Align = alClient
    Lines.Strings = (
      'mmo1')
    TabOrder = 1
  end
  object qComentarios: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'EMP'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SUC'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'COT'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'COM'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'USU'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'TIPO'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'declare @EMP INT, @SUC INT, @COT INT, @COMENTARIO VARCHAR(255), ' +
        '@USU VARCHAR(15), @TIPO INT'
      ''
      'SET @EMP = :EMP'
      'SET @SUC = :SUC'
      'SET @COT = :COT'
      'SET @COMENTARIO = :COM'
      'SET @USU = :USU'
      'SET @TIPO = :TIPO'
      ''
      ''
      'IF @TIPO = 0 BEGIN '
      
        'IF EXISTS(SELECT * FROM Cotizacion_Notif WHERE emp_codigo = @EMP' +
        ' AND suc_codigo = @SUC AND cot_numero = @COT AND cot_coment_1 IS' +
        ' NULL) BEGIN '
      'UPDATE Cotizacion_Notif'
      'SET cot_coment_1 = @COMENTARIO,'
      '       fec_coment_1 = getdate(),'
      '       usu_coment_1 = @USU'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND cot_numero = @' +
        'COT '
      'END'
      'ELSE'
      
        'IF EXISTS(SELECT * FROM Cotizacion_Notif WHERE emp_codigo = @EMP' +
        ' AND suc_codigo = @SUC AND cot_numero = @COT AND cot_coment_1 IS' +
        ' NOT NULL AND cot_coment_2 IS NULL) BEGIN '
      'UPDATE Cotizacion_Notif'
      'SET cot_coment_2 = @COMENTARIO,'
      '    usu_coment_2 = @USU,'
      '       fec_coment_2 = getdate()'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND cot_numero = @' +
        'COT '
      'END'
      'ELSE'
      
        'IF EXISTS(SELECT * FROM Cotizacion_Notif WHERE emp_codigo = @EMP' +
        ' AND suc_codigo = @SUC AND cot_numero = @COT AND cot_coment_1 IS' +
        ' NOT NULL AND cot_coment_2 IS NOT NULL AND cot_coment_3 IS NULL)' +
        ' BEGIN '
      'UPDATE Cotizacion_Notif'
      'SET cot_coment_3 = @COMENTARIO,'
      '    usu_coment_3 = @USU,'
      '    cot_not_status = '#39'CER'#39','
      '    fec_coment_3 = getdate()'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND cot_numero = @' +
        'COT '
      'END'
      ''
      'END ELSE '
      'IF @TIPO = 1 BEGIN '
      
        'IF EXISTS(SELECT * FROM Cotizacion_Notif WHERE emp_codigo = @EMP' +
        ' AND suc_codigo = @SUC AND cot_numero = @COT AND cot_coment_1 IS' +
        ' NULL) BEGIN '
      'UPDATE Cotizacion_Notif'
      'SET cot_coment_1 = @COMENTARIO,'
      '    usu_coment_1 = @USU,'
      #9'cot_not_status = '#39'CER'#39','
      '       fec_coment_1 = getdate()'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND cot_numero = @' +
        'COT '
      'END'
      'ELSE'
      
        'IF EXISTS(SELECT * FROM Cotizacion_Notif WHERE emp_codigo = @EMP' +
        ' AND suc_codigo = @SUC AND cot_numero = @COT AND cot_coment_1 IS' +
        ' NOT NULL AND cot_coment_2 IS NULL) BEGIN '
      'UPDATE Cotizacion_Notif'
      'SET cot_coment_2 = @COMENTARIO,'
      '    usu_coment_2 = @USU,'
      #9'cot_not_status = '#39'CER'#39','
      '       fec_coment_2 = getdate()'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND cot_numero = @' +
        'COT '
      'END'
      'ELSE'
      
        'IF EXISTS(SELECT * FROM Cotizacion_Notif WHERE emp_codigo = @EMP' +
        ' AND suc_codigo = @SUC AND cot_numero = @COT AND cot_coment_1 IS' +
        ' NOT NULL AND cot_coment_2 IS NOT NULL AND cot_coment_3 IS NULL)' +
        ' BEGIN '
      'UPDATE Cotizacion_Notif'
      'SET cot_coment_3 = @COMENTARIO,'
      '    usu_coment_3 = @USU,'
      #9'cot_not_status = '#39'CER'#39','
      '       fec_coment_3 = getdate()'
      
        'WHERE emp_codigo = @EMP AND suc_codigo = @SUC AND cot_numero = @' +
        'COT '
      'END'
      'END')
    Left = 72
    Top = 64
  end
end
