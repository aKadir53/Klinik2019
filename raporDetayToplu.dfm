object frmHastaRaporlari: TfrmHastaRaporlari
  Tag = -20
  Left = 224
  Top = 24
  Caption = 'frmHastaRaporlari'
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
      object ListeRaporlarColumn10: TcxGridDBColumn
        Caption = 'Hasta'
        DataBinding.FieldName = 'hasta'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 171
      end
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
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 91
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
        Width = 102
      end
      object ListeRaporlarColumn8: TcxGridDBColumn
        Caption = 'Onay'
        DataBinding.FieldName = 'raporOnay'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            Description = 'Onayl'#305
            ImageIndex = 31
            Value = 1
          end
          item
            Description = 'Onays'#305'z'
            ImageIndex = 33
            Value = 0
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 101
      end
    end
    object cxGridLevel2: TcxGridLevel
      Caption = 'Hastalar'
      GridView = ListeRaporlar
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object PopupMenu3: TPopupMenu
    Images = DATALAR.imag24png
    Left = 40
    Top = 256
    object Kapat1: TMenuItem
      Tag = -30
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxButtonCClick
    end
    object M1: TMenuItem
      Caption = 'Medula'
      ImageIndex = 76
      object RaporuMedulayaKaydet1: TMenuItem
        Tag = 11
        Caption = 'Raporu Medulaya Kaydet'
        Enabled = False
        ImageIndex = 76
        Visible = False
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
        Enabled = False
        ImageIndex = 43
        Visible = False
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
