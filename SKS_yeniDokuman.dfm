object frmSKS_YeniDokuman: TfrmSKS_YeniDokuman
  Left = 0
  Top = 0
  Caption = 'frmSKS_YeniDokuman'
  ClientHeight = 501
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter_GG: TSplitter
    Left = 0
    Top = 269
    Width = 800
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -8
    ExplicitTop = 305
    ExplicitWidth = 935
  end
  object dokumanID: TcxButtonEditKadir
    Tag = -100
    Left = 17
    Top = 8
    Properties.Buttons = <
      item
        Default = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B0B0B123638387F5560
          52C0323231630000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000111212185C7C56D280F166FF4F72
          49FF49494CFE2221212F00000000000000000000000000000000000000000000
          000000000000000000000000000002020203515A51C090EF71FF678E5CFF4E4F
          51FF3C3D41FF4F4E4D8F00000000000000000000000000000000000000000000
          00000F0F0F141B1A1A3300000000111010205F7959FF566E55FF636464FF5E5E
          5FFF444549FF505152E505050507000000000000000000000000000000002A2B
          2A3F62975AF14A5249FF4141416D030303046F6E6DE654565DFF5D5E61FF6060
          62FF515254FF44464AFF4C4C49C13939386C00000000000000001A1A1A1E72AC
          62ED659359FF454548FF464649F41717161E1B1A1A236A6A6CE14B4D53FF5758
          5CFF58595CFF424448FF525253FF494A4CFD30302F4200000000535450A86487
          5BFF616262FF5B5B5CFF3E3F43FF4D4D4CA00A0A091120201F2F737373E54C4E
          55FF4E5055FF4A4C52FF3D3E42FF3C3D41FF515151DD080807094F4D4B815D5F
          64FF5B5C60FF626263FF4F4F51FF3D3E3FFD504F4DFC515150C25757549D7676
          76FF494B52FF3E3F45FF4E4F51FF4A4B4EFF4D4E51FF43423F77030302044A49
          47875E5F64FF525459FF525355FF3A3A3EFF57585AFF3C3D40FF6A6968FE5E5E
          61FF4E4F54FF545457FF4A4C51FF484A4EFF48494EFF5A5954D7000000000000
          000031302E52666669EC43454AFF4A4B4EFF4E4F52FF3E3E40FF5A5A5BFF5556
          5BFF4F5156FF44464CFF44464DFF45474DFF58595DFF605E5CBA000000000000
          000000000000595855BA696A6CFF545659FF666666FF666667FF5D5E61FF484B
          51FF41444BFF41434BFF41434AFF42444BFF626265FF4D4C4C74000000000000
          00000000000039383656636160FD727170FF939392FF7F8084FF606268FF4E51
          58FF464950FF42454CFF41444BFF4B4C53FD43454BFF585758D5000000000000
          00000000000000000000383734585C5751F7898784FFA3A2A2FF86878AFF696B
          70FF56585FFF4A4B51DA3132346637363663626468FF57575AC9000000000000
          00000000000000000000000000002F2E2B4D524F4AC17C7A77DD9A999AFF7475
          79F62A2A2B440202020300000000000000001C1C1B330B0B0B0F000000000000
          00000000000000000000000000000000000000000000000000003D3C3A623D3D
          3D5B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Kind = bkGlyph
      end>
    Properties.OnButtonClick = cxButtonEditPropertiesButtonClick
    Style.ButtonStyle = btsDefault
    TabOrder = 0
    indexField = True
    ListeAcTus = 0
    Width = 121
  end
  object yayinTarihi: TcxDateEditKadir
    Left = 161
    Top = 8
    TabOrder = 1
    BosOlamaz = True
    ValueTip = tvString
    Width = 121
  end
  object sonrakiGGTarihi: TcxDateEditKadir
    Left = 17
    Top = 75
    TabOrder = 2
    BosOlamaz = True
    ValueTip = tvString
    Width = 121
  end
  object GrupRevizyonlar: TcxGroupBox
    Left = 2
    Top = 54
    Caption = 'D'#246'k'#252'man Revizyonlar'#305
    TabOrder = 3
    Height = 209
    Width = 590
    object cxGrid1: TcxGridKadir
      Left = 3
      Top = 15
      Width = 584
      Height = 184
      Align = alClient
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LevelTabs.ImageBorder = 2
      LevelTabs.Style = 1
      ExceleGonder = False
      PopupForm = False
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 586
      ExplicitHeight = 209
      object gridRev: TcxGridDBTableView
        PopupMenu = PopupMenu1
        OnDblClick = gridRevDblClick
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        FilterBox.CustomizeDialog = False
        DataController.DetailKeyFieldNames = 'Kod'
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
        FilterRow.InfoText = 'Kay'#305't Filitrele'
        FilterRow.SeparatorColor = 8454143
        FilterRow.SeparatorWidth = 5
        FilterRow.ApplyChanges = fracImmediately
        NewItemRow.InfoText = 'Sat'#305'r Ekle'
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.DeletingConfirmation = False
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 0
        OptionsView.RowSeparatorColor = clBlack
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'dokumanid'
          Visible = False
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Revizyon'
          DataBinding.FieldName = 'rev'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 52
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'Aktif'
          DataBinding.FieldName = 'aktif'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.Items = <
            item
              Description = 'Evet'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Hay'#305'r'
              Value = 0
            end>
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 37
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'icerik'
          Visible = False
          Width = 243
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Dosya'
          DataBinding.FieldName = 'dosya'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 48
        end
        object cxGridDBColumn6: TcxGridDBColumn
          Caption = 'Dosya T'#252'r'#252
          DataBinding.FieldName = 'dosyaTuru'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Word'
              ImageIndex = 0
              Value = 'doc'
            end
            item
              Description = 'Word'
              ImageIndex = 0
              Value = 'docx'
            end
            item
              Description = 'Excel'
              ImageIndex = 1
              Value = 'xls'
            end
            item
              Description = 'RTF'
              ImageIndex = 3
              Value = 'rtf'
            end
            item
              Description = 'PDF'
              ImageIndex = 2
              Value = 'pdf'
            end>
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 31
        end
        object cxGridDBColumn7: TcxGridDBColumn
          Caption = 'Kontrol Durumu'
          DataBinding.FieldName = 'kontrolDurum'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.Images = DATALAR.ImageList1
          Properties.Items = <
            item
              Description = 'Kontrol Edildi'
              ImageIndex = 153
              Value = 1
            end
            item
              Description = 'Kontrol Bekliyor...'
              ImageIndex = 38
              Value = 0
            end>
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 135
        end
        object cxGridDBColumn8: TcxGridDBColumn
          Caption = 'Onay Durumu'
          DataBinding.FieldName = 'onayDurum'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          Properties.Images = DATALAR.ImageList1
          Properties.Items = <
            item
              Description = 'Onayland'#305
              ImageIndex = 132
              Value = 1
            end
            item
              Description = 'Onay Bekliyor'
              ImageIndex = 38
              Value = 0
            end
            item
              Description = 'Red'
              ImageIndex = 133
              Value = 2
            end>
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 116
        end
        object gridRevColumn1: TcxGridDBColumn
          Caption = 'Rev.Tarihi'
          DataBinding.FieldName = 'revTarihi'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
      end
      object cxGridDBBandedTableView5: TcxGridDBBandedTableView
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
            Column = cxGridDBBandedColumn18
          end
          item
            Kind = skSum
            Column = cxGridDBBandedColumn18
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
        object cxGridDBBandedColumn14: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tan'#305'm'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn15: TcxGridDBBandedColumn
          Caption = 'Tan'#305'm Ad'#305
          DataBinding.FieldName = 'ad'
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn16: TcxGridDBBandedColumn
          Caption = 'Toplam'
          DataBinding.FieldName = 'adet'
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn17: TcxGridDBBandedColumn
          DataBinding.FieldName = 'kurumT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn18: TcxGridDBBandedColumn
          DataBinding.FieldName = 'hastaT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGridDBBandedTableView6: TcxGridDBBandedTableView
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
        object cxGridDBBandedColumn19: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME1'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn20: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cxGridDBBandedTableView7: TcxGridDBBandedTableView
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Bands = <
          item
            Caption = 'i'#351'lemler'
          end>
      end
      object cxGridDBBandedTableView8: TcxGridDBBandedTableView
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
        object cxGridDBBandedColumn21: TcxGridDBBandedColumn
          Caption = 'Tanim'
          DataBinding.FieldName = 'TANIM'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn22: TcxGridDBBandedColumn
          Caption = 'Hasta Ad'#305
          DataBinding.FieldName = 'HASTAADI'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn23: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'HASTASOYADI'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn24: TcxGridDBBandedColumn
          Caption = 'Hizmet Ad'#305
          DataBinding.FieldName = 'NAME1'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn25: TcxGridDBBandedColumn
          Caption = 'Kurum F'
          DataBinding.FieldName = 'KSATISF'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn26: TcxGridDBBandedColumn
          Caption = 'Hasta F'
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object cxGridLevel2: TcxGridLevel
        Caption = 'Hastalar'
        GridView = gridRev
        Options.DetailFrameColor = clHighlight
      end
    end
  end
  object GrupGG: TcxGroupBox
    Left = 0
    Top = 272
    Align = alBottom
    Caption = 'D'#246'k'#252'man G'#246'zden Ge'#231'irme'
    TabOrder = 4
    Height = 229
    Width = 800
    object cxGrid3: TcxGridKadir
      Left = 3
      Top = 15
      Width = 794
      Height = 204
      Align = alClient
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LevelTabs.ImageBorder = 2
      LevelTabs.Style = 1
      ExceleGonder = False
      PopupForm = False
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 796
      ExplicitHeight = 229
      object gridGG: TcxGridDBTableView
        OnDblClick = gridGGDblClick
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        FilterBox.CustomizeDialog = False
        DataController.DetailKeyFieldNames = 'Kod'
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
        FilterRow.InfoText = 'Kay'#305't Filitrele'
        FilterRow.SeparatorColor = 8454143
        FilterRow.SeparatorWidth = 5
        FilterRow.ApplyChanges = fracImmediately
        NewItemRow.InfoText = 'Sat'#305'r Ekle'
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 0
        OptionsView.RowSeparatorColor = clBlack
        object gridGGdokumanid: TcxGridDBColumn
          DataBinding.FieldName = 'dokumanid'
          Visible = False
        end
        object gridGGrev: TcxGridDBColumn
          DataBinding.FieldName = 'rev'
          Visible = False
        end
        object gridGGid: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          HeaderAlignmentHorz = taCenter
          Width = 67
        end
        object gridGGdate_create: TcxGridDBColumn
          Caption = #304#351'lem Tarihi'
          DataBinding.FieldName = 'date_create'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 117
        end
        object gridGGColumn1: TcxGridDBColumn
          Caption = 'G'#246'zden Ge'#231'irme Tarihi'
          DataBinding.FieldName = 'ggTarihi'
          Options.Editing = False
          Width = 117
        end
        object gridGGSggTarihi: TcxGridDBColumn
          Caption = 'Sonraki G'#246'zden Ge'#231'irme Tarihi'
          DataBinding.FieldName = 'SggTarihi'
          HeaderAlignmentHorz = taCenter
          Width = 117
        end
        object gridGGggUser: TcxGridDBColumn
          Caption = #304#351'lemi Yapan'
          DataBinding.FieldName = 'ggUser'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 121
        end
        object gridGGColumn2: TcxGridDBColumn
          Caption = 'A'#231#305'klama'
          DataBinding.FieldName = 'aciklama'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 184
        end
      end
      object cxGridDBBandedTableView9: TcxGridDBBandedTableView
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
            Column = cxGridDBBandedColumn31
          end
          item
            Kind = skSum
            Column = cxGridDBBandedColumn31
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
        object cxGridDBBandedColumn27: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tan'#305'm'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn28: TcxGridDBBandedColumn
          Caption = 'Tan'#305'm Ad'#305
          DataBinding.FieldName = 'ad'
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn29: TcxGridDBBandedColumn
          Caption = 'Toplam'
          DataBinding.FieldName = 'adet'
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn30: TcxGridDBBandedColumn
          DataBinding.FieldName = 'kurumT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn31: TcxGridDBBandedColumn
          DataBinding.FieldName = 'hastaT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGridDBBandedTableView10: TcxGridDBBandedTableView
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
        object cxGridDBBandedColumn32: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME1'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn33: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cxGridDBBandedTableView11: TcxGridDBBandedTableView
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Bands = <
          item
            Caption = 'i'#351'lemler'
          end>
      end
      object cxGridDBBandedTableView12: TcxGridDBBandedTableView
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
        object cxGridDBBandedColumn34: TcxGridDBBandedColumn
          Caption = 'Tanim'
          DataBinding.FieldName = 'TANIM'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn35: TcxGridDBBandedColumn
          Caption = 'Hasta Ad'#305
          DataBinding.FieldName = 'HASTAADI'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn36: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'HASTASOYADI'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn37: TcxGridDBBandedColumn
          Caption = 'Hizmet Ad'#305
          DataBinding.FieldName = 'NAME1'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn38: TcxGridDBBandedColumn
          Caption = 'Kurum F'
          DataBinding.FieldName = 'KSATISF'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn39: TcxGridDBBandedColumn
          Caption = 'Hasta F'
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object cxGridLevel3: TcxGridLevel
        Caption = 'Hastalar'
        GridView = gridGG
        Options.DetailFrameColor = clHighlight
      end
    end
  end
  object GrupOkuma: TcxGroupBox
    Left = 600
    Top = 54
    Caption = 'Okunma Durumu'
    TabOrder = 5
    Height = 225
    Width = 192
    object cxGrid2: TcxGridKadir
      Left = 3
      Top = 15
      Width = 186
      Height = 200
      Align = alClient
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LevelTabs.ImageBorder = 2
      LevelTabs.Style = 1
      ExceleGonder = False
      PopupForm = False
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 188
      ExplicitHeight = 225
      object gridDokumanlarRevOku: TcxGridDBTableView
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        FilterBox.CustomizeDialog = False
        DataController.DetailKeyFieldNames = 'Kod'
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
        FilterRow.InfoText = 'Kay'#305't Filitrele'
        FilterRow.SeparatorColor = 8454143
        FilterRow.SeparatorWidth = 5
        FilterRow.ApplyChanges = fracImmediately
        NewItemRow.InfoText = 'Sat'#305'r Ekle'
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 0
        OptionsView.RowSeparatorColor = clBlack
        object gridDokumanlarRevOkudokumanid: TcxGridDBColumn
          DataBinding.FieldName = 'dokumanid'
          Visible = False
        end
        object gridDokumanlarRevOkurev: TcxGridDBColumn
          DataBinding.FieldName = 'rev'
          Visible = False
        end
        object gridDokumanlarRevOkukullanici: TcxGridDBColumn
          Caption = 'Kullanici'
          DataBinding.FieldName = 'kullanici'
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object gridDokumanlarRevOkuOkundu: TcxGridDBColumn
          Caption = 'Okuma'
          DataBinding.FieldName = 'Okundu'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.Items = <
            item
              Description = 'Okundu'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Bekliyor'
              Value = 0
            end>
          HeaderAlignmentHorz = taCenter
          Width = 77
        end
        object gridDokumanlarRevOkudate_create: TcxGridDBColumn
          DataBinding.FieldName = 'date_create'
          Visible = False
        end
      end
      object cxGridDBBandedTableView1: TcxGridDBBandedTableView
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
            Column = cxGridDBBandedColumn5
          end
          item
            Kind = skSum
            Column = cxGridDBBandedColumn5
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
        object cxGridDBBandedColumn1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tan'#305'm'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn2: TcxGridDBBandedColumn
          Caption = 'Tan'#305'm Ad'#305
          DataBinding.FieldName = 'ad'
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn3: TcxGridDBBandedColumn
          Caption = 'Toplam'
          DataBinding.FieldName = 'adet'
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn4: TcxGridDBBandedColumn
          DataBinding.FieldName = 'kurumT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn5: TcxGridDBBandedColumn
          DataBinding.FieldName = 'hastaT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGridDBBandedTableView2: TcxGridDBBandedTableView
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
        object cxGridDBBandedColumn6: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME1'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn7: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cxGridDBBandedTableView3: TcxGridDBBandedTableView
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Bands = <
          item
            Caption = 'i'#351'lemler'
          end>
      end
      object cxGridDBBandedTableView4: TcxGridDBBandedTableView
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
        object cxGridDBBandedColumn8: TcxGridDBBandedColumn
          Caption = 'Tanim'
          DataBinding.FieldName = 'TANIM'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn9: TcxGridDBBandedColumn
          Caption = 'Hasta Ad'#305
          DataBinding.FieldName = 'HASTAADI'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn10: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'HASTASOYADI'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn11: TcxGridDBBandedColumn
          Caption = 'Hizmet Ad'#305
          DataBinding.FieldName = 'NAME1'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn12: TcxGridDBBandedColumn
          Caption = 'Kurum F'
          DataBinding.FieldName = 'KSATISF'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn13: TcxGridDBBandedColumn
          Caption = 'Hasta F'
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Hastalar'
        GridView = gridDokumanlarRevOku
        Options.DetailFrameColor = clHighlight
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 328
    Top = 8
    object M1: TMenuItem
      Caption = 'Men'#252
      ImageIndex = 79
      object D2: TMenuItem
        Tag = -11
        Caption = 'D'#246'k'#252'man D'#252'zenle'
        ImageIndex = 135
        OnClick = cxButtonCClick
      end
      object N4: TMenuItem
        Tag = -12
        Caption = #304'lk Yay'#305'nlanan D'#246'k'#252'man'#305' G'#246'ster'
        ImageIndex = 136
        OnClick = cxButtonCClick
      end
      object D1: TMenuItem
        Tag = -10
        Caption = 'D'#246'k'#252'man'#305' G'#246'ster'
        ImageIndex = 134
        OnClick = cxButtonCClick
      end
      object kontrolDurum: TMenuItem
        Tag = -6
        Caption = 'Revizyon Kontrol'
        ImageIndex = 108
        OnClick = cxButtonCClick
      end
      object onayDurum: TMenuItem
        Tag = -5
        Caption = 'Revizyon Onay'
        ImageIndex = 86
        OnClick = cxButtonCClick
      end
      object R2: TMenuItem
        Tag = -4
        Caption = 'Revizyon Sil'
        ImageIndex = 87
        OnClick = cxButtonCClick
      end
      object R1: TMenuItem
        Tag = -3
        Caption = 'Revizyon Ekle'
        ImageIndex = 85
        OnClick = cxButtonCClick
      end
      object G2: TMenuItem
        Tag = -2
        Caption = 'G'#246'zden Ge'#231'irme '#304'ptal'
        ImageIndex = 84
        Visible = False
        OnClick = cxButtonCClick
      end
      object G1: TMenuItem
        Tag = -1
        Caption = 'G'#246'zden Ge'#231'irme Ekle'
        ImageIndex = 102
        OnClick = cxButtonCClick
      end
    end
    object P1: TMenuItem
      Caption = 'Dosya Y'#252'kle (PDF,XLS,DOC,RTF)'
      ImageIndex = 110
      object Y1: TMenuItem
        Tag = -20
        Caption = 'Y'#252'kle (PDF,XLS,DOC,RTF)'
        ImageIndex = 111
        OnClick = cxButtonCClick
      end
      object S1: TMenuItem
        Tag = -21
        Caption = 'Sil'
        ImageIndex = 43
        OnClick = cxButtonCClick
      end
    end
  end
end
