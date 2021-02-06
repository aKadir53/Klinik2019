object frmHastaListeD: TfrmHastaListeD
  Left = 680
  Top = 81
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmHastaListeD'
  ClientHeight = 601
  ClientWidth = 740
  Color = 13750737
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxListPanel: TcxGroupBox
    Left = 0
    Top = 38
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 563
    Width = 740
    object uyari: TcxPageControl
      Left = 2
      Top = 488
      Width = 736
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
      ClientRectRight = 729
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
          Width = 726
        end
      end
    end
    object cxGrid2: TcxGridKadir
      Left = 2
      Top = 2
      Width = 736
      Height = 486
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
      ExcelFileName = 'HastaGelis_Listesi'
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
        OnGetCellHeight = ListeGetCellHeight
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Hasta Say'#305' :#0'
            Kind = skCount
            FieldName = 'HASTAADI'
            Column = HastaAdi
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
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupByBox = False
        OptionsView.RowSeparatorColor = clBlack
        Styles.Indicator = cxStyle1
        object ListeColumn2: TcxGridDBColumn
          Caption = 'Foto'
          DataBinding.FieldName = 'foto'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TJPEGImage'
          Properties.PopupMenuLayout.MenuItems = []
          Properties.Stretch = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.EditAutoHeight = iaehNone
          Width = 60
        end
        object ListeColumn1: TcxGridDBColumn
          Caption = 'Dosya'
          DataBinding.FieldName = 'dosyaNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 53
        end
        object TC: TcxGridDBColumn
          Caption = 'Tc Kimlik No'
          DataBinding.FieldName = 'TCKIMLIKNO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 95
        end
        object HastaAdi: TcxGridDBColumn
          Caption = 'Ad'#305
          DataBinding.FieldName = 'HASTAADI'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 105
        end
        object HastaSoyadi: TcxGridDBColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'HASTASOYADI'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 105
        end
        object ListeColumn3: TcxGridDBColumn
          Caption = 'Ya'#351
          DataBinding.FieldName = 'yas'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 31
        end
        object ListeColumn4: TcxGridDBColumn
          Caption = 'Tip'
          DataBinding.FieldName = 'Aktif'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.Images = DATALAR.ImageList1
          Properties.Items = <
            item
              Description = 'Aktif'
              ImageIndex = 40
              Value = '1'
            end
            item
              Description = 'Misafir'
              ImageIndex = 121
              Value = '2'
            end>
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 68
        end
        object ListeColumn5: TcxGridDBColumn
          Caption = 'Tetkik'
          DataBinding.FieldName = 'tahlil'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.ImageList1
          Properties.Items = <
            item
              ImageIndex = 133
              Value = '1'
            end
            item
              Value = '0'
            end>
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 31
        end
        object ListeColumn6: TcxGridDBColumn
          Caption = #214'zel'
          DataBinding.FieldName = 'ozeldurum'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.ImageList1
          Properties.Items = <
            item
              Value = ''
            end
            item
              ImageIndex = 0
              Value = '1'
            end>
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 31
        end
        object Kilo: TcxGridDBColumn
          Caption = 'Kilo'
          DataBinding.FieldName = 'kilo'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.ImageList1
          Properties.Items = <
            item
              Value = 0
            end
            item
              ImageIndex = 133
              Value = 1
            end>
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 38
        end
        object ListeColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'Diabet'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.imag24png
          Properties.Items = <
            item
              ImageIndex = 0
              Value = 1
            end>
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 37
        end
        object ListeColumn8: TcxGridDBColumn
          Caption = 'AntiHbs'
          DataBinding.FieldName = 'antiHbs'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.global_img_list4
          Properties.Items = <
            item
              ImageIndex = 100
              Value = 1
            end
            item
              ImageIndex = 148
              Value = -1
            end
            item
              ImageIndex = 133
              Value = 0
            end>
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 43
        end
        object ListeColumn10: TcxGridDBColumn
          Caption = 'E.Seans'
          DataBinding.FieldName = 'seansKontrol'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.Images = DATALAR.global_img_list4
          Properties.Items = <
            item
              Value = 0
            end
            item
              Description = 'Eksik Seans'
              ImageIndex = 133
              Value = 1
            end>
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 72
        end
        object ListeColumn11: TcxGridDBColumn
          Caption = '!'
          DataBinding.FieldName = 'TakipProvizyonTarihiKontrol'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.ShowEditButtons = isebNever
          Width = 20
        end
        object ListeColumn9: TcxGridDBColumn
          Caption = 'PasifSebep'
          DataBinding.FieldName = 'pasifSebebTanim'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object ListeColumn12: TcxGridDBColumn
          RepositoryItem = cxEditRepository1ButtonItem1
          Options.ShowEditButtons = isebAlways
          Width = 80
          IsCaptionAssigned = True
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Hastalar'
        GridView = Liste
        Options.DetailFrameColor = clBlack
        Options.DetailFrameWidth = 0
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
    Width = 740
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
      Properties.OnChange = cxRadioGroup1PropertiesChange
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
      Properties.OnChange = cxRadioGroup1PropertiesChange
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
      Properties.OnChange = txtayPropertiesChange
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
      Properties.OnChange = txtayPropertiesChange
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
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 384
    Top = 110
    object N5: TMenuItem
      Tag = -50
      Caption = #304'lk Seans'#305' Merkeze Ba'#351'lang'#305#231'  Yap'
      ImageIndex = 120
      Visible = False
      OnClick = cxButtonCClick
    end
    object R1: TMenuItem
      Tag = -8
      Caption = 'Rapor'
      ImageIndex = 98
      OnClick = cxButtonCClick
    end
    object Recete: TMenuItemModul
      Tag = -7
      Caption = 'Re'#231'ete'
      ImageIndex = 97
      OnClick = cxButtonCClick
      Modul = 'TEDAVI KARTI'
      Islem = 'Recete'
      FormId = 0
    end
    object edaviKart1: TMenuItemModul
      Tag = -1
      Caption = #304'la'#231' Tedavi Kart'#305
      ImageIndex = 63
      OnClick = cxButtonCClick
      Modul = 'TEDAVI KARTI'
      Islem = #304'la'#231' Tedavi'
      FormId = 0
    end
    object SeansKart1: TMenuItemModul
      Tag = -2
      Caption = 'Seans Kart'#305
      ImageIndex = 80
      OnClick = cxButtonCClick
      FormId = 0
    end
    object Epikriz1: TMenuItemModul
      Tag = -3
      Caption = 'Epikriz'
      ImageIndex = 89
      OnClick = cxButtonCClick
      FormId = 0
    end
    object e1: TMenuItemModul
      Caption = 'Tetkik Takip Formlar'#305
      ImageIndex = 28
      FormId = 0
      object He1: TMenuItemModul
        Tag = 10
        Caption = 'T'#252'm Hastalar'
        OnClick = cxButtonCClick
        FormId = 0
      end
      object He2: TMenuItemModul
        Tag = 11
        Caption = 'Se'#231'ili Hasta'
        OnClick = cxButtonCClick
        FormId = 0
      end
      object He3: TMenuItemModul
        Caption = 'Hepatit / Tele'
        Visible = False
        FormId = 0
      end
    end
    object T2: TMenuItem
      Tag = 190
      Caption = 'Tetkik Tedavi Kart'#305
      ImageIndex = 47
      OnClick = cxButtonCClick
    end
    object HastaYllkTekikCetveli1: TMenuItem
      Tag = -37
      Caption = 'Hasta Y'#305'll'#305'k Tekik Cetveli'
      ImageIndex = 45
      OnClick = cxButtonCClick
    end
    object T3: TMenuItem
      Tag = -90
      Caption = 'Y'#305'll'#305'k Tetkik '#304'la'#231' De'#287'erlendirme'
      ImageIndex = 62
      OnClick = cxButtonCClick
    end
    object A1: TMenuItem
      Tag = 9020
      Caption = 'A'#351#305' Kart'#305
      ImageIndex = 60
      OnClick = cxButtonCClick
    end
    object T1: TMenuItem
      Tag = 330
      Caption = 'Tan'#305' Kart'#305
      ImageIndex = 74
      OnClick = cxButtonCClick
    end
    object N2: TMenuItem
      Tag = 20
      Caption = #304'mza F'#246'y'#252
      ImageIndex = 34
      object N3: TMenuItem
        Tag = -21
        Caption = 'Se'#231'ili '#304'mza F'#246'y'#252
        OnClick = cxButtonCClick
      end
      object N4: TMenuItem
        Tag = -20
        Caption = 'T'#252'm '#304'mza F'#246'yleri'
        OnClick = cxButtonCClick
      end
    end
    object H3: TMenuItem
      Tag = -113
      Caption = 'Hasta Bak'#305'm Plan'#305
      ImageIndex = 53
      OnClick = cxButtonCClick
    end
    object E2: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object H1: TMenuItem
      Tag = -100
      Caption = 'Hasta Tan'#305'm Kartlar'#305
      ImageIndex = 6
      OnClick = cxButtonCClick
    end
    object M1: TMenuItem
      Tag = -110
      Caption = 'MedEczane'
      ImageIndex = 103
      OnClick = cxButtonCClick
    end
    object E3: TMenuItem
      Tag = -111
      Caption = 'E-Nab'#305'z Doktor Eri'#351'im'
      ImageIndex = 133
      OnClick = cxButtonCClick
    end
    object H2: TMenuItem
      Tag = -112
      Caption = 'Hasta Sorgula'
      ImageIndex = 3
      OnClick = cxButtonCClick
    end
    object M2: TMenuItem
      Caption = 'Mesaj'
      OnClick = M2Click
    end
  end
  object popupYil: TPopupMenu
    Tag = 1
    OnPopup = popupYilPopup
    Left = 464
    Top = 88
    object N1: TMenuItem
      Caption = 'N'
      OnClick = N1Click
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 352
    Top = 352
    object cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Caption = 'Epikriz'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000000000191B1B1B4F040404250000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000008080833646464BACFCFCFFEBCBCBCE26767679A1C1C1C470000000C0000
            0000000000000000000000000000000000000000000000000000000000001919
            194A7F7F7FDD808080FFB2B2B2FFF6F6F6FFF0F0F0FFD8D8D8FA939393C24242
            4272070706270000000000000000000000000000000000000000040404117676
            76D0787878FF6A6A6AFFA5A5A5FFE9E9E9FFE3E3E3FFE6E6E6FFF3F3F3FFEFEF
            EFFFCDCDC3E87F7F73A2252524500000001300000000000000001010102E7373
            73F6676767FF8C8C8CFFA4A4A4FFE8E8E8FFE4E4E4FFE1E1E2FFEDEDE3FFF5F5
            E8FFA4A4FEFFB2B2FFFFE8E8EBFFA8A8A8CF5151517D0303030E222222516E6F
            6FFF747474FF969696FFA6A6A6FFE9E9E9FFE4E4E4FFE7E7E1FFB1B1EDFFB0B0
            F1FF2222FEFF1010FFFFEFEFFAFFFFFFFFFFFFFFFFFF50505069333333687570
            6EFF8C8684FF959696FFAFAFAFFFECEDEDFFE7E7E4FFE2E2E3FF2929F8FF0000
            FCFF0000FDFF2929FBFFD4D4F5FFFBFBF8FFFFFFFFFF838383943536376B837A
            76FFABA29DFF8E8F90FFC3C3C3FFF4F8FAFFE9ECECFFE1E1E3FF9797E7FF2C2C
            DAFF0000D0FF0000CFFF4949DEFFFAFAF8FFFFFFFFFF868686962B2C2C578780
            7DFFA89F9BFF8B8B8BFFE1E3E5FFD7C1ACFFC19C7CFFE5E5E3FFF1F1E5FF5F5F
            E2FF2B2BD9FF7373DBFFABACE8FFFCFCF8FFFFFFFFFF7A7A7A8A11121225928D
            8BF6A39B98FFA9AAAAFFF4F2F0FFA75715FFB37947FFE7EAE9FFDCDCE7FF7272
            FBFF9B9BF9FFFFFFF3FFF6F6F2FFF7F7F7FFFFFFFFFF5454546300000001615E
            5C96B9AFAAFFDFDDDFFFD5B89EFFA44F0BFFE0D5C9FFE8ECEFFFE3E4E3FFE4E4
            E6FFEAEDF2FFCDA67CFFD2B08BFFFDFEFEFFE5E5E5F216161620000000000305
            060A3C39395E9A816CE1A66734FFA46737FFD9D5D3FFDFD9D6FFE2E1E0FFE8EB
            ECFFE0D5C6FFB86A17FFE0CBB3FFFFFFFFFF8383839500000000000000000402
            000051310000AB691FB4A95313FF6F431CA049474B7B7D7675C4A79D9BF2BEB8
            B9FFBB854FFFC59059FFFCFFFFFFC9C9CADC1212121A00000000694200007D4F
            0000A6680000B47B2D82BC7B4EFF924E0286311E0000150F01006C44137EA46D
            34F7A35609F6907863D78D8583C4242424310000000000000000AB6C0000A86B
            0000A2670000A56C0B17C69864D6B97E4DF9A05D08609759004CA95702E4AF57
            00FD915301730A0A070900000003000000000000000000000000A2670000A267
            0000A2670000A0650000A8701123BE904E9DBA844AD7B6773CE3B37029CCAC6B
            0A548B5900000402000000000000000000000000000000000000}
          Hint = 'Epikriz'
          Kind = bkGlyph
        end
        item
          Caption = 'ImzaFoyu'
          Default = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000E050505411B1B1B38000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000010000001F16161682474747E89292923D000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00010000000B0404043E526368B28AA5AEFC7B7D7DA3C2C2C201000000000000
            0000000000000000000000000000000000000000000000000000000000000101
            011D2A2E308579939CE0AFDCEAFFA1C5D0EB929596138F909100000000000000
            0000000000000000000000000000000000000000000000000000000000151F1F
            1F9777919AFEAEDAE8FFA4CDDAFEABB6B94AA3A7A800A3A7A800000000000000
            000000000000000000000000000000000000000000000000001319191984515F
            64FB7ED9F8FF8FD0E9FF859DA4C2828687007F8485007F848500000000000000
            00000000000000000000000000000000000000000011191919844B5659F779CC
            E8FF75CAEDFF546A74EAAEAEAF33D8D9DB00D8D9DB00D8D9DB00000000000000
            00000000000000000000000000000000000913131372495053FB7BCFEBFF76CE
            F1FF4E5E65EBB2B2B228C6C5C600D8D9DB00D8D9DB00D8D9DB00000000000000
            000000000000000000000000000C0F0F0F63444E51EC79C9E4FF78D2F6FF556C
            76E0A6A6A529C6C6C600C6C5C600D8D9DB00D8D9DB00D8D9DB00000000000000
            000000000000000000090F0F0F663F4041EF75BFD8FF78D3F7FF4D646DF3AAAA
            AA2CC4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400000000000000
            00000000000D0E0E0E63414749ED72B8D0FF77CEF0FF536A74E59E9E9E33C3C3
            C300C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400000000000000
            000D131313713F4244ED75C1DCFF7BD6FBFF56717DECAFAFAF25ADADAD00C3C3
            C300C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C4000000000A1718
            176E737979F277B2CAFF78D1F6FF537481F59B9B9B41C3C3C300ADADAD00C3C3
            C300C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400C4C4C400090B0E2A6B75
            7AEEBCC9C8FFB5D3DAFF587582FF83838363B0B0B000B0B0B000B0B0B000B0B0
            B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B0001D27312269A0
            D1F9BDC9C8FF9AA3A3F893949465C5C5C500C5C5C500C5C5C500C5C5C500C5C5
            C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500141A200087B5
            DC447BA8D2B199A4AD5DB8B9B900C5C5C500C5C5C500C5C5C500C5C5C500C5C5
            C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500}
          Hint = #304'mza F'#246'y'#252
          Kind = bkGlyph
        end
        item
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000A3857A00A385
            7A00A3857900A3857A13A4887D5BA08B7FAB99817494A1857A5CA1887D82AE9B
            8EC1A98E8263A3857A07A3857A00A3857900A3857A00FFFFFF00A3857A14A58A
            7F71B09D93C2BDB1A7FDCAC4BAFFCAC5BEFFADA79DFF948D83FFAAA193FFCAC0
            B3FFE0D7C9FFCCBCB0E7A98D8267A3857903A3857A00FFFFFF00B29D93B7D1CC
            C4FFD9D6D1FFE1DEDCFFCBCAC9FFA5A3A1FF999590FF9B958CFFB8B0A2FFD5CE
            C2FFEBE4D8FFEBE4D8FFEAE2D7FFCDBDB2DAA88C8149FFFFFF00B39E95AFCDC9
            C4FFA5A3A0FF9E9A95FFA49E95FFBCB5AAFFC1BAAEFFC1BAAEFFB6ADA4FFC3BA
            B2FFEFEAE1FFF0EAE1FFF0EAE1FFF0EAE1FFD2C3B9E4FFFFFF00A99086797DB7
            75FFAAB59DFFC6C0B6FFC6C0B6FFBCB3ABFFB7AEA6FFB8AFA7FFBFB7AFFFDDD7
            CFFFD6CEC8FFD9D1CBFFF2EDE6FFF2EDE6FFD6C9C1EDFFFFFF00A78D826A83C5
            7DFF95A588FFBBB2ACFFB8B0A9FFC5BEB6FFD5CFC6FFDFD8CFFFE9E2D9FFF2EB
            E2FFEFEBE4FFEBE6E0FFD7CFC9FFD8D0CAFFD5C9C1F5FFFFFF00A4887E64B9B3
            ACFFCFC9C1FFDCD6CDFFE9E2D9FFF3ECE2FFF3EDE3FFE3DBD2FFD9D0C8FFE0D8
            D0FFEAE5DDFFE7E2DAFFE7E2DAFFE5E0D8FFC3B5ADF8FFFFFF00A4877C39E8E0
            D6FFF3ECE2FFEFE8DFFFD9D0C8FFDAD2CAFFD6CEC7FFE7E1DBFFF8F5F0FFD9D2
            CEFFF4F1ECFFE0DAD2FFDED8D0FFDED8D0FFC9BBB2EFFFFFFF00A3857A00BFA9
            A0B4F2ECE5FFC8BEBAFFF6F2EDFFF9F6F2FFF9F6F2FFEAE7E2FFD7D3CCFFA79F
            94FFAEA59CFFE6E1DBFFE2DBD2FFC9BBB1EBA98E8353FFFFFF00A3857A00A385
            7A23DFD5CFF1DBD5D1FFDED9D4FFCCC7BEFFBCB6ACFFBEB8AFFFC7C2BBFFB8B2
            ABFF9B9389FF9F9086EFA2857A4FA2837803A3857A00FFFFFF00A3857A00A385
            7A00A4867B21BFAAA29BCDC7C2DEC4BCB5FEC5B8ADFFC1B1A2FFBAA692FFB7A1
            89FFB39E97B7A88E8565A3857A00A2837800A3857A00FFFFFF0096827D009682
            7D0096827D0094827E00A3928D02C5B2A4D2DCCFBDFFDCCFBDFFDCCFBDFFDCD0
            BEFFA98D816BA3857A00A3857A00A3847900A3857A00FFFFFF0092817E009281
            7E0092817E0092817E009B827A00D8C8BDE9F3EBE0FFF3EBE0FFF3EBE0FFF3EB
            E0FFC6B1A7B9A3857A00A3857A00A3857A00A3857A00FFFFFF00A3857A00A385
            7A00A3857A00A3857A00A3857A00CFBCB2CBF4EAE0FFF4EAE0FFF4EAE0FFF4EA
            E0FFECE0D6FEA78A804FA2847900A3857A00A3857A00FFFFFF00A3857A00A385
            7A00A3857A00A3857A00A3857A00AB8F845CE4D3C9FEEBDCD1FFEBDCD1FFEBDC
            D1FFEBDCD1FFE0CFC4FBB3978CA7A3857A1FA3857A00FFFFFF00A3857A00A385
            7A00A3857A00A3857A00A3857A00A3857A00A7897E44BDA398B3BEA499B3B69B
            908AAC908466A4867B42A284791DA3857A00A3857A00FFFFFF00}
          Hint = 'Y'#305'll'#305'k Tetkik Formu Yazd'#305'r'
          Kind = bkGlyph
        end>
      Properties.ViewStyle = vsButtonsOnly
      Properties.OnButtonClick = cxEditRepository1ButtonItem1PropertiesButtonClick
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'exec sp_frmHastaListesi '#39'20201201'#39','#39'20201231'#39','#39'1'#39','#39'2'#39','#39'1000'#39','#39'00' +
        '0005'#39','#39#39)
    Left = 136
    Top = 112
  end
  object IdHTTP1: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.Password = 'NOKTA01'
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Username = 'NOKTA'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 144
    Top = 224
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Method = sslvSSLv2
    SSLOptions.SSLVersions = [sslvSSLv2]
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 144
    Top = 280
  end
end
