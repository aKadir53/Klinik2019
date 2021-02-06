object frmAylikSeansToplamlari: TfrmAylikSeansToplamlari
  Left = 355
  Top = 182
  BorderStyle = bsDialog
  Caption = 'frmAylikSeansToplamlari'
  ClientHeight = 566
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Aysayfalar: TcxTabControl
    Left = 0
    Top = 0
    Width = 874
    Height = 566
    Align = alClient
    TabOrder = 0
    Properties.Style = 11
    Properties.TabPosition = tpBottom
    LookAndFeel.NativeStyle = False
    OnChange = AysayfalarChange
    ClientRectBottom = 559
    ClientRectLeft = 3
    ClientRectRight = 867
    ClientRectTop = 3
    object cxGrid_Seans: TcxGridKadir
      Left = 529
      Top = 3
      Width = 422
      Height = 556
      Cursor = crHandPoint
      Align = alLeft
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      ExceleGonder = False
      PopupForm = False
      ExplicitLeft = 321
      object ListeS: TcxGridDBBandedTableView
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = ListeSColumn2
          end
          item
            Format = '#,###.00'
            Kind = skSum
            Column = ListeSColumn4
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.GroupBySorting = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.NoDataToDisplayInfoText = 'Listelenecek Kay'#305't Yok'
        OptionsView.DataRowHeight = 27
        OptionsView.Footer = True
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 35
        OptionsView.BandHeaderHeight = 21
        Bands = <
          item
            Caption = 'Y'#305'll'#305'k Seans Grafi'#287'i'
            FixedKind = fkLeft
            Styles.Header = cxStyle1
            Width = 397
          end>
        object ListeSColumn1: TcxGridDBBandedColumn
          Caption = 'Ay'
          DataBinding.FieldName = 'ayadi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Content = cxStyle1
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object ListeSColumn2: TcxGridDBBandedColumn
          Caption = 'Seans Toplam'
          DataBinding.FieldName = 'Toplam'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Content = cxStyle1
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object ListeSColumn4: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FaturaTutar'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = '#,###.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Content = cxStyle1
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object ListeSColumn3: TcxGridDBBandedColumn
          Caption = 'Grafik'
          DataBinding.FieldName = 'yuzde'
          PropertiesClassName = 'TcxProgressBarProperties'
          Properties.AnimationSpeed = 1
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 128
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object ListeSColumn5: TcxGridDBBandedColumn
          Caption = 'Hasta Sayi'
          DataBinding.FieldName = 'HastaSayi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = ListeS
      end
    end
    object GridYil: TcxGridKadir
      Left = 3
      Top = 3
      Width = 526
      Height = 556
      Cursor = crHandPoint
      Align = alLeft
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      ExceleGonder = False
      PopupForm = False
      object ListeYil: TcxGridDBBandedTableView
        OnFocusedRecordChanged = ListeYilFocusedRecordChanged
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = cxGridDBBandedColumn2
          end
          item
            Format = '#,###.00'
            Kind = skSum
            Column = cxGridDBBandedColumn3
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsCustomize.ColumnSorting = False
        OptionsCustomize.GroupBySorting = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.NoDataToDisplayInfoText = 'Listelenecek Kay'#305't Yok'
        OptionsView.DataRowHeight = 27
        OptionsView.Footer = True
        OptionsView.GridLines = glHorizontal
        OptionsView.HeaderHeight = 35
        OptionsView.BandHeaderHeight = 21
        Bands = <
          item
            Caption = 'Y'#305'll'#305'k Seans Grafi'#287'i'
            FixedKind = fkLeft
            Width = 291
          end>
        object ListeYilColumn2: TcxGridDBBandedColumn
          Caption = 'Sirket :'
          DataBinding.FieldName = 'tanimi'
          Visible = False
          GroupIndex = 0
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn1: TcxGridDBBandedColumn
          Caption = 'Y'#305'l'
          DataBinding.FieldName = 'yil'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Content = cxStyle1
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn2: TcxGridDBBandedColumn
          Caption = 'Seans Toplam'
          DataBinding.FieldName = 'Toplam'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Content = cxStyle1
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FaturaTutar'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = '#,###.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Content = cxStyle1
          Width = 81
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn5: TcxGridDBBandedColumn
          Caption = 'Hasta Sayi'
          DataBinding.FieldName = 'HastaSayi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object ListeYilColumn1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'sirketKod'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = ListeYil
      end
    end
  end
  object DataSource1: TDataSource
    Left = 672
    Top = 96
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 240
    Top = 152
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end
