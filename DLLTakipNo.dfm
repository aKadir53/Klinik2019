object frmTakipNo: TfrmTakipNo
  Tag = -10
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmTakipNo'
  ClientHeight = 506
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object txtTedaviTipi: TcxImageComboKadir
    Tag = -100
    Left = 8
    Top = 198
    EditValue = '1'
    Properties.ClearKey = 46
    Properties.Items = <>
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 0
    TableName = 'Medula_TedaviTipleri'
    Conn = DATALAR.ADOConnection2
    ValueField = 'Kod'
    DisplayField = 'Tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object txtTarih: TcxDateEditKadir
    Tag = -100
    Left = 8
    Top = 9
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 1
    BosOlamaz = False
    ValueTip = tvString
    Width = 121
  end
  object txtTakipTipi: TcxImageComboKadir
    Tag = -100
    Left = 8
    Top = 171
    EditValue = 'N'
    Properties.ClearKey = 46
    Properties.Items = <>
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 2
    TableName = 'Medula_TakipTipleri'
    Conn = DATALAR.ADOConnection2
    ValueField = 'kod'
    DisplayField = 'Tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object txtSigortaliTuru: TcxImageComboKadir
    Tag = -100
    Left = 8
    Top = 63
    EditValue = '1'
    Properties.ClearKey = 46
    Properties.Items = <>
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 3
    TableName = 'Medula_SigortaliTurleri'
    Conn = DATALAR.ADOConnection2
    ValueField = 'Kod'
    DisplayField = 'Tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object txtTcKimlikNo: TcxTextEditKadir
    Tag = -100
    Left = 8
    Top = 36
    Properties.ReadOnly = True
    TabOrder = 4
    Width = 121
  end
  object pnlYardimHakki: TcxGroupBox
    Left = 8
    Top = 259
    Caption = 'Yurt D'#305#351#305' Yard'#305'm Hakk'#305
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Height = 200
    Width = 350
    object cxGrid6: TcxGridKadir
      Left = 2
      Top = 35
      Width = 346
      Height = 163
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
      ExceleGonder = False
      PopupForm = False
      object gridYardimHakki: TcxGridDBTableView
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
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NavigatorOffset = 20
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        object gridYardimHakkiRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object gridYardimHakkiid: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 34
        end
        object gridYardimHakkikisiNo: TcxGridDBColumn
          Caption = 'Ki'#351'i No'
          DataBinding.FieldName = 'kisiNo'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object gridYardimHakkiTarih: TcxGridDBColumn
          DataBinding.FieldName = 'Tarih'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
          Width = 68
        end
        object gridYardimHakkiodemeTuru: TcxGridDBColumn
          Caption = #214'deme T'#252'r'#252
          DataBinding.FieldName = 'odemeTuru'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
        end
        object gridYardimHakkitedaviKapsami: TcxGridDBColumn
          Caption = 'Tedavi Kapsam'#305
          DataBinding.FieldName = 'tedaviKapsami'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
        end
        object gridYardimHakkiformulAdi: TcxGridDBColumn
          Caption = 'Formul Ad'#305
          DataBinding.FieldName = 'formulAdi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
        end
        object gridYardimHakkiaciklama: TcxGridDBColumn
          Caption = 'Aciklama'
          DataBinding.FieldName = 'aciklama'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGridLevel6: TcxGridLevel
        Caption = 'Hastalar'
        GridView = gridYardimHakki
        Options.DetailFrameColor = clBlack
        Options.DetailFrameWidth = 0
      end
    end
    object btnYardimHakki: TcxButtonKadir
      Left = 2
      Top = 2
      Width = 346
      Height = 33
      Align = alTop
      Caption = 'Yurt D'#305#351#305' Yard'#305'm Hakk'#305' Getir'
      TabOrder = 1
      OnClick = btnYardimHakkiClick
      NewButtonVisible = False
    end
  end
  object txtilkTakipNo: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 35
    TabOrder = 6
    Width = 121
  end
  object txtAdi: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 62
    TabOrder = 7
    Width = 186
  end
  object txtDogumTarihi: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 89
    TabOrder = 8
    Width = 121
  end
  object txtdonenSigortaTur: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 117
    TabOrder = 9
    Width = 121
  end
  object txtdonendevKurum: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 144
    TabOrder = 10
    Width = 121
  end
  object txtDevredilenKurum: TcxImageComboKadir
    Left = 8
    Top = 90
    Properties.ClearKey = 46
    Properties.Items = <>
    TabOrder = 11
    TableName = 'Medula_DevredilenKurumlar'
    Conn = DATALAR.ADOConnection2
    ValueField = 'Kod'
    DisplayField = 'Tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object txtYUPASS: TcxTextEditKadir
    Tag = -100
    Left = 135
    Top = 8
    TabOrder = 12
    Width = 121
  end
  object txtTedaviTuru: TcxImageComboKadir
    Tag = -100
    Left = 8
    Top = 144
    EditValue = 'N'
    Properties.ClearKey = 46
    Properties.Items = <>
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 13
    TableName = 'Medula_TedaviTurleri'
    Conn = DATALAR.ADOConnection2
    ValueField = 'Kod'
    DisplayField = 'Tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object txtProvizyonTipi: TcxImageComboKadir
    Tag = -100
    Left = 8
    Top = 117
    EditValue = 'N'
    Properties.ClearKey = 46
    Properties.Items = <>
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 14
    TableName = 'Medula_ProvizyonTipleri'
    Conn = DATALAR.ADOConnection2
    ValueField = 'Kod'
    DisplayField = 'Tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object txtBransKodu: TcxImageComboKadir
    Tag = -100
    Left = 8
    Top = 225
    EditValue = 'N'
    Properties.ClearKey = 46
    Properties.Items = <>
    Style.BorderColor = clWindowFrame
    Style.BorderStyle = ebs3D
    Style.HotTrack = False
    Style.ButtonStyle = bts3D
    Style.PopupBorderStyle = epbsFrame3D
    TabOrder = 15
    TableName = 'Medula_BransKodlari'
    Conn = DATALAR.ADOConnection2
    ValueField = 'Kod'
    DisplayField = 'Tanimi'
    BosOlamaz = False
    FilterSet = fsNone
    Width = 121
  end
  object takipNo: TcxLabel
    Left = 439
    Top = 62
    AutoSize = False
    Caption = '.'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -27
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Transparent = True
    Height = 37
    Width = 200
    AnchorX = 539
  end
  object basvuruNo: TcxLabel
    Left = 439
    Top = 105
    AutoSize = False
    Caption = '.'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -27
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Transparent = True
    Height = 37
    Width = 200
    AnchorX = 539
  end
  object DataSource1: TDataSource
    DataSet = DATALAR.memData_yurtDisiYardimHakki
    Left = 128
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 296
    Top = 16
    object Kapat1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object akipAl1: TMenuItem
      Tag = -1
      Caption = 'Takip Al'
      ImageIndex = 76
      OnClick = cxButtonCClick
    end
  end
end
