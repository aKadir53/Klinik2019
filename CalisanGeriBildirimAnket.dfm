object frmCalisanGeriBildirimAnket: TfrmCalisanGeriBildirimAnket
  Left = 1
  Top = 1
  Caption = 'Geri Bildirim Anketi'
  ClientHeight = 700
  ClientWidth = 841
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 129
    Width = 841
    Height = 571
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.TabPosition = tpBottom
    ClientRectBottom = 541
    ClientRectLeft = 3
    ClientRectRight = 834
    ClientRectTop = 3
    object cxTabSheet1: TcxTabSheet
      ImageIndex = 0
      object cxGridKadir1: TcxGridKadir
        Left = 0
        Top = 0
        Width = 831
        Height = 538
        Align = alClient
        TabOrder = 0
        ExceleGonder = False
        PopupForm = False
        object gridAnketDetay: TcxGridDBBandedTableView
          DataController.DataSource = DataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#0'
              Kind = skSum
              Column = gridAnketDetayColumn2
            end
            item
              Format = '#0'
              Kind = skSum
              Column = gridAnketDetayColumn3
            end
            item
              Format = '#0'
              Kind = skSum
              Column = gridAnketDetayColumn8
            end
            item
              Format = '#0'
              Kind = skSum
              Column = gridAnketDetayColumn4
            end
            item
              Format = '#0'
              Kind = skSum
              Column = gridAnketDetayColumn5
            end
            item
              Format = '#0'
              Kind = skSum
              Column = gridAnketDetayColumn9
            end
            item
              Format = '#0'
              Kind = skSum
              Column = gridAnketDetayColumn6
            end
            item
              Format = '#0'
              Kind = skSum
              Column = gridAnketDetayColumn7
            end
            item
              Format = '#0'
              Kind = skSum
              Column = gridAnketDetayColumn11
            end
            item
              Format = '#0'
              Kind = skSum
              Column = gridAnketDetayColumn10
            end
            item
              Format = '#.##0'
              Kind = skAverage
              Column = gridAnketDetayColumn13
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.InvertSelect = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.BandHeaderHeight = 45
          Styles.Footer = cxStyle3
          Bands = <
            item
              Caption = 'Anket De'#287'erlendirme'
              Styles.Header = cxStyle2
              Width = 380
            end
            item
              Caption = 'Tamamen Kat'#305'l'#305'yorum (4)'
              Styles.Header = cxStyle1
              Width = 80
            end
            item
              Caption = 'Kat'#305'l'#305'yorum (3)'
              Styles.Content = cxStyle6
              Styles.Header = cxStyle1
              Width = 80
            end
            item
              Caption = 'Karars'#305'z'#305'm (2)'
              Styles.Content = cxStyle10
              Styles.Header = cxStyle1
              Width = 80
            end
            item
              Caption = 'Kat'#305'lm'#305'yorum (1)'
              Styles.Content = cxStyle11
              Styles.Header = cxStyle1
              Width = 80
            end
            item
              Caption = 'Kesinlikle Kat'#305'lm'#305'yorum (0)'
              Styles.Content = cxStyle12
              Styles.Header = cxStyle1
              Width = 80
            end
            item
              Caption = 'Toplam O. Da'#287#305'l'#305'm (10)'
              Styles.Content = cxStyle14
              Styles.Header = cxStyle3
              Width = 80
            end>
          object gridAnketDetayColumn1: TcxGridDBBandedColumn
            Caption = 'Sorular'
            DataBinding.FieldName = 'soru'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 350
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn2: TcxGridDBBandedColumn
            Caption = 'Say'#305
            DataBinding.FieldName = 'TKatiliyorum'
            HeaderAlignmentHorz = taCenter
            Styles.Content = cxStyle9
            Width = 55
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn3: TcxGridDBBandedColumn
            Caption = 'Puan'
            DataBinding.FieldName = 'TKatiliyorumP'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Styles.Content = cxStyle9
            Width = 55
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn4: TcxGridDBBandedColumn
            Caption = 'Puan'
            DataBinding.FieldName = 'KatiliyorumP'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 55
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn5: TcxGridDBBandedColumn
            Caption = 'Say'#305
            DataBinding.FieldName = 'Kararsizim'
            HeaderAlignmentHorz = taCenter
            Width = 46
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn6: TcxGridDBBandedColumn
            Caption = 'Say'#305
            DataBinding.FieldName = 'Katilmiyorum'
            HeaderAlignmentHorz = taCenter
            Width = 45
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn7: TcxGridDBBandedColumn
            Caption = 'Puan'
            DataBinding.FieldName = 'KatilmiyorumP'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 46
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn8: TcxGridDBBandedColumn
            Caption = 'Say'#305
            DataBinding.FieldName = 'Katiliyorum'
            HeaderAlignmentHorz = taCenter
            Width = 55
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn9: TcxGridDBBandedColumn
            Caption = 'Puan'
            DataBinding.FieldName = 'KararsizimP'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 44
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn10: TcxGridDBBandedColumn
            Caption = 'Puan'
            DataBinding.FieldName = 'KKatilmiyorumP'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 47
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn11: TcxGridDBBandedColumn
            Caption = 'Say'#305
            DataBinding.FieldName = 'KKatilmiyorum'
            HeaderAlignmentHorz = taCenter
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn12: TcxGridDBBandedColumn
            Caption = 'Sira'
            DataBinding.FieldName = 'Soruid'
            PropertiesClassName = 'TcxTextEditProperties'
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 30
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gridAnketDetayColumn13: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SoruBTOD'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '#0'
            FooterAlignmentHorz = taCenter
            Options.Editing = False
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object gridAnketDetayColumn14: TcxGridDBBandedColumn
            DataBinding.FieldName = 'anketSayi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
        end
        object cxGridKadir1Level2: TcxGridLevel
          GridView = gridAnketDetay
        end
      end
    end
  end
  object cxGridKadir2: TcxGridKadir
    Left = 0
    Top = 0
    Width = 841
    Height = 121
    Align = alTop
    TabOrder = 0
    ExcelFileName = 'TahlilSonuclar'#305
    ExceleGonder = True
    PopupForm = False
    object gridAnketler: TcxGridDBTableView
      OnFocusedRecordChanged = gridAnketlerFocusedRecordChanged
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object gridAnketlerID: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
      end
      object gridAnketlerDenetimTarihi: TcxGridDBColumn
        Caption = 'Tarih'
        DataBinding.FieldName = 'tarih'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 118
      end
      object gridAnketlerColumn1: TcxGridDBColumn
        Caption = 'Anket Sayisi'
        DataBinding.FieldName = 'anketSayisi'
      end
      object gridAnketlerColumn2: TcxGridDBColumn
        Caption = 'Anket Tipi'
        DataBinding.FieldName = 'anketTip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <
          item
            Description = #199'al'#305#351'an'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Hasta'
            Value = 2
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 104
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gridAnketler
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 121
    Width = 841
    Height = 8
    AlignSplitter = salTop
    Control = cxGridKadir2
  end
  object DataSource1: TDataSource
    DataSet = ADO_Anket
    Left = 224
    Top = 58
  end
  object ADO_Anket: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from CalisanGeriBildirimAnket')
    Left = 160
    Top = 64
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 112
    Top = 352
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
      Color = 14024703
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
      AssignedValues = [svColor, svFont]
      Color = 12058551
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 13027071
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor]
      Color = 16759413
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 11786751
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16777173
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
    Left = 336
    Top = 256
    object miYeniGozetim: TMenuItem
      Tag = -9
      Caption = 'Yeni Anket'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object miGozetimDuzenle: TMenuItem
      Tag = -11
      Caption = 'Anket D'#252'zenle'
      ImageIndex = 31
      OnClick = cxButtonCClick
    end
    object miGozetimSil: TMenuItem
      Tag = -18
      Caption = 'Anket Sil'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object Y1: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      object miGozetimYazdir: TMenuItem
        Tag = -27
        Caption = 'Geri Bildirim De'#287'erlendirme'
        OnClick = cxButtonCClick
      end
      object N3: TMenuItem
        Tag = -28
        Caption = 'Anket Formu'
        OnClick = cxButtonCClick
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object T1: TMenuItem
      Tag = -90
      Caption = 'Tan'#305'mlamalar'
      ImageIndex = 4
      OnClick = cxButtonCClick
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 168
    Top = 250
  end
  object ADOQuery1: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    AfterPost = ADOQuery1AfterPost
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'exec dbo.sp_AnketDetayGetir 1')
    Left = 128
    Top = 248
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
    Left = 16
    Top = 48
  end
  object PopupMenu2: TPopupMenu
    Left = 456
    Top = 272
    object D1: TMenuItem
      Tag = -50
      Caption = 'DOF Olu'#351'tur'
      OnClick = cxButtonCClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object B1: TMenuItem
      Tag = -60
      Caption = 'Dosya Y'#252'kle'
      OnClick = cxButtonCClick
    end
    object D2: TMenuItem
      Tag = -70
      Caption = 'Dosya Sil'
      OnClick = cxButtonCClick
    end
    object D3: TMenuItem
      Tag = -80
      Caption = 'Dosya G'#246'ster'
      OnClick = cxButtonCClick
    end
  end
end
