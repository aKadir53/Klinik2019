object frmSKS_Dokumanlar: TfrmSKS_Dokumanlar
  Left = 0
  Top = 0
  Caption = 'frmSKS_Dokumanlar'
  ClientHeight = 625
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
    Height = 625
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
    ExceleGonder = False
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
      DataController.DetailKeyFieldNames = 'Kod'
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###.#0'
          Kind = skSum
          FieldName = 'borc'
        end
        item
          Format = '#,###.#0'
          Kind = skSum
          FieldName = 'alacak'
        end>
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
        Properties.Images = DATALAR.ImageList1
        Properties.Items = <
          item
            Description = 'Kontrol Edildi'
            ImageIndex = 153
            Value = 1
          end
          item
            Description = 'Kontrol Bekliyor...'
            ImageIndex = 38
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
        Properties.Images = DATALAR.ImageList1
        Properties.Items = <
          item
            Description = 'Onayland'#305
            ImageIndex = 132
            Value = 1
          end
          item
            Description = 'Onay Bekliyor'
            ImageIndex = 38
            Value = 0
          end
          item
            Description = 'Red'
            ImageIndex = 133
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
    end
    object cxGridDBBandedTableView1: TcxGridDBBandedTableView
      DataController.DataModeController.DetailInSQLMode = True
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.SmartRefresh = True
      DataController.DetailKeyFieldNames = 'Tan'#305'm'
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateIn = True
      DataController.Filter.TranslateLike = True
      DataController.KeyFieldNames = 'Tan'#305'm'
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = cxGridDBBandedColumn5
        end
        item
          Kind = skSum
          Column = cxGridDBBandedColumn5
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.InfoText = 'Arama Sat'#305'r'#305
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.DragDropText = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsBehavior.PullFocusing = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.BandCaptionsInColumnAlternateCaption = True
      OptionsView.BandHeaderEndEllipsis = True
      Bands = <
        item
          Caption = 'Geli'#351'ler'
        end>
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tan'#305'm'
        Width = 90
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        Caption = 'Tan'#305'm Ad'#305
        DataBinding.FieldName = 'ad'
        Width = 150
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        Caption = 'Toplam'
        DataBinding.FieldName = 'adet'
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'kurumT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###.#0'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'hastaT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '#,###.#0'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object cxGridDBBandedTableView2: TcxGridDBBandedTableView
      DataController.DetailKeyFieldNames = 'gelisNo'
      DataController.KeyFieldNames = 'gelisNo'
      DataController.MasterKeyFieldNames = 'gelisNo'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.AlwaysShowEditor = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Hareketler'
        end>
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAME1'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn7: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SATISF'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGridDBBandedTableView3: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
          Caption = 'i'#351'lemler'
        end>
    end
    object cxGridDBBandedTableView4: TcxGridDBBandedTableView
      DataController.DataModeController.DetailInSQLMode = True
      DataController.DataModeController.GridMode = True
      DataController.Filter.Active = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.BandCaptionsInColumnAlternateCaption = True
      Bands = <
        item
        end>
      object cxGridDBBandedColumn8: TcxGridDBBandedColumn
        Caption = 'Tanim'
        DataBinding.FieldName = 'TANIM'
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn9: TcxGridDBBandedColumn
        Caption = 'Hasta Ad'#305
        DataBinding.FieldName = 'HASTAADI'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn10: TcxGridDBBandedColumn
        Caption = 'Soyad'#305
        DataBinding.FieldName = 'HASTASOYADI'
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn11: TcxGridDBBandedColumn
        Caption = 'Hizmet Ad'#305
        DataBinding.FieldName = 'NAME1'
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn12: TcxGridDBBandedColumn
        Caption = 'Kurum F'
        DataBinding.FieldName = 'KSATISF'
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn13: TcxGridDBBandedColumn
        Caption = 'Hasta F'
        DataBinding.FieldName = 'SATISF'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
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
    Prepared = True
    SQL.Strings = (
      'select *,DK.tanimi KapsamAdi,DT.tanimi TurAdi from Dokumanlar D'
      '          join DokumanKapsamlari DK on DK.kod = D.Kapsam '
      '           join DokumanTurleri DT on DT.kod = D.tur '
      
        'left join DokumanlarRev DR on DR.dokumanid = D.id and DR.aktif =' +
        ' 1')
    Left = 368
    Top = 208
  end
  object DS_Dokumanlar: TDataSource
    DataSet = Ado_Dokumanlar
    Left = 416
    Top = 208
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
    Images = DATALAR.global_img_list4
    Left = 288
    Top = 320
    object T1: TMenuItem
      Tag = 1
      Caption = 'T'#252'm K'#305'r'#305'l'#305'mlar'#305' A'#231
      ImageIndex = 147
      OnClick = T2Click
    end
    object T2: TMenuItem
      Caption = 'T'#252'm K'#305'r'#305'l'#305'mlar'#305' Kapat'
      ImageIndex = 148
      OnClick = T2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object E1: TMenuItem
      Tag = -1
      Caption = 'Ekle'
      ImageIndex = 5
      OnClick = cxButtonCClick
    end
    object D1: TMenuItem
      Caption = 'D'#252'zenle'
      Visible = False
      OnClick = cxButtonCClick
    end
    object S1: TMenuItem
      Caption = 'Sil'
      Visible = False
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object onayDurum: TMenuItem
      Tag = -5
      Caption = 'Onay'
      ImageIndex = 154
      OnClick = cxButtonCClick
    end
    object kontrolDurum: TMenuItem
      Tag = -6
      Caption = 'Kontrol'
      ImageIndex = 61
      OnClick = cxButtonCClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object D2: TMenuItem
      Tag = -10
      Caption = 'Dokuman'#305' A'#231
      ImageIndex = 46
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
  end
end
