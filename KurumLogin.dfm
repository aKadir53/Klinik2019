object frmKurumBilgi: TfrmKurumBilgi
  Left = 432
  Top = 234
  BorderStyle = bsToolWindow
  Caption = 'frmKurumBilgi'
  ClientHeight = 526
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGridKadir1: TcxGridKadir
    Left = 8
    Top = 285
    Width = 544
    Height = 233
    TabOrder = 0
    ExceleGonder = False
    PopupForm = False
    object GridList: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      DataController.DataModeController.GridMode = True
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsView.GroupByBox = False
      Styles.Inactive = cxStyle1
      Styles.Group = cxStyle1
      Bands = <
        item
          Caption = 'WebServisler Eri'#351'im ve Tan'#305'mlama Bilgileri'
          Width = 497
        end>
      object GridListSLK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SLK'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridListid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridListSLK_Tanimi: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Erisim_Tanimi'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Options.ShowCaption = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object GridListSLB: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SLB'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridListSLB_Tanimi: TcxGridDBBandedColumn
        Caption = 'Eri'#351'im Tanimi'
        DataBinding.FieldName = 'SLB_Tanimi'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle2
        Styles.OnGetContentStyle = GridListSLB_TanimiStylesGetContentStyle
        Width = 217
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridListValue: TcxGridDBBandedColumn
        Caption = 'Eri'#351'im De'#287'eri'
        DataBinding.FieldName = 'Value'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 265
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGridKadir1Level1: TcxGridLevel
      GridView = GridList
    end
  end
  object cxGridKadir2: TcxGridKadir
    Left = 8
    Top = 32
    Width = 544
    Height = 233
    TabOrder = 1
    ExceleGonder = False
    PopupForm = False
    object GridListOratk: TcxGridDBBandedTableView
      DataController.DataSource = DataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsView.GroupByBox = False
      Styles.Inactive = cxStyle1
      Styles.Group = cxStyle1
      Bands = <
        item
          Caption = 'Tan'#305'mlama Bilgileri'
          Width = 497
        end>
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SLK'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
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
        DataBinding.FieldName = 'Erisim_Tanimi'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Options.ShowCaption = False
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SLB'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridListOrtakSLB_Tanimi: TcxGridDBBandedColumn
        Caption = 'Eri'#351'im Tanimi'
        DataBinding.FieldName = 'SLB_Tanimi'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Styles.Content = cxStyle2
        Width = 217
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridListOrtakValue: TcxGridDBBandedColumn
        Caption = 'Eri'#351'im De'#287'eri'
        DataBinding.FieldName = 'Value'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Width = 265
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = GridListOratk
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_WebServisErisim
    Left = 152
    Top = 120
  end
  object ADO_WebServisErisim: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterPost = ADO_WebServisErisimAfterPost
    AfterScroll = ADO_WebServisErisimAfterScroll
    Parameters = <
      item
        Name = '@sirketKod'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      
        'select WF.id,WF.Value,W.Erisim_Tanimi,W.sLK,W.Sira,W.SLB_Tanimi,' +
        'W.ValueTip,W.ValueObje,W.ValueObjeValues '
      'from WebServisErisimBilgileri_Firma WF'
      'join WebServisErisimBilgileri W on W.id = WF.id'
      'where WF.sirketKod =:@sirketKod'
      'order by Sira')
    Left = 152
    Top = 72
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 112
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 4194432
    end
    object Mavi: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    OnPopup = PopupMenu1Popup
    Left = 64
    Top = 152
    object HastaKabulifreBilgileriniDeitir1: TMenuItem
      Tag = -1
      Caption = 'Hasta Kabul '#350'ifre Bilgilerini SGK Ekran'#305'nda De'#287'i'#351'tir'
      ImageIndex = 69
      Visible = False
      OnClick = cxButtonCClick
    end
    object DnemSonlandrmaifremiDei1: TMenuItem
      Tag = -2
      Caption = 'D'#246'nem Sonland'#305'rma '#350'ifremi SGK Ekran'#305'nda De'#287'i'#351'tir'
      ImageIndex = 70
      Visible = False
      OnClick = cxButtonCClick
    end
    object N1: TMenuItem
      Tag = -3
      Caption = #350'ifre De'#287'i'#351'tirme Ge'#231'mi'#351'i'
      OnClick = cxButtonCClick
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 16
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object DataSource2: TDataSource
    DataSet = ADO_WebServisErisim_Ortak
    Left = 312
    Top = 128
  end
  object ADO_WebServisErisim_Ortak: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterPost = ADO_WebServisErisimAfterPost
    AfterScroll = ADO_WebServisErisimAfterScroll
    Parameters = <
      item
        Name = '@sirketKod'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      
        'select WF.id,WF.Value,W.Erisim_Tanimi,W.sLK,W.Sira,W.SLB_Tanimi,' +
        'W.ValueTip,W.ValueObje,W.ValueObjeValues '
      'from WebServisErisimBilgileri_Firma WF'
      'join WebServisErisimBilgileri W on W.id = WF.id'
      'where WF.sirketKod =:@sirketKod'
      'order by Sira')
    Left = 312
    Top = 72
  end
end
