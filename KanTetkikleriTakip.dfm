object frmKanTetkikTakip: TfrmKanTetkikTakip
  Left = 140
  Top = 100
  Caption = 'frmKanTetkikTakip'
  ClientHeight = 700
  ClientWidth = 1200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GridKanTetkikleri: TcxGridKadir
    Tag = 9997
    Left = 0
    Top = 19
    Width = 1200
    Height = 681
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
    ExcelFileName = 'KanTetkikTakip'
    ExceleGonder = True
    PopupForm = False
    ExplicitTop = 0
    ExplicitHeight = 700
    object GridTetkikler: TcxGridDBTableView
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
      DataController.DataSource = DataSource1
      DataController.Filter.Options = [fcoCaseInsensitive]
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
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object GridTetkiklerColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'TetkikKodu'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 56
      end
      object GridTetkiklerColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Tetkik'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 150
      end
      object GridTetkiklerColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'INo'
        Visible = False
        Styles.Content = cxStyle5
        Styles.Header = cxStyle4
        Width = 26
      end
      object GridTetkiklerColumn4: TcxGridDBColumn
        Caption = 'Ocak'
        DataBinding.FieldName = 'OCAK'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
      object GridTetkiklerColumn5: TcxGridDBColumn
        Caption = #350'ubat'
        DataBinding.FieldName = 'SUBAT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
      object GridTetkiklerColumn15: TcxGridDBColumn
        Caption = 'Mart'
        DataBinding.FieldName = 'MART'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle5
        Width = 60
      end
      object GridTetkiklerColumn6: TcxGridDBColumn
        Caption = 'Nisan'
        DataBinding.FieldName = 'NISAN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
      object GridTetkiklerColumn7: TcxGridDBColumn
        Caption = 'May'#305's'
        DataBinding.FieldName = 'MAYIS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
      object GridTetkiklerColumn8: TcxGridDBColumn
        Caption = 'Haziran'
        DataBinding.FieldName = 'HAZIRAN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
      object GridTetkiklerColumn9: TcxGridDBColumn
        Caption = 'Temmuz'
        DataBinding.FieldName = 'TEMMUZ'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
      object GridTetkiklerColumn10: TcxGridDBColumn
        Caption = 'A'#287'ustos'
        DataBinding.FieldName = 'AGUSTOS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
      object GridTetkiklerColumn11: TcxGridDBColumn
        Caption = 'Eyl'#252'l'
        DataBinding.FieldName = 'EYLUL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
      object GridTetkiklerColumn12: TcxGridDBColumn
        Caption = 'Ekim'
        DataBinding.FieldName = 'EKIM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
      object GridTetkiklerColumn13: TcxGridDBColumn
        Caption = 'Kas'#305'm'
        DataBinding.FieldName = 'KASIM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
      object GridTetkiklerColumn14: TcxGridDBColumn
        Caption = 'Aral'#305'k'
        DataBinding.FieldName = 'ARALIK'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Header = cxStyle4
        Width = 60
      end
    end
    object cxGridTetkikLevel: TcxGridLevel
      Caption = 'Hastalar'
      GridView = GridTetkikler
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object chkHepatit: TcxCheckBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Hepatit Marker'
    ParentFont = False
    Style.Font.Charset = TURKISH_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    OnClick = chkHepatitClick
    Width = 1200
  end
  object DataSource1: TDataSource
    DataSet = ADO_Tetkikler
    Left = 296
    Top = 170
  end
  object ADO_Tetkikler: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 224
    Top = 120
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15132390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 48
    Top = 128
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 304
    Top = 120
  end
  object ADO_Tele: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 424
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 616
    Top = 152
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object Y1: TMenuItem
      Tag = -5
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      object H1: TMenuItem
        Tag = -1
        Caption = 'Hepatit Marker'
        OnClick = cxButtonCClick
      end
      object T1: TMenuItem
        Tag = -2
        Caption = 'Tetkik'
        OnClick = cxButtonCClick
      end
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
  end
end
