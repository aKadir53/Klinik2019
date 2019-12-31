object frmMakinaDurumP: TfrmMakinaDurumP
  Left = 0
  Top = 0
  Caption = 'frmMakinaDurumP'
  ClientHeight = 421
  ClientWidth = 585
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 585
    Height = 421
    Align = alClient
    TabOrder = 0
    object Liste: TcxGridDBTableView
      DataController.DataSource = DataSource1
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
      OptionsView.GridLines = glVertical
      OptionsView.GroupByBox = False
      OptionsView.GroupRowHeight = 30
      object Listemn: TcxGridDBColumn
        Caption = 'Makina No'
        DataBinding.FieldName = 'mn'
        Width = 50
      end
      object ListeSeans: TcxGridDBColumn
        DataBinding.FieldName = 'Seans'
        Visible = False
        GroupIndex = 0
      end
      object ListeDBColumn01: TcxGridDBColumn
        DataBinding.FieldName = '01'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 66
      end
      object ListeDBColumn02: TcxGridDBColumn
        DataBinding.FieldName = '02'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn03: TcxGridDBColumn
        DataBinding.FieldName = '03'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn04: TcxGridDBColumn
        DataBinding.FieldName = '04'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn05: TcxGridDBColumn
        DataBinding.FieldName = '05'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn06: TcxGridDBColumn
        DataBinding.FieldName = '06'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn07: TcxGridDBColumn
        DataBinding.FieldName = '07'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn08: TcxGridDBColumn
        DataBinding.FieldName = '08'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn09: TcxGridDBColumn
        DataBinding.FieldName = '09'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn10: TcxGridDBColumn
        DataBinding.FieldName = '10'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn11: TcxGridDBColumn
        DataBinding.FieldName = '11'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn12: TcxGridDBColumn
        DataBinding.FieldName = '12'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn13: TcxGridDBColumn
        DataBinding.FieldName = '13'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn14: TcxGridDBColumn
        DataBinding.FieldName = '14'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn15: TcxGridDBColumn
        DataBinding.FieldName = '15'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn16: TcxGridDBColumn
        DataBinding.FieldName = '16'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn17: TcxGridDBColumn
        DataBinding.FieldName = '17'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn18: TcxGridDBColumn
        DataBinding.FieldName = '18'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn19: TcxGridDBColumn
        DataBinding.FieldName = '19'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn20: TcxGridDBColumn
        DataBinding.FieldName = '20'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn21: TcxGridDBColumn
        DataBinding.FieldName = '21'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn22: TcxGridDBColumn
        DataBinding.FieldName = '22'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn23: TcxGridDBColumn
        DataBinding.FieldName = '23'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn24: TcxGridDBColumn
        DataBinding.FieldName = '24'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn25: TcxGridDBColumn
        DataBinding.FieldName = '25'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn26: TcxGridDBColumn
        DataBinding.FieldName = '26'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn27: TcxGridDBColumn
        DataBinding.FieldName = '27'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn28: TcxGridDBColumn
        DataBinding.FieldName = '28'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn29: TcxGridDBColumn
        DataBinding.FieldName = '29'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn30: TcxGridDBColumn
        DataBinding.FieldName = '30'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
      object ListeDBColumn31: TcxGridDBColumn
        DataBinding.FieldName = '31'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.Alignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 35
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = Liste
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 480
    Top = 8
  end
  object Stoklar: TListeAc
    ListeBaslik = 'Stok Kartlar'#305
    TColcount = 4
    TColsW = '50,80,150,80'
    Table = 'StokKart_View'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'id'
      'code'
      'NAME1'
      'tanimi')
    KolonBasliklari.Strings = (
      'ID'
      'Stok Kodu'
      'Stok Tan'#305'm'#305
      'Grup Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 528
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADO_List
    Left = 224
    Top = 344
  end
  object ADO_List: TADOQuery
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
      end
      item
        Name = '@t'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 1
        Value = '0'
      end
      item
        Name = '@s'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'exec sp_MakineDurumListesiPivot :@t1,:@t2,:@t,:@s'
      ''
      ''
      '')
    Left = 280
    Top = 344
  end
end
