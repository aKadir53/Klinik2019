object frmISGKurulToplanti: TfrmISGKurulToplanti
  Left = 1
  Top = 1
  Caption = 'ISG Kurul Toplant'#305
  ClientHeight = 597
  ClientWidth = 1000
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
  object KurulEkipGrid: TcxGridKadir
    Left = 168
    Top = 8
    Width = 465
    Height = 150
    TabOrder = 0
    ExceleGonder = False
    PopupForm = False
    object KurulEkipGridList: TcxGridDBBandedTableView
      PopupMenu = PopupMenu2
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Bands = <
        item
          Caption = 'Komite Ekibi'
          Styles.Header = cxStyle8
          Width = 388
        end>
      object KurulEkipGridListAdiSoyadi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AdiSoyadi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 91
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object KurulEkipGridListGorevTanim: TcxGridDBBandedColumn
        Caption = 'G'#246'revi'
        DataBinding.FieldName = 'Gorevi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object KurulEkipGridListeMail: TcxGridDBBandedColumn
        DataBinding.FieldName = 'eMail'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 99
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object KurulEkipGridListTelefon: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Telefon'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 102
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object KurulEkipGridListColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'katilim'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = '0'
        Options.Editing = False
        Width = 23
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object KurulEkipGridListColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = KurulEkipGridList
    end
  end
  object KurulMaddeler: TcxGridKadir
    Left = 24
    Top = 152
    Width = 777
    Height = 169
    TabOrder = 1
    ExceleGonder = False
    PopupForm = False
    object cxGridDBTableView1: TcxGridDBTableView
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
      object cxGridDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'SirketRiskID'
        Visible = False
      end
      object cxGridDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGridDBColumn3: TcxGridDBColumn
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
      object cxGridDBColumn4: TcxGridDBColumn
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
      object cxGridDBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'Tehlike'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DropDownRows = 20
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 122
      end
      object cxGridDBColumn6: TcxGridDBColumn
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
      object cxGridDBColumn7: TcxGridDBColumn
        Caption = 'Al'#305'nmas'#305' Gereken '#214'nlemler'
        DataBinding.FieldName = 'Onlemler'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
      object cxGridDBColumn8: TcxGridDBColumn
        DataBinding.FieldName = 'Olasilik'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.DropDownRows = 10
        Properties.ImmediatePost = True
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn9: TcxGridDBColumn
        DataBinding.FieldName = 'Frekans'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn10: TcxGridDBColumn
        DataBinding.FieldName = 'Siddet'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Width = 60
      end
      object cxGridDBColumn11: TcxGridDBColumn
        DataBinding.FieldName = 'Risk'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.0'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGridDBColumn12: TcxGridDBColumn
        DataBinding.FieldName = 'RDS'
        Options.Editing = False
      end
      object cxGridDBColumn13: TcxGridDBColumn
        DataBinding.FieldName = 'MevcutOnlem'
      end
      object cxGridDBColumn14: TcxGridDBColumn
        DataBinding.FieldName = 'Sorumlu'
      end
      object cxGridDBColumn15: TcxGridDBColumn
        DataBinding.FieldName = 'Termin'
      end
      object cxGridDBColumn16: TcxGridDBColumn
        DataBinding.FieldName = 'Gerceklesme'
      end
      object cxGridDBColumn17: TcxGridDBColumn
        DataBinding.FieldName = 'Olasilik_2'
      end
      object cxGridDBColumn18: TcxGridDBColumn
        DataBinding.FieldName = 'Frekans_2'
      end
      object cxGridDBColumn19: TcxGridDBColumn
        DataBinding.FieldName = 'Siddet_2'
      end
      object cxGridDBColumn20: TcxGridDBColumn
        DataBinding.FieldName = 'Risk_2'
      end
      object cxGridDBColumn21: TcxGridDBColumn
        DataBinding.FieldName = 'RDS_2'
      end
      object cxGridDBColumn22: TcxGridDBColumn
        DataBinding.FieldName = 'yasalDayanak'
      end
    end
    object cxGridDBBandedTableView1: TcxGridDBBandedTableView
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
    object Satirlar: TcxGridDBBandedTableView
      Navigator.Buttons.OnButtonClick = SatirlarNavigatorButtonsButtonClick
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
      Navigator.Visible = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.SeparatorColor = 8454143
      OptionsData.DeletingConfirmation = False
      OptionsView.CellAutoHeight = True
      OptionsView.DataRowHeight = 21
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Komite Toplant'#305' G'#252'ndem Maddeleri  , Karar ve Aksiyonlar'
          FixedKind = fkLeft
          Styles.Header = cxStyle8
          Width = 460
        end>
      object SatirlarColumn1: TcxGridDBBandedColumn
        Caption = 'Sira No'
        DataBinding.FieldName = 'siraNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 33
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object SatirlarColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Madde'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 659
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object SatirlarColumn3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Aksiyon'
        PropertiesClassName = 'TcxMemoProperties'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Width = 156
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object KurulMaddelerLevel1: TcxGridLevel
      GridView = Satirlar
    end
  end
  object DofList: TcxGridKadir
    Left = 8
    Top = 343
    Width = 993
    Height = 169
    TabOrder = 2
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
    object DofListesi: TcxGridDBBandedTableView
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
          Caption = 'Komite Toplat'#305' Listesi'
          FixedKind = fkLeft
          HeaderAlignmentHorz = taLeftJustify
          Styles.Header = cxStyle8
          Width = 1500
        end>
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sirketSahaGozetimId'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object DofListesiColumn1: TcxGridDBBandedColumn
        Caption = 'Yil'
        DataBinding.FieldName = 'yil'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object DofListesiColumn2: TcxGridDBBandedColumn
        Caption = 'Ay'
        DataBinding.FieldName = 'ay'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object DofListesiColumn3: TcxGridDBBandedColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'ToplantiZamani'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object DofListesiColumn4: TcxGridDBBandedColumn
        Caption = 'Toplanti Yeri'
        DataBinding.FieldName = 'ToplantiYeri'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 98
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
        Caption = 'T.ID'
        DataBinding.FieldName = 'id'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 30
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Maddeler'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        Properties.ScrollBars = ssBoth
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 263
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        Caption = 'Toplanti Tanimi'
        DataBinding.FieldName = 'ToplantiTanimi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 149
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Kararlar'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssBoth
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 268
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = DofListesi
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 24
    Top = 112
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
    object cxStyle7: TcxStyle
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
    object cxStyle9: TcxStyle
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 16
    Top = 56
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
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 104
    Top = 8
    object Y1: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      object E1: TMenuItem
        Tag = -20
        Caption = 'Toplant'#305' '#199'a'#287'r'#305' Formu'
        OnClick = cxButtonCClick
      end
      object T1: TMenuItem
        Tag = -21
        Caption = 'Toplant'#305' Tutana'#287#305
        OnClick = cxButtonCClick
      end
    end
    object M2: TMenuItem
      Caption = #304'lgililere Mail'
      ImageIndex = 10
      object M1: TMenuItem
        Tag = -30
        Caption = #199'a'#287'r'#305' Formu'
        ImageIndex = 10
        OnClick = cxButtonCClick
      end
      object T2: TMenuItem
        Tag = -40
        Caption = 'Toplant'#305' Tutana'#287#305
        OnClick = cxButtonCClick
      end
    end
    object W1: TMenuItem
      Tag = -50
      Caption = 'Whatsaap Bildirim'
      ImageIndex = 143
      OnClick = cxButtonCClick
    end
    object E2: TMenuItem
      Tag = -50
      Caption = 'Komite ve Ekip Tan'#305'mla'
      ImageIndex = 109
      OnClick = E2Click
    end
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
  end
  object List: TListeAc
    TColcount = 0
    TColsW = '20,300'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'kod'
      'tanimi')
    KolonBasliklari.Strings = (
      'Kod'
      'Risk Tanimi')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'lilian'
    Grup = False
    GrupCol = 0
    Left = 104
    Top = 64
  end
  object PopupMenu2: TPopupMenu
    Left = 664
    Top = 24
    object K1: TMenuItem
      Tag = 1
      Caption = 'Kat'#305'ld'#305
      OnClick = K2Click
    end
    object K2: TMenuItem
      Caption = 'Kat'#305'lmad'#305
      OnClick = K2Click
    end
  end
end
