object frmTopluHastaTedaviListesi: TfrmTopluHastaTedaviListesi
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmTopluHastaTedaviListesi'
  ClientHeight = 597
  ClientWidth = 1029
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
  object cxGrid1: TcxGridKadir
    Left = 0
    Top = 0
    Width = 1029
    Height = 597
    Align = alClient
    TabOrder = 0
    ExcelFileName = 'TopluTedaviList'
    ExceleGonder = True
    PopupForm = False
    ExplicitTop = 8
    object GridTopluTedaviListesi: TcxGridDBTableView
      OnCellDblClick = GridTopluTedaviListesiCellDblClick
      DataController.DataSource = DataSource2
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.DataRowHeight = 21
      OptionsView.GridLines = glVertical
      OptionsView.GroupByBox = False
      OptionsView.GroupRowHeight = 30
      Styles.OnGetContentStyle = GridTopluTedaviListesiStylesGetContentStyle
      Styles.Group = cxStyle2
      object GridTopluTedaviListesia: TcxGridDBColumn
        DataBinding.FieldName = 'a'
        Visible = False
        GroupIndex = 0
        IsCaptionAssigned = True
      end
      object GridTopluTedaviListesi_dg_: TcxGridDBColumn
        DataBinding.FieldName = '_dg_'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Content = cxStyle1
        Width = 84
        IsCaptionAssigned = True
      end
      object GridTopluTedaviListesisira: TcxGridDBColumn
        DataBinding.FieldName = 'sira'
        Visible = False
      end
      object GridTopluTedaviListesiDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = '1'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = '2'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = '3'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn4: TcxGridDBColumn
        DataBinding.FieldName = '4'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn5: TcxGridDBColumn
        DataBinding.FieldName = '5'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn6: TcxGridDBColumn
        DataBinding.FieldName = '6'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn7: TcxGridDBColumn
        DataBinding.FieldName = '7'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn8: TcxGridDBColumn
        DataBinding.FieldName = '8'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn9: TcxGridDBColumn
        DataBinding.FieldName = '9'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn10: TcxGridDBColumn
        DataBinding.FieldName = '10'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn11: TcxGridDBColumn
        DataBinding.FieldName = '11'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn12: TcxGridDBColumn
        DataBinding.FieldName = '12'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn13: TcxGridDBColumn
        DataBinding.FieldName = '13'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object GridTopluTedaviListesiDBColumn14: TcxGridDBColumn
        DataBinding.FieldName = '14'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = GridTopluTedaviListesi
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 48
    Top = 96
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excele G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object H1: TMenuItem
      Tag = -2
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = cxButtonCClick
    end
    object S1: TMenuItem
      Tag = -3
      Caption = 'Seans Kart'#305
      ImageIndex = 51
      OnClick = cxButtonCClick
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 56
    Top = 248
  end
  object ADOQuery1: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@t1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '20160701'
      end
      item
        Name = '@t2'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = '20160731'
      end>
    SQL.Strings = (
      'exec sp_TedaviListesiPivot :@t1,:@t2')
    Left = 56
    Top = 192
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 144
    Top = 56
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object SARIBANT: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
end
