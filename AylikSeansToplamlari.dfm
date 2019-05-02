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
    ExplicitTop = 58
    ExplicitWidth = 519
    ExplicitHeight = 356
    ClientRectBottom = 559
    ClientRectLeft = 3
    ClientRectRight = 867
    ClientRectTop = 3
    object cxGrid_Seans: TcxGridKadir
      Left = 3
      Top = 3
      Width = 606
      Height = 556
      Cursor = crHandPoint
      Align = alLeft
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      ExceleGonder = False
      ExplicitTop = 7
      object ListeS: TcxGridDBBandedTableView
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
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
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 35
        OptionsView.BandHeaderHeight = 21
        Bands = <
          item
            Caption = 'Y'#305'll'#305'k Seans Grafi'#287'i'
            FixedKind = fkLeft
            Width = 558
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
          Width = 186
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object ListeSColumn2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Toplam'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Styles.Content = cxStyle1
          Width = 96
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object ListeSColumn3: TcxGridDBBandedColumn
          Caption = 'Grafik'
          DataBinding.FieldName = 'yuzde'
          PropertiesClassName = 'TcxProgressBarProperties'
          Properties.AnimationSpeed = 1
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 276
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = ListeS
      end
    end
  end
  object DataSource1: TDataSource
    Left = 672
    Top = 96
  end
  object cxStyleRepository1: TcxStyleRepository
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
