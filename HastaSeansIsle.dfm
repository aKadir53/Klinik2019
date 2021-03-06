object frmHastaSeans: TfrmHastaSeans
  Tag = 9010
  Left = 0
  Top = 10
  Caption = 'frmHastaSeans'
  ClientHeight = 561
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl_Seans: TcxPageControl
    Left = 0
    Top = 0
    Width = 900
    Height = 561
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = Seanslar_Sayfa
    Properties.Style = 11
    OnPageChanging = PageControl_SeansPageChanging
    ClientRectBottom = 554
    ClientRectLeft = 3
    ClientRectRight = 893
    ClientRectTop = 26
    object Seanslar_Sayfa: TcxTabSheet
      Caption = 'Seanslar'
      ImageIndex = 0
      object PageControl_Sayfa_Panel: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        TabOrder = 0
        Height = 528
        Width = 890
        object cxGrid_Seans: TcxGridKadir
          Left = 2
          Top = 23
          Width = 886
          Height = 476
          Cursor = crHandPoint
          Align = alClient
          PopupMenu = PopupMenu5
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          ExceleGonder = False
          PopupForm = False
          object ListeS: TcxGridDBBandedTableView
            PopupMenu = PopupMenu5
            OnCellDblClick = ListeSCellDblClick
            OnFocusedItemChanged = ListeSFocusedItemChanged
            OnFocusedRecordChanged = ListeSFocusedRecordChanged
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = 'Seans Say'#305's'#305' : 0'
                Kind = skCount
                Column = ListeSColumn1
              end
              item
                Format = '0'
                Kind = skSum
                Column = Listedurum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsCustomize.ColumnSorting = False
            OptionsCustomize.GroupBySorting = True
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.NoDataToDisplayInfoText = 'Listelenecek Kay'#305't Yok'
            OptionsView.DataRowHeight = 27
            OptionsView.Footer = True
            OptionsView.GridLines = glHorizontal
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 35
            OptionsView.BandHeaderHeight = 21
            Bands = <
              item
                Caption = 'Seans Bilgileri'
                Styles.Header = AnaForm.cxStyle1
                Width = 940
              end>
            object ListeSiraNumarasi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SiraNumarasi'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'dosyaNo'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn2: TcxGridDBBandedColumn
              Caption = 'G No'
              DataBinding.FieldName = 'GelisNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 28
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListehastaAdi: TcxGridDBBandedColumn
              Caption = 'Hasta Ad'#305
              DataBinding.FieldName = 'hastaAdi'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 124
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListeSColumn1: TcxGridDBBandedColumn
              Caption = 'Seans G'#252'n'#252
              DataBinding.FieldName = 'SeansGunu'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 105
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object ListeislemRefNo: TcxGridDBBandedColumn
              Caption = 'RefNo'
              DataBinding.FieldName = 'islemRefNo'
              PropertiesClassName = 'TcxTextEditProperties'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 60
              Position.BandIndex = 0
              Position.ColIndex = 52
              Position.RowIndex = 0
            end
            object Listedurum: TcxGridDBBandedColumn
              Caption = 'Durum'
              DataBinding.FieldName = 'durum'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taRightJustify
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 40
              Options.Editing = False
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object ListeDiyalizorTipi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DiyalizorTipi'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object ListeUTarih: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UTarih'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object ListeUTarihDateTime: TcxGridDBBandedColumn
              Caption = 'Uygulama Tarih'
              DataBinding.FieldName = 'UTarihDateTime'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 80
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object ListeDoktorKod: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Doktor'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <>
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 141
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'doktor'
              Visible = False
              Width = 119
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object ListeTalepSira: TcxGridDBBandedColumn
              Caption = #304'slemSiraNo'
              DataBinding.FieldName = 'islemSiraNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Styles.Content = cxStyle3
              Width = 95
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object ListeislemSiraNoYatak: TcxGridDBBandedColumn
              DataBinding.FieldName = 'islemSiraNoYatak'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object ListesiranoYatis: TcxGridDBBandedColumn
              DataBinding.FieldName = 'siranoYatis'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object ListeTakpNo: TcxGridDBBandedColumn
              Caption = 'Tak'#305'p No'
              DataBinding.FieldName = 'TakipNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Editing = False
              Width = 48
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
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
              Width = 57
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListeSERVIS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SERVIS'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object ListemakinaNo: TcxGridDBBandedColumn
              Caption = 'Mak'
              DataBinding.FieldName = 'makinaNo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 30
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object ListeraporTakipNo: TcxGridDBBandedColumn
              Caption = 'Rapor Takip'
              DataBinding.FieldName = 'raporTakipNo'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = ListeraporTakipNoPropertiesButtonClick
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 72
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object ListeraporNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'raporNo'
              Visible = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListeraporTarihi: TcxGridDBBandedColumn
              DataBinding.FieldName = 'raporTarihi'
              Visible = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListeverenTesisKodu: TcxGridDBBandedColumn
              DataBinding.FieldName = 'verenTesisKodu'
              Visible = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListeseansGun: TcxGridDBBandedColumn
              Caption = 'Seans Gun'
              DataBinding.FieldName = 'seansGun'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 37
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListeseansSayi: TcxGridDBBandedColumn
              Caption = 'Seans Sayi'
              DataBinding.FieldName = 'seansSayi'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 36
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListebaslangicTarihi: TcxGridDBBandedColumn
              Caption = 'Baslangic Tarihi'
              DataBinding.FieldName = 'baslangicTarihi'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 68
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListeBitisTarihi: TcxGridDBBandedColumn
              Caption = 'Bitis Tarihi'
              DataBinding.FieldName = 'BitisTarihi'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Visible = False
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 70
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListeADI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ADI'
              Visible = False
              Width = 115
              Position.BandIndex = 0
              Position.ColIndex = 16
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
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
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
                '4')
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Sorting = False
              Width = 43
              Position.BandIndex = 0
              Position.ColIndex = 17
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
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListeSNProtokolNo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SNProtokolNo'
              Visible = False
              Width = 172
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object ListeGIRISKILO: TcxGridDBBandedColumn
              Caption = 'Giri'#351' Kilo'
              DataBinding.FieldName = 'GIRISKILO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 47
              Position.BandIndex = 0
              Position.ColIndex = 35
              Position.RowIndex = 0
            end
            object ListeCIKISKILO: TcxGridDBBandedColumn
              Caption = #199#305'k'#305#351' Kilo'
              DataBinding.FieldName = 'CIKISKILO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 47
              Position.BandIndex = 0
              Position.ColIndex = 36
              Position.RowIndex = 0
            end
            object ListeIdealKilo: TcxGridDBBandedColumn
              DataBinding.FieldName = 'IdealKilo'
              Visible = False
              Options.Editing = False
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object ListeseansKontrol: TcxGridDBBandedColumn
              DataBinding.FieldName = 'seansKontrol'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 20
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 137
              Position.BandIndex = 0
              Position.ColIndex = 37
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 155
              Position.BandIndex = 0
              Position.ColIndex = 38
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 169
              Position.BandIndex = 0
              Position.ColIndex = 39
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 39
              Position.BandIndex = 0
              Position.ColIndex = 41
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 48
              Position.BandIndex = 0
              Position.ColIndex = 40
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
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 31
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object ListeVatandasTip: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VatandasTip'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object Listebhdat: TcxGridDBBandedColumn
              DataBinding.FieldName = 'bhdat'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object Listesebeb: TcxGridDBBandedColumn
              Caption = 'Seansa Girmeme Sebebi'
              DataBinding.FieldName = 'sebeb'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ClearKey = 46
              Properties.Items = <
                item
                  Description = 'Ba'#351'ka Merkeze Ge'#231'ici Gitme'
                  ImageIndex = 0
                  Value = '0'
                end
                item
                  Description = 'Hastaneye Yatma'
                  Value = '9'
                end
                item
                  Description = 'Kendi '#304'ste'#287'i '#304'le Girmedi'
                  Value = '10'
                end
                item
                  Description = 'T'#305'bbi Sebeb'
                  Value = '11'
                end
                item
                  Description = 'Merkezden Ayr'#305'ld'#305
                  Value = '12'
                end>
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 50
              Position.RowIndex = 0
            end
            object ListeTanG: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanG'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object ListeTanC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanC'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object ListeNabizG: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NabizG'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object ListeNabizC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NabizC'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object ListeTanGK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanGK'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object ListeTanCK: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TanCK'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object ListeHemodiyalizTip: TcxGridDBBandedColumn
              DataBinding.FieldName = 'HemodiyalizTip'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object ListeCins: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Cins'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  ImageIndex = 40
                  Value = '0'
                end
                item
                  ImageIndex = 154
                  Value = '1'
                end>
              Width = 30
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
              IsCaptionAssigned = True
            end
            object ListeseansRaporKontrol: TcxGridDBBandedColumn
              DataBinding.FieldName = 'seansRaporKontrol'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object Listekod: TcxGridDBBandedColumn
              Caption = 'Hizmet'
              DataBinding.FieldName = 'code'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Options.Sorting = False
              Width = 72
              Position.BandIndex = 0
              Position.ColIndex = 25
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
              Options.Filtering = False
              Options.Sorting = False
              Width = 51
              Position.BandIndex = 0
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object cxGridDBBandedColumn4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'YAs'
              Visible = False
              Options.Editing = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object cxGridDBBandedColumn5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'HastaneRefNo'
              Visible = False
              Position.BandIndex = -1
              Position.ColIndex = -1
              Position.RowIndex = -1
            end
            object ListeColumn3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Tarih'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Options.Filtering = False
              Width = 93
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object ListeColumn4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'rTarih'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object ListeSColumn2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KURUMTIPI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 42
              Position.RowIndex = 0
            end
            object ListeSColumn3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'doktorBrans'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 43
              Position.RowIndex = 0
            end
            object ListeSColumn4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DoktorTescil'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 44
              Position.RowIndex = 0
            end
            object ListeSColumn5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DamarIziKontrol'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = DATALAR.imag24png
              Properties.Items = <
                item
                  ImageIndex = 106
                  Value = 1
                end
                item
                  Value = 0
                end>
              Width = 36
              Position.BandIndex = 0
              Position.ColIndex = 45
              Position.RowIndex = 0
              IsCaptionAssigned = True
            end
            object ListeSColumn6: TcxGridDBBandedColumn
              DataBinding.FieldName = 'sysTakipNo'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 46
              Position.RowIndex = 0
            end
            object ListeSColumn7: TcxGridDBBandedColumn
              DataBinding.FieldName = 'itaki'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 47
              Position.RowIndex = 0
            end
            object ListeSColumn8: TcxGridDBBandedColumn
              DataBinding.FieldName = 'GIRISYOLU_ENF'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 48
              Position.RowIndex = 0
            end
            object ListeSColumn9: TcxGridDBBandedColumn
              DataBinding.FieldName = 'yeniSiraNo'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 49
              Position.RowIndex = 0
            end
            object ListeSColumn10: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ilkSeansTarihiKontrol'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 51
              Position.RowIndex = 0
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = ListeS
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 2
          Top = 2
          Align = alTop
          PanelStyle.Active = True
          TabOrder = 1
          Height = 21
          Width = 886
          object chkTahlil: TcxCheckBox
            Left = 2
            Top = 2
            Align = alLeft
            Caption = 'Tahlil G'#246'nder'
            TabOrder = 0
            Width = 119
          end
          object chkMesai: TcxCheckBox
            Left = 121
            Top = 2
            Align = alClient
            Caption = 'Doktor Mesai Kontol Yapma'
            TabOrder = 1
            Width = 763
          end
        end
        object cxDBVerticalGrid1: TcxDBVerticalGrid
          Left = 2
          Top = 499
          Width = 886
          Height = 27
          Align = alBottom
          LookAndFeel.NativeStyle = False
          OptionsView.RowHeaderWidth = 454
          OptionsView.RowHeight = 24
          OptionsData.Editing = False
          OptionsData.Appending = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          Styles.Header = AnaForm.cxStyle1
          TabOrder = 2
          Visible = False
          DataController.DataSource = DataSource5
          Version = 1
          object cxDBVerticalGrid1DBMultiEditorRow1: TcxDBMultiEditorRow
            Properties.Editors = <
              item
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                EditPropertiesClassName = 'TcxTextEditProperties'
                EditProperties.Alignment.Horz = taCenter
                EditProperties.Alignment.Vert = taVCenter
                DataBinding.FieldName = 'Toplam'
              end
              item
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                EditPropertiesClassName = 'TcxTextEditProperties'
                EditProperties.Alignment.Horz = taCenter
                EditProperties.Alignment.Vert = taVCenter
                DataBinding.FieldName = 'Girilen'
                Options.Editing = False
                Options.Filtering = False
              end
              item
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                EditPropertiesClassName = 'TcxTextEditProperties'
                EditProperties.Alignment.Horz = taCenter
                EditProperties.Alignment.Vert = taVCenter
                DataBinding.FieldName = 'Girilmeyen'
              end
              item
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                EditPropertiesClassName = 'TcxTextEditProperties'
                EditProperties.Alignment.Horz = taCenter
                EditProperties.Alignment.Vert = taVCenter
                DataBinding.FieldName = 'Gonderilen'
              end>
            Styles.Content = AnaForm.cxStyle1
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
        end
      end
    end
    object TabMalzeme: TcxTabSheet
      Caption = 'Malzeme'
      ImageIndex = 2
      object MalzemeList: TcxGridKadir
        Left = 0
        Top = 0
        Width = 890
        Height = 528
        Cursor = crHandPoint
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        ExceleGonder = False
        PopupForm = False
        object GridMalzeme: TcxGridDBBandedTableView
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = DataSource5
          DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '##'
              Kind = skCount
              Column = cxGridDBBandedColumn47
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
          OptionsView.DataRowHeight = 25
          OptionsView.Footer = True
          OptionsView.GridLines = glHorizontal
          OptionsView.GroupByBox = False
          OptionsView.GroupByHeaderLayout = ghlHorizontal
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderHeight = 35
          OptionsView.BandHeaderHeight = 20
          Bands = <
            item
              Caption = 'Malzeme Bilgileri'
              Styles.Header = cxStyle2
              Width = 934
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
            Caption = 'Barkodu(UBB)'
            DataBinding.FieldName = 'UBB'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 123
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn35: TcxGridDBBandedColumn
            Caption = 'MG'
            DataBinding.FieldName = 'ISLENDIMI'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = 'E'
            Properties.DisplayUnchecked = 'H'
            Properties.ImmediatePost = True
            Properties.ValueChecked = 'E'
            Properties.ValueUnchecked = 'H'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 35
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
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
            Caption = 'Malzeme Ad'#305
            DataBinding.FieldName = 'NAME1'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 195
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
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn40: TcxGridDBBandedColumn
            Caption = 'Adet'
            DataBinding.FieldName = 'ADET'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 42
            Position.BandIndex = 0
            Position.ColIndex = 5
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
            Position.ColIndex = 6
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
            Position.ColIndex = 7
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
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object cxGridDBBandedColumn47: TcxGridDBBandedColumn
            Caption = 'RefNo'
            DataBinding.FieldName = 'SIRANO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 63
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridMalzemeColumn1: TcxGridDBBandedColumn
            Caption = 'Lot'
            DataBinding.FieldName = 'lot'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object GridMalzemeColumn2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Tarih'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridMalzemeColumn3: TcxGridDBBandedColumn
            Caption = 'Seri No'
            DataBinding.FieldName = 'seriNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 59
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object GridMalzemeColumn4: TcxGridDBBandedColumn
            Caption = 'F Tanimlayici No'
            DataBinding.FieldName = 'firmaTanimlayiciNo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 125
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object GridMalzemeColumn5: TcxGridDBBandedColumn
            Caption = 'S.Alis Tarihi'
            DataBinding.FieldName = 'malzemeSatinAlisTarihi'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 94
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object GridMalzemeColumn6: TcxGridDBBandedColumn
            DataBinding.FieldName = 'yeniSiraNo'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object GridMalzemeColumn7: TcxGridDBBandedColumn
            Caption = 'S.RefNo'
            DataBinding.FieldName = 'hareketSira'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = GridMalzeme
        end
      end
    end
    object Sayfa_Log: TcxTabSheet
      Caption = 'Log'
      ImageIndex = 1
      object txtLog: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 0
        Height = 528
        Width = 890
      end
    end
  end
  object PopupMenu5: TPopupMenu
    Tag = 1
    Images = DATALAR.imag24png
    Left = 80
    Top = 120
    object S2: TMenuItem
      Tag = -11
      Caption = 'Seanslar'#305' Olu'#351'tur'
      ImageIndex = 80
      OnClick = c
    end
    object S3: TMenuItem
      Tag = -10
      Caption = 'Sil'
      ImageIndex = 43
      OnClick = c
    end
    object S1: TMenuItem
      Tag = 1
      Caption = 'Seans'#305' Onayla'
      ImageIndex = 0
      OnClick = c
    end
    object S7: TMenuItem
      Caption = 'Seans Onay '#304'ptal'
      ImageIndex = 33
      OnClick = c
    end
    object S9: TMenuItem
      Tag = -2
      Caption = 'Seansa Girmedi'
      ImageIndex = 37
      OnClick = c
    end
    object Y1: TMenuItem
      Tag = -50
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = c
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object M1: TMenuItem
      Tag = -100
      Caption = 'Medula'
      ImageIndex = 76
      object s5: TMenuItem
        Tag = -9
        Caption = 'Seanslar'#305' Medulaya Kaydet'
        ImageIndex = 15
        OnClick = c
      end
      object S4: TMenuItem
        Tag = -8
        Caption = 'Seans'#305' Meduladan '#304'ptal Et'
        ImageIndex = 13
        OnClick = c
      end
      object D1: TMenuItem
        Tag = -7
        Caption = 'Damar '#304'zi Kontrolu Yap'
        ImageIndex = 106
        OnClick = c
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ENabzHizmetKayt1: TMenuItem
      Tag = -22
      Caption = 'E-Nab'#305'z Hizmet Kay'#305't'
      ImageIndex = 118
      OnClick = c
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object S6: TMenuItem
      Tag = 260
      Caption = 'Seans '#304'zlem Formu'
      ImageIndex = 51
      Visible = False
      OnClick = c
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object H1: TMenuItem
      Tag = -4
      Caption = 'Seans'#305' D'#252'zenle'
      ImageIndex = 51
      OnClick = c
    end
    object DoktorBilgisiDeitir1: TMenuItem
      Tag = -12
      Caption = 'Doktor Bilgisi De'#287'i'#351'tir'
      ImageIndex = 74
      OnClick = c
    end
    object K1: TMenuItem
      Tag = -20
      Caption = 'Kan Alinan Seans Olarak '#304#351'aretle'
      ImageIndex = 117
      OnClick = c
    end
    object KanAlinanSeansOlarakaretle1: TMenuItem
      Tag = -21
      Caption = 'Kan Alimini '#304'ptal Et'
      OnClick = c
    end
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
        Name = '@dn'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'SELECT COUNT(*) Toplam ,'
      'sum(CASE WHEN (gd.durum = 1) THEN 1 ELSE 0 END) Girilen,'
      'sum(CASE WHEN (gd.durum = 1) THEN 1 ELSE 0 END) Girilenmeyen,'
      
        'sum(CASE WHEN (isnull(gd.islemsiraNo,'#39#39') <> '#39#39') THEN 1 ELSE 0 EN' +
        'D) G'#246'nderilen    '
      'FROM hareketler gd'
      
        '    JOIN Hasta_gelisler g on g.dosyaNo = gd.dosyano AND g.gelisN' +
        'o = gd.gelisNo'
      '    left JOIN HastaKart hk ON hk.dosyaNo = g.dosyaNo'
      '    left JOIN Kurumlar k ON k.Kurum = hk.Kurum    '
      
        'WHERE substring(convert(varchar,gd.Tarih,112),1,6) = :@t1  AND g' +
        'd.Tip = '#39'S'#39' and k.KURUMTIPI in ('#39'1'#39','#39'99'#39') and hk.dosyaNo =:@dn'
      '')
    Left = 48
    Top = 274
  end
  object DataSource5: TDataSource
    DataSet = ADO_Detay_toplam
    Left = 48
    Top = 218
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 616
    Top = 384
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clLime
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 648
    Top = 384
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8454143
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 528
    Top = 208
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object ListeAc2: TListeAc
    ListeBaslik = 'Raporlar'
    TColcount = 6
    TColsW = '65,65,65,40,40,80'
    Table = 'raporlar'
    Conn = DATALAR.ADOConnection2
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
    Left = 528
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 208
    Top = 128
    object S8: TMenuItem
      Tag = -20
      Caption = 'Sil'
      ImageIndex = 130
      OnClick = M2Click
    end
    object M2: TMenuItem
      Tag = -10
      Caption = 'Malzeme Ekle'
      ImageIndex = 129
      OnClick = M2Click
    end
    object G1: TMenuItem
      Caption = 'Gruptan Malzeme Ekle'
      Visible = False
    end
  end
  object MalzemeAc: TListeAc
    ListeBaslik = 'Malzemeler'
    TColcount = 7
    TColsW = '100,65,150,80,65,50,50'
    Table = 'StokKart_MevcutListView'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'Code'
      'Lot'
      'NAME1'
      'ubb'
      'Grup'
      'TOPGIR'
      'TOPCIK')
    KolonBasliklari.Strings = (
      'Malzeme Kodu'
      'Lot'
      'Urun Ad'#305
      'UBB'
      'Grubu'
      'Top.Giren'
      'Top.'#199#305'kan')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 280
    Top = 176
  end
  object Sebebler: TListeAc
    ListeBaslik = 'Seansa Girmeme'
    TColcount = 2
    TColsW = '40,200'
    Table = 'SeansaGirmemeSebebleri'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'kod'
      'tanimi')
    KolonBasliklari.Strings = (
      'Kod'
      'Tanimi')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    Grup = False
    GrupCol = 0
    Left = 240
    Top = 288
  end
end
