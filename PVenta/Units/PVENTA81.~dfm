object frmMontoFPago: TfrmMontoFPago
  Left = 735
  Top = 302
  ActiveControl = edMonto
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Digite el monto'
  ClientHeight = 158
  ClientWidth = 381
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 3
    Top = 7
    Width = 43
    Height = 16
    Caption = 'Monto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 3
    Top = 33
    Width = 84
    Height = 16
    Caption = 'Descripci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBTipoPOSPAD: TLabel
    Left = 3
    Top = 63
    Width = 68
    Height = 32
    Caption = 'Tipo '#13#10'POS/PAD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCantCuotas: TLabel
    Left = 3
    Top = 105
    Width = 84
    Height = 16
    Caption = 'Descripci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btgrabar: TBitBtn
    Left = 135
    Top = 131
    Width = 83
    Height = 25
    Caption = '[ F2 ] - Grabar'
    TabOrder = 2
    OnClick = btgrabarClick
  end
  object edDescrip: TEdit
    Left = 91
    Top = 31
    Width = 279
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btcancelar: TBitBtn
    Left = 227
    Top = 131
    Width = 97
    Height = 25
    Caption = '[ ESC ] - Cancelar'
    TabOrder = 3
    OnClick = btcancelarClick
  end
  object btnPOS: TBitBtn
    Left = 5
    Top = 131
    Width = 117
    Height = 25
    Caption = '[ F3 ] - POS / PINPAD'
    TabOrder = 6
    Visible = False
    OnClick = btnPOSClick
  end
  object edMonto: TCurrencyEdit
    Left = 91
    Top = 7
    Width = 121
    Height = 21
    Alignment = taLeftJustify
    AutoSize = False
    DisplayFormat = '#,0.00;-#,0.00'
    TabOrder = 0
  end
  object rgTipoVenta: TRadioGroup
    Left = 92
    Top = 59
    Width = 185
    Height = 41
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Normal'
      'Por Cuotas')
    TabOrder = 4
    OnClick = rgTipoVentaClick
  end
  object cbbCantCuotas: TComboBox
    Left = 92
    Top = 104
    Width = 47
    Height = 21
    AutoCloseUp = True
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      '3'
      '6'
      '9'
      '12'
      '18'
      '24'
      '36'
      '48'
      '60')
  end
  object edtReference: TEdit
    Left = 296
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 
      '{"Status":"Successful","Host":{"Value":6,"Description":"Credit"}' +
      ',"Mode":{"Value":"C@5","Description":"Sale with CHIP(EMV)"},"Car' +
      'd":{"Product":"Visa","CardNumber":"454098******5117","HolderName' +
      '":"JHONATTAN GOMEZ"},"Transaction":{"AuthorizationNumber":"01401' +
      '1","Reference":1,"RetrievalReference":129923000093,"DataTime":"1' +
      '0/26/2021 11:07:31 PM","ApplicationIdentifier":"A0000000031010",' +
      '"LoyaltyDeferredNumber":null,"TID":null},"Batch":6,"TerminalID":' +
      '"80029126","MerchantID":"349011300","Reserved":null,"Signature":' +
      'null}'
    Visible = False
  end
  object qPagoVeriphone: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <
      item
        Name = 'tipo'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'CantCuotas'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @description varchar(2500)'
      'declare @tipo int'
      'declare @tc int'
      'declare @aprobacion int'
      'declare @referencia varchar(12)'
      'declare @ref varchar(12)'
      'declare @fecha varchar(22)'
      'declare @cantcuotas int'
      ''
      
        'set @tc = (select top 1 cast(substring(for_descripcion,1,4) as i' +
        'nt) from facformapago where for_veriphone_desc is not null order' +
        ' by fac_numero desc)+1'
      
        'set @aprobacion = (select top 1 cast(substring(for_descripcion,8' +
        ',6) as int) from facformapago where for_veriphone_desc is not nu' +
        'll order by fac_numero desc)+1'
      
        'select @referencia = JSON_VALUE(for_veriphone_desc, '#39'$.Transacti' +
        'on.RetrievalReference'#39')  from facformapago where for_veriphone_d' +
        'esc is not null order by fac_numero desc'
      
        'select @ref = substring(@referencia,1,9)+rtrim(cast(substring(@r' +
        'eferencia,10,11) as int)+1)'
      'select @fecha = cast(getdate() as char(22))'
      ''
      'set @tipo = :tipo'
      'SET @cantcuotas = :CantCuotas'
      ''
      'if @tipo = 0 begin '
      
        'set @description = '#39'{"Status":"Successful","Host":{"Value":6,"De' +
        'scription":"Credit"},"Mode":{"Value":"C@5","Description":"Sale w' +
        'ith CHIP(EMV)"},"Card":{"Product":"Visa","CardNumber":"454098***' +
        '***'#39'+rtrim(@tc)+'#39'","HolderName":"JHONATTAN GOMEZ"},"Transaction"' +
        ':{"AuthorizationNumber":"'#39'+rtrim(@aprobacion)+'#39'","Reference":1,"' +
        'RetrievalReference":'#39'+@ref+'#39',"DataTime":"'#39'+@fecha+'#39'","Applicatio' +
        'nIdentifier":"A0000000031010","LoyaltyDeferredNumber":null,"TID"' +
        ':null},"Batch":6,"TerminalID":"80029126","MerchantID":"349011300' +
        '","Reserved":null,"Signature":null}'#39
      'end'
      ''
      'if @tipo = 1 begin '
      
        'select @description = '#39'{"Status":"Successful","Host":{"Value":6,' +
        '"Description":"Credit"},"Mode":{"Value":"C@5","Description":"Sal' +
        'e with CHIP(EMV)"},"Card":{"Product":"Visa","CardNumber":"454098' +
        '******'#39'+rtrim(@tc)+'
      
        #39'","HolderName":"JHONATTAN GOMEZ"},"Transaction":{"Authorization' +
        'Number":"'#39'+rtrim(@aprobacion)+'#39'","Reference":1,"RetrievalReferen' +
        'ce":'#39'+@ref+'#39',"DataTime":"'#39'+@fecha+'
      
        #39'","ApplicationIdentifier":"A0000000031010","LoyaltyDeferredNumb' +
        'er":CU'#39'+case when @cantcuotas<=9 then '#39'0'#39'+rtrim(@cantcuotas) els' +
        'e rtrim(@cantcuotas) end+'#39',"TID":null},"Batch":6,"TerminalID":"8' +
        '0029126","MerchantID":"349011300","Reserved":null,"Signature":nu' +
        'll}'#39
      'end'
      ''
      'select @description as for_veriphone_desc')
    Left = 280
    Top = 88
  end
end
