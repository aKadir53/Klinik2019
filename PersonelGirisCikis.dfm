object frmPersonelGirisCikis: TfrmPersonelGirisCikis
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmPersonelGirisCikis'
  ClientHeight = 597
  ClientWidth = 909
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Grid_GirisCikislar: TcxGridKadir
    Left = 24
    Top = 41
    Width = 937
    Height = 360
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    LookAndFeel.Kind = lfOffice11
    ExcelFileName = 'KiloOrder'
    ExceleGonder = True
    PopupForm = False
    object GridEkstre: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      OnEditValueChanged = GridEkstreEditValueChanged
      DataController.DataSource = DataSource1
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = GridEkstreColumn4
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Listelenen:###'
          Kind = skCount
          Column = GridEkstreTCKIMLIKNO
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Arama Yap'#305'n'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      Bands = <
        item
          Caption = 'Hasta Bilgisi'
          FixedKind = fkLeft
          Width = 312
        end
        item
          Caption = 'Cihaz Hareket Bilgileri'
          Width = 436
        end>
      object GridEkstredosyaNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'dosyaNo'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridEkstreTCKIMLIKNO: TcxGridDBBandedColumn
        Caption = 'Kimilk No'
        DataBinding.FieldName = 'TCKIMLIKNO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridEkstrehastaAdi: TcxGridDBBandedColumn
        Caption = 'Hasta Adi'
        DataBinding.FieldName = 'hastaAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridEkstreIdealKilo: TcxGridDBBandedColumn
        Caption = #304#351'lem Zaman'#305
        DataBinding.FieldName = 'Tarih'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImmediatePost = True
        Properties.Kind = ckDateTime
        HeaderAlignmentHorz = taCenter
        Width = 142
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridEkstreColumn1: TcxGridDBBandedColumn
        Caption = 'Tan'#305'ma Tipi'
        DataBinding.FieldName = 'VerifyMode'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 66
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridEkstreColumn2: TcxGridDBBandedColumn
        Caption = #304#351'lem Tipi'
        DataBinding.FieldName = 'InOutMode'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 56
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridEkstreColumn3: TcxGridDBBandedColumn
        Caption = 'Cihaz IP'
        DataBinding.FieldName = 'cihazIP'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 103
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridEkstreColumn4: TcxGridDBBandedColumn
        Caption = 'V.Mola(Dak.)'
        DataBinding.FieldName = 'molaKullanim'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 69
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridEkstreColumn5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object vardiyaColumns: TcxGridDBBandedColumn
        Caption = 'Vardiya'
        DataBinding.FieldName = 'vardiya'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImmediatePost = True
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = GridEkstre
      Options.DetailFrameColor = clHighlight
    end
  end
  object Grid_Raporlama: TcxGridKadir
    Left = 144
    Top = 464
    Width = 529
    Height = 313
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu2
    TabOrder = 1
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    ExceleGonder = False
    PopupForm = False
    object Grid_RaporlamaList: TcxGridDBBandedTableView
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Filtre'
      FilterRow.Visible = True
      OptionsCustomize.ColumnHiding = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.Indicator = True
      Bands = <
        item
        end>
    end
    object cxGridLevel2: TcxGridLevel
      Caption = 'Hastalar'
      GridView = Grid_RaporlamaList
      Options.DetailFrameColor = clHighlight
    end
  end
  object ado: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterPost = adoAfterPost
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      ''
      
        'select P.dosyaNo,P.HASTASOYADI,P.HASTASOYADI,P.TCKIMLIKNO,h.* fr' +
        'om PersonelKart P'
      
        'join PDKS_Hareketler h on cast(h.EnrollNumber as varchar) = P.HU' +
        'VIYETNO'
      
        'where convert(varchar,Tarih,112) between '#39'20210131'#39' and '#39'2021023' +
        '1'#39' and Aktif = 1'
      ''
      '')
    Top = 264
  end
  object DataSource1: TDataSource
    DataSet = ado
    Left = 72
    Top = 344
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 136
    Top = 56
    object Y1: TMenuItem
      Tag = -5
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = Y1Click
    end
    object E1: TMenuItem
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = E1Click
    end
    object H1: TMenuItem
      Tag = -2
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 184
    Top = 48
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 472
    Top = 224
    object T1: TMenuItem
      Caption = 'Toplam'
      OnClick = O1Click
    end
    object G1: TMenuItem
      Tag = 4
      Caption = 'Grup Toplam'
      OnClick = O1Click
    end
    object O1: TMenuItem
      Tag = 1
      Caption = 'Ortalama'
      Visible = False
      OnClick = O1Click
    end
    object MenuItem1: TMenuItem
      Tag = 2
      Caption = 'En B'#252'y'#252'k'
      Visible = False
      OnClick = O1Click
    end
    object E2: TMenuItem
      Tag = 3
      Caption = 'En K'#252#231#252'k'
      Visible = False
      OnClick = O1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object E3: TMenuItem
      Tag = 9
      Caption = 'Excel'
      OnClick = O1Click
    end
  end
end
