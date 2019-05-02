object frmHastaListeD: TfrmHastaListeD
  Left = 680
  Top = 81
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmHastaListeD'
  ClientHeight = 601
  ClientWidth = 650
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
    ExplicitWidth = 558
    Height = 563
    Width = 650
    object uyari: TcxPageControl
      Left = 2
      Top = 488
      Width = 646
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
      ExplicitWidth = 554
      ClientRectBottom = 66
      ClientRectLeft = 3
      ClientRectRight = 639
      ClientRectTop = 35
      object cxTabSheet1: TcxTabSheet
        Caption = 'Uyar'#305' Bilgisi'
        ImageIndex = 133
        ExplicitWidth = 544
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
          ExplicitWidth = 544
          Height = 31
          Width = 636
        end
      end
    end
    object cxGrid2: TcxGridKadir
      Left = 2
      Top = 2
      Width = 646
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
      ExceleGonder = False
      ExplicitWidth = 554
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
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NavigatorOffset = 20
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.RowSeparatorColor = clBlack
        Styles.Indicator = cxStyle1
        object TC: TcxGridDBColumn
          Caption = 'Tc Kimlik No'
          DataBinding.FieldName = 'TCKIMLIKNO'
          Visible = False
        end
        object ListeColumn1: TcxGridDBColumn
          Caption = 'Dosya'
          DataBinding.FieldName = 'dosyaNo'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 50
        end
        object ListeColumn2: TcxGridDBColumn
          Caption = 'Foto'
          DataBinding.FieldName = 'foto'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TJPEGImage'
          Properties.PopupMenuLayout.MenuItems = []
          Properties.Stretch = True
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object HastaAdi: TcxGridDBColumn
          Caption = 'Ad'#305
          DataBinding.FieldName = 'HASTAADI'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object HastaSoyadi: TcxGridDBColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'HASTASOYADI'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          Width = 105
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
              Value = 1
            end
            item
              Description = 'Misafir'
              ImageIndex = 121
              Value = 2
            end>
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
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
          Width = 38
        end
        object ListeColumn7: TcxGridDBColumn
          DataBinding.FieldName = 'Diabet'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DATALAR.imag24png
          Properties.Items = <
            item
              ImageIndex = 0
              Value = '1'
            end>
          HeaderAlignmentHorz = taCenter
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
          Width = 43
        end
        object ListeColumn10: TcxGridDBColumn
          Caption = 'E.Seans'
          DataBinding.FieldName = 'seansKontrol'
          PropertiesClassName = 'TcxImageComboBoxProperties'
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
          Options.Editing = False
          Width = 72
        end
        object ListeColumn11: TcxGridDBColumn
          Caption = '!'
          DataBinding.FieldName = 'TakipProvizyonTarihiKontrol'
          HeaderAlignmentHorz = taCenter
          Width = 20
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
    ExplicitWidth = 558
    Height = 38
    Width = 650
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
      Caption = 'Epikriz'
      ImageIndex = 89
      OnClick = Epikriz1Click
      FormId = 0
    end
    object e1: TMenuItemModul
      Caption = 'Tetkik Takip Formlar'#305
      ImageIndex = 28
      FormId = 0
      object He1: TMenuItemModul
        Caption = 'Hepatitler Dahil'
        OnClick = H1Click
        FormId = 0
      end
      object He2: TMenuItemModul
        Caption = 'Hepatitler Hari'#231
        OnClick = H1Click
        FormId = 0
      end
      object He3: TMenuItemModul
        Caption = 'Hepatit / Tele'
        OnClick = H1Click
        FormId = 0
      end
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
      Tag = -20
      Caption = #304'mza F'#246'yleri'
      ImageIndex = 34
      OnClick = cxButtonCClick
    end
  end
  object popupYil: TPopupMenu
    OnPopup = popupYilPopup
    Left = 464
    Top = 88
    object N1: TMenuItem
      Caption = 'N'
      OnClick = N1Click
    end
  end
end
