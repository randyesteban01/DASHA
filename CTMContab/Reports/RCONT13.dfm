�
 TREPVISTASITUACION 05  TPF0TRepVistaSituacionRepVistaSituacionLeft Top Width0Height Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSetQCuentasFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values���Q��@      ��
@���Q��@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.OutputBinAutoPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage "PrinterSettings.UseStandardprinter PrinterSettings.UseCustomBinCodePrinterSettings.CustomBinCode PrinterSettings.ExtendedDuplex "PrinterSettings.UseCustomPaperCodePrinterSettings.CustomPaperCode PrinterSettings.PrintMetaFilePrinterSettings.PrintQuality PrinterSettings.Collate PrinterSettings.ColorOption PrintIfEmpty	
SnapToGrid	UnitsInchesZoomdPrevFormStylefsNormalPreviewInitialStatewsMaximizedPrevShowThumbsPrevShowSearchPrevInitialZoomqrZoomToFit TQRBandQRBand1LeftTop%Width HeightDFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values�������@       �	@ PreCaluculateBandHeightKeepOnOnePageBandTyperbPageHeader TQRLabellbTituloLeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��@       �@�������@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaption   Vista del estado de situaciónColorclWhiteFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  	TQRDBText	QRDBText1Left� TopWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesUUUUUU�@UUUUUU��@UUUUUUU�@������4�	@ 	AlignmenttaCenterAlignToBand	AutoSizeAutoStretchColorclWhiteDataSetDM.QEmpresas	DataField
EMP_NOMBREFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize  
TQRSysData
QRSysData1LeftgTop0Width� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      f�	@       �@������ҿ@ 	AlignmenttaRightJustifyAlignToBandAutoSize	ColorclWhiteDataqrsPageNumberText   Página No. TransparentFontSize
   TQRBandQRBand3LeftTopiWidth HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomBeforePrintQRBand3BeforePrintColorclWhiteTransparentBandForceNewColumnForceNewPageSize.Values      ��@       �	@ PreCaluculateBandHeightKeepOnOnePageBandTyperbDetail 	TQRDBTextdbNombreLeftTop Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@�QUUUU��@                ��	@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetQCuentas	DataFieldNOMBREFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style 
ParentFontTransparentWordWrap	FontSize	  TQRLabellbAnexoLeft�Top WidthiHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Valuesk������@aUUUU��	@                �@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionlbAnexoColorclWhiteTransparentWordWrap	FontSize
   	TADOQueryQCuentas
ConnectionDM.ADOSigma
DataSourceDM.dsEmpresas
ParametersName
EMP_CODIGODataType	ftIntegerSize�Value   SQL.StringsSELECT CUENTA, NOMBRE, NIVELFROM $CONTPR_VISTA_SITUACION (:EMP_CODIGO) Left� Top TIBStringFieldQCuentasCUENTA	FieldNameCUENTAOriginCONTPR_VISTA_SITUACION.CUENTASize  TIBStringFieldQCuentasNOMBRE	FieldNameNOMBREOriginCONTPR_VISTA_SITUACION.NOMBRESize<  TIntegerFieldQCuentasNIVEL	FieldNameNIVELOriginCONTPR_VISTA_SITUACION.NIVEL    