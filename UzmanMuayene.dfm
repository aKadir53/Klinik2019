object frmUzmanMuayene: TfrmUzmanMuayene
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmUzmanMuayene'
  ClientHeight = 571
  ClientWidth = 986
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
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 0
    Width = 8
    Height = 571
  end
  object chkSistemSorgu: TcxCheckListBox
    Left = 262
    Top = 8
    Width = 750
    Height = 249
    Columns = 4
    Items = <
      item
        Text = 'Ba'#351' A'#287'r'#305's'#305
      end
      item
        Tag = 1
        Text = 'Ba'#351' D'#246'nmesi'
      end
      item
        Tag = 2
        Text = #304#351'itme Kayb'#305
      end
      item
        Tag = 3
        Text = 'Kulak '#199#305'nlamas'#305
      end
      item
        Tag = 4
        Text = 'Kulak Ak'#305'nt'#305's'#305
      end
      item
        Tag = 5
        Text = 'Burun Kanamas'#305
      end
      item
        Tag = 6
        Text = 'G'#246'rme Kayb'#305
      end
      item
        Tag = 7
        Text = #199'ift G'#246'rme'
      end
      item
        Tag = 8
        Text = 'Fotofobi'
      end
      item
        Tag = 9
        Text = 'G'#246'zlerde A'#287'r'#305
      end
      item
        Tag = 10
        Text = #214'ks'#252'r'#252'k'
      end
      item
        Tag = 11
        Text = 'Bo'#287'az Ak'#305'nt'#305's'#305
      end
      item
        Tag = 12
        Text = 'Gece Terlemesi'
      end
      item
        Tag = 13
        Text = 'Balgam'
      end
      item
        Tag = 14
        Text = 'Hemoptizi'
      end
      item
        Tag = 15
        Text = 'PND'
      end
      item
        Tag = 16
        Text = #199'arp'#305'nt'#305
      end
      item
        Tag = 17
        Text = 'Efor Dispnesi'
      end
      item
        Tag = 18
        Text = 'Meme Ak'#305'nt'#305's'#305
      end
      item
        Tag = 19
        Text = 'Ortopne'
      end
      item
        Tag = 20
        Text = 'Meme A'#287'r'#305's'#305
      end
      item
        Tag = 21
        Text = 'G'#246#287#252's A'#287'r'#305's'#305
      end
      item
        Tag = 22
        Text = 'Bulant'#305
      end
      item
        Tag = 23
        Text = #304#351'tahs'#305'zl'#305'k'
      end
      item
        Tag = 24
        Text = 'Refl'#252
      end
      item
        Tag = 25
        Text = 'Kusma'
      end
      item
        Tag = 26
        Text = 'Dispepsi'
      end
      item
        Tag = 27
        Text = 'Meteorizm'
      end
      item
        Tag = 28
        Text = 'Diyare'
      end
      item
        Tag = 29
        Text = 'Konstipasyon'
      end
      item
        Tag = 30
        Text = 'Melena'
      end
      item
        Tag = 31
        Text = 'Kar'#305'n A'#287'r'#305's'#305
      end
      item
        Tag = 32
        Text = 'Hematemez'
      end
      item
        Tag = 33
        Text = 'Kilo Kayb'#305
      end
      item
        Tag = 34
        Text = 'Hemoroid'
      end
      item
        Tag = 35
        Text = 'Hemoto'#231'ezya'
      end
      item
        Tag = 36
        Text = 'Diz'#252'r'#252
      end
      item
        Tag = 37
        Text = 'Hemat'#252'r'#252
      end
      item
        Tag = 38
        Text = #304'mpotans'
      end
      item
        Tag = 39
        Text = 'Libido Kayb'#305
      end
      item
        Tag = 40
        Text = 'Genital Ak'#305'nt'#305
      end
      item
        Tag = 41
        Text = 'Amenore'
      end
      item
        Tag = 42
        Text = 'Hipermenore'
      end
      item
        Tag = 43
        Text = 'Dismenore'
      end
      item
        Tag = 44
        Text = 'Pete'#351'i - Purpura'
      end
      item
        Tag = 45
        Text = 'Ekimoz'
      end
      item
        Tag = 46
        Text = #214'dem'
      end
      item
        Tag = 47
        Text = 'Kladikasyo'
      end
      item
        Tag = 48
        Text = 'Parentezi'
      end
      item
        Tag = 49
        Text = 'Halsizlik'
      end
      item
        Tag = 50
        Text = 'Huzursuz Bacak'
      end
      item
        Tag = 51
        Text = 'Uykusuzluk'
      end
      item
        Tag = 52
        Text = 'Ate'#351
      end
      item
        Tag = 54
        Text = 'Di'#287'er'
      end>
    TabOrder = 1
    Visible = False
  end
  object izlemPanel: TcxGroupBox
    Left = 8
    Top = 0
    PanelStyle.Active = True
    TabOrder = 2
    Height = 430
    Width = 250
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 246
      Height = 426
      Align = alClient
      BiDiMode = bdLeftToRight
      Color = 13750737
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      Properties.ActivePage = cxTabSheet2
      Properties.HideTabs = True
      Properties.MultiLine = True
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGoDialog, pcoGradient, pcoGradientClientArea]
      Properties.Style = 11
      ClientRectBottom = 425
      ClientRectLeft = 1
      ClientRectRight = 245
      ClientRectTop = 1
      object cxTabSheet2: TcxTabSheet
        Caption = #304'zlem'
        ImageIndex = 1
        object cxGroupBoxAnemi: TcxGroupBox
          Left = 0
          Top = 45
          Align = alTop
          Caption = 'Anemi Tedavisi'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 88
          Width = 244
          object txtAnemi: TcxCheckListBox
            Left = 3
            Top = 15
            Width = 238
            Height = 63
            Align = alClient
            Columns = 2
            Items = <
              item
                Enabled = False
              end
              item
                Tag = 1
                Text = 'Tedaviye ihtiya'#231' yok'
              end
              item
                Tag = 2
                Text = 'Transf'#252'zyon'
              end
              item
                Tag = 3
                Text = 'Eritropoetin'
              end
              item
                Tag = 4
                Text = 'Demir Preperat'#305
              end>
            TabOrder = 0
          end
        end
        object cxGroupBoxAciklama: TcxGroupBox
          Left = 0
          Top = 355
          Align = alClient
          Caption = 'A'#231#305'klama'
          TabOrder = 1
          Height = 69
          Width = 244
          object txtDAciklama: TcxMemo
            Left = 3
            Top = 15
            Align = alClient
            Lines.Strings = (
              '')
            TabOrder = 0
            Height = 44
            Width = 238
          end
        end
        object cxGroupBoxSinekalset: TcxGroupBox
          Left = 0
          Top = 220
          Align = alTop
          Caption = 'Sinekalset'
          PanelStyle.BorderWidth = 1
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = True
          Style.IsFontAssigned = True
          TabOrder = 2
          Height = 45
          Width = 244
          object txtSinekalset: TcxComboBox
            Left = 3
            Top = 15
            Align = alTop
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '1 - Kullan'#305'yor'
              '2 - Kullanm'#305'yor')
            TabOrder = 0
            Text = '2 - Kullanm'#305'yor'
            ExplicitLeft = 2
            ExplicitTop = -2
            ExplicitWidth = 240
            Width = 238
          end
        end
        object cxGroupBoxAntihiper: TcxGroupBox
          Left = 0
          Top = 265
          Align = alTop
          Caption = 'Antihipertansif '#304'la'#231
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 3
          Height = 45
          Width = 244
          object txtAntihipertansif: TcxComboBox
            Left = 3
            Top = 15
            Align = alTop
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '1 - Kullanm'#305'yor'
              '2 - 1 Adet Kullan'#305'yor'
              '3 - 2 Adet Kullan'#305'yor'
              '4 - 2 den Fazla Kullan'#305'yor')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Text = '1 - Kullanm'#305'yor'
            ExplicitLeft = 2
            ExplicitTop = -2
            ExplicitWidth = 240
            Width = 238
          end
        end
        object cxGroupBoxAktifD: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = 'Aktif D Vitamini Kullan'#305'm'#305
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 4
          Height = 45
          Width = 244
          object txtDVitaminKul: TcxComboBox
            Left = 3
            Top = 15
            Align = alTop
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '1 - Ihtiyac'#305' Yok'
              '2 - Oral'
              '3 - Intraven'#246'z'
              '4 - D V'#304'TAM'#304'N'#304' ANALO'#286'U')
            TabOrder = 0
            Text = '1 - Ihtiyac'#305' Yok'
            ExplicitLeft = 2
            ExplicitTop = -2
            ExplicitWidth = 240
            Width = 238
          end
        end
        object cxGroupBoxTedaviSeyri: TcxGroupBox
          Left = 0
          Top = 310
          Align = alTop
          Caption = 'Tedavinin Seyri'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 5
          Height = 45
          Width = 244
          object txtedaviSeyri: TcxComboBox
            Left = 3
            Top = 15
            Align = alTop
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '3 - Transplantasyona gitti'
              '7 - Diyaliz Tedavisi Devam Ediyor'
              '8 - Diyaliz Tedavisine '#304'htiyac'#305' Kalmad'#305)
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Text = '7 - Diyaliz Tedavisi Devam Ediyor'
            ExplicitLeft = 2
            ExplicitTop = -2
            ExplicitWidth = 240
            Width = 238
          end
        end
        object cxGroupBoxFosfor: TcxGroupBox
          Left = 0
          Top = 133
          Align = alTop
          Caption = 'Fosfor Ba'#287'lay'#305'c'#305' Ajan'
          PanelStyle.BorderWidth = 1
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          Style.TransparentBorder = True
          Style.IsFontAssigned = True
          TabOrder = 6
          Height = 87
          Width = 244
          object txtFosfor: TcxCheckListBox
            Left = 3
            Top = 15
            Width = 238
            Height = 62
            Align = alClient
            Columns = 2
            Items = <
              item
                Enabled = False
              end
              item
                Tag = 1
                Text = 'Kalsiyum Asetat'
              end
              item
                Tag = 2
                Text = 'Kalsiyum Karbonat'
              end
              item
                Tag = 3
                Text = 'Sevelamer'
              end
              item
                State = cbsChecked
                Tag = 4
                Text = 'Kullanm'#305'yor'
              end
              item
                Text = 'Di'#287'er'
              end>
            TabOrder = 0
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'Epikriz A'#231#305'klama'
        ImageIndex = 0
        TabVisible = False
        object cxGroupBoxEpikrizAck: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = 'Epikriz A'#231#305'klamas'#305
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'UserSkin'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'UserSkin'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'UserSkin'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'UserSkin'
          TabOrder = 0
          Height = 424
          Width = 244
          object txtAciklama: TAdvMemo
            Left = 3
            Top = 15
            Width = 238
            Height = 399
            Cursor = crIBeam
            ActiveLineSettings.ShowActiveLine = False
            ActiveLineSettings.ShowActiveLineIndicator = False
            Align = alClient
            AutoCompletion.Font.Charset = DEFAULT_CHARSET
            AutoCompletion.Font.Color = clWindowText
            AutoCompletion.Font.Height = -11
            AutoCompletion.Font.Name = 'Tahoma'
            AutoCompletion.Font.Style = []
            AutoCompletion.Height = 150
            AutoCompletion.StartToken = '(.'
            AutoCompletion.Width = 300
            AutoCorrect.Active = True
            AutoHintParameterPosition = hpBelowCode
            AutoIndent = False
            BookmarkGlyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFD25252525
              2525252525252525FDFDFD2E25FFFFFFFFFFFFFFFFFFFF25FDFDFD2525252525
              2525252525252525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25B7B7B7B7
              B7B7B7B7B7B72525FDFD9A9AB7B7B7B7B7B7B7B7B7B72525FDFDFD25BFB7BFBF
              B7B7B7B7B7B72525FDFD9A9ABFBFBFB7BFBFB7B7B7B72525FDFDFD25BFBFBFBF
              BFB7BFBFB7B72525FDFD9A9ABFBFBFB7BFBFBFB7BFB72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFB7BFBFB7B72525FDFDFD25BFBFBFBF
              BFBFBFBFBFB72525FDFD9A9ABFBFBFBFBFBFBFBFBFB725FDFDFDFD2525252525
              25252525252525FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD}
            BorderStyle = bsSingle
            ClipboardFormats = [cfText]
            CodeFolding.Enabled = False
            CodeFolding.LineColor = clGray
            Ctl3D = False
            DelErase = True
            EnhancedHomeKey = False
            Gutter.DigitCount = 4
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -13
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Gutter.ShowLineNumbers = False
            Gutter.Visible = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'COURIER NEW'
            Font.Style = []
            HiddenCaret = False
            Lines.Strings = (
              '')
            MarkerList.UseDefaultMarkerImageIndex = False
            MarkerList.DefaultMarkerImageIndex = -1
            MarkerList.ImageTransparentColor = 33554432
            PrintOptions.MarginLeft = 0
            PrintOptions.MarginRight = 0
            PrintOptions.MarginTop = 0
            PrintOptions.MarginBottom = 0
            PrintOptions.PageNr = False
            PrintOptions.PrintLineNumbers = False
            RightMarginColor = 14869218
            ScrollHint = True
            SelColor = clWhite
            SelBkColor = clNavy
            ShowRightMargin = True
            SmartTabs = False
            TabOrder = 0
            TabStop = True
            TrimTrailingSpaces = False
            UILanguage.ScrollHint = 'Row'
            UILanguage.Undo = 'Undo'
            UILanguage.Redo = 'Redo'
            UILanguage.Copy = 'Copy'
            UILanguage.Cut = 'Cut'
            UILanguage.Paste = 'Paste'
            UILanguage.Delete = 'Delete'
            UILanguage.SelectAll = 'Select All'
            UrlStyle.TextColor = clBlue
            UrlStyle.BkColor = clWhite
            UrlStyle.Style = [fsUnderline]
            UseStyler = False
            Version = '3.0.2.0'
            WordWrap = wwClientWidth
          end
        end
      end
    end
  end
  object GridTetkikler: TcxGridKadir
    Left = 552
    Top = 290
    Width = 225
    Height = 244
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    ExceleGonder = False
    PopupForm = False
    object gridTetkikList: TcxGridDBTableView
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
      DataController.Filter.Options = [fcoCaseInsensitive]
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
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.InfoText = 'Kay'#305't Ekle'
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 25
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      object cxGridDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'TetkikKodu'
        Visible = False
        Width = 56
      end
      object cxGridDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Tetkik'
        Width = 94
      end
      object ARALIK: TcxGridDBColumn
        DataBinding.FieldName = 'ARALIK'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 30
      end
      object KASIM: TcxGridDBColumn
        DataBinding.FieldName = 'KASIM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 35
      end
      object EKIM: TcxGridDBColumn
        DataBinding.FieldName = 'EKIM'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 35
      end
      object EYLUL: TcxGridDBColumn
        DataBinding.FieldName = 'EYLUL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 35
      end
      object AGUSTOS: TcxGridDBColumn
        DataBinding.FieldName = 'AGUSTOS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 35
      end
      object TEMMUZ: TcxGridDBColumn
        DataBinding.FieldName = 'TEMMUZ'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 35
      end
      object HAZIRAN: TcxGridDBColumn
        DataBinding.FieldName = 'HAZIRAN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 35
      end
      object MAYIS: TcxGridDBColumn
        DataBinding.FieldName = 'MAYIS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 35
      end
      object NISAN: TcxGridDBColumn
        DataBinding.FieldName = 'NISAN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 35
      end
      object MART: TcxGridDBColumn
        DataBinding.FieldName = 'MART'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 35
      end
      object SUBAT: TcxGridDBColumn
        DataBinding.FieldName = 'SUBAT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 35
      end
      object OCAK: TcxGridDBColumn
        DataBinding.FieldName = 'OCAK'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 35
      end
      object cxGridDBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'INo'
        Visible = False
        Width = 26
      end
    end
    object cxGridLevel3: TcxGridLevel
      Caption = 'Hastalar'
      GridView = gridTetkikList
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object GridIlaclar: TcxGridKadir
    Left = 264
    Top = 290
    Width = 593
    Height = 244
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    ExceleGonder = False
    PopupForm = False
    object cxGridIlacTedaviPlani: TcxGridDBTableView
      PopupMenu = PopupIlac
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
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      FilterRow.InfoText = 'Arama Sat'#305'r'#305
      FilterRow.SeparatorWidth = 2
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.InfoText = 'Kay'#305't Ekle'
      OptionsBehavior.CellHints = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnSorting = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.GroupByBox = False
      OptionsView.GroupByHeaderLayout = ghlHorizontal
      OptionsView.IndicatorWidth = 0
      OptionsView.RowSeparatorColor = clBlack
      Styles.Group = cxStyle1
      object cxGridIlacTedaviPlanigk: TcxGridDBColumn
        DataBinding.FieldName = 'gk'
        Visible = False
      end
      object cxGridIlacTedaviPlaniust: TcxGridDBColumn
        DataBinding.FieldName = 'ust'
        Visible = False
      end
      object cxGridIlacTedaviPlaniilac: TcxGridDBColumn
        DataBinding.FieldName = 'ilac'
        Visible = False
      end
      object cxGridIlacTedaviPlaniname1: TcxGridDBColumn
        Caption = #304'la'#231' Ad'#305
        DataBinding.FieldName = 'ilacName'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 294
      end
      object cxGridIlacTedaviPlanigrup: TcxGridDBColumn
        DataBinding.FieldName = 'grup'
        Visible = False
      end
      object cxGridIlacTedaviPlaniname2: TcxGridDBColumn
        DataBinding.FieldName = 'name2'
        Visible = False
      end
      object cxGridIlacTedaviPlaniperyot: TcxGridDBColumn
        Caption = 'Peryot'
        DataBinding.FieldName = 'peryot'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Items = <
          item
            Description = 'G'#252'n'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Hafta'
            Value = 7
          end
          item
            Description = 'Ay'
            Value = 30
          end
          item
            Description = '15 G'#252'n'
            Value = 15
          end>
        Width = 37
      end
      object cxGridIlacTedaviPlanimiktar: TcxGridDBColumn
        Caption = 'P.Miktar'
        DataBinding.FieldName = 'miktar'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Width = 40
      end
      object cxGridIlacTedaviPlanidoz: TcxGridDBColumn
        Caption = 'Doz'
        DataBinding.FieldName = 'doz'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Width = 36
      end
      object cxGridIlacTedaviPlanidozperyotmiktar: TcxGridDBColumn
        DataBinding.FieldName = 'dozperyotmiktar'
        Visible = False
      end
      object cxGridIlacTedaviPlaniid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
      end
      object cxGridIlacTedaviPlanigelisNo: TcxGridDBColumn
        DataBinding.FieldName = 'gelisNo'
        Visible = False
      end
      object cxGridIlacTedaviPlaniColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'tip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'Merkez'
            ImageIndex = 0
            Value = '0'
          end
          item
            Description = 'Ev'
            Value = '1'
          end>
        Visible = False
        Options.Editing = False
        Width = 50
      end
      object cxGridIlacTedaviPlaniColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'ilacName'
        Visible = False
      end
      object cxGridIlacTedaviPlaniColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'Kyol'
        Visible = False
      end
      object cxGridIlacTedaviPlaniColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'adet'
        Visible = False
      end
      object cxGridIlacTedaviPlaniColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'donemAdi'
        Visible = False
        GroupIndex = 0
        SortIndex = 0
        SortOrder = soDescending
        IsCaptionAssigned = True
      end
      object cxGridIlacTedaviPlaniColumn6: TcxGridDBColumn
        Caption = #304#351'lem'
        DataBinding.FieldName = 'uygulamaTip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <
          item
            Description = 'Her Ay'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Bu Ay'
            Value = 0
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
      object cxGridIlacTedaviPlanidonem: TcxGridDBColumn
        DataBinding.FieldName = 'donem'
        Visible = False
        SortIndex = 1
        SortOrder = soDescending
        Width = 20
        IsCaptionAssigned = True
      end
      object cxGridIlacTedaviPlaniColumn7: TcxGridDBColumn
        Caption = 'Uygulama'
        DataBinding.FieldName = 'uygulamaYeri'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <
          item
            Description = 'Ev'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Merkez'
            Value = 1
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 60
      end
    end
    object cxGridLevel15: TcxGridLevel
      Caption = 'Hastalar'
      GridView = cxGridIlacTedaviPlani
      Options.DetailFrameColor = clBlack
      Options.DetailFrameWidth = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 456
    Top = 256
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxButtonCClick
    end
    object y1: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      object N1: TMenuItem
        Tag = -1
        Caption = 'Muayene Tutana'#287#305'n'#305' Yazd'#305'r'
        OnClick = cxButtonCClick
      end
      object T1: TMenuItem
        Tag = -2
        Caption = 'Formu Yazd'#305'r'
        OnClick = cxButtonCClick
      end
      object N2: TMenuItem
        Tag = -10
        Caption = #304'la'#231' Tedavi Order'
        OnClick = cxButtonCClick
      end
    end
    object N3: TMenuItem
      Caption = '-'
      ImageIndex = 28
    end
    object T2: TMenuItem
      Tag = -5
      Caption = 'Tahlil Sonu'#231'lar'#305
      ImageIndex = 45
      OnClick = cxButtonCClick
    end
    object M1: TMenuItem
      Caption = 'Muayene '#304'ptal'
      ImageIndex = 43
      OnClick = M1Click
    end
    object K2: TMenuItem
      Caption = 'Kaydet'
      ImageIndex = 29
      OnClick = cxKaydetClick
    end
  end
  object ADO_UzmanMuayene: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 344
    Top = 224
  end
  object DataSource7: TDataSource
    DataSet = ADO_UzmanMuayene
    Left = 80
    Top = 282
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 328
    Top = 184
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8454016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object K: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object Yesil_siyah: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clLime
      TextColor = clBlack
    end
    object Sari_Siyah: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clYellow
      TextColor = clBlack
    end
  end
  object PopupIlac: TPopupMenu
    Left = 736
    Top = 248
    object E1: TMenuItem
      Tag = 80
      Caption = 'Ekle'
      OnClick = E1Click
    end
    object S1: TMenuItem
      Tag = 82
      Caption = 'Sil'
      OnClick = E1Click
    end
  end
end
