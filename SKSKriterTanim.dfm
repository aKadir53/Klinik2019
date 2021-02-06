object frmSKSKriter: TfrmSKSKriter
  Left = 0
  Top = 0
  Caption = 'SKS '#304'statistik Kriterleri'
  ClientHeight = 465
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grid_Sks_Tanim: TcxGridKadir
    Left = 16
    Top = 24
    Width = 652
    Height = 385
    TabOrder = 0
    ExceleGonder = False
    PopupForm = False
    object Grid_Sks_TanimDBTableView1: TcxGridDBTableView
      Navigator.Buttons.OnButtonClick = Grid_Sks_TanimDBTableView1NavigatorButtonsButtonClick
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      NewItemRow.InfoText = 'Yeni Sat'#305'r Ekle'
      NewItemRow.Visible = True
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Appending = True
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object Grid_Sks_TanimDBTableView1sira: TcxGridDBColumn
        Caption = 'Sira'
        DataBinding.FieldName = 'sira'
        HeaderAlignmentHorz = taCenter
      end
      object Grid_Sks_TanimDBTableView1TetkikKod: TcxGridDBColumn
        DataBinding.FieldName = 'TetkikKod'
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object Grid_Sks_TanimDBTableView1TetkikAdi: TcxGridDBColumn
        DataBinding.FieldName = 'TetkikAdi'
        HeaderAlignmentHorz = taCenter
        Width = 116
      end
      object Grid_Sks_TanimDBTableView1Ref1: TcxGridDBColumn
        DataBinding.FieldName = 'Ref1'
        Visible = False
        Width = 137
      end
      object Grid_Sks_TanimDBTableView1Ref2: TcxGridDBColumn
        DataBinding.FieldName = 'Ref2'
        Visible = False
        Width = 46
      end
      object Grid_Sks_TanimDBTableView1Ref3: TcxGridDBColumn
        DataBinding.FieldName = 'Ref3'
        Visible = False
        Width = 48
      end
      object Grid_Sks_TanimDBTableView1Ref4: TcxGridDBColumn
        DataBinding.FieldName = 'Ref4'
        Visible = False
        Width = 246
      end
      object Grid_Sks_TanimDBTableView1Tip: TcxGridDBColumn
        DataBinding.FieldName = 'Tip'
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object Grid_Sks_TanimDBTableView1RefTip: TcxGridDBColumn
        DataBinding.FieldName = 'RefTip'
        HeaderAlignmentHorz = taCenter
        Width = 49
      end
      object Grid_Sks_TanimDBTableView1Column1: TcxGridDBColumn
        Caption = 'Kriter'
        DataBinding.FieldName = 'Operator'
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 249
      end
      object Grid_Sks_TanimDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'Hedef'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 39
      end
    end
    object Grid_Sks_TanimLevel1: TcxGridLevel
      GridView = Grid_Sks_TanimDBTableView1
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 240
    Top = 128
    object G1: TMenuItem
      Caption = 'G'#246'sterge Tan'#305'm Kartlar'#305
      ImageIndex = 28
      OnClick = G1Click
    end
    object S1: TMenuItem
      Caption = 'SKS Kriter Hedef Tablosu'
      ImageIndex = 73
      OnClick = S1Click
    end
  end
end
