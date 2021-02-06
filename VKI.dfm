object frmVKI: TfrmVKI
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmVKI'
  ClientHeight = 597
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGridKadir
    Left = 0
    Top = 0
    Width = 609
    Height = 597
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
    LookAndFeel.Kind = lfOffice11
    ExcelFileName = 'KiloOrder'
    ExceleGonder = True
    PopupForm = False
    ExplicitWidth = 1029
    object GridEkstre: TcxGridDBBandedTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      OnEditKeyDown = GridEkstreEditKeyDown
      OnEditValueChanged = GridEkstreEditValueChanged
      DataController.DataSource = DataSource1
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = 'Listelenen:###'
          Kind = skCount
          Column = GridEkstreTCKIMLIKNO
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Arama Yap'#305'n'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Hasta Bilgisi'
          FixedKind = fkLeft
          Width = 378
        end
        item
          Caption = 'VKI Bilgileri'
          Width = 184
        end>
      object GridEkstredosyaNo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'dosyaNo'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridEkstreTCKIMLIKNO: TcxGridDBBandedColumn
        Caption = 'Kimilk No'
        DataBinding.FieldName = 'TCKIMLIKNO'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridEkstrehastaAdi: TcxGridDBBandedColumn
        Caption = 'Hasta Adi'
        DataBinding.FieldName = 'hastaAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridEkstreIdealKilo: TcxGridDBBandedColumn
        Caption = #304'deal Kilo'
        DataBinding.FieldName = 'IdealKilo'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.00;-,0.00'
        HeaderAlignmentHorz = taCenter
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridEkstreCins: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Cins'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            ImageIndex = 38
            Value = '1'
          end
          item
            ImageIndex = 44
            Value = '0'
          end>
        Options.Editing = False
        Width = 34
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object GridEkstreYas: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Yas'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 28
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object GridEkstreColumn1: TcxGridDBBandedColumn
        Caption = 'Boy(cm)'
        DataBinding.FieldName = 'boy'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.00;-,0.00'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object GridEkstreColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VKI'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.DisplayFormat = ',0.00;-,0.00'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = GridEkstre
      Options.DetailFrameColor = clHighlight
    end
  end
  object ado: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    BeforePost = adoBeforePost
    AfterPost = adoAfterPost
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'exec sp_TopluSeansGetir '#39'20190501'#39','#39'20191019'#39','#39#39','#39#39','#39'000005'#39
      '')
    Left = 96
    Top = 184
  end
  object DataSource1: TDataSource
    DataSet = ado
    Left = 96
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 48
    Top = 96
    object Y1: TMenuItem
      Tag = -5
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = Y1Click
    end
    object E1: TMenuItem
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = E1Click
    end
    object H1: TMenuItem
      Tag = -2
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = H1Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 8
    Top = 112
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
end
