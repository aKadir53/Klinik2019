object frmTopluEpikriz: TfrmTopluEpikriz
  Left = 0
  Top = 0
  Caption = 'frmTopluEpikriz'
  ClientHeight = 486
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 30
    Align = alTop
    TabOrder = 0
    object Button3: TButton
      Left = 292
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Excel G'#246'nder'
      TabOrder = 0
      Visible = False
      OnClick = Button3Click
    end
    object txtDonem: TcxComboBox
      Left = 74
      Top = 1
      Align = alLeft
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        ''
        'OCAK'
        #350'UBAT'
        'MART'
        'N'#304'SAN'
        'MAYIS'
        'HAZ'#304'RAN'
        'TEMMUZ'
        'A'#286'USTOS'
        'EYL'#220'L'
        'EK'#304'M'
        'KASIM'
        'ARALIK')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      ExplicitLeft = 78
      ExplicitTop = 2
      ExplicitHeight = 21
      Width = 121
    end
    object txtYil: TcxComboBox
      Left = 1
      Top = 1
      Align = alLeft
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      ExplicitLeft = 3
      ExplicitTop = 2
      ExplicitHeight = 21
      Width = 73
    end
    object btnList: TcxButton
      Left = 195
      Top = 1
      Width = 75
      Height = 28
      Align = alLeft
      Caption = 'Listele'
      TabOrder = 3
      OnClick = btnListClick
      ExplicitLeft = 211
      ExplicitTop = 0
      ExplicitHeight = 25
    end
  end
  object cxGrid2: TcxGridKadir
    Left = 0
    Top = 30
    Width = 950
    Height = 456
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
    ExplicitTop = 27
    ExplicitHeight = 459
    object Detay: TcxGridDBTableView
      Navigator.Buttons.Images = DATALAR.imag24png
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.ImageIndex = 0
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      Navigator.Visible = True
      FilterBox.CustomizeDialog = False
      DataController.DataModeController.DetailInSQLMode = True
      DataController.DataSource = DataSource1
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      FilterRow.InfoText = 'Arama Sat'#305'r'#305
      FilterRow.SeparatorWidth = 2
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object DetayColumn1: TcxGridDBColumn
        Caption = 'Hasta Ad'#305
        DataBinding.FieldName = 'ad'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 149
      end
      object DetayColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Tarih'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 96
      end
      object DetayColumn3: TcxGridDBColumn
        Caption = 'Epikriz Detay'
        DataBinding.FieldName = 'MedulaEpikriz'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssBoth
        HeaderAlignmentHorz = taCenter
        Width = 405
      end
      object DetayColumn4: TcxGridDBColumn
        Caption = 'Epikriz Aciklama'
        DataBinding.FieldName = 'aciklama'
        HeaderAlignmentHorz = taCenter
        Width = 303
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = Detay
      Options.DetailFrameColor = clHighlight
    end
  end
  object ADO_SQL: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Prepared = True
    Left = 208
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ADO_SQL
    Left = 288
    Top = 176
  end
  object SaveDialog1: TSaveDialog
    Left = 432
    Top = 160
  end
end
