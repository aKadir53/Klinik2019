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
    Left = 35
    Top = 39
    Width = 846
    Height = 178
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
  end
  object izlemPanel: TcxGroupBox
    Left = 8
    Top = 0
    PanelStyle.Active = True
    TabOrder = 2
    Height = 500
    Width = 351
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 2
      Width = 347
      Height = 496
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
      Properties.MultiLine = True
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGoDialog, pcoGradient, pcoGradientClientArea]
      Properties.Style = 11
      ExplicitLeft = 58
      ExplicitTop = 3
      ExplicitHeight = 567
      ClientRectBottom = 489
      ClientRectLeft = 3
      ClientRectRight = 340
      ClientRectTop = 26
      object cxTabSheet2: TcxTabSheet
        Caption = 'Diyaliz '#304'zlem'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
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
          Width = 337
          object txtAnemi: TcxCheckListBox
            Left = 3
            Top = 15
            Width = 331
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
            ExplicitHeight = 71
          end
        end
        object cxGroupBoxAciklama: TcxGroupBox
          Left = 0
          Top = 368
          Align = alClient
          Caption = 'A'#231#305'klama'
          TabOrder = 1
          Height = 95
          Width = 337
          object txtDAciklama: TcxMemo
            Left = 3
            Top = 15
            Align = alClient
            Lines.Strings = (
              '')
            TabOrder = 0
            ExplicitHeight = 129
            Height = 69
            Width = 331
          end
        end
        object cxGroupBoxSinekalset: TcxGroupBox
          Left = 0
          Top = 233
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
          ExplicitTop = 241
          Height = 45
          Width = 337
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
            ExplicitWidth = 333
            Width = 331
          end
        end
        object cxGroupBoxAntihiper: TcxGroupBox
          Left = 0
          Top = 278
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
          ExplicitTop = 286
          Height = 45
          Width = 337
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
            ExplicitWidth = 333
            Width = 331
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
          Width = 337
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
            ExplicitWidth = 333
            Width = 331
          end
        end
        object cxGroupBoxTedaviSeyri: TcxGroupBox
          Left = 0
          Top = 323
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
          ExplicitTop = 331
          Height = 45
          Width = 337
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
            ExplicitWidth = 333
            Width = 331
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
          ExplicitTop = 141
          Height = 100
          Width = 337
          object txtFosfor: TcxCheckListBox
            Left = 3
            Top = 15
            Width = 331
            Height = 75
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
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
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
          ExplicitHeight = 530
          Height = 463
          Width = 337
          object txtAciklama: TAdvMemo
            Left = 3
            Top = 15
            Width = 331
            Height = 438
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
            ExplicitHeight = 505
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 248
    Top = 272
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
  end
  object ADO_UzmanMuayene: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 80
    Top = 224
  end
  object DataSource7: TDataSource
    DataSet = ADO_UzmanMuayene
    Left = 80
    Top = 282
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 400
    Top = 112
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
end
