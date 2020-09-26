object frmKurumFaturaHazirlik: TfrmKurumFaturaHazirlik
  Left = 99
  Top = 44
  Caption = 'frmKurumFaturaHazirlik'
  ClientHeight = 665
  ClientWidth = 1292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1292
    Height = 643
    Align = alClient
    TabOrder = 0
    object cxPageControl2: TcxPageControl
      Left = 1
      Top = 1
      Width = 1290
      Height = 641
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheetTakipler
      ClientRectBottom = 634
      ClientRectLeft = 3
      ClientRectRight = 1283
      ClientRectTop = 26
      object cxTabSheetTakipler: TcxTabSheet
        Caption = 'Fatura Kay'#305'tlar'#305
        ImageIndex = 0
        object cxGrid4: TcxGridKadir
          Left = 0
          Top = 0
          Width = 1280
          Height = 608
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Images = DATALAR.imag24png
          ParentFont = False
          TabOrder = 0
          LevelTabs.ImageBorder = 2
          LevelTabs.Style = 1
          LookAndFeel.Kind = lfOffice11
          ExceleGonder = False
          PopupForm = False
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Append.Visible = False
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            FilterBox.CustomizeDialog = False
            DataController.Filter.Active = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,###.#0'
                Kind = skSum
                FieldName = 'borc'
              end
              item
                Format = '#,###.#0'
                Kind = skSum
                FieldName = 'alacak'
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'code'
              Width = 59
            end
            object cxGridDBColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'Tanim'
              Width = 299
            end
            object cxGridDBColumn3: TcxGridDBColumn
              DataBinding.FieldName = 'sonuc'
              Width = 122
            end
            object cxGridDBColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'birim'
              Width = 121
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = 'tip'
              Width = 122
            end
          end
          object cxGridDBBandedTableView13: TcxGridDBBandedTableView
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataModeController.GridMode = True
            DataController.DataModeController.SmartRefresh = True
            DataController.DetailKeyFieldNames = 'Tan'#305'm'
            DataController.Filter.Active = True
            DataController.Filter.AutoDataSetFilter = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateIn = True
            DataController.Filter.TranslateLike = True
            DataController.KeyFieldNames = 'Tan'#305'm'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoImmediatePost]
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBBandedColumn44
              end
              item
                Kind = skSum
                Column = cxGridDBBandedColumn44
              end>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnFilteredItemsList = True
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.DragDropText = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsBehavior.PullFocusing = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.Footer = True
            OptionsView.FooterMultiSummaries = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupFooters = gfVisibleWhenExpanded
            OptionsView.BandCaptionsInColumnAlternateCaption = True
            OptionsView.BandHeaderEndEllipsis = True
            Bands = <
              item
                Caption = 'Geli'#351'ler'
              end>
            object cxGridDBBandedColumn40: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Tan'#305'm'
              Width = 90
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn41: TcxGridDBBandedColumn
              Caption = 'Tan'#305'm Ad'#305
              DataBinding.FieldName = 'ad'
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn42: TcxGridDBBandedColumn
              Caption = 'Toplam'
              DataBinding.FieldName = 'adet'
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn43: TcxGridDBBandedColumn
              DataBinding.FieldName = 'kurumT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,###.#0'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn44: TcxGridDBBandedColumn
              DataBinding.FieldName = 'hastaT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,###.#0'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object cxGridDBBandedTableView14: TcxGridDBBandedTableView
            DataController.DetailKeyFieldNames = 'gelisNo'
            DataController.KeyFieldNames = 'gelisNo'
            DataController.MasterKeyFieldNames = 'gelisNo'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsView.GroupByBox = False
            Bands = <
              item
                Caption = 'Hareketler'
              end>
            object cxGridDBBandedColumn45: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NAME1'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn46: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SATISF'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGridDBBandedTableView15: TcxGridDBBandedTableView
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
                Caption = 'i'#351'lemler'
              end>
          end
          object cxGridDBBandedTableView16: TcxGridDBBandedTableView
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataModeController.GridMode = True
            DataController.Filter.Active = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.BandCaptionsInColumnAlternateCaption = True
            Bands = <
              item
              end>
            object cxGridDBBandedColumn47: TcxGridDBBandedColumn
              Caption = 'Tanim'
              DataBinding.FieldName = 'TANIM'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn48: TcxGridDBBandedColumn
              Caption = 'Hasta Ad'#305
              DataBinding.FieldName = 'HASTAADI'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn49: TcxGridDBBandedColumn
              Caption = 'Soyad'#305
              DataBinding.FieldName = 'HASTASOYADI'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn50: TcxGridDBBandedColumn
              Caption = 'Hizmet Ad'#305
              DataBinding.FieldName = 'NAME1'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn51: TcxGridDBBandedColumn
              Caption = 'Kurum F'
              DataBinding.FieldName = 'KSATISF'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn52: TcxGridDBBandedColumn
              Caption = 'Hasta F'
              DataBinding.FieldName = 'SATISF'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object Takipler: TcxGridDBTableView
            PopupMenu = PopupMenu1
            OnFocusedRecordChanged = TakiplerFocusedRecordChanged
            DataController.DataSource = DataSource2
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skCount
                Column = TakipNo
              end
              item
                Kind = skSum
                Column = TakiplerColumn1
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnFilteredItemsList = True
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsCustomize.ColumnSorting = False
            OptionsSelection.MultiSelect = True
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 35
            Styles.OnGetContentStyle = TakiplerStylesGetContentStyle
            object TakipNo: TcxGridColumn
              DataBinding.FieldName = 'TakipNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
            end
            object HastaNo: TcxGridColumn
              Caption = 'Hasta No'
              DataBinding.FieldName = 'DosyaNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 50
            end
            object gelisNo: TcxGridColumn
              Caption = 'Geli'#351
              DataBinding.FieldName = 'gelisNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 31
            end
            object Hasta: TcxGridColumn
              Caption = 'Hasta Ad'#305' Soyad'#305
              DataBinding.FieldName = 'ADSOYAD'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 123
            end
            object TakipTarih: TcxGridColumn
              Caption = 'Tarih'
              DataBinding.FieldName = 'BHDAT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 75
            end
            object TakiplerColumn1: TcxGridColumn
              Caption = 'Seans Adet'
              DataBinding.FieldName = 'SeansAdet'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 39
            end
            object TakiplerColumn2: TcxGridColumn
              Caption = 'Medula Seans'
              DataBinding.FieldName = 'MedulaSeansAdet'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaBottom
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 39
            end
            object TakiplerColumn3: TcxGridColumn
              Caption = 'Tahlil Adet'
              DataBinding.FieldName = 'TahlilAdet'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 39
            end
            object TakiplerColumn4: TcxGridColumn
              Caption = 'Medula Tahlil'
              DataBinding.FieldName = 'MedulaTahlilAdet'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 39
            end
            object TakiplerColumn5: TcxGridColumn
              Caption = 'Rad Adet'
              DataBinding.FieldName = 'RadAdet'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 39
            end
            object TakiplerColumn6: TcxGridColumn
              Caption = 'Medula Rad'
              DataBinding.FieldName = 'MedulaRadAdet'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Width = 39
            end
            object TakiplerDurumDetay: TcxGridColumn
              Caption = 'Durum Detay'
              DataBinding.FieldName = 'DurumDetay'
              PropertiesClassName = 'TcxMemoProperties'
              Properties.Alignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 150
            end
            object SIRANO: TcxGridColumn
              DataBinding.FieldName = 'SIRANO'
              Visible = False
            end
            object BasvuruNo: TcxGridColumn
              Caption = 'BasvuruNo'
              DataBinding.FieldName = 'basvuruNo'
              Visible = False
            end
            object TakiplerColumn7: TcxGridDBColumn
              DataBinding.FieldName = 'sysTakipNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 100
            end
            object TakiplerColumnEpikriz: TcxGridDBColumn
              DataBinding.FieldName = 'aciklama'
              Visible = False
            end
          end
          object cxGrid4Level1: TcxGridLevel
            GridView = Takipler
          end
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 643
    Width = 1292
    Height = 22
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
    SimplePanel = True
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    OnPopup = PopupMenu1Popup
    Left = 36
    Top = 166
    object mnSe1: TMenuItem
      Tag = -1
      Caption = 'T'#252'm'#252'n'#252' Se'#231
      OnClick = mnSe1Click
    end
    object mptal1: TMenuItem
      Tag = -2
      Caption = 'T'#252'm'#252' '#304'ptal'
      OnClick = mptal1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object akipDetayFormu1: TMenuItem
      Tag = -3
      Caption = 'Takip Detay Formu'
      Visible = False
      OnClick = akipDetayFormu1Click
    end
    object T1: TMenuItem
      Tag = -4
      Caption = 'Tetkik Tedavi Kart'#305
      ImageIndex = 45
      OnClick = T1Click
    end
    object S1: TMenuItem
      Tag = -5
      Caption = 'Seans Kart'#305
      Visible = False
      OnClick = S1Click
    end
    object H1: TMenuItem
      Tag = -6
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = H1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MalzemeptalEt1: TMenuItem
      Tag = -9
      Caption = 'Malzeme '#304'ptal Et'
      Visible = False
    end
    object mHizmetleriptalEt1: TMenuItem
      Tag = -11
      Caption = 'Hizmetleri '#304'ptal Et'
      ImageIndex = 76
      Visible = False
      object HizmetleriptalEt1: TMenuItem
        Tag = -7
        Caption = 'Seanslar'#305' '#304'ptal Et'
        Hint = 'S'
        ImageIndex = 80
        Visible = False
      end
      object ahlilleriptalEt1: TMenuItem
        Tag = -8
        Caption = 'Tahlilleri '#304'ptal Et'
        Hint = 'L'
        ImageIndex = 47
      end
      object R1: TMenuItem
        Tag = -10
        Caption = 'T'#252'm Hizmetleri  '#304'ptal Et'
        Hint = 'R'
        ImageIndex = 95
      end
    end
    object mHizmetleriKaydet1: TMenuItem
      Tag = -13
      Caption = 'Hizmetleri Kaydet'
      ImageIndex = 76
      Visible = False
      object S5: TMenuItem
        Caption = 'Seanslar'#305' Kaydet'
        Hint = 'T'#252'm'#252
        ImageIndex = 80
      end
      object T2: TMenuItem
        Caption = 'Tahlilleri Kaydet'
        Hint = 'T'
        ImageIndex = 47
        Visible = False
      end
      object R2: TMenuItem
        Caption = 'Rad Kaydet'
        Hint = 'R'
        ImageIndex = 95
        Visible = False
      end
    end
    object I1: TMenuItem
      Tag = -100
      Caption = 'islemS'#305'raNo lar'#305' Sisteme Al'
      Visible = False
    end
    object H3: TMenuItem
      Caption = 'Seans HizmetSunucuRefNo Sisteme Al (Eski_SiraNo)'
      Visible = False
    end
    object N3: TMenuItem
      Caption = '-'
      Visible = False
    end
    object SeanslarSistemeYaz1: TMenuItem
      Tag = -12
      Caption = 'Okunan Seanslar'#305' Sisteme Yaz'
      ImageIndex = 35
      Visible = False
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object FaturayaAt1: TMenuItem
      Tag = -14
      Caption = 'Faturaya At'
      ImageIndex = 9
      OnClick = FaturayaAt1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object MedulaSistemKontrol1: TMenuItem
      Tag = -15
      Caption = 'Medula <-> Sistem Kontrol'#252
      Visible = False
    end
    object M1: TMenuItem
      Tag = -16
      Caption = 'Medula <-> Sistem Kontrol'#252'   [Hizmet Kod Toplam'#305'n'#305' Do'#287'rula]'
      Visible = False
      OnClick = M1Click
    end
    object H2: TMenuItem
      Tag = -17
      Caption = 'Hizmetleri Oku'
      ImageIndex = 36
      Visible = False
    end
    object S4: TMenuItem
      Tag = 17
      Caption = 'Sat'#305'r'#305' Yenile'
      Visible = False
      OnClick = cxButtonCClick
    end
    object S3: TMenuItem
      Tag = -18
      Caption = 'Seans Hakedi'#351' '#304'cmali'
      Visible = False
      OnClick = S3Click
    end
    object L1: TMenuItem
      Caption = 'Listele'
      Visible = False
    end
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      Visible = False
      OnClick = cxButtonCClick
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_TahlillSQL
    Left = 444
    Top = 140
  end
  object ADO_SQL: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      ''
      'exec sp_TakipKontrolListesi '#39'20191001'#39','#39'20191130'#39','#39'000005'#39)
    Left = 356
    Top = 220
  end
  object DataSource2: TDataSource
    DataSet = ADO_SQL
    Left = 428
    Top = 220
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 184
    Top = 136
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 8421631
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clWhite
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16744576
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 8454143
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
  end
  object PopupMenu2: TPopupMenu
    Images = DATALAR.imag24png
    Left = 752
    Top = 184
    object S2: TMenuItem
      Caption = 'Hizmet '#304'ptal Et'
      ImageIndex = 43
    end
  end
  object dxLayoutHizmetlerLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 128
    Top = 216
    object dxLayoutHizmetlerSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
    end
  end
  object ADO_TahlillSQL: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@tn'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '31UC15N'
      end>
    Prepared = True
    SQL.Strings = (
      'sp_TakipKontrolTakipNoDetay :@tn')
    Left = 352
    Top = 136
  end
end
