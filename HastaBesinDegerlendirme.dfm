object frmBesinDegerlendirme: TfrmBesinDegerlendirme
  Left = 389
  Top = 0
  Caption = 'frmBesinDegerlendirme'
  ClientHeight = 669
  ClientWidth = 1298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Height = 669
    ExplicitLeft = 320
    ExplicitTop = 65
    ExplicitHeight = 610
  end
  object Panel2: TPanel
    Left = 3
    Top = 0
    Width = 1295
    Height = 669
    Align = alClient
    TabOrder = 0
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      Caption = 'Hasta Listesi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 667
      Width = 1293
      object cxGrid1: TcxGridKadir
        Left = 3
        Top = 16
        Width = 1287
        Height = 641
        Align = alClient
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.ImageBorder = 2
        LevelTabs.Style = 1
        ExcelFileName = 'IzlemListesi'
        ExceleGonder = True
        PopupForm = False
        ExplicitLeft = 2
        ExplicitTop = -2
        ExplicitWidth = 1289
        ExplicitHeight = 667
        object gridHastalar: TcxGridDBBandedTableView
          PopupMenu = PopupMenu1
          OnDblClick = gridHastalarDblClick
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Ara'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.DataRowHeight = 51
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 32
          Bands = <
            item
              Caption = 'Hasta Bilgileri'
              Styles.Content = cxStyle3
              Width = 1256
            end>
          object gridHastalarbhdat: TcxGridDBBandedColumn
            DataBinding.FieldName = 'bhdat'
            Visible = False
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object gridHastalardosyaNo: TcxGridDBBandedColumn
            Caption = 'DosyaNo'
            DataBinding.FieldName = 'dosyaNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 56
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object gridHastalargelisNo: TcxGridDBBandedColumn
            Caption = 'Geli'#351' No'
            DataBinding.FieldName = 'gelisNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 45
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object gridHastalarTarih: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tarih'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object gridHastalarHASTAADI: TcxGridDBBandedColumn
            Caption = 'Hasta Ad'#305
            DataBinding.FieldName = 'HASTAADI'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 135
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gridHastalarHASTASOYADI: TcxGridDBBandedColumn
            Caption = 'Soyad'#305
            DataBinding.FieldName = 'HASTASOYADI'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 129
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gridHastalarColumn9: TcxGridDBBandedColumn
            Caption = 'Ya'#351
            DataBinding.FieldName = 'YAs'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 34
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gridHastalarColumn1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CINSIYETI'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DATALAR.ImageList1
            Properties.Items = <
              item
                ImageIndex = 40
                Value = '0'
              end
              item
                ImageIndex = 154
                Value = '1'
              end>
            Visible = False
            Options.Editing = False
            Width = 33
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object gridHastalarColumn3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'foto'
            PropertiesClassName = 'TcxImageProperties'
            Properties.GraphicClassName = 'TJPEGImage'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object gridHastalarColumn4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'gelisSIRANO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object gridHastalarColumn2: TcxGridDBBandedColumn
            Caption = 'Kilo '#304'ndex'
            DataBinding.FieldName = 'VKI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '0.00'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object gridHastalarColumn5: TcxGridDBBandedColumn
            Caption = 'Ideal Kilo'
            DataBinding.FieldName = 'idealKilo'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '0.00'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 56
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object gridHastalarColumn6: TcxGridDBBandedColumn
            Caption = 'Boy'
            DataBinding.FieldName = 'boy'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = '0'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object gridHastalarColumn7: TcxGridDBBandedColumn
            Caption = 'Albumin'
            DataBinding.FieldName = 'albumin'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.DisplayFormat = '0.00'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 57
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object gridHastalarColumn8: TcxGridDBBandedColumn
            Caption = 'De'#287'erlendirme'
            DataBinding.FieldName = 'aciklama'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.Alignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 284
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object gridHastalarColumn10: TcxGridDBBandedColumn
            Caption = 'BesinAlerjisi'
            DataBinding.FieldName = 'besinAlerji'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.Alignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 153
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object gridHastalarColumn11: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NutrisyonRiskID'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object gridHastalarColumn12: TcxGridDBBandedColumn
            Caption = 'Nutrisyon Risk'
            DataBinding.FieldName = 'NutrisyonRisk'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Images = DATALAR.imag24png
            Properties.Items = <
              item
                ImageIndex = 11
                Value = 1
              end
              item
                Value = 0
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object gridHastalarColumn13: TcxGridDBBandedColumn
            DataBinding.FieldName = 'id'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gridHastalar
        end
      end
    end
  end
  object Hastalar: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'exec sp_sp_BeslenmeList'
      ' @tarih1 = '#39'20191001'#39',@tarih2 = '#39'20191030'#39',@sirketKod = '#39'000005'#39)
    Left = 448
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = Hastalar
    Left = 488
    Top = 224
  end
  object SaveDialog1: TSaveDialog
    Left = 640
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 312
    Top = 152
    object O1: TMenuItem
      Tag = 1
      Caption = 'Onayla'
      ImageIndex = 0
      Visible = False
    end
    object O2: TMenuItem
      Caption = 'Onay '#304'ptal'
      ImageIndex = 33
      Visible = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object H2: TMenuItem
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = H2Click
    end
    object T1: TMenuItem
      Caption = 'Tahlil Sonu'#231'lar'#305
      Visible = False
      OnClick = T1Click
    end
    object K1: TMenuItem
      Tag = -1
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ExceleGnder1: TMenuItem
      Tag = 9997
      Caption = 'Excel'#39'e G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object NtrisyonRiskDeerlendirme2: TMenuItem
      Caption = 'N'#252'trisyon De'#287'erlendirme'
      object U1: TMenuItem
        Tag = -38
        Caption = 'N'#252'trisyon Risk De'#287'erlendirme'
        ImageIndex = 11
        OnClick = cxButtonCClick
      end
      object NtrisyonRiskDeerlendirme1: TMenuItem
        Tag = -39
        Caption = 'N'#252'trisyon Risk De'#287'erlendirme Formu Yazd'#305'r'
        OnClick = cxButtonCClick
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 200
    Top = 184
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 8454016
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 72
    Top = 352
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 112
    Top = 352
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
end
