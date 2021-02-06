object frmStokDepoCikisList: TfrmStokDepoCikisList
  Left = 0
  Top = 0
  Caption = 'frmStokDepoCikisList'
  ClientHeight = 545
  ClientWidth = 773
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
  object Grid: TcxGridKadir
    Left = 0
    Top = 201
    Width = 773
    Height = 344
    Align = alClient
    TabOrder = 0
    ExceleGonder = False
    PopupForm = False
    ExplicitLeft = 8
    ExplicitTop = 280
    ExplicitWidth = 745
    ExplicitHeight = 193
    object GridList: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Bands = <
        item
          Caption = 'Stok Depo '#199#305'k'#305#351' List (Detay)'
          Width = 749
        end>
      object GridListiD: TcxGridDBBandedColumn
        DataBinding.FieldName = 'iD'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridListTARiH: TcxGridDBBandedColumn
        Caption = 'Malz.Kodu'
        DataBinding.FieldName = 'Kod'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 85
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridListevrakNo: TcxGridDBBandedColumn
        Caption = 'Malz. Tan'#305'm'#305
        DataBinding.FieldName = 'NAME1'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 185
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridListevrakTipi: TcxGridDBBandedColumn
        Caption = 'Adet'
        DataBinding.FieldName = 'adet'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 34
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridListBORC: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Hasta'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 140
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridListALACAK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Seans'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 45
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object GridListBAKIYE: TcxGridDBBandedColumn
        Caption = 'Doktor'
        DataBinding.FieldName = 'doktor'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 124
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object GridListBAKIYETIPI: TcxGridDBBandedColumn
        Caption = 'Makina'
        DataBinding.FieldName = 'makinaNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 37
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object GridListColumn1: TcxGridDBBandedColumn
        Caption = 'Salon'
        DataBinding.FieldName = 'salon'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object GridListColumn2: TcxGridDBBandedColumn
        Caption = 'Lot'
        DataBinding.FieldName = 'lot'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 64
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object GridLevel1: TcxGridLevel
      GridView = GridList
    end
  end
  object GridToplam: TcxGridKadir
    Left = 0
    Top = 0
    Width = 773
    Height = 193
    Align = alTop
    TabOrder = 1
    ExceleGonder = False
    PopupForm = False
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 601
    object GridListToplam: TcxGridDBBandedTableView
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###'
          Kind = skSum
          Column = cxGridDBBandedColumn4
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GridLines = glHorizontal
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      Bands = <
        item
          Caption = 'Stok Depo '#199#305'k'#305#351' List (Toplam)'
          Width = 500
        end>
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'iD'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        Caption = 'Malz.Kodu'
        DataBinding.FieldName = 'Kod'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        Caption = 'Malz. Tan'#305'm'#305
        DataBinding.FieldName = 'NAME1'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 196
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        Caption = #199#305'k'#305'lacak Adet'
        DataBinding.FieldName = 'Toplam'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = GridListToplam
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 193
    Width = 773
    Height = 8
    AlignSplitter = salTop
    ExplicitWidth = 352
  end
  object PersonelList: TListeAc
    ListeBaslik = 'Personel Listesi'
    TColcount = 3
    TColsW = '50,150,80'
    Table = 'PersonelKartView'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'dosyaNo'
      'Adi'
      'TCKIMLIKNO')
    KolonBasliklari.Strings = (
      'Dosya No'
      'Hasta Ad'#305
      'Tc Kimlik No')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 664
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 624
    Top = 64
    object Y1: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
  end
  object DataSource1: TDataSource
    Left = 664
    Top = 64
  end
end
