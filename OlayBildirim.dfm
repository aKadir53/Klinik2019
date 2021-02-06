object frmOlayBildirim: TfrmOlayBildirim
  Left = 0
  Top = 0
  Caption = 'frmOlayBildirim'
  ClientHeight = 421
  ClientWidth = 764
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
  object List: TcxGridKadir
    Left = 56
    Top = 172
    Width = 993
    Height = 169
    TabOrder = 0
    ExceleGonder = False
    PopupForm = False
    object cxGridDBTableView2: TcxGridDBTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.NoDataToDisplayInfoText = 'Faturaya Eklenmi'#351' Sat'#305'r Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      object cxGridDBColumn23: TcxGridDBColumn
        DataBinding.FieldName = 'SirketRiskID'
        Visible = False
      end
      object cxGridDBColumn24: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGridDBColumn25: TcxGridDBColumn
        Caption = 'B'#246'l'#252'm'
        DataBinding.FieldName = 'Bolum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object cxGridDBColumn26: TcxGridDBColumn
        Caption = 'Tehlike Kayna'#287#305
        DataBinding.FieldName = 'TehlikeKaynagi'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 111
      end
      object cxGridDBColumn27: TcxGridDBColumn
        DataBinding.FieldName = 'Tehlike'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 122
      end
      object cxGridDBColumn28: TcxGridDBColumn
        Caption = 'Risk Tan'#305'm'#305
        DataBinding.FieldName = 'Risk_tanim'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        Properties.MultiLineText = True
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBColumn29: TcxGridDBColumn
        Caption = 'Al'#305'nmas'#305' Gereken '#214'nlemler'
        DataBinding.FieldName = 'Onlemler'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBColumn30: TcxGridDBColumn
        DataBinding.FieldName = 'Olasilik'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.DropDownRows = 10
        Properties.ImmediatePost = True
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn31: TcxGridDBColumn
        DataBinding.FieldName = 'Frekans'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn32: TcxGridDBColumn
        DataBinding.FieldName = 'Siddet'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn33: TcxGridDBColumn
        DataBinding.FieldName = 'Risk'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGridDBColumn34: TcxGridDBColumn
        DataBinding.FieldName = 'RDS'
        Options.Editing = False
      end
      object cxGridDBColumn35: TcxGridDBColumn
        DataBinding.FieldName = 'MevcutOnlem'
      end
      object cxGridDBColumn36: TcxGridDBColumn
        DataBinding.FieldName = 'Sorumlu'
      end
      object cxGridDBColumn37: TcxGridDBColumn
        DataBinding.FieldName = 'Termin'
      end
      object cxGridDBColumn38: TcxGridDBColumn
        DataBinding.FieldName = 'Gerceklesme'
      end
      object cxGridDBColumn39: TcxGridDBColumn
        DataBinding.FieldName = 'Olasilik_2'
      end
      object cxGridDBColumn40: TcxGridDBColumn
        DataBinding.FieldName = 'Frekans_2'
      end
      object cxGridDBColumn41: TcxGridDBColumn
        DataBinding.FieldName = 'Siddet_2'
      end
      object cxGridDBColumn42: TcxGridDBColumn
        DataBinding.FieldName = 'Risk_2'
      end
      object cxGridDBColumn43: TcxGridDBColumn
        DataBinding.FieldName = 'RDS_2'
      end
      object cxGridDBColumn44: TcxGridDBColumn
        DataBinding.FieldName = 'yasalDayanak'
      end
    end
    object cxGridDBBandedTableView2: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.Visible = True
      OptionsView.NoDataToDisplayInfoText = 'Faturaya Eklenmi'#351' Sat'#305'r Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooterMultiSummaries = True
      Bands = <
        item
        end>
    end
    object Liste: TcxGridDBBandedTableView
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = cxGridDBBandedColumn3
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.SeparatorColor = 8454143
      OptionsCustomize.BandMoving = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      Bands = <
        item
          Caption = 'Olay Bildirim Listesi'
          FixedKind = fkLeft
          HeaderAlignmentHorz = taLeftJustify
          Width = 1500
        end>
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sirketSahaGozetimId'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ListeColumn1: TcxGridDBBandedColumn
        Caption = 'Yil'
        DataBinding.FieldName = 'yil'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 32
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ListeColumn2: TcxGridDBBandedColumn
        Caption = 'Ay'
        DataBinding.FieldName = 'ay'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ListeColumn3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tarih'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ListeColumn4: TcxGridDBBandedColumn
        Caption = 'Konu'
        DataBinding.FieldName = 'KonuAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 128
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 25
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        Caption = 'Alt Parametresi'
        DataBinding.FieldName = 'AltParametreAdi'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        Properties.ScrollBars = ssBoth
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 163
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        Caption = 'Ana Parametresi'
        DataBinding.FieldName = 'AnaParametreAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 156
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        Caption = 'Gosterge Kodu'
        DataBinding.FieldName = 'gostergeKodu'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssBoth
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 71
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object ListeColumn5: TcxGridDBBandedColumn
        Caption = 'A'#231#305'klama'
        DataBinding.FieldName = 'aciklama'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssBoth
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 210
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object ListeColumn6: TcxGridDBBandedColumn
        Caption = 'Gorus Oneri'
        DataBinding.FieldName = 'gorusOneri'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssBoth
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = Liste
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 400
    Top = 40
    object Y1: TMenuItem
      Tag = -1
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      object O2: TMenuItem
        Tag = -1
        Caption = 'Olay Bildirim Formu'
        OnClick = cxButtonCClick
      end
      object O1: TMenuItem
        Tag = -2
        Caption = 'Olay Bildirim Analiz Listesi'
        OnClick = cxButtonCClick
      end
    end
    object g1: TMenuItem
      Caption = 'grs.saglik.gov.tr (Bildirim Yap)'
      ImageIndex = 15
    end
  end
  object Olaylar: TListeAc
    ListeBaslik = 'Olay Bildirimleri'
    TColcount = 5
    TColsW = '50,80,100,150,200'
    Table = 'OlayBildirimView'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'id'
      'Tarih'
      'KonuAdi'
      'anaParametreAdi'
      'altParametreAdi')
    KolonBasliklari.Strings = (
      'ID'
      'Tarih'
      'Konu'
      'AnaModul'
      'AltModul')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 528
    Top = 88
  end
end
