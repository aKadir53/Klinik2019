object frmKtvListesi: TfrmKtvListesi
  Left = 535
  Top = 72
  BorderStyle = bsDialog
  Caption = 'Hesaplanan De'#287'erler'
  ClientHeight = 601
  ClientWidth = 750
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GridListe: TcxGridKadir
    Left = 0
    Top = 0
    Width = 750
    Height = 601
    Align = alClient
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
    ExcelFileName = 'KtvUrrListesi'
    ExceleGonder = True
    PopupForm = False
    object GridList: TcxGridDBTableView
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
      DataController.DetailKeyFieldNames = 'takipNo'
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.KeyFieldNames = 'takipNo'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###.##'
          Kind = skAverage
          FieldName = 'Kt_v'
          Column = GridListColumn5
        end
        item
          Format = '#,###.##'
          Kind = skAverage
          FieldName = 'CaXP'
          Column = GridListColumn6
        end
        item
          Format = '#,###.##'
          Kind = skAverage
          FieldName = 'TS'
          Column = GridListColumn7
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
      OptionsSelection.MultiSelect = True
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object GridListColumn1: TcxGridDBColumn
        Caption = 'Dosya No'
        DataBinding.FieldName = 'dosyaNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 54
      end
      object GridListColumn8: TcxGridDBColumn
        Caption = 'Gelis No'
        DataBinding.FieldName = 'gelisNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 47
      end
      object GridListColumn2: TcxGridDBColumn
        Caption = 'Hasta'
        DataBinding.FieldName = 'ad'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 191
      end
      object GridListColumn3: TcxGridDBColumn
        Caption = 'Tc Kimlik'
        DataBinding.FieldName = 'TCKIMLIKNO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridListColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Urr'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object GridListColumn5: TcxGridDBColumn
        Caption = 'Ktv'
        DataBinding.FieldName = 'Kt_v'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object GridListColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'CaXP'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object GridListColumn9: TcxGridDBColumn
        DataBinding.FieldName = 'DuzCa'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 49
      end
      object GridListColumn7: TcxGridDBColumn
        Caption = 'Tranferrin Sat.'
        DataBinding.FieldName = 'TS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 79
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = GridList
      Options.DetailFrameColor = clHighlight
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 104
    Top = 112
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      Visible = False
      OnClick = cxKaydetClick
    end
    object H1: TMenuItem
      Tag = -1
      Caption = 'De'#287'erleri Hesaplat'
      ImageIndex = 32
      OnClick = cxButtonCClick
      object Daugirdas21: TMenuItem
        Tag = -2
        Caption = 'Daugirdas2'
        OnClick = cxButtonCClick
      end
      object Jindal1: TMenuItem
        Tag = -3
        Caption = 'Jindal'
        OnClick = cxButtonCClick
      end
      object Barth1: TMenuItem
        Tag = -4
        Caption = 'Barth'
        OnClick = cxButtonCClick
      end
    end
    object E1: TMenuItem
      Tag = -10
      Caption = 'Manuel De'#287'er Tan'#305'mla'
      ImageIndex = 102
      OnClick = cxButtonCClick
    end
    object E2: TMenuItem
      Tag = 9997
      Caption = 'Excele Aktar'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
  end
end
