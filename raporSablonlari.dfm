object frmRaporSablon: TfrmRaporSablon
  Left = 350
  Top = 81
  BorderStyle = bsDialog
  Caption = 'frmRaporSablon'
  ClientHeight = 545
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 545
    Align = alLeft
    TabOrder = 0
    object DBGridEh3: TDBGridEh
      Left = 2
      Top = 425
      Width = 263
      Height = 487
      DataSource = DataSource1
      DynProps = <>
      EvenRowColor = clInactiveBorder
      Flat = True
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.Color = clWindow
      IndicatorOptions = [gioShowRowIndicatorEh]
      ParentFont = False
      RowHeight = 18
      TabOrder = 0
      TreeViewParams.GlyphStyle = tvgsClassicEh
      TreeViewParams.ShowTreeLines = False
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Id'
          Footers = <>
          Title.Caption = 'S'#305'ra'
          Width = 24
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'sablonAdi'
          Footers = <>
          Title.Caption = #350'ablon Ad'#305
          Width = 181
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 303
      Height = 543
      Align = alClient
      TabOrder = 1
      object cxGridHastaGelis: TcxGridDBTableView
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        DataController.DataModeController.GridMode = True
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.Visible = True
        OptionsData.Deleting = False
        OptionsView.GroupByBox = False
        object cxGridHastaGelissablonAdi: TcxGridDBColumn
          Caption = #350'ablonAd'#305
          DataBinding.FieldName = 'SablonTanimi'
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 161
        end
        object cxGridHastaGelisdoktor: TcxGridDBColumn
          Caption = 'Doktor'
          DataBinding.FieldName = 'doktor'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <>
          HeaderAlignmentHorz = taCenter
          Options.Filtering = False
          Width = 116
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridHastaGelis
      end
    end
  end
  object Panel2: TPanel
    Left = 305
    Top = 0
    Width = 683
    Height = 545
    Align = alClient
    TabOrder = 1
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = ' Etken Madde'
      TabOrder = 0
      Height = 256
      Width = 681
      object cxGrid2: TcxGrid
        Left = 3
        Top = 15
        Width = 630
        Height = 231
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = -2
        ExplicitWidth = 632
        ExplicitHeight = 256
        object cxGridDBTableView1: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1ilacKodu: TcxGridDBColumn
            Caption = 'MaddeKodu'
            DataBinding.FieldName = 'etkenMaddeKodu'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 65
          end
          object cxGridDBTableView1ilacAdi: TcxGridDBColumn
            Caption = 'Madde Ad'#305
            DataBinding.FieldName = 'etkenMaddeAdi'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 222
          end
          object cxGridDBTableView1adet: TcxGridDBColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'adet'
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 37
          end
          object cxGridDBTableView1kullanZamanUnit: TcxGridDBColumn
            Caption = 'Peryot Birim'
            DataBinding.FieldName = 'kullanimPeriyotBirim'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Items = <>
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 62
          end
          object cxGridDBTableView1kullanimZaman: TcxGridDBColumn
            Caption = 'Peryot Adet'
            DataBinding.FieldName = 'kullanimPeriyot'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 66
          end
          object cxGridDBTableView1kullanimAdet2: TcxGridDBColumn
            Caption = 'Kullan'#305'm Doz(1)'
            DataBinding.FieldName = 'kullanimDoz1'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 78
          end
          object cxGridDBTableView1kullanimAdet: TcxGridDBColumn
            Caption = 'Kullan'#305'm Doz(2)'
            DataBinding.FieldName = 'kullanimDoz2'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 80
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 633
        Top = 15
        Align = alRight
        PanelStyle.Active = True
        TabOrder = 1
        ExplicitLeft = 634
        ExplicitTop = -2
        ExplicitHeight = 256
        Height = 231
        Width = 45
        object BtnIlacEkle: TcxButtonKadir
          Tag = 1
          Left = 2
          Top = 2
          Width = 41
          Height = 35
          Align = alTop
          Caption = 'Ekle'
          TabOrder = 0
          OnClick = BtnIlacEkleClick
          NewButtonVisible = False
        end
        object cxButtonKadirTaniSil: TcxButtonKadir
          Tag = 2
          Left = 2
          Top = 37
          Width = 41
          Height = 35
          Align = alTop
          Caption = 'Sil'
          TabOrder = 1
          OnClick = cxButtonKadirTaniSilClick
          NewButtonVisible = False
        end
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 1
      Top = 387
      Align = alClient
      Caption = 'A'#231#305'klama'
      TabOrder = 1
      Height = 157
      Width = 681
      object cxDBMemo1: TcxDBMemo
        Left = 3
        Top = 15
        Align = alClient
        DataBinding.DataField = 'Aciklama'
        DataBinding.DataSource = DataSource3
        TabOrder = 0
        Height = 132
        Width = 630
      end
      object cxGroupBox6: TcxGroupBox
        Left = 633
        Top = 15
        Align = alRight
        PanelStyle.Active = True
        TabOrder = 1
        Height = 132
        Width = 45
        object btnAckKaydet: TcxButton
          Left = 2
          Top = 2
          Width = 41
          Height = 39
          Align = alTop
          Caption = 'Kaydet'
          TabOrder = 0
          OnClick = btnAckKaydetClick
        end
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 1
      Top = 257
      Align = alTop
      Caption = 'Te'#351'hi'#351
      TabOrder = 2
      Height = 130
      Width = 681
      object cxGrid5: TcxGrid
        Left = 3
        Top = 15
        Width = 630
        Height = 105
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = -2
        ExplicitWidth = 632
        ExplicitHeight = 130
        object cxGridDBTableView4: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DataSource5
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView4taniKodu: TcxGridDBColumn
            Caption = 'Te'#351'his Kodu'
            DataBinding.FieldName = 'teshisKodu'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 181
          end
          object cxGridDBTableView4tani: TcxGridDBColumn
            Caption = 'Tan'#305' Kodu'
            DataBinding.FieldName = 'ICD10Kodu'
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Width = 175
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 633
        Top = 15
        Align = alRight
        PanelStyle.Active = True
        TabOrder = 1
        ExplicitLeft = 634
        ExplicitTop = -2
        ExplicitHeight = 130
        Height = 105
        Width = 45
        object cxButtonKadirTaniEkle: TcxButtonKadir
          Tag = 3
          Left = 2
          Top = 2
          Width = 41
          Height = 35
          Align = alTop
          Caption = 'Ekle'
          TabOrder = 0
          OnClick = BtnIlacEkleClick
          NewButtonVisible = False
        end
        object cxButtonKadirTanisil1: TcxButtonKadir
          Tag = 4
          Left = 2
          Top = 37
          Width = 41
          Height = 35
          Align = alTop
          Caption = 'Sil'
          TabOrder = 1
          OnClick = cxButtonKadirTaniEkleClick
          NewButtonVisible = False
        end
      end
    end
  end
  object Sablonlar: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'IlacRaporSablon'
    Left = 88
    Top = 129
  end
  object SablonDetay: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'SablonID'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'IlacRaporEtkenMaddelerSablon'
    Left = 88
    Top = 185
  end
  object DataSource1: TDataSource
    DataSet = Sablonlar
    Left = 144
    Top = 129
  end
  object DataSource2: TDataSource
    DataSet = SablonDetay
    Left = 144
    Top = 185
  end
  object Tani: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'SablonId'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'IlacRaporTeshislerSablon'
    Left = 88
    Top = 241
  end
  object DataSource5: TDataSource
    DataSet = Tani
    Left = 144
    Top = 241
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 176
    Top = 56
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      Visible = False
    end
    object S1: TMenuItem
      Tag = -1
      Caption = 'Sil'
      ImageIndex = 42
      OnClick = S1Click
    end
    object E1: TMenuItem
      Caption = 'Ekle'
      ImageIndex = 34
      Visible = False
    end
    object R1: TMenuItem
      Tag = -2
      Caption = 'Rapora Aktar'
      ImageIndex = 9
      OnClick = S1Click
    end
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
    Left = 336
    Top = 88
  end
  object DataSource3: TDataSource
    DataSet = SablonAciklama
    Left = 144
    Top = 305
  end
  object SablonAciklama: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    IndexFieldNames = 'SablonId'
    MasterFields = 'id'
    MasterSource = DataSource1
    TableName = 'IlacRaporAciklamaSablon'
    Left = 88
    Top = 305
  end
end
