object frmHastaTetkikEkle: TfrmHastaTetkikEkle
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmHastaTetkikEkle'
  ClientHeight = 571
  ClientWidth = 1029
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxIlacTedaviPanel: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    Height = 571
    Width = 1029
    object frmHastaIlacTedavi_cxGroupBox1: TcxGroupBox
      Left = 2
      Top = 2
      Align = alLeft
      PanelStyle.Active = True
      TabOrder = 0
      Height = 567
      Width = 703
      object frmHastaIlacTedavi_cxPageControl1: TcxPageControl
        Left = 2
        Top = 2
        Width = 699
        Height = 563
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabTetkikler
        Properties.Images = DATALAR.imag24png
        ClientRectBottom = 556
        ClientRectLeft = 3
        ClientRectRight = 692
        ClientRectTop = 35
        object cxTabTetkikler: TcxTabSheet
          Caption = 'Hasta Tetkikleri'
          ImageIndex = 45
          object cxGrid15: TcxGrid
            Left = 0
            Top = 0
            Width = 689
            Height = 441
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
            object cxGridTetkikler: TcxGridDBTableView
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
              DataController.DataSource = DataSource8
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.Active = True
              DataController.Filter.TranslateBetween = True
              DataController.Filter.TranslateLike = True
              DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '# Adet Tetkik'
                  Kind = skCount
                  Position = spFooter
                  FieldName = 'SLT'
                  Column = cxGridTetkiklerCODE
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = 'Tetkik Say'#305's'#305' : #'
                  Kind = skCount
                  Column = cxGridTetkiklerNAME1
                end>
              DataController.Summary.SummaryGroups = <
                item
                  Links = <>
                  SummaryItems = <>
                end>
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
              OptionsCustomize.GroupBySorting = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.NavigatorOffset = 20
              OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
              OptionsView.Footer = True
              OptionsView.FooterMultiSummaries = True
              OptionsView.GroupByBox = False
              OptionsView.GroupByHeaderLayout = ghlHorizontal
              OptionsView.HeaderAutoHeight = True
              OptionsView.IndicatorWidth = 0
              OptionsView.RowSeparatorColor = clBlack
              Styles.OnGetContentStyle = cxGridIlacTedaviPlaniStylesGetContentStyle
              object cxGridTetkiklerdosyaNo: TcxGridDBColumn
                DataBinding.FieldName = 'dosyaNo'
                Visible = False
              end
              object cxGridTetkiklergelisNo: TcxGridDBColumn
                DataBinding.FieldName = 'gelisNo'
                Visible = False
              end
              object cxGridTetkiklerSIRANO: TcxGridDBColumn
                DataBinding.FieldName = 'SIRANO'
                Visible = False
              end
              object cxGridTetkiklerCODE: TcxGridDBColumn
                Caption = 'Tetkik Kodu'
                DataBinding.FieldName = 'CODE'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 63
              end
              object cxGridTetkikleryapanDoktor: TcxGridDBColumn
                DataBinding.FieldName = 'yapanDoktor'
                Visible = False
              end
              object cxGridTetkikleristeyenDoktor: TcxGridDBColumn
                DataBinding.FieldName = 'isteyenDoktor'
                Visible = False
              end
              object cxGridTetkiklerNAME1: TcxGridDBColumn
                Caption = 'Tetkik Ad'#305
                DataBinding.FieldName = 'NAME1'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 108
              end
              object Tur: TcxGridDBColumn
                Caption = 'T'#252'r'
                DataBinding.FieldName = 'tip1'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.Items = <
                  item
                    Description = 'Giri'#351
                    ImageIndex = 0
                    Value = 'G'
                  end
                  item
                    Description = #199#305'k'#305#351
                    Value = 'C'
                  end
                  item
                    Value = '1'
                  end>
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 50
              end
              object cxGridTetkiklerADET: TcxGridDBColumn
                Caption = 'Adet'
                DataBinding.FieldName = 'ADET'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 31
              end
              object cxGridTetkiklerTARIH: TcxGridDBColumn
                Caption = 'Tarih'
                DataBinding.FieldName = 'TARIH'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 80
              end
              object cxGridTetkiklerKurum: TcxGridDBColumn
                DataBinding.FieldName = 'Kurum'
                Visible = False
              end
              object cxGridTetkiklertip: TcxGridDBColumn
                DataBinding.FieldName = 'tip'
                Visible = False
                Options.Editing = False
              end
              object cxGridTetkikleronay: TcxGridDBColumn
                Caption = 'Onay'
                DataBinding.FieldName = 'onay'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 44
              end
              object SonucGiris: TcxGridDBColumn
                Caption = 'Sonu'#231
                DataBinding.FieldName = 'Gd'
                HeaderAlignmentHorz = taCenter
                Width = 40
              end
              object cxGridTetkiklerislemSiraNo: TcxGridDBColumn
                DataBinding.FieldName = 'islemSiraNo'
                Visible = False
              end
              object cxGridTetkiklerDate_Create: TcxGridDBColumn
                DataBinding.FieldName = 'Date_Create'
                Visible = False
              end
              object cxGridTetkiklerislemSira: TcxGridDBColumn
                DataBinding.FieldName = 'islemSira'
                Visible = False
              end
              object cxGridTetkiklerKabulNo: TcxGridDBColumn
                DataBinding.FieldName = 'KabulNo'
                Visible = False
              end
              object Aciklama: TcxGridDBColumn
                Caption = 'Sonu'#231' A'#231#305'klama'
                DataBinding.FieldName = 'islemAciklamasi'
                PropertiesClassName = 'TcxMemoProperties'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 150
              end
              object cxGridTetkiklerISLENDIMI: TcxGridDBColumn
                DataBinding.FieldName = 'ISLENDIMI'
                Visible = False
              end
              object cxGridTetkiklerColumn1: TcxGridDBColumn
                Caption = 'G'#246'nderim'
                DataBinding.FieldName = 'ISLENDIMI'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.Items = <
                  item
                    Description = 'EVET'
                    ImageIndex = 0
                    Value = 1
                  end
                  item
                    Description = 'HAYIR'
                    Value = 0
                  end>
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 50
              end
              object cxGridTetkiklerColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'Grup'
                Visible = False
                GroupIndex = 0
                Width = 35
                IsCaptionAssigned = True
              end
              object cxGridTetkiklerColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'Grupsira'
                Visible = False
              end
            end
            object cxGridLevel15: TcxGridLevel
              Caption = 'Hastalar'
              GridView = cxGridTetkikler
              Options.DetailFrameColor = clBlack
              Options.DetailFrameWidth = 0
            end
          end
          object cxTabTetkik: TcxTabControl
            Left = 0
            Top = 486
            Width = 689
            Height = 35
            Align = alBottom
            TabOrder = 1
            Properties.TabIndex = 0
            Properties.TabPosition = tpBottom
            Properties.Tabs.Strings = (
              'Laboratuvar'
              'Tele - EKG')
            OnChange = cxTabTetkikChange
            ClientRectBottom = 5
            ClientRectLeft = 3
            ClientRectRight = 682
            ClientRectTop = 3
          end
          object cxPanelHesapla: TcxGroupBox
            Left = 0
            Top = 441
            Align = alBottom
            Caption = 'Hesaplama'
            TabOrder = 2
            Height = 45
            Width = 689
            object Label2: TLabel
              Left = 97
              Top = 15
              Width = 29
              Height = 20
              Align = alLeft
              Alignment = taCenter
              Caption = ' Kt/V  '
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitHeight = 13
            end
            object Label1: TLabel
              Left = 182
              Top = 15
              Width = 31
              Height = 20
              Align = alLeft
              Alignment = taCenter
              Caption = ' CaXP '
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitHeight = 13
            end
            object Label3: TLabel
              Left = 366
              Top = 15
              Width = 24
              Height = 20
              Align = alLeft
              Alignment = taCenter
              Caption = '  TS  '
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitHeight = 13
            end
            object Label4: TLabel
              Left = 3
              Top = 15
              Width = 38
              Height = 20
              Align = alLeft
              Alignment = taCenter
              Caption = 'URR % '
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitHeight = 13
            end
            object Label5: TLabel
              Left = 269
              Top = 15
              Width = 41
              Height = 20
              Align = alLeft
              Alignment = taCenter
              Caption = ' D'#252'z.Ca '
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Layout = tlCenter
              ExplicitHeight = 13
            end
            object txtUrr: TcxDBTextEdit
              Left = 41
              Top = 15
              Align = alLeft
              DataBinding.DataField = 'URR'
              DataBinding.DataSource = DataSource3
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              ExplicitLeft = 40
              ExplicitTop = -2
              ExplicitHeight = 45
              Width = 56
            end
            object txtKtv: TcxDBTextEdit
              Left = 126
              Top = 15
              Align = alLeft
              DataBinding.DataField = 'KT_v'
              DataBinding.DataSource = DataSource3
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              ExplicitLeft = 125
              ExplicitTop = -2
              ExplicitHeight = 45
              Width = 56
            end
            object txtCaXP: TcxDBTextEdit
              Left = 213
              Top = 15
              Align = alLeft
              DataBinding.DataField = 'CaxP'
              DataBinding.DataSource = DataSource3
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              ExplicitLeft = 212
              ExplicitTop = -2
              ExplicitHeight = 45
              Width = 56
            end
            object txtDuzCa: TcxDBTextEdit
              Left = 310
              Top = 15
              Align = alLeft
              DataBinding.DataField = 'DuzCa'
              DataBinding.DataSource = DataSource3
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 3
              ExplicitLeft = 289
              ExplicitTop = 12
              Width = 56
            end
            object ktv: TcxButtonKadir
              Left = 536
              Top = 15
              Width = 75
              Height = 20
              Align = alRight
              Caption = 'Kt/V'
              TabOrder = 4
              OnClick = ktvClick
              NewButtonVisible = False
              ExplicitLeft = 537
              ExplicitTop = -2
              ExplicitHeight = 45
            end
            object spKtv: TcxButtonKadir
              Left = 461
              Top = 15
              Width = 75
              Height = 20
              Align = alRight
              Caption = 'spKtv'
              TabOrder = 5
              OnClick = spKtvClick
              NewButtonVisible = False
              ExplicitLeft = 462
              ExplicitTop = -2
              ExplicitHeight = 45
            end
            object cxBtnHesapKaydet: TcxButtonKadir
              Left = 611
              Top = 15
              Width = 75
              Height = 20
              Align = alRight
              Caption = 'Kaydet'
              TabOrder = 6
              OnClick = cxBtnHesapKaydetClick
              NewButtonVisible = False
              ExplicitLeft = 612
              ExplicitTop = -2
              ExplicitHeight = 45
            end
            object txtTS: TcxDBTextEdit
              Left = 390
              Top = 15
              Align = alLeft
              DataBinding.DataField = 'TS'
              DataBinding.DataSource = DataSource3
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 7
              ExplicitLeft = 309
              ExplicitTop = -2
              ExplicitHeight = 45
              Width = 56
            end
          end
        end
        object cxTabTetkikDegerlendir: TcxTabSheet
          Caption = 'Sonu'#231'lar'#305' Yorumla'
          ImageIndex = 36
          object cxPageControlDegerlendir: TcxPageControl
            Left = 0
            Top = 0
            Width = 689
            Height = 521
            Align = alClient
            TabOrder = 0
            Properties.ActivePage = cxTabSheet3
            Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGoDialog, pcoGradientClientArea]
            ClientRectBottom = 514
            ClientRectLeft = 3
            ClientRectRight = 682
            ClientRectTop = 26
            object cxTabSheet3: TcxTabSheet
              Caption = 'Tetkik De'#287'erlendir'
              ImageIndex = 0
              object Panel5: TPanel
                Left = 0
                Top = 0
                Width = 679
                Height = 33
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object cxBtnDegerlendir: TcxButtonKadir
                  Left = 0
                  Top = 0
                  Width = 679
                  Height = 33
                  Align = alClient
                  Caption = 'Tetkik Sonu'#231'lar'#305'n'#305' Yorumla'
                  Glyph.Data = {
                    36090000424D3609000000000000360000002800000018000000180000000100
                    2000000000000009000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000005000000110000
                    0022000000340000003F00000043000000420000003800000028000000160000
                    0007000000010000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000003000000120E07013A492206868840
                    0CC7A84F0EE4B2540FEFB1540FEFA34D0EE57E3C0BCD3E1D05A00703006B0000
                    00410000001A0000000600000000000000000000000000000000000000000000
                    00000000000000000000000000050E0701277D3B0BAAC15C10F7C65E11FFC65E
                    11FFCE6411FFD26611FFD16611FFCD6311FFC65E11FFC65E11FFBC5910F76B33
                    09C1050300690000002F0000000B000000000000000000000000000000000000
                    000000000000000000053A1C054EB75710E7C65E11FFD26711FFE07112FFE878
                    14FFE87915FFE77916FFE77916FFE77915FFE77814FFDE7012FFCF6511FFC65E
                    11FFA54E0EE82713038A000000370000000A0000000000000000000000000000
                    0000000000024D25065CC75E11FDC96111FFE47412FFE17614FFCB6F1BFFCC71
                    1DFFD77B24FFD77D27FFD77D27FFD97C26FFDC7C22FFE27C1CFFE87B17FFE072
                    13FFC85F11FFBE5A10F82F160491000000300000000600000000000000000000
                    00003C1D053EC35D11F6CC6311FFEA7A13FFCE7A2CFFBDAFA2FFCACBCCFFC2C1
                    C0FFB09F8EFFAC7E4DFFC3823BFFC7843BFFCB8337FFD28230FFDB8026FFE57E
                    1BFFE57814FFCA6111FFB95810F5170B02740000001C00000002000000000F07
                    0108B3550FD8CA6111FFE97A13FFE57D19FFD2BDA8FFF0F0F0FFF9F9F9FFFAFA
                    FAFFF5F5F5FFE2E2E1FFBAAC9BFFAF834BFFC48B44FFC78B40FFCE8838FFD985
                    2CFFE5801EFFE47714FFC75F11FF98480DDB0100004200000009170B02007638
                    0A6DC65E11FFE17312FFEC8219FFCE7B22FFF6F5F3FFFCFCFCFFEBE8E3FFB697
                    6AFFB69057FFBA9D71FFD0C3AFFFDEDBD6FFB48B4DFFC89447FFCA9344FFD090
                    3CFFDC8A2DFFE8841DFFDC7013FFC65E11FF3B1C05880000001933180501BB59
                    10DFCD6411FFEF8216FFE78922FFC48535FFFEFEFEFFEBEBEBFFB79E73FFCD9B
                    47FFCD9B47FFCD9B47FFCC9A47FFBB9049FFBDA681FFC79644FFCD9B47FFCF99
                    45FFD6943BFFE28C29FFEC8319FFC75F11FF8B420CCD0000002D803D0B38C75E
                    11FFDF7312FFEE871BFFE3922DFFC38E3AFFFCFBFBFFDFDFE0FFAE8E53FFBB95
                    51FFCE9E46FFD2A147FFD2A147FFD2A147FFCA9C47FFCC9D47FFD2A147FFD2A1
                    47FFD59E42FFDE9634FFEB8A20FFD56B13FFC65E11FC0D060144AC520F8DC65E
                    11FFEA7E14FFEC8E20FFD99632FFC29339FFEDEAE5FFE5E5E5FFADA79BFFAE9D
                    7CFFD6A747FFD7A847FFD7A847FFD7A847FFBB9342FFB8A47AFFD6A747FFD7A8
                    47FFD8A746FFDDA03BFFE99327FFE47B16FFC65E11FF36190569C65E11CFC55D
                    11FFF08615FFEC9424FFCBA057FFDBD6CBFFFAF9F8FFF8F8F8FFD5D5D5FFC6A7
                    61FFDDB14EFFDBAE47FFDBAE47FFDBAE47FFC2A35CFFD2D2D1FFB3985CFFDAAD
                    47FFDBAE47FFDFA83FFFE99A2CFFE98318FFC65E11FF4D25077BC65E11DFC55D
                    11FFF28817FFED9828FFE3A93DFFC9A54DFFE4DECCFFFDFDFDFFC8C5BDFFE6CC
                    8EFFE4C16AFFE0B754FFDEB44AFFDEB349FFD0BD8CFFEFF0F0FFC6C6C3FFB69E
                    62FFD8AE46FFE1AE42FFE99F30FFEA871AFFC65E11FF5428077CC65E11BAC65E
                    11FFEF8819FFED9B2DFFE3AE45FFDEB751FFD2B669FFE4E1D6FFD5D1C8FFF3E5
                    C0FFEBD393FFE5C777FFE2C167FFD9B553FFE0D9C8FFFFFFFFFFEFEFEFFFD0CD
                    C7FFBCAF8BFFD9AD4BFFE9A236FFE8851DFFC65E11FF47220667C65E116AC65E
                    11FFE7801AFFEE9B30FFE4AF4CFFE1BE64FFE9D394FFDBD1B4FFDEDDD9FFFCF8
                    EFFFF5ECCFFFEFDFB1FFEBD69BFFCAB782FFD5CDB8FFEFEEE9FFE7E7E7FFB6A1
                    68FFD7B65AFFE0B352FFEAA23AFFDF7C1CFFC75F11FF2813033AC65E1119C65E
                    11FBDB7318FFF09931FFE7AE50FFE3C476FFEAD8A3FFF2E8CAFFECE9E0FFFDFD
                    FAFFFAF6EAFFF5EBD0FFEEE0B5FFD6C48EFFD0B566FFE4E0D6FFE5E5E5FFB2A4
                    7BFFDFC06BFFE4B45AFFEDA03BFFCF6916FFBC5910E80502000BC65E1100C65E
                    11B9C75F11FFEF902CFFEBA74CFFE5C17BFFE9D6A4FFEFE4C2FFD7D2C4FFCFCC
                    C5FFEEE8D5FFF0E5C5FFE9D9A9FFE0C986FFC2AD70FFF1F0EEFFE6E6E6FFB2A6
                    86FFE1C074FFE8AE58FFE99132FFC65E11FF71360A8800000003C65E1100C65E
                    1133C65E11FED9741DFFF09D41FFE9B770FFE7CF9EFFEADDB7FFE7DDC1FFD5D1
                    C8FFD6D4D0FFC1BBAAFFBCB292FFB9AD8CFFC2BEB4FFF3F3F3FFE5E5E5FFB9AA
                    86FFE5B972FFEDA44EFFD26D1BFFC65E11F92210031F00000000C65E1100C65E
                    1100C65E11A5C65E11FFE3822BFFEEA657FFE9C088FFE7D1A8FFE7DAB8FFDED3
                    B4FFD2CCBEFFF1F1F0FFEAEAEAFFE5E5E5FFF1F1F1FFFDFDFDFFE5E5E3FFCEAC
                    79FFECAB60FFDB7E2BFFC65E11FF79390A7C0000000100000000C65E1100C65E
                    1100C65E1108C65E11CEC65E11FFE38530FFEFA85FFFE9BA84FFE6C89DFFE2CD
                    AAFFDECDACFFC8BBA2FFD0CABFFFE9E7E5FFFBFBFBFFF0EDEAFFCDB291FFECAB
                    65FFDB7E2EFFC65E11FFA9500EB7060301020000000000000000C65E1100C65E
                    1100C65E1100C65E1118C65E11CBC65E11FFD67324FFED9B50FFECAD6EFFE8B8
                    85FFE6BF95FFE5C29BFFE5C29BFFDCB891FFD2A97FFFDDA66FFFE99C55FFD16F
                    21FFC65E11FFA7500EB2200F0309000000000000000000000000C65E1100C65E
                    1100C65E1100C65E1100C65E110DC65E1196C65E11FBC86113FFD67528FFE18B
                    42FFE79955FFE9A05EFFE9A05EFFE69956FFDF8A43FFD47327FFC65F12FFC65E
                    11F7C35C117C6E3409060D060100000000000000000000000000C65E1100C65E
                    1100C65E1100C65E1100C65E1100C65E1100C65E1128C65E11A5C65E11F4C65E
                    11FFC65E11FFC55D10FFC55D10FFC65E11FFC65E11FFC65E11ECC65E1195C65E
                    1118B85710006E3409000D060100000000000000000000000000C65E1100C65E
                    1100C65E1100C65E1100C65E1100C65E1100C65E1100C65E1100C65E110AC65E
                    1153C65E11B1C65E11ECC65E11E5C65E119FC65E1146C65E1106C65E1100C65E
                    1100B85710006E3409000D060100000000000000000000000000}
                  TabOrder = 0
                  Font.Charset = TURKISH_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  OnClick = cxBtnDegerlendirClick
                  NewButtonVisible = False
                end
              end
              object cxGridDegerlendir: TcxGridKadir
                Left = 0
                Top = 33
                Width = 679
                Height = 455
                Align = alClient
                Font.Charset = TURKISH_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                LevelTabs.ImageBorder = 2
                LevelTabs.Style = 1
                LookAndFeel.Kind = lfOffice11
                LookAndFeel.NativeStyle = False
                LookAndFeel.SkinName = 'UserSkin'
                ExcelFileName = 'TetkikDegerlendir'
                ExceleGonder = True
                PopupForm = False
                object gridTetkikDegerlendir: TcxGridDBTableView
                  OnDblClick = gridTetkikDegerlendirDblClick
                  Navigator.Buttons.First.Visible = False
                  Navigator.Buttons.PriorPage.Visible = False
                  Navigator.Buttons.Prior.Visible = False
                  Navigator.Buttons.Next.Visible = False
                  Navigator.Buttons.NextPage.Visible = False
                  Navigator.Buttons.Last.Visible = False
                  Navigator.Buttons.Insert.Visible = False
                  Navigator.Buttons.Append.Enabled = False
                  Navigator.Buttons.Append.Visible = False
                  Navigator.Buttons.Delete.Enabled = False
                  Navigator.Buttons.Delete.Visible = False
                  Navigator.Buttons.Edit.Visible = True
                  Navigator.Buttons.Post.Visible = True
                  Navigator.Buttons.Cancel.Visible = True
                  Navigator.Buttons.Refresh.Visible = True
                  Navigator.Buttons.SaveBookmark.Visible = False
                  Navigator.Buttons.GotoBookmark.Visible = False
                  Navigator.Buttons.Filter.Visible = False
                  Navigator.Visible = True
                  FilterBox.CustomizeDialog = False
                  DataController.DataModeController.DetailInSQLMode = True
                  DataController.DataSource = DataSource3
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
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsView.NavigatorOffset = 20
                  OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                  OptionsView.CellAutoHeight = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  OptionsView.RowSeparatorColor = clBlack
                  object cxGridDBColumn1: TcxGridDBColumn
                    Caption = 'De'#287'erlendirme Sonucu'
                    DataBinding.FieldName = 'uyari'
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Styles.Content = cxStyle2
                    Width = 537
                  end
                  object gridTetkikDegerlendirColumn1: TcxGridDBColumn
                    DataBinding.FieldName = 'Onay'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.ValueChecked = 1
                    Properties.ValueUnchecked = '0'
                    Options.Editing = False
                    Width = 30
                  end
                  object TedaviKolon: TcxGridDBColumn
                    DataBinding.FieldName = 'Tedavi'
                    Visible = False
                    HeaderAlignmentHorz = taCenter
                    Width = 204
                  end
                  object gridTetkikDegerlendirColumn2: TcxGridDBColumn
                    DataBinding.FieldName = 'Tip'
                    Visible = False
                  end
                end
                object cxGridLevel2: TcxGridLevel
                  Caption = 'Hastalar'
                  GridView = gridTetkikDegerlendir
                  Options.DetailFrameColor = clBlack
                  Options.DetailFrameWidth = 0
                end
              end
            end
            object cxTabSheet4: TcxTabSheet
              Caption = 'Tetkik De'#287'. Ayar'
              ImageIndex = 1
              object cxGrid13: TcxGrid
                Left = 0
                Top = 0
                Width = 679
                Height = 488
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
                object gridUyar: TcxGridDBTableView
                  PopupMenu = PopupMenu1
                  Navigator.Buttons.First.Visible = False
                  Navigator.Buttons.PriorPage.Visible = False
                  Navigator.Buttons.Prior.Visible = False
                  Navigator.Buttons.Next.Visible = False
                  Navigator.Buttons.NextPage.Visible = False
                  Navigator.Buttons.Last.Visible = False
                  Navigator.Buttons.Insert.Visible = False
                  Navigator.Buttons.Append.Enabled = False
                  Navigator.Buttons.Append.Visible = True
                  Navigator.Buttons.Delete.Enabled = False
                  Navigator.Buttons.Delete.Visible = False
                  Navigator.Buttons.Edit.Visible = True
                  Navigator.Buttons.Post.Visible = True
                  Navigator.Buttons.Cancel.Visible = True
                  Navigator.Buttons.Refresh.Visible = True
                  Navigator.Buttons.SaveBookmark.Visible = True
                  Navigator.Buttons.GotoBookmark.Visible = True
                  Navigator.Buttons.Filter.Visible = True
                  Navigator.Visible = True
                  FilterBox.CustomizeDialog = False
                  DataController.DataModeController.DetailInSQLMode = True
                  DataController.DataSource = DataSource17
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
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Inserting = False
                  OptionsView.NavigatorOffset = 20
                  OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
                  OptionsView.CellAutoHeight = True
                  OptionsView.GroupByBox = False
                  OptionsView.Indicator = True
                  OptionsView.RowSeparatorColor = clBlack
                  object cxGridDBColumn22: TcxGridDBColumn
                    Caption = 'De'#287'erlendirme Tan'#305'm'#305
                    DataBinding.FieldName = 'tipname'
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 253
                  end
                  object cxGridDBColumn23: TcxGridDBColumn
                    Caption = 'Uyar'
                    DataBinding.FieldName = 'uyar'
                    PropertiesClassName = 'TcxCheckBoxProperties'
                    Properties.ValueChecked = 1
                    Properties.ValueUnchecked = '0'
                    HeaderAlignmentHorz = taCenter
                    Width = 30
                  end
                  object gridUyarColumn1: TcxGridDBColumn
                    Caption = 'Kriter'
                    DataBinding.FieldName = 'kriter'
                    PropertiesClassName = 'TcxTextEditProperties'
                    Properties.ReadOnly = True
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 288
                  end
                end
                object cxGridLevel13: TcxGridLevel
                  Caption = 'Hastalar'
                  GridView = gridUyar
                  Options.DetailFrameColor = clBlack
                  Options.DetailFrameWidth = 0
                end
              end
            end
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 208
    Top = 160
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object T3: TMenuItem
      Tag = -4
      Caption = 'Tetkik Takip Formu'
      OnClick = ItemClick
    end
    object K2: TMenuItem
      Tag = -20
      Caption = 'Kt/v - Urr Listesi'
      OnClick = ItemClick
    end
    object T4: TMenuItem
      Tag = -21
      Caption = 'Tetkik De'#287'erlendir'
      ImageIndex = 69
      OnClick = ItemClick
    end
    object G1: TMenuItem
      Caption = 'Rutin Tetkik Ekle'
      ImageIndex = 99
      object N1: TMenuItem
        Tag = -1
        Caption = 'Ayl'#305'k Ekle'
        ImageIndex = 61
        OnClick = ItemClick
      end
      object T1: TMenuItem
        Tag = -3
        Caption = '3 Ayl'#305'k Ekle'
        ImageIndex = 62
        OnClick = ItemClick
      end
      object N2: TMenuItem
        Tag = -6
        Caption = '6 Ayl'#305'k Ekle'
        ImageIndex = 64
        OnClick = ItemClick
      end
      object S1: TMenuItem
        Tag = -12
        Caption = 'Y'#305'll'#305'k Ekle'
        ImageIndex = 94
        OnClick = ItemClick
      end
      object H1: TMenuItem
        Tag = -5
        Caption = 'Hepatit Marker Ekle'
        OnClick = ItemClick
      end
    end
    object T2: TMenuItem
      Tag = -2
      Caption = 'Tetkik Sil'
      ImageIndex = 42
      OnClick = ItemClick
    end
    object T5: TMenuItem
      Tag = -22
      Caption = 'Tetkik Ekle'
      ImageIndex = 30
      OnClick = ItemClick
    end
    object T6: TMenuItem
      Tag = -23
      Caption = 'Tarih Bilgisi Kan Al'#305'nan Seans Tarihi'
      ImageIndex = 120
      OnClick = ItemClick
    end
  end
  object ADO_Tetkikler: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Filtered = True
    EnableBCD = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from hareketler h '
      'join labtestler t on t.butKodu = h.code '
      'join lab_gruplari g on g.SLB = t.grupKodu'
      '           where dosyaNo = '#39'015099'#39
      '           and gelisNo = '#39'1'#39' and abs(t.tip) = '#39'2'#39
      '          order by kabulno,h.TARIH,sira ')
    Left = 80
    Top = 270
  end
  object DataSource8: TDataSource
    DataSet = ADO_Tetkikler
    Left = 80
    Top = 230
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 456
    Top = 144
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 8454016
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
  object ADO_TetkikDegerlendir: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Filtered = True
    EnableBCD = False
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from labsonucdegerlendirme')
    Left = 80
    Top = 342
  end
  object Tetkikler: TListeAc
    ListeBaslik = 'Tetkik Listesi'
    TColcount = 4
    TColsW = '50,350,50,50'
    Table = 'labtestler'
    Conn = DATALAR.ADOConnection2
    Filtercol = 2
    BaslikRenk = clBackground
    DipRenk = clBackground
    ButtonImajIndex = 132
    Kolonlar.Strings = (
      'butKodu'
      'tanimi'
      'Tip'
      'uygulamaAdet')
    KolonBasliklari.Strings = (
      'But Kodu'
      'Tanimi'
      'Tip'
      'T'#252'r')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 328
    Top = 205
  end
  object DataSource3: TDataSource
    DataSet = ADO_TetkikDegerlendir
    Left = 80
    Top = 390
  end
  object DataSource17: TDataSource
    DataSet = ADO_Uyar
    Left = 378
    Top = 365
  end
  object ADO_Uyar: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'TedaviUyariAyar'
    Left = 444
    Top = 364
  end
end
