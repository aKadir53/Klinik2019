object frmITS: TfrmITS
  Left = 0
  Top = 0
  Caption = 'frmITS'
  ClientHeight = 421
  ClientWidth = 810
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
  object Bildirim_Sayfalar: TcxPageControl
    Left = 2
    Top = 16
    Width = 800
    Height = 357
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 350
    ClientRectLeft = 3
    ClientRectRight = 793
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = #220'r'#252'nler'
      ImageIndex = 0
      object UrunlerGrid: TcxGridKadir
        Left = 0
        Top = 30
        Width = 790
        Height = 261
        Align = alClient
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.ImageBorder = 2
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExceleGonder = False
        PopupForm = False
        object GridIts: TcxGridDBTableView
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
          DataController.DataModeController.DetailInSQLMode = True
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          FilterRow.InfoText = 'Arama Sat'#305'r'#305
          FilterRow.SeparatorWidth = 2
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          NewItemRow.InfoText = 'Ekle'
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          object GridItsbarkod: TcxGridDBColumn
            Caption = #220'r'#252'n  Kodu'
            DataBinding.FieldName = 'barkod'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object GridItsColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Seri'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 84
          end
          object GridItsColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Parti'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 123
          end
          object GridItsColumn6: TcxGridDBColumn
            Caption = 'Son Kul.Tarihi'
            DataBinding.FieldName = 'SKT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
          object GridItsdate_create: TcxGridDBColumn
            Caption = 'Eklenme Tarihi'
            DataBinding.FieldName = 'date_create'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 108
          end
          object GridItsColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'BildirimId'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 88
          end
          object GridItsColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'Sonuc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            Width = 105
          end
          object GridItsColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 69
          end
        end
        object cxGridLevel3: TcxGridLevel
          Caption = 'Hastalar'
          GridView = GridIts
          Options.DetailFrameColor = clHighlight
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 291
        Align = alBottom
        PanelStyle.Active = True
        TabOrder = 1
        Height = 33
        Width = 790
        object btnMalAlimYap: TcxButton
          Left = 2
          Top = 2
          Width = 220
          Height = 29
          Align = alLeft
          Caption = 'Se'#231'ili '#220'r'#252'nlerin Mal Al'#305'm Bildirimi Yap'
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F37D7D7DF7F7F7FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E3E23F623F123811F1F1F1FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCECD2E6B2D059301
            114910F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B6B21D
            6B1C059C0005A100114910F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF88928710790E05A30005A70005A400144D1318201718201818201818201818
            2018182018182018182118182118182118192118545654FFFFFFFFFFFFFFFFFF
            FFFFFFF8F8F8677B660C880805A70005A90005A90005A900079B03038F00038E
            00038E00038E00038E00038E00038E00038E00038E00038E00057F03545B54FF
            FFFFFFFFFFFFFFFFE3E4E35175500A940605AB0005AC0005AC0005AC0005AC00
            05AC0005AC0005AC0005AC0005AC0005AC0005AC0005AC0005AC0005AC0005AC
            00049A00535D53FFFFFFFFFFFFDBDCDB2F6A2E05A10105AF0005AF0005AF0005
            AF0005AF0005AF0005AF0005AF0005AF0005AF0005AF0005AF0005AF0005AF00
            05AF0005AF0005AF00059D01545D54FFFFFFFFFFFF7AB37905AD0005B20005B2
            0005B20005B20005B20005B20005B20005B20005B20005B20005B20005B20005
            B20005B20005B20005B20005B20005B200099D05555C55FFFFFFFFFFFFF4F6F4
            5FB95D06B50106B50006B50006B50006B50006B50006B50006B50006B50006B5
            0006B50006B50006B50006B50006B50006B50006B50006B50006A102555D54FF
            FFFFFFFFFFFFFFFFFCFDFC87C28508B70306B80006B80006B80006B80006B800
            06B80006B80006B80006B80006B80006B80006B80006B80006B80006B80006B8
            000BA107555B55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAD0A911B40C06BB0006
            BB0006BB0006BB0006BB0006BB0006BB0006BB0006BB0006BB0006BB0006BB00
            06BB0006BB0006BB0005AE005D685CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFBADBB91FB71C06BE0006BE0006BD00178D158CCA8B93D09293D09293D09292
            D09192D09192D09192D09192D09192D09192D091E5EDE5FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFDFEADF2CB62906C00006BD00125411F1F1F1FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF3EF4BBC4806C000
            125310F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFF2F5F268C166398638F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDF2F5F2FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          TabOrder = 0
          OnClick = btnMalAlimYapClick
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        PanelStyle.Active = True
        TabOrder = 2
        Height = 30
        Width = 790
        object btnList: TcxButton
          Left = 2
          Top = 2
          Width = 87
          Height = 26
          Align = alLeft
          Caption = 'Bildirimler'
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000FFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000060000001E000000020000000000000000FFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000C0B0D722D1B23E0020304730000000200000000FFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000005080A6E785361FDA5465CFF612F3EFF0507096E00000010FFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000408
            086A774F5DFCA4465BFF983B4FFFA34055FF412734B404080A2EFFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000003070767744E
            5CFBA4465BFF973A4EFF9C3C50FF8F3F53FF24212B5B00050704FFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000070A0C78734F5DFCA446
            5BFF973A4EFF9C3C50FF913E52FF2C27336D0000000000000000FFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000070A0C757D5160FFA4465BFF973A
            4EFF9B3C50FF933E52FF3328357B000101000000000000000000FFFFFF000000
            0000000000000000000000000000000000000000000000000011000000330000
            003C000000310000000E000000000306072E7B5261F9A34459FF973A4EFF9B3C
            50FF923E52FF312A377A00010100000000000000000000000000FFFFFF000000
            000000000000000000000A0B0B0E2025244B14090B98330809D9632929F76D32
            32FB602627F62D0607D40000007B2D353571A96778FF973449FF9B3C50FF953E
            53FF3429367D0001000000000000000000000000000000000000FFFFFF000000
            000000000000060707063B3B3B81795558F3C8918FFFF9D0C0FFFFEAD4FFFFEC
            D5FFFFE8D2FFF5C9B8FFB26C66FF68383AF5AA9CA2FF9C475BFF953A4FFF3B2B
            388C000102000000000000000000000000000000000000000000FFFFFF000000
            00000000000022222256A37A7CFBFFEAE4FFFFFDEEFFFFE8CEFFFCDDBFFFFCDB
            BDFFFCDDBEFFFFE4C8FFFFF5DBFFF0C1B1FFA76A6BFF747274CA695F666C0509
            0A02000000000000000000000000000000000000000000000000FFFFFF000000
            0000000000096E484BCAFFEDEBFFFFFFFDFFFEECDBFFFBD8B8FFFAD4B3FFFAD6
            B6FFFAD6B5FFFBD7B7FFFCDDC1FFFFF3DBFFECBAADFF3004059F000807000202
            0200000000000000000000000000000000000000000000000000FFFFFF000000
            00000B000144D1A09FFFFFFFFFFFFFFBF7FFFDE5CFFFFCDBBEFFFDE2C8FFFDE4
            CDFFFDE2CAFFFDE0C6FFFCE2C8FFFDE6D1FFFFFBE6FFB06B66FB010000440102
            0200000000000000000000000000000000000000000000000000FFFFFF000000
            000D3D121685FEE1D7FFFFFAF3FFFEEFE1FFFDE4CDFFFDEAD6FFFDF2E6FFFEF4
            EBFFFEF3E9FFFEEFE2FFFDECDBFFFDECDAFFFFF2E0FFF3C9BDFF59282D9D282E
            2D07000000000000000000000000000000000000000000000000FFFFFF000100
            001F682C2EA8FFF3E4FFFEE9D4FFFCDFC5FFFDE6D0FFFEF3E8FFFFFAF6FFFFFC
            FAFFFFFBF8FFFEF7EFFFFEF4E9FFFEF2E6FFFEF2E5FFFFF1E4FF996568C96267
            661F060606000000000000000000000000000000000000000000FFFFFF000400
            0021703333ACFFF0DBFFFBD6B7FFFAD4B2FFFDE9D5FFFEF7EFFFFFFDFBFFFFFF
            FFFFFFFDFBFFFEFAF5FFFEF9F3FFFEF9F3FFFEF8F1FFFFF9F0FFAE8283D27C80
            80270B0B0B000000000000000000000000000000000000000000FFFFFF000200
            001267272996FFEAD2FFFAD4B1FFFAD6B6FFFEECDBFFFEF7F0FFFFFBF8FFFFFC
            FAFFFFFCF9FFFFFBF8FFFFFCFAFFFFFDFCFFFFFDFAFFFFF7F1FFB08789C59093
            931B242424001C1C1C001D1D1D001D1D1D001D1D1D001D1D1D00FFFFFF000000
            00003C050957FAD0BEFFFEE2C5FFFCE0C6FFFEEEDEFFFEF5EBFFFEF7F0FFFEF9
            F3FFFFFBF6FFFFFDFBFFFFFFFEFFFFFFFFFFFFFFFFFFF7E1DEFFA98B8E9E8B8F
            8E076B6B6B006E6E6E006E6E6E006E6E6E006E6E6E006E6E6E00FFFFFF000000
            00000700000DC57B75E5FFF8E0FFFDE7D2FFFDEDDCFFFEF1E3FFFEF2E7FFFEF5
            EBFFFFFAF5FFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFDEBDBEF5A8A3A45D2020
            2000000000000000000000000000000000000000000000000000FFFFFF000000
            0000000000004F0B0D66F7CBBDFFFFF7E2FFFDEBD8FFFDEDDCFFFDEEDEFFFDF1
            E4FFFEF8F0FFFFFDFAFFFFFEFDFFFFFFFFFFF7E4E3FFC0ACAEACA4A6A6222020
            20001A1A1A001B1B1B001B1B1B001B1B1B001B1B1B001B1B1B00FFFFFF000000
            000000000000000000007E212592F0C4B6FFFFFAE5FFFFF1DDFFFEECDAFFFEEF
            DEFFFFF6EAFFFFFEF8FFFFFFFCFFF4DDDBFFCBAEB0C2C4C6C73AE2E2E203E2E2
            E200E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100FFFFFF000000
            000000000000020000001F00010080071059C86D6BDDEDC9B9FFFBE8D5FFFAE5
            D4FFF9E1D4FFEBC8C1FFD8A8A7E6D1B3B68AE0E2E227F6F7F703FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            000000000000020000001E01040078010C009600070797051048A3202780C072
            748CC0878A84CFAAAD54E2DBDC1AFAFEFD00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          TabOrder = 0
          OnClick = btnListClick
        end
        object txtsonTarih: TcxDateEditKadir
          Left = 199
          Top = 2
          Align = alLeft
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          BosOlamaz = False
          ValueTip = tvString
          Width = 110
        end
        object txtilkTarih: TcxDateEditKadir
          Left = 89
          Top = 2
          Align = alLeft
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          BosOlamaz = False
          ValueTip = tvString
          Width = 110
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Alim Bildirim'
      ImageIndex = 3
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 293
        Align = alBottom
        PanelStyle.Active = True
        TabOrder = 0
        Height = 31
        Width = 790
        object btnSarfBildir: TcxButton
          Left = 2
          Top = 2
          Width = 220
          Height = 27
          Align = alLeft
          Caption = 'Se'#231'ili '#220'r'#252'nlerin Sarf Bildirimi Yap'
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF002D6F2CAB1C411B83FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF002B9428BC008400FF1B4519A32A3A2A08FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF002E942BB500AA00FF028F00FF145013C82939
            291FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00375A
            362C24402350233C234F233D234F233D2350233D2350233D2350233D2350233D
            2350233D2350223B21502B402A4F278824CE01AA00FF04AA00FF029C00FF0E5E
            0CE6273A263FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003D85
            3B93089103FF048B00FF058C00FF058C00FF058C00FF058C00FF058C00FF058C
            00FF058C00FF058C00FF058D00FF079F02FF05AA00FF05A900FE05AC00FF02A7
            00FF096F06FA233D2266FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003B8D
            398D06AE00FF04B000FF05B000FF05B000FF05B000FF05B000FF05B000FF05B0
            00FF05B000FF05B000FF04B000FF04AD00FF05AC00FF05AC00FE05AC00FF05AE
            00FF03AE00FF058102FF1E431C8F2A392A01FFFFFF00FFFFFF00FFFFFF003D8B
            3B8D07AE02FE04AF00FE05AF00FE05AF00FE05AF00FE05AF00FE05AF00FE05AF
            00FE05AF00FE05AF00FE05AF00FE05AF00FE05AF00FE05AF00FE05AF00FE05AF
            00FE05B000FE04B300FF039200FF174D15B7293D2918FFFFFF00FFFFFF004488
            428C0BAE06FF04B300FF05B200FF05B200FF05B200FF05B200FF05B200FF05B2
            00FF05B200FF05B200FF05B200FF05B200FF05B200FF05B200FF05B200FF05B2
            00FF05B200FF05B200FF04B700FF00A500FF246222B0FFFFFF00FFFFFF003D8D
            3B8D07B302FF04B500FF05B500FE05B500FE05B500FF05B500FF05B500FF05B5
            00FF05B500FE05B500FF05B500FF05B500FE05B500FF05B500FE05B500FF05B5
            00FF05B500FF04B600FF02B700FF2D9D2AC34C764B1FFFFFFF00FFFFFF004687
            448C0CB307FF04B900FF05B800FE05B800FE05B800FF05B800FF05B800FF05B8
            00FF05B800FE05B800FF05B800FF05B800FE05B800FF05B800FE05B800FF05B8
            00FF02BA00FF06B702FF3892359F577C5706FFFFFF00FFFFFF00FFFFFF003A91
            389504BC00FF02BE00FF02BD00FF02BD00FF02BD00FF02BD00FF02BD00FF02BD
            00FF02BD00FF02BD00FF02BD00FF04BC00FF05BB00FE05BB00FE05BB00FE01BE
            00FF0DB509FF438A4179FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004B84
            4A443E8E3C7B3F8E3C7A3F8E3C7A3F8E3C7A3F8E3C7A3F8E3C7A3F8E3D7A3F8E
            3D793F8E3D793F8E3D79428B407921A61DDA02C000FF05BE00FE00C200FF16B0
            12F34C834A53FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF002E9D2BB400C400FF00C400FF21A81EDD527E
            5131FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF002BA127B800C900FF2E9E2BBF557B5416FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00329B2FC4359832A5567A5604FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0048874773507F4F2CFFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          TabOrder = 0
          OnClick = btnSarfBildirClick
        end
      end
      object AlimGrid: TcxGridKadir
        Left = 0
        Top = 0
        Width = 790
        Height = 293
        Align = alClient
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LevelTabs.ImageBorder = 2
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExceleGonder = False
        PopupForm = False
        object GridItsAlim: TcxGridDBTableView
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
          DataController.DataModeController.DetailInSQLMode = True
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          FilterRow.InfoText = 'Arama Sat'#305'r'#305
          FilterRow.SeparatorWidth = 2
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          NewItemRow.InfoText = 'Ekle'
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = #220'r'#252'n  Kodu'
            DataBinding.FieldName = 'barkod'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = 'Seri'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 84
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = 'Parti'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 123
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'Son Kul.Tarihi'
            DataBinding.FieldName = 'SKT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Bildirim Tarihi'
            DataBinding.FieldName = 'AlimBildirimTarih'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 108
          end
          object cxGridDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = 'AlimBildirimId'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 88
          end
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = 'Sonuc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 105
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 69
          end
        end
        object cxGridLevel2: TcxGridLevel
          Caption = 'Hastalar'
          GridView = GridItsAlim
          Options.DetailFrameColor = clHighlight
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Sarf Bildirimleri'
      ImageIndex = 2
      object SarfGrid: TcxGridKadir
        Left = 0
        Top = 0
        Width = 790
        Height = 324
        Align = alClient
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.ImageBorder = 2
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExceleGonder = False
        PopupForm = False
        object GrisItsS: TcxGridDBTableView
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
          DataController.DataModeController.DetailInSQLMode = True
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          FilterRow.InfoText = 'Arama Sat'#305'r'#305
          FilterRow.SeparatorWidth = 2
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          NewItemRow.InfoText = 'Ekle'
          OptionsBehavior.AlwaysShowEditor = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Appending = True
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          OptionsView.RowSeparatorColor = clBlack
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = #220'r'#252'n  Kodu'
            DataBinding.FieldName = 'barkod'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Seri'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 109
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Parti'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 110
          end
          object GrisItsSColumn1: TcxGridDBColumn
            Caption = 'Son.Kul.Tarihi'
            DataBinding.FieldName = 'SKT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 104
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Bildirim Tarihi'
            DataBinding.FieldName = 'SarfBildirimTarih'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'SarfBildirimId'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 92
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'Sonuc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 76
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 63
          end
        end
        object cxGridLevel1: TcxGridLevel
          Caption = 'Hastalar'
          GridView = GrisItsS
          Options.DetailFrameColor = clHighlight
        end
      end
    end
    object Log: TcxTabSheet
      Caption = 'Log'
      ImageIndex = 1
      object txtHatalar: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 324
        Width = 790
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 680
    Top = 184
    object Y1: TMenuItem
      Tag = -1
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
  end
end