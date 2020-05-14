object frmLabOrnekNoGiris: TfrmLabOrnekNoGiris
  Left = 437
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmLabOrnekNoGiris'
  ClientHeight = 635
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitle: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 26
    Align = alTop
    Caption = 'Lab Ornek Kay'#305't Listesi'
    Color = 8421631
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object chkCikisTest: TCheckBox
      Left = 548
      Top = 4
      Width = 51
      Height = 17
      Caption = #199#305'k'#305#351' Testleri'
      TabOrder = 0
      Visible = False
    end
    object Button1: TButton
      Left = 56
      Top = 0
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object chkTestKod: TsCheckBox
      Left = 632
      Top = 0
      Width = 84
      Height = 22
      Caption = 'Test Kod'
      TabOrder = 2
      Visible = False
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object chk: TsCheckBox
      Left = 749
      Top = 0
      Width = 60
      Height = 22
      Caption = 'Tc ile'
      TabOrder = 3
      Visible = False
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
  end
  object pnlToolBar: TPanel
    Left = 0
    Top = 26
    Width = 851
    Height = 45
    Align = alTop
    Color = clBackground
    Font.Charset = TURKISH_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object btnDegistir: TAdvToolButton
      Tag = 25
      Left = 368
      Top = 38
      Width = 26
      Height = 27
      Hint = 'Takipler'
      AutoThemeAdapt = False
      ColorDown = 14210002
      ColorHot = 13289415
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = btnDegistirClick
      Version = '1.6.1.0'
    end
    object btnSil: TAdvToolButton
      Tag = 10
      Left = 396
      Top = 37
      Width = 27
      Height = 27
      Hint = 'Hesapla & Kaydet'
      AutoThemeAdapt = False
      ColorDown = 14210002
      ColorHot = 13289415
      ParentShowHint = False
      ShowHint = True
      Visible = False
      Version = '1.6.1.0'
    end
    object txtTarih: TcxDateEdit
      Left = 41
      Top = 1
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 0
      Width = 121
    end
    object txttarih1: TcxDateEdit
      Left = 163
      Top = 1
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 2
      Width = 121
    end
    object DiyalizTip: TcxRadioGroup
      Left = 42
      Top = 22
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Hemodiyaliz'
          Value = 'H'
        end
        item
          Caption = 'Periton Ayaktan'
          Value = 'P'
        end
        item
          Caption = 'Periton Aletli'
          Value = 'A'
        end>
      Properties.OnChange = DiyalizTipPropertiesChange
      ItemIndex = 0
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
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
      Height = 21
      Width = 242
    end
    object Durum: TcxRadioGroup
      Left = 371
      Top = 11
      Alignment = alCenterCenter
      ParentFont = False
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Yeni Kay'#305't'
          Value = 'Yeni Kay'#305't'
        end
        item
          Caption = 'G'#246'nderildi'
          Value = 'G'#246'nderildi'
        end
        item
          Caption = 'Sonu'#231' Al'#305'nd'#305
          Value = 'Sonu'#231' Al'#305'nd'#305
        end>
      Properties.OnChange = DiyalizTipPropertiesChange
      ItemIndex = 0
      Style.Font.Charset = TURKISH_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 3
      Height = 21
      Width = 268
    end
    object btnList: TsBitBtn
      Left = 0
      Top = 1
      Width = 41
      Height = 43
      Hint = 'Listele'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnListClick
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 43
      Images = DATALAR.global_img_list4
    end
    object sBitBtn4: TsBitBtn
      Left = 289
      Top = 1
      Width = 80
      Height = 42
      Hint = 'Barkod Bas'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = sBitBtn4Click
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 0
      Images = cxImageList1
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 71
    Width = 851
    Height = 532
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = #214'rnekNo Giri'#351' Listesi'
      object gridAktif: TAdvStringGrid
        Tag = 200
        Left = 0
        Top = 0
        Width = 837
        Height = 504
        Cursor = crDefault
        Hint = 'Aktif Hastalar'
        TabStop = False
        Align = alClient
        Color = clWhite
        ColCount = 13
        Ctl3D = True
        DefaultRowHeight = 21
        DrawingStyle = gdsClassic
        RowCount = 2
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyDown = gridAktifKeyDown
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = TURKISH_CHARSET
        ActiveCellFont.Color = clRed
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        Bands.Active = True
        Bands.PrimaryColor = clWhite
        Bands.SecondaryColor = clBtnFace
        CellNode.ShowTree = False
        ColumnHeaders.Strings = (
          ''
          'Hasta No'
          'Geli'#351' No'
          'Hasta Ad'#305' Soyad'#305
          'Serum(Giri'#351')'
          'Serum('#199#305'k'#305#351')'
          'GelisID'
          'TCKimlikNo'
          #214'rnek Durum'
          'RefId'
          'Plazma (EDTA)'
          'Serum(Anaerob)'
          'Tam Kan')
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
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
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDownClear = '(All)'
        FixedColWidth = 20
        FixedFont.Charset = TURKISH_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
        FloatFormat = '%.2f'
        MouseActions.AllSelect = True
        MouseActions.CheckAllCheck = True
        MouseActions.DisjunctRowSelect = True
        MouseActions.RangeSelectAndEdit = True
        MouseActions.RowSelectPersistent = True
        Multilinecells = True
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
        PrintSettings.PageNumSep = '/'
        ScrollWidth = 16
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SelectionColor = clBackground
        SelectionTextColor = clWhite
        SortSettings.Column = 0
        SortSettings.Full = False
        SyncGrid.SelectionRow = True
        Version = '6.2.6.1'
        WordWrap = False
        DesignSize = (
          833
          500)
        ColWidths = (
          20
          63
          26
          118
          72
          67
          53
          90
          76
          35
          71
          64
          64)
        object DBGrid1: TDBGrid
          Left = 3
          Top = 319
          Width = 574
          Height = 130
          DataSource = DataSource1
          TabOrder = 2
          TitleFont.Charset = TURKISH_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Visible = False
        end
        object Memo1: TMemo
          Left = 3
          Top = 273
          Width = 433
          Height = 40
          Lines.Strings = (
            'Memo1')
          TabOrder = 5
          Visible = False
        end
        object cxGroupBox1: TcxGroupBox
          Left = 264
          Top = 114
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Etiketleri Seri Olarak DB'#39'ye Alma '#304#351'lemi'
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'caramel'
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'caramel'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'caramel'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'caramel'
          TabOrder = 6
          Visible = False
          ExplicitWidth = 856
          Height = 183
          Width = 873
          object sGauge1: TsGauge
            Left = 3
            Top = 156
            Width = 867
            Height = 17
            Align = alBottom
            Visible = False
            SkinData.SkinSection = 'GAUGE'
            ForeColor = clBlack
            Progress = 0
            Suffix = '%'
            ExplicitLeft = 16
            ExplicitTop = 143
            ExplicitWidth = 120
          end
          object basla: TcxSpinEdit
            Left = 112
            Top = 28
            ParentFont = False
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'caramel'
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'caramel'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'caramel'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'caramel'
            TabOrder = 0
            Width = 105
          end
          object cxLabel1: TcxLabel
            Left = 16
            Top = 35
            Caption = 'Ba'#351'lang'#305#231' Etiket'
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'caramel'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'caramel'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'caramel'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'caramel'
            Transparent = True
          end
          object bitir: TcxSpinEdit
            Left = 112
            Top = 55
            ParentFont = False
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'caramel'
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'caramel'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'caramel'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'caramel'
            TabOrder = 2
            Width = 105
          end
          object cxLabel2: TcxLabel
            Left = 16
            Top = 62
            Caption = 'Biti'#351' Etiket'
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'caramel'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'caramel'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'caramel'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'caramel'
            Transparent = True
          end
          object adim: TcxSpinEdit
            Left = 112
            Top = 82
            ParentFont = False
            Style.Font.Charset = TURKISH_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'caramel'
            Style.TextStyle = [fsBold]
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'caramel'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'caramel'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'caramel'
            TabOrder = 4
            Width = 105
          end
          object cxLabel3: TcxLabel
            Left = 16
            Top = 89
            Caption = 'Ad'#305'm'
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'caramel'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'caramel'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'caramel'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'caramel'
            Transparent = True
          end
          object cxButton1: TcxButton
            Left = 111
            Top = 112
            Width = 50
            Height = 25
            Caption = 'Ba'#351'la'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'caramel'
            TabOrder = 6
            OnClick = cxButton1Click
          end
          object cxButton2: TcxButton
            Left = 167
            Top = 112
            Width = 50
            Height = 25
            Caption = 'Kapat'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'caramel'
            TabOrder = 7
            OnClick = cxButton2Click
          end
        end
      end
      object Panel1: TPanel
        Left = 837
        Top = 0
        Width = 6
        Height = 504
        Align = alRight
        TabOrder = 1
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Log'
      ImageIndex = 1
      object txtLog: TMemo
        Left = 0
        Top = 0
        Width = 843
        Height = 504
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
      end
      object ListBox1: TListBox
        Left = 192
        Top = 56
        Width = 403
        Height = 273
        ItemHeight = 13
        TabOrder = 1
        Visible = False
      end
    end
  end
  object pnlOnay: TPanel
    Left = 0
    Top = 603
    Width = 851
    Height = 32
    Align = alBottom
    Color = clBackground
    TabOrder = 3
    object txtinfo: TLabel
      Left = 7
      Top = 10
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
    object progres: TsGauge
      Left = 133
      Top = 5
      Width = 120
      Height = 21
      Visible = False
      SkinData.SkinSection = 'GAUGE'
      ForeColor = clBlack
      Progress = 0
      Suffix = '%'
    end
    object btnSend: TsBitBtn
      Left = 424
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Kaydet'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnSendClick
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 10
      Images = DATALAR.global_img_list4
    end
    object btnVazgec: TsBitBtn
      Left = 505
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Vazge'#231
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnVazgecClick
      SkinData.SkinSection = 'BUTTON'
      ImageIndex = 12
      Images = DATALAR.global_img_list4
    end
  end
  object ref: TCheckBox
    Left = 630
    Top = 72
    Width = 97
    Height = 17
    Caption = 'RefId'
    TabOrder = 4
  end
  object PopupMenu1: TPopupMenu
    Left = 148
    Top = 166
    object mnSe1: TMenuItem
      Caption = 'T'#252'm'#252'n'#252' Se'#231
      OnClick = mnSe1Click
    end
    object mptal1: TMenuItem
      Caption = 'T'#252'm'#252' '#304'ptal'
      OnClick = mptal1Click
    end
    object d1: TMenuItem
      Caption = 'Durum De'#287'i'#351'tir'
      object Y1: TMenuItem
        Tag = 21
        Caption = 'Yeni Kay'#305't'
        OnClick = Y1Click
      end
      object G1: TMenuItem
        Tag = 22
        Caption = 'G'#246'nderildi'
        OnClick = Y1Click
      end
      object S8: TMenuItem
        Tag = 23
        Caption = 'Sonu'#231' Al'#305'nd'#305
        OnClick = Y1Click
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object A1: TMenuItem
      Caption = 'MediLis'
      object H1: TMenuItem
        Caption = 'Hastalar'#305' G'#246'nder'
        OnClick = H1Click
      end
      object S1: TMenuItem
        Caption = 'Sonu'#231'lar'#305' Al'
        object T1: TMenuItem
          Tag = 1
          Caption = 'TcKimlik '#304'le'
          OnClick = R1Click
        end
        object R1: TMenuItem
          Caption = 'RefId '#304'le S'#305'raNo'
          Checked = True
          OnClick = R1Click
        end
        object R2: TMenuItem
          Tag = 2
          Caption = 'RefId '#304'le TestKodu'
          OnClick = R1Click
        end
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #220'mit Hast'
      object H3: TMenuItem
        Caption = 'Hastalar'#305' G'#246'nder'
        OnClick = H1Click
      end
      object S3: TMenuItem
        Caption = 'Sonu'#231'lar'#305' Al'
        object TMenuItem
        end
        object R3: TMenuItem
          Caption = 'RefId '#304'le S'#305'raNo'
          Checked = True
          OnClick = R1Click
        end
        object R4: TMenuItem
          Caption = 'RefId '#304'le TestKodu'
          Visible = False
        end
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #304'nVitro'
      object H2: TMenuItem
        Caption = 'Hastalar'#305' G'#246'nder'
        OnClick = H2Click
      end
      object S2: TMenuItem
        Caption = 'Sonu'#231'lar'#305' Al'
        object S4: TMenuItem
          Caption = 'Sonu'#231'lar'#305' Al'
          OnClick = S4Click
        end
        object N6: TMenuItem
          Tag = 1
          Caption = #199#305'k'#305#351' Sonu'#231'lar'#305' Al'
          OnClick = S4Click
        end
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object V1: TMenuItem
      Caption = 'Ventura'
      object N8: TMenuItem
        Caption = 'Hastalar'#305' G'#246'nder'
        OnClick = N8Click
      end
      object s5: TMenuItem
        Caption = 'Sonu'#231'lar'#305' Al'
        OnClick = s5Click
      end
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object T2: TMenuItem
      Caption = 'Tenay'
      object H4: TMenuItem
        Caption = 'Hastalar'#305' G'#246'nder'
        OnClick = H4Click
      end
      object S6: TMenuItem
        Caption = 'Sonu'#231'lar'#305' Al'
        OnClick = S6Click
      end
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object R5: TMenuItem
      Caption = 'Referans'
      object S7: TMenuItem
        Caption = 'Sonu'#231'lar'#305' Al'
        OnClick = S7Click
      end
      object G2: TMenuItem
        Tag = 1
        Caption = 'GelisREF '
        OnClick = S7Click
      end
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object B1: TMenuItem
      Caption = 'Birlab'
      object N12: TMenuItem
        Caption = #214'rnek Nolar'#305' Oku'
        Visible = False
        OnClick = N12Click
      end
      object S9: TMenuItem
        Caption = 'Sonu'#231'lar'#305' Al'
        OnClick = S9Click
      end
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object D2: TMenuItem
      Caption = 'D'#252'zen'
      object H5: TMenuItem
        Caption = 'Hastalar'#305' G'#246'nder'
        OnClick = H5Click
      end
      object S10: TMenuItem
        Caption = 'Sonuclar'#305' Al'
        OnClick = S10Click
      end
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object A2: TMenuItem
      Caption = 'Alis'
      object H6: TMenuItem
        Caption = 'Hasta Listesini Getir (Sonuc Oku)'
        OnClick = H6Click
      end
      object O1: TMenuItem
        Caption = 'Ornek No Sonuc Oku'
        OnClick = O1Click
      end
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object W1: TMenuItem
      Caption = 'Winsoft'
      object N16: TMenuItem
        Caption = #214'rnek Listesi Oku'
        OnClick = N16Click
      end
      object S11: TMenuItem
        Caption = 'Sonu'#231' Getir'
        OnClick = S11Click
      end
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object N18: TMenuItem
      Caption = 'Metdata'
      object H7: TMenuItem
        Caption = 'Hastalar'#305' G'#246'nder'
        OnClick = H7Click
      end
      object S12: TMenuItem
        Caption = 'Sonu'#231'lar'#305' Al ('#304'stek No)'
        Visible = False
        OnClick = S12Click
      end
      object S17: TMenuItem
        Tag = 1
        Caption = 'Sonu'#231'lar'#305' Al (Teslim No)'
        OnClick = S12Click
      end
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object E2: TMenuItem
      Caption = 'Erguvan'
      OnClick = E2Click
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object A3: TMenuItem
      Caption = 'ESY (AV'#304'CENNA )'
      object T3: TMenuItem
        Caption = 'Test G'#246'nder'
        OnClick = T3Click
      end
      object S13: TMenuItem
        Caption = 'Sonu'#231' Al'
        OnClick = S13Click
      end
      object t4: TMenuItem
        Caption = 'testler'
        Visible = False
        OnClick = t4Click
      end
    end
    object L1: TMenuItem
      Caption = 'Lios'
      object S18: TMenuItem
        Caption = 'Sonu'#231' Al'
        OnClick = S18Click
      end
    end
    object N21: TMenuItem
      Caption = '-'
    end
    object K1: TMenuItem
      Caption = 'Derman'
      object H8: TMenuItem
        Caption = 'Hasta G'#246'nder'
        OnClick = H8Click
      end
      object s14: TMenuItem
        Caption = 'Sonuc Al'
        OnClick = s14Click
      end
    end
    object N22: TMenuItem
      Caption = '-'
    end
    object C1: TMenuItem
      Caption = 'Centro'
      object K2: TMenuItem
        Caption = 'DB den Kap Numaras'#305' Al'
        Visible = False
        OnClick = K2Click
      end
      object B2: TMenuItem
        Caption = 'Barkodlar'#305' DB ye AL (Seriden) '
        Visible = False
        OnClick = B2Click
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object H9: TMenuItem
        Caption = 'Hasta G'#246'nder'
        OnClick = H9Click
      end
      object s15: TMenuItem
        Caption = 'Sonuc Al'
        OnClick = s15Click
      end
    end
    object N26: TMenuItem
      Caption = '-'
    end
    object N25: TMenuItem
      Caption = #304'ntermedia'
      object N27: TMenuItem
        Caption = #214'rnek Listesi Oku'
        OnClick = N27Click
      end
      object S16: TMenuItem
        Caption = 'Sonu'#231' Oku'
      end
    end
    object N23: TMenuItem
      Caption = '-'
    end
    object G3: TMenuItem
      Caption = 'Gemsoft'
      object N29: TMenuItem
        Caption = #214'rnek Listesini Oku'
        OnClick = N29Click
      end
      object N30: TMenuItem
        Caption = #214'rnek No Sonuc Oku'
        OnClick = N30Click
      end
    end
    object N28: TMenuItem
      Caption = '-'
    end
    object A4: TMenuItem
      Caption = 'AEN'
      OnClick = A4Click
    end
    object N31: TMenuItem
      Caption = '-'
    end
    object E1: TMenuItem
      Caption = 'Ecxel Tablosundan Sonu'#231' Al'
      OnClick = E1Click
    end
  end
  object cxImageList1: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 7864504
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0FFC0C0C0FFC0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FFC0C0C0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFFFFFFFFF000000FFC0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FFFFFFFFFF0000
          00FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFF000000FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF000000FF0000
          00FF000000FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF0000
          00FF000000FFC0C0C0FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF000000FFC0C0C0FFFFFF
          FFFFFFFFFFFF000000FFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFC0C0
          C0FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
          00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end>
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'XMLTransformProvider1'
    Left = 528
    Top = 112
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ClientDataSet1
    ResolveToDataSet = True
    Left = 688
    Top = 288
  end
  object XMLDocument1: TXMLDocument
    FileName = 'C:\Dializ2007_M3\ErguvanCvp1.XML'
    Left = 672
    Top = 232
    DOMVendorDesc = 'MSXML'
  end
  object XMLTransformProvider1: TXMLTransformProvider
    TransformRead.TransformationFile = 'C:\Dializ2007_M3\duzen.xtr'
    Left = 640
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 584
    Top = 128
  end
  object DuzenHTTP: THTTPRIO
    OnAfterExecute = DuzenHTTPAfterExecute
    WSDLLocation = 'C:\Dializ2007_M3\duzen.wsdl'
    Service = 'PatientProcs'
    Port = 'PatientProcsSoap'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 382
    Top = 148
  end
  object Referans: THTTPRIO
    OnAfterExecute = ReferansAfterExecute
    WSDLLocation = 'http://www.referanslab.com/Webservice/ReLabSonucOku.asmx?WSDL'
    Service = 'ReLabSonucOku'
    Port = 'ReLabSonucOkuSoap'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 334
    Top = 108
  end
  object OpenDialog1: TOpenDialog
    Left = 88
    Top = 160
  end
  object ErguvanHttp: THTTPRIO
    OnAfterExecute = ErguvanHttpAfterExecute
    WSDLLocation = 
      'http://212.253.85.61/LaboratuarSonuclariListele/TetkikSonuclari.' +
      'asmx?wsdl'
    Service = 'Service1'
    Port = 'Service1Soap'
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.WebNodeOptions = []
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soUTF8InHeader, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 854
    Top = 396
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = True
    Request.Password = 'NOKTA01'
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Username = 'NOKTA'
    HTTPOptions = [hoForceEncodeParams]
    Left = 104
    Top = 240
  end
  object memData: TSQLMemTable
    CurrentVersion = '10.10 '
    StoreDefs = True
    DatabaseName = 'MEMORY'
    ReadOnly = False
    Active = True
    CaseInsensitive = False
    FieldDefs = <
      item
        Name = 'dosyaNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'gelisNo'
        DataType = ftInteger
      end
      item
        Name = 'ornekNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CikisOrnekNo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SIRANO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TC'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'hasta'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OrnekNo_Plazma'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OrnekNo_Serum'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OrnekNo_TamKan'
        DataType = ftString
        Size = 20
      end>
    TableName = 'Table828602379_1400'
    Exclusive = False
    MemoryTableAllocBy = 1000
    Left = 288
    Top = 160
  end
end
