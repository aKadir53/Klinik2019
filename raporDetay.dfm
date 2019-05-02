object frmRaporDetay: TfrmRaporDetay
  Tag = -20
  Left = 224
  Top = 24
  BorderStyle = bsSizeToolWin
  Caption = 'frmRaporDetay'
  ClientHeight = 636
  ClientWidth = 916
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Detay: TcxGroupBox
    Left = 314
    Top = 238
    TabOrder = 0
    Visible = False
    Height = 230
    Width = 919
    object cxPageControl1: TcxPageControl
      Left = 3
      Top = 22
      Width = 913
      Height = 205
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = SheetDiyalizRaporBilgisi
      ExplicitLeft = 43
      ExplicitTop = 14
      ClientRectBottom = 198
      ClientRectLeft = 3
      ClientRectRight = 906
      ClientRectTop = 26
      object SheetDiyalizRaporBilgisi: TcxTabSheet
        Caption = 'Diyaliz Rapor Bilgisi'
        ImageIndex = 0
        object GroupBox4: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 172
          Width = 903
          object Label15: TLabel
            Left = 6
            Top = 80
            Width = 76
            Height = 13
            Caption = 'Refakat Varm'#305' ?'
            Color = clSilver
            ParentColor = False
          end
          object Label16: TLabel
            Left = 6
            Top = 20
            Width = 53
            Height = 13
            Caption = 'Seans G'#252'n'
            Color = clSilver
            ParentColor = False
          end
          object Label17: TLabel
            Left = 6
            Top = 40
            Width = 60
            Height = 13
            Caption = 'Seans Say'#305's'#305
            Color = clSilver
            ParentColor = False
          end
          object Label18: TLabel
            Left = 7
            Top = 60
            Width = 44
            Height = 13
            Caption = 'But Kodu'
            Color = clSilver
            ParentColor = False
          end
          object cxDBComboBox2: TcxDBComboBox
            Left = 107
            Top = 74
            DataBinding.DataField = 'RefakatVarmi'
            Properties.DropDownRows = 10
            Properties.Items.Strings = (
              'E - Evet'
              'H - Hay'#305'r')
            Properties.OnChange = cxDBComboBox1PropertiesChange
            Style.BorderStyle = ebsOffice11
            TabOrder = 0
            Width = 94
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 107
            Top = 14
            DataBinding.DataField = 'seansGun'
            Style.BorderStyle = ebsOffice11
            TabOrder = 1
            Width = 42
          end
          object cxDBSpinEdit2: TcxDBSpinEdit
            Left = 107
            Top = 34
            DataBinding.DataField = 'seansSayi'
            Style.BorderStyle = ebsOffice11
            TabOrder = 2
            Width = 42
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 107
            Top = 54
            DataBinding.DataField = 'butKodu'
            TabOrder = 3
            Width = 94
          end
        end
      end
      object SheetFTRRaporBilgisi: TcxTabSheet
        Caption = 'FTR Rapor Bilgisi'
        ImageIndex = 2
        TabVisible = False
        object GroupBox7: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 172
          Width = 903
          object Label21: TLabel
            Left = 6
            Top = 60
            Width = 86
            Height = 13
            Caption = 'Vucut B'#246'lge Kodu'
            Color = clSilver
            ParentColor = False
          end
          object Label22: TLabel
            Left = 6
            Top = 20
            Width = 53
            Height = 13
            Caption = 'Seans G'#252'n'
            Color = clSilver
            ParentColor = False
          end
          object Label23: TLabel
            Left = 6
            Top = 40
            Width = 60
            Height = 13
            Caption = 'Seans Say'#305's'#305
            Color = clSilver
            ParentColor = False
          end
          object Label24: TLabel
            Left = 7
            Top = 80
            Width = 44
            Height = 13
            Caption = 'But Kodu'
            Color = clSilver
            ParentColor = False
          end
          object cxDBSpinEdit5: TcxDBSpinEdit
            Left = 107
            Top = 14
            DataBinding.DataField = 'seansGun'
            TabOrder = 0
            Width = 42
          end
          object cxDBSpinEdit6: TcxDBSpinEdit
            Left = 107
            Top = 34
            DataBinding.DataField = 'seansSayi'
            TabOrder = 1
            Width = 42
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 107
            Top = 74
            DataBinding.DataField = 'butKodu'
            TabOrder = 2
            Width = 121
          end
          object ftrVucutBolge: TcxDBComboBox
            Left = 107
            Top = 54
            DataBinding.DataField = 'ftrVucutBolgesiKodu'
            Properties.DropDownRows = 10
            Properties.Items.Strings = (
              '1 - Y'#252'z B'#246'lgesi'
              '2 - Boyun B'#246'lgesi'
              '3 - S'#305'rt B'#246'lgesi'
              '4 - Bel B'#246'lgesi'
              '5 - Omuz B'#246'lgesi'
              '6 - Diresek B'#246'lgesi'
              '7 - El - El Bile'#287'i B'#246'lgesi'
              '8 - Kal'#231'a B'#246'lgesi'
              '9 - Diz B'#246'lgesi'
              '10 - Ayak Ayak Bile'#287'i B'#246'lgesi')
            Properties.OnChange = ftrVucutBolgePropertiesChange
            TabOrder = 3
            Width = 206
          end
        end
      end
      object sheetIlacTeshisleri: TcxTabSheet
        Caption = #304'la'#231' Te'#351'hisleri'
        ImageIndex = 1
        object GroupBox14: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          TabOrder = 0
          Height = 172
          Width = 903
          object GroupBox15: TcxGroupBox
            Left = 6
            Top = 7
            Caption = #304'la'#231' Te'#351'hisleri'
            TabOrder = 0
            Height = 165
            Width = 352
            object DBGridEh6: TDBGridEh
              Left = 3
              Top = 15
              Width = 346
              Height = 121
              Align = alClient
              DynProps = <>
              Flat = True
              FooterParams.Color = clWindow
              GridLineParams.VertEmptySpaceStyle = dessNonEh
              IndicatorOptions = [gioShowRowIndicatorEh]
              OptionsEh = [dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove]
              PopupMenu = PopupMenu1
              RowHeight = 18
              TabOrder = 0
              Columns = <
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'baslangicTarihi'
                  Font.Charset = TURKISH_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = 'Ba'#351'lang'#305#231' Tarihi'
                  Width = 84
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'bitisTarihi'
                  Font.Charset = TURKISH_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = 'Biti'#351' Tarihi'
                  Width = 87
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'teshisKodu'
                  Footers = <>
                  Width = 77
                end
                item
                  AutoFitColWidth = False
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'ICD10Kodu'
                  Footers = <>
                  Width = 65
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object DBNavigator6: TDBNavigator
              Left = 3
              Top = 136
              Width = 346
              Height = 19
              VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
              Align = alBottom
              Flat = True
              Hints.Strings = (
                'First record'
                'Prior record'
                'Next record'
                'Last record'
                'Sat'#305'r Ekle'
                'Sat'#305'r Sil'
                'Sat'#305'r G'#252'ncelle'
                'Sat'#305'r Kaydet'
                #304'ptal'
                'Yenile')
              Kind = dbnHorizontal
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
          end
          object cxButtonTESHIS: TcxButton
            Left = 362
            Top = 52
            Width = 90
            Height = 30
            Caption = 'Te'#351'his Kodlar'#305
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButtonTESHISClick
          end
          object cxButtonICD: TcxButton
            Left = 362
            Top = 21
            Width = 90
            Height = 30
            Caption = 'ICD10 Kodlar'#305
            TabOrder = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButtonICDClick
          end
          object btnDiyabet: TcxButton
            Left = 362
            Top = 143
            Width = 90
            Height = 30
            Caption = 'Diyabet Formu'
            TabOrder = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnDiyabetClick
          end
          object GroupBox16: TcxGroupBox
            Left = 453
            Top = 7
            Caption = #304'la'#231' Etken Maddeleri'
            TabOrder = 4
            Height = 167
            Width = 453
            object dozHint: TLabel
              Left = 105
              Top = 132
              Width = 3
              Height = 13
              Caption = '.'
            end
            object DBGridEh7: TDBGridEh
              Left = 5
              Top = 37
              Width = 449
              Height = 112
              DynProps = <>
              Flat = True
              FooterParams.Color = clWindow
              GridLineParams.VertEmptySpaceStyle = dessNonEh
              IndicatorOptions = [gioShowRowIndicatorEh]
              OptionsEh = [dghFooter3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove]
              RowHeight = 18
              TabOrder = 0
              Columns = <
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'etkenMaddeKodu'
                  Footers = <>
                  Title.Caption = 'Etken M.Kodu'
                  Width = 63
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'etkenMaddeAdi'
                  Footers = <>
                  Title.Caption = 'Etken M. Ad'#305
                  Width = 121
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kullanimDoz1'
                  Font.Charset = TURKISH_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = 'Doz 1'
                  Width = 31
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kullanimDoz2'
                  Font.Charset = TURKISH_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Footers = <>
                  Title.Caption = 'Doz 2'
                  Width = 32
                end
                item
                  AutoDropDown = True
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kullanimDozBirim'
                  Footers = <>
                  PickList.Strings = (
                    ''
                    '1-Adet '
                    '2- Milimetre '
                    '3-Miligram '
                    '4-Gram '
                    '5-Damla '
                    '6-'#220'nite '
                    '7-Kutu'
                    '8- Mikrogram'
                    '9- Mikrolitre'
                    'A- Bin '#220'nite'
                    'B- Milyon '#220'nite')
                  Title.Caption = 'Doz Birim'
                  Width = 48
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kullanimPeriyot'
                  Footers = <>
                  Title.Caption = 'Periyot'
                  Width = 36
                end
                item
                  AutoDropDown = True
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'kullanimPeriyotBirim'
                  Footers = <>
                  PickList.Strings = (
                    ''
                    '1-Dakika '
                    '2-Saat '
                    '3-G'#252'n '
                    '4-Hafta '
                    '5-Ay '
                    '6-Y'#305'l '
                    '7- '#214'm'#252'r Boyu')
                  Title.Caption = 'Periyot Birim'
                  Width = 61
                end
                item
                  DynProps = <>
                  EditButtons = <>
                  FieldName = 'onay'
                  Footers = <>
                  Width = 28
                end>
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
            object DBNavigator7: TDBNavigator
              Left = 3
              Top = 138
              Width = 447
              Height = 19
              VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
              Align = alBottom
              Flat = True
              Hints.Strings = (
                'First record'
                'Prior record'
                'Next record'
                'Last record'
                'Sat'#305'r Ekle'
                'Sat'#305'r Sil'
                'Sat'#305'r G'#252'ncelle'
                'Sat'#305'r Kaydet'
                #304'ptal'
                'Yenile')
              Kind = dbnHorizontal
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object cxGrid2: TcxGrid
              Left = 3
              Top = 15
              Width = 447
              Height = 123
              Align = alClient
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              LevelTabs.ImageBorder = 2
              LevelTabs.Style = 1
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = False
              object cxGridDBTableView1: TcxGridDBTableView
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
                FilterRow.ApplyChanges = fracImmediately
                Images = DATALAR.global_img_list4
                OptionsBehavior.AlwaysShowEditor = True
                OptionsBehavior.FocusCellOnTab = True
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnHidingOnGrouping = False
                OptionsCustomize.ColumnsQuickCustomization = True
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                OptionsView.CellAutoHeight = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                OptionsView.RowSeparatorColor = clBlack
                object cxGridDBTableView1Column1: TcxGridDBColumn
                  Caption = 'Etken M.Kodu'
                  DataBinding.FieldName = 'etkenMaddeKodu'
                  Options.Editing = False
                  Width = 65
                end
                object cxGridDBTableView1Column2: TcxGridDBColumn
                  Caption = 'Etken M.Ad'#305
                  DataBinding.FieldName = 'etkenMaddeAdi'
                  Options.Editing = False
                  Width = 100
                end
                object cxGridDBTableView1Column3: TcxGridDBColumn
                  Caption = 'Doz1'
                  DataBinding.FieldName = 'kullanimDoz1'
                  Width = 38
                end
                object cxGridDBTableView1Column4: TcxGridDBColumn
                  Caption = 'Doz2'
                  DataBinding.FieldName = 'kullanimDoz2'
                  Width = 40
                end
                object cxGridDBTableView1Column5: TcxGridDBColumn
                  Caption = 'Doz Birim'
                  DataBinding.FieldName = 'kullanimDozBirim'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'Adet'
                      ImageIndex = 0
                      Value = '1'
                    end
                    item
                      Description = 'Milimetre'
                      Value = '2'
                    end
                    item
                      Description = 'Miligram'
                      Value = '3'
                    end
                    item
                      Description = 'Gram'
                      Value = '4'
                    end
                    item
                      Description = 'Damla'
                      Value = '5'
                    end
                    item
                      Description = #220'nite'
                      Value = '6'
                    end
                    item
                      Description = 'Kutu'
                      Value = '7'
                    end
                    item
                      Description = 'Mikrogram'
                      Value = '8'
                    end
                    item
                      Description = 'Bin '#220'nite'
                      Value = 'A'
                    end
                    item
                      Description = 'Milyon '#220'nite'
                      Value = 'B'
                    end>
                  Width = 50
                end
                object cxGridDBTableView1Column6: TcxGridDBColumn
                  Caption = 'Periyot'
                  DataBinding.FieldName = 'kullanimPeriyot'
                  Width = 40
                end
                object cxGridDBTableView1Column7: TcxGridDBColumn
                  Caption = 'Peryot Birim'
                  DataBinding.FieldName = 'kullanimPeriyotBirim'
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Items = <
                    item
                      Description = 'Dakika'
                      ImageIndex = 0
                      Value = '1'
                    end
                    item
                      Description = 'Saat'
                      Value = '2'
                    end
                    item
                      Description = 'G'#252'n'
                      Value = '3'
                    end
                    item
                      Description = 'Hafta'
                      Value = '4'
                    end
                    item
                      Description = 'Ay'
                      Value = '5'
                    end
                    item
                      Description = 'Y'#305'l'
                      Value = '6'
                    end
                    item
                      Description = #214'm'#252'r Boyu'
                      Value = '7'
                    end>
                  Width = 60
                end
                object cxGridDBTableView1Column8: TcxGridDBColumn
                  DataBinding.FieldName = 'onay'
                  Width = 30
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
          object cxButtonETKEN: TcxButton
            Left = 362
            Top = 83
            Width = 90
            Height = 30
            Caption = 'Etken Maddeler'
            TabOrder = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButtonETKENClick
          end
          object cxButtonSUTKURAL: TcxButton
            Left = 362
            Top = 113
            Width = 90
            Height = 30
            Caption = 'E.M.Sut Kural'
            TabOrder = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButtonSUTKURALClick
          end
          object chkTani: TcxCheckBox
            Left = 361
            Top = 3
            Caption = 'S'#305'k Kulland'#305'klar'#305'm'
            State = cbsChecked
            TabOrder = 7
            Width = 90
          end
        end
      end
    end
  end
  object RaporGrid: TcxGridKadir
    Left = 8
    Top = 8
    Width = 900
    Height = 193
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    ExceleGonder = False
    object ListeRaporlar: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnDblClick = ListeRaporlarDblClick
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
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 35
      OptionsView.RowSeparatorColor = clBlack
      Styles.Group = cxStyle1
      object ListeRaporlarColumn1: TcxGridDBColumn
        Caption = 'Rapor No'
        DataBinding.FieldName = 'raporNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
      end
      object ListeRaporlarColumn2: TcxGridDBColumn
        Caption = 'Rapor Tarihi'
        DataBinding.FieldName = 'raporTarihi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 105
      end
      object ListeRaporlarColumn3: TcxGridDBColumn
        Caption = 'Baslangic Tarihi'
        DataBinding.FieldName = 'baslangicTarihi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 109
      end
      object ListeRaporlarColumn4: TcxGridDBColumn
        Caption = 'Bitis Tarihi'
        DataBinding.FieldName = 'bitisTarihi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 102
      end
      object ListeRaporlarColumn5: TcxGridDBColumn
        Caption = 'Tesis Kodu'
        DataBinding.FieldName = 'verenTesisKodu'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 95
      end
      object ListeRaporlarColumn6: TcxGridDBColumn
        Caption = 'Rapor Turu'
        DataBinding.FieldName = 'turu'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 131
      end
      object ListeRaporlarColumn7: TcxGridDBColumn
        Caption = 'Rapor Alt T'#252'r'#252
        DataBinding.FieldName = 'tedaviRaporTuru'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 91
      end
      object ListeRaporlarColumn8: TcxGridDBColumn
        Caption = 'Durum'
        DataBinding.FieldName = 'aktif'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            Description = 'Aktif'
            ImageIndex = 31
            Value = True
          end
          item
            Description = 'Pasif'
            ImageIndex = 33
            Value = False
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
      end
    end
    object cxGridLevel2: TcxGridLevel
      Caption = 'Hastalar'
      GridView = ListeRaporlar
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object Rapor__: THTTPRIO
    WSDLLocation = 'RaporIslemleri.wsdl'
    Service = 'RaporIslemleriService'
    Port = 'RaporIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 587
    Top = 372
  end
  object RaporOku: THTTPRIO
    WSDLLocation = 'D:\Dializ2007\RaporIslemleriOKU.wsdl'
    Service = 'RaporIslemleriService'
    Port = 'RaporIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 659
    Top = 372
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 408
    object N1: TMenuItem
      Caption = #304'la'#231' Rapor Te'#351'hi'#351' Ve Etken Maddeleri '#350'ablon Olarak Kaydet'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object T1: TMenuItem
      Caption = 'Te'#351'his Ve Etken Maddeleri '#350'ablondan Y'#252'kle'
      OnClick = T1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object E2: TMenuItem
      Caption = 'Eklenen Te'#351'hisi Meduladaki Rapora Ekle'
      OnClick = E2Click
    end
  end
  object ListeAc2: TListeAc
    ListeBaslik = 'Te'#351'his '#350'ablonlar'#305
    TColcount = 2
    TColsW = '30,100'
    Table = 'IlacRaporSablon'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = 16744576
    DipRenk = 16744576
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'Id'
      'sablonTanimi')
    KolonBasliklari.Strings = (
      #350'ablon Id'
      #350'ablon Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 140
    Top = 430
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
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 260
    Top = 414
  end
  object PopupMenu2: TPopupMenu
    Left = 72
    Top = 352
    object E1: TMenuItem
      Caption = 'Eklenen Etken Maddeyi Meduladaki Rapora Ekle'
      OnClick = E1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Images = DATALAR.imag24png
    Left = 40
    Top = 200
    object Kapat1: TMenuItem
      Tag = -30
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxButtonCClick
    end
    object B1: TMenuItem
      Tag = -3
      Caption = 'Ba'#351'hekim Onay'#305' Ver'
      ImageIndex = 49
      OnClick = cxButtonCClick
    end
    object B2: TMenuItem
      Tag = -2
      Caption = 'Ba'#351'hekim Onay'#305' Red'
      ImageIndex = 50
      OnClick = cxButtonCClick
    end
    object R1: TMenuItem
      Tag = -1
      Caption = 'Raporu Aktif Yap'
      ImageIndex = 0
      OnClick = cxButtonCClick
    end
    object lemler1: TMenuItem
      Tag = -30
      Caption = #304#351'lemler'
      ImageIndex = 81
      object YeniRapor1: TMenuItem
        Tag = -20
        Caption = 'Yeni Rapor'
        ImageIndex = 30
        OnClick = cxButtonCClick
      end
      object Dzenle1: TMenuItem
        Tag = -21
        Caption = 'D'#252'zenle'
        ImageIndex = 34
      end
      object Kaydet1: TMenuItem
        Tag = -22
        Caption = 'Kaydet'
        ImageIndex = 31
        OnClick = cxButtonCClick
      end
      object RaporuSistemdenSil1: TMenuItem
        Tag = -8
        Caption = 'Raporu Sistemden Sil'
        ImageIndex = 33
        OnClick = cxButtonCClick
      end
    end
    object RaporuMedulayaKaydet1: TMenuItem
      Tag = -4
      Caption = 'Raporu Medulaya Kaydet'
      ImageIndex = 76
      OnClick = cxButtonCClick
    end
    object RaporuMeduladanOku1: TMenuItem
      Tag = -5
      Caption = 'Raporu Meduladan Oku'
      ImageIndex = 67
      OnClick = cxButtonCClick
    end
    object RaporuMeduladanSil1: TMenuItem
      Tag = -6
      Caption = 'Raporu Meduladan Sil'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object RaporuYazdr1: TMenuItem
      Tag = -7
      Caption = 'Raporu Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object RaporAra1: TMenuItem
      Tag = -9
      Caption = 'Rapor Ara'
      ImageIndex = 12
      OnClick = cxButtonCClick
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 840
    Top = 96
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end
