object frmIlacEtkenMaddeSutKural: TfrmIlacEtkenMaddeSutKural
  Left = 325
  Top = 84
  BorderStyle = bsDialog
  Caption = 'frmIlacEtkenMaddeSutKural'
  ClientHeight = 552
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlOnay: TPanel
    Left = 0
    Top = 520
    Width = 865
    Height = 32
    Align = alBottom
    Color = clBackground
    TabOrder = 0
    ExplicitWidth = 802
    object txtinfo: TLabel
      Left = 7
      Top = 11
      Width = 3
      Height = 13
      Caption = '.'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnSend: TsBitBtn
      Left = 237
      Top = 3
      Width = 83
      Height = 27
      Hint = 'G'#246'nder'
      Caption = 'Kaydet'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = btnSendClick
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 49
    end
    object btnVazgec: TsBitBtn
      Left = 712
      Top = 2
      Width = 83
      Height = 27
      Hint = 'Vazge'#231
      Caption = 'Kapat'
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnVazgecClick
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 12
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alLeft
    Caption = 'Etken Maddeler Ara'
    Style.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 1
    Height = 520
    Width = 416
    object Edit1: TEdit
      Left = 3
      Top = 15
      Width = 410
      Height = 21
      Align = alTop
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 412
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 36
      Width = 410
      Height = 474
      Align = alClient
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 19
      ExplicitWidth = 412
      ExplicitHeight = 499
      object gridIlacSarf: TcxGridDBTableView
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        DataController.DataSource = DataSource1
        DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = #304'la'#231' Say'#305's'#305' : #'
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.InfoText = 'Filitre'
        FilterRow.SeparatorColor = 3155860
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = 'Listelenecek Etken Madde Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 21
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 30
        OptionsView.Indicator = True
        object gridIlacSarfkod: TcxGridDBColumn
          Caption = 'Kod'
          DataBinding.FieldName = 'kod'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 50
        end
        object gridIlacSarftanimi: TcxGridDBColumn
          Caption = 'Etken Madde Tan'#305'm'#305
          DataBinding.FieldName = 'tanimi'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 300
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridIlacSarf
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 416
    Top = 0
    Align = alClient
    Caption = 'Sut Kurallari'
    ParentFont = False
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = TURKISH_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    ExplicitWidth = 386
    Height = 520
    Width = 449
    object Label2: TLabel
      Left = 3
      Top = 15
      Width = 443
      Height = 13
      Align = alTop
      AutoSize = False
      Caption = 'Tetkik Sonuc Bilgisi'
      Color = 16744576
      Font.Charset = TURKISH_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 2
      ExplicitTop = 52
      ExplicitWidth = 376
    end
    object Label3: TLabel
      Left = 3
      Top = 173
      Width = 443
      Height = 13
      Align = alTop
      AutoSize = False
      Caption = 
        '              Ba'#351'lang'#305#231'                                       '#304'd' +
        'ame'
      Color = 16744576
      Font.Charset = TURKISH_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 6
      ExplicitTop = 167
      ExplicitWidth = 378
    end
    object Label4: TLabel
      Left = 3
      Top = 258
      Width = 443
      Height = 13
      Align = alTop
      AutoSize = False
      Caption = 'Diger'
      Color = 16744576
      Font.Charset = TURKISH_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 2
      ExplicitTop = 305
      ExplicitWidth = 376
    end
    object Label5: TLabel
      Left = 3
      Top = 116
      Width = 443
      Height = 13
      Align = alTop
      AutoSize = False
      Caption = 'Doz Bilgisi'
      Color = 16744576
      Font.Charset = TURKISH_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 4
      ExplicitTop = 158
      ExplicitWidth = 376
    end
    object DBMemo1: TDBMemo
      Left = 3
      Top = 28
      Width = 443
      Height = 88
      Align = alTop
      Ctl3D = False
      DataField = 'Tetkiksonuc'
      DataSource = DataSource3
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 0
      ExplicitWidth = 380
    end
    object DBMemo2: TDBMemo
      Left = 3
      Top = 129
      Width = 443
      Height = 44
      Align = alTop
      Ctl3D = False
      DataField = 'Doz'
      DataSource = DataSource3
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 1
      ExplicitWidth = 380
    end
    object DBMemo3: TDBMemo
      Left = 3
      Top = 271
      Width = 443
      Height = 82
      Align = alTop
      Ctl3D = False
      DataField = 'Diger'
      DataSource = DataSource3
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object cxGroupBox3: TcxGroupBox
      Left = 3
      Top = 353
      Align = alClient
      Caption = #304'la'#231' '#304#231'in '#304'stenen Tekkik Sonu'#231'lar'#305
      Style.BorderStyle = ebsFlat
      TabOrder = 3
      ExplicitTop = 328
      ExplicitWidth = 380
      ExplicitHeight = 182
      Height = 157
      Width = 443
      object DBGridEh1: TDBGridEh
        Left = 3
        Top = 15
        Width = 437
        Height = 132
        Align = alClient
        DataSource = DataSource4
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        ImeMode = imDisable
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 0
        Columns = <
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'code'
            Footers = <>
            Visible = False
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'tetkikKodu'
            Footers = <>
            Title.Caption = 'Tetkik Kod'
            Width = 60
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'sonuc'
            Footers = <>
            Title.Caption = 'Ba'#351'lang'#305#231' Ref'
            Width = 70
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'sonuc2'
            Footers = <>
            Title.Caption = #304'dame Ref'
            Width = 70
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'aciklama'
            Footers = <>
            Title.Caption = 'A'#231#305'klama'
            Width = 120
          end
          item
            Checkboxes = True
            DynProps = <>
            EditButtons = <>
            FieldName = 'receteEklenir'
            Footers = <>
            Title.Caption = 'Recete Eklenir'
            Width = 75
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object DBGridEh2: TDBGridEh
      Left = 3
      Top = 186
      Width = 443
      Height = 72
      Align = alTop
      DataSource = DataSource3
      DynProps = <>
      Flat = True
      FooterParams.Color = clWindow
      IndicatorOptions = [gioShowRowIndicatorEh]
      TabOrder = 4
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'bDoz1'
          Footers = <>
          Title.Caption = 'MinD'
          Width = 30
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'bDoz2'
          Footers = <>
          Title.Caption = 'MaxD'
          Width = 32
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'bDozPeryot'
          Footers = <>
          PickList.Strings = (
            ''
            '3 - G'#252'n'
            '4 - Hafta'
            '5  - Ay'
            '6 - Y'#305'l')
          Title.Caption = 'Peryot'
          Width = 37
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'bDozPeryotAdet'
          Footers = <>
          Title.Caption = 'Per.Adet'
          Width = 46
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'iDoz1'
          Footers = <>
          Title.Caption = 'MinD'
          Width = 30
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'iDoz2'
          Footers = <>
          Title.Caption = 'MaxD'
          Width = 36
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'iDozPeryot'
          Footers = <>
          PickList.Strings = (
            ''
            '3 - G'#252'n'
            '4 - Hafta'
            '5  - Ay'
            '6 - Y'#305'l')
          Title.Caption = 'Peryot'
          Width = 41
        end
        item
          AutoFitColWidth = False
          DynProps = <>
          EditButtons = <>
          FieldName = 'Birim'
          Footers = <>
          Width = 39
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'iDozPeryotAdet'
          Footers = <>
          Title.Caption = 'Per.Adet'
          Width = 45
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object ado_BransKodlari: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterPost = ado_BransKodlariAfterPost
    AfterScroll = ado_BransKodlariAfterScroll
    Parameters = <
      item
        Name = '@p'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = 'ERYT%'
      end>
    Prepared = True
    SQL.Strings = (
      
        'select * from OSGB_MASTER.dbo.EtkenMaddeler where tanimi like :@' +
        'p'
      '')
    Left = 48
    Top = 138
  end
  object DataSource1: TDataSource
    DataSet = ado_BransKodlari
    Left = 40
    Top = 202
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 344
    Top = 118
    object YeniAnaKurum1: TMenuItem
      Caption = 'Ana Grup Ekle'
      OnClick = YeniAnaKurum1Click
    end
    object AnaKurumSil1: TMenuItem
      Tag = 1
      Caption = 'Ana Grup Sil'
      Enabled = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object KurumEkle1: TMenuItem
      Tag = 2
      Caption = #304'la'#231' Ekle'
      OnClick = YeniAnaKurum1Click
    end
    object KurumSil1: TMenuItem
      Tag = 3
      Caption = #304'la'#231' Sil'
      OnClick = KurumSil1Click
    end
    object KurumDzenle1: TMenuItem
      Tag = 4
      Caption = #304'la'#231' D'#252'zenle'
      OnClick = YeniAnaKurum1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object T1: TMenuItem
      Caption = 'T'#252'm Gruplar'#305' A'#231
      OnClick = T1Click
    end
    object T2: TMenuItem
      Caption = 'T'#252'm Gruplar'#305' Kapat'
      OnClick = T2Click
    end
  end
  object DataSource3: TDataSource
    DataSet = ADO_EtkenMaddeSUT
    Left = 160
    Top = 200
  end
  object DataSource4: TDataSource
    DataSet = ADO_EtkenMaddeTetkik
    Left = 89
    Top = 338
  end
  object ADO_EtkenMaddeSUT: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <
      item
        Name = '@kod'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from OSGB_MASTER.dbo.ETkenMaddeSutKurallari'
      'where EtkenMaddeKodu =:@kod')
    Left = 160
    Top = 144
  end
  object ADO_EtkenMaddeTetkik: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <
      item
        Name = '@kod'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from OSGB_MASTER.dbo.IlaclarReceteTetkikSonuc'
      'where EtkenMaddeKodu =:@kod')
    Left = 80
    Top = 296
  end
end
