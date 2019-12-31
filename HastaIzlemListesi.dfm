object frmIzlem: TfrmIzlem
  Left = 389
  Top = 0
  Caption = 'frmIzlem'
  ClientHeight = 669
  ClientWidth = 1298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Height = 669
    ExplicitLeft = 320
    ExplicitTop = 65
    ExplicitHeight = 610
  end
  object Panel2: TPanel
    Left = 3
    Top = 0
    Width = 1295
    Height = 669
    Align = alClient
    TabOrder = 0
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Hasta Listesi ('#304'zlem)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 0
      ExplicitHeight = 642
      Height = 623
      Width = 1293
      object cxGrid2: TcxGrid
        Left = 3
        Top = 546
        Width = 1287
        Height = 67
        Align = alBottom
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        LevelTabs.ImageBorder = 2
        LevelTabs.Style = 1
        ExplicitLeft = 2
        ExplicitTop = 573
        ExplicitWidth = 1289
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
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = DataSource2
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#.##'
              Kind = skAverage
              Column = ListeDBColumn901940
            end
            item
              Format = '# Adet Kay'#305't Listelendi'
              Kind = skCount
              FieldName = 'dosyaNo'
              Column = Listeh
            end
            item
              Format = '#.##'
              Kind = skAverage
              Column = ListeColumn2
            end
            item
              Format = '#.##'
              Kind = skAverage
              Column = ListeColumn5
            end
            item
              Format = '#.##'
              Kind = skAverage
              Column = ListeColumn6
            end
            item
              Format = '#.##'
              Kind = skAverage
              Column = ListeDBColumn9016203
            end>
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
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 20
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.DataRowHeight = 25
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          Styles.Content = cxStyle1
          object ListedosyaNo: TcxGridDBColumn
            DataBinding.FieldName = 'dosyaNo'
            Visible = False
          end
          object ListeColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'g'
            Visible = False
          end
          object ListeColumn10: TcxGridDBColumn
            Caption = 'TcKimlikNo'
            DataBinding.FieldName = 'tc'
            Visible = False
            Width = 84
          end
          object Listeh: TcxGridDBColumn
            Caption = 'Hasta Ad'#305
            DataBinding.FieldName = 'h'
            Visible = False
            Width = 173
          end
          object ListeColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Tarih'
            Visible = False
            Width = 83
          end
          object ListeDBColumn901940: TcxGridDBColumn
            Tag = 901940
            Caption = #220're'
            DataBinding.FieldName = '901940'
            Width = 40
          end
          object ListeColumn2: TcxGridDBColumn
            Caption = #220're_'#199
            DataBinding.FieldName = '901940c'
            Width = 40
          end
          object ListeDBColumn902210: TcxGridDBColumn
            Tag = 902210
            Caption = 'Kreatinin'
            DataBinding.FieldName = '902210'
            Width = 40
          end
          object ListeColumn3: TcxGridDBColumn
            Caption = 'Kreatinin_'#199
            DataBinding.FieldName = '902210c'
            Width = 40
          end
          object ListeDBColumn903130: TcxGridDBColumn
            Tag = 903130
            Caption = 'Potasyum'
            DataBinding.FieldName = '903130'
            Width = 40
          end
          object ListeColumn4: TcxGridDBColumn
            Caption = 'Potasyum_'#199
            DataBinding.FieldName = '903130c'
            Width = 40
          end
          object ListeColumn5: TcxGridDBColumn
            Caption = 'Kt/V'
            DataBinding.FieldName = 'ktv'
            Width = 30
          end
          object ListeColumn6: TcxGridDBColumn
            Caption = 'URR%'
            DataBinding.FieldName = 'urr'
            Width = 30
          end
          object ListeDBColumn903670: TcxGridDBColumn
            Tag = 903670
            Caption = 'Sodyum'
            DataBinding.FieldName = '903670'
            Width = 40
          end
          object ListeDBColumn901910: TcxGridDBColumn
            Tag = 901910
            Caption = 'Kalsiyum'
            DataBinding.FieldName = '901910'
            Width = 40
          end
          object DuzCa: TcxGridDBColumn
            DataBinding.FieldName = 'DuzCa'
            Width = 36
          end
          object ListeDBColumn901260: TcxGridDBColumn
            Tag = 901260
            Caption = 'Fosfor'
            DataBinding.FieldName = '901260'
            Width = 40
          end
          object Caxp: TcxGridDBColumn
            Caption = 'CaXP'
            DataBinding.FieldName = 'Caxp'
            Width = 34
          end
          object ListeDBColumn900200: TcxGridDBColumn
            Tag = 900200
            Caption = 'ALT'
            DataBinding.FieldName = '900200'
            Width = 40
          end
          object ListeDBColumn901500: TcxGridDBColumn
            Tag = 901500
            Caption = 'Glukoz'
            DataBinding.FieldName = '901500'
            Width = 40
          end
          object ListeDBColumn903240: TcxGridDBColumn
            Tag = 903240
            Caption = 'T.Protein'
            DataBinding.FieldName = '903240'
            Width = 40
          end
          object ListeDBColumn900210: TcxGridDBColumn
            Tag = 900210
            Caption = 'Albumin'
            DataBinding.FieldName = '900210'
            Width = 40
          end
          object ListeDBColumn901620: TcxGridDBColumn
            Tag = 901620
            Caption = 'Hemogram'
            DataBinding.FieldName = '901620'
            Visible = False
            Width = 40
          end
          object ListeDBColumn9016201: TcxGridDBColumn
            Tag = 9016201
            Caption = 'WBC'
            DataBinding.FieldName = '901620.1'
            Width = 40
          end
          object ListeDBColumn9016202: TcxGridDBColumn
            Tag = 9016202
            Caption = 'RBC'
            DataBinding.FieldName = '901620.2'
            Width = 40
          end
          object ListeDBColumn9016203: TcxGridDBColumn
            Tag = 9016203
            Caption = 'HGB'
            DataBinding.FieldName = '901620.3'
            Width = 40
          end
          object ListeDBColumn9016204: TcxGridDBColumn
            Tag = 9016204
            Caption = 'HCT'
            DataBinding.FieldName = '901620.4'
            Width = 40
          end
          object ListeDBColumn9016205: TcxGridDBColumn
            Tag = 9016205
            Caption = 'PLT'
            DataBinding.FieldName = '901620.5'
            Width = 40
          end
          object ListeDBColumn9016206: TcxGridDBColumn
            Tag = 9016206
            Caption = 'MPV'
            DataBinding.FieldName = '901620.6'
            Width = 40
          end
          object ListeDBColumn9016207: TcxGridDBColumn
            Tag = 9016207
            Caption = 'MCV'
            DataBinding.FieldName = '901620.7'
            Width = 40
          end
          object ListeDBColumn9016208: TcxGridDBColumn
            Tag = 9016208
            Caption = 'MCH'
            DataBinding.FieldName = '901620.8'
            Width = 40
          end
          object ListeDBColumn901020: TcxGridDBColumn
            Tag = 901020
            Caption = 'S.Demiri'
            DataBinding.FieldName = '901020'
            Width = 40
          end
          object ListeDBColumn901040: TcxGridDBColumn
            Tag = 901040
            Caption = 'SDBK'
            DataBinding.FieldName = '901040'
            Width = 40
          end
          object ListeDBColumn901220: TcxGridDBColumn
            Tag = 901220
            Caption = 'Ferritin'
            DataBinding.FieldName = '901220'
            Width = 40
          end
          object Ts: TcxGridDBColumn
            Caption = 'TS%'
            DataBinding.FieldName = 'TS'
            Width = 41
          end
          object ListeDBColumn904120: TcxGridDBColumn
            Tag = 904120
            Caption = #220'rik Asit'
            DataBinding.FieldName = '904120'
            Width = 40
          end
          object ListeDBColumn900900: TcxGridDBColumn
            Tag = 900900
            Caption = 'CRP'
            DataBinding.FieldName = '900900'
            Width = 40
          end
          object ListeDBColumn900681: TcxGridDBColumn
            Tag = 900681
            Caption = 'Bikarbonat'
            DataBinding.FieldName = '900681'
            Width = 40
          end
          object ListeDBColumn900340: TcxGridDBColumn
            Tag = 900340
            Caption = 'ALP'
            DataBinding.FieldName = '900340'
            Width = 40
          end
          object ListeDBColumn902980: TcxGridDBColumn
            Tag = 902980
            Caption = 'PTH'
            DataBinding.FieldName = '902980'
            Width = 40
          end
          object ListeDBColumn901450: TcxGridDBColumn
            Tag = 901450
            Caption = 'HbA1c'
            DataBinding.FieldName = '901460'
            Width = 40
          end
          object ListeDBColumn907440: TcxGridDBColumn
            Tag = 907440
            Caption = 'HBsAg'
            DataBinding.FieldName = '907440'
            Width = 40
          end
          object ListeDBColumn906610: TcxGridDBColumn
            Tag = 906610
            Caption = 'Anti HBs'
            DataBinding.FieldName = '906610'
            Width = 40
          end
          object ListeDBColumn906630: TcxGridDBColumn
            Tag = 906630
            Caption = 'Anti HCV'
            DataBinding.FieldName = '906630'
            Width = 40
          end
          object ListeDBColumn906660: TcxGridDBColumn
            Tag = 906660
            Caption = 'Anti HIV'
            DataBinding.FieldName = '906660'
            Width = 40
          end
          object ListeColumn11: TcxGridDBColumn
            Caption = 'HBsAg Deger'
            DataBinding.FieldName = '907440ia'
            BestFitMaxWidth = 64
            Options.Editing = False
            Width = 70
          end
          object ListeColumn12: TcxGridDBColumn
            Caption = 'Anti HBs Deger'
            DataBinding.FieldName = '906610ia'
            BestFitMaxWidth = 64
            Options.Editing = False
            Width = 76
          end
          object ListeColumn13: TcxGridDBColumn
            Caption = 'Anti HCV Deger'
            DataBinding.FieldName = '906630ia'
            BestFitMaxWidth = 64
            Options.Editing = False
            Width = 64
          end
          object ListeColumn14: TcxGridDBColumn
            Caption = 'Anti HIV Deger'
            DataBinding.FieldName = '906660ia'
            BestFitMaxWidth = 64
            Options.Editing = False
            Width = 76
          end
          object ListeDBColumn902110: TcxGridDBColumn
            Tag = 902110
            Caption = 'T.Kolesterol'
            DataBinding.FieldName = '902110'
            Width = 40
          end
          object ListeDBColumn902290: TcxGridDBColumn
            Tag = 902290
            Caption = 'LDL Kolesterol'
            DataBinding.FieldName = '902290'
            Width = 40
          end
          object ListeDBColumn901580: TcxGridDBColumn
            Tag = 901580
            Caption = 'HDL Kolesterol'
            DataBinding.FieldName = '901580'
            Width = 40
          end
          object ListeDBColumn903990: TcxGridDBColumn
            Tag = 903990
            Caption = 'Trigliserit'
            DataBinding.FieldName = '903990'
            Width = 40
          end
          object ListeDBColumn530100: TcxGridDBColumn
            Tag = 530100
            Caption = 'EKG'
            DataBinding.FieldName = '530100'
            Width = 40
          end
          object ListeDBColumn801840: TcxGridDBColumn
            Tag = 801840
            Caption = 'Tele Kar.'
            DataBinding.FieldName = '801840'
            Width = 40
          end
          object ListeDBColumn705140: TcxGridDBColumn
            Tag = 705140
            Caption = 'Kan Grubu'
            DataBinding.FieldName = '705140'
            Width = 40
          end
          object ListeColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'tak'#305'pno'
          end
          object ListeColumn8: TcxGridDBColumn
            DataBinding.FieldName = 'basvuruno'
          end
        end
        object cxGridLevel1: TcxGridLevel
          Caption = 'Hastalar'
          GridView = Liste
          Options.DetailFrameColor = clBlack
          Options.DetailFrameWidth = 0
        end
      end
      object cxGrid1: TcxGridKadir
        Left = 3
        Top = 16
        Width = 1287
        Height = 530
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
        ExcelFileName = 'IzlemListesi'
        ExceleGonder = True
        PopupForm = False
        ExplicitLeft = 2
        ExplicitTop = -2
        ExplicitWidth = 1289
        ExplicitHeight = 575
        object gridHastalar: TcxGridDBBandedTableView
          PopupMenu = PopupMenu1
          OnDblClick = gridHastalarDblClick
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.DataRowHeight = 51
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 32
          Bands = <
            item
              Caption = 'Hasta Bilgileri'
              FixedKind = fkLeft
              Styles.Content = cxStyle3
              Width = 448
            end
            item
              Caption = 'Tedavi Order Bilgileri'
              Styles.Content = cxStyle2
              Width = 1544
            end
            item
              Caption = #304'la'#231' Tedavi Bilgileri'
              Width = 905
            end>
          object gridHastalarTCKIMLIKNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TCKIMLIKNO'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gridHastalarkod: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kod'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gridHastalarADI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ADI'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gridHastalarTescilNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TescilNo'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gridHastalarBrans: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Brans'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gridHastalarKanAlimTarihi: TcxGridDBBandedColumn
            DataBinding.FieldName = 'KanAlimTarihi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gridHastalardurum: TcxGridDBBandedColumn
            DataBinding.FieldName = 'durum'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gridHastalarsertifika: TcxGridDBBandedColumn
            DataBinding.FieldName = 'sertifika'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gridHastalarTCKimlik: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TCKimlik'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gridHastalarReceteBrans: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ReceteBrans'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gridHastalarSertifikaNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SertifikaNo'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gridHastalarTip: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tip'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gridHastalarTdisID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TdisID'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gridHastalarUzman: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Uzman'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gridHastalarAnemi: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Anemi'
            PropertiesClassName = 'TcxCheckGroupProperties'
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = '0'
              end
              item
                Caption = 'Tedaviye '#304'htiyac'#305' Yok'
                Tag = 1
              end
              item
                Caption = 'Transf'#252'zyon'
                Tag = 2
              end
              item
                Caption = 'Eritropoetin'
                Tag = 3
              end
              item
                Caption = 'Demir Preperat'#305
                Tag = 4
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 172
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gridHastalartedaviSeyri: TcxGridDBBandedColumn
            Caption = 'Tedavi Seyri'
            DataBinding.FieldName = 'tedaviSeyri'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '3 - Transplantasyona gitti'
              '7 - Diyaliz Tedavisi Devam Ediyor'
              '8 - Diyaliz Tedavisine '#304'htiyac'#305' Kalmad'#305)
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 129
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gridHastalarDVitamin: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DVitamin'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '1 - Ihtiyac'#305' Yok'
              '2 - Oral'
              '3 - Intraven'#246'z'
              '4 - D V'#304'TAM'#304'N'#304' ANALO'#286'U')
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 91
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gridHastalarDVaciklama: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DVaciklama'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object gridHastalarSinekalset: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Sinekalset'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '1 - Kullan'#305'yor'
              '2 - Kullanm'#305'yor')
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 101
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gridHastalarAntihipertansif: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Antihipertansif'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '1 - Kullanm'#305'yor'
              '2 - 1 Adet Kullan'#305'yor'
              '3 - 2 Adet Kullan'#305'yor'
              '4 - 2 den Fazla Kullan'#305'yor')
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 106
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gridHastalarFosforBagAjan: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FosforBagAjan'
            PropertiesClassName = 'TcxCheckGroupProperties'
            Properties.Columns = 2
            Properties.Items = <
              item
              end
              item
                Caption = 'Kalsiyum Asetat'
                Tag = 1
              end
              item
                Caption = 'Kalsiyum Karbonat'
                Tag = 2
              end
              item
                Caption = 'Sevelamer'
                Tag = 3
              end
              item
                Caption = 'Kullanm'#305'yor'
                Tag = 4
              end
              item
                Caption = 'Di'#287'er'
                Tag = 5
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 153
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gridHastalardiyalizTedaviYontemi: TcxGridDBBandedColumn
            DataBinding.FieldName = 'diyalizTedaviYontemi'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object gridHastalarbhdat: TcxGridDBBandedColumn
            DataBinding.FieldName = 'bhdat'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object gridHastalarDYOBID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DYOBID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Styles.Content = cxStyle4
            Width = 61
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gridHastalardosyaNo: TcxGridDBBandedColumn
            Caption = 'DosyaNo'
            DataBinding.FieldName = 'dosyaNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 49
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gridHastalargelisNo: TcxGridDBBandedColumn
            Caption = 'GNo'
            DataBinding.FieldName = 'gelisNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 48
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gridHastalardoktor: TcxGridDBBandedColumn
            Caption = 'Uzman'
            DataBinding.FieldName = 'doktor'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 114
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gridHastalarTarih: TcxGridDBBandedColumn
            Caption = 'Uzman Muayene Tarihi'
            DataBinding.FieldName = 'UzmanGozlemTarihi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 80
            Position.BandIndex = 1
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gridHastalarsistemSorgusu: TcxGridDBBandedColumn
            DataBinding.FieldName = 'sistemSorgusu'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object gridHastalarbasboyun: TcxGridDBBandedColumn
            DataBinding.FieldName = 'basboyun'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object gridHastalarakciger: TcxGridDBBandedColumn
            DataBinding.FieldName = 'akciger'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object gridHastalarkalp: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kalp'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object gridHastalarabdomen: TcxGridDBBandedColumn
            DataBinding.FieldName = 'abdomen'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
          object gridHastalarEkst: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Ekst'
            Visible = False
            Position.BandIndex = 1
            Position.ColIndex = 45
            Position.RowIndex = 0
          end
          object gridHastalarkurukilo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kurukilo'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gridHastalarkanah: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APH'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object gridHastalarantikoa: TcxGridDBBandedColumn
            DataBinding.FieldName = 'antikoa'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 46
            Position.RowIndex = 0
          end
          object gridHastalardiyalizor: TcxGridDBBandedColumn
            DataBinding.FieldName = 'diyalizor'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 47
            Position.RowIndex = 0
          end
          object gridHastalardiyalizat: TcxGridDBBandedColumn
            Caption = 'Diyalizat'
            DataBinding.FieldName = 'D'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 119
            Position.BandIndex = 1
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object gridHastalarss: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ss'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 48
            Position.RowIndex = 0
          end
          object gridHastalardigerNot: TcxGridDBBandedColumn
            Caption = 'Uzman Not'
            DataBinding.FieldName = 'digerNot'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.Alignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 153
            Position.BandIndex = 1
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gridHastalarpsiko: TcxGridDBBandedColumn
            DataBinding.FieldName = 'psiko'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 49
            Position.RowIndex = 0
          end
          object gridHastalarHCOOO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'HCOOO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 34
            Position.BandIndex = 1
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object gridHastalarK: TcxGridDBBandedColumn
            DataBinding.FieldName = 'K'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 50
            Position.RowIndex = 0
          end
          object gridHastalarGU: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GU'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 51
            Position.RowIndex = 0
          end
          object gridHastalarHEPARIN: TcxGridDBBandedColumn
            Caption = 'Heparin'
            DataBinding.FieldName = 'HEPARIN'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 49
            Position.BandIndex = 1
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object gridHastalarGIRISYOLU: TcxGridDBBandedColumn
            Caption = 'Damar Giri'#351
            DataBinding.FieldName = 'GIRISYOLU'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 88
            Position.BandIndex = 1
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object gridHastalarCA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CA'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 52
            Position.RowIndex = 0
          end
          object gridHastalarNa: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Na'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
            Position.BandIndex = 1
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object gridHastalarDS: TcxGridDBBandedColumn
            Caption = 'Diyaliz'#246'r Tipi'
            DataBinding.FieldName = 'DiyalizorTipi'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 83
            Position.BandIndex = 1
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object gridHastalarDC: TcxGridDBBandedColumn
            Caption = 'Diyaliz'#246'r Cinsi'
            DataBinding.FieldName = 'DiyalizorCinsi'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 119
            Position.BandIndex = 1
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object gridHastalarYA: TcxGridDBBandedColumn
            Caption = 'Y'#252'zey Alan'
            DataBinding.FieldName = 'YA'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 47
            Position.BandIndex = 1
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object gridHastalarmalzemeSablon: TcxGridDBBandedColumn
            DataBinding.FieldName = 'malzemeSablon'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 53
            Position.RowIndex = 0
          end
          object gridHastalarIgne: TcxGridDBBandedColumn
            Caption = 'A.Igne'
            DataBinding.FieldName = 'Igne'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '14'
              '15'
              '16'
              '17')
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 38
            Position.BandIndex = 1
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object gridHastalarIgneV: TcxGridDBBandedColumn
            Caption = 'V.Igne'
            DataBinding.FieldName = 'IgneV'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '14'
              '15'
              '16'
              '17')
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 42
            Position.BandIndex = 1
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object gridHastalarISI: TcxGridDBBandedColumn
            Caption = 'M.ISI'
            DataBinding.FieldName = 'ISI'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 41
            Position.BandIndex = 1
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object gridHastalarDiyalizorBarkod: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DiyalizorBarkod'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 54
            Position.RowIndex = 0
          end
          object gridHastalarHEPARINUYG: TcxGridDBBandedColumn
            DataBinding.FieldName = 'HEPARINUYG'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 55
            Position.RowIndex = 0
          end
          object gridHastalarHEPARINTIP: TcxGridDBBandedColumn
            Caption = 'Heparin Tip'
            DataBinding.FieldName = 'HEPARINTIP'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Standart'
              'D'#252#351#252'k Molek'#252'l'
              'Di'#287'er')
            Properties.OnEditValueChanged = gridHastalarkanahPropertiesEditValueChanged
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 116
            Position.BandIndex = 1
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object gridHastalarid: TcxGridDBBandedColumn
            DataBinding.FieldName = 'id'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 56
            Position.RowIndex = 0
          end
          object gridHastalarruhsatNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ruhsatNo'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 57
            Position.RowIndex = 0
          end
          object gridHastalarmerkezAd: TcxGridDBBandedColumn
            DataBinding.FieldName = 'merkezAd'
            Visible = False
            Width = 20
            Position.BandIndex = 1
            Position.ColIndex = 58
            Position.RowIndex = 0
          end
          object gridHastalarGIRISKILO: TcxGridDBBandedColumn
            Caption = 'Giri'#351' Kilo'
            DataBinding.FieldName = 'GIRISKILO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 49
            Position.BandIndex = 1
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object gridHastalarCIKISKILO: TcxGridDBBandedColumn
            Caption = #199#305'k'#305#351' Kilo'
            DataBinding.FieldName = 'CIKISKILO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 51
            Position.BandIndex = 1
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object gridHastalarik: TcxGridDBBandedColumn
            Caption = 'Kuru Kilo'
            DataBinding.FieldName = 'ik'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 52
            Position.BandIndex = 1
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object gridHastalarHASTAADI: TcxGridDBBandedColumn
            Caption = 'Hasta Ad'#305
            DataBinding.FieldName = 'HASTAADI'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 92
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gridHastalarHASTASOYADI: TcxGridDBBandedColumn
            Caption = 'Soyad'#305
            DataBinding.FieldName = 'HASTASOYADI'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gridHastalarAday: TcxGridDBBandedColumn
            Caption = 'Transp.'
            DataBinding.FieldName = 'Aday'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 35
            Position.BandIndex = 1
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object gridHastalarDiabet: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Diabet'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object gridHastalarsirano: TcxGridDBBandedColumn
            Caption = 'Sirano'
            DataBinding.FieldName = 'uGID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 39
            Position.BandIndex = 1
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object gridHastalarColumn1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CINSIYETI'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DATALAR.ImageList1
            Properties.Items = <
              item
                ImageIndex = 40
                Value = '0'
              end
              item
                ImageIndex = 154
                Value = '1'
              end>
            Visible = False
            Options.Editing = False
            Width = 33
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object gridHastalarColumn2: TcxGridDBBandedColumn
            Caption = 'TDisID'
            DataBinding.FieldName = 'YKARTNO'
            HeaderAlignmentVert = vaCenter
            Width = 36
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gridHastalarColumn3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'foto'
            PropertiesClassName = 'TcxImageProperties'
            Properties.GraphicClassName = 'TJPEGImage'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gridHastalar
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 624
      Width = 1293
      Height = 44
      Align = alBottom
      TabOrder = 1
      object txtLog: TMemo
        Left = 1
        Top = 1
        Width = 1291
        Height = 42
        Align = alClient
        Color = 8454143
        Lines.Strings = (
          '')
        TabOrder = 0
        ExplicitHeight = 22
      end
    end
  end
  object Hastalar: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    BeforePost = HastalarBeforePost
    AfterScroll = HastalarAfterScroll
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'exec sp_IzlemList @tarih1 = '#39'20191001'#39',@tarih2 = '#39'20191030'#39',@tip' +
        ' = '#39'0'#39',@islem = '#39'1'#39',@sirketKod = '#39'000005'#39)
    Left = 448
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = Hastalar
    Left = 528
    Top = 232
  end
  object DyobKodlar: TADOTable
    Connection = DATALAR.ADOConnection2
    TableName = 'DyobKods'
    Left = 664
    Top = 232
  end
  object SaveDialog1: TSaveDialog
    Left = 712
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 576
    Top = 344
    object O1: TMenuItem
      Tag = 1
      Caption = 'Onayla'
      ImageIndex = 0
      OnClick = O1Click
    end
    object O2: TMenuItem
      Caption = 'Onay '#304'ptal'
      ImageIndex = 33
      OnClick = O1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object H2: TMenuItem
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = H2Click
    end
    object T1: TMenuItem
      Caption = 'Tahlil Sonu'#231'lar'#305
      Visible = False
      OnClick = T1Click
    end
    object K1: TMenuItem
      Caption = 'Kod'
      Visible = False
      OnClick = K1Click
    end
    object H1: TMenuItem
      Caption = 'Hasta Listesini Y'#252'kle (Tc E'#351'le'#351'tir)'
      ImageIndex = 108
      OnClick = H1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object U1: TMenuItem
      Tag = -38
      Caption = 'Uzman Muayene Formu'
      ImageIndex = 56
      OnClick = cxButtonCClick
    end
    object MuayeneTutanaklarnYazdr1: TMenuItem
      Tag = -20
      Caption = 'Muayene Tutanaklar'#305'n'#305' Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object DSVerileriniGnder1: TMenuItem
      Tag = -11
      Caption = 'TD'#304'S Verilerini G'#246'nder'
      ImageIndex = 15
      OnClick = cxButtonCClick
    end
    object DSVerileriniGncelle1: TMenuItem
      Tag = -10
      Caption = 'TD'#304'S Verilerini G'#252'ncelle'
      ImageIndex = 14
      OnClick = cxButtonCClick
    end
    object ExceleGnder1: TMenuItem
      Tag = 9997
      Caption = 'Excel'#39'e G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 200
    Top = 184
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 8454016
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
  end
  object ADO_Tetkikler: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      
        'exec sp_hastaTahlilSonuclari '#39'20160101'#39','#39'20160131'#39',@tip = '#39'0'#39' ,@' +
        'apm = '#39'0,1,2'#39',@dosyaNo = '#39'015099'#39)
    Left = 88
    Top = 200
  end
  object DataSource2: TDataSource
    DataSet = ADO_Tetkikler
    Left = 40
    Top = 216
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 72
    Top = 352
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 112
    Top = 352
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
end
