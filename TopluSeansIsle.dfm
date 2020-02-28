object frmTopluSeans: TfrmTopluSeans
  Tag = 100
  Left = 107
  Top = 70
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Seans Onaylama'
  ClientHeight = 637
  ClientWidth = 1325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 1325
    Height = 2
    Align = alTop
    Caption = 'Hasta Seans Onaylama Cetveli'
    Color = clBlack
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object chkGeldi: TcxCheckBox
      Left = 516
      Top = 5
      Caption = 'Seansa Gelmeyenleri G'#246'sterme'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 0
      Transparent = True
      Visible = False
      OnClick = chkGeldiClick
      Width = 209
    end
    object chkGelmeyen: TcxCheckBox
      Left = 749
      Top = 3
      Caption = 'Sadece Seansa Gelmeyenler'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 1
      Transparent = True
      Visible = False
      OnClick = chkGelmeyenClick
      Width = 209
    end
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 576
    Width = 1325
    Height = 61
    Align = alBottom
    Color = clBackground
    TabOrder = 1
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
    object cxLabel13: TcxLabel
      Left = 222
      Top = 28
      Caption = 'D'#246'nem Girilen S.'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txtSeansSayi: TcxTextEdit
      Left = 176
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 0
      Text = '0'
      Width = 43
    end
    object cxLabel8: TcxLabel
      Left = 93
      Top = 6
      Caption = 'Seans Say'#305's'#305
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txtGirilenSeans: TcxTextEdit
      Left = 305
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 2
      Text = '0'
      Width = 43
    end
    object txtGirilenSeanslabel: TcxLabel
      Left = 222
      Top = 6
      Caption = 'Girilen Seans'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txtGonderilmeyen: TcxTextEdit
      Left = 470
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 4
      Text = '0'
      Width = 43
    end
    object cxLabel9: TcxLabel
      Left = 354
      Top = 6
      Caption = 'Med.G'#246'nderilmeyen'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txt230: TcxTextEdit
      Left = 659
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 6
      Text = '0'
      Width = 43
    end
    object cxLabel10: TcxLabel
      Left = 528
      Top = 6
      Caption = 'Seans Say'#305's'#305' (704230)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txt234: TcxTextEdit
      Left = 838
      Top = 4
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 8
      Text = '0'
      Width = 43
    end
    object cxLabel11: TcxLabel
      Left = 708
      Top = 6
      Caption = 'Seans Say'#305's'#305' (704234)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txtDonemSeans: TcxTextEdit
      Left = 176
      Top = 26
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 10
      Text = '0'
      Width = 43
    end
    object cxLabel12: TcxLabel
      Left = 93
      Top = 28
      Caption = 'D'#246'nem Seans'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txtDonemGirilen: TcxTextEdit
      Left = 305
      Top = 26
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 12
      Text = '0'
      Width = 43
    end
    object txt230Donem: TcxTextEdit
      Left = 659
      Top = 25
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 14
      Text = '0'
      Width = 43
    end
    object cxLabel14: TcxLabel
      Left = 529
      Top = 27
      Caption = 'D'#246'nem S.  (704230)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txt234Donem: TcxTextEdit
      Left = 838
      Top = 25
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 16
      Text = '0'
      Width = 43
    end
    object cxLabel15: TcxLabel
      Left = 709
      Top = 27
      Caption = 'Donem S. (704234)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object txt233Donem: TcxTextEdit
      Left = 1001
      Top = 24
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      TabOrder = 18
      Text = '0'
      Width = 43
    end
    object cxLabel16: TcxLabel
      Left = 886
      Top = 27
      Caption = 'Donem S. (704233)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'mcskin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'mcskin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'mcskin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'mcskin'
      Transparent = True
    end
    object cxGridButToplam: TcxGrid
      Left = 1
      Top = 1
      Width = 1185
      Height = 59
      Align = alLeft
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      LevelTabs.ImageBorder = 2
      LevelTabs.Style = 1
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
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
        FilterBox.CustomizeDialog = False
        DataController.DataSource = DataSource3
        DataController.Filter.Active = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateLike = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1Toplam
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1P704230
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1P704230Girilen
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1P704234
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1P704234Girilen
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1Column1
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1Column2
          end
          item
            Format = '#.##'
            Kind = skSum
            Column = cxGridDBTableView1Column3
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.MRUItemsList = False
        Filtering.ColumnMRUItemsList = False
        FilterRow.InfoText = 'Arama Sat'#305'r'#305
        FilterRow.SeparatorWidth = 2
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.RowSeparatorColor = clBlack
        Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
        object cxGridDBTableView1KURUMTIPI: TcxGridDBColumn
          Caption = 'Kurum Tip'
          DataBinding.FieldName = 'KURUMTIPI'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'SGK'
              ImageIndex = 0
              Value = '1'
            end
            item
              Description = 'Yurt D'#305#351#305
              Value = '99'
            end
            item
              Description = 'Sigorta'
              Value = '98'
            end
            item
              Description = #214'zel'
              Value = '8'
            end>
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle6
          Width = 74
        end
        object cxGridDBTableView1Toplam: TcxGridDBColumn
          DataBinding.FieldName = 'Toplam'
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle6
          Width = 56
        end
        object cxGridDBTableView1Column3: TcxGridDBColumn
          DataBinding.FieldName = 'Girilen'
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle6
          Width = 50
        end
        object cxGridDBTableView1P704230: TcxGridDBColumn
          DataBinding.FieldName = 'Girilmeyen'
          HeaderAlignmentHorz = taCenter
          Styles.Header = cxStyle6
          Width = 80
        end
        object cxGridDBTableView1P704230Girilen: TcxGridDBColumn
          Caption = 'P704230 Girilen'
          DataBinding.FieldName = 'P704230Girilen'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle6
          Styles.Footer = cxStyle6
          Styles.Header = cxStyle6
          Width = 104
        end
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = 'Gonderilmeyen'
          DataBinding.FieldName = 'P704230Gonderilmeyen'
          Styles.Header = cxStyle6
          Width = 100
        end
        object cxGridDBTableView1P704234: TcxGridDBColumn
          Caption = 'P704234 Plan'
          DataBinding.FieldName = 'P704234'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTableView1P704234Girilen: TcxGridDBColumn
          Caption = 'P704234 Girilen'
          DataBinding.FieldName = 'P704234Girilen'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Styles.Content = cxStyle7
          Styles.Footer = cxStyle7
          Styles.Header = cxStyle7
          Width = 110
        end
        object cxGridDBTableView1Column2: TcxGridDBColumn
          Caption = 'P704234 Gonderilmeyen'
          DataBinding.FieldName = 'P704234Gonderilmeyen'
          Visible = False
          Width = 121
        end
        object cxGridDBTableView1P704233: TcxGridDBColumn
          Caption = 'P704233 Plan'
          DataBinding.FieldName = 'P704233'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object cxGridDBTableView1P704233Girilen: TcxGridDBColumn
          Caption = 'P704233 Girilen'
          DataBinding.FieldName = 'P704233Girilen'
          Visible = False
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object cxGridDBTableView1Kodsuz: TcxGridDBColumn
          DataBinding.FieldName = 'Kodsuz'
          Visible = False
          HeaderAlignmentHorz = taCenter
        end
      end
      object cxGridDBBandedTableView1: TcxGridDBBandedTableView
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.GridMode = True
        DataController.DataModeController.SmartRefresh = True
        DataController.DetailKeyFieldNames = 'Tan'#305'm'
        DataController.Filter.Active = True
        DataController.Filter.AutoDataSetFilter = True
        DataController.Filter.TranslateBetween = True
        DataController.Filter.TranslateIn = True
        DataController.Filter.TranslateLike = True
        DataController.KeyFieldNames = 'Tan'#305'm'
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoFocusTopRowAfterSorting, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = cxGridDBBandedColumn5
          end
          item
            Kind = skSum
            Column = cxGridDBBandedColumn5
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.InfoText = 'Arama Sat'#305'r'#305
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.DragDropText = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsBehavior.PullFocusing = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.BandCaptionsInColumnAlternateCaption = True
        OptionsView.BandHeaderEndEllipsis = True
        Bands = <
          item
            Caption = 'Geli'#351'ler'
          end>
        object cxGridDBBandedColumn1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Tan'#305'm'
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn2: TcxGridDBBandedColumn
          Caption = 'Tan'#305'm Ad'#305
          DataBinding.FieldName = 'ad'
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn3: TcxGridDBBandedColumn
          Caption = 'Toplam'
          DataBinding.FieldName = 'adet'
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn4: TcxGridDBBandedColumn
          DataBinding.FieldName = 'kurumT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn5: TcxGridDBBandedColumn
          DataBinding.FieldName = 'hastaT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '#,###.#0'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGridDBBandedTableView2: TcxGridDBBandedTableView
        DataController.DetailKeyFieldNames = 'gelisNo'
        DataController.KeyFieldNames = 'gelisNo'
        DataController.MasterKeyFieldNames = 'gelisNo'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Hareketler'
          end>
        object cxGridDBBandedColumn6: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NAME1'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn7: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cxGridDBBandedTableView3: TcxGridDBBandedTableView
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Bands = <
          item
            Caption = 'i'#351'lemler'
          end>
      end
      object cxGridDBBandedTableView4: TcxGridDBBandedTableView
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.GridMode = True
        DataController.Filter.Active = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.BandCaptionsInColumnAlternateCaption = True
        Bands = <
          item
          end>
        object cxGridDBBandedColumn8: TcxGridDBBandedColumn
          Caption = 'Tanim'
          DataBinding.FieldName = 'TANIM'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn9: TcxGridDBBandedColumn
          Caption = 'Hasta Ad'#305
          DataBinding.FieldName = 'HASTAADI'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn10: TcxGridDBBandedColumn
          Caption = 'Soyad'#305
          DataBinding.FieldName = 'HASTASOYADI'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn11: TcxGridDBBandedColumn
          Caption = 'Hizmet Ad'#305
          DataBinding.FieldName = 'NAME1'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn12: TcxGridDBBandedColumn
          Caption = 'Kurum F'
          DataBinding.FieldName = 'KSATISF'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridDBBandedColumn13: TcxGridDBBandedColumn
          Caption = 'Hasta F'
          DataBinding.FieldName = 'SATISF'
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Hastalar'
        GridView = cxGridDBTableView1
        Options.DetailFrameColor = clHighlight
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 1322
    Top = 2
    Align = alRight
    Caption = '.'
    PanelStyle.OfficeBackgroundKind = pobkStyleColor
    Style.LookAndFeel.SkinName = 'UserSkin'
    StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
    StyleFocused.LookAndFeel.SkinName = 'UserSkin'
    StyleHot.LookAndFeel.SkinName = 'UserSkin'
    TabOrder = 2
    Height = 574
    Width = 3
    object chkBiyo: TcxCheckBox
      Left = 1
      Top = -4
      Caption = 'Biyometrik Kimlik Do'#287'rulama'
      Enabled = False
      Style.LookAndFeel.SkinName = 'UserSkin'
      StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
      StyleFocused.LookAndFeel.SkinName = 'UserSkin'
      StyleHot.LookAndFeel.SkinName = 'UserSkin'
      TabOrder = 0
      Transparent = True
      Visible = False
      Width = 144
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 2
    Align = alClient
    Caption = ' '
    PanelStyle.Active = True
    TabOrder = 3
    Height = 574
    Width = 1322
    object HizmetPage: TcxPageControl
      Left = 2
      Top = 2
      Width = 1318
      Height = 570
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = SeanslarPage
      Properties.Style = 11
      OnPageChanging = HizmetPagePageChanging
      ClientRectBottom = 563
      ClientRectLeft = 3
      ClientRectRight = 1311
      ClientRectTop = 26
      object SeanslarPage: TcxTabSheet
        Caption = 'Seanslar'
        ImageIndex = 125
        object gridHastalar: TAdvStringGrid
          Tag = 200
          Left = -6
          Top = 345
          Width = 1216
          Height = 56
          Cursor = crDefault
          Hint = 'Fatura Bilgileri'
          TabStop = False
          Color = clWhite
          ColCount = 21
          Ctl3D = False
          DefaultColWidth = 20
          DefaultRowHeight = 21
          DrawingStyle = gdsClassic
          RowCount = 2
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect, goFixedColClick]
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          PopupMenu = PopupMenu1
          ScrollBars = ssVertical
          ShowHint = True
          TabOrder = 0
          OnClick = gridHastalarClick
          OnDblClick = gridHastalarDblClick
          OnFixedCellClick = gridHastalarFixedCellClick
          GridLineColor = 15527152
          GridFixedLineColor = 13947601
          HoverRowCells = [hcNormal, hcSelected]
          OnGridHint = gridHastalarGridHint
          OnGetEditorType = gridHastalarGetEditorType
          OnButtonClick = gridHastalarButtonClick
          OnCheckBoxClick = gridHastalarCheckBoxClick
          OnEditCellDone = gridHastalarEditCellDone
          ActiveCellFont.Charset = TURKISH_CHARSET
          ActiveCellFont.Color = clRed
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
          ActiveCellColor = 16575452
          ActiveCellColorTo = 16571329
          Bands.Active = True
          Bands.PrimaryColor = clWhite
          Bands.SecondaryColor = clBtnFace
          CellNode.ShowTree = False
          ColumnHeaders.Strings = (
            ''
            'Hasta Ad'#305
            'Durum'
            'Sebeb'
            'Uygulama Tarih'
            'Talep S'#305'ra'
            ''
            'Dosya'
            'Geli'#351
            'Doktor'
            'Mak.No '
            'Seans No'
            'SeansGun'
            'Seans Say'#305
            'Rapor Ba'#351'.Tarihi'
            'Rapor Bit.Tarihi'
            'Rapor Takip No'
            'Takip'
            'ProtokolNo'
            'Kod'
            'M.Kod')
          ControlLook.FixedGradientMirrorFrom = 16049884
          ControlLook.FixedGradientMirrorTo = 16247261
          ControlLook.FixedGradientHoverFrom = 16710648
          ControlLook.FixedGradientHoverTo = 16446189
          ControlLook.FixedGradientHoverMirrorFrom = 16049367
          ControlLook.FixedGradientHoverMirrorTo = 15258305
          ControlLook.FixedGradientDownFrom = 15853789
          ControlLook.FixedGradientDownTo = 15852760
          ControlLook.FixedGradientDownMirrorFrom = 15522767
          ControlLook.FixedGradientDownMirrorTo = 15588559
          ControlLook.FixedGradientDownBorder = 14007466
          ControlLook.ControlStyle = csClassic
          ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownHeader.Font.Color = clWindowText
          ControlLook.DropDownHeader.Font.Height = -11
          ControlLook.DropDownHeader.Font.Name = 'Tahoma'
          ControlLook.DropDownHeader.Font.Style = []
          ControlLook.DropDownHeader.Visible = True
          ControlLook.DropDownHeader.Buttons = <>
          ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
          ControlLook.DropDownFooter.Font.Color = clWindowText
          ControlLook.DropDownFooter.Font.Height = -11
          ControlLook.DropDownFooter.Font.Name = 'Tahoma'
          ControlLook.DropDownFooter.Font.Style = []
          ControlLook.DropDownFooter.Visible = True
          ControlLook.DropDownFooter.Buttons = <>
          EnhRowColMove = False
          Filter = <>
          FilterActive = True
          FilterDropDown.Font.Charset = DEFAULT_CHARSET
          FilterDropDown.Font.Color = clWindowText
          FilterDropDown.Font.Height = -11
          FilterDropDown.Font.Name = 'Tahoma'
          FilterDropDown.Font.Style = []
          FilterDropDownClear = '(All)'
          FixedColWidth = 30
          FixedRowHeight = 30
          FixedRowAlways = True
          FixedFont.Charset = TURKISH_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = []
          Flat = True
          FloatFormat = '%.2f'
          Look = glWin7
          MouseActions.AllSelect = True
          MouseActions.DisjunctRowSelect = True
          MouseActions.RangeSelectAndEdit = True
          MouseActions.RowSelect = True
          MouseActions.RowSelectPersistent = True
          Navigation.AllowClipboardAlways = True
          Navigation.HomeEndKey = heFirstLastRow
          PrintSettings.DateFormat = 'dd/mm/yyyy'
          PrintSettings.Font.Charset = TURKISH_CHARSET
          PrintSettings.Font.Color = clWindowText
          PrintSettings.Font.Height = -11
          PrintSettings.Font.Name = 'Tahoma'
          PrintSettings.Font.Style = []
          PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
          PrintSettings.FixedFont.Color = clWindowText
          PrintSettings.FixedFont.Height = -11
          PrintSettings.FixedFont.Name = 'Tahoma'
          PrintSettings.FixedFont.Style = []
          PrintSettings.HeaderFont.Charset = TURKISH_CHARSET
          PrintSettings.HeaderFont.Color = clWindowText
          PrintSettings.HeaderFont.Height = -11
          PrintSettings.HeaderFont.Name = 'Tahoma'
          PrintSettings.HeaderFont.Style = []
          PrintSettings.FooterFont.Charset = TURKISH_CHARSET
          PrintSettings.FooterFont.Color = clWindowText
          PrintSettings.FooterFont.Height = -11
          PrintSettings.FooterFont.Name = 'Tahoma'
          PrintSettings.FooterFont.Style = []
          PrintSettings.Borders = pbNoborder
          PrintSettings.Centered = False
          PrintSettings.RepeatFixedRows = True
          PrintSettings.Orientation = poLandscape
          PrintSettings.FitToPage = fpGrow
          PrintSettings.PageNumSep = '/'
          PrintSettings.NoAutoSize = True
          ScrollWidth = 16
          SearchFooter.Color = 16645370
          SearchFooter.ColorTo = 16247261
          SearchFooter.Font.Charset = DEFAULT_CHARSET
          SearchFooter.Font.Color = clWindowText
          SearchFooter.Font.Height = -11
          SearchFooter.Font.Name = 'Tahoma'
          SearchFooter.Font.Style = []
          SelectionRectangle = True
          SortSettings.Column = 0
          SortSettings.HeaderColor = 16579058
          SortSettings.HeaderColorTo = 16579058
          SortSettings.HeaderMirrorColor = 16380385
          SortSettings.HeaderMirrorColorTo = 16182488
          SyncGrid.SelectionRow = True
          Version = '6.2.6.1'
          WordWrap = False
          ColWidths = (
            30
            149
            32
            70
            81
            107
            50
            2
            27
            84
            44
            41
            47
            40
            77
            67
            60
            60
            63
            24
            20)
          RowHeights = (
            30
            21)
          object Panel1: TPanel
            Left = 384
            Top = 112
            Width = 337
            Height = 227
            TabOrder = 2
            Visible = False
          end
        end
        object cxGrid_Seans: TcxGridKadir
          Left = 0
          Top = 19
          Width = 1308
          Height = 518
          Cursor = crHandPoint
          Align = alClient
          TabOrder = 1
          ExcelFileName = 'TopluSeans'
          ExceleGonder = True
          PopupForm = False
          object Liste: TcxGridDBBandedTableView
            PopupMenu = PopupMenu1
            OnCellDblClick = ListeCellDblClick
            OnFocusedRecordChanged = ListeFocusedRecordChanged
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DataSource1
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Seans Say'#305's'#305'  : #'
                Kind = skCount
                Column = ListehastaAdi
              end
              item
                Format = '#'
                Kind = skSum
                Column = Listedurum
              end>
            DataController.Summary.SummaryGroups = <>
            Images = DATALAR.imag24png
            OptionsBehavior.AlwaysShowEditor = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.GroupBySorting = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = 'Listelenecek Kay'#305't Yok'
            OptionsView.DataRowHeight = 35
            OptionsView.Footer = True
            OptionsView.GridLines = glHorizontal
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 33
            OptionsView.BandHeaderHeight = 21
            Bands = <
              item
                Caption = 'Hasta Bilgileri'
                FixedKind = fkLeft
                Styles.Header = cxStyle2
                Width = 277
              end
              item
                Caption = 'Geli'#351' Bilgisi'
                FixedKind = fkLeft
                Styles.Header = cxStyle2
                Width = 314
              end
              item
                Caption = 'Seans Bilgileri'
                Styles.Header = cxStyle2
                Width = 642
              end
              item
                Caption = 'Rapor Bilgisi'
                Styles.Header = cxStyle2
                Width = 128
              end
              item
                Caption = 'Kilo Order'
                Styles.Header = cxStyle2
              end>
            object ListeSiraNumarasi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SiraNumarasi'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object ListedosyaNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'dosyaNo'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object ListeGelisNo: TcxGridDBBandedColumn
              Caption = 'G No'
              DataBinding.FieldName = 'GelisNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 28
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object ListehastaAdi: TcxGridDBBandedColumn
              Caption = 'Hasta Ad'#305
              DataBinding.FieldName = 'hastaAdi'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 164
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object Listesirano: TcxGridDBBandedColumn
              Caption = 'RefNo'
              DataBinding.FieldName = 'islemRefNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Width = 42
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object Listedurum: TcxGridDBBandedColumn
              Caption = 'Durum'
              DataBinding.FieldName = 'durum'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ReadOnly = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Properties.OnEditValueChanged = ListedurumPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderHint = 'Onaylamak '#304#231'in '#199'ift T'#305'kla'
              MinWidth = 40
              Options.Editing = False
              Options.HorzSizing = False
              Options.Moving = False
              Styles.Content = cxStyle5
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object ListeDiyalizorTipi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DiyalizorTipi'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object ListeDoktorKod: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Doktor'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Items = <>
              Properties.ReadOnly = False
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 140
              Position.BandIndex = 2
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object ListeTalepSira: TcxGridDBBandedColumn
              Caption = 'IslemS'#305'raNo'
              DataBinding.FieldName = 'islemSiraNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Width = 94
              Position.BandIndex = 2
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object ListeislemSiraNoYatak: TcxGridDBBandedColumn
              DataBinding.FieldName = 'islemSiraNoYatak'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object ListesiranoYatis: TcxGridDBBandedColumn
              DataBinding.FieldName = 'siranoYatis'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object ListeTakpNo: TcxGridDBBandedColumn
              Caption = 'Takip No'
              DataBinding.FieldName = 'TakipNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object ListeSERVIS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SERVIS'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object ListemakinaNo: TcxGridDBBandedColumn
              Caption = 'Mak No'
              DataBinding.FieldName = 'makinaNo'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = '0#'
              Properties.ReadOnly = False
              Properties.OnEditValueChanged = ListemakinaNoPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.SortByDisplayText = isbtOn
              Styles.Content = cxStyle5
              Width = 43
              Position.BandIndex = 2
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object ListebasvuruNo: TcxGridDBBandedColumn
              Caption = 'Ba'#351'vuru No'
              DataBinding.FieldName = 'basvuruNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 66
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object ListeraporTakipNo: TcxGridDBBandedColumn
              Caption = 'Rapor Takip No'
              DataBinding.FieldName = 'raporTakipNo'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Buttons = <
                item
                  Caption = '...'
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ReadOnly = True
              Properties.OnButtonClick = ListeraporTakipNoPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 81
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object ListeraporNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'raporNo'
              Visible = False
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 1
            end
            object ListeraporTarihi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'raporTarihi'
              Visible = False
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 1
            end
            object ListeverenTesisKodu: TcxGridDBBandedColumn
              DataBinding.FieldName = 'verenTesisKodu'
              Visible = False
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 1
            end
            object ListeseansGun: TcxGridDBBandedColumn
              Caption = 'Seans Gun'
              DataBinding.FieldName = 'seansGun'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Width = 37
              Position.BandIndex = 3
              Position.ColIndex = 3
              Position.RowIndex = 1
            end
            object ListeseansSayi: TcxGridDBBandedColumn
              Caption = 'Seans Sayi'
              DataBinding.FieldName = 'seansSayi'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Width = 36
              Position.BandIndex = 3
              Position.ColIndex = 4
              Position.RowIndex = 1
            end
            object ListebaslangicTarihi: TcxGridDBBandedColumn
              Caption = 'Baslangic Tarihi'
              DataBinding.FieldName = 'baslangicTarihi'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Width = 68
              Position.BandIndex = 3
              Position.ColIndex = 5
              Position.RowIndex = 1
            end
            object ListeBitisTarihi: TcxGridDBBandedColumn
              Caption = 'Bitis Tarihi'
              DataBinding.FieldName = 'BitisTarihi'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Width = 70
              Position.BandIndex = 3
              Position.ColIndex = 6
              Position.RowIndex = 1
            end
            object ListeADI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ADI'
              Visible = False
              Width = 115
              Position.BandIndex = 2
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object Listefoto: TcxGridDBBandedColumn
              DataBinding.FieldName = 'foto'
              PropertiesClassName = 'TcxImageProperties'
              Properties.Center = False
              Properties.GraphicClassName = 'TJPEGImage'
              Properties.GraphicTransparency = gtTransparent
              Properties.Proportional = False
              Properties.Stretch = True
              Visible = False
              HeaderGlyphAlignmentHorz = taCenter
              HeaderImageIndex = 40
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object ListeSeans: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Seans'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '1'
                '2'
                '3'
                '4'
                '5')
              Properties.ReadOnly = False
              Properties.OnEditValueChanged = ListeSeansPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 36
              Position.BandIndex = 2
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object ListeTCKIMLIKNO: TcxGridDBBandedColumn
              Caption = 'Tc Kimlik No'
              DataBinding.FieldName = 'TCKIMLIKNO'
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object ListeSNProtokolNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SNProtokolNo'
              Visible = False
              Width = 172
              Position.BandIndex = 2
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object ListeGIRISKILO: TcxGridDBBandedColumn
              Caption = 'Giri'#351' Kilo'
              DataBinding.FieldName = 'GIRISKILO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.ReadOnly = True
              Properties.OnEditValueChanged = ListeGIRISKILOPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 52
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object ListeCIKISKILO: TcxGridDBBandedColumn
              Caption = #199#305'k'#305#351' Kilo'
              DataBinding.FieldName = 'CIKISKILO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              Properties.ReadOnly = True
              Properties.OnEditValueChanged = ListeCIKISKILOPropertiesEditValueChanged
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 49
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object ListeIdealKilo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'IdealKilo'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 2
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object ListeseansKontrol: TcxGridDBBandedColumn
              DataBinding.FieldName = 'seansKontrol'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object ListeGIRISYOLU: TcxGridDBBandedColumn
              Caption = 'Giri'#351' Yolu'
              DataBinding.FieldName = 'GIRISYOLU'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              Visible = False
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 99
              Position.BandIndex = 2
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object ListeDC: TcxGridDBBandedColumn
              Caption = 'Diyaliz'#246'r Cinsi'
              DataBinding.FieldName = 'DC'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              Visible = False
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 110
              Position.BandIndex = 2
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object ListeD: TcxGridDBBandedColumn
              Caption = 'Diyalizat'
              DataBinding.FieldName = 'D'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              Visible = False
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 112
              Position.BandIndex = 2
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object ListeYA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'YA'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              Visible = False
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 30
              Position.BandIndex = 2
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object ListeAPH: TcxGridDBBandedColumn
              DataBinding.FieldName = 'APH'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DropDownListStyle = lsFixedList
              Visible = False
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 35
              Position.BandIndex = 2
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object ListeKanAlindimi: TcxGridDBBandedColumn
              Caption = 'Kan'
              DataBinding.FieldName = 'KanAlindimi'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Images = DATALAR.imag24png
              Properties.Items = <
                item
                  ImageIndex = 117
                  Value = 1
                end>
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Width = 42
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object ListeVatandasTip: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VatandasTip'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object Listebhdat: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bhdat'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object Listesebeb: TcxGridDBBandedColumn
              Caption = 'Seansa Girmeme Sebebi'
              DataBinding.FieldName = 'sebeb'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.Items.Strings = (
                '0 - Ba'#351'ka Merkeze Ge'#231'ici Gitme'
                '9 - Hastaneye Yatma'
                '10 - Kendi '#304'ste'#287'i '#304'le Girmedi'
                '11 - T'#305'bbi Sebeb')
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle5
              Width = 212
              Position.BandIndex = 2
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object ListeTanG: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanG'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object ListeTanC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanC'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object ListeNabizG: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NabizG'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object ListeNabizC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NabizC'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object ListeTanGK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanGK'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object ListeTanCK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanCK'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object ListeHemodiyalizTip: TcxGridDBBandedColumn
              DataBinding.FieldName = 'HemodiyalizTip'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object ListeCins: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cins'
              PropertiesClassName = 'TcxImageComboBoxProperties'
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
              Width = 32
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object ListeseansRaporKontrol: TcxGridDBBandedColumn
              DataBinding.FieldName = 'seansRaporKontrol'
              Visible = False
              Position.BandIndex = 2
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object Listekod: TcxGridDBBandedColumn
              Caption = 'Kod'
              DataBinding.FieldName = 'code'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Width = 60
              Position.BandIndex = 2
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object ListeMedulaDonenKod: TcxGridDBBandedColumn
              Caption = 'M.Kod'
              DataBinding.FieldName = 'MedulaDonenKod'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Width = 47
              Position.BandIndex = 2
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object ListeColumn1: TcxGridDBBandedColumn
              Caption = 'Ya'#351
              DataBinding.FieldName = 'YAs'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.FilteringPopup = False
              Options.Sorting = False
              Styles.Content = cxStyle4
              Styles.Header = cxStyle3
              Width = 27
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object ListeColumn3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Tarih'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle5
              Width = 95
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object ListeColumn6: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KURUMTIPI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object ListeColumn2: TcxGridDBBandedColumn
              Caption = 'SYSTakipNo'
              DataBinding.FieldName = 'sysTakipNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 98
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object ListeColumn4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DamarIziKontrol'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ImageAlign = iaRight
              Properties.Images = DATALAR.imag24png
              Properties.Items = <
                item
                  ImageIndex = 106
                  Value = 1
                end
                item
                  Value = 0
                end>
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              HeaderHint = 'Kimlik Do'#287'rulama'
              HeaderImageIndex = 106
              Options.Editing = False
              Width = 30
              Position.BandIndex = 2
              Position.ColIndex = 35
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object ListeColumn5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'HastaneRefNo'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object ListeColumn7: TcxGridDBBandedColumn
              DataBinding.FieldName = 'hemsire'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object ListeDevKurum: TcxGridDBBandedColumn
              Caption = 'Dev. Kurum'
              DataBinding.FieldName = 'DevKurum'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Items = <>
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Header = cxStyle3
              Width = 54
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
          end
          object cxGrid_SeansLevel1: TcxGridLevel
            GridView = Liste
          end
        end
        object cxRadioGroup1: TcxRadioGroup
          Left = 0
          Top = 0
          Align = alTop
          Alignment = alCenterCenter
          ParentFont = False
          Properties.Columns = 6
          Properties.Items = <
            item
              Caption = 'T'#252'm'#252
              Value = '-1'
            end
            item
              Caption = 'Seansa Gelenler'
              Value = '1'
            end
            item
              Caption = 'Seansa Gelmeyenler'
              Value = '0'
            end
            item
              Caption = 'Medulaya G'#246'nderilmeyen'
              Value = '2'
            end
            item
              Caption = 'G'#246'nderilen'
              Value = '3'
            end>
          Properties.OnChange = TopPanelPropertiesChange
          ItemIndex = 0
          Style.BorderColor = clNone
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
          Transparent = True
          Height = 19
          Width = 1308
          object chkIzın: TCheckBox
            Left = 1270
            Top = 3
            Width = 105
            Height = 20
            Caption = 'Seans OnaylarkenDoktor Mesai yada '#304'zin Kontrol'#252' Yapma'
            TabOrder = 5
            Visible = False
            WordWrap = True
          end
        end
      end
      object TetkiklerPage: TcxTabSheet
        Caption = 'Tetkikler'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GridTetkikList: TcxGrid
          Left = 0
          Top = 0
          Width = 689
          Height = 537
          Cursor = crHandPoint
          Align = alLeft
          TabOrder = 0
          object GridList: TcxGridDBBandedTableView
            PopupMenu = PopupMenu2
            DataController.DataModeController.SmartRefresh = True
            DataController.DataSource = DataSource4
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Seans Say'#305's'#305'  : #'
                Kind = skCount
              end
              item
                Format = '#'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnSorting = False
            OptionsCustomize.GroupBySorting = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = 'Listelenecek Kay'#305't Yok'
            OptionsView.DataRowHeight = 30
            OptionsView.Footer = True
            OptionsView.GridLines = glHorizontal
            OptionsView.GroupByBox = False
            OptionsView.GroupByHeaderLayout = ghlHorizontal
            OptionsView.HeaderHeight = 30
            OptionsView.BandHeaderHeight = 25
            Styles.OnGetContentStyle = GridListStylesGetContentStyle
            Bands = <
              item
                Caption = 'Hasta Geli'#351' Listesi'
                FixedKind = fkLeft
                Styles.Header = cxStyle2
                Width = 680
              end>
            object GridListColumn1: TcxGridDBBandedColumn
              Caption = 'D.No'
              DataBinding.FieldName = 'dosyaNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 56
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object GridListColumn2: TcxGridDBBandedColumn
              Caption = 'G.No'
              DataBinding.FieldName = 'gelisNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 62
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object GridListColumn3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TakipNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 81
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object GridListColumn4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BasvuruNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object GridListColumn5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SYSTakipNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 97
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object GridListColumn6: TcxGridDBBandedColumn
              Caption = 'RefNo'
              DataBinding.FieldName = 'SIRANO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 72
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object GridListColumn7: TcxGridDBBandedColumn
              Caption = 'Hasta Ad'#305
              DataBinding.FieldName = 'HASTAADI'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 89
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object GridListColumn8: TcxGridDBBandedColumn
              Caption = 'Hasta Soyad'#305
              DataBinding.FieldName = 'HASTASOYADI'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Styles.Content = cxStyle3
              Styles.Header = cxStyle3
              Width = 119
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object GridListColumn9: TcxGridDBBandedColumn
              Caption = 'TC'
              DataBinding.FieldName = 'TCKIMLIKNO'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 97
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object GridListColumn10: TcxGridDBBandedColumn
              DataBinding.FieldName = 'hastaneRefNo'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object GridListColumn11: TcxGridDBBandedColumn
              Caption = '?'
              DataBinding.FieldName = 'GonderilmeyenIslemSayisi'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 24
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = GridList
          end
        end
        object Panel2: TPanel
          Left = 689
          Top = 0
          Width = 619
          Height = 537
          Align = alClient
          Caption = 'Panel2'
          TabOrder = 1
          object Splitter1: TSplitter
            Left = 1
            Top = 393
            Width = 617
            Height = 3
            Cursor = crVSplit
            Align = alTop
            ExplicitLeft = -31
            ExplicitTop = 248
            ExplicitWidth = 603
          end
          object cxGrid4: TcxGrid
            Left = 1
            Top = 1
            Width = 617
            Height = 392
            Cursor = crHandPoint
            Align = alTop
            TabOrder = 0
            object GridTetkikler: TcxGridDBBandedTableView
              PopupMenu = PopupMenu3
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = DataSource2
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.AlwaysShowEditor = True
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnSorting = False
              OptionsCustomize.GroupBySorting = True
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'Listelenecek Kay'#305't Yok'
              OptionsView.DataRowHeight = 30
              OptionsView.Footer = True
              OptionsView.GridLines = glHorizontal
              OptionsView.GroupByBox = False
              OptionsView.GroupByHeaderLayout = ghlHorizontal
              OptionsView.HeaderHeight = 30
              OptionsView.BandHeaderHeight = 25
              Bands = <
                item
                  Caption = 'Tetkik Bilgileri'
                  Styles.Header = cxStyle2
                  Width = 584
                end>
              object cxGridDBBandedColumn29: TcxGridDBBandedColumn
                Caption = 'G No'
                DataBinding.FieldName = 'GelisNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.FilteringPopup = False
                Options.Sorting = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 28
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn30: TcxGridDBBandedColumn
                DataBinding.FieldName = 'hastaAdi'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 137
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
                IsCaptionAssigned = True
              end
              object cxGridDBBandedColumn41: TcxGridDBBandedColumn
                Caption = 'Tak'#305'p No'
                DataBinding.FieldName = 'Tak'#305'pNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.FilteringPopup = False
                Options.Sorting = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 48
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn44: TcxGridDBBandedColumn
                Caption = 'Ba'#351'vuru No'
                DataBinding.FieldName = 'basvuruNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.FilteringPopup = False
                Options.Sorting = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 57
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn56: TcxGridDBBandedColumn
                Caption = 'Tc Kimlik No'
                DataBinding.FieldName = 'TCKIMLIKNO'
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 77
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn83: TcxGridDBBandedColumn
                DataBinding.FieldName = 'rTarih'
                Visible = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn86: TcxGridDBBandedColumn
                DataBinding.FieldName = 'obje'
                Visible = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn87: TcxGridDBBandedColumn
                DataBinding.FieldName = 'KURUMTIPI'
                Visible = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn88: TcxGridDBBandedColumn
                DataBinding.FieldName = 'HastaneRefNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 71
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object GridTetkiklerColumn1: TcxGridDBBandedColumn
                Caption = 'Tetki Ad'#305
                DataBinding.FieldName = 'NAME1'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 153
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object GridTetkiklerColumn7: TcxGridDBBandedColumn
                Caption = 'Onay'
                DataBinding.FieldName = 'onay'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Header = cxStyle3
                Width = 39
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object GridTetkiklerColumn2: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ADET'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 41
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object GridTetkiklerColumn3: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Gd'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.DisplayFormat = ',0.00;-,0.00'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 70
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object GridTetkiklerColumn4: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Cd'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.DisplayFormat = ',0.00;-,0.00'
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 92
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object GridTetkiklerColumn5: TcxGridDBBandedColumn
                Caption = 'A'#231#305'klama'
                DataBinding.FieldName = 'islemAciklamasi'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 139
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object GridTetkiklerColumn6: TcxGridDBBandedColumn
                DataBinding.FieldName = 'islemSiraNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 74
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object GridTetkiklerColumn8: TcxGridDBBandedColumn
                Caption = 'RefNo'
                DataBinding.FieldName = 'SIRANO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 68
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = GridTetkikler
            end
          end
          object cxGrid6: TcxGrid
            Left = 1
            Top = 396
            Width = 617
            Height = 140
            Cursor = crHandPoint
            Align = alClient
            TabOrder = 1
            object GridMalzeme: TcxGridDBBandedTableView
              PopupMenu = PopupMenu4
              DataController.DataModeController.SmartRefresh = True
              DataController.DataSource = DataSource5
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.AlwaysShowEditor = True
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnSorting = False
              OptionsCustomize.GroupBySorting = True
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.NoDataToDisplayInfoText = 'Listelenecek Kay'#305't Yok'
              OptionsView.DataRowHeight = 30
              OptionsView.Footer = True
              OptionsView.GridLines = glHorizontal
              OptionsView.GroupByBox = False
              OptionsView.GroupByHeaderLayout = ghlHorizontal
              OptionsView.HeaderHeight = 30
              OptionsView.BandHeaderHeight = 25
              Bands = <
                item
                  Caption = 'Malzeme Bilgileri'
                  Styles.Header = cxStyle2
                  Width = 708
                end>
              object cxGridDBBandedColumn27: TcxGridDBBandedColumn
                Caption = 'G No'
                DataBinding.FieldName = 'GelisNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.FilteringPopup = False
                Options.Sorting = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 28
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn28: TcxGridDBBandedColumn
                DataBinding.FieldName = 'hastaAdi'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 137
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
                IsCaptionAssigned = True
              end
              object cxGridDBBandedColumn31: TcxGridDBBandedColumn
                Caption = 'Tak'#305'p No'
                DataBinding.FieldName = 'Tak'#305'pNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.FilteringPopup = False
                Options.Sorting = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 48
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn32: TcxGridDBBandedColumn
                Caption = 'Ba'#351'vuru No'
                DataBinding.FieldName = 'basvuruNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Options.FilteringPopup = False
                Options.Sorting = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 57
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn33: TcxGridDBBandedColumn
                Caption = 'Tc Kimlik No'
                DataBinding.FieldName = 'TCKIMLIKNO'
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 77
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn34: TcxGridDBBandedColumn
                DataBinding.FieldName = 'rTarih'
                Visible = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn45: TcxGridDBBandedColumn
                Caption = 'Sut Kodu'
                DataBinding.FieldName = 'code'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 79
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn35: TcxGridDBBandedColumn
                DataBinding.FieldName = 'obje'
                Visible = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn36: TcxGridDBBandedColumn
                DataBinding.FieldName = 'KURUMTIPI'
                Visible = False
                Position.BandIndex = -1
                Position.ColIndex = -1
                Position.RowIndex = -1
              end
              object cxGridDBBandedColumn37: TcxGridDBBandedColumn
                DataBinding.FieldName = 'HastaneRefNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 71
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn38: TcxGridDBBandedColumn
                Caption = 'Tetki Ad'#305
                DataBinding.FieldName = 'NAME1'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 174
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn39: TcxGridDBBandedColumn
                Caption = 'Onay'
                DataBinding.FieldName = 'onay'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Header = cxStyle3
                Width = 35
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn40: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ADET'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 34
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn42: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Gd'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.DisplayFormat = ',0.00;-,0.00'
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 59
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn43: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Cd'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.DisplayFormat = ',0.00;-,0.00'
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 57
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn46: TcxGridDBBandedColumn
                DataBinding.FieldName = 'islemSiraNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 199
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGridDBBandedColumn47: TcxGridDBBandedColumn
                Caption = 'IslemRefNo'
                DataBinding.FieldName = 'SIRANO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Styles.Content = cxStyle3
                Styles.Header = cxStyle3
                Width = 71
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
            end
            object cxGridLevel5: TcxGridLevel
              GridView = GridMalzeme
            end
          end
        end
      end
      object LogPage: TcxTabSheet
        Caption = 'Log'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object txtLog: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          Lines.Strings = (
            'txtLog')
          Properties.ScrollBars = ssBoth
          Style.LookAndFeel.SkinName = 'UserSkin'
          StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
          StyleFocused.LookAndFeel.SkinName = 'UserSkin'
          StyleHot.LookAndFeel.SkinName = 'UserSkin'
          TabOrder = 0
          Height = 537
          Width = 1308
        end
      end
    end
  end
  object HTTP1: THTTPRIO
    WSDLLocation = 'HizmetKayitIslemleri.wsdl'
    Service = 'HizmetKayitIslemleriService'
    Port = 'HizmetKayitIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    HTTPWebNode.OnBeforePost = HTTP1HTTPWebNode1BeforePost
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 387
    Top = 116
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    MenuAnimation = [maLeftToRight]
    OnPopup = PopupMenu1Popup
    Left = 212
    Top = 118
    object H3: TMenuItem
      Tag = -18
      Caption = 'Medulada Kay'#305'tl'#305' Hizmet Kodu De'#287'i'#351'tir'
      ImageIndex = 34
      Visible = False
      object P1: TMenuItem
        Tag = -704234
        Caption = 'P704230  >>  P704234'
        OnClick = cxButtonCClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object P2: TMenuItem
        Tag = -704230
        Caption = 'P704234  >>  P704230'
        OnClick = cxButtonCClick
      end
    end
    object ahlilSonular1: TMenuItem
      Tag = -4
      Caption = 'Tahlil Sonu'#231'lar'#305
      ImageIndex = 45
      Visible = False
      OnClick = cxButtonCClick
    end
    object E3: TMenuItem
      Caption = 'E-Nab'#305'z'
      ImageIndex = 118
      object E4: TMenuItem
        Caption = 'E-Nab'#305'z Kaydet'
        OnClick = E4Click
      end
      object E5: TMenuItem
        Tag = 1
        Caption = 'E-Nab'#305'zdan Sil'
        OnClick = E4Click
      end
      object S6: TMenuItem
        Tag = 2
        Caption = 'SysTakipNo Sorgula'
        OnClick = T2Click
      end
    end
    object S7: TMenuItem
      Caption = 'SGK'
      ImageIndex = 76
      object SeansMEdulayaKaydet1: TMenuItem
        Tag = -1
        Caption = 'Seanslar'#305' Medulaya Kaydet'
        ImageIndex = 15
        OnClick = cxButtonCClick
      end
      object Seansptal1: TMenuItem
        Tag = -2
        Caption = 'Seanslar'#305'  '#304'ptal Et'
        ImageIndex = 13
        OnClick = cxButtonCClick
      end
      object RaporOku1: TMenuItem
        Tag = -3
        Caption = 'Medula Raporlar'#305
        ImageIndex = 67
        OnClick = cxButtonCClick
      end
      object D1: TMenuItem
        Tag = -8
        Caption = 'Damar '#304'zi sorgulamas'#305' Yap'
        ImageIndex = 106
        OnClick = cxButtonCClick
      end
      object T1: TMenuItem
        Tag = -9
        Caption = 'Takip Bilgisi Oku'
        ImageIndex = 68
        OnClick = cxButtonCClick
      end
      object H1: TMenuItem
        Tag = -10
        Caption = 'Hastan'#305'n Takipleri'
        ImageIndex = 72
        OnClick = cxButtonCClick
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object SeansGzlem1: TMenuItem
      Tag = -12
      Caption = 'Seans G'#246'zlem'
      ImageIndex = 51
      OnClick = cxButtonCClick
    end
    object edaviKart1: TMenuItem
      Tag = -6
      Caption = 'Tedavi Kart'#305
      ImageIndex = 49
      Visible = False
      OnClick = cxButtonCClick
    end
    object H2: TMenuItem
      Tag = -7
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = cxButtonCClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object K1: TMenuItem
      Tag = -11
      Caption = 'Kan Al'#305'nan Seans Yap'
      ImageIndex = 60
      OnClick = cxButtonCClick
    end
    object S1: TMenuItem
      Tag = -12
      Caption = 'Seans D'#252'zenle'
      ImageIndex = 73
      Visible = False
      OnClick = cxButtonCClick
    end
    object D2: TMenuItem
      Tag = -13
      Caption = 'Doktor Bilgisi De'#287'i'#351'tir'
      ImageIndex = 74
      OnClick = cxButtonCClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Tag = -14
      Caption = #304'zlem Form Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object U1: TMenuItem
      Tag = -15
      Caption = 'Uzman Muayene Tutana'#287#305
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excel'#39'e G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object SeansDetayToplamlarnGster1: TMenuItem
      Tag = -17
      Caption = 'Seans Detay Toplamlar'#305'n'#305' G'#246'ster'
      ImageIndex = 7
      Visible = False
      OnClick = SeansDetayToplamlarnGster1Click
    end
    object s2: TMenuItem
      Tag = -20
      Caption = 'Se'#231'ili Seanslar'#305' Onayla'
      ImageIndex = 31
      OnClick = cxButtonCClick
    end
    object S3: TMenuItem
      Tag = -21
      Caption = 'Se'#231'ili Seanslar'#305'n Onay Vazge'#231
      ImageIndex = 33
      OnClick = cxButtonCClick
    end
    object S9: TMenuItem
      Caption = 'Seans Kapat'
      OnClick = cxButtonCClick
      object D3: TMenuItem
        Tag = -50
        Caption = 'Doktor'
        OnClick = cxButtonCClick
      end
      object H4: TMenuItem
        Tag = -51
        Caption = 'Hem'#351'ire'
        OnClick = cxButtonCClick
      end
    end
  end
  object HTTPRIO1: THTTPRIO
    WSDLLocation = 'HastaKabulIslemleri.wsdl'
    Service = 'HastaKabulIslemleriService'
    Port = 'HastaKabulIslemleri'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UserName = '10273002'
    HTTPWebNode.Password = '2730'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 483
    Top = 116
  end
  object SaveDialog1: TSaveDialog
    Left = 312
    Top = 216
  end
  object ListeAc1: TListeAc
    ListeBaslik = 'Makinalar'
    TColcount = 4
    TColsW = '40,100,50,50'
    Table = 'makinalar'
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'makinaNo'
      'marka'
      'seriNo'
      'salon')
    KolonBasliklari.Strings = (
      'Mak No'
      'Marka'
      'Seri No'
      'Salon')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 16
    Top = 360
  end
  object ADO_Detay_toplam: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <
      item
        Name = '@t1'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = '201607'
      end
      item
        Name = '@sirketKod'
        DataType = ftString
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT k.KURUMTIPI,COUNT(*) Toplam ,'
      'sum(CASE WHEN (gd.durum = 1) THEN 1 ELSE 0 END) Girilen,'
      'sum(CASE WHEN (gd.Durum = 0) THEN 1 ELSE 0 END) Girilmeyen,'
      'sum(CASE WHEN (gd.durum = 1) THEN 1 ELSE 0 END) P704230Girilen,'
      
        'sum(CASE WHEN ((gd.durum = 1) and len(isnull(gd.islemSiraNo,'#39#39'))' +
        '=0) THEN 1 ELSE 0 END) P704230Gonderilmeyen'
      ' '
      'FROM Hareketler gd'
      
        '    JOIN Hasta_gelisler g on g.dosyaNo = gd.dosyano AND g.gelisN' +
        'o = gd.gelisNo'
      '    left JOIN HastaKart hk ON hk.dosyaNo = g.dosyaNo'
      '    left JOIN Kurumlar k ON k.Kurum = hk.Kurum    '
      'WHERE substring(convert(varchar,gd.Tarih,112),1,6) = :@t1 '
      'and hk.sirketKod =:@sirketKod'
      'and gd.Tip = '#39'S'#39
      'group BY k.KURUMTIPI')
    Left = 712
    Top = 370
  end
  object DataSource3: TDataSource
    DataSet = ADO_Detay_toplam
    Left = 712
    Top = 418
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      TextColor = clMaroon
    end
  end
  object ADOQuery1: TADOQuery
    CursorType = ctStatic
    BeforePost = ADOQuery1BeforePost
    AfterPost = ADOQuery1AfterPost
    Parameters = <>
    SQL.Strings = (
      
        'exec sp_TopluSeansGetir '#39'20160701'#39','#39'20160903'#39','#39'1'#39','#39#39','#39#39',0,-1,0,'#39 +
        #39)
    Left = 88
    Top = 378
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 152
    Top = 378
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 24
    Top = 128
    PixelsPerInch = 96
    object cxStyle8: TcxStyle
      AssignedValues = [svColor]
      Color = 8421631
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 24
    Top = 168
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
  object cxStyleRepository4: TcxStyleRepository
    Left = 24
    Top = 216
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
  object cxStyleRepository5: TcxStyleRepository
    Left = 24
    Top = 88
    PixelsPerInch = 96
    object cxStyle5: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlue
    end
  end
  object cxStyleRepository6: TcxStyleRepository
    Left = 24
    Top = 264
    PixelsPerInch = 96
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object ListeAc2: TListeAc
    ListeBaslik = 'Raporlar'
    TColcount = 6
    TColsW = '65,65,65,40,40,80'
    Table = 'raporlar'
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'raporTakipNo'
      'baslangicTarihi'
      'bitisTarihi'
      'seansGun'
      'seansSayi'
      'verenTesisKodu')
    KolonBasliklari.Strings = (
      'TakipNo'
      'Ba'#351'lang'#305#231
      'Biti'#351
      'G'#252'n'
      'Sayi'
      'Veren Tesis')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 872
    Top = 280
  end
  object ado: TADOQuery
    Parameters = <>
    Left = 472
    Top = 400
  end
  object PopupMenu4: TPopupMenu
    Left = 776
    Top = 368
    object MenuItem1: TMenuItem
      Tag = 9
      Caption = 'Malzemeleri E-Nab'#305'zdan Sil'
    end
  end
  object DataSource5: TDataSource
    DataSet = ADO_Malzeme
    Left = 744
    Top = 274
  end
  object ADO_Malzeme: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_TopluTetkikGetir '#39'20180401'#39','#39'20190430'#39',1')
    Left = 704
    Top = 282
  end
  object DataSource2: TDataSource
    DataSet = ADO_Tetkikler
    Left = 552
    Top = 242
  end
  object ADO_Tetkikler: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_TopluTetkikGetir '#39'20180401'#39','#39'20190430'#39',1')
    Left = 504
    Top = 242
  end
  object PopupMenu3: TPopupMenu
    Left = 744
    Top = 192
    object etkikleriENabzdanSil1: TMenuItem
      Tag = 5
      Caption = 'Tetkikleri E-Nab'#305'zdan Sil'
      OnClick = T2Click
    end
  end
  object DataSource4: TDataSource
    DataSet = ADO_List
    Left = 176
    Top = 298
  end
  object ADO_List: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = ADO_ListAfterScroll
    Parameters = <>
    SQL.Strings = (
      'exec sp_TopluTetkikGetir '#39'20180401'#39','#39'20190430'#39)
    Left = 176
    Top = 258
  end
  object PopupMenu2: TPopupMenu
    Images = DATALAR.imag24png
    Left = 296
    Top = 120
    object E6: TMenuItem
      Caption = 'E-Nab'#305'z'
      ImageIndex = 118
      object E2: TMenuItem
        Tag = 4
        Caption = 'Tetkikleri E-Nab'#305'za Kaydet'
        OnClick = T2Click
      end
      object M3: TMenuItem
        Tag = 7
        Caption = 'Malzemeleri E-Nab'#305'za Kaydet'
        OnClick = T2Click
      end
      object s4: TMenuItem
        Tag = 2
        Caption = 'SysTakipNoSorgula'
        ImageIndex = 36
        OnClick = T2Click
      end
      object S5: TMenuItem
        Tag = 3
        Caption = 'SysTakipNo Medula Bildirim Sorgula'
        OnClick = T2Click
      end
    end
    object S8: TMenuItem
      Caption = 'SGK'
      ImageIndex = 76
      object T2: TMenuItem
        Caption = 'Tetkikleri Medulaya Kaydet'
        ImageIndex = 15
        OnClick = T2Click
      end
      object M1: TMenuItem
        Tag = 5
        Caption = 'Malzemeleri Medulaya Kaydet'
        ImageIndex = 14
        OnClick = T2Click
      end
      object M2: TMenuItem
        Tag = 6
        Caption = 'Malzemeleri Meduladan Sil'
        ImageIndex = 16
        OnClick = T2Click
      end
      object T3: TMenuItem
        Tag = 1
        Caption = 'Tetkikleri Meduladan Sil'
        ImageIndex = 13
        OnClick = T2Click
      end
      object T4: TMenuItem
        Tag = -9
        Caption = 'Takip Bilgisini Oku'
        ImageIndex = 35
        OnClick = T2Click
      end
      object T5: TMenuItem
        Tag = 10
        Caption = 'Tan'#305'lar'#305' Kaydet'
        OnClick = T2Click
      end
    end
  end
end
