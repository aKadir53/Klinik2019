object frmSahaSaglikGozetim: TfrmSahaSaglikGozetim
  Left = 1
  Top = 1
  Caption = 'Saha G'#246'zetim'
  ClientHeight = 597
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 129
    Width = 672
    Height = 468
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.TabPosition = tpBottom
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    ClientRectBottom = 443
    ClientRectLeft = 4
    ClientRectRight = 668
    ClientRectTop = 5
    object cxTabSheet1: TcxTabSheet
      ImageIndex = 0
      object cxGridKadir1: TcxGridKadir
        Left = 0
        Top = 0
        Width = 664
        Height = 438
        Align = alClient
        TabOrder = 0
        ExceleGonder = False
        PopupForm = False
        object gridRapor: TcxGridDBTableView
          PopupMenu = PopupMenu2
          DataController.DataSource = DataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.DataRowHeight = 50
          OptionsView.GroupByBox = False
          Styles.Group = cxStyle8
          OnCustomDrawGroupCell = gridRaporCustomDrawGroupCell
          object gridRaporGrupBaslikRakamli: TcxGridDBColumn
            DataBinding.FieldName = 'GrupBaslikRakamli'
            Visible = False
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soAscending
            Width = 80
            IsCaptionAssigned = True
          end
          object gridRaporID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            Options.Editing = False
            Options.Focusing = False
          end
          object gridRaporKonuRakamli: TcxGridDBColumn
            Caption = 'Konu'
            DataBinding.FieldName = 'KonuRakamli'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.Focusing = False
            Width = 232
          end
          object gridRaporUygunmu: TcxGridDBColumn
            Caption = 'Uygun Mu'
            DataBinding.FieldName = 'Uygunmu'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 43
          end
          object gridRaporTespitler: TcxGridDBColumn
            DataBinding.FieldName = 'Tespitler'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.ScrollBars = ssVertical
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 390
          end
          object gridRaporOneriler: TcxGridDBColumn
            DataBinding.FieldName = 'Oneriler'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.ScrollBars = ssVertical
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 390
          end
          object gridRaporColumn1: TcxGridDBColumn
            Caption = 'Dosya'
            DataBinding.FieldName = 'DosyaTip'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Images = DATALAR.imag24png
            Properties.Items = <
              item
                ImageIndex = 110
                Value = 'PDF'
              end
              item
                ImageIndex = 75
                Value = 'XLS'
              end
              item
                ImageIndex = 75
                Value = 'XLSX'
              end
              item
                ImageIndex = 111
                Value = 'DOC'
              end
              item
                ImageIndex = 121
                Value = 'RTF'
              end
              item
                ImageIndex = 124
                Value = 'JPG'
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 40
          end
        end
        object cxGridKadir1Level1: TcxGridLevel
          GridView = gridRapor
        end
      end
    end
  end
  object cxGridKadir2: TcxGridKadir
    Left = 0
    Top = 0
    Width = 672
    Height = 121
    Align = alTop
    TabOrder = 0
    ExcelFileName = 'TahlilSonuclar'#305
    ExceleGonder = True
    PopupForm = False
    object gridRaporlar: TcxGridDBTableView
      OnFocusedRecordChanged = gridRaporlarFocusedRecordChanged
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object gridRaporlarID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 41
      end
      object gridRaporlarSubeTanimi: TcxGridDBColumn
        Caption = #350'ube'
        DataBinding.FieldName = 'SubeTanimi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object gridRaporlarGozlemGrupTanim: TcxGridDBColumn
        Caption = 'G'#246'zlem T'#252'r'#252
        DataBinding.FieldName = 'GozlemGrupTanim'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 175
      end
      object gridRaporlarDenetimiYapanKullanici: TcxGridDBColumn
        Caption = 'Denetimi Yapan'
        DataBinding.FieldName = 'DenetimiYapanKullanici'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 90
      end
      object gridRaporlarDenetimTarihi: TcxGridDBColumn
        Caption = 'Denetim Tarihi'
        DataBinding.FieldName = 'DenetimTarihi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 86
      end
      object gridRaporlarColumn1: TcxGridDBColumn
        Caption = 'Sonraki Denetim'
        DataBinding.FieldName = 'BirSonrakiGozetimTarihi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Styles.Content = cxStyle9
        Width = 86
      end
      object gridRaporlarDate_Create: TcxGridDBColumn
        Caption = 'Denetim Kay'#305't Zaman'#305
        DataBinding.FieldName = 'Date_Create'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 110
      end
      object gridRaporlarColumn2: TcxGridDBColumn
        Caption = 'Planlayan'
        DataBinding.FieldName = 'DenetimiPlanlayan'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 86
      end
      object gridRaporlarColumn3: TcxGridDBColumn
        Caption = 'OnaylamaTarihi'
        DataBinding.FieldName = 'DenetimOnaylamaTarihi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 86
      end
      object gridRaporlarGozetimDefterNo: TcxGridDBColumn
        Caption = 'Defter No.'
        DataBinding.FieldName = 'GozetimDefterNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 70
      end
      object gridRaporlarImageVar: TcxGridDBColumn
        Caption = 'D'#246'k'#252'man'
        DataBinding.FieldName = 'DosyaTip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            ImageIndex = 110
            Value = 'PDF'
          end
          item
            ImageIndex = 75
            Value = 'XLS'
          end
          item
            ImageIndex = 75
            Value = 'XLSX'
          end
          item
            ImageIndex = 111
            Value = 'DOC'
          end
          item
            ImageIndex = 121
            Value = 'RTF'
          end
          item
            ImageIndex = 124
            Value = 'JPG'
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 53
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gridRaporlar
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 121
    Width = 672
    Height = 8
    AlignSplitter = salTop
    Control = cxGridKadir2
  end
  object DataSource1: TDataSource
    DataSet = ADO_SahaGozetim
    Left = 136
    Top = 226
  end
  object ADO_SahaGozetim: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'select SR.ID, sst.subeTanim SubeTanimi, DenetimiYapanKullanici, ' +
        'DenetimTarihi, Date_Create, GozetimDefterNo, FirmaKodu, cast (ca' +
        'se when Image Is NULL then 0 else 1 end as bit) ImageVar, SR.Goz' +
        'lemGrup, SGR.Tanimi GozlemGrupTanim'
      'from SahaGozlemRaporlari SR'
      
        'inner join SahaGozlemSoruGrup SGR on SGR.GozlemGrup = SR.GozlemG' +
        'rup'
      
        'left outer join SIRKET_SUBE_TNM sst on sst.SirketKod = SR.FirmaK' +
        'odu'
      '  and sst.SubeKod = SR.SubeKod'
      'where FirmaKodu = '#39'0001'#39
      'order by SR.ID')
    Left = 88
    Top = 232
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 176
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
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
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
    Left = 256
    Top = 200
    object miYeniGozetim: TMenuItem
      Tag = -9
      Caption = 'Yeni G'#246'zetim'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object miGozetimDuzenle: TMenuItem
      Tag = -11
      Caption = 'G'#246'zetimi D'#252'zenle'
      ImageIndex = 31
      OnClick = cxButtonCClick
    end
    object miGozetimSil: TMenuItem
      Tag = -18
      Caption = 'G'#246'zetim Sil'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object miGozetimYazdir: TMenuItem
      Tag = -27
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object miFotografYukle: TMenuItem
      Tag = -21
      Caption = 'Dosya Y'#252'kle'
      ImageIndex = 9
      OnClick = cxButtonCClick
    end
    object miFotografGoruntule: TMenuItem
      Tag = -22
      Caption = 'Dosya G'#246'r'#252'nt'#252'le'
      ImageIndex = 8
      OnClick = cxButtonCClick
    end
    object miFotografiSil: TMenuItem
      Tag = -23
      Caption = 'Dosya Sil'
      ImageIndex = 43
      OnClick = cxButtonCClick
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
    Left = 192
    Top = 338
  end
  object ADOQuery1: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'exec dbo.sp_SahaGozlemRaporDetayGetir 18')
    Left = 104
    Top = 336
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmr1Timer
    Left = 16
    Top = 48
  end
  object PopupMenu2: TPopupMenu
    Left = 488
    Top = 280
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
