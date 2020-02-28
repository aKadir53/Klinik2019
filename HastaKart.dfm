object frmHastaKart: TfrmHastaKart
  Tag = 90
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frmHastaKart'
  ClientHeight = 614
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter_Muayene: TSplitter
    Left = 0
    Top = 411
    Width = 806
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = 8
    ExplicitTop = 435
  end
  object CINSIYETI: TcxImageComboKadir
    Left = 144
    Top = 8
    Properties.ClearKey = 46
    Properties.Items = <
      item
        Description = 'Bay'
        Value = '0'
      end
      item
        Description = 'Bayan'
        Value = '1'
      end>
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 0
    BosOlamaz = False
    ItemList = '0;Bay,1;Bayan'
    FilterSet = fsCinsiyet
    Width = 121
  end
  object MEDENI: TcxImageComboKadir
    Left = 144
    Top = 35
    Properties.ClearKey = 46
    Properties.Items = <
      item
        Description = 'Evli'
        Value = '0'
      end
      item
        Description = 'Bekar'
        Value = '1'
      end
      item
        Description = 'Bo'#351'anm'#305#351
        Value = '2'
      end
      item
        Description = 'Dul'
        Value = '3'
      end>
    TabOrder = 1
    BosOlamaz = False
    ItemList = '0;Evli,1;Bekar,2;Bo'#351'anm'#305#351',3;Dul'
    FilterSet = fsMedeniHal
    Width = 121
  end
  object DURUM: TcxImageComboKadir
    Left = 296
    Top = 8
    Properties.ClearKey = 46
    Properties.Items = <
      item
        Description = #199'al'#305#351'an'
        Value = '1'
      end
      item
        Description = 'Emekli'
        Value = '2'
      end
      item
        Description = 'SSK Kurum Personeli'
        Value = '3'
      end
      item
        Description = 'Di'#287'er'
        Value = '4'
      end>
    TabOrder = 2
    Visible = False
    TableName = 'Medula_SigortaliTurleri'
    ValueField = 'Kod'
    DisplayField = 'Tanimi'
    BosOlamaz = False
    ItemList = '1;'#199'al'#305#351'an,2;Emekli,3;SSK Kurum Personeli,4;Di'#287'er'
    FilterSet = fsSgkDurumTip
    Width = 121
  end
  object VatandasTip: TcxImageComboKadir
    Left = 296
    Top = 53
    Properties.ClearKey = 46
    Properties.Items = <
      item
        Description = 'Vatanda'#351
        Value = '0'
      end
      item
        Description = 'Yeni Do'#287'an'
        Value = '1'
      end
      item
        Description = 'S'#305#287#305'nmac'#305
        Value = '2'
      end
      item
        Description = 'Yabanc'#305
        Value = '4'
      end
      item
        Description = 'Kimliksiz'
        Value = '6'
      end>
    TabOrder = 3
    BosOlamaz = False
    ItemList = '0;Vatanda'#351',1;Yeni Do'#287'an,2;S'#305#287#305'nmac'#305',4;Yabanc'#305',6;Kimliksiz'
    FilterSet = fsNone
    Width = 121
  end
  object seansGunleri: TcxCheckGroup
    Left = 440
    Top = 8
    Alignment = alCenterCenter
    EditValue = '0110000'
    Properties.Columns = 3
    Properties.EditValueFormat = cvfStatesString
    Properties.Items = <
      item
        Caption = 'Pazar'
      end
      item
        Caption = 'Pazartesi'
      end
      item
        Caption = 'Sal'#305
      end
      item
        Caption = #199'ar'#351'amba'
      end
      item
        Caption = 'Per'#351'embe'
      end
      item
        Caption = 'Cuma'
      end
      item
        Caption = 'Cumartesi'
      end>
    Properties.OnEditValueChanged = seansGunleriPropertiesEditValueChanged
    TabOrder = 4
    Visible = False
    Height = 64
    Width = 121
  end
  object DOGUMTARIHI: TcxDateEditKadir
    Left = 144
    Top = 80
    Properties.OnValidate = DOGUMTARIHIPropertiesValidate
    TabOrder = 5
    BosOlamaz = True
    ValueTip = tvString
    Width = 121
  end
  object cxFotoPanel: TcxGroupBox
    Left = 624
    Top = 8
    Caption = 'Foto'
    TabOrder = 6
    Height = 210
    Width = 130
    object Foto: TcxImage
      Tag = -1
      Left = 3
      Top = 15
      Align = alClient
      Properties.GraphicClassName = 'TJPEGImage'
      Properties.PopupMenuLayout.MenuItems = []
      Properties.Stretch = True
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 126
      ExplicitHeight = 180
      Height = 155
      Width = 124
    end
    object Panel1: TPanel
      Left = 3
      Top = 170
      Width = 124
      Height = 30
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 178
      ExplicitWidth = 126
      object cxFotoEkleButton: TcxButton
        Tag = -50
        Left = 1
        Top = 1
        Width = 60
        Height = 28
        Hint = 'Ekle'
        Align = alLeft
        Caption = 'Ekle'
        TabOrder = 0
        OnClick = cxButtonCClick
      end
      object cxFotoSilButton: TcxButton
        Tag = -50
        Left = 61
        Top = 1
        Width = 62
        Height = 28
        Hint = 'Sil'
        Align = alClient
        Caption = 'Sil'
        TabOrder = 1
        OnClick = cxButtonCClick
        ExplicitWidth = 64
      end
    end
  end
  object dosyaNo: TcxButtonEditKadir
    Tag = 1
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
    TabOrder = 7
    OnKeyDown = cxTextEditBKeyDown
    indexField = False
    ListeAcTus = 0
    Width = 121
  end
  object KANGRUBU: TcxImageComboBox
    Left = 296
    Top = 80
    Properties.ImmediateDropDownWhenActivated = True
    Properties.Items = <
      item
        Description = 'A RH (+)'
        ImageIndex = 0
        Value = '0'
      end
      item
        Description = 'A RH (-)'
        Value = '1'
      end
      item
        Description = 'AB RH (+)'
        Value = '2'
      end
      item
        Description = 'AB RH (-)'
        Value = '3'
      end
      item
        Description = 'B RH (+)'
        Value = '4'
      end
      item
        Description = 'B RH (-)'
        Value = '5'
      end
      item
        Description = '0 RH (+)'
        Value = '6'
      end
      item
        Description = '0 RH (-)'
        Value = '7'
      end
      item
        Description = 'Bilinmiyor'
        Value = '8'
      end>
    TabOrder = 8
    Width = 121
  end
  object txtSeansSikayet: TcxCheckGroup
    Left = 8
    Top = 331
    Alignment = alCenterCenter
    EditValue = ';1,2'
    Properties.Columns = 3
    Properties.ItemAlignment = taRightJustify
    Properties.Items = <
      item
        Caption = 'Alkol'
      end
      item
        Caption = 'Sigara'
      end
      item
        Caption = 'Hipertansiyon'
      end
      item
        Caption = 'Kalp Hastal'#305#287#305
      end
      item
        Caption = 'Romatizma'
      end
      item
        Caption = 'Diabet(IDDM)'
      end
      item
        Caption = 'Di'#287'er'
      end
      item
        Caption = 'Diabet(NIDDM)'
      end
      item
        Caption = 'KOAH'
      end>
    Properties.OnEditValueChanged = seansGunleriPropertiesEditValueChanged
    TabOrder = 9
    Height = 64
    Width = 774
  end
  object MESLEK: TcxButtonEditKadir
    Left = 480
    Top = 157
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEditPropertiesButtonClick
    TabOrder = 10
    ListeAc = Meslekler
    indexField = False
    ListeAcTus = 0
    Width = 121
  end
  object cxpnlHastaGelisler: TcxGroupBox
    Left = 0
    Top = 414
    Align = alBottom
    Caption = 'Geli'#351'ler'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 11
    Height = 200
    Width = 806
    object cxGridGelis: TcxGridKadir
      Left = 3
      Top = 15
      Width = 800
      Height = 175
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExceleGonder = False
      PopupForm = False
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 802
      ExplicitHeight = 200
      object GridGelisler: TcxGridDBBandedTableView
        PopupMenu = PopupMenu1
        OnDblClick = GridGelislerDblClick
        OnFocusedRecordChanged = GridGelislerFocusedRecordChanged
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'SGK Ba'#351'vuru Bilgileri'
            FixedKind = fkLeft
            Styles.Content = cxStyle1
            Styles.Header = cxStyle1
            Width = 309
          end
          item
            Caption = 'Ba'#351'vuru Detay Bilgileri'
            Styles.Header = cxStyle2
          end>
        object GridGelislerTakpNo: TcxGridDBBandedColumn
          Caption = 'Takip No'
          DataBinding.FieldName = 'TakipNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 64
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object GridGelislerBasvuruNo: TcxGridDBBandedColumn
          Caption = 'Ba'#351'vuru No'
          DataBinding.FieldName = 'BasvuruNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object GridGelislerdosyaNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'dosyaNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Visible = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object GridGelislergelisNo: TcxGridDBBandedColumn
          Caption = 'Geli'#351
          DataBinding.FieldName = 'gelisNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 38
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object GridGelislerBHDAT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tarih'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object GridGelislerdoktor: TcxGridDBBandedColumn
          Caption = 'Doktor'
          DataBinding.FieldName = 'doktor'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.Items = <>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Content = AnaForm.cxStyle1
          Width = 107
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object GridGelislerSERVIS: TcxGridDBBandedColumn
          Caption = 'Servis'
          DataBinding.FieldName = 'SERVIS'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.Items = <>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Content = AnaForm.cxStyle1
          Width = 153
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object GridGelislerTEDAVITURU: TcxGridDBBandedColumn
          Caption = 'Tedavi'
          DataBinding.FieldName = 'TEDAVITURU'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Content = AnaForm.cxStyle1
          Width = 39
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object GridGelislerKullanici: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Kullanici'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 58
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object GridGelislerilkTakipNo: TcxGridDBBandedColumn
          Caption = #304'lk Takip No'
          DataBinding.FieldName = 'ilkTakipNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 67
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object GridGelislerSIRANO: TcxGridDBBandedColumn
          Caption = 'SiraNo'
          DataBinding.FieldName = 'SIRANO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object GridGelisleryupass: TcxGridDBBandedColumn
          Caption = 'Yupass'
          DataBinding.FieldName = 'yupass'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object GridGelisleryardimHakki: TcxGridDBBandedColumn
          DataBinding.FieldName = 'yardimHakki'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object GridGelislerSYSTakipNo: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SYSTakipNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGridGelisLevel1: TcxGridLevel
        GridView = GridGelisler
      end
    end
  end
  object txtBobrekHastaligi: TcxButtonEdit
    Tag = 101
    Left = 17
    Top = 269
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.ReadOnly = True
    Properties.OnButtonClick = txtBobrekHastaligiPropertiesButtonClick
    TabOrder = 12
    Width = 177
  end
  object hastaTip: TcxImageComboBox
    Left = 17
    Top = 224
    Properties.Items = <
      item
        Description = 'Kronik'
        ImageIndex = 0
        Value = '0'
      end
      item
        Description = 'Akut'
        Value = '1'
      end>
    TabOrder = 13
    Width = 121
  end
  object txtBransKodu: TcxImageComboKadir
    Tag = -100
    Left = 17
    Top = 173
    EditValue = 'N'
    Properties.ClearKey = 46
    Properties.Items = <>
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 14
    Visible = False
    TableName = 'Medula_BransKodlari'
    Conn = DATALAR.ADOConnection2
    ValueField = 'Kod'
    DisplayField = 'Tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object txtDoktor: TcxImageComboKadir
    Tag = -100
    Left = 17
    Top = 197
    EditValue = 'N'
    Properties.ClearKey = 46
    Properties.Items = <>
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 15
    Visible = False
    TableName = 'DoktorlarT'
    Conn = DATALAR.ADOConnection2
    ValueField = 'Kod'
    DisplayField = 'Tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object txtAktifPasifSebeb: TcxImageComboKadir
    Left = 625
    Top = 242
    Properties.ClearKey = 46
    Properties.Items = <>
    TabOrder = 16
    TableName = 'Diyaliz_AktifPasif_Sebeb'
    Conn = DATALAR.ADOConnection2
    ValueField = 'kod'
    DisplayField = 'tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 161
  end
  object txtOlumNeden: TcxImageComboKadir
    Left = 625
    Top = 269
    Properties.ClearKey = 46
    Properties.Items = <>
    TabOrder = 17
    TableName = 'Diyaliz_Olum_Nedenleri'
    Conn = DATALAR.ADOConnection2
    ValueField = 'kod'
    DisplayField = 'tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 161
  end
  object txtAktif: TcxImageComboKadir
    Left = 624
    Top = 296
    Properties.ClearKey = 46
    Properties.Items = <
      item
        Description = 'Pasif'
        Value = '0'
      end
      item
        Description = 'Aktif'
        Value = '1'
      end
      item
        Description = 'Misafir'
        Value = '2'
      end>
    TabOrder = 18
    BosOlamaz = False
    ItemList = '0;Pasif,1;Aktif,2;Misafir'
    FilterSet = fsNone
    Width = 121
  end
  object Tip: TcxImageComboBox
    Left = 17
    Top = 304
    Properties.Items = <
      item
        Description = 'Hemodiyaliz'
        ImageIndex = 0
        Value = 'H'
      end
      item
        Description = 'Periton'
        Value = 'P'
      end>
    TabOrder = 19
    Width = 121
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 224
    Top = 112
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 8404992
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
  end
  object ListeAc3: TListeAc
    ListeBaslik = 'Primer Tanilar (Hastal'#305'klar)'
    TColcount = 3
    TColsW = '40,300,300'
    Table = 'PrimerTanilar'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'kod'
      'tani'
      'aciklama')
    KolonBasliklari.Strings = (
      'Tan'#305' Kod'
      'Tani Tan'#305'm'#305
      'Aciklama Bilgisi')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SiralamaKolonu = 'tani'
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 384
    Top = 117
  end
  object PopupMenu2: TPopupMenu
    Left = 400
    Top = 272
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 4194432
    end
  end
  object Meslekler: TListeAc
    TColcount = 2
    TColsW = '80,250'
    Table = 'MeslekKodlari'
    Conn = DATALAR.ADOConnection2
    Filtercol = 1
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'kod'
      'tanimi')
    KolonBasliklari.Strings = (
      'Meslek Kodu'
      'Meslek Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SiralamaKolonu = 'tanimi'
    SkinName = 'lilian'
    Grup = False
    GrupCol = 0
    Left = 448
    Top = 120
  end
  object ActionList1: TActionList
    Images = DATALAR.imag24png
    Left = 328
    Top = 256
    object PersonelKaydet: TAction
      Caption = 'Kaydet'
      ImageIndex = 83
      ShortCut = 16459
      OnExecute = cxKaydetClick
    end
    object YeniMuayene: TAction
      Caption = 'Yeni Geli'#351
      ImageIndex = 48
      ShortCut = 16461
      OnExecute = cxButtonCClick
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 456
    Top = 272
    object Kapat1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      Visible = False
      OnClick = cxKaydetClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object T4: TMenuItem
      Tag = -100
      Caption = 'Hasta Tan'#305'm Kart'#305' Yazd'#305'r'
      ImageIndex = 6
      OnClick = cxButtonCClick
    end
    object D1: TMenuItem
      Tag = -101
      Caption = 'D'#305#351'ardan Gelen Belge'
      ImageIndex = 9
      OnClick = cxButtonCClick
    end
    object SmsGnder1: TMenuItem
      Tag = -28
      Caption = 'Sms G'#246'nder'
      ImageIndex = 94
      OnClick = cxButtonCClick
    end
    object K1: TMenuItem
      Tag = 200
      Caption = 'Konsultasyon Bilgileri'
      ImageIndex = 93
      OnClick = cxButtonCClick
    end
    object AKart1: TMenuItem
      Tag = -25
      Caption = 'A'#351#305' Kart'#305
      ImageIndex = 60
      OnClick = cxButtonCClick
    end
    object T2: TMenuItem
      Tag = -35
      Caption = 'Tan'#305' Kart'#305
      ImageIndex = 74
      OnClick = cxButtonCClick
    end
    object YatBilgileri1: TMenuItem
      Tag = -26
      Caption = 'Yat'#305#351' Bilgileri'
      ImageIndex = 66
    end
    object Epikriz1: TMenuItem
      Tag = -26
      Caption = 'Epikriz'
      ImageIndex = 90
      OnClick = cxButtonCClick
    end
    object R1: TMenuItem
      Tag = 130
      Caption = 'Re'#231'ete'
      ImageIndex = 97
      OnClick = cxButtonCClick
    end
    object N3: TMenuItem
      Tag = 140
      Caption = #304'la'#231' Tedavi'
      ImageIndex = 63
      OnClick = cxButtonCClick
    end
    object HastaRaporlar1: TMenuItem
      Tag = -29
      Caption = 'Hasta Raporlar'#305
      ImageIndex = 98
      OnClick = cxButtonCClick
    end
    object H1: TMenuItem
      Tag = -37
      Caption = 'Hasta Y'#305'll'#305'k Tekik Cetveli'
      ImageIndex = 45
      OnClick = cxButtonCClick
    end
    object U1: TMenuItem
      Tag = -38
      Caption = 'Uzman Muayene'
      ImageIndex = 56
      OnClick = cxButtonCClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SeansKart1: TMenuItem
      Tag = -6
      Caption = 'Seans Kart'#305
      ImageIndex = 80
      OnClick = cxButtonCClick
    end
    object T1: TMenuItem
      Tag = -32
      Caption = 'Tetkik Tedavi Kart'#305
      ImageIndex = 47
      OnClick = cxButtonCClick
    end
    object T3: TMenuItem
      Tag = -36
      Caption = 'Diyaliz '#304'zlem'
      ImageIndex = 67
      OnClick = cxButtonCClick
    end
    object MenucxKaydet: TMenuItem
      Caption = 'Kaydet'
      ImageIndex = 29
      OnClick = cxKaydetClick
    end
    object lemler1: TMenuItem
      Tag = -20
      Caption = #304#351'lemler'
      ImageIndex = 81
      object MenucxYeni: TMenuItem
        Tag = 2
        Caption = 'Yeni Hasta Kart'#305
        ImageIndex = 85
        OnClick = cxKaydetClick
      end
      object MenucxIptal: TMenuItem
        Tag = 1
        Caption = 'Hasta Kart Sil'
        ImageIndex = 87
        OnClick = cxKaydetClick
      end
      object H2: TMenuItem
        Tag = -20
        Caption = 'Hasta Sorgula'
        ImageIndex = 36
        OnClick = cxButtonCClick
      end
      object akipBul1: TMenuItem
        Tag = -5
        Caption = 'Hasta Takipleri Bul'
        ImageIndex = 12
        OnClick = cxButtonCClick
      end
      object akipBilgisiOku1: TMenuItem
        Tag = -4
        Caption = 'Takip Bilgisi Oku'
        ImageIndex = 68
        OnClick = cxButtonCClick
      end
      object akipSil1: TMenuItem
        Tag = -3
        Caption = 'Takip Sil'
        Hint = 'MEDULA '#304#350'LEMLER'#304',Takip Sil'
        ImageIndex = 43
        OnClick = cxButtonCClick
      end
      object mHizmetleriMedulayaKAydet1: TMenuItem
        Tag = -2
        Caption = 'T'#252'm Hizmetleri Medulaya Kaydet'
        Hint = 'MEDULA '#304#350'LEMLER'#304','#214'deme Yolla'
        ImageIndex = 76
        OnClick = cxButtonCClick
      end
      object akipLA1: TMenuItem
        Tag = -1
        Caption = 'Takip Al'
        ImageIndex = 9
        OnClick = cxButtonCClick
      end
      object GeliA1: TMenuItem
        Tag = -27
        Caption = 'Geli'#351' A'#231
        ImageIndex = 93
        OnClick = cxButtonCClick
      end
      object G1: TMenuItem
        Tag = -31
        Caption = 'Geli'#351' D'#252'zenle'
        ImageIndex = 35
        OnClick = cxButtonCClick
      end
      object G2: TMenuItem
        Tag = -33
        Caption = 'Geli'#351' Sil'
        ImageIndex = 43
        OnClick = cxButtonCClick
      end
      object SysTakipNoSGKHizmetSorgula1: TMenuItem
        Tag = -34
        Caption = 'SysTakipNo Sorgula'
        ImageIndex = 118
        OnClick = cxButtonCClick
      end
    end
  end
  object List: TListeAc
    TColcount = 0
    TColsW = '20,300'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'kod'
      'tanimi')
    KolonBasliklari.Strings = (
      'Kod'
      'Risk Tanimi')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'lilian'
    Grup = False
    GrupCol = 0
    Left = 536
    Top = 272
  end
end
