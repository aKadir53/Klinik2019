object frmTIKriter: TfrmTIKriter
  Left = 0
  Top = 0
  Caption = 'T'#305'bbi '#304'statistik Kriterleri'
  ClientHeight = 465
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Grid_Sks_Tanim: TcxGridKadir
    Left = 0
    Top = 0
    Width = 934
    Height = 465
    Align = alClient
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
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
      end
      object Grid_Sks_TanimDBTableView1TetkikKod: TcxGridDBColumn
        DataBinding.FieldName = 'TetkikKod'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object Grid_Sks_TanimDBTableView1TetkikAdi: TcxGridDBColumn
        DataBinding.FieldName = 'TetkikAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 116
      end
      object Grid_Sks_TanimDBTableView1Ref1: TcxGridDBColumn
        DataBinding.FieldName = 'Ref1'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        Width = 137
      end
      object Grid_Sks_TanimDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Ref1'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 60
      end
      object Grid_Sks_TanimDBTableView1Ref2: TcxGridDBColumn
        DataBinding.FieldName = 'Ref2'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 60
      end
      object Grid_Sks_TanimDBTableView1Ref3: TcxGridDBColumn
        DataBinding.FieldName = 'Ref3'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 60
      end
      object Grid_Sks_TanimDBTableView1Ref4: TcxGridDBColumn
        DataBinding.FieldName = 'Ref4'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 60
      end
      object Grid_Sks_TanimDBTableView1Tip: TcxGridDBColumn
        DataBinding.FieldName = 'Tip'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 64
      end
      object Grid_Sks_TanimDBTableView1RefTip: TcxGridDBColumn
        DataBinding.FieldName = 'RefTip'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 49
      end
      object Grid_Sks_TanimDBTableView1Column2: TcxGridDBColumn
        Caption = 'Ref1 Ba'#351'l'#305'k'
        DataBinding.FieldName = 'ref1Caption'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object Grid_Sks_TanimDBTableView1Column3: TcxGridDBColumn
        Caption = 'Ref2 Ba'#351'l'#305'k'
        DataBinding.FieldName = 'Ref2Caption'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object Grid_Sks_TanimDBTableView1Column4: TcxGridDBColumn
        Caption = 'Ref3 Ba'#351'l'#305'k'
        DataBinding.FieldName = 'Ref3Caption'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object Grid_Sks_TanimDBTableView1Column5: TcxGridDBColumn
        Caption = 'Ref4 Ba'#351'l'#305'k'
        DataBinding.FieldName = 'Ref4Caption'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object Grid_Sks_TanimDBTableView1Column6: TcxGridDBColumn
        Caption = 'Aciklama'
        DataBinding.FieldName = 'aciklama'
        PropertiesClassName = 'TcxMemoProperties'
        HeaderAlignmentHorz = taCenter
        Width = 150
      end
    end
    object Grid_Sks_TanimLevel1: TcxGridLevel
      GridView = Grid_Sks_TanimDBTableView1
    end
  end
end
