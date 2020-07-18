object frmMedulaFatura: TfrmMedulaFatura
  Left = 212
  Top = 137
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmMedulaFatura'
  ClientHeight = 664
  ClientWidth = 1200
  Color = 13750737
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
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 1200
    Height = 1
    Align = alTop
    Caption = 'Fatura Kesilecek Kay'#305'tlar'
    Color = clBlack
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 659
    Width = 1200
    Height = 5
    Align = alBottom
    Color = clBackground
    TabOrder = 1
    object txtinfo: TLabel
      Left = 7
      Top = 11
      Width = 3
      Height = 13
      Caption = '.'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cxPageControl2: TcxPageControl
    Left = 0
    Top = 1
    Width = 1200
    Height = 658
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = Sayfa_Faturalar
    ClientRectBottom = 651
    ClientRectLeft = 3
    ClientRectRight = 1193
    ClientRectTop = 26
    object Sayfa_Faturalar: TcxTabSheet
      Caption = 'Faturalar'
      ImageIndex = 0
      object cxGrid4: TcxGridKadir
        Left = 0
        Top = 0
        Width = 879
        Height = 625
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
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExcelFileName = 'MedulaFatura'
        ExceleGonder = True
        PopupForm = False
        object FaturaList: TcxGridDBTableView
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
          OnFocusedRecordChanged = FaturaListFocusedRecordChanged
          DataController.DataModeController.DetailInSQLMode = True
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'adet'
              Column = FaturaListadet
            end
            item
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'tutar'
              Column = FaturaListtutar
            end
            item
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'kdvTutar'
              Column = FaturaListkdvTutar
            end
            item
              Format = '#,###.#0'
              Kind = skSum
              FieldName = 'faturaTutar'
              Column = FaturaListfaturaTutar
            end
            item
              Kind = skCount
              Column = FaturaListdosyaNo
              DisplayText = 'Listelenen Kay'#305't'
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
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 35
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          Styles.ContentEven = cxStyle1
          Styles.OnGetContentStyle = cxGridDBTableView2StylesGetContentStyle
          object FaturaListdosyaNo: TcxGridDBColumn
            Caption = 'Dosya No'
            DataBinding.FieldName = 'dosyaNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 45
          end
          object FaturaListgelisNo: TcxGridDBColumn
            Caption = 'Gelis'
            DataBinding.FieldName = 'gelisNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 30
          end
          object FaturaListHASTA: TcxGridDBColumn
            Caption = 'Hasta'
            DataBinding.FieldName = 'HASTA'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 134
          end
          object FaturaListTarih: TcxGridDBColumn
            DataBinding.FieldName = 'Tarih'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 68
          end
          object FaturaListButKodu: TcxGridDBColumn
            DataBinding.FieldName = 'ButKodu'
            Visible = False
            Width = 48
          end
          object FaturaListaciklama: TcxGridDBColumn
            Caption = 'Aciklama'
            DataBinding.FieldName = 'aciklama'
            Visible = False
            Width = 71
          end
          object FaturaListadet: TcxGridDBColumn
            Caption = 'Seans Adet'
            DataBinding.FieldName = 'adet'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 34
          end
          object FaturaListbirimFiyat: TcxGridDBColumn
            Caption = 'Birim Fiyat'
            DataBinding.FieldName = 'birimFiyat'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '#,###.00'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 56
          end
          object FaturaListtutar: TcxGridDBColumn
            Caption = 'Takip Tutar'
            DataBinding.FieldName = 'tutar'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = ',0.00;-,0.00'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object FaturaListkdv: TcxGridDBColumn
            Caption = 'Kdv'
            DataBinding.FieldName = 'kdv'
            Visible = False
            Width = 29
          end
          object FaturaListkdvTutar: TcxGridDBColumn
            Caption = 'Kdv Tutar'
            DataBinding.FieldName = 'kdvTutar'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = ',0.00;-,0.00'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 50
          end
          object FaturaListfaturaTutar: TcxGridDBColumn
            Caption = 'Fatura Tutar'
            DataBinding.FieldName = 'faturaTutar'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = ',0.00;-,0.00'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 66
          end
          object FaturaListfaturaNo: TcxGridDBColumn
            Caption = 'Fatura No'
            DataBinding.FieldName = 'faturaNo'
            Visible = False
            Width = 55
          end
          object FaturaListtakipNo: TcxGridDBColumn
            Caption = 'TakipNo'
            DataBinding.FieldName = 'takipNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object FaturaListGSSFaturaTeslimNo: TcxGridDBColumn
            Caption = 'Fatura Teslim No'
            DataBinding.FieldName = 'GSSFaturaTeslimNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 75
          end
          object FaturaListbasvuruNo: TcxGridDBColumn
            Caption = 'Basvuru No'
            DataBinding.FieldName = 'basvuruNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 65
          end
          object FaturaListKontrol: TcxGridDBColumn
            Caption = 'Onay'
            DataBinding.FieldName = 'Kontrol'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DATALAR.imag24png
            Properties.Items = <
              item
                ImageIndex = 31
                Value = 1
              end
              item
                Value = 0
              end
              item
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 33
          end
          object FaturaListColumn4: TcxGridDBColumn
            Caption = 'SGK Bildirim'
            DataBinding.FieldName = 'SGKBildir'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Images = DATALAR.imag24png
            Properties.Items = <
              item
                ImageIndex = 0
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 37
          end
          object FaturaListfaturaTarihi: TcxGridDBColumn
            Caption = 'Fatura Tarihi'
            DataBinding.FieldName = 'faturaTarihi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 67
          end
          object FaturaListrefNo: TcxGridDBColumn
            DataBinding.FieldName = 'refNo'
            Visible = False
          end
          object FaturaListchk: TcxGridDBColumn
            DataBinding.FieldName = 'chk'
            Visible = False
          end
          object FaturaListCOLUMN1: TcxGridDBColumn
            DataBinding.FieldName = 'COLUMN1'
            Visible = False
          end
          object FaturaListADI1: TcxGridDBColumn
            DataBinding.FieldName = 'ADI1'
            Visible = False
          end
          object FaturaListIlIlce: TcxGridDBColumn
            DataBinding.FieldName = 'IlIlce'
            Visible = False
          end
          object FaturaListTCKIMLIKNO: TcxGridDBColumn
            DataBinding.FieldName = 'TCKIMLIKNO'
            Visible = False
          end
          object FaturaListKARNENO: TcxGridDBColumn
            DataBinding.FieldName = 'KARNENO'
            Visible = False
          end
          object FaturaListSicilNo: TcxGridDBColumn
            DataBinding.FieldName = 'SicilNo'
            Visible = False
          end
          object FaturaListilkTarih: TcxGridDBColumn
            DataBinding.FieldName = 'ilkTarih'
            Visible = False
          end
          object FaturaListbitisTarih: TcxGridDBColumn
            DataBinding.FieldName = 'bitisTarih'
            Visible = False
          end
          object FaturaListColumn2: TcxGridDBColumn
            Caption = 'SysTakipNo'
            DataBinding.FieldName = 'sysTakipNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object FaturaListColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'HastaneRefNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object FaturaListColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'MedulaEpikriz'
            Visible = False
          end
        end
        object cxGridLevel4: TcxGridLevel
          Caption = 'Hastalar'
          GridView = FaturaList
          Options.DetailFrameColor = clHighlight
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 887
        Top = 0
        Width = 303
        Height = 625
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = cxTabSheet1
        ClientRectBottom = 618
        ClientRectLeft = 3
        ClientRectRight = 296
        ClientRectTop = 26
        object fatura_sayfa1: TcxTabSheet
          Caption = 'Hizmet Detay'
          ImageIndex = 0
          object chkTutarTip: TcxCheckBoxKadir
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Tutar'#305' S'#305'f'#305'rdan B'#252'y'#252'k Olanlar'
            TabOrder = 0
            OnClick = chkTutarTipClick
            BosOlamaz = False
            Width = 293
          end
          object cxGrid2: TcxGridKadir
            Left = 0
            Top = 19
            Width = 293
            Height = 573
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
            object cxGridDBTableView3: TcxGridDBTableView
              PopupMenu = PopupMenu1
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
              DataController.DataSource = DataSource2
              DataController.Filter.Active = True
              DataController.Filter.TranslateBetween = True
              DataController.Filter.TranslateLike = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,###.#0'
                  Kind = skSum
                  FieldName = 'tutar'
                  Column = cxGridDBColumn5
                end
                item
                  Kind = skCount
                  FieldName = 'islemsiraNo'
                  Column = cxGridDBColumn3
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
              OptionsSelection.CellSelect = False
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
              OptionsView.CellAutoHeight = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.RowSeparatorColor = clBlack
              Styles.ContentEven = cxStyle1
              Styles.OnGetContentStyle = cxGridDBTableView2StylesGetContentStyle
              object cxGridDBColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'takipNo'
                Visible = False
              end
              object cxGridDBTableView3Column1: TcxGridDBColumn
                DataBinding.FieldName = 'Code'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 70
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'Hizmet'
                DataBinding.FieldName = 'name'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 90
              end
              object cxGridDBColumn4: TcxGridDBColumn
                Caption = 'Tarih'
                DataBinding.FieldName = 'UTarih'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 65
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = 'Tutar'
                DataBinding.FieldName = 'tutar'
                Visible = False
              end
              object cxGridDBTableView3Column2: TcxGridDBColumn
                Caption = 'Tutar'
                DataBinding.FieldName = 'tutar'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.00;-,0.00'
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 55
              end
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'islemsiraNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 69
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
              GridView = cxGridDBTableView3
              Options.DetailFrameColor = clHighlight
            end
          end
        end
        object fatura_sayfa2: TcxTabSheet
          Caption = 'Hizmet Toplam'
          ImageIndex = 1
          object cxGrid1: TcxGridKadir
            Left = 0
            Top = 0
            Width = 293
            Height = 592
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
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            ExceleGonder = False
            PopupForm = False
            object cxGridDBTableView1: TcxGridDBTableView
              PopupMenu = PopupMenu1
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
              DataController.DataSource = DataSource3
              DataController.Filter.Active = True
              DataController.Filter.TranslateBetween = True
              DataController.Filter.TranslateLike = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  Column = cxGridDBTableView1Adet
                end
                item
                  Kind = skSum
                  Column = cxGridDBTableView1Tutar
                end>
              DataController.Summary.SummaryGroups = <>
              Filtering.MRUItemsList = False
              Filtering.ColumnMRUItemsList = False
              FilterRow.InfoText = 'Arama Sat'#305'r'#305
              FilterRow.SeparatorWidth = 2
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
              OptionsSelection.CellSelect = False
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
              OptionsView.CellAutoHeight = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              OptionsView.RowSeparatorColor = clBlack
              Styles.ContentEven = cxStyle1
              Styles.OnGetContentStyle = cxGridDBTableView2StylesGetContentStyle
              object cxGridDBTableView1HizmetKodu: TcxGridDBColumn
                DataBinding.FieldName = 'HizmetKodu'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 88
              end
              object cxGridDBTableView1Tutar: TcxGridDBColumn
                DataBinding.FieldName = 'Tutar'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.DisplayFormat = ',0.00;-,0.00'
                HeaderAlignmentHorz = taCenter
                Width = 88
              end
              object cxGridDBTableView1Adet: TcxGridDBColumn
                DataBinding.FieldName = 'Adet'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 73
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
              GridView = cxGridDBTableView1
              Options.DetailFrameColor = clHighlight
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Fatura Epikriz'
          ImageIndex = 2
          object txtFaturaEpikriz: TcxMemo
            Left = 0
            Top = 0
            Align = alClient
            Lines.Strings = (
              'txtFaturaEpikriz')
            Properties.ReadOnly = True
            TabOrder = 0
            Height = 592
            Width = 293
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 879
        Top = 0
        Width = 8
        Height = 625
        Control = cxGrid4
      end
    end
    object Sayfa_Log: TcxTabSheet
      Caption = 'Fatura Kay'#305't Log'
      ImageIndex = 1
      object txtLog: TMemo
        Left = 0
        Top = 0
        Width = 1190
        Height = 625
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
        OnKeyDown = txtLogKeyDown
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 152
    Top = 312
    object S2: TMenuItem
      Tag = -1
      Caption = 'SGK'
      ImageIndex = 76
      object eyitNoKontrolYap1: TMenuItem
        Tag = -16
        Caption = 'Teyit No Kontrol Yap'
        ImageIndex = 7
        OnClick = cxButtonCClick
      end
      object F4: TMenuItem
        Tag = -3
        Caption = 'Fatura Detay Oku (TeslimNo)'
        ImageIndex = 35
        OnClick = cxButtonCClick
      end
      object T2: TMenuItem
        Tag = -2
        Caption = 'Tutar Oku'
        ImageIndex = 68
        OnClick = cxButtonCClick
      end
      object F3: TMenuItem
        Tag = -1
        Caption = 'Fatura Teslim (Medula)'
        ImageIndex = 76
        OnClick = cxButtonCClick
      end
      object FaturaptalTm1: TMenuItem
        Tag = -7
        Caption = 'Fatura '#304'ptal (Medula)'
        ImageIndex = 42
        OnClick = FaturaptalTm1Click
      end
      object FaturaOkuTm1: TMenuItem
        Tag = -4
        Caption = 'Fatura Oku'
        ImageIndex = 36
        OnClick = FaturaOkuTm1Click
      end
      object HizmetleriOku1: TMenuItem
        Tag = -5
        Caption = 'Hizmetleri Oku'
        ImageIndex = 67
        OnClick = HizmetleriOku1Click
      end
      object D1: TMenuItem
        Caption = 'D'#246'nem Sonland'#305'rma Portali'
        ImageIndex = 32
        OnClick = D1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ENabzSGKBildirimPaketiGnder1: TMenuItem
      Tag = -2
      Caption = 'E-Nab'#305'z SGK Bildirim Paketi G'#246'nder'
      ImageIndex = 118
      OnClick = ENabzSGKBildirimPaketiGnder1Click
    end
    object ENabzGnderim1: TMenuItem
      Tag = -3
      Caption = 'E-Nab'#305'z G'#246'nderim'
      Visible = False
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object F1: TMenuItem
      Tag = -14
      Caption = 'Tutar Oku Detay Bilgisi'
      ImageIndex = 68
      OnClick = F1Click
    end
    object F2: TMenuItem
      Tag = -15
      Caption = 'Faturadan '#199#305'kar'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object F5: TMenuItem
      Tag = -6
      Caption = 'Fatura '#304#351'lemleri'
      ImageIndex = 6
      object K1: TMenuItem
        Tag = -18
        Caption = 'Fatura '#304'cmali'
        OnClick = cxButtonCClick
      end
      object K2: TMenuItem
        Tag = -19
        Caption = 'Fatura Olu'#351'tur'
        OnClick = cxButtonCClick
      end
    end
    object S1: TMenuItem
      Tag = -20
      Caption = 'Seans Hakedi'#351' '#304'cmali'
      ImageIndex = 80
      Visible = False
      OnClick = cxButtonCClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object utarOnayTm1: TMenuItem
      Tag = 9
      Caption = 'Tutar Onay'
      ImageIndex = 31
      OnClick = utarOnayTm1Click
    end
    object T4: TMenuItem
      Tag = 10
      Caption = 'Tutar Onay '#304'ptal'
      ImageIndex = 33
      OnClick = utarOnayTm1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object T1: TMenuItem
      Tag = -12
      Caption = 'Toplu Epikriz Ekran'#305
      ImageIndex = 98
      Visible = False
      OnClick = T1Click
    end
    object H1: TMenuItem
      Tag = -13
      Caption = 'Hizmet Detay (Takip Bilgisi)'
      ImageIndex = 4
      Visible = False
      OnClick = H1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object H2: TMenuItem
      Tag = -25
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = cxButtonCClick
    end
    object T3: TMenuItem
      Tag = -26
      Caption = 'Tetkik Tedavi Kart'#305
      ImageIndex = 45
      OnClick = cxButtonCClick
    end
    object M1: TMenuItem
      Tag = -30
      Caption = 'Medula Epikriz'
      ImageIndex = 3
      OnClick = cxButtonCClick
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 56
    Top = 206
    object KurumFaturacmali1: TMenuItem
      Caption = 'Kurum Fatura '#304'cmali'
    end
    object KurumFatura1: TMenuItem
      Caption = 'Kurum Fatura'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 64
    Top = 256
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clBtnFace
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 728
    Top = 104
  end
  object ADO_Detay: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@t'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select F.*,g.code,g.name1 name,g.Tarih '
      'from FaturaHizmetDetayTutarOku F'
      'left join hareketler g on g.islemSiraNo = F.islemSiraNo'
      'where F.takipNo =:@t'
      'order by g.Tarih'
      '')
    Left = 696
    Top = 330
  end
  object DataSource2: TDataSource
    DataSet = ADO_Detay
    Left = 696
    Top = 386
  end
  object ADO_Detay_toplam: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT sutkodu HizmetKodu,sum(tutar) Tutar,count(*) Adet'
      '  FROM FaturaHizmetDetayTutarOku fd'
      '  JOIN Gelisler g ON g.Tak'#305'pNo = fd.takipNo'
      '  left JOIN gssTakipOkuDiger d ON d.islemSiraNo = fd.islemsiraNo'
      'WHERE g.BHDAT BETWEEN '#39'20150201'#39' AND '#39'20150228'#39
      'GROUP BY d.sutKodu')
    Left = 696
    Top = 202
  end
  object DataSource3: TDataSource
    DataSet = ADO_Detay_toplam
    Left = 696
    Top = 250
  end
  object DataSource1: TDataSource
    Left = 72
    Top = 616
  end
  object popupYil: TPopupMenu
    Left = 232
    Top = 128
    object N3: TMenuItem
      Caption = 'N'
    end
  end
end
