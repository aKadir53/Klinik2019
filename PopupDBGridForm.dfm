object frmPopupDBGridForm: TfrmPopupDBGridForm
  Left = 379
  Top = 248
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Popup Form'
  ClientHeight = 670
  ClientWidth = 769
  Color = 13750737
  Font.Charset = TURKISH_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPanelBottom: TcxGroupBox
    Left = 0
    Top = 635
    Align = alBottom
    PanelStyle.Active = True
    TabOrder = 0
    Height = 35
    Width = 769
    object btnYes: TcxButton
      Left = 607
      Top = 2
      Width = 80
      Height = 31
      Align = alRight
      Caption = 'Tamam'
      ModalResult = 6
      TabOrder = 0
    end
    object btnIptal: TcxButton
      Left = 687
      Top = 2
      Width = 80
      Height = 31
      Align = alRight
      Caption = 'Vazge'#231
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cxGroupDoktorlar: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = '.'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    Height = 530
    Width = 769
    object cxGrid3: TcxGridKadir
      Left = 3
      Top = 57
      Width = 763
      Height = 358
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
      object DBGrid: TcxGridDBTableView
        OnDblClick = DBGridDblClick
        Navigator.Buttons.OnButtonClick = DBGridNavigatorButtonsButtonClick
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
        Navigator.Visible = True
        FilterBox.CustomizeDialog = False
        FilterBox.Position = fpTop
        DataController.DataSource = DataSource1
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        FilterRow.InfoText = 'Arama Sat'#305'r'#305
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        NewItemRow.InfoText = 'Yeni Sat'#305'r Ekle'
        NewItemRow.SeparatorColor = clYellow
        NewItemRow.Visible = True
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Appending = True
        OptionsData.DeletingConfirmation = False
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        Styles.FilterBox = cxStyle2
        Styles.NewItemRowInfoText = cxStyle1
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
        GridView = DBGrid
        Options.DetailFrameColor = clHighlight
      end
    end
    object txtTable: TcxImageComboKadir
      Left = 3
      Top = 15
      Align = alTop
      Properties.ClearKey = 46
      Properties.DropDownRows = 20
      Properties.Items = <>
      Properties.OnChange = txtTablePropertiesChange
      TabOrder = 1
      Visible = False
      BosOlamaz = False
      FilterSet = fsNone
      Width = 763
    end
    object GrpAciklama: TcxGroupBox
      Left = 3
      Top = 415
      Align = alBottom
      TabOrder = 2
      Visible = False
      Height = 105
      Width = 763
      object txtAciklama: TcxDBRichEdit
        Left = 3
        Top = 22
        Align = alClient
        DataBinding.DataField = 'aciklama'
        TabOrder = 0
        Height = 80
        Width = 757
      end
    end
    object pnlEpikrizAyar: TcxGroupBox
      Left = 3
      Top = 57
      Align = alClient
      Caption = 'Medulaya Gidecek Epikriz Ayarlar'#305
      ParentFont = False
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      ExplicitLeft = 91
      ExplicitTop = 513
      Height = 358
      Width = 763
      object txtSeansSikayet: TcxCheckListBox
        Left = 3
        Top = 15
        Width = 757
        Height = 308
        Align = alClient
        Items = <
          item
            Text = #304'lk Diyaliz Tarihi'
          end
          item
            Tag = 1
            Text = 'Kan Grubu'
          end
          item
            Tag = 2
            Text = 'Ktv/urr'
          end
          item
            Tag = 3
            Text = 'Hepatit Marker'
          end
          item
            Tag = 4
            Text = #304'leti'#351'im Bilgileri'
          end
          item
            Tag = 5
            Text = 'Seans Say'#305's'#305
          end
          item
            Tag = 6
            Text = 'Geldi'#287'i Merkez'
          end
          item
            Tag = 7
            Text = 'PD Takibi Yap'#305'lm'#305#351't'#305'r'
          end
          item
            Tag = 8
            Text = 'Epikriz A'#231#305'klamas'#305
          end
          item
            Tag = 9
            Text = #304'deal Kilo - Heparinizasyon - Diyalizat'
          end
          item
            Tag = 10
            Text = 'Soy-TedaviGe'#231'mi'#351
          end
          item
            Tag = 11
            Text = 'Makina No'
          end
          item
            Tag = 12
            Text = 'Kronik Hastal'#305'k'
          end>
        ParentFont = False
        Style.Font.Charset = TURKISH_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
      end
      object btnMedulaEpikrizAyarKaydet: TcxButton
        Left = 3
        Top = 323
        Width = 757
        Height = 25
        Align = alBottom
        Caption = 'Kaydet'
        TabOrder = 1
        OnClick = btnMedulaEpikrizAyarKaydetClick
      end
    end
    object txtAltTable: TcxImageComboKadir
      Left = 3
      Top = 36
      Align = alTop
      Properties.ClearKey = 46
      Properties.DropDownRows = 20
      Properties.Items = <>
      Properties.OnChange = txtAltTablePropertiesChange
      TabOrder = 4
      Visible = False
      BosOlamaz = False
      FilterSet = fsNone
      Width = 763
    end
  end
  object GrpAciklamaText: TcxGroupBox
    Left = 0
    Top = 530
    Align = alBottom
    TabOrder = 2
    Visible = False
    Height = 105
    Width = 769
    object txtAciklamaText: TcxMemo
      Left = 3
      Top = 22
      Align = alClient
      Lines.Strings = (
        'txtAciklamaText')
      TabOrder = 0
      Height = 80
      Width = 763
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 568
    Top = 96
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object E1: TMenuItem
      Tag = -1
      Caption = 'Egitimleri Getir'
      ImageIndex = 76
      Visible = False
      OnClick = cxButtonCClick
    end
    object R1: TMenuItem
      Tag = -2
      Caption = 'Rapor Dizayn Y'#252'kle'
      ImageIndex = 9
      Visible = False
      OnClick = cxButtonCClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object E2: TMenuItem
      Tag = -9
      Caption = 'Ekle'
      ImageIndex = 30
      Visible = False
      OnClick = cxButtonCClick
    end
    object D1: TMenuItem
      Tag = -10
      Caption = 'D'#252'zenle'
      ImageIndex = 31
      Visible = False
      OnClick = cxButtonCClick
    end
    object S1: TMenuItem
      Tag = -11
      Caption = 'Sil'
      ImageIndex = 42
      Visible = False
      OnClick = cxButtonCClick
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object DataSource1: TDataSource
    Left = 152
    Top = 96
  end
end
