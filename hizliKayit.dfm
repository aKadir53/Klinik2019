object frmHizliKayit: TfrmHizliKayit
  Left = 303
  Top = 93
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'frmHizliKayit'
  ClientHeight = 500
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 337
    Top = 36
    Width = 575
    Height = 464
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 457
    ClientRectLeft = 3
    ClientRectRight = 568
    ClientRectTop = 3
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 36
    Align = alTop
    Color = clBackground
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object btnAra: TcxButton
      Left = 4
      Top = 2
      Width = 333
      Height = 32
      Caption = 'F5 - Bilgileri Sorgula'
      TabOrder = 0
      OnClick = btnAraClick
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 337
    Top = 36
    Align = alClient
    Caption = 'Rapor Bilgileri'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 2
    Height = 464
    Width = 575
    object cxGrid2: TcxGrid
      Left = 3
      Top = 15
      Width = 569
      Height = 439
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
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 571
      ExplicitHeight = 464
      object GridEkstre: TcxGridDBTableView
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
        DataController.DataModeController.GridMode = True
        DataController.DataModeController.SyncMode = False
        DataController.DataSource = DataSource3
        DataController.DetailKeyFieldNames = 'raporTakipNo'
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.KeyFieldNames = 'raporTakipNo'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'TAKIPTUTAR'
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
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        object GridEkstreRaporTuru: TcxGridDBColumn
          DataBinding.FieldName = 'RaporTuru'
          Width = 40
        end
        object GridEkstreRaporNo: TcxGridDBColumn
          DataBinding.FieldName = 'RaporNo'
          Width = 62
        end
        object GridEkstreRaporTarihi: TcxGridDBColumn
          DataBinding.FieldName = 'RaporTarihi'
          Width = 73
        end
        object GridEkstreVerenTesis: TcxGridDBColumn
          DataBinding.FieldName = 'VerenTesis'
          Width = 60
        end
        object GridEkstreTedaviRaporTuru: TcxGridDBColumn
          DataBinding.FieldName = 'TedaviRaporTuru'
          Width = 89
        end
        object GridEkstreraporTakipNo: TcxGridDBColumn
          DataBinding.FieldName = 'raporTakipNo'
          Width = 75
        end
        object GridEkstreseansGun: TcxGridDBColumn
          DataBinding.FieldName = 'seansGun'
          Width = 53
        end
        object GridEkstreseansSayi: TcxGridDBColumn
          DataBinding.FieldName = 'seansSayi'
          Width = 54
        end
        object GridEkstrebaslangicTarihi: TcxGridDBColumn
          DataBinding.FieldName = 'baslangicTarihi'
          Width = 77
        end
        object GridEkstrebitisTarihi: TcxGridDBColumn
          DataBinding.FieldName = 'bitisTarihi'
          Width = 68
        end
        object GridEkstreprotokolNo: TcxGridDBColumn
          DataBinding.FieldName = 'protokolNo'
          Width = 60
        end
        object GridEkstrebutKodu: TcxGridDBColumn
          DataBinding.FieldName = 'butKodu'
          Width = 63
        end
        object GridEkstretani: TcxGridDBColumn
          DataBinding.FieldName = 'tani'
          Width = 50
        end
        object GridEkstreprotokolTarihi: TcxGridDBColumn
          DataBinding.FieldName = 'protokolTarihi'
        end
        object GridEkstreaciklama: TcxGridDBColumn
          DataBinding.FieldName = 'aciklama'
          Width = 300
        end
      end
      object cxGrid2DBCardView1: TcxGridDBCardView
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.GridMode = True
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.KeyFieldNames = 'raporTakipNo'
        DataController.MasterKeyFieldNames = 'raporTakipNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CardIndent = 7
        object cxGrid2DBCardView1RecId1: TcxGridDBCardViewRow
          DataBinding.FieldName = 'RecId'
          Visible = False
          Position.BeginsLayer = True
        end
        object cxGrid2DBCardView1drTescil1: TcxGridDBCardViewRow
          DataBinding.FieldName = 'drTescil'
          Position.BeginsLayer = True
        end
        object cxGrid2DBCardView1drAdi1: TcxGridDBCardViewRow
          DataBinding.FieldName = 'drAdi'
          Position.BeginsLayer = True
        end
        object cxGrid2DBCardView1drSoyadi1: TcxGridDBCardViewRow
          DataBinding.FieldName = 'drSoyadi'
          Position.BeginsLayer = True
        end
        object cxGrid2DBCardView1brans1: TcxGridDBCardViewRow
          DataBinding.FieldName = 'brans'
          Position.BeginsLayer = True
        end
        object cxGrid2DBCardView1tip1: TcxGridDBCardViewRow
          DataBinding.FieldName = 'tip'
          Position.BeginsLayer = True
        end
        object cxGrid2DBCardView1raporTakipNo: TcxGridDBCardViewRow
          DataBinding.FieldName = 'raporTakipNo'
          Position.BeginsLayer = True
        end
      end
      object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.GridMode = True
        DataController.DataSource = DataSource2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Doktorlar'
          end>
        object cxGrid2DBBandedTableView1drtescil: TcxGridDBBandedColumn
          DataBinding.FieldName = 'drtescil'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1dradi: TcxGridDBBandedColumn
          DataBinding.FieldName = 'dradi'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1drSoyadi: TcxGridDBBandedColumn
          DataBinding.FieldName = 'drSoyadi'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1drbrans: TcxGridDBBandedColumn
          DataBinding.FieldName = 'drbrans'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1tip: TcxGridDBBandedColumn
          DataBinding.FieldName = 'tip'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid2DBBandedTableView1raporTakipNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'raporTakipNo'
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Hastalar'
        GridView = GridEkstre
        Options.DetailFrameColor = clHighlight
        object cxGrid2Level2: TcxGridLevel
          GridView = cxGrid2DBBandedTableView1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 337
    Height = 464
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 3
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Sorgula Bilgileri'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 133
      Width = 335
      object cxLabel1: TcxLabel
        Left = 9
        Top = 38
        AutoSize = False
        Caption = 'T.C Kimlik No'
        ParentColor = False
        Style.Color = clSilver
        Style.LookAndFeel.NativeStyle = True
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Height = 17
        Width = 110
      end
      object txtTcKimlikNoAra: TcxTextEdit
        Left = 120
        Top = 34
        Style.BorderStyle = ebsUltraFlat
        Style.TransparentBorder = True
        TabOrder = 1
        Width = 121
      end
      object txtTakipTarihi: TcxDateEdit
        Left = 120
        Top = 56
        TabOrder = 2
        Width = 121
      end
      object cxLabel2: TcxLabel
        Left = 9
        Top = 61
        AutoSize = False
        Caption = 'Takip Tarihi'
        ParentColor = False
        Style.Color = clSilver
        Style.TextStyle = [fsBold]
        Height = 17
        Width = 110
      end
      object cxLabel3: TcxLabel
        Left = 330
        Top = 14
        AutoSize = False
        Caption = 'Provizyon Turu'
        ParentColor = False
        Style.Color = clSilver
        Style.TextStyle = []
        Visible = False
        Height = 17
        Width = 91
      end
      object txtProvizyonTuru: TcxComboBox
        Left = 376
        Top = 9
        Properties.Items.Strings = (
          ''
          'N - Normal'
          'I - '#304#351' kazas'#305
          'A - Acil'
          'T - Trafik kazas'#305
          'V - Adli Vaka'
          'M - Meslek hastal'#305#287#305)
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 5
        Text = 'N - Normal'
        Visible = False
        Width = 121
      end
      object txtTakipTuru: TcxComboBox
        Left = 381
        Top = 32
        Properties.Items.Strings = (
          ''
          'N - Normal'
          'E - E'#351'lik Eden Hastal'#305'k'
          'U - Uzayan Yat'#305#351
          'K - Komplikasyon'
          'T - Tan'#305' Ama'#231'l'#305' G'#252'n'#252' Birlik'
          'Y - Yo'#287'un Bak'#305'm'
          'P - Hizmetin '#304'ptal veya Yar'#305'm Kalmas'#305)
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 6
        Text = 'N - Normal'
        Visible = False
        Width = 116
      end
      object cxLabel4: TcxLabel
        Left = 246
        Top = 39
        AutoSize = False
        Caption = #304'lk Takip'
        ParentColor = False
        ParentFont = False
        Style.Color = clSilver
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'mcskin'
        Style.TextColor = clBlack
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'mcskin'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'mcskin'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'mcskin'
        Properties.Alignment.Horz = taCenter
        Height = 17
        Width = 84
        AnchorX = 288
      end
      object cxLabel5: TcxLabel
        Left = 265
        Top = 59
        AutoSize = False
        Caption = 'Tedavi Tipi'
        ParentColor = False
        Style.Color = clSilver
        Style.TextStyle = []
        Visible = False
        Height = 17
        Width = 110
      end
      object txtTedaviTipi: TcxComboBox
        Left = 376
        Top = 54
        Properties.Items.Strings = (
          ''
          '0 - Normal Sorgu'
          '1 - Diyaliz'
          '2 - Fizik Tedavi ve Rehabilitasyon'
          '4 - Kemik '#304'li'#287'i'
          '5 - K'#246'k H'#252'cre Nakli'
          '6 - Ekstarakorporeal fotoferez tedavisi'
          '7 - Hiperbar'#305'k oksijen tedavisi'
          '8 - ESWL'
          '9 - A'#287#305'z Protez tedavisi'
          '10 - Ketem'
          '11 - T'#252'p Bebek1')
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 9
        Text = '1 - Diyaliz'
        Visible = False
        Width = 121
      end
      object txtBranslar: TcxDBLookupComboBox
        Left = 376
        Top = 122
        DataBinding.DataField = 'servis'
        DataBinding.DataSource = DataSource1
        Properties.DropDownSizeable = True
        Properties.GridMode = True
        Properties.KeyFieldNames = 'SLX'
        Properties.ListColumns = <
          item
            Caption = 'Brans'
            FieldName = 'Kodu'
          end
          item
            Caption = 'Brans Ad'#305
            FieldName = 'BransAdi'
          end
          item
            Caption = 'S.Kod'
            FieldName = 'SLX'
          end>
        Properties.OnChange = txtBranslarPropertiesChange
        Style.Color = 8421631
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 10
        Visible = False
        OnClick = txtBranslarClick
        Width = 121
      end
      object cxLabel8: TcxLabel
        Left = 220
        Top = 124
        AutoSize = False
        Caption = 'Servis'
        ParentColor = False
        Style.Color = clSilver
        Style.TextStyle = []
        Visible = False
        Height = 17
        Width = 110
      end
      object cxLabel9: TcxLabel
        Left = 266
        Top = 147
        AutoSize = False
        Caption = 'Doktor'
        ParentColor = False
        Style.Color = clSilver
        Style.TextStyle = []
        Visible = False
        Height = 17
        Width = 110
      end
      object txtdoktorlar: TcxDBLookupComboBox
        Left = 376
        Top = 143
        DataBinding.DataField = 'doktor'
        DataBinding.DataSource = DataSource1
        Properties.DropDownListStyle = lsEditList
        Properties.DropDownSizeable = True
        Properties.GridMode = True
        Properties.KeyFieldNames = 'Kod'
        Properties.ListColumns = <
          item
            Caption = 'Kod'
            FieldName = 'Kod'
          end
          item
            Caption = 'Doktor'
            FieldName = 'DoktorAdi'
          end>
        Style.Color = 8421631
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 13
        Visible = False
        Width = 121
      end
      object RbTc: TRadioButton
        Left = 120
        Top = 15
        Width = 81
        Height = 17
        Caption = 'TC Kimlik'
        Checked = True
        TabOrder = 14
        TabStop = True
        OnClick = RbTcClick
      end
      object RbRt: TRadioButton
        Left = 207
        Top = 15
        Width = 90
        Height = 17
        Caption = 'Rapor Takip'
        TabOrder = 15
        OnClick = RbRtClick
      end
      object txtilkTakip: TcxTextEdit
        Left = 246
        Top = 56
        Hint = #304'lk Takip'
        ParentShowHint = False
        ShowHint = True
        Style.BorderStyle = ebsUltraFlat
        Style.TransparentBorder = True
        TabOrder = 16
        Width = 84
      end
      object cxLabel14: TcxLabel
        Left = 8
        Top = 83
        AutoSize = False
        Caption = 'Telefon'
        ParentColor = False
        Style.Color = clSilver
        Style.LookAndFeel.NativeStyle = True
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Height = 17
        Width = 110
      end
      object txtAdres: TcxTextEdit
        Left = 120
        Top = 101
        Style.BorderStyle = ebsUltraFlat
        Style.TransparentBorder = True
        TabOrder = 18
        Width = 210
      end
      object cxLabel15: TcxLabel
        Left = 9
        Top = 105
        AutoSize = False
        Caption = 'Adres'
        ParentColor = False
        Style.Color = clSilver
        Style.LookAndFeel.NativeStyle = True
        Style.TextStyle = [fsBold]
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Height = 17
        Width = 110
      end
      object txtTel: TcxMaskEdit
        Left = 120
        Top = 79
        Properties.EditMask = '!\(999\)000-00-00;1;_'
        Properties.MaxLength = 0
        Properties.OnValidate = MaskEditPropertiesValidate
        TabOrder = 20
        Text = '(   )   -  -  '
        Width = 121
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 134
      Align = alClient
      Caption = 'Sorgulama Sonu'#231'lar'#305
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 329
      Width = 335
      object cxPageControl2: TcxPageControl
        Left = 3
        Top = 15
        Width = 329
        Height = 304
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet1
        ClientRectBottom = 297
        ClientRectLeft = 3
        ClientRectRight = 322
        ClientRectTop = 26
        object cxTabSheet1: TcxTabSheet
          Caption = 'Sonu'#231
          ImageIndex = 0
          object txtCinsiyet: TRadioGroup
            Left = 120
            Top = 167
            Width = 196
            Height = 36
            Hint = 'Cinsiyet'
            Caption = 'Cinsiyeti'
            Color = clBtnFace
            Columns = 2
            Items.Strings = (
              '&Bay'
              'Bayan')
            ParentColor = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object btnKabul: TsBitBtn
            Left = 1
            Top = 207
            Width = 156
            Height = 37
            Hint = 'Vazge'#231
            Caption = 'F4 - Hastay'#305' Kabul Et'
            Enabled = False
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NumGlyphs = 2
            ParentFont = False
            Spacing = 15
            TabOrder = 1
            OnClick = btnKabulClick
            SkinData.SkinSection = 'BUTTON'
            ImageIndex = 132
            Images = DATALAR.global_img_list4
          end
          object btnVazgec: TsBitBtn
            Left = 160
            Top = 207
            Width = 156
            Height = 37
            Hint = 'Vazge'#231
            Caption = #304'ptal Et'
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            NumGlyphs = 2
            ParentFont = False
            Spacing = 20
            TabOrder = 2
            OnClick = btnVazgecClick
            SkinData.SkinSection = 'BUTTON'
            ImageIndex = 131
            Images = DATALAR.global_img_list4
          end
          object cxLabel12: TcxLabel
            Left = 9
            Top = 101
            AutoSize = False
            Caption = 'Dogum Tarihi'
            ParentColor = False
            Style.Color = clSilver
            Style.LookAndFeel.NativeStyle = True
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Height = 17
            Width = 110
          end
          object cxLabel11: TcxLabel
            Left = 9
            Top = 78
            AutoSize = False
            Caption = 'Hasta Soyad'#305
            ParentColor = False
            Style.Color = clSilver
            Style.LookAndFeel.NativeStyle = True
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Height = 17
            Width = 110
          end
          object txtHastaSoyadi: TcxTextEdit
            Left = 120
            Top = 73
            Properties.ReadOnly = True
            Style.BorderStyle = ebsUltraFlat
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = True
            TabOrder = 5
            Width = 196
          end
          object txtHastaAdi: TcxTextEdit
            Left = 120
            Top = 51
            Properties.ReadOnly = True
            Style.BorderStyle = ebsUltraFlat
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = True
            TabOrder = 6
            Width = 196
          end
          object TcxLabel
            Left = 9
            Top = 56
            AutoSize = False
            Caption = 'Hasta Ad'#305
            ParentColor = False
            Style.Color = clSilver
            Style.LookAndFeel.NativeStyle = True
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Height = 17
            Width = 110
          end
          object cxLabel10: TcxLabel
            Left = 9
            Top = 9
            AutoSize = False
            Caption = 'Takip - Ba'#351'vuruNo'
            ParentColor = False
            Style.Color = clSilver
            Style.LookAndFeel.NativeStyle = True
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Height = 17
            Width = 110
          end
          object txtTakipNo: TcxTextEdit
            Left = 120
            Top = 4
            Properties.ReadOnly = False
            Style.BorderStyle = ebsUltraFlat
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = True
            TabOrder = 9
            Width = 102
          end
          object txtBasvuruNo: TcxTextEdit
            Left = 223
            Top = 4
            Properties.ReadOnly = False
            Style.BorderStyle = ebsUltraFlat
            Style.TextStyle = [fsBold]
            Style.TransparentBorder = True
            TabOrder = 10
            Width = 93
          end
          object cxLabel7: TcxLabel
            Left = 9
            Top = 147
            AutoSize = False
            Caption = 'Devredilen Kurum'
            ParentColor = False
            Style.Color = clSilver
            Style.TextStyle = []
            Height = 17
            Width = 110
          end
          object cxLabel6: TcxLabel
            Left = 9
            Top = 124
            AutoSize = False
            Caption = 'Sigortal'#305' Durumu'
            ParentColor = False
            Style.Color = clSilver
            Style.TextStyle = []
            Height = 17
            Width = 110
          end
          object txtTcKimlikNo: TcxTextEdit
            Left = 120
            Top = 27
            Properties.ReadOnly = True
            Style.BorderStyle = ebsUltraFlat
            Style.TransparentBorder = True
            TabOrder = 13
            Width = 196
          end
          object cxLabel13: TcxLabel
            Left = 9
            Top = 31
            AutoSize = False
            Caption = 'T.C Kimlik No'
            ParentColor = False
            Style.Color = clSilver
            Style.LookAndFeel.NativeStyle = True
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Height = 17
            Width = 110
          end
          object txtSigortaliTuru: TcxImageComboKadir
            Left = 120
            Top = 120
            Properties.ClearKey = 46
            Properties.Items = <>
            Properties.ReadOnly = True
            TabOrder = 15
            TableName = 'Medula_SigortaliTurleri'
            Conn = DATALAR.ADOConnection2
            ValueField = 'Kod'
            DisplayField = 'tanimi'
            BosOlamaz = False
            FilterSet = fsSigortaliTur
            Width = 196
          end
          object txtdogumTarihi: TcxDateEditKadir
            Left = 120
            Top = 97
            Properties.ReadOnly = True
            TabOrder = 16
            BosOlamaz = False
            ValueTip = tvString
            Width = 196
          end
          object txtDevredilenKurum: TcxImageComboKadir
            Left = 120
            Top = 143
            Properties.ClearKey = 46
            Properties.Items = <>
            Properties.ReadOnly = True
            TabOrder = 17
            TableName = 'Medula_DevredilenKurumlar'
            Conn = DATALAR.ADOConnection2
            ValueField = 'Kod'
            DisplayField = 'tanimi'
            BosOlamaz = False
            FilterSet = fsDevKurum
            Width = 196
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Log'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object txtHata: TcxMemo
            Left = 0
            Top = 0
            Align = alClient
            Lines.Strings = (
              '')
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'mcskin'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'mcskin'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'mcskin'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'mcskin'
            TabOrder = 0
            Height = 271
            Width = 319
          end
        end
      end
    end
  end
  object TakipData: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 432
    Top = 262
    object TakipDataTcKimlikNo: TStringField
      FieldName = 'TcKimlikNo'
    end
    object TakipDataTakipTarihi: TStringField
      FieldName = 'TakipTarihi'
    end
    object TakipDataPTuru: TStringField
      FieldName = 'PTuru'
      Size = 1
    end
    object TakipDatatturu: TStringField
      FieldName = 'tturu'
      Size = 1
    end
    object TakipDatatedevitipi: TStringField
      FieldName = 'tedevitipi'
      Size = 1
    end
    object TakipDatadurum: TStringField
      FieldName = 'durum'
      Size = 1
    end
    object TakipDatakurum: TStringField
      FieldName = 'kurum'
      Size = 2
    end
    object TakipDataservis: TStringField
      FieldName = 'servis'
      Size = 4
    end
    object TakipDatadoktor: TStringField
      FieldName = 'doktor'
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = TakipData
    Left = 464
    Top = 150
  end
  object memDataRaporlar: TdxMemData
    Active = True
    Indexes = <
      item
        FieldName = 'raporTakipNo'
        SortOptions = []
      end>
    SortOptions = []
    Left = 532
    Top = 135
    object memDataRaporlarRaporTuru: TStringField
      DisplayWidth = 13
      FieldName = 'RaporTuru'
      Size = 2
    end
    object memDataRaporlarRaporNo: TStringField
      DisplayWidth = 20
      FieldName = 'RaporNo'
    end
    object memDataRaporlarRaporTarihi: TStringField
      DisplayWidth = 20
      FieldName = 'RaporTarihi'
    end
    object memDataRaporlarVerenTesis: TStringField
      DisplayWidth = 20
      FieldName = 'VerenTesis'
    end
    object memDataRaporlarTedaviRaporTuru: TStringField
      DisplayWidth = 10
      FieldName = 'TedaviRaporTuru'
      Size = 2
    end
    object memDataRaporlarraporTakipNo: TStringField
      FieldName = 'raporTakipNo'
    end
    object memDataRaporlarseansGun: TIntegerField
      FieldName = 'seansGun'
    end
    object memDataRaporlarseansSayi: TIntegerField
      FieldName = 'seansSayi'
    end
    object memDataRaporlarbaslangicTarihi: TDateTimeField
      FieldName = 'baslangicTarihi'
    end
    object memDataRaporlarbitisTarihi: TDateField
      FieldName = 'bitisTarihi'
    end
    object memDataRaporlarprotokolNo: TStringField
      FieldName = 'protokolNo'
    end
    object memDataRaporlarbutKodu: TStringField
      FieldName = 'butKodu'
    end
    object memDataRaporlartani: TStringField
      FieldName = 'tani'
    end
    object memDataRaporlarprotokolTarihi: TDateField
      FieldName = 'protokolTarihi'
    end
    object memDataRaporlaraciklama: TStringField
      FieldName = 'aciklama'
      Size = 1000
    end
  end
  object DataSource3: TDataSource
    DataSet = memDataRaporlar
    Left = 476
    Top = 263
  end
  object MemTable_Doktorlar: TSQLMemTable
    CurrentVersion = '13.00 '
    StoreDefs = True
    DatabaseName = 'MEMORY'
    ReadOnly = False
    AfterScroll = MemTable_DoktorlarAfterScroll
    CaseInsensitive = False
    IndexDefs = <
      item
        Name = 'MemTable_DoktorlarIndex2'
        Fields = 'raporTakipNo'
      end>
    IndexName = 'MemTable_DoktorlarIndex2'
    FieldDefs = <
      item
        Name = 'drtescil'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dradi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'drSoyadi'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'drbrans'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'raporTakipNo'
        DataType = ftString
        Size = 20
      end>
    TableName = 'Table668953727_4652'
    Exclusive = False
    MasterFields = 'raporTakipNo'
    MasterSource = DataSource3
    MemoryTableAllocBy = 1000
    Left = 728
    Top = 144
    object MemTable_Doktorlardrtescil: TStringField
      FieldName = 'drtescil'
    end
    object MemTable_Doktorlardradi: TStringField
      FieldName = 'dradi'
    end
    object MemTable_DoktorlardrSoyadi: TStringField
      FieldName = 'drSoyadi'
    end
    object MemTable_Doktorlardrbrans: TStringField
      FieldName = 'drbrans'
      Size = 4
    end
    object MemTable_DoktorlarraporTakipNo: TStringField
      FieldName = 'raporTakipNo'
    end
  end
  object DataSource2: TDataSource
    DataSet = MemTable_Doktorlar
    Left = 780
    Top = 183
  end
end
