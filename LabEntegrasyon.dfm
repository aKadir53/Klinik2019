object frmLabEntegrasyon: TfrmLabEntegrasyon
  Left = 680
  Top = 81
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmLabEntegrasyon'
  ClientHeight = 601
  ClientWidth = 1167
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxListPanel: TcxGroupBox
    Left = 0
    Top = 38
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 563
    Width = 1167
    object uyari: TcxPageControl
      Left = 2
      Top = 488
      Width = 1163
      Height = 73
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      Properties.ActivePage = cxTabSheet1
      Properties.Images = DATALAR.ImageList1
      ClientRectBottom = 66
      ClientRectLeft = 3
      ClientRectRight = 1156
      ClientRectTop = 35
      object cxTabSheet1: TcxTabSheet
        Caption = 'Uyar'#305' Bilgisi'
        ImageIndex = 133
        object txtUyariMesaj: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'McSkin'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'McSkin'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'McSkin'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'McSkin'
          TabOrder = 0
          Height = 31
          Width = 1153
        end
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 1163
      Height = 486
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = Sayfa_Liste
      ClientRectBottom = 479
      ClientRectLeft = 3
      ClientRectRight = 1156
      ClientRectTop = 26
      object Sayfa_Liste: TcxTabSheet
        Caption = #304#351' Listesi'
        ImageIndex = 0
        object GridListe: TcxGridKadir
          Left = 0
          Top = 0
          Width = 817
          Height = 453
          Align = alLeft
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          LevelTabs.ImageBorder = 2
          LevelTabs.Style = 1
          ExcelFileName = 'LabKay'#305'tListesi'
          ExceleGonder = True
          PopupForm = False
          object Liste: TcxGridDBTableView
            PopupMenu = PopupMenu1
            OnDblClick = ListeDblClick
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
            OnFocusedRecordChanged = ListeFocusedRecordChanged
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.Active = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Listelen Kay'#305't :#0'
                Kind = skCount
                FieldName = 'HASTAADI'
                Column = HastaSoyadi
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            NewItemRow.InfoText = 'Kay'#305't Ekle'
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NavigatorOffset = 20
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 35
            OptionsView.RowSeparatorColor = clBlack
            Styles.OnGetContentStyle = ListeStylesGetContentStyle
            Styles.Group = cxStyle2
            Styles.Indicator = cxStyle1
            object dosyaNo: TcxGridDBColumn
              Caption = 'Dosya No'
              DataBinding.FieldName = 'dosyaNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 53
            end
            object ListeColumndosyaNo: TcxGridDBColumn
              Caption = 'Dosya'
              DataBinding.FieldName = 'dosyaNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 50
            end
            object HastaAdi: TcxGridDBColumn
              Caption = 'Gelis No'
              DataBinding.FieldName = 'gelisNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 30
            end
            object HastaSoyadi: TcxGridDBColumn
              Caption = 'Hasta'
              DataBinding.FieldName = 'ADSOYAD'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 120
            end
            object ListeColumn4: TcxGridDBColumn
              Caption = 'Tip'
              DataBinding.FieldName = 'Aktif'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = DATALAR.imag24png
              Properties.Items = <
                item
                  Description = 'Aktif'
                  ImageIndex = 17
                  Value = '1'
                end
                item
                  Description = 'Pasif'
                  Value = '0'
                end>
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 68
            end
            object Tc: TcxGridDBColumn
              Caption = 'TcKimlik'
              DataBinding.FieldName = 'TCKIMLIKNO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 95
            end
            object ListeColumn6: TcxGridDBColumn
              Caption = 'Serum Giri'#351
              DataBinding.FieldName = 'ornekNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 60
            end
            object Kilo: TcxGridDBColumn
              Caption = 'Serum '#199#305'k'#305#351
              DataBinding.FieldName = 'CikisOrnekNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 60
            end
            object ListeColumn13: TcxGridDBColumn
              Caption = 'OrnekNo TamKan'
              DataBinding.FieldName = 'OrnekNo_TamKan'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 60
            end
            object ListeColumn7: TcxGridDBColumn
              Caption = 'OrnekNo Plazma'
              DataBinding.FieldName = 'OrnekNo_Plazma'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 60
            end
            object ListeColumn2: TcxGridDBColumn
              Caption = 'Serum (Anaerob)'
              DataBinding.FieldName = 'OrnekNo_Serum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 60
            end
            object ListeColumn5: TcxGridDBColumn
              Caption = #214'rnek Durum'
              DataBinding.FieldName = 'LabOrnekdurum'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 100
            end
            object ListeColumn8: TcxGridDBColumn
              DataBinding.FieldName = 'CINSIYETI'
              Visible = False
            end
            object ListeColumn9: TcxGridDBColumn
              DataBinding.FieldName = 'HASTAADI'
              Visible = False
            end
            object ListeColumn10: TcxGridDBColumn
              DataBinding.FieldName = 'HASTASOYADI'
              Visible = False
            end
            object ListeColumn11: TcxGridDBColumn
              Caption = 'Kan A.Zamani'
              DataBinding.FieldName = 'KanAlimZamani'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Kind = ckDateTime
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 80
            end
            object ListeColumn12: TcxGridDBColumn
              Caption = 'Lab Kabul Zamani'
              DataBinding.FieldName = 'LabaratuvarKabulZamani'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Kind = ckDateTime
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 80
            end
            object ListeColumn18: TcxGridDBColumn
              Caption = 'Uz. Onay Zamani'
              DataBinding.FieldName = 'UzmanOnayZamani'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Kind = ckDateTime
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 80
            end
            object ListeColumn19: TcxGridDBColumn
              DataBinding.FieldName = 'HbsAg'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 36
            end
            object ListeColumn20: TcxGridDBColumn
              Caption = 'Anti Hbs'
              DataBinding.FieldName = 'AntiHbs'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 36
            end
            object ListeColumn21: TcxGridDBColumn
              Caption = 'Anti HCV'
              DataBinding.FieldName = 'AntiHCV'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 36
            end
            object ListeColumn22: TcxGridDBColumn
              DataBinding.FieldName = 'Diabet'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 36
            end
            object ListeColumn14: TcxGridDBColumn
              Caption = 'Lab Kabul Durum'
              DataBinding.FieldName = 'LabKabulDurum'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Items = <
                item
                  Description = 'Red'
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'Kabul'
                  Value = 1
                end
                item
                  Description = 'Bekliyor'
                  Value = 2
                end>
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object ListeColumn15: TcxGridDBColumn
              Caption = 'Lab Kabul Red Sebeb'
              DataBinding.FieldName = 'LabKabulDurumRedAck'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Materyal Eksik'
                  ImageIndex = 0
                  Value = 1
                end
                item
                  Description = 'Zayi'
                  Value = 2
                end>
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object ListeColumn3: TcxGridDBColumn
              Caption = 'GelisID'
              DataBinding.FieldName = 'SIRANO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 50
            end
            object ListeColumn1: TcxGridDBColumn
              Caption = 'Do'#287'um Tarihi'
              DataBinding.FieldName = 'DOGUMTARIHI'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 80
            end
            object ListeColumn16: TcxGridDBColumn
              DataBinding.FieldName = 'testler'
              Visible = False
            end
            object ListeColumn17: TcxGridDBColumn
              Caption = 'GelisTarih'
              DataBinding.FieldName = 'bhdat'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            Caption = 'Hastalar'
            GridView = Liste
            Options.DetailFrameColor = clBlack
            Options.DetailFrameWidth = 0
          end
        end
        object GridHizmet: TcxGridKadir
          Left = 825
          Top = 0
          Width = 328
          Height = 453
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LevelTabs.ImageBorder = 2
          LevelTabs.Style = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          ExceleGonder = False
          PopupForm = False
          object GridHizmetler: TcxGridDBTableView
            PopupMenu = PopupMenu2
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
            OnFocusedRecordChanged = GridHizmetlerFocusedRecordChanged
            DataController.Filter.Active = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = 'Hizmet Adet : ##'
                Kind = skCount
                Column = GridHizmetlerTanm
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Toplam '#304#351'lem Say'#305's'#305':##'
                Kind = skCount
                FieldName = 'sutKodu'
                Column = GridHizmetlerTanm
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            OptionsView.GroupRowHeight = 25
            OptionsView.HeaderHeight = 32
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            Styles.Group = AnaForm.cxStyle1
            object GridHizmetlertakipNo: TcxGridDBColumn
              DataBinding.FieldName = 'onay'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 30
              IsCaptionAssigned = True
            end
            object GridHizmetlerHizmetTuru: TcxGridDBColumn
              DataBinding.FieldName = 'HizmetTuru'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = DATALAR.imag24png
              Properties.Items = <
                item
                  Description = 'Tahlil'
                  ImageIndex = 47
                  Value = 'Tahlil'
                end
                item
                  Description = 'Seans'
                  ImageIndex = 1
                  Value = 'Diyaliz Seans'
                end
                item
                  Description = 'Radyoloji'
                  ImageIndex = 95
                  Value = 'Rad'
                end
                item
                  Description = 'Tan'#305
                  ImageIndex = 3
                  Value = 'Tan'#305
                end
                item
                  Description = 'Malzeme'
                  ImageIndex = 55
                  Value = 'Malzeme'
                end>
              Properties.LargeImages = DATALAR.imag24png
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderImageIndex = 20
              Options.Editing = False
              Width = 30
              IsCaptionAssigned = True
            end
            object GridHizmetlersutKodu: TcxGridDBColumn
              Caption = 'SutKodu'
              DataBinding.FieldName = 'CODE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 55
            end
            object GridHizmetlerTanm: TcxGridDBColumn
              Caption = 'Tanimi'
              DataBinding.FieldName = 'NAME1'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 148
            end
            object GridHizmetlerSonuc: TcxGridDBColumn
              Caption = 'Sonu'#231
              DataBinding.FieldName = 'gd'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 40
            end
            object GridHizmetlerhizmetSunucuRefNo: TcxGridDBColumn
              Caption = 'HizmetSunucu RefNo'
              DataBinding.FieldName = 'siraNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 75
            end
          end
          object cxGridDBBandedTableView29: TcxGridDBBandedTableView
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
                Column = cxGridDBBandedColumn96
              end
              item
                Kind = skSum
                Column = cxGridDBBandedColumn96
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
            object cxGridDBBandedColumn92: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Tan'#305'm'
              Width = 90
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn93: TcxGridDBBandedColumn
              Caption = 'Tan'#305'm Ad'#305
              DataBinding.FieldName = 'ad'
              Width = 150
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn94: TcxGridDBBandedColumn
              Caption = 'Toplam'
              DataBinding.FieldName = 'adet'
              Width = 70
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn95: TcxGridDBBandedColumn
              DataBinding.FieldName = 'kurumT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,###.#0'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn96: TcxGridDBBandedColumn
              DataBinding.FieldName = 'hastaT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DisplayFormat = '#,###.#0'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
          end
          object cxGridDBBandedTableView30: TcxGridDBBandedTableView
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
            object cxGridDBBandedColumn97: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NAME1'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn98: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SATISF'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGridDBBandedTableView31: TcxGridDBBandedTableView
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
                Caption = 'i'#351'lemler'
              end>
          end
          object cxGridDBBandedTableView32: TcxGridDBBandedTableView
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
            object cxGridDBBandedColumn99: TcxGridDBBandedColumn
              Caption = 'Tanim'
              DataBinding.FieldName = 'TANIM'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn100: TcxGridDBBandedColumn
              Caption = 'Hasta Ad'#305
              DataBinding.FieldName = 'HASTAADI'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn101: TcxGridDBBandedColumn
              Caption = 'Soyad'#305
              DataBinding.FieldName = 'HASTASOYADI'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn102: TcxGridDBBandedColumn
              Caption = 'Hizmet Ad'#305
              DataBinding.FieldName = 'NAME1'
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn103: TcxGridDBBandedColumn
              Caption = 'Kurum F'
              DataBinding.FieldName = 'KSATISF'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn104: TcxGridDBBandedColumn
              Caption = 'Hasta F'
              DataBinding.FieldName = 'SATISF'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
          end
          object cxGridLevel7: TcxGridLevel
            Caption = 'Hastalar'
            GridView = GridHizmetler
            Options.DetailFrameColor = clHighlight
          end
        end
        object cxSplitter1: TcxSplitter
          Left = 817
          Top = 0
          Width = 8
          Height = 453
          Control = GridListe
        end
      end
      object sayfa_log: TcxTabSheet
        Caption = #304#351'lem Loglar'#305
        ImageIndex = 1
        object txtLog: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 453
          Width = 1153
        end
      end
    end
  end
  object cxHastaListePanelBaslik: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 1
    Visible = False
    Height = 38
    Width = 1167
    object DiyalizTip: TcxRadioGroup
      Left = 4
      Top = 4
      Alignment = alCenterCenter
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Hemodiyaliz'
          Value = 'H'
        end
        item
          Caption = 'Periton Ayaktan'
          Value = 'P'
        end
        item
          Caption = 'Periton Aletli'
          Value = 'A'
        end>
      ItemIndex = 0
      TabOrder = 0
      Height = 32
      Width = 201
    end
    object Tip: TcxRadioGroup
      Left = 207
      Top = 4
      Alignment = alCenterCenter
      Properties.Items = <
        item
          Caption = 'Aktif'
          Value = '1'
        end
        item
          Caption = 'Pasif'
          Value = '0'
        end>
      ItemIndex = 0
      TabOrder = 1
      Height = 32
      Width = 74
    end
    object ktip: TcxComboBox
      Left = 283
      Top = 4
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.Items.Strings = (
        '1 - SGK'
        '99 - Yurt D'#305#351#305' Sigortal'#305'lar'
        '8 - '#220'cretli'
        '98 - '#214'zel Kurum - Sigorta')
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 2
      Text = '1 - SGK'
      Width = 104
    end
    object txtay: TcxComboBox
      Left = 400
      Top = 3
      ParentFont = False
      PopupMenu = popupYil
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 12
      Properties.Items.Strings = (
        'OCAK'
        'SUBAT'
        'MART'
        'NISAN'
        'MAYIS'
        'HAZIRAN'
        'TEMMUZ'
        'AGUSTOS'
        'EYLUL'
        'EKIM'
        'KASIM'
        'ARALIK')
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 37
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 496
    Top = 136
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16777088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object ikazRed: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object ikazYellow: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 104
    Top = 270
    object E2: TMenuItem
      Tag = 9997
      Caption = 'Excel G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object KaydetItem: TMenuItem
      Tag = 1
      Caption = 'Hasta Kaydet'
      ImageIndex = 15
      Visible = False
      OnClick = cxButtonCClick
    end
    object SonucAlItem: TMenuItem
      Tag = 2
      Caption = 'Sonu'#231' Al'
      ImageIndex = 13
      Visible = False
      OnClick = cxButtonCClick
    end
    object f1: TMenuItem
      Tag = -20
      Caption = 'Ayarlar'
      ImageIndex = 32
      OnClick = cxButtonCClick
      object E1: TMenuItem
        Tag = -10
        Caption = 'Eri'#351'im Ayarlar'#305
        OnClick = cxButtonCClick
      end
      object L1: TMenuItem
        Tag = -12
        Caption = 'LabTestler'
        OnClick = cxButtonCClick
      end
    end
    object D1: TMenuItem
      Caption = 'Durum Bilgisini De'#287'i'#351'tir'
      ImageIndex = 69
      object Y1: TMenuItem
        Caption = 'Yeni Kay'#305't'
        Hint = 'Yeni Kay'#305't'
        OnClick = S1Click
      end
      object Y3: TMenuItem
        Caption = 'Yeni Kay'#305't (ONAY)'
        Hint = 'ONAY'
        OnClick = S1Click
      end
      object G1: TMenuItem
        Caption = 'G'#246'nderildi'
        Hint = 'G'#246'nderildi'
        OnClick = S1Click
      end
      object S1: TMenuItem
        Caption = 'Sonu'#231' Al'#305'nd'#305
        Hint = 'Sonu'#231' Al'#305'nd'#305
        OnClick = S1Click
      end
    end
    object H1: TMenuItem
      Tag = -11
      Caption = 'Hastan'#305'n Sonu'#231'lar'#305'n'#305' G'#246'ster'
      ImageIndex = 45
      OnClick = cxButtonCClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object B1: TMenuItem
      Caption = 'Barkod '#304#351'lemleri'
      ImageIndex = 119
      Visible = False
      object O1: TMenuItem
        Tag = -21
        Caption = 'Olu'#351'tur'
        ImageIndex = 81
        OnClick = cxButtonCClick
      end
      object Y2: TMenuItem
        Tag = -22
        Caption = 'Yazd'#305'r'
        ImageIndex = 28
        OnClick = cxButtonCClick
      end
    end
    object IslemItem: TMenuItem
      Caption = #304#351'lem'
      ImageIndex = 79
      object IslemItemSub1: TMenuItem
        ImageIndex = 4
      end
      object IslemItemSub2: TMenuItem
        ImageIndex = 3
      end
      object IslemItemSub3: TMenuItem
        ImageIndex = 3
      end
    end
    object T1: TMenuItem
      Tag = -32
      Caption = 'Tetkik Tedavi Kart'#305
      ImageIndex = 99
      OnClick = cxButtonCClick
    end
    object S3: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      object etkikTakipFormlar1: TMenuItem
        Tag = 100
        Caption = 'Tetkik Takip Formlar'#305' Yazd'#305'r'
        OnClick = cxButtonCClick
      end
      object S4: TMenuItem
        Tag = 101
        Caption = 'Sonu'#231' Yaz'
        OnClick = cxButtonCClick
      end
    end
    object K2: TMenuItem
      Tag = 110
      Caption = 'Ktv/Urr Hesaplama'
      ImageIndex = 45
      OnClick = cxButtonCClick
    end
    object U1: TMenuItem
      Tag = 120
      Caption = 'Uzman Onay'#305' Tarihi'
      ImageIndex = 49
      OnClick = cxButtonCClick
    end
  end
  object popupYil: TPopupMenu
    OnPopup = popupYilPopup
    Left = 104
    Top = 328
    object N1: TMenuItem
      Caption = 'T'#252'm Gruplar'#305' A'#231
    end
    object K1: TMenuItem
      Tag = 1
      Caption = 'Gruplar'#305' Kapat'
    end
  end
  object memData: TSQLMemTable
    CurrentVersion = '13.00 '
    StoreDefs = True
    DatabaseName = 'MEMORY'
    ReadOnly = False
    Active = True
    CaseInsensitive = False
    FieldDefs = <
      item
        Name = 'dosyaNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'gelisNo'
        DataType = ftInteger
      end
      item
        Name = 'ornekNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CikisOrnekNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SIRANO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'hasta'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OrnekNo_Plazma'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OrnekNo_Serum'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OrnekNo_TamKan'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'KanAlimZamani'
        DataType = ftDateTime
      end>
    TableName = 'Table828602379_1400'
    Exclusive = False
    MemoryTableAllocBy = 1000
    Left = 24
    Top = 288
  end
  object PopupMenu2: TPopupMenu
    Images = DATALAR.imag24png
    Left = 952
    Top = 232
    object i1: TMenuItem
      Caption = #304'ptal'
      ImageIndex = 100
      OnClick = i1Click
    end
    object O2: TMenuItem
      Tag = 1
      Caption = 'Onay'
      ImageIndex = 45
      OnClick = i1Click
    end
    object S2: TMenuItem
      Tag = 2
      Caption = 'Sil'
      ImageIndex = 132
      OnClick = i1Click
    end
    object E3: TMenuItem
      Tag = 3
      Caption = 'Ekle'
      ImageIndex = 99
      OnClick = i1Click
    end
  end
  object Tetkikler: TListeAc
    ListeBaslik = 'Tetkik Listesi'
    TColcount = 4
    TColsW = '50,350,50,50'
    Table = 'labtestler'
    Conn = DATALAR.ADOConnection2
    Filtercol = 2
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'butKodu'
      'tanimi'
      'Tip'
      'uygulamaAdet')
    KolonBasliklari.Strings = (
      'But Kodu'
      'Tanimi'
      'Tip'
      'T'#252'r')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 856
    Top = 117
  end
end
