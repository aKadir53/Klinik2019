object frmHastaRecete: TfrmHastaRecete
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmHastaRecete'
  ClientHeight = 700
  ClientWidth = 1374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxRecetePanel: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 700
    Width = 1374
    object cxRecete: TcxGroupBox
      Left = 2
      Top = 2
      Align = alClient
      Caption = 'Receteler'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 696
      Width = 1090
      object cxPanelReceteBaslik: TcxGroupBox
        Left = 3
        Top = 15
        Align = alTop
        PanelStyle.Active = True
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = -2
        ExplicitWidth = 1086
        Height = 19
        Width = 1084
        object chkTum: TcxCheckBox
          Left = 2
          Top = 2
          Align = alLeft
          Caption = 'T'#252'm Re'#231'eteler'
          Properties.OnEditValueChanged = chkTumPropertiesEditValueChanged
          TabOrder = 0
          Transparent = True
          Width = 121
        end
      end
      object cxPanelReceteDetay: TcxGroupBox
        Left = 3
        Top = 342
        Align = alClient
        Caption = 'Re'#231'ete Detaylar'#305
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        ExplicitLeft = 2
        ExplicitTop = 325
        ExplicitWidth = 1086
        ExplicitHeight = 369
        Height = 344
        Width = 1084
        object cxGrid4: TcxGrid
          Left = 3
          Top = 44
          Width = 1078
          Height = 290
          Align = alClient
          BorderStyle = cxcbsNone
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LevelTabs.ImageBorder = 2
          LevelTabs.Style = 1
          LookAndFeel.Kind = lfOffice11
          ExplicitLeft = 2
          ExplicitTop = 27
          ExplicitWidth = 1082
          ExplicitHeight = 340
          object gridIlaclar: TcxGridDBTableView
            PopupMenu = GridIlaclarPopup
            OnDblClick = gridIlaclarDblClick
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
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataSource = DataSource5
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.Active = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.ApplyChanges = fracImmediately
            NewItemRow.InfoText = 'Kay'#305't Ekle'
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Inserting = False
            OptionsView.NavigatorOffset = 20
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.HeaderHeight = 32
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            object gridIlaclarilacKodu: TcxGridDBColumn
              Caption = #304'la'#231' Kodu'
              DataBinding.FieldName = 'ilacKodu'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 128
            end
            object gridIlaclarilacAdi: TcxGridDBColumn
              Caption = #304'la'#231' Ad'#305
              DataBinding.FieldName = 'ilacAdi'
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 234
            end
            object gridIlaclarColumn2: TcxGridDBColumn
              Caption = 'Adet'
              DataBinding.FieldName = 'adet'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 32
            end
            object gridIlaclarkullanZamanUnit: TcxGridDBColumn
              Caption = 'Peryot Birim'
              DataBinding.FieldName = 'kullanZamanUnit'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Items = <
                item
                  Description = 'G'#252'n'
                  ImageIndex = 0
                  Value = 3
                end
                item
                  Description = 'Hafta'
                  Value = 4
                end
                item
                  Description = 'Ay'
                  Value = 5
                end
                item
                  Description = 'Y'#305'l'
                  Value = 6
                end>
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 60
              Options.Editing = False
              Width = 60
            end
            object gridIlaclarkullanimZaman: TcxGridDBColumn
              Caption = 'Peryot Adet'
              DataBinding.FieldName = 'kullanimZaman'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 45
            end
            object gridIlaclarColumn1: TcxGridDBColumn
              Caption = 'Kullan'#305'm Doz(1)'
              DataBinding.FieldName = 'kullanimAdet2'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 45
            end
            object gridIlaclarkullanimAdet: TcxGridDBColumn
              Caption = 'Kullan'#305'm Doz(2)'
              DataBinding.FieldName = 'kullanimAdet'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 45
            end
            object gridIlaclarkullanimSekli: TcxGridDBColumn
              Caption = 'Kullanim Sekli'
              DataBinding.FieldName = 'kullanimSekli'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                'A'#231
                'Tok'
                'A'#231'/Tok')
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 61
            end
            object gridIlaclarkullanimYolu: TcxGridDBColumn
              Caption = 'Kullanim Yolu'
              DataBinding.FieldName = 'kullanimYolu'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'kod'
              Properties.ListColumns = <
                item
                  FieldName = 'tanimi'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = DATALAR.ReceteKullanimYollari_Datasource
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 101
            end
          end
          object cxGridLevel4: TcxGridLevel
            Caption = 'Hastalar'
            GridView = gridIlaclar
            Options.DetailFrameColor = clBlack
            Options.DetailFrameWidth = 0
          end
        end
        object pnlReceteDetaySag: TcxGroupBox
          Left = 3
          Top = 15
          Align = alTop
          PanelStyle.Active = True
          Style.BorderStyle = ebsNone
          TabOrder = 1
          ExplicitLeft = 2
          ExplicitTop = -2
          ExplicitWidth = 1082
          Height = 29
          Width = 1078
          object btnIlacSil: TcxButtonKadir
            Tag = -23
            Left = 46
            Top = 2
            Width = 44
            Height = 25
            Align = alLeft
            Caption = '&Sil'
            TabOrder = 0
            OnClick = btnIlacSilClick
            NewButtonVisible = False
          end
          object btnIlacEkle: TcxButtonKadir
            Tag = -21
            Left = 2
            Top = 2
            Width = 44
            Height = 25
            Align = alLeft
            Caption = '&Ekle'
            TabOrder = 1
            OnClick = btnIlacEkleClick
            NewButtonVisible = False
          end
        end
      end
      object cxGrid10: TcxGrid
        Left = 3
        Top = 34
        Width = 1084
        Height = 300
        Align = alTop
        BorderStyle = cxcbsNone
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LevelTabs.ImageBorder = 2
        LevelTabs.Style = 1
        ExplicitLeft = 2
        ExplicitTop = 17
        ExplicitWidth = 1086
        object cxGridRecete: TcxGridDBTableView
          OnDblClick = cxGridReceteDblClick
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
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = DataSource4
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          FilterRow.InfoText = 'Arama Sat'#305'r'#305
          FilterRow.SeparatorWidth = 2
          FilterRow.ApplyChanges = fracImmediately
          NewItemRow.InfoText = 'Kay'#305't Ekle'
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.NavigatorOffset = 20
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          object cxGridDBColumn14: TcxGridDBColumn
            Caption = 'G.No'
            DataBinding.FieldName = 'gelisNo'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 31
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 92
          end
          object cxGridReceteColumn1: TcxGridDBColumn
            Caption = 'Protokol No'
            DataBinding.FieldName = 'protokolNo'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 200
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'T'#252'r'#252
            DataBinding.FieldName = 'receteTur'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Items = <
              item
                Description = 'Normal'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'K'#305'rm'#305'z'#305
                Value = '2'
              end
              item
                Description = 'Turuncu'
                Value = '3'
              end
              item
                Description = 'Mor'
                Value = '4'
              end
              item
                Description = 'Ye'#351'il'
                Value = '5'
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 70
          end
          object cxGridReceteColumn2: TcxGridDBColumn
            Caption = 'Re'#231'ete Alt Turu'
            DataBinding.FieldName = 'receteAltTur'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Items = <
              item
                Description = 'Ayaktan Re'#231'etesi'
                ImageIndex = 0
                Value = '1'
              end
              item
                Description = 'Yatan Re'#231'etesi'
                Value = '2'
              end
              item
                Description = 'Taburu Re'#231'etesi'
                Value = '3'
              end
              item
                Description = 'G'#252'n'#252'birlik Re'#231'etesi'
                Value = '4'
              end
              item
                Description = 'Acil Re'#231'etesi'
                Value = '5'
              end
              item
                Description = 'Ye'#351'il Alan Re'#231'etesi'
                Value = '6'
              end
              item
                Description = 'Evde Bak'#305'm Re'#231'etesi'
                Value = '7'
              end>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 120
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Doktor'
            DataBinding.FieldName = 'doktor'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 166
          end
          object cxGridReceteColumn3: TcxGridDBColumn
            Caption = 'Doktor Ad'#305
            DataBinding.FieldName = 'doktor'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 176
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'E-Re'#231'eteNo'
            DataBinding.FieldName = 'eReceteNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = AnaForm.cxStyle2
            Width = 90
          end
          object cxGridReceteColumn4: TcxGridDBColumn
            Caption = 'ReceteID'
            DataBinding.FieldName = 'id'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 50
          end
        end
        object cxGridLevel10: TcxGridLevel
          Caption = 'Hastalar'
          GridView = cxGridRecete
          Options.DetailFrameColor = clBlack
          Options.DetailFrameWidth = 0
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 3
        Top = 334
        Width = 1084
        Height = 8
        AlignSplitter = salTop
        Control = cxGrid10
        ExplicitLeft = 2
        ExplicitTop = 317
        ExplicitWidth = 1086
      end
    end
    object cxPanelReceteTanilar: TcxGroupBox
      Left = 1092
      Top = 2
      Align = alRight
      Caption = 'Re'#231'ete Tan'#305' Bilgileri'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 696
      Width = 280
      object cxGrid11: TcxGrid
        Left = 3
        Top = 43
        Width = 274
        Height = 264
        Align = alTop
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu2
        TabOrder = 0
        LevelTabs.ImageBorder = 2
        LevelTabs.Style = 1
        ExplicitLeft = 2
        ExplicitTop = 26
        ExplicitWidth = 276
        object cxGridReceteTani: TcxGridDBTableView
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
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = DataSource10
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          FilterRow.InfoText = 'Arama Sat'#305'r'#305
          FilterRow.SeparatorWidth = 2
          FilterRow.ApplyChanges = fracImmediately
          NewItemRow.InfoText = 'Kay'#305't Ekle'
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Inserting = False
          OptionsView.NavigatorOffset = 20
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.CellAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'Tan'#305' Kodu'
            DataBinding.FieldName = 'taniKodu'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 57
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'Tan'#305
            DataBinding.FieldName = 'tani'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 200
          end
        end
        object cxGridLevel11: TcxGridLevel
          Caption = 'Hastalar'
          GridView = cxGridReceteTani
          Options.DetailFrameColor = clBlack
          Options.DetailFrameWidth = 0
        end
      end
      object cxTaniBaslikPanel: TcxGroupBox
        Left = 3
        Top = 15
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 1
        ExplicitLeft = 2
        ExplicitTop = -2
        ExplicitWidth = 276
        Height = 28
        Width = 274
        object cxChkSIK: TcxCheckBox
          Left = 90
          Top = 2
          Align = alLeft
          Caption = 'S'#305'k Kullan'#305'lanlar'
          TabOrder = 0
          Transparent = True
          Width = 115
        end
        object cxButtonKadirTaniEkle: TcxButtonKadir
          Left = 2
          Top = 2
          Width = 44
          Height = 24
          Align = alLeft
          Caption = 'Ekle'
          TabOrder = 1
          OnClick = cxButtonKadirTaniEkleClick
          NewButtonVisible = False
        end
        object cxButtonKadirTaniSil: TcxButtonKadir
          Tag = 1
          Left = 46
          Top = 2
          Width = 44
          Height = 24
          Align = alLeft
          Caption = 'Sil'
          TabOrder = 2
          OnClick = cxButtonKadirTaniEkleClick
          NewButtonVisible = False
        end
      end
      object cxPanelReceteAciklama: TcxGroupBox
        Left = 3
        Top = 315
        Align = alTop
        Caption = 'Recete A'#231#305'klamalar'#305
        TabOrder = 2
        ExplicitLeft = 2
        ExplicitTop = 298
        ExplicitWidth = 276
        Height = 136
        Width = 274
        object cxGrid9: TcxGrid
          Tag = 1
          Left = 3
          Top = 40
          Width = 268
          Height = 86
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 0
          LevelTabs.ImageBorder = 2
          LevelTabs.Style = 1
          ExplicitLeft = 2
          ExplicitTop = 23
          ExplicitWidth = 272
          ExplicitHeight = 111
          object cxGridReceteAciklama: TcxGridDBTableView
            Tag = 1
            OnDblClick = cxGridReceteAciklamaDblClick
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
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataSource = DataSource11
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.Active = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.ApplyChanges = fracImmediately
            NewItemRow.InfoText = 'Kay'#305't Ekle'
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Inserting = False
            OptionsView.NavigatorOffset = 20
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = #304'lac Kodu'
              DataBinding.FieldName = 'rre'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 128
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'Tip'
              DataBinding.FieldName = 'aciklamaTip'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 41
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'A'#231#305'klama'
              DataBinding.FieldName = 'aciklama'
              HeaderAlignmentHorz = taCenter
              Options.Editing = False
              Width = 200
            end
          end
          object cxGridLevel9: TcxGridLevel
            Caption = 'Hastalar'
            GridView = cxGridReceteAciklama
            Options.DetailFrameColor = clBlack
            Options.DetailFrameWidth = 0
          end
        end
        object pnlRaceAckSag: TcxGroupBox
          Left = 3
          Top = 15
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 1
          ExplicitLeft = 2
          ExplicitTop = -2
          ExplicitWidth = 272
          Height = 25
          Width = 268
          object cxButtonKadirAckEkle: TcxButtonKadir
            Left = 2
            Top = 2
            Width = 44
            Height = 21
            Align = alLeft
            Caption = 'Ekle'
            TabOrder = 0
            OnClick = cxButtonKadirAckEkleClick
            NewButtonVisible = False
          end
          object cxButtonKadirAckSil: TcxButtonKadir
            Left = 46
            Top = 2
            Width = 41
            Height = 21
            Align = alLeft
            Caption = 'Sil'
            TabOrder = 1
            OnClick = cxButtonKadirAckSilClick
            NewButtonVisible = False
          end
        end
      end
      object cxSplitter3: TcxSplitter
        Left = 3
        Top = 307
        Width = 274
        Height = 8
        AlignSplitter = salTop
        Control = cxGrid11
        ExplicitLeft = 2
        ExplicitTop = 290
        ExplicitWidth = 276
      end
      object pnlIlacAck: TcxGroupBox
        Left = 3
        Top = 459
        Align = alClient
        Caption = 'Re'#231'ete '#304'la'#231' A'#231#305'klama'
        TabOrder = 4
        ExplicitLeft = 2
        ExplicitTop = 442
        ExplicitWidth = 276
        ExplicitHeight = 252
        Height = 227
        Width = 274
        object cxGrid8: TcxGrid
          Tag = 2
          Left = 3
          Top = 40
          Width = 268
          Height = 177
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PopupMenu = PopupMenu2
          TabOrder = 0
          LevelTabs.ImageBorder = 2
          LevelTabs.Style = 1
          ExplicitLeft = 2
          ExplicitTop = 23
          ExplicitWidth = 272
          ExplicitHeight = 227
          object cxGridReceteIlacAciklama: TcxGridDBTableView
            OnDblClick = cxGridReceteIlacAciklamaDblClick
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
            DataController.DataModeController.DetailInSQLMode = True
            DataController.DataSource = DataSource12
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.Active = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Filtering.MRUItemsList = False
            Filtering.ColumnMRUItemsList = False
            FilterRow.InfoText = 'Arama Sat'#305'r'#305
            FilterRow.SeparatorWidth = 2
            FilterRow.ApplyChanges = fracImmediately
            NewItemRow.InfoText = 'Kay'#305't Ekle'
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnHidingOnGrouping = False
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Inserting = False
            OptionsView.NavigatorOffset = 20
            OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            OptionsView.Indicator = True
            OptionsView.RowSeparatorColor = clBlack
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = #304'lac Kodu'
              DataBinding.FieldName = 'rre'
              Visible = False
              Options.Editing = False
              Width = 128
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Tip'
              DataBinding.FieldName = 'aciklamaTip'
              Options.Editing = False
              Width = 41
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'A'#231#305'klama'
              DataBinding.FieldName = 'aciklama'
              Options.Editing = False
              Width = 200
            end
          end
          object cxGridLevel8: TcxGridLevel
            Caption = 'Hastalar'
            GridView = cxGridReceteIlacAciklama
            Options.DetailFrameColor = clBlack
            Options.DetailFrameWidth = 0
          end
        end
        object pnlReceteIlacAckSag: TcxGroupBox
          Left = 3
          Top = 15
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 1
          ExplicitLeft = 2
          ExplicitTop = -2
          ExplicitWidth = 272
          Height = 25
          Width = 268
          object cxButtonKadirIlacAckEkle: TcxButtonKadir
            Left = 2
            Top = 2
            Width = 44
            Height = 21
            Align = alLeft
            Caption = 'Ekle'
            TabOrder = 0
            OnClick = cxButtonKadirIlacAckEkleClick
            NewButtonVisible = False
          end
          object cxButtonKadirIlacAckSil: TcxButtonKadir
            Left = 46
            Top = 2
            Width = 44
            Height = 21
            Align = alLeft
            Caption = 'Sil'
            TabOrder = 1
            OnClick = cxButtonKadirIlacAckSilClick
            NewButtonVisible = False
          end
        end
      end
      object cxSplitter4: TcxSplitter
        Left = 3
        Top = 451
        Width = 274
        Height = 8
        AlignSplitter = salTop
        Control = cxPanelReceteAciklama
        ExplicitLeft = 2
        ExplicitTop = 434
        ExplicitWidth = 276
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 128
    Top = 72
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object ReeteTakipFormu1: TMenuItem
      Tag = -5
      Caption = 'Re'#231'ete Takip Formu'
      Visible = False
    end
    object ReeteSorgula1: TMenuItem
      Tag = -11
      Caption = 'Re'#231'ete Sorgula'
      ImageIndex = 68
      Visible = False
    end
    object S2: TMenuItem
      Tag = -31
      Caption = 'Son 6 Aylik Tetkik Sonu'#231
      ImageIndex = 45
      OnClick = cxButtonCClick
    end
    object ReeteifremiDeitir1: TMenuItem
      Tag = -15
      Caption = 'Re'#231'ete '#350'ifremi De'#287'i'#351'tir'
      ImageIndex = 96
      OnClick = cxButtonCClick
    end
    object HastaRaporlar1: TMenuItem
      Tag = -16
      Caption = 'Hasta Raporlar'#305
      ImageIndex = 98
      OnClick = cxButtonCClick
    end
    object MedEczaneUygulamas1: TMenuItem
      Tag = -14
      Caption = 'MedEczane Uygulamas'#305
      ImageIndex = 32
      OnClick = cxButtonCClick
    end
    object Yazdr1: TMenuItem
      Tag = -4
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object SMSGnder1: TMenuItem
      Tag = -8
      Caption = 'SMS G'#246'nder'
      ImageIndex = 94
      OnClick = cxButtonCClick
    end
    object HastannReeteleri1: TMenuItem
      Tag = -13
      Caption = 'Hastan'#305'n Re'#231'eteleri'
      Visible = False
    end
    object ReeteOnay1: TMenuItem
      Tag = -12
      Caption = 'Re'#231'ete Onay'
      ImageIndex = 49
      Visible = False
      OnClick = cxButtonCClick
    end
    object N101: TMenuItem
      Tag = -10
      Caption = 'Meduladan Sil'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object MedulyaGnder1: TMenuItem
      Tag = -9
      Caption = 'Medulaya G'#246'nder'
      ImageIndex = 76
      OnClick = cxButtonCClick
    end
    object lemler1: TMenuItem
      Tag = -7
      Caption = #304#351'lemler'
      ImageIndex = 79
      object YeniReete1: TMenuItem
        Tag = -1
        Caption = 'Yeni Re'#231'ete'
        OnClick = cxButtonCClick
      end
      object N1: TMenuItem
        Tag = -19
        Caption = #350'ablondan Re'#231'eteye Ekle'
        OnClick = cxButtonCClick
      end
      object N61: TMenuItem
        Tag = -6
        Caption = 'Re'#231'eteden Yeni Re'#231'ete'
        OnClick = cxButtonCClick
      end
      object Dzenle1: TMenuItem
        Tag = -2
        Caption = 'D'#252'zenle'
        OnClick = cxButtonCClick
      end
      object Reeteptal1: TMenuItem
        Tag = -3
        Caption = 'Re'#231'ete '#304'ptal'
        OnClick = cxButtonCClick
      end
      object ReeteyiablonOlarakKaydet1: TMenuItem
        Tag = -18
        Caption = 'Re'#231'eteyi '#350'ablon Olarak Kaydet'
        OnClick = cxButtonCClick
      end
      object R1: TMenuItem
        Tag = -30
        Caption = 'Re'#231'ete '#350'ablonlar'#305
        OnClick = cxButtonCClick
      end
    end
  end
  object DataSource12: TDataSource
    DataSet = ADO_ReceteIlacAciklama
    Left = 802
    Top = 117
  end
  object ADO_ReceteIlacAciklama: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Filtered = True
    IndexFieldNames = 'receteDetayId'
    MasterFields = 'id'
    MasterSource = DataSource5
    TableName = 'ReceteIlacAciklama'
    Left = 796
    Top = 60
  end
  object DataSource11: TDataSource
    DataSet = ADO_receteAcikla
    Left = 586
    Top = 101
  end
  object ADO_receteAcikla: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Filtered = True
    IndexFieldNames = 'ReceteID'
    MasterFields = 'id'
    MasterSource = DataSource4
    TableName = 'ReceteAciklama'
    Left = 572
    Top = 76
  end
  object DataSource5: TDataSource
    DataSet = ADO_RECETE_DETAY
    Left = 316
    Top = 116
  end
  object ADO_RECETE_DETAY: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Filtered = True
    IndexFieldNames = 'ReceteID'
    MasterFields = 'id'
    MasterSource = DataSource4
    TableName = 'ReceteDetay'
    Left = 260
    Top = 172
  end
  object DataSource10: TDataSource
    DataSet = ADO_receteTani
    Left = 506
    Top = 101
  end
  object ADO_receteTani: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Filtered = True
    IndexFieldNames = 'receteId'
    MasterFields = 'id'
    MasterSource = DataSource4
    TableName = 'ReceteTani'
    Left = 460
    Top = 84
  end
  object DataSource4: TDataSource
    DataSet = ADO_Recete
    Left = 224
    Top = 109
  end
  object ADO_Recete: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from Recete'
      'where dosyaNo = '#39'015098'#39)
    Left = 220
    Top = 62
  end
  object PopupMenuEkleSil: TPopupMenu
    Images = DATALAR.imag24png
    Left = 64
    Top = 72
    object E1: TMenuItem
      Tag = -1
      Caption = 'Ekle'
      ImageIndex = 30
      OnClick = E1Click
    end
    object S1: TMenuItem
      Tag = -2
      Caption = 'Sil'
      ImageIndex = 33
      OnClick = E1Click
    end
  end
  object GridIlaclarPopup: TPopupMenu
    Left = 656
    Top = 240
    object L1: TMenuItem
      Tag = -21
      Caption = #304'la'#231' Listesinden Ekle'
      ShortCut = 16453
      OnClick = E1Click
    end
    object N3: TMenuItem
      Tag = -22
      Caption = #304'la'#231' Tedavi Plan'#305'ndan Ekle'
      Visible = False
      OnClick = E1Click
    end
    object N4: TMenuItem
      Tag = -23
      Caption = #304'la'#231' '#199#305'kar'
      OnClick = E1Click
    end
    object A1: TMenuItem
      Tag = -24
      Caption = 'A'#231#305'klama Ekle'
      Visible = False
      OnClick = E1Click
    end
    object A2: TMenuItem
      Tag = -25
      Caption = 'A'#231#305'klama Sil'
      Visible = False
      OnClick = E1Click
    end
    object T1: TMenuItem
      Tag = -26
      Caption = 'Tedaviye G'#246'nder'
      Visible = False
      OnClick = E1Click
    end
  end
  object TaniListe: TListeAc
    ListeBaslik = 'Tan'#305'lar'
    TColcount = 2
    TColsW = '60,350'
    Table = 'icd_teshisleri'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = 16744576
    DipRenk = 16744576
    ImajList = DATALAR.global_img_list4
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'ICDKODU'
      'TANI')
    KolonBasliklari.Strings = (
      'Tani Kodu'
      'Tani Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = True
    Grup = False
    GrupCol = 0
    Left = 68
    Top = 174
  end
  object Oku: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = OkuTimer
    Left = 128
    Top = 141
  end
  object ReceteSablonAc: TListeAc
    ListeBaslik = 'Recete '#350'ablonlar'#305
    TColcount = 2
    TColsW = '30,100'
    Table = 'ReceteSablon'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = 16744576
    DipRenk = 16744576
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'id'
      'sablonAdi')
    KolonBasliklari.Strings = (
      #350'ablon Id'
      #350'ablon Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 260
    Top = 246
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu2Popup
    Left = 520
    Top = 408
    object ilacR2: TMenuItem
      Tag = -40
      Caption = 'Re'#231'ete '#304'la'#231' A'#231#305'klama Ekle (Medula)'
      OnClick = cxButtonCClick
    end
    object TaniR3: TMenuItem
      Tag = -50
      Caption = 'Re'#231'ete Tan'#305' Ekle (Medula)'
      OnClick = cxButtonCClick
    end
    object ilacR3: TMenuItem
      Tag = -60
      Caption = 'Re'#231'ete A'#231#305'klama Ekle (Medula)'
      OnClick = cxButtonCClick
    end
    object TaniR4: TMenuItem
      Tag = -51
      Caption = 'Tan'#305#39'y'#305' '#304'la'#231' '#304'le '#304'li'#351'kilendir'
      OnClick = cxButtonCClick
    end
  end
end
