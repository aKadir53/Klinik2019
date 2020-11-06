object frmTopluGelis: TfrmTopluGelis
  Left = 148
  Top = 70
  BorderStyle = bsDialog
  Caption = 'frmTopluGelis'
  ClientHeight = 572
  ClientWidth = 1039
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 40
    Top = 384
    Width = 321
    Height = 113
    ActivePage = TabSheet1
    Style = tsFlatButtons
    TabOrder = 0
    Visible = False
    object TabSheet1: TTabSheet
      Caption = 'Hasta Listesi'
      object gridAktif: TAdvStringGrid
        Tag = 200
        Left = 0
        Top = 0
        Width = 313
        Height = 82
        Cursor = crDefault
        Hint = 'Aktif Hastalar'
        TabStop = False
        Align = alClient
        Color = clWhite
        ColCount = 21
        Ctl3D = False
        DefaultRowHeight = 21
        DrawingStyle = gdsClassic
        RowCount = 2
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goEditing]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        ScrollBars = ssHorizontal
        TabOrder = 0
        OnDblClick = gridAktifDblClick
        GridLineColor = 15855083
        GridFixedLineColor = 13745060
        HoverRowCells = [hcNormal, hcSelected]
        OnCanEditCell = gridAktifCanEditCell
        OnGetEditorType = gridAktifGetEditorType
        OnCheckBoxClick = gridAktifCheckBoxClick
        OnCheckBoxMouseUp = gridAktifCheckBoxMouseUp
        ActiveCellFont.Charset = TURKISH_CHARSET
        ActiveCellFont.Color = clRed
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 10344697
        ActiveCellColorTo = 6210033
        Bands.Active = True
        Bands.PrimaryColor = clWhite
        Bands.SecondaryColor = clBtnFace
        CellNode.ShowTree = False
        ColumnHeaders.Strings = (
          ''
          'Hasta No'
          'Geli'#351' No'
          'Hasta Ad'#305' Soyad'#305
          'Brans Kodu'
          'Tedavi T'#252'r'
          'P.Tarih'
          'TC.Kimlik No'
          'TakipNo'
          'Ba'#351'vuruNo'
          'Durum'
          'Dev.Kur.'
          'Rapor Biti'#351
          'Seans Ba'#351'.'
          'Seans Bit.'
          'Seans Gunler'
          'Doktor'
          'M.No'
          'Seans'
          'RaporTakipNo'
          'GelisSiraNo')
        ControlLook.FixedGradientFrom = 16513526
        ControlLook.FixedGradientTo = 15260626
        ControlLook.FixedGradientHoverFrom = 15000287
        ControlLook.FixedGradientHoverTo = 14406605
        ControlLook.FixedGradientHoverMirrorFrom = 14406605
        ControlLook.FixedGradientHoverMirrorTo = 13813180
        ControlLook.FixedGradientHoverBorder = 12033927
        ControlLook.FixedGradientDownFrom = 14991773
        ControlLook.FixedGradientDownTo = 14991773
        ControlLook.FixedGradientDownMirrorFrom = 14991773
        ControlLook.FixedGradientDownMirrorTo = 14991773
        ControlLook.FixedGradientDownBorder = 14991773
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
        Flat = True
        FloatFormat = '%.2f'
        Look = glOffice2007
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
        SearchFooter.Color = 16513526
        SearchFooter.ColorTo = clNone
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SelectionColor = 6210033
        SelectionRectangle = True
        SortSettings.Column = 0
        SortSettings.Full = False
        Version = '6.2.6.1'
        WordWrap = False
        ColWidths = (
          20
          47
          30
          94
          47
          24
          73
          74
          54
          49
          36
          46
          64
          65
          65
          133
          64
          29
          64
          64
          64)
        object txtSigortaliTur: TComboBox
          Left = 851
          Top = 213
          Width = 145
          Height = 21
          Hint = 'Sigortal'#305' T'#252'r'
          Color = clSkyBlue
          TabOrder = 2
          Visible = False
          Items.Strings = (
            ''
            '1- '#199'al'#305#351'an'
            '2- Emekli'
            '3- SSK Kurum Personeli'
            '4- Di'#287'er')
        end
        object txtDevredilenKurum: TComboBox
          Left = 851
          Top = 240
          Width = 145
          Height = 21
          Hint = 'Devredilen Kurum'
          Color = clSkyBlue
          TabOrder = 3
          Visible = False
          Items.Strings = (
            ''
            '1 - SSK'
            '2 - Ba'#287'kur'
            '3 - Emekli Sand'#305#287#305
            '4 - Ye'#351'il Kart'
            '5 - 18 Ya'#351' alt'#305' ve Sosyal G.Olmayan'
            
              '6 -  2022 say'#305'l'#305' 65 ya'#351#305'n'#305' doldurmu'#351' muhta'#231', g'#252#231's'#252'z ve kimsesiz ' +
              'T'#252'rk vatanda'#351'lar'#305'na ayl'#305'k ba'#287'lanmas'#305' hakk'#305'nda kanun h'#252'k'#252'mlerine ' +
              'g'#246're ayl'#305'k alan ki'#351'iler'
            
              '7 -  1005 say'#305'l'#305' '#304'stiklal Madalyas'#305' verilmi'#351' bulunanlara vatani ' +
              'hizmet tertibinden '#351'eref ayl'#305#287#305' ba'#287'lanmas'#305' hakk'#305'nda kanun h'#252'k'#252'ml' +
              'erine g'#246're '#351'eref ayl'#305#287#305' alan ki'#351'iler'
            
              '10 -  2828 say'#305'l'#305' Sosyal Hizmetler ve '#199'ocuk Esirgeme Kurumu kanu' +
              'nu h'#252'k'#252'mlerine g'#246're korunma, bak'#305'm ve rehabilitasyon hizmetlerin' +
              'den '#252'cretsiz faydalanan ki'#351'iler'
            
              '14 - M'#252'tekabiliyet esas'#305' da dikkate al'#305'nmak '#351'art'#305'yla, oturma izn' +
              'i alm'#305#351' yabanc'#305' '#252'lke vatanda'#351'lar'#305'ndan yabanc'#305' bir '#252'lke mevzuat'#305' ' +
              'kapsam'#305'nda sigortal'#305' olmayan ki'#351'iler,'
            
              '15 - 25/8/1999 tarihli ve 4447 say'#305'l'#305' Kanun gere'#287'ince i'#351'sizlik '#246 +
              'dene'#287'i ve ilgili kanunlar'#305' gere'#287'ince k'#305'sa '#231'al'#305#351'ma'
            #246'dene'#287'inden yararland'#305'r'#305'lan ki'#351'iler,'
            
              '17 - Yukar'#305'daki bentlerin d'#305#351#305'nda kalan ve ba'#351'ka bir '#252'lkede sa'#287'l' +
              #305'k sigortas'#305'ndan yararlanma hakk'#305' bulunmayan'
            'vatanda'#351'lar, iste'#287'e tabi sigortal'#305'lar'
            '18 - 18 ya'#351' alt'#305' sosyal g'#252'venlik kapsam'#305'nda olmayan ki'#351'iler'
            '8 - '#214'ZEL'
            '99 - YurtD'#305#351#305' Sigortal'#305'lar')
        end
        object pnlGunler: TPanel
          Left = 376
          Top = 88
          Width = 219
          Height = 81
          Caption = 'pnlGunler'
          TabOrder = 4
          Visible = False
          object GroupBox5: TGroupBox
            Tag = 106
            Left = 3
            Top = 42
            Width = 214
            Height = 156
            Caption = '  Seans Bilgileri  '
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label37: TLabel
              Left = 8
              Top = 24
              Width = 72
              Height = 13
              Caption = 'Seans S'#252'resi'
            end
            object Label47: TLabel
              Left = 9
              Top = 45
              Width = 58
              Height = 13
              Caption = 'Makina No'
            end
            object txtPazartesi: TsCheckBox
              Tag = 106
              Left = 4
              Top = 65
              Width = 73
              Height = 20
              Caption = 'Pazartesi'
              TabOrder = 0
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object txtSali: TsCheckBox
              Left = 4
              Top = 84
              Width = 40
              Height = 20
              Caption = 'Sal'#305
              TabOrder = 1
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object txtCarsamba: TsCheckBox
              Left = 4
              Top = 102
              Width = 77
              Height = 20
              Caption = #199'ar'#351'amba'
              TabOrder = 2
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object txtPersembe: TsCheckBox
              Left = 4
              Top = 121
              Width = 77
              Height = 20
              Caption = 'Per'#351'embe'
              TabOrder = 3
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object txtCuma: TsCheckBox
              Left = 92
              Top = 66
              Width = 52
              Height = 20
              Caption = 'Cuma'
              TabOrder = 4
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object txtCumartesi: TsCheckBox
              Left = 92
              Top = 85
              Width = 78
              Height = 20
              Caption = 'Cumartesi'
              TabOrder = 5
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object txtPazar: TsCheckBox
              Left = 93
              Top = 104
              Width = 52
              Height = 20
              Caption = 'Pazar'
              TabOrder = 6
              SkinData.SkinSection = 'CHECKBOX'
              ImgChecked = 0
              ImgUnchecked = 0
            end
            object txtMakinaNo: TEditTyped
              Tag = 1
              Left = 87
              Top = 38
              Width = 26
              Height = 21
              Hint = #304'l'#231'e'
              Alignment = taLeftJustify
              TypeValue = teString
              EnabledLimit = False
              EnabledTypedLimit = True
              Flat = True
              ButtonStyle = bsNone
              ButtonWidth = 0
              NumGlyphs = 1
              ButtonKey = 32808
              ButtonFlat = False
              BorderStyle = bsNone
              Color = clWhite
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
            end
            object txtSure: TEditTyped
              Tag = 1
              Left = 87
              Top = 15
              Width = 26
              Height = 21
              Hint = #304'l'#231'e'
              Alignment = taLeftJustify
              TypeValue = teString
              EnabledLimit = False
              EnabledTypedLimit = True
              Flat = True
              ButtonStyle = bsNone
              ButtonWidth = 0
              NumGlyphs = 1
              ButtonKey = 32808
              ButtonFlat = False
              BorderStyle = bsNone
              Color = clWhite
              Ctl3D = False
              ParentCtl3D = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              Text = '4'
            end
            object txtSeans: TsComboBox
              Left = 116
              Top = 15
              Width = 83
              Height = 21
              Hint = 'Seans'
              Alignment = taLeftJustify
              BoundLabel.Indent = 0
              BoundLabel.Font.Charset = DEFAULT_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -11
              BoundLabel.Font.Name = 'MS Sans Serif'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeft
              BoundLabel.MaxWidth = 0
              BoundLabel.UseSkinColor = True
              SkinData.SkinSection = 'COMBOBOX'
              Color = clWhite
              Font.Charset = TURKISH_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ItemIndex = 1
              ParentFont = False
              TabOrder = 9
              Text = '1.Seans'
              Items.Strings = (
                ''
                '1.Seans'
                '2.Seans'
                '3.Seans'
                '4.Seans')
            end
          end
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 217
            Height = 41
            Align = alTop
            BevelInner = bvRaised
            Caption = 'Seans Bilgileri'
            TabOrder = 1
          end
          object Panel3: TPanel
            Left = 1
            Top = 46
            Width = 217
            Height = 34
            Align = alBottom
            TabOrder = 2
            object sBitBtn5: TsBitBtn
              Left = 132
              Top = 3
              Width = 83
              Height = 27
              Hint = 'Vazge'#231
              Caption = 'Vazge'#231
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = sBitBtn5Click
              SkinData.SkinSection = 'BUTTON'
              ImageIndex = 12
              Images = DATALAR.global_img_list4
            end
            object sBitBtn6: TsBitBtn
              Left = 47
              Top = 3
              Width = 83
              Height = 27
              Hint = 'Tamam'
              Caption = 'Tamam'
              Font.Charset = TURKISH_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = sBitBtn6Click
              SkinData.SkinSection = 'BUTTON'
              ImageIndex = 11
              Images = DATALAR.global_img_list4
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #304#351'lem Raporu'
      ImageIndex = 1
      object txtHatalar: TMemo
        Left = 0
        Top = 0
        Width = 313
        Height = 82
        Align = alClient
        Lines.Strings = (
          'txtHatalar')
        TabOrder = 0
      end
    end
  end
  object Sayfa: TcxPageControl
    Left = 0
    Top = 0
    Width = 1039
    Height = 572
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = SayfaListe
    ClientRectBottom = 565
    ClientRectLeft = 3
    ClientRectRight = 1032
    ClientRectTop = 26
    object SayfaListe: TcxTabSheet
      Caption = 'Hasta Listesi'
      ImageIndex = 0
      object cxGrid2: TcxGridKadir
        Left = 0
        Top = 47
        Width = 1029
        Height = 492
        Align = alClient
        Font.Charset = TURKISH_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        LevelTabs.ImageBorder = 2
        LevelTabs.Style = 1
        ExcelFileName = 'TopluGelis_AktifListe'
        ExceleGonder = True
        PopupForm = False
        object Liste: TcxGridDBTableView
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
          OnFocusedRecordChanged = ListeFocusedRecordChanged
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.Active = True
          DataController.Filter.TranslateBetween = True
          DataController.Filter.TranslateLike = True
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Listelen Kay'#305't :#0'
              Kind = skCount
              FieldName = 'HASTAADI'
              Column = ListeADSOYAD
            end>
          DataController.Summary.SummaryGroups = <>
          Filtering.MRUItemsList = False
          Filtering.ColumnMRUItemsList = False
          FilterRow.InfoText = 'Arama Sat'#305'r'#305
          FilterRow.SeparatorWidth = 2
          FilterRow.Visible = True
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
          OptionsSelection.MultiSelect = True
          OptionsView.NavigatorOffset = 20
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 35
          OptionsView.RowSeparatorColor = clBlack
          Styles.OnGetContentStyle = ListeStylesGetContentStyle
          object ListeADSOYAD: TcxGridDBColumn
            Caption = 'Ad'#305' Soyad'#305
            DataBinding.FieldName = 'ADSOYAD'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 143
          end
          object ListeTCKIMLIKNO: TcxGridDBColumn
            Caption = 'TcKimlikNo'
            DataBinding.FieldName = 'TCKIMLIKNO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 78
          end
          object ListedosyaNo: TcxGridDBColumn
            Caption = 'Dosya No'
            DataBinding.FieldName = 'dosyaNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 49
          end
          object ListesonGelisno: TcxGridDBColumn
            Caption = 'Son Gelisno'
            DataBinding.FieldName = 'sonGelisno'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
          end
          object ListeGno: TcxGridDBColumn
            Caption = 'Gelis No'
            DataBinding.FieldName = 'Gno'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
          end
          object ListeSeans: TcxGridDBColumn
            DataBinding.FieldName = 'Seans'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 36
          end
          object ListeprovizyonTarihi: TcxGridDBColumn
            Caption = 'Provizyon Tarihi'
            DataBinding.FieldName = 'provizyonTarihi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 76
          end
          object ListeColumn4: TcxGridDBColumn
            Caption = 'Kan Alim Tarihi'
            DataBinding.FieldName = 'KanAlimTarihi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 76
          end
          object ListeSIGORTANO: TcxGridDBColumn
            DataBinding.FieldName = 'TakipNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object ListeBABAADI: TcxGridDBColumn
            DataBinding.FieldName = 'BABAADI'
            Visible = False
          end
          object ListeKarneNo: TcxGridDBColumn
            DataBinding.FieldName = 'BasvuruNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object ListeColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Yas'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 30
          end
          object ListeCINS: TcxGridDBColumn
            Caption = 'Cins'
            DataBinding.FieldName = 'CINS'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DATALAR.imag24png
            Properties.Items = <
              item
                ImageIndex = 44
                Value = 'ERKEK'
              end
              item
                ImageIndex = 38
                Value = 'KADIN'
              end>
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 37
          end
          object ListeKurum: TcxGridDBColumn
            Caption = 'Kurum'
            DataBinding.FieldName = 'ADI1'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 55
          end
          object ListeColumn2: TcxGridDBColumn
            Caption = 'Kurum Tipi'
            DataBinding.FieldName = 'kurumTipAdi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 60
          end
          object ListeDurumS: TcxGridDBColumn
            Caption = 'Durum'
            DataBinding.FieldName = 'DurumS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 62
          end
          object ListeColumn5: TcxGridDBColumn
            Caption = 'HSS'
            DataBinding.FieldName = 'haftalikSeansSayisi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 36
          end
          object ListeGunler: TcxGridDBColumn
            DataBinding.FieldName = 'Gunler'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 183
          end
          object Listedtar: TcxGridDBColumn
            DataBinding.FieldName = 'dtar'
            Visible = False
          end
          object Listedrapor: TcxGridDBColumn
            DataBinding.FieldName = 'drapor'
            Visible = False
          end
          object Listedrapgec: TcxGridDBColumn
            DataBinding.FieldName = 'drapgec'
            Visible = False
          end
          object ListeKurumTip: TcxGridDBColumn
            DataBinding.FieldName = 'KurumTip'
            Visible = False
          end
          object ListeDurum: TcxGridDBColumn
            DataBinding.FieldName = 'Durum'
            Visible = False
          end
          object ListeKANG: TcxGridDBColumn
            DataBinding.FieldName = 'KANG'
            Visible = False
          end
          object ListeSeansGunleri: TcxGridDBColumn
            DataBinding.FieldName = 'SeansGunleri'
            Visible = False
          end
          object ListeYAKINLIK: TcxGridDBColumn
            DataBinding.FieldName = 'YAKINLIK'
            Visible = False
          end
          object Listeyaz3: TcxGridDBColumn
            DataBinding.FieldName = 'yaz3'
            Visible = False
          end
          object ListeBRANS: TcxGridDBColumn
            Caption = 'Bran'#351
            DataBinding.FieldName = 'BRANS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 33
          end
          object ListeornekNo: TcxGridDBColumn
            DataBinding.FieldName = 'ornekNo'
            Visible = False
          end
          object ListeCikisOrnekNO: TcxGridDBColumn
            DataBinding.FieldName = 'CikisOrnekNO'
            Visible = False
          end
          object Listedoktor: TcxGridDBColumn
            Caption = 'Doktor'
            DataBinding.FieldName = 'doktor'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 48
          end
          object ListemakinaNo: TcxGridDBColumn
            DataBinding.FieldName = 'makinaNo'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object ListeSeans_1: TcxGridDBColumn
            DataBinding.FieldName = 'Seans_1'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 25
          end
          object ListebitisTarihi: TcxGridDBColumn
            DataBinding.FieldName = 'bitisTarihi'
            Visible = False
          end
          object ListeseansSayi: TcxGridDBColumn
            DataBinding.FieldName = 'seansSayi'
            Visible = False
          end
          object ListeraporTakipNo: TcxGridDBColumn
            Caption = 'RaporTakipNo'
            DataBinding.FieldName = 'raporTakipNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object ListeColumn3: TcxGridDBColumn
            Caption = 'SutKodu'
            DataBinding.FieldName = 'butKodu'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object ListeEV_ADRES: TcxGridDBColumn
            Caption = 'Adres'
            DataBinding.FieldName = 'EV_ADRES'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 262
          end
          object ListeEV_TEL1: TcxGridDBColumn
            Caption = 'Telefon'
            DataBinding.FieldName = 'EV_TEL1'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 86
          end
          object ListeSIRANO: TcxGridDBColumn
            DataBinding.FieldName = 'SIRANO'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object Listesira: TcxGridDBColumn
            DataBinding.FieldName = 'sira'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
        end
        object cxGridLevel1: TcxGridLevel
          Caption = 'Hastalar'
          GridView = Liste
          Options.DetailFrameColor = clBlack
          Options.DetailFrameWidth = 0
        end
      end
      object pnlToolBar: TPanel
        Left = 0
        Top = 0
        Width = 1029
        Height = 47
        Align = alTop
        Color = clBackground
        Font.Charset = TURKISH_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object txtProvizyonTarihi: TcxDateEdit
          Left = 347
          Top = 24
          Properties.DateOnError = deToday
          Properties.OnChange = txtProvizyonTarihiPropertiesChange
          TabOrder = 0
          Width = 101
        end
        object txtSeansNo: TcxComboBox
          Left = 454
          Top = 24
          Properties.Alignment.Horz = taCenter
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            '1'
            '2'
            '3')
          TabOrder = 1
          Text = '1'
          Width = 76
        end
        object TakipSor: TcxRadioGroup
          Left = 1
          Top = 1
          Align = alLeft
          Caption = 'Geli'#351' A'#231#305'l'#305'rken Takipler Al'#305'ns'#305'n m'#305'?'
          Enabled = False
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Evet'
            end
            item
              Caption = 'Hay'#305'r'
            end>
          ItemIndex = 1
          TabOrder = 2
          Height = 45
          Width = 216
        end
        object hastaTip: TcxComboBox
          Left = 222
          Top = 24
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'H - Hemodiyaliz'
            'P - Periton'
            'A - Periton A.')
          TabOrder = 3
          Text = 'H - Hemodiyaliz'
          Width = 121
        end
        object cxLabel1: TcxLabel
          Left = 223
          Top = 8
          Caption = 'Hasta Tipi'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 347
          Top = 8
          Caption = 'ProvizyonTarihi'
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 454
          Top = 8
          Caption = 'K.Al'#305'm Seans'
          Transparent = True
        end
        object txtDoktor: TcxImageComboKadir
          Left = 535
          Top = 23
          Properties.ClearKey = 46
          Properties.Items = <>
          TabOrder = 7
          TableName = 'DoktorlarT'
          Filter = ' Aktif = 1'
          Conn = DATALAR.ADOConnection2
          ValueField = 'kod'
          DisplayField = 'tanimi'
          BosOlamaz = False
          FilterSet = fsDoktorlar
          Width = 192
        end
        object cxLabel4: TcxLabel
          Left = 536
          Top = 8
          Caption = 'Doktor'
          Transparent = True
        end
      end
    end
    object SayfaLog: TcxTabSheet
      Caption = 'Log'
      ImageIndex = 1
      object txtLog: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'txtLog')
        Properties.ScrollBars = ssBoth
        TabOrder = 0
        Height = 539
        Width = 1029
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 284
    Top = 182
    object P1: TMenuItem
      Tag = -50
      Caption = 'Pasif Yap'
      ImageIndex = 84
      OnClick = cxButtonCClick
    end
    object H1: TMenuItem
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = H1Click
    end
    object K1: TMenuItem
      Tag = -10
      Caption = 'Kan Alim Tarihini Set Et'
      ImageIndex = 117
      OnClick = cxButtonCClick
    end
    object L1: TMenuItem
      Tag = -4
      Caption = 'Laboratuvar Tetkiklerini Ekle (Grup)'
      ImageIndex = 99
      OnClick = cxButtonCClick
    end
    object LaboratuvarTetkikleriniEkle1: TMenuItem
      Tag = 4
      Caption = 'Laboratuvar Tetkik Ekle'
      ImageIndex = 47
      OnClick = cxButtonCClick
    end
    object T1: TMenuItem
      Tag = -5
      Caption = 'Takip Al'
      ImageIndex = 76
      OnClick = cxButtonCClick
    end
    object S1: TMenuItem
      Tag = -6
      Caption = 'Seans Olu'#351'tur'
      ImageIndex = 81
      OnClick = cxButtonCClick
    end
    object G1: TMenuItem
      Tag = -7
      Caption = 'Geli'#351' A'#231
      ImageIndex = 108
      OnClick = cxButtonCClick
    end
    object A1: TMenuItem
      Tag = -8
      Caption = 'Aktif Hasta Listesi (Yeni Geli'#351')'
      ImageIndex = 12
      OnClick = cxButtonCClick
    end
    object GeliTarihineGreHastaListesi1: TMenuItem
      Tag = -9
      Caption = 'Geli'#351' Tarihine G'#246're Hasta Listesi (Mevcut Geli'#351')'
      ImageIndex = 101
      OnClick = cxButtonCClick
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excel Aktar'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 72
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 10329599
    end
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
    Left = 216
    Top = 237
  end
end
