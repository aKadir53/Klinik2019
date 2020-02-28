object frmIlacEtkenMaddeSutKural: TfrmIlacEtkenMaddeSutKural
  Left = 0
  Top = 0
  Caption = 'frmIlacEtkenMaddeSutKural'
  ClientHeight = 583
  ClientWidth = 908
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 908
    Height = 583
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = sayfa_EtkenMadde
    Properties.TabPosition = tpBottom
    ClientRectBottom = 553
    ClientRectLeft = 3
    ClientRectRight = 901
    ClientRectTop = 3
    object sayfa_EtkenMadde: TcxTabSheet
      Caption = 'EtkenMadde'
      ImageIndex = 0
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Caption = 'Etken Maddeler Ara'
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Height = 550
        Width = 416
        object cxGrid1: TcxGrid
          Left = 3
          Top = 45
          Width = 410
          Height = 495
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 412
          ExplicitHeight = 520
          object gridIlacSarf: TcxGridDBTableView
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
            OnFocusedRecordChanged = gridIlacSarfFocusedRecordChanged
            DataController.DataModeController.GridMode = True
            DataController.DataSource = DataSource1
            DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
            DataController.Filter.Active = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #304'la'#231' Say'#305's'#305' : #'
                Kind = skCount
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnFilteredItemsList = True
            FilterRow.InfoText = 'Filitre'
            FilterRow.SeparatorColor = 3155860
            FilterRow.ApplyChanges = fracImmediately
            NewItemRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.IncSearch = True
            OptionsView.NoDataToDisplayInfoText = 'Listelenecek Etken Madde Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.DataRowHeight = 21
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 30
            OptionsView.Indicator = True
            object gridIlacSarfkod: TcxGridDBColumn
              Caption = 'Kod'
              DataBinding.FieldName = 'kod'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 89
            end
            object gridIlacSarftanimi: TcxGridDBColumn
              Caption = 'Etken Madde Tan'#305'm'#305
              DataBinding.FieldName = 'tanimi'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 307
            end
            object gridIlacSarfTurKodu: TcxGridDBColumn
              DataBinding.FieldName = 'TurKodu'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Items = <>
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = gridIlacSarf
          end
        end
        object cxGroupBox4: TcxGroupBox
          Left = 3
          Top = 15
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 1
          ExplicitLeft = 2
          ExplicitTop = -2
          ExplicitWidth = 412
          Height = 30
          Width = 410
          object chkTumu: TcxCheckBoxKadir
            Left = 336
            Top = 9
            Caption = 'T'#252'm'#252'n'#252' G'#246'ster'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '-1'
            Properties.ValueGrayed = '1'
            Properties.ValueUnchecked = '1'
            Properties.OnEditValueChanged = chkTumuPropertiesEditValueChanged
            TabOrder = 0
            Visible = False
            BosOlamaz = False
            Secili = '-1'
            SeciliDegil = '1'
            Width = 58
          end
          object Edit1: TcxTextEdit
            Left = 2
            Top = 2
            Align = alClient
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ValidateOnEnter = True
            Style.Color = 8454143
            TabOrder = 1
            OnKeyDown = Edit1KeyDown
            OnKeyPress = Edit1KeyPress
            ExplicitWidth = 408
            Width = 406
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 416
        Top = 0
        Width = 8
        Height = 550
        Control = cxGroupBox1
      end
      object cxGroupBox5: TcxGroupBox
        Left = 424
        Top = 0
        Align = alClient
        Caption = 'Kurallar'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 550
        Width = 474
        object cxGroupBox6: TcxGroupBox
          Left = 3
          Top = 15
          Align = alTop
          Caption = 'Etken Madde '#304#231'in '#304'stenen Tekkikleri Belirle'
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = -2
          ExplicitWidth = 470
          Height = 183
          Width = 468
          object cxGrid2: TcxGrid
            Left = 3
            Top = 15
            Width = 462
            Height = 158
            Align = alClient
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = -2
            ExplicitWidth = 466
            ExplicitHeight = 183
            object gridTetkikler: TcxGridDBTableView
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
              DataController.DataSource = DataSource4
              DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
              DataController.Filter.Active = True
              DataController.Filter.TranslateBetween = True
              DataController.Filter.TranslateLike = True
              DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = #304'la'#231' Say'#305's'#305' : #'
                  Kind = skCount
                end>
              DataController.Summary.SummaryGroups = <>
              Filtering.ColumnFilteredItemsList = True
              FilterRow.InfoText = 'Filitre'
              FilterRow.SeparatorColor = 3155860
              FilterRow.ApplyChanges = fracImmediately
              NewItemRow.SeparatorWidth = 4
              NewItemRow.Visible = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.IncSearch = True
              OptionsData.DeletingConfirmation = False
              OptionsView.NoDataToDisplayInfoText = 'Listelenecek Etken Madde Yok'
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.DataRowHeight = 21
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 33
              OptionsView.Indicator = True
              object gridTetkiklerATC_Kodu: TcxGridDBColumn
                DataBinding.FieldName = 'ATC_Kodu'
                Visible = False
                Width = 57
              end
              object gridTetkiklertetkikKodu: TcxGridDBColumn
                Caption = 'Tetkik Kodu'
                DataBinding.FieldName = 'tetkikKodu'
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 73
              end
              object gridTetkiklerid: TcxGridDBColumn
                DataBinding.FieldName = 'id'
                Visible = False
                Width = 23
              end
              object gridTetkiklersonuc: TcxGridDBColumn
                Caption = 'Ba'#351'lang'#305#231' Ref.'
                DataBinding.FieldName = 'sonuc'
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 80
              end
              object gridTetkiklersonuc2: TcxGridDBColumn
                Caption = #304'dame Ref.'
                DataBinding.FieldName = 'sonuc2'
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 80
              end
              object gridTetkikleraciklama: TcxGridDBColumn
                Caption = 'A'#231#305'klama'
                DataBinding.FieldName = 'aciklama'
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 136
              end
              object gridTetkiklerreceteEklenir: TcxGridDBColumn
                Caption = 'Re'#231'ete Ack Ekle'
                DataBinding.FieldName = 'receteEklenir'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.Alignment = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 69
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = gridTetkikler
            end
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 3
          Top = 198
          Align = alClient
          Caption = 'Sut Kurallari'
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = TURKISH_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          ExplicitLeft = 2
          ExplicitTop = 181
          ExplicitWidth = 470
          ExplicitHeight = 367
          Height = 342
          Width = 468
          object Label2: TLabel
            Left = 3
            Top = 117
            Width = 462
            Height = 13
            Align = alTop
            AutoSize = False
            Caption = 'Tetkik Sonuc Bilgisi'
            Color = 16744576
            Font.Charset = TURKISH_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitLeft = 2
            ExplicitTop = 52
            ExplicitWidth = 376
          end
          object Label3: TLabel
            Left = 3
            Top = 275
            Width = 462
            Height = 13
            Align = alTop
            AutoSize = False
            Caption = 
              '              Ba'#351'lang'#305#231'                                       '#304'd' +
              'ame'
            Color = 16744576
            Font.Charset = TURKISH_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitLeft = 6
            ExplicitTop = 167
            ExplicitWidth = 378
          end
          object Label4: TLabel
            Left = 3
            Top = 288
            Width = 462
            Height = 13
            Align = alTop
            AutoSize = False
            Caption = 'Diger'
            Color = 16744576
            Font.Charset = TURKISH_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitLeft = 2
            ExplicitTop = 305
            ExplicitWidth = 376
          end
          object Label5: TLabel
            Left = 3
            Top = 218
            Width = 462
            Height = 13
            Align = alTop
            AutoSize = False
            Caption = 'Doz Bilgisi'
            Color = 16744576
            Font.Charset = TURKISH_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ExplicitLeft = 4
            ExplicitTop = 158
            ExplicitWidth = 376
          end
          object DBMemo1: TDBMemo
            Left = 3
            Top = 130
            Width = 462
            Height = 88
            Align = alTop
            Ctl3D = False
            DataField = 'Tetkiksonuc'
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 113
            ExplicitWidth = 466
          end
          object DBMemo2: TDBMemo
            Left = 3
            Top = 231
            Width = 462
            Height = 44
            Align = alTop
            Ctl3D = False
            DataField = 'Doz'
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 1
            ExplicitLeft = 2
            ExplicitTop = 214
            ExplicitWidth = 466
          end
          object DBMemo3: TDBMemo
            Left = 3
            Top = 301
            Width = 462
            Height = 57
            Align = alTop
            Ctl3D = False
            DataField = 'Diger'
            ParentCtl3D = False
            ScrollBars = ssVertical
            TabOrder = 2
            ExplicitLeft = 2
            ExplicitTop = 284
            ExplicitWidth = 466
          end
          object cxGrid3: TcxGrid
            Left = 3
            Top = 15
            Width = 462
            Height = 102
            Align = alTop
            Font.Charset = TURKISH_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            ExplicitLeft = 2
            ExplicitTop = -2
            ExplicitWidth = 466
            object gridSutKural: TcxGridDBBandedTableView
              DataController.DataSource = DataSource3
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              NewItemRow.SeparatorWidth = 4
              NewItemRow.Visible = True
              OptionsView.GroupByBox = False
              Bands = <
                item
                  Caption = 'Ba'#351'lang'#305#231
                  Width = 150
                end
                item
                  Caption = #304'dame'
                  Width = 150
                end
                item
                  Width = 157
                end>
              object gridSutKuralATC_Kodu: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ATC_Kodu'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gridSutKuralEtkenMaddeKodu: TcxGridDBBandedColumn
                DataBinding.FieldName = 'EtkenMaddeKodu'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gridSutKuralTetkiksonuc: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Tetkiksonuc'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gridSutKuralDoz: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Doz'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object gridSutKuralDiger: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Diger'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object gridSutKuralid: TcxGridDBBandedColumn
                DataBinding.FieldName = 'id'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object gridSutKuralbDoz1: TcxGridDBBandedColumn
                Caption = 'Min'
                DataBinding.FieldName = 'bDoz1'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object gridSutKuralbDoz2: TcxGridDBBandedColumn
                Caption = 'Max'
                DataBinding.FieldName = 'bDoz2'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object gridSutKuralbDozPeryot: TcxGridDBBandedColumn
                Caption = 'Peryot'
                DataBinding.FieldName = 'bDozPeryot'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Items = <
                  item
                    Description = 'Gun'
                    ImageIndex = 0
                    Value = '3'
                  end
                  item
                    Description = 'Hafta'
                    Value = '4'
                  end
                  item
                    Description = 'Ay'
                    Value = '5'
                  end
                  item
                    Description = 'Y'#305'l'
                    Value = '6'
                  end>
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object gridSutKuraliDoz1: TcxGridDBBandedColumn
                Caption = 'Min'
                DataBinding.FieldName = 'iDoz1'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 50
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gridSutKuraliDoz2: TcxGridDBBandedColumn
                Caption = 'Max'
                DataBinding.FieldName = 'iDoz2'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 50
                Position.BandIndex = 1
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gridSutKuraliDozPeryot: TcxGridDBBandedColumn
                Caption = 'Peryot'
                DataBinding.FieldName = 'iDozPeryot'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Items = <
                  item
                    Description = 'Gun'
                    ImageIndex = 0
                    Value = '3'
                  end
                  item
                    Description = 'Hafta'
                    Value = '4'
                  end
                  item
                    Description = 'Ay'
                    Value = '5'
                  end
                  item
                    Description = 'Y'#305'l'
                    Value = '6'
                  end>
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 50
                Position.BandIndex = 1
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gridSutKuralBirim: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Birim'
                Width = 29
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gridSutKuralbDozPeryotAdet: TcxGridDBBandedColumn
                Caption = 'Adet'
                DataBinding.FieldName = 'bDozPeryotAdet'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object gridSutKuraliDozPeryotAdet: TcxGridDBBandedColumn
                Caption = 'Adet'
                DataBinding.FieldName = 'iDozPeryotAdet'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 50
                Position.BandIndex = 1
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object gridSutKuralAciklama: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Aciklama'
                Width = 111
                Position.BandIndex = 2
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = gridSutKural
            end
          end
        end
      end
    end
    object sayfa_Ilac: TcxTabSheet
      Caption = #304'la'#231'lar'
      ImageIndex = 1
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = #304'la'#231' Ara'
        ParentFont = False
        Style.BorderStyle = ebsFlat
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfFlat
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.Kind = lfFlat
        TabOrder = 0
        Height = 550
        Width = 898
        object cxGrid4: TcxGrid
          Left = 3
          Top = 45
          Width = 892
          Height = 495
          Align = alClient
          Font.Charset = TURKISH_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 894
          ExplicitHeight = 520
          object ilacList: TcxGridDBTableView
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
            DataController.DataSource = DataSource2
            DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
            DataController.Filter.Active = True
            DataController.Filter.TranslateBetween = True
            DataController.Filter.TranslateLike = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #304'la'#231' Say'#305's'#305' : #'
                Kind = skCount
              end>
            DataController.Summary.SummaryGroups = <>
            Filtering.ColumnFilteredItemsList = True
            FilterRow.InfoText = 'Filitre'
            FilterRow.SeparatorColor = 3155860
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.IncSearch = True
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.NoDataToDisplayInfoText = 'Listelenecek Etken Madde Yok'
            OptionsView.CellAutoHeight = True
            OptionsView.DataRowHeight = 21
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 30
            OptionsView.Indicator = True
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Barkod'
              DataBinding.FieldName = 'barkod'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 142
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = #304'la'#231' Tan'#305'm'#305
              DataBinding.FieldName = 'ilacAdi'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 305
            end
            object ilacListColumn1: TcxGridDBColumn
              Caption = 'Recete Tip'
              DataBinding.FieldName = 'ReceteTip'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 63
            end
            object ilacListColumn2: TcxGridDBColumn
              DataBinding.FieldName = 'Aktif'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 32
            end
            object ilacListColumn3: TcxGridDBColumn
              Caption = 'E.Madde Kodu'
              DataBinding.FieldName = 'EtkenMadde'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 77
            end
            object ilacListColumn6: TcxGridDBColumn
              Caption = 'Etken Madde'
              DataBinding.FieldName = 'etkenmaddeAdi'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 144
            end
            object ilacListColumn4: TcxGridDBColumn
              Caption = 'Firma Adi'
              DataBinding.FieldName = 'FirmaAdi'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 141
            end
            object ilacListColumn5: TcxGridDBColumn
              Caption = 'Unite'
              DataBinding.FieldName = 'UNITE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 49
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = ilacList
          end
        end
        object cxGroupBox7: TcxGroupBox
          Left = 3
          Top = 15
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 1
          ExplicitLeft = 2
          ExplicitTop = -2
          ExplicitWidth = 894
          Height = 30
          Width = 892
          object cxCheckBoxKadir1: TcxCheckBoxKadir
            Left = 336
            Top = 9
            Caption = 'T'#252'm'#252'n'#252' G'#246'ster'
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '-1'
            Properties.ValueGrayed = '1'
            Properties.ValueUnchecked = '1'
            Properties.OnEditValueChanged = chkTumuPropertiesEditValueChanged
            TabOrder = 0
            Visible = False
            BosOlamaz = False
            Secili = '-1'
            SeciliDegil = '1'
            Width = 58
          end
          object txtIlacAra: TcxTextEdit
            Left = 2
            Top = 2
            Align = alClient
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.ValidateOnEnter = True
            Style.Color = 8454143
            TabOrder = 1
            OnKeyDown = Edit1KeyDown
            ExplicitWidth = 890
            Width = 888
          end
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 118
    object KurumEkle1: TMenuItem
      Tag = 2
      Caption = 'Ekle'
    end
    object KurumSil1: TMenuItem
      Tag = 3
      Caption = #304'la'#231' Sil'
    end
    object KurumDzenle1: TMenuItem
      Tag = 4
      Caption = #304'la'#231' D'#252'zenle'
    end
  end
  object ado_BransKodlari: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = ado_BransKodlariAfterScroll
    Parameters = <
      item
        Name = '@p'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 150
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'select * from OSGB_MASTER.dbo.ATC_Kodlari'
      'where Tanimi like :@p')
    Left = 336
    Top = 266
  end
  object DataSource1: TDataSource
    DataSet = ado_BransKodlari
    Left = 336
    Top = 314
  end
  object DataSource4: TDataSource
    DataSet = ADO_EtkenMaddeTetkik
    Left = 593
    Top = 122
  end
  object ADO_EtkenMaddeTetkik: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    OnNewRecord = ADO_EtkenMaddeTetkikNewRecord
    Parameters = <
      item
        Name = '@kod'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end>
    SQL.Strings = (
      'select * from OSGB_MASTER.dbo.IlaclarReceteTetkikSonuc'
      'where ATC_Kodu =:@kod')
    Left = 544
    Top = 128
  end
  object DataSource3: TDataSource
    DataSet = ADO_EtkenMaddeSUT
    Left = 168
    Top = 256
  end
  object ADO_EtkenMaddeSUT: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    OnNewRecord = ADO_EtkenMaddeSUTNewRecord
    Parameters = <
      item
        Name = '@kod'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select * from OSGB_MASTER.dbo.ETkenMaddeSutKurallari'
      'where ATC_Kodu =:@kod')
    Left = 160
    Top = 208
  end
  object ado_ilaclar: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = ado_BransKodlariAfterScroll
    Parameters = <
      item
        Name = '@p'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 200
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      
        'select i.*,a.tanimi etkenmaddeAdi from OSGB_MASTER.dbo.ilacListe' +
        'si i'
      'left join OSGB_MASTER.dbo.ATC_Kodlari a on a.kod = i.etkenmadde'
      'where ilacAdi like :@p')
    Left = 464
    Top = 266
  end
  object DataSource2: TDataSource
    DataSet = ado_ilaclar
    Left = 464
    Top = 314
  end
end
