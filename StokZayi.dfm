object frmStokZayi: TfrmStokZayi
  Left = 0
  Top = 0
  Caption = 'frmStokZayi'
  ClientHeight = 421
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UrunlerGrid: TcxGridKadir
    Left = 0
    Top = 0
    Width = 810
    Height = 421
    Align = alClient
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LevelTabs.ImageBorder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    ExceleGonder = False
    PopupForm = False
    object GridIts: TcxGridDBTableView
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
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.InfoText = 'Ekle'
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Appending = True
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object GridItssirketKod: TcxGridDBColumn
        DataBinding.FieldName = 'sirketKod'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object GridItssira: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'sira'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 30
      end
      object GridItscode: TcxGridDBColumn
        Caption = 'Malzeme / '#304'la'#231' Tan'#305'm'#305
        DataBinding.FieldName = 'code'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 185
      end
      object GridItsTarih: TcxGridDBColumn
        DataBinding.FieldName = 'Tarih'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object GridItsadet: TcxGridDBColumn
        Caption = 'Adet'
        DataBinding.FieldName = 'adet'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 30
      end
      object GridItsbirim: TcxGridDBColumn
        DataBinding.FieldName = 'birim'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object GridItslot: TcxGridDBColumn
        Caption = 'Lot'
        DataBinding.FieldName = 'lot'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 87
      end
      object GridItsLotsira: TcxGridDBColumn
        Caption = 'S'#305'ra'
        DataBinding.FieldName = 'Lotsira'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 62
      end
      object GridItstip: TcxGridDBColumn
        Caption = 'Zayi Tip'
        DataBinding.FieldName = 'tip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 50
      end
      object GridItsaciklama: TcxGridDBColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'aciklama'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssBoth
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 300
      end
      object GridItsislemiYapan: TcxGridDBColumn
        DataBinding.FieldName = 'islemiYapan'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 150
      end
    end
    object cxGridLevel3: TcxGridLevel
      Caption = 'Hastalar'
      GridView = GridIts
      Options.DetailFrameColor = clHighlight
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 680
    Top = 184
    object Y1: TMenuItem
      Tag = -1
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object E1: TMenuItem
      Tag = -2
      Caption = 'Ekle'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object D1: TMenuItem
      Tag = -4
      Caption = 'Duzenle'
      ImageIndex = 34
      OnClick = cxButtonCClick
    end
    object S1: TMenuItem
      Tag = -3
      Caption = 'Sil'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
  end
end
