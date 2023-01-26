object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 105
  Height = 350
  Width = 589
  object dsEmpresas: TDataSource
    DataSet = QEmpresas
    Left = 96
    Top = 8
  end
  object IBDatabase: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Delphi\Softwares\PVenta\Datos\Ctmpv.gdb'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    BeforeConnect = IBDatabaseBeforeConnect
    Left = 520
    Top = 248
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saCommitRetaining
    Left = 448
    Top = 248
  end
  object Query1: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 384
    Top = 248
  end
  object QEmpresas: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select EMP_CODIGO, EMP_DIRECCION, EMP_EMAIL, EMP_FAX, EMP_LOCALI' +
        'DAD, EMP_LOGO, EMP_NOMBRE, EMP_RNC, EMP_STATUS, EMP_TELEFONO, EM' +
        'P_WEB'
      ' from EMPRESAS'
      'WHERE EMP_STATUS = '#39'ACT'#39
      'ORDER BY EMP_CODIGO')
    Left = 24
    Top = 8
    object QEmpresasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'EMPRESAS.EMP_CODIGO'
      Required = True
    end
    object QEmpresasEMP_DIRECCION: TIBStringField
      FieldName = 'EMP_DIRECCION'
      Origin = 'EMPRESAS.EMP_DIRECCION'
      Size = 60
    end
    object QEmpresasEMP_EMAIL: TIBStringField
      FieldName = 'EMP_EMAIL'
      Origin = 'EMPRESAS.EMP_EMAIL'
      Size = 60
    end
    object QEmpresasEMP_FAX: TIBStringField
      FieldName = 'EMP_FAX'
      Origin = 'EMPRESAS.EMP_FAX'
      Size = 30
    end
    object QEmpresasEMP_LOCALIDAD: TIBStringField
      FieldName = 'EMP_LOCALIDAD'
      Origin = 'EMPRESAS.EMP_LOCALIDAD'
      Size = 60
    end
    object QEmpresasEMP_LOGO: TIBStringField
      FieldName = 'EMP_LOGO'
      Origin = 'EMPRESAS.EMP_LOGO'
      Size = 200
    end
    object QEmpresasEMP_NOMBRE: TIBStringField
      FieldName = 'EMP_NOMBRE'
      Origin = 'EMPRESAS.EMP_NOMBRE'
      Size = 60
    end
    object QEmpresasEMP_RNC: TIBStringField
      FieldName = 'EMP_RNC'
      Origin = 'EMPRESAS.EMP_RNC'
      Size = 30
    end
    object QEmpresasEMP_STATUS: TIBStringField
      FieldName = 'EMP_STATUS'
      Origin = 'EMPRESAS.EMP_STATUS'
      Size = 3
    end
    object QEmpresasEMP_TELEFONO: TIBStringField
      FieldName = 'EMP_TELEFONO'
      Origin = 'EMPRESAS.EMP_TELEFONO'
      Size = 30
    end
    object QEmpresasEMP_WEB: TIBStringField
      FieldName = 'EMP_WEB'
      Origin = 'EMPRESAS.EMP_WEB'
      Size = 60
    end
  end
  object QParametros: TIBQuery
    Database = IBDatabase
    Transaction = IBTransaction1
    AfterPost = QParametrosAfterPost
    BufferChunks = 1000
    CachedUpdates = True
    DataSource = dsEmpresas
    SQL.Strings = (
      
        'select EMP_CODIGO, PAR_ALMACENVENTA, PAR_CODIGOCLIENTE, PAR_CODI' +
        'GOPRODUCTO, PAR_FACFORMA, PAR_FORMATODES, PAR_FORMATODEV, PAR_FO' +
        'RMATONC, PAR_FORMATOND, PAR_FORMATORC, PAR_FORMATORI, PAR_ITBIS,' +
        ' PAR_MOVNDE, PAR_PUERTODES, PAR_PUERTODEV, PAR_PUERTONC, PAR_PUE' +
        'RTOND, PAR_PUERTORC, PAR_PUERTORI, PAR_TFACODIGO, PAR_TIPOPRECIO' +
        ', PAR_CONTROLAMAXIMO, PAR_CONTROLAMINIMO, PAR_DEBAJOCOSTO, PAR_C' +
        'OMBOCOTIZACION, PAR_COMBOIMPDETALLE, PAR_COMBOREBAJA, PAR_VENDIG' +
        'ITOSLOTE, PAR_VENPERMITIR, PAR_VENVERIFICA, PAR_CONTEOLIMPIA, PA' +
        'R_PREDESCGLOBAL, PAR_PREDESCRIP1, PAR_PREDESCRIP2, PAR_PREDESCRI' +
        'P3, PAR_PREDESCRIP4, PAR_FACANULA, PAR_FACDIASANULA, PAR_FACDIAS' +
        'MODIFICA, PAR_FACDISPONIBLE, PAR_FACMODIFICA, PAR_FACSELPRECIO, ' +
        'PAR_FACTEMPORAL, PAR_DEVDIAS, PAR_DEVEFECTIVO, PAR_FORMATOCUADRE' +
        ', PAR_AHORA1, PAR_AHORA2, PAR_BHORA1, PAR_BHORA2, PAR_FACMODPREC' +
        'IO, PAR_FORMATOCON, PAR_CAJA, PAR_MOVCK from PARAMETROS'
      'WHERE EMP_CODIGO = :EMP_CODIGO')
    UpdateObject = UPDParametros
    Left = 24
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'EMP_CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object QParametrosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
      Origin = 'PARAMETROS.EMP_CODIGO'
      Required = True
    end
    object QParametrosPAR_ALMACENVENTA: TIntegerField
      FieldName = 'PAR_ALMACENVENTA'
      Origin = 'PARAMETROS.PAR_ALMACENVENTA'
    end
    object QParametrosPAR_CODIGOCLIENTE: TIBStringField
      FieldName = 'PAR_CODIGOCLIENTE'
      Origin = 'PARAMETROS.PAR_CODIGOCLIENTE'
      Size = 1
    end
    object QParametrosPAR_CODIGOPRODUCTO: TIBStringField
      FieldName = 'PAR_CODIGOPRODUCTO'
      Origin = 'PARAMETROS.PAR_CODIGOPRODUCTO'
      Size = 1
    end
    object QParametrosPAR_FACFORMA: TIBStringField
      FieldName = 'PAR_FACFORMA'
      Origin = 'PARAMETROS.PAR_FACFORMA'
      Size = 1
    end
    object QParametrosPAR_FORMATODES: TIntegerField
      FieldName = 'PAR_FORMATODES'
      Origin = 'PARAMETROS.PAR_FORMATODES'
    end
    object QParametrosPAR_FORMATODEV: TIntegerField
      FieldName = 'PAR_FORMATODEV'
      Origin = 'PARAMETROS.PAR_FORMATODEV'
    end
    object QParametrosPAR_FORMATONC: TIntegerField
      FieldName = 'PAR_FORMATONC'
      Origin = 'PARAMETROS.PAR_FORMATONC'
    end
    object QParametrosPAR_FORMATOND: TIntegerField
      FieldName = 'PAR_FORMATOND'
      Origin = 'PARAMETROS.PAR_FORMATOND'
    end
    object QParametrosPAR_FORMATORC: TIntegerField
      FieldName = 'PAR_FORMATORC'
      Origin = 'PARAMETROS.PAR_FORMATORC'
    end
    object QParametrosPAR_FORMATORI: TIntegerField
      FieldName = 'PAR_FORMATORI'
      Origin = 'PARAMETROS.PAR_FORMATORI'
    end
    object QParametrosPAR_ITBIS: TFloatField
      FieldName = 'PAR_ITBIS'
      Origin = 'PARAMETROS.PAR_ITBIS'
      currency = True
    end
    object QParametrosPAR_MOVNDE: TIntegerField
      FieldName = 'PAR_MOVNDE'
      Origin = 'PARAMETROS.PAR_MOVNDE'
    end
    object QParametrosPAR_PUERTODES: TIBStringField
      FieldName = 'PAR_PUERTODES'
      Origin = 'PARAMETROS.PAR_PUERTODES'
    end
    object QParametrosPAR_PUERTODEV: TIBStringField
      FieldName = 'PAR_PUERTODEV'
      Origin = 'PARAMETROS.PAR_PUERTODEV'
    end
    object QParametrosPAR_PUERTONC: TIBStringField
      FieldName = 'PAR_PUERTONC'
      Origin = 'PARAMETROS.PAR_PUERTONC'
    end
    object QParametrosPAR_PUERTOND: TIBStringField
      FieldName = 'PAR_PUERTOND'
      Origin = 'PARAMETROS.PAR_PUERTOND'
    end
    object QParametrosPAR_PUERTORC: TIBStringField
      FieldName = 'PAR_PUERTORC'
      Origin = 'PARAMETROS.PAR_PUERTORC'
    end
    object QParametrosPAR_PUERTORI: TIBStringField
      FieldName = 'PAR_PUERTORI'
      Origin = 'PARAMETROS.PAR_PUERTORI'
    end
    object QParametrosPAR_TFACODIGO: TIntegerField
      FieldName = 'PAR_TFACODIGO'
      Origin = 'PARAMETROS.PAR_TFACODIGO'
    end
    object QParametrosPAR_TIPOPRECIO: TIBStringField
      FieldName = 'PAR_TIPOPRECIO'
      Origin = 'PARAMETROS.PAR_TIPOPRECIO'
      Size = 7
    end
    object QParametrosPAR_CONTROLAMAXIMO: TIBStringField
      FieldName = 'PAR_CONTROLAMAXIMO'
      Origin = 'PARAMETROS.PAR_CONTROLAMAXIMO'
      Size = 5
    end
    object QParametrosPAR_CONTROLAMINIMO: TIBStringField
      FieldName = 'PAR_CONTROLAMINIMO'
      Origin = 'PARAMETROS.PAR_CONTROLAMINIMO'
      Size = 5
    end
    object QParametrosPAR_DEBAJOCOSTO: TIBStringField
      FieldName = 'PAR_DEBAJOCOSTO'
      Origin = 'PARAMETROS.PAR_DEBAJOCOSTO'
      Size = 5
    end
    object QParametrosPAR_COMBOCOTIZACION: TIBStringField
      FieldName = 'PAR_COMBOCOTIZACION'
      Origin = 'PARAMETROS.PAR_COMBOCOTIZACION'
      Size = 5
    end
    object QParametrosPAR_COMBOIMPDETALLE: TIBStringField
      FieldName = 'PAR_COMBOIMPDETALLE'
      Origin = 'PARAMETROS.PAR_COMBOIMPDETALLE'
      Size = 5
    end
    object QParametrosPAR_COMBOREBAJA: TIBStringField
      FieldName = 'PAR_COMBOREBAJA'
      Origin = 'PARAMETROS.PAR_COMBOREBAJA'
      Size = 5
    end
    object QParametrosPAR_VENDIGITOSLOTE: TIntegerField
      FieldName = 'PAR_VENDIGITOSLOTE'
      Origin = 'PARAMETROS.PAR_VENDIGITOSLOTE'
    end
    object QParametrosPAR_VENPERMITIR: TIBStringField
      FieldName = 'PAR_VENPERMITIR'
      Origin = 'PARAMETROS.PAR_VENPERMITIR'
      Size = 5
    end
    object QParametrosPAR_VENVERIFICA: TIBStringField
      FieldName = 'PAR_VENVERIFICA'
      Origin = 'PARAMETROS.PAR_VENVERIFICA'
      Size = 1
    end
    object QParametrosPAR_CONTEOLIMPIA: TIBStringField
      FieldName = 'PAR_CONTEOLIMPIA'
      Origin = 'PARAMETROS.PAR_CONTEOLIMPIA'
      Size = 1
    end
    object QParametrosPAR_PREDESCGLOBAL: TIBStringField
      FieldName = 'PAR_PREDESCGLOBAL'
      Origin = 'PARAMETROS.PAR_PREDESCGLOBAL'
      Size = 5
    end
    object QParametrosPAR_PREDESCRIP1: TIBStringField
      FieldName = 'PAR_PREDESCRIP1'
      Origin = 'PARAMETROS.PAR_PREDESCRIP1'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP2: TIBStringField
      FieldName = 'PAR_PREDESCRIP2'
      Origin = 'PARAMETROS.PAR_PREDESCRIP2'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP3: TIBStringField
      FieldName = 'PAR_PREDESCRIP3'
      Origin = 'PARAMETROS.PAR_PREDESCRIP3'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP4: TIBStringField
      FieldName = 'PAR_PREDESCRIP4'
      Origin = 'PARAMETROS.PAR_PREDESCRIP4'
      Size = 10
    end
    object QParametrosPAR_FACANULA: TIBStringField
      FieldName = 'PAR_FACANULA'
      Origin = 'PARAMETROS.PAR_FACANULA'
      Size = 5
    end
    object QParametrosPAR_FACDIASANULA: TIntegerField
      FieldName = 'PAR_FACDIASANULA'
      Origin = 'PARAMETROS.PAR_FACDIASANULA'
    end
    object QParametrosPAR_FACDIASMODIFICA: TIntegerField
      FieldName = 'PAR_FACDIASMODIFICA'
      Origin = 'PARAMETROS.PAR_FACDIASMODIFICA'
    end
    object QParametrosPAR_FACDISPONIBLE: TIBStringField
      FieldName = 'PAR_FACDISPONIBLE'
      Origin = 'PARAMETROS.PAR_FACDISPONIBLE'
      Size = 5
    end
    object QParametrosPAR_FACMODIFICA: TIBStringField
      FieldName = 'PAR_FACMODIFICA'
      Origin = 'PARAMETROS.PAR_FACMODIFICA'
      Size = 5
    end
    object QParametrosPAR_FACSELPRECIO: TIBStringField
      FieldName = 'PAR_FACSELPRECIO'
      Origin = 'PARAMETROS.PAR_FACSELPRECIO'
      Size = 5
    end
    object QParametrosPAR_FACTEMPORAL: TIBStringField
      FieldName = 'PAR_FACTEMPORAL'
      Origin = 'PARAMETROS.PAR_FACTEMPORAL'
      Size = 5
    end
    object QParametrosPAR_DEVDIAS: TIntegerField
      FieldName = 'PAR_DEVDIAS'
      Origin = 'PARAMETROS.PAR_DEVDIAS'
    end
    object QParametrosPAR_DEVEFECTIVO: TIBStringField
      FieldName = 'PAR_DEVEFECTIVO'
      Origin = 'PARAMETROS.PAR_DEVEFECTIVO'
      Size = 5
    end
    object QParametrosPAR_FORMATOCUADRE: TIntegerField
      FieldName = 'PAR_FORMATOCUADRE'
      Origin = 'PARAMETROS.PAR_FORMATOCUADRE'
    end
    object QParametrosPAR_AHORA1: TDateTimeField
      FieldName = 'PAR_AHORA1'
      Origin = 'PARAMETROS.PAR_AHORA1'
    end
    object QParametrosPAR_AHORA2: TDateTimeField
      FieldName = 'PAR_AHORA2'
      Origin = 'PARAMETROS.PAR_AHORA2'
    end
    object QParametrosPAR_BHORA1: TDateTimeField
      FieldName = 'PAR_BHORA1'
      Origin = 'PARAMETROS.PAR_BHORA1'
    end
    object QParametrosPAR_BHORA2: TDateTimeField
      FieldName = 'PAR_BHORA2'
      Origin = 'PARAMETROS.PAR_BHORA2'
    end
    object QParametrosPAR_FACMODPRECIO: TIBStringField
      FieldName = 'PAR_FACMODPRECIO'
      Origin = 'PARAMETROS.PAR_FACMODPRECIO'
      Size = 5
    end
    object QParametrosPAR_FORMATOCON: TIntegerField
      FieldName = 'PAR_FORMATOCON'
      Origin = 'PARAMETROS.PAR_FORMATOCON'
    end
    object QParametrosPAR_CAJA: TIBStringField
      FieldName = 'PAR_CAJA'
      Origin = 'PARAMETROS.PAR_CAJA'
      Size = 1
    end
    object QParametrosPAR_MOVCK: TIntegerField
      FieldName = 'PAR_MOVCK'
      Origin = 'PARAMETROS.PAR_MOVCK'
    end
  end
  object UPDParametros: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EMP_CODIGO,'
      '  PAR_CODIGOPRODUCTO,'
      '  PAR_CODIGOCLIENTE,'
      '  PAR_TIPOPRECIO,'
      '  PAR_ITBIS,'
      '  PAR_FACFORMA,'
      '  PAR_TFACODIGO,'
      '  PAR_ALMACENVENTA,'
      '  PAR_FORMATONC,'
      '  PAR_FORMATOND,'
      '  PAR_FORMATODEV,'
      '  PAR_FORMATORC,'
      '  PAR_FORMATODES,'
      '  PAR_FORMATORI,'
      '  PAR_PUERTONC,'
      '  PAR_PUERTOND,'
      '  PAR_PUERTODEV,'
      '  PAR_PUERTORC,'
      '  PAR_PUERTODES,'
      '  PAR_PUERTORI,'
      '  PAR_MOVNDE,'
      '  PAR_CONTROLAMAXIMO,'
      '  PAR_CONTROLAMINIMO,'
      '  PAR_DEBAJOCOSTO,'
      '  PAR_COMBOIMPDETALLE,'
      '  PAR_COMBOCOTIZACION,'
      '  PAR_COMBOREBAJA,'
      '  PAR_VENPERMITIR,'
      '  PAR_VENDIGITOSLOTE,'
      '  PAR_VENVERIFICA,'
      '  PAR_CONTEOLIMPIA,'
      '  PAR_PREDESCGLOBAL,'
      '  PAR_PREDESCRIP1,'
      '  PAR_PREDESCRIP2,'
      '  PAR_PREDESCRIP3,'
      '  PAR_PREDESCRIP4,'
      '  PAR_FACDISPONIBLE,'
      '  PAR_FACTEMPORAL,'
      '  PAR_FACSELPRECIO,'
      '  PAR_FACMODIFICA,'
      '  PAR_FACANULA,'
      '  PAR_FACDIASMODIFICA,'
      '  PAR_FACDIASANULA,'
      '  PAR_DEVEFECTIVO,'
      '  PAR_DEVDIAS,'
      '  PAR_FORMATOCUADRE,'
      '  PAR_AHORA1,'
      '  PAR_AHORA2,'
      '  PAR_BHORA1,'
      '  PAR_BHORA2,'
      '  PAR_FACMODPRECIO,'
      '  PAR_FORMATOCON,'
      '  PAR_CAJA,'
      '  PAR_IMPCODIGOBARRA,'
      '  CPA_CODIGOCLIENTE,'
      '  PAR_LIMITEINICIAL,'
      '  PAR_MOVCK'
      'from PARAMETROS '
      'where'
      '  EMP_CODIGO = :EMP_CODIGO')
    ModifySQL.Strings = (
      'update PARAMETROS'
      'set'
      '  EMP_CODIGO = :EMP_CODIGO,'
      '  PAR_CODIGOPRODUCTO = :PAR_CODIGOPRODUCTO,'
      '  PAR_CODIGOCLIENTE = :PAR_CODIGOCLIENTE,'
      '  PAR_TIPOPRECIO = :PAR_TIPOPRECIO,'
      '  PAR_ITBIS = :PAR_ITBIS,'
      '  PAR_FACFORMA = :PAR_FACFORMA,'
      '  PAR_TFACODIGO = :PAR_TFACODIGO,'
      '  PAR_ALMACENVENTA = :PAR_ALMACENVENTA,'
      '  PAR_FORMATONC = :PAR_FORMATONC,'
      '  PAR_FORMATOND = :PAR_FORMATOND,'
      '  PAR_FORMATODEV = :PAR_FORMATODEV,'
      '  PAR_FORMATORC = :PAR_FORMATORC,'
      '  PAR_FORMATODES = :PAR_FORMATODES,'
      '  PAR_FORMATORI = :PAR_FORMATORI,'
      '  PAR_PUERTONC = :PAR_PUERTONC,'
      '  PAR_PUERTOND = :PAR_PUERTOND,'
      '  PAR_PUERTODEV = :PAR_PUERTODEV,'
      '  PAR_PUERTORC = :PAR_PUERTORC,'
      '  PAR_PUERTODES = :PAR_PUERTODES,'
      '  PAR_PUERTORI = :PAR_PUERTORI,'
      '  PAR_MOVNDE = :PAR_MOVNDE,'
      '  PAR_CONTROLAMAXIMO = :PAR_CONTROLAMAXIMO,'
      '  PAR_CONTROLAMINIMO = :PAR_CONTROLAMINIMO,'
      '  PAR_DEBAJOCOSTO = :PAR_DEBAJOCOSTO,'
      '  PAR_COMBOIMPDETALLE = :PAR_COMBOIMPDETALLE,'
      '  PAR_COMBOCOTIZACION = :PAR_COMBOCOTIZACION,'
      '  PAR_COMBOREBAJA = :PAR_COMBOREBAJA,'
      '  PAR_VENPERMITIR = :PAR_VENPERMITIR,'
      '  PAR_VENDIGITOSLOTE = :PAR_VENDIGITOSLOTE,'
      '  PAR_VENVERIFICA = :PAR_VENVERIFICA,'
      '  PAR_CONTEOLIMPIA = :PAR_CONTEOLIMPIA,'
      '  PAR_PREDESCGLOBAL = :PAR_PREDESCGLOBAL,'
      '  PAR_PREDESCRIP1 = :PAR_PREDESCRIP1,'
      '  PAR_PREDESCRIP2 = :PAR_PREDESCRIP2,'
      '  PAR_PREDESCRIP3 = :PAR_PREDESCRIP3,'
      '  PAR_PREDESCRIP4 = :PAR_PREDESCRIP4,'
      '  PAR_FACDISPONIBLE = :PAR_FACDISPONIBLE,'
      '  PAR_FACTEMPORAL = :PAR_FACTEMPORAL,'
      '  PAR_FACSELPRECIO = :PAR_FACSELPRECIO,'
      '  PAR_FACMODIFICA = :PAR_FACMODIFICA,'
      '  PAR_FACANULA = :PAR_FACANULA,'
      '  PAR_FACDIASMODIFICA = :PAR_FACDIASMODIFICA,'
      '  PAR_FACDIASANULA = :PAR_FACDIASANULA,'
      '  PAR_DEVEFECTIVO = :PAR_DEVEFECTIVO,'
      '  PAR_DEVDIAS = :PAR_DEVDIAS,'
      '  PAR_FORMATOCUADRE = :PAR_FORMATOCUADRE,'
      '  PAR_AHORA1 = :PAR_AHORA1,'
      '  PAR_AHORA2 = :PAR_AHORA2,'
      '  PAR_BHORA1 = :PAR_BHORA1,'
      '  PAR_BHORA2 = :PAR_BHORA2,'
      '  PAR_FACMODPRECIO = :PAR_FACMODPRECIO,'
      '  PAR_FORMATOCON = :PAR_FORMATOCON,'
      '  PAR_CAJA = :PAR_CAJA,'
      '  PAR_MOVCK = :PAR_MOVCK'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO')
    InsertSQL.Strings = (
      'insert into PARAMETROS'
      
        '  (EMP_CODIGO, PAR_CODIGOPRODUCTO, PAR_CODIGOCLIENTE, PAR_TIPOPR' +
        'ECIO, PAR_ITBIS, '
      
        '   PAR_FACFORMA, PAR_TFACODIGO, PAR_ALMACENVENTA, PAR_FORMATONC,' +
        ' PAR_FORMATOND, '
      
        '   PAR_FORMATODEV, PAR_FORMATORC, PAR_FORMATODES, PAR_FORMATORI,' +
        ' PAR_PUERTONC, '
      
        '   PAR_PUERTOND, PAR_PUERTODEV, PAR_PUERTORC, PAR_PUERTODES, PAR' +
        '_PUERTORI, '
      
        '   PAR_MOVNDE, PAR_CONTROLAMAXIMO, PAR_CONTROLAMINIMO, PAR_DEBAJ' +
        'OCOSTO, '
      
        '   PAR_COMBOIMPDETALLE, PAR_COMBOCOTIZACION, PAR_COMBOREBAJA, PA' +
        'R_VENPERMITIR, '
      
        '   PAR_VENDIGITOSLOTE, PAR_VENVERIFICA, PAR_CONTEOLIMPIA, PAR_PR' +
        'EDESCGLOBAL, '
      
        '   PAR_PREDESCRIP1, PAR_PREDESCRIP2, PAR_PREDESCRIP3, PAR_PREDES' +
        'CRIP4, '
      
        '   PAR_FACDISPONIBLE, PAR_FACTEMPORAL, PAR_FACSELPRECIO, PAR_FAC' +
        'MODIFICA, '
      
        '   PAR_FACANULA, PAR_FACDIASMODIFICA, PAR_FACDIASANULA, PAR_DEVE' +
        'FECTIVO, '
      
        '   PAR_DEVDIAS, PAR_FORMATOCUADRE, PAR_AHORA1, PAR_AHORA2, PAR_B' +
        'HORA1, '
      
        '   PAR_BHORA2, PAR_FACMODPRECIO, PAR_FORMATOCON, PAR_CAJA, PAR_M' +
        'OVCK)'
      'values'
      
        '  (:EMP_CODIGO, :PAR_CODIGOPRODUCTO, :PAR_CODIGOCLIENTE, :PAR_TI' +
        'POPRECIO, '
      
        '   :PAR_ITBIS, :PAR_FACFORMA, :PAR_TFACODIGO, :PAR_ALMACENVENTA,' +
        ' :PAR_FORMATONC, '
      
        '   :PAR_FORMATOND, :PAR_FORMATODEV, :PAR_FORMATORC, :PAR_FORMATO' +
        'DES, :PAR_FORMATORI, '
      
        '   :PAR_PUERTONC, :PAR_PUERTOND, :PAR_PUERTODEV, :PAR_PUERTORC, ' +
        ':PAR_PUERTODES, '
      
        '   :PAR_PUERTORI, :PAR_MOVNDE, :PAR_CONTROLAMAXIMO, :PAR_CONTROL' +
        'AMINIMO, '
      
        '   :PAR_DEBAJOCOSTO, :PAR_COMBOIMPDETALLE, :PAR_COMBOCOTIZACION,' +
        ' :PAR_COMBOREBAJA, '
      
        '   :PAR_VENPERMITIR, :PAR_VENDIGITOSLOTE, :PAR_VENVERIFICA, :PAR' +
        '_CONTEOLIMPIA, '
      
        '   :PAR_PREDESCGLOBAL, :PAR_PREDESCRIP1, :PAR_PREDESCRIP2, :PAR_' +
        'PREDESCRIP3, '
      
        '   :PAR_PREDESCRIP4, :PAR_FACDISPONIBLE, :PAR_FACTEMPORAL, :PAR_' +
        'FACSELPRECIO, '
      
        '   :PAR_FACMODIFICA, :PAR_FACANULA, :PAR_FACDIASMODIFICA, :PAR_F' +
        'ACDIASANULA, '
      
        '   :PAR_DEVEFECTIVO, :PAR_DEVDIAS, :PAR_FORMATOCUADRE, :PAR_AHOR' +
        'A1, :PAR_AHORA2, '
      
        '   :PAR_BHORA1, :PAR_BHORA2, :PAR_FACMODPRECIO, :PAR_FORMATOCON,' +
        ' :PAR_CAJA, '
      '   :PAR_MOVCK)')
    DeleteSQL.Strings = (
      'delete from PARAMETROS'
      'where'
      '  EMP_CODIGO = :OLD_EMP_CODIGO')
    Left = 168
    Top = 56
  end
  object dsParametros: TDataSource
    DataSet = QParametros
    Left = 96
    Top = 56
  end
  object Archivo: TOpenDialog
    DefaultExt = '*.gdb'
    Filter = 'Interbase|*.gdb'
    Left = 336
    Top = 248
  end
end
