object frmSKS_Dokumanlar: TfrmSKS_Dokumanlar
  Left = 0
  Top = 0
  Caption = 'frmSKS_Dokumanlar'
  ClientHeight = 633
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object kapsam: TcxImageComboBox
    Left = 584
    Top = 257
    Properties.Images = DATALAR.imag32png
    Properties.Items = <>
    TabOrder = 0
    Visible = False
    Width = 121
  end
  object tur: TcxImageComboBox
    Left = 16
    Top = 419
    Properties.Items = <>
    TabOrder = 1
    Visible = False
    Width = 121
  end
  object cxGrid2: TcxGridKadir
    Left = 0
    Top = 0
    Width = 972
    Height = 633
    Align = alClient
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    ExcelFileName = 'SKS_DokumanListesi'
    ExceleGonder = True
    PopupForm = False
    object gridDokumanlar: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnDblClick = gridDokumanlarDblClick
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
      DataController.DataSource = DS_Dokumanlar
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      FilterRow.InfoText = 'Kay'#305't Filitrele'
      FilterRow.SeparatorColor = 8454143
      FilterRow.SeparatorWidth = 5
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
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.IndicatorWidth = 0
      OptionsView.RowSeparatorColor = clBlack
      Styles.Group = cxStyle1
      object gridDokumanlarid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Width = 20
      end
      object gridDokumanlardokumanNo: TcxGridDBColumn
        Caption = 'D'#246'k'#252'man No'
        DataBinding.FieldName = 'dokumanNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 75
      end
      object gridDokumanlarColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'dokumanTip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'SKS'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Di'#287'er'
            Value = 2
          end
          item
            Description = '15504'
            Value = 4
          end
          item
            Description = '27001'
            Value = 3
          end>
        Visible = False
        GroupIndex = 0
        IsCaptionAssigned = True
      end
      object gridDokumanlartur: TcxGridDBColumn
        Caption = 'T'#252'r'
        DataBinding.FieldName = 'tur'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 36
      end
      object gridDokumanlaradi: TcxGridDBColumn
        Caption = 'D'#246'k'#252'man Tan'#305'm'#305
        DataBinding.FieldName = 'adi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Content = cxStyle2
        Styles.Header = cxStyle2
        Width = 249
      end
      object KapsamAdi: TcxGridDBColumn
        DataBinding.FieldName = 'KapsamAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        GroupIndex = 1
        Width = 87
        IsCaptionAssigned = True
      end
      object gridDokumanlarkapsam: TcxGridDBColumn
        DataBinding.FieldName = 'kapsam'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.imag32png
        Properties.Items = <
          item
            Description = 'ATIK YONET'#304'M'#304
            ImageIndex = 59
            Value = 'AY'
          end>
        Properties.LargeImages = DATALAR.imag32png
        Visible = False
        HeaderGlyphAlignmentHorz = taCenter
        Width = 107
        IsCaptionAssigned = True
      end
      object gridDokumanlarsira: TcxGridDBColumn
        DataBinding.FieldName = 'sira'
        Visible = False
        Width = 37
      end
      object gridDokumanlardurum: TcxGridDBColumn
        DataBinding.FieldName = 'durum'
        Visible = False
        Width = 110
      end
      object gridDokumanlaramaci: TcxGridDBColumn
        DataBinding.FieldName = 'amaci'
        Visible = False
        Width = 142
      end
      object gridDokumanlarkaynak: TcxGridDBColumn
        DataBinding.FieldName = 'kaynak'
        Visible = False
        Width = 55
      end
      object gridDokumanlarkullanan: TcxGridDBColumn
        DataBinding.FieldName = 'kullanan'
        Visible = False
        Width = 28
      end
      object gridDokumanlarraporlayan: TcxGridDBColumn
        DataBinding.FieldName = 'raporlayan'
        Visible = False
        Width = 28
      end
      object gridDokumanlarkullanmaPeryot: TcxGridDBColumn
        DataBinding.FieldName = 'kullanmaPeryot'
        Visible = False
        Width = 28
      end
      object gridDokumanlarraporlamaPeryot: TcxGridDBColumn
        DataBinding.FieldName = 'raporlamaPeryot'
        Visible = False
        Width = 28
      end
      object gridDokumanlaryaynTarih: TcxGridDBColumn
        Caption = 'Yay'#305'n Tarihi'
        DataBinding.FieldName = 'yayinTarih'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 81
      end
      object gridDokumanlarraporlamaKime: TcxGridDBColumn
        DataBinding.FieldName = 'raporlamaKime'
        Visible = False
        Width = 29
      end
      object gridDokumanlargozdenGecirmePeryot: TcxGridDBColumn
        DataBinding.FieldName = 'gozdenGecirmePeryot'
        Visible = False
        Width = 29
      end
      object gridDokumanlarsonrakiGGTarihi: TcxGridDBColumn
        Caption = 'G'#246'zden Ge'#231'irme Tarihi'
        DataBinding.FieldName = 'sonrakiGGTarihi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 94
      end
      object gridDokumanlardenetci: TcxGridDBColumn
        DataBinding.FieldName = 'denetci'
        Visible = False
        Width = 30
      end
      object gridDokumanlardepartman: TcxGridDBColumn
        DataBinding.FieldName = 'departman'
        Visible = False
        Width = 26
      end
      object gridDokumanlarmeslek: TcxGridDBColumn
        DataBinding.FieldName = 'meslek'
        Visible = False
        Width = 29
      end
      object turAdi: TcxGridDBColumn
        DataBinding.FieldName = 'TurAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        GroupIndex = 2
        Width = 46
        IsCaptionAssigned = True
      end
      object gridDokumanlarKontrol: TcxGridDBColumn
        Caption = 'Kontrol Durum'
        DataBinding.FieldName = 'kontrolDurum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            Description = 'Kontrol Edildi'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Kontrol Bekliyor...'
            ImageIndex = 41
            Value = 0
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 121
      end
      object gridDokumanlarOnay: TcxGridDBColumn
        Caption = 'Onay Durum'
        DataBinding.FieldName = 'onayDurum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            Description = 'Onayland'#305
            ImageIndex = 7
            Value = 1
          end
          item
            Description = 'Onay Bekliyor'
            ImageIndex = 41
            Value = 0
          end
          item
            Description = 'Red'
            ImageIndex = 1
            Value = 2
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 115
      end
      object gridDokumanlarRev: TcxGridDBColumn
        Caption = 'Rev.'
        DataBinding.FieldName = 'rev'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 62
      end
      object gridDokumanlarColumn2: TcxGridDBColumn
        Caption = 'Revizyon Tarihi'
        DataBinding.FieldName = 'revTarihi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
      end
      object gridDokumanlarColumn3: TcxGridDBColumn
        Caption = 'PDF'
        DataBinding.FieldName = 'PDFVar'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            ImageIndex = 110
            Value = 1
          end
          item
            Value = 0
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 40
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = gridDokumanlar
      Options.DetailFrameColor = clHighlight
    end
  end
  object Ado_Dokumanlar: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_DokumanListesi '#39'000005'#39
      '')
    Left = 368
    Top = 208
  end
  object DS_Dokumanlar: TDataSource
    DataSet = Ado_Dokumanlar
    Left = 368
    Top = 272
  end
  object ADO_Kapsam: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'DokumanKapsamlari'
    Left = 568
    Top = 304
  end
  object DS_Kapsam: TDataSource
    DataSet = ADO_Kapsam
    Left = 568
    Top = 256
  end
  object DS_Tur: TDataSource
    DataSet = ADO_Tur
    Left = 120
    Top = 176
  end
  object ADO_Tur: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'DokumanTurleri'
    Left = 120
    Top = 224
  end
  object DS_User: TDataSource
    DataSet = ADO_User
    Left = 136
    Top = 416
  end
  object ADO_User: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *,DK.tanimi KapsamAdi,DT.tanimi TurAdi from Dokumanlar D'
      '          join DokumanKapsamlari DK on DK.kod = D.Kapsam '
      '           join DokumanTurleri DT on DT.kod = D.tur ')
    Left = 184
    Top = 416
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 288
    Top = 320
    object T1: TMenuItem
      Tag = 1
      Caption = 'T'#252'm K'#305'r'#305'l'#305'mlar'#305' A'#231
      ImageIndex = 16
      OnClick = T2Click
    end
    object T2: TMenuItem
      Caption = 'T'#252'm K'#305'r'#305'l'#305'mlar'#305' Kapat'
      ImageIndex = 14
      OnClick = T2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object E1: TMenuItem
      Tag = -1
      Caption = 'Yeni'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object D1: TMenuItem
      Caption = 'D'#252'zenle'
      ImageIndex = 32
      Visible = False
      OnClick = cxButtonCClick
    end
    object S1: TMenuItem
      Caption = 'Sil'
      ImageIndex = 43
      Visible = False
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object onayDurum: TMenuItem
      Tag = -5
      Caption = 'Onay'
      ImageIndex = 7
      OnClick = cxButtonCClick
    end
    object kontrolDurum: TMenuItem
      Tag = -6
      Caption = 'Kontrol'
      ImageIndex = 0
      OnClick = cxButtonCClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object D2: TMenuItem
      Tag = -10
      Caption = 'Dokuman'#305' A'#231
      ImageIndex = 101
      OnClick = cxButtonCClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object R1: TMenuItem
      Tag = -11
      Caption = 'RTF den '#304#231'erik Al'
      OnClick = cxButtonCClick
    end
    object N5: TMenuItem
      Tag = -12
      Caption = #350'ablon'
      OnClick = cxButtonCClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object L1: TMenuItem
      Tag = 9997
      Caption = 'Listeyi Excele At'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 112
    Top = 80
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16770764
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end
