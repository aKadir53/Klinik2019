object frmTahliltakip: TfrmTahliltakip
  Left = 1
  Top = 1
  Caption = 'Tetkikler'
  ClientHeight = 675
  ClientWidth = 1284
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1284
    Height = 675
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.TabPosition = tpBottom
    ClientRectBottom = 645
    ClientRectLeft = 3
    ClientRectRight = 1277
    ClientRectTop = 3
    object cxTabSheet1: TcxTabSheet
      Caption = 'Kay'#305'tlar'
      ImageIndex = 0
      object PnltetkikDegerlendir: TcxGroupBox
        Left = 1000
        Top = 33
        Align = alClient
        Caption = 'Tetkik Sonu'#231' De'#287'erlendir'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 609
        Width = 274
        object cxPageControlTetkikDegerlendir: TcxPageControl
          Left = 3
          Top = 15
          Width = 268
          Height = 584
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = TetkikDegerlendirSayfa1
          Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGoDialog, pcoGradientClientArea]
          ClientRectBottom = 577
          ClientRectLeft = 3
          ClientRectRight = 261
          ClientRectTop = 26
          object TetkikDegerlendirSayfa1: TcxTabSheet
            Caption = 'Tetkik De'#287'erlendir'
            ImageIndex = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 25
              Width = 258
              Height = 526
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
              LookAndFeel.Kind = lfOffice11
              object gridTetkikDegerlendir: TcxGridDBTableView
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
                  Options.Editing = False
                  Styles.Content = cxStyle2
                  Width = 205
                end
                object gridTetkikDegerlendirColumn1: TcxGridDBColumn
                  DataBinding.FieldName = 'Onay'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 1
                  Properties.ValueUnchecked = '0'
                  Width = 30
                end
              end
              object cxGridLevel2: TcxGridLevel
                Caption = 'Hastalar'
                GridView = gridTetkikDegerlendir
                Options.DetailFrameColor = clBlack
                Options.DetailFrameWidth = 0
              end
            end
            object btnTetkikDegerlendir: TcxButton
              Left = 0
              Top = 0
              Width = 258
              Height = 25
              Align = alTop
              Caption = 'Tetkik Sonu'#231'lar'#305'n'#305' De'#287'erlendir'
              TabOrder = 1
              OnClick = btnTetkikDegerlendirClick
            end
          end
          object TetkikDegerlendirSayfa2: TcxTabSheet
            Caption = 'Tetkik De'#287'. Ayar'
            ImageIndex = 1
            object cxGrid13: TcxGrid
              Left = 0
              Top = 0
              Width = 258
              Height = 551
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
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'UserSkin'
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
                  Options.Editing = False
                  Width = 253
                end
                object cxGridDBColumn23: TcxGridDBColumn
                  DataBinding.FieldName = 'uyar'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 1
                  Properties.ValueUnchecked = '0'
                  Width = 30
                end
                object gridUyarColumn1: TcxGridDBColumn
                  Caption = 'Kriter'
                  DataBinding.FieldName = 'kriter'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.ReadOnly = True
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
      object pnlTitle: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'pnlTitle'
        PanelStyle.Active = True
        TabOrder = 2
        Height = 33
        Width = 1274
        object tarih2: TcxDateEditKadir
          Left = 198
          Top = 2
          Align = alLeft
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          BosOlamaz = False
          ValueTip = tvString
          Width = 121
        end
        object tarih1: TcxDateEditKadir
          Left = 77
          Top = 2
          Align = alLeft
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.TextColor = clBlack
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 1
          BosOlamaz = False
          ValueTip = tvString
          Width = 121
        end
        object DiyalizTip: TcxRadioGroup
          Left = 319
          Top = 2
          Align = alLeft
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
          ItemIndex = 0
          Style.Font.Charset = TURKISH_CHARSET
          Style.Font.Color = clBlue
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 2
          Height = 29
          Width = 281
        end
        object chkMisafir: TcxCheckBox
          Left = 920
          Top = 2
          Align = alLeft
          Caption = 'Misafir Hastalar'#305' Listemele'
          Style.TransparentBorder = True
          TabOrder = 3
          Transparent = True
          Width = 144
        end
        object btnList: TcxButton
          Left = 2
          Top = 2
          Width = 75
          Height = 29
          Align = alLeft
          Caption = 'Listele'
          TabOrder = 4
          OnClick = btnListClick
        end
        object chkBand: TcxCheckGroup
          Left = 600
          Top = 2
          Align = alLeft
          Alignment = alCenterCenter
          EditValue = '1111'
          Properties.Columns = 4
          Properties.EditValueFormat = cvfStatesString
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Caption = 'Biyokimya'
              Tag = 2
            end
            item
              Caption = 'Hemogram'
              Tag = 3
            end
            item
              Caption = 'Marker'
              Tag = 3
            end
            item
              Caption = 'Rad'
              Tag = 4
            end>
          Style.BorderStyle = ebsOffice11
          TabOrder = 5
          Height = 29
          Width = 320
        end
        object chkDegerlendirme: TcxCheckBox
          Left = 1064
          Top = 2
          Align = alLeft
          Caption = 'De'#287'erlendirme Sonucu Olanlar'
          Style.TransparentBorder = True
          TabOrder = 6
          Transparent = True
          Width = 193
        end
      end
      object cxGridKadir1: TcxGridKadir
        Left = 0
        Top = 33
        Width = 992
        Height = 609
        Align = alLeft
        TabOrder = 0
        ExcelFileName = 'TahlilSonuclar'#305
        ExceleGonder = True
        PopupForm = False
        object Liste: TcxGridDBBandedTableView
          PopupMenu = PopupMenu1
          OnDblClick = ListeDblClick
          OnMouseDown = ListeMouseDown
          DataController.DataSource = DataSource1
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '###'
              Kind = skCount
              Column = Listetc
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Listelenen : ###'
              Kind = skCount
              Column = Listetc
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
          OptionsView.Footer = True
          OptionsView.HeaderHeight = 33
          Styles.OnGetContentStyle = ListeStylesGetContentStyle
          OnCustomization = ListeCustomization
          Bands = <
            item
              Caption = 'Kimlik Bilgileri'
              FixedKind = fkLeft
              Styles.Content = cxStyle8
              Styles.Header = cxStyle3
              Width = 477
            end
            item
              Caption = 'Potasyum'
              Options.Sizing = False
              Position.BandIndex = 2
              Position.ColIndex = 2
              Styles.Header = cxStyle1
              Width = 70
            end
            item
              Caption = 'Biyokimya'
              Styles.Header = cxStyle3
            end
            item
              Caption = 'Hemogram'
              Styles.Background = cxStyle9
              Styles.Header = cxStyle9
            end
            item
              Caption = 'Marker'
              Styles.Header = cxStyle3
            end
            item
              Caption = 'Radyoloji'
              Styles.Content = cxStyle6
            end
            item
              Caption = 'Medula Bilgileri'
            end
            item
              Position.BandIndex = 2
              Position.ColIndex = 3
              Width = 1270
            end
            item
              Caption = #220're'
              Options.Sizing = False
              Position.BandIndex = 2
              Position.ColIndex = 0
              Styles.Header = cxStyle1
              Width = 70
            end
            item
              Caption = 'Kreatinin'
              Options.Sizing = False
              Position.BandIndex = 2
              Position.ColIndex = 1
              Styles.Header = cxStyle1
              Width = 70
            end>
          object Listetc: TcxGridDBBandedColumn
            Caption = 'T.C. Kimlik No'
            DataBinding.FieldName = 'tc'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ListedosyaNo: TcxGridDBBandedColumn
            Caption = 'DosyaNo'
            DataBinding.FieldName = 'dosyaNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 41
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object Listeg: TcxGridDBBandedColumn
            DataBinding.FieldName = 'g'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object Listeh: TcxGridDBBandedColumn
            Caption = 'Hasta Ad'#305
            DataBinding.FieldName = 'h'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 130
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object Listeia: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ia'
            Visible = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object ListekabulNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'kabulNo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object Listektv: TcxGridDBBandedColumn
            Caption = 'Kt/V'
            DataBinding.FieldName = 'ktv'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 7
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListetakpNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'tak'#305'pNo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object ListebasvuruNo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'basvuruNo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object Listetarih: TcxGridDBBandedColumn
            Caption = 'Numune Tarih'
            DataBinding.FieldName = 'tarih'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 63
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object Listets: TcxGridDBBandedColumn
            Caption = 'TS%'
            DataBinding.FieldName = 'ts'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 43
            Position.BandIndex = 7
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object Listeurr: TcxGridDBBandedColumn
            Caption = 'URR'
            DataBinding.FieldName = 'urr'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 7
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeduzCa: TcxGridDBBandedColumn
            DataBinding.FieldName = 'duzCa'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 41
            Position.BandIndex = 7
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object ListeCaxp: TcxGridDBBandedColumn
            Caption = 'Ca X P'
            DataBinding.FieldName = 'Caxp'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 38
            Position.BandIndex = 7
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object ListeCinsiyet: TcxGridDBBandedColumn
            Caption = 'Cins'
            DataBinding.FieldName = 'Cinsiyet'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 43
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object ListeYas: TcxGridDBBandedColumn
            Caption = 'Ya'#351
            DataBinding.FieldName = 'yas'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 25
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn530100: TcxGridDBBandedColumn
            Caption = 'EKG'
            DataBinding.FieldName = '530100'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn705140: TcxGridDBBandedColumn
            Caption = 'Kan Grubu'
            DataBinding.FieldName = '705140'
            Visible = False
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 76
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn801840: TcxGridDBBandedColumn
            Caption = 'Tele Kar.'
            DataBinding.FieldName = '801840'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn900200: TcxGridDBBandedColumn
            Caption = 'ALT'
            DataBinding.FieldName = '900200'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 33
            Position.BandIndex = 7
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn900210: TcxGridDBBandedColumn
            Caption = 'Albumin'
            DataBinding.FieldName = '900210'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 46
            Position.BandIndex = 7
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object TcxGridDBBandedColumn
            Caption = 'ALP'
            DataBinding.FieldName = '900340'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 39
            Position.BandIndex = 7
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn900681: TcxGridDBBandedColumn
            Caption = 'Bikarbonat'
            DataBinding.FieldName = '900681'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 56
            Position.BandIndex = 7
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn900900: TcxGridDBBandedColumn
            Caption = 'CRP'
            DataBinding.FieldName = '900900'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 37
            Position.BandIndex = 7
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901020: TcxGridDBBandedColumn
            Caption = 'S.Demiri'
            DataBinding.FieldName = '901020'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 7
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901040: TcxGridDBBandedColumn
            Caption = 'SDBK'
            DataBinding.FieldName = '901040'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 42
            Position.BandIndex = 7
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901220: TcxGridDBBandedColumn
            Caption = 'Ferritin'
            DataBinding.FieldName = '901220'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 7
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901910: TcxGridDBBandedColumn
            Caption = 'Ca'
            DataBinding.FieldName = '901910'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 34
            Position.BandIndex = 7
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901940: TcxGridDBBandedColumn
            Tag = 901940
            Caption = 'Giri'#351
            DataBinding.FieldName = '901940'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 8
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn902110: TcxGridDBBandedColumn
            Caption = 'Total Kolesterol'
            DataBinding.FieldName = '902110'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 52
            Position.BandIndex = 7
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn902210: TcxGridDBBandedColumn
            Tag = 902210
            Caption = 'Giri'#351
            DataBinding.FieldName = '902210'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 9
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn902290: TcxGridDBBandedColumn
            Caption = 'LDL Kolesterol'
            DataBinding.FieldName = '902290'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 53
            Position.BandIndex = 7
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn902980: TcxGridDBBandedColumn
            Caption = 'PTH'
            DataBinding.FieldName = '902980'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 39
            Position.BandIndex = 7
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn903130: TcxGridDBBandedColumn
            Caption = 'Giri'#351
            DataBinding.FieldName = '903130'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn903240: TcxGridDBBandedColumn
            Caption = 'T.Protein'
            DataBinding.FieldName = '903240'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 7
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn903670: TcxGridDBBandedColumn
            Caption = 'Na'
            DataBinding.FieldName = '903670'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 32
            Position.BandIndex = 7
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn903990: TcxGridDBBandedColumn
            Caption = 'Trigliserit'
            DataBinding.FieldName = '903990'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 7
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn904120: TcxGridDBBandedColumn
            Caption = #220'rik Asit'
            DataBinding.FieldName = '904120'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 7
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn906610: TcxGridDBBandedColumn
            Caption = 'Anti HBs'
            DataBinding.FieldName = '906610'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn906630: TcxGridDBBandedColumn
            Caption = 'Anti HCV'
            DataBinding.FieldName = '906630'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn906660: TcxGridDBBandedColumn
            Caption = 'Anti HIV'
            DataBinding.FieldName = '906660'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn907440: TcxGridDBBandedColumn
            Caption = 'HBsAg'
            DataBinding.FieldName = '907440'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901260: TcxGridDBBandedColumn
            Caption = 'P'
            DataBinding.FieldName = '901260'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 31
            Position.BandIndex = 7
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901500: TcxGridDBBandedColumn
            Caption = 'Glukoz'
            DataBinding.FieldName = '901500'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 39
            Position.BandIndex = 7
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901460: TcxGridDBBandedColumn
            Caption = 'HbA1c'
            DataBinding.FieldName = '901460'
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016201: TcxGridDBBandedColumn
            DataBinding.FieldName = '901620.1'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
            IsCaptionAssigned = True
          end
          object ListeDBBandedColumn9016202: TcxGridDBBandedColumn
            Caption = 'RBC'
            DataBinding.FieldName = '901620.2'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016203: TcxGridDBBandedColumn
            Caption = 'HGB'
            DataBinding.FieldName = '901620.3'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Styles.Header = cxStyle10
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016204: TcxGridDBBandedColumn
            Caption = 'HCT'
            DataBinding.FieldName = '901620.4'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016205: TcxGridDBBandedColumn
            Caption = 'PLT'
            DataBinding.FieldName = '901620.5'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016206: TcxGridDBBandedColumn
            Caption = 'MPV'
            DataBinding.FieldName = '901620.6'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016207: TcxGridDBBandedColumn
            Caption = 'MCV'
            DataBinding.FieldName = '901620.7'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn9016208: TcxGridDBBandedColumn
            Caption = 'MCH'
            DataBinding.FieldName = '901620.8'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn901940C: TcxGridDBBandedColumn
            Tag = 901940
            Caption = #199#305'k'#305#351
            DataBinding.FieldName = '901940C'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 50
            Position.BandIndex = 8
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn902210C: TcxGridDBBandedColumn
            Caption = #199#305'k'#305#351
            DataBinding.FieldName = '902210C'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 48
            Position.BandIndex = 9
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeDBBandedColumn903130C: TcxGridDBBandedColumn
            Caption = #199#305'k'#305#351
            DataBinding.FieldName = '903130C'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 40
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeColumn1: TcxGridDBBandedColumn
            Caption = 'Takip No'
            DataBinding.FieldName = 'tak'#305'pNo'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ListeColumn2: TcxGridDBBandedColumn
            Caption = 'Ba'#351'vuru No'
            DataBinding.FieldName = 'basvuruNo'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ListeColumn3: TcxGridDBBandedColumn
            Caption = 'HDL Kolesterol'
            DataBinding.FieldName = '901580'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 52
            Position.BandIndex = 7
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object ListeColumn4: TcxGridDBBandedColumn
            Caption = 'LYM'
            DataBinding.FieldName = '901620.9'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Styles.Header = cxStyle10
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object ListeColumn5: TcxGridDBBandedColumn
            Caption = 'LYM%'
            DataBinding.FieldName = '901620.10'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.DisplayFormat = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Styles.Header = cxStyle10
            Width = 35
            Position.BandIndex = 3
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object ListeColumn6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UzmanOnay'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <>
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object N901940: TcxGridDBBandedColumn
            DataBinding.FieldName = 'N901940'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object N901940C: TcxGridDBBandedColumn
            DataBinding.FieldName = 'N901940C'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object N902210: TcxGridDBBandedColumn
            DataBinding.FieldName = 'N902210'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object N902210C: TcxGridDBBandedColumn
            DataBinding.FieldName = 'N902210C'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object N903130: TcxGridDBBandedColumn
            DataBinding.FieldName = 'N903130'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object N903130C: TcxGridDBBandedColumn
            DataBinding.FieldName = 'N903130C'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object N9016203: TcxGridDBBandedColumn
            DataBinding.FieldName = 'N9016203'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object N900210: TcxGridDBBandedColumn
            DataBinding.FieldName = 'N900210'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object ListeColumn7: TcxGridDBBandedColumn
            Caption = 'Ay'
            DataBinding.FieldName = 'ay'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object ListeilkDiyalizTarihi: TcxGridDBBandedColumn
            Caption = #304'lk Diyaliz Tarihi'
            DataBinding.FieldName = 'ilkDiyalizTarihi'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object Durum: TcxGridDBBandedColumn
            DataBinding.FieldName = 'durum'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
        end
        object cxGridKadir1Level1: TcxGridLevel
          GridView = Liste
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 992
        Top = 33
        Width = 8
        Height = 609
        Control = cxGridKadir1
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'LOG'
      ImageIndex = 1
      object txtHatalar: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
        Height = 642
        Width = 1274
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_TetkiklerHastaList
    Left = 136
    Top = 258
  end
  object ADO_TetkiklerHastaList: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = ADO_TetkiklerHastaListAfterScroll
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      
        'exec sp_hastaTahlilSonuclari '#39'20150301'#39','#39'20150330'#39',@tip = '#39'0'#39',@a' +
        'pm = '#39'0,1,2'#39)
    Left = 136
    Top = 304
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 200
    Top = 376
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15132390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
    object cxStyle7: TcxStyle
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 112
    Top = 384
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object mavi: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clBlue
    end
    object kirmizi: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object RowKirmizi: TcxStyle
      AssignedValues = [svColor]
      Color = 12496890
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 280
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 432
    Top = 160
    object T1: TMenuItem
      Tag = -9
      Caption = 'Hasta Kart'#305
      Visible = False
      OnClick = T1Click
    end
    object T6: TMenuItem
      Tag = -8
      Caption = 'Tetkik Kart'#305
      Visible = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object T2: TMenuItem
      Caption = 'Medulaya Kaydet'
      Visible = False
      OnClick = T2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object T7: TMenuItem
      Caption = 'Tetkik Takip'
      ImageIndex = 46
      object T4: TMenuItem
        Tag = 10
        Caption = 'Tetkik Takip Formu Hepatit'
        OnClick = T3Click
      end
      object T3: TMenuItem
        Tag = 9
        Caption = 'Tetkik Takip Formu'
        OnClick = T3Click
      end
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object L1: TMenuItem
      Tag = -7
      Caption = 'Lab '#214'rnekNo Giri'#351
      Visible = False
      OnClick = L1Click
    end
    object K1: TMenuItem
      Tag = -6
      Caption = 'Kilo Order Formu'
      ImageIndex = 105
      Visible = False
      OnClick = K1Click
    end
    object K2: TMenuItem
      Tag = -5
      Caption = 'Ktv Hesaplama Listesi'
      ImageIndex = 107
      OnClick = K2Click
    end
    object S1: TMenuItem
      Tag = -4
      Caption = 'Sonu'#231' Yaz'
      ImageIndex = 28
      OnClick = S1Click
    end
    object S2: TMenuItem
      Tag = -3
      Caption = 'Sonu'#231' Takip Form'
      Visible = False
    end
    object S3: TMenuItem
      Tag = -2
      Caption = 'Sonu'#231' Gir'
      ImageIndex = 104
      OnClick = cxButtonCClick
    end
    object T5: TMenuItem
      Tag = -1
      Caption = 'Tetkik Sonu'#231' De'#287'erlendir'
      ImageIndex = 102
      Visible = False
      OnClick = cxButtonCClick
    end
    object T8: TMenuItem
      Tag = -32
      Caption = 'Tetkik Tedavi Kart'#305
      ImageIndex = 45
      OnClick = cxButtonCClick
    end
    object E1: TMenuItem
      Tag = 9997
      Caption = 'Excel G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object G1: TMenuItem
      Caption = 'Grid Default Yerle'#351'im'
      ImageIndex = 9
      OnClick = G1Click
    end
  end
  object ADO_Tele: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 200
    Top = 208
  end
  object ADO_Tet: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 232
    Top = 208
  end
  object ado_tetkikDegerlendir: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from Anamnez_ICD')
    Left = 520
    Top = 342
  end
  object DataSource3: TDataSource
    DataSet = ado_tetkikDegerlendir
    Left = 616
    Top = 350
  end
  object ADO_Uyar: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'TedaviUyariAyar'
    Left = 364
    Top = 356
  end
  object DataSource17: TDataSource
    DataSet = ADO_Uyar
    Left = 418
    Top = 333
  end
end
