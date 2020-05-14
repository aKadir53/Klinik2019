object frmRaporDetay: TfrmRaporDetay
  Tag = -20
  Left = 224
  Top = 24
  BorderStyle = bsSizeToolWin
  Caption = 'frmRaporDetay'
  ClientHeight = 636
  ClientWidth = 1084
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
  object RaporGrid: TcxGridKadir
    Left = -96
    Top = 8
    Width = 1025
    Height = 193
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
    object ListeRaporlar: TcxGridDBTableView
      PopupMenu = PopupMenu3
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
      OnFocusedRecordChanged = ListeRaporlarFocusedRecordChanged
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
      object ListeRaporlarColumn9: TcxGridDBColumn
        Caption = 'Rapor Takip No'
        DataBinding.FieldName = 'raporTakipNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 80
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
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 40
      end
      object ListeRaporlarColumn10: TcxGridDBColumn
        DataBinding.FieldName = 'duzenleyenDoktor'
        Visible = False
      end
      object ListeRaporlarColumn11: TcxGridDBColumn
        DataBinding.FieldName = 'Onay'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            ImageIndex = 49
            Value = 1
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 40
      end
      object ListeRaporlarColumn12: TcxGridDBColumn
        Caption = 'Doktor'
        DataBinding.FieldName = 'duzenleyenDoktor'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
    end
    object cxGridLevel2: TcxGridLevel
      Caption = 'Hastalar'
      GridView = ListeRaporlar
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 104
    Top = 272
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
    Left = 60
    Top = 438
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
    Left = 156
    Top = 438
  end
  object PopupMenu2: TPopupMenu
    Left = 184
    Top = 264
    object E1: TMenuItem
      Caption = 'Eklenen Etken Maddeyi Meduladaki Rapora Ekle'
      OnClick = E1Click
    end
  end
  object PopupMenu3: TPopupMenu
    Images = DATALAR.imag24png
    Left = 296
    Top = 256
    object Kapat1: TMenuItem
      Tag = -30
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxButtonCClick
    end
    object RaporuYazdr1: TMenuItem
      Tag = -7
      Caption = 'Raporu Yazd'#305'r'
      ImageIndex = 28
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
      ImageIndex = 79
      object YeniRapor1: TMenuItem
        Tag = -20
        Caption = 'Yeni Rapor'
        ImageIndex = 98
        OnClick = cxButtonCClick
      end
      object Dzenle1: TMenuItem
        Tag = -21
        Caption = 'D'#252'zenle'
        ImageIndex = 72
        OnClick = cxButtonCClick
      end
      object RaporuSistemdenSil1: TMenuItem
        Tag = -8
        Caption = 'Raporu Sistemden Sil'
        ImageIndex = 42
        OnClick = cxButtonCClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object N5: TMenuItem
        Caption = #350'ablonlar'
        ImageIndex = 70
        OnClick = N5Click
      end
      object R2: TMenuItem
        Tag = 1
        Caption = 'Raporu '#350'ablon Olarak Kaydet'
        ImageIndex = 29
        OnClick = N5Click
      end
      object R3: TMenuItem
        Tag = 2
        Caption = 'Raporu '#350'ablondan Doldur'
        ImageIndex = 9
        OnClick = N5Click
      end
    end
    object M1: TMenuItem
      Caption = 'Medula'
      ImageIndex = 76
      object RaporuMedulayaKaydet1: TMenuItem
        Tag = 11
        Caption = 'Raporu Medulaya Kaydet'
        ImageIndex = 76
        OnClick = cxButtonCClick
      end
      object RaporuMeduladanOku1: TMenuItem
        Tag = -5
        Caption = 'Raporu Meduladan Oku'
        ImageIndex = 36
        OnClick = cxButtonCClick
      end
      object RaporuMeduladanSil1: TMenuItem
        Tag = 12
        Caption = 'Raporu Meduladan Sil'
        ImageIndex = 43
        OnClick = cxButtonCClick
      end
      object B1: TMenuItem
        Tag = 13
        Caption = 'Ba'#351'hekim Onay'#305' Ver'
        ImageIndex = 49
        OnClick = cxButtonCClick
      end
      object B2: TMenuItem
        Tag = 14
        Caption = 'Ba'#351'hekim Onay'#305' Red'
        ImageIndex = 50
        OnClick = cxButtonCClick
      end
      object RaporAra1: TMenuItem
        Tag = -9
        Caption = 'Rapor Ara'
        ImageIndex = 12
        OnClick = cxButtonCClick
      end
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 840
    Top = 48
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
  object Oku: TTimer
    Enabled = False
    Interval = 2000
    Left = 96
    Top = 133
  end
end
