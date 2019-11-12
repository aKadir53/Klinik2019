object frmIlacEtkenMaddeSutKural: TfrmIlacEtkenMaddeSutKural
  Left = 0
  Top = 0
  Caption = 'frmIlacEtkenMaddeSutKural'
  ClientHeight = 583
  ClientWidth = 908
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
  object pnlOnay: TPanel
    Left = 0
    Top = 551
    Width = 908
    Height = 32
    Align = alBottom
    Color = clBackground
    TabOrder = 0
    ExplicitTop = 528
    ExplicitWidth = 832
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
    ParentFont = False
    Style.BorderStyle = ebsFlat
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.Kind = lfFlat
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 1
    ExplicitHeight = 528
    Height = 551
    Width = 416
    object cxGrid1: TcxGrid
      Left = 3
      Top = 45
      Width = 410
      Height = 496
      Align = alClient
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = -2
      ExplicitTop = 195
      ExplicitWidth = 412
      ExplicitHeight = 507
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
        OnFocusedRecordChanged = gridIlacSarfFocusedRecordChanged
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
        FilterRow.Visible = True
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
          Width = 89
        end
        object gridIlacSarftanimi: TcxGridDBColumn
          Caption = 'Etken Madde Tan'#305'm'#305
          DataBinding.FieldName = 'tanimi'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 307
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = gridIlacSarf
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 3
      Top = 15
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 1
      Height = 30
      Width = 410
      object chkTumu: TcxCheckBoxKadir
        Left = 336
        Top = 9
        Caption = 'T'#252'm'#252'n'#252' G'#246'ster'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = '-1'
        Properties.ValueGrayed = '1'
        Properties.ValueUnchecked = '1'
        Properties.OnEditValueChanged = chkTumuPropertiesEditValueChanged
        TabOrder = 0
        Visible = False
        BosOlamaz = False
        Secili = '-1'
        SeciliDegil = '1'
        Width = 58
      end
      object Edit1: TcxTextEdit
        Left = 2
        Top = 2
        Align = alClient
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.ValidateOnEnter = True
        Style.Color = 8454143
        TabOrder = 1
        OnKeyDown = Edit1KeyDown
        OnKeyPress = Edit1KeyPress
        ExplicitLeft = 64
        ExplicitTop = 8
        ExplicitWidth = 121
        ExplicitHeight = 21
        Width = 406
      end
    end
  end
  object cxGroupBox5: TcxGroupBox
    Left = 424
    Top = 0
    Align = alClient
    Caption = 'Kurallar'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 2
    ExplicitLeft = 422
    ExplicitTop = 8
    ExplicitWidth = 468
    ExplicitHeight = 241
    Height = 551
    Width = 484
    object cxGroupBox6: TcxGroupBox
      Left = 3
      Top = 15
      Align = alTop
      Caption = 'Etken Madde '#304#231'in '#304'stenen Tekkikleri Belirle'
      TabOrder = 0
      Height = 183
      Width = 478
      object cxGrid2: TcxGrid
        Left = 3
        Top = 15
        Width = 472
        Height = 158
        Align = alClient
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = -2
        ExplicitTop = 195
        ExplicitWidth = 412
        ExplicitHeight = 507
        object gridTetkikler: TcxGridDBTableView
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
          DataController.DataSource = DataSource4
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
          OptionsData.DeletingConfirmation = False
          OptionsView.NoDataToDisplayInfoText = 'Listelenecek Etken Madde Yok'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.DataRowHeight = 21
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 33
          OptionsView.Indicator = True
          object gridTetkiklerATC_Kodu: TcxGridDBColumn
            DataBinding.FieldName = 'ATC_Kodu'
            Visible = False
            Width = 57
          end
          object gridTetkiklertetkikKodu: TcxGridDBColumn
            Caption = 'Tetkik Kodu'
            DataBinding.FieldName = 'tetkikKodu'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 73
          end
          object gridTetkiklerid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
            Width = 23
          end
          object gridTetkiklersonuc: TcxGridDBColumn
            Caption = 'Ba'#351'lang'#305#231' Ref.'
            DataBinding.FieldName = 'sonuc'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object gridTetkiklersonuc2: TcxGridDBColumn
            Caption = #304'dame Ref.'
            DataBinding.FieldName = 'sonuc2'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 80
          end
          object gridTetkikleraciklama: TcxGridDBColumn
            Caption = 'A'#231#305'klama'
            DataBinding.FieldName = 'aciklama'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 136
          end
          object gridTetkiklerreceteEklenir: TcxGridDBColumn
            Caption = 'Re'#231'ete Ack Ekle'
            DataBinding.FieldName = 'receteEklenir'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 69
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gridTetkikler
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 3
      Top = 198
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
      TabOrder = 1
      ExplicitLeft = 8
      ExplicitTop = 120
      ExplicitWidth = 416
      ExplicitHeight = 344
      Height = 343
      Width = 478
      object Label2: TLabel
        Left = 3
        Top = 15
        Width = 472
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
        Width = 472
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
        Width = 472
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
        Width = 472
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
        Width = 472
        Height = 88
        Align = alTop
        Ctl3D = False
        DataField = 'Tetkiksonuc'
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitWidth = 410
      end
      object DBMemo2: TDBMemo
        Left = 3
        Top = 129
        Width = 472
        Height = 44
        Align = alTop
        Ctl3D = False
        DataField = 'Doz'
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 1
        ExplicitWidth = 410
      end
      object DBMemo3: TDBMemo
        Left = 3
        Top = 271
        Width = 472
        Height = 57
        Align = alTop
        Ctl3D = False
        DataField = 'Diger'
        ParentCtl3D = False
        ScrollBars = ssVertical
        TabOrder = 2
        ExplicitWidth = 410
      end
      object DBGridEh2: TDBGridEh
        Left = 3
        Top = 186
        Width = 472
        Height = 72
        Align = alTop
        DataSource = DataSource3
        DynProps = <>
        Flat = True
        FooterParams.Color = clWindow
        IndicatorOptions = [gioShowRowIndicatorEh]
        TabOrder = 3
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
            Width = 30
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
            Width = 36
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
            Width = 30
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
            Width = 31
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 416
    Top = 0
    Width = 8
    Height = 551
    ExplicitLeft = 672
    ExplicitTop = 320
    ExplicitHeight = 100
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 118
    object KurumEkle1: TMenuItem
      Tag = 2
      Caption = 'Ekle'
    end
    object KurumSil1: TMenuItem
      Tag = 3
      Caption = #304'la'#231' Sil'
    end
    object KurumDzenle1: TMenuItem
      Tag = 4
      Caption = #304'la'#231' D'#252'zenle'
    end
  end
  object ado_BransKodlari: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = ado_BransKodlariAfterScroll
    Parameters = <
      item
        Name = '@p'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 150
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'select * from OSGB_MASTER.dbo.ATC_Kodlari'
      'where Tanimi like :@p')
    Left = 504
    Top = 298
  end
  object DataSource1: TDataSource
    DataSet = ado_BransKodlari
    Left = 504
    Top = 338
  end
  object DataSource4: TDataSource
    DataSet = ADO_EtkenMaddeTetkik
    Left = 505
    Top = 490
  end
  object ADO_EtkenMaddeTetkik: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    OnNewRecord = ADO_EtkenMaddeTetkikNewRecord
    Parameters = <
      item
        Name = '@kod'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'select * from OSGB_MASTER.dbo.IlaclarReceteTetkikSonuc'
      'where ATC_Kodu =:@kod')
    Left = 504
    Top = 424
  end
  object DataSource3: TDataSource
    DataSet = ADO_EtkenMaddeSUT
    Left = 704
    Top = 304
  end
  object ADO_EtkenMaddeSUT: TADOQuery
    Connection = DATALAR.ADOConnection2
    OnNewRecord = ADO_EtkenMaddeSUTNewRecord
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
    Left = 704
    Top = 240
  end
end
