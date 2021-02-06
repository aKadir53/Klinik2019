object frmElHijyen: TfrmElHijyen
  Left = 1
  Top = 1
  Caption = 'El Hijyeni G'#246'zlem Formu'
  ClientHeight = 597
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGridKadir2: TcxGridKadir
    Left = 0
    Top = 0
    Width = 777
    Height = 193
    Align = alTop
    TabOrder = 0
    ExcelFileName = 'TahlilSonuclar'#305
    ExceleGonder = True
    PopupForm = False
    object gridRaporlar: TcxGridDBTableView
      OnFocusedRecordChanged = gridRaporlarFocusedRecordChanged
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object gridRaporlarid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 40
      end
      object gridRaporlarTarih: TcxGridDBColumn
        DataBinding.FieldName = 'Tarih'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object gridRaporlarsirketKod: TcxGridDBColumn
        Caption = #350'irket'
        DataBinding.FieldName = 'Tanimi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 183
      end
      object gridRaporlargozlemci: TcxGridDBColumn
        Caption = 'G'#246'zlemci'
        DataBinding.FieldName = 'gozlemci'
        PropertiesClassName = 'TcxTextEditProperties'
        Options.Editing = False
        Width = 200
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gridRaporlar
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 193
    Width = 777
    Height = 8
    AlignSplitter = salTop
    Control = cxGridKadir2
  end
  object cxGridKadir1: TcxGridKadir
    Left = 0
    Top = 201
    Width = 777
    Height = 396
    Align = alClient
    TabOrder = 2
    ExceleGonder = False
    PopupForm = False
    object Satirlar: TcxGridDBBandedTableView
      Navigator.Buttons.OnButtonClick = cxGridKadir1DBBandedTableView1NavigatorButtonsButtonClick
      Navigator.Buttons.First.Visible = False
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Visible = False
      Navigator.Buttons.Next.Visible = False
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Visible = False
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = DataSource2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Bands = <
        item
          Width = 211
        end
        item
          Caption = 'Hasta '#304'le Temas '#214'ncesi'
          Styles.Header = cxStyle1
          Width = 168
        end
        item
          Caption = 'Hasta '#304'le Temas Sonras'#305
          Styles.Header = cxStyle1
          Width = 165
        end
        item
          Caption = 'Aseptik '#304#351'lemler '#214'ncesi'
          Styles.Header = cxStyle1
          Width = 165
        end
        item
          Caption = 'V'#252'cut S'#305'v'#305'lar'#305'n'#305'n Bula'#351'ma Riski Sonras'#305
          Styles.Header = cxStyle1
          Width = 229
        end
        item
          Caption = 'Hasta '#199'evresi Temas Sonras'#305
          Styles.Header = cxStyle1
          Width = 173
        end>
      object SatirlarTarih: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Tarih'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object SatirlarsirketKod: TcxGridDBBandedColumn
        DataBinding.FieldName = 'sirketKod'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object Satirlarid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object Satirlargozlemci: TcxGridDBBandedColumn
        DataBinding.FieldName = 'gozlemci'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object Satirlarspid: TcxGridDBBandedColumn
        DataBinding.FieldName = 'spid'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object Satirlardate_create: TcxGridDBBandedColumn
        DataBinding.FieldName = 'date_create'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object Satirlargozlem_id: TcxGridDBBandedColumn
        DataBinding.FieldName = 'gozlem_id'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object Satirlarid_1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'id_1'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object Satirlarsalon: TcxGridDBBandedColumn
        Caption = 'Salon'
        DataBinding.FieldName = 'salon'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 32
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object Satirlarvardiya: TcxGridDBBandedColumn
        Caption = 'Vardiya'
        DataBinding.FieldName = 'vardiya'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object Satirlarmeslek: TcxGridDBBandedColumn
        Caption = 'Meslek'
        DataBinding.FieldName = 'meslek'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object Satirlarcinsiyet: TcxGridDBBandedColumn
        Caption = 'Cinsiyet'
        DataBinding.FieldName = 'cinsiyet'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Items = <>
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object SatirlarTO_Firsat: TcxGridDBBandedColumn
        Caption = 'Firsat'
        DataBinding.FieldName = 'TO_Firsat'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = cxImageList1
        Properties.Items = <
          item
            Description = '1'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = '0'
            ImageIndex = 1
            Value = 0
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object SatirlarTO_Yikama_Ovma_Yok: TcxGridDBBandedColumn
        Caption = 'Yikama'
        DataBinding.FieldName = 'TO_Yikama'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object SatirlarTO_Ovma: TcxGridDBBandedColumn
        Caption = 'Ovma'
        DataBinding.FieldName = 'TO_Ovma'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object SatirlarTO_Yok: TcxGridDBBandedColumn
        Caption = 'Yok'
        DataBinding.FieldName = 'TO_Yok'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object SatirlarTS_Firsat: TcxGridDBBandedColumn
        Caption = 'Firsat'
        DataBinding.FieldName = 'TS_Firsat'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object SatirlarTS_Yikama_Ovma_Yok: TcxGridDBBandedColumn
        Caption = 'Yikama'
        DataBinding.FieldName = 'TS_Yikama'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object SatirlarTS_Ovma: TcxGridDBBandedColumn
        Caption = 'Ovma'
        DataBinding.FieldName = 'TS_Ovma'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object SatirlarTS_Yok: TcxGridDBBandedColumn
        Caption = 'Yok'
        DataBinding.FieldName = 'TS_Yok'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object SatirlarAIO_Firsat: TcxGridDBBandedColumn
        Caption = 'Firsat'
        DataBinding.FieldName = 'AIO_Firsat'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object SatirlarAIO_Yikama_Ovma_Yok: TcxGridDBBandedColumn
        Caption = 'Yikama'
        DataBinding.FieldName = 'AIO_Yikama'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object SatirlarAIO_Ovma: TcxGridDBBandedColumn
        Caption = 'Ovma'
        DataBinding.FieldName = 'AIO_Ovma'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object SatirlarAIO_Yok: TcxGridDBBandedColumn
        Caption = 'Yok'
        DataBinding.FieldName = 'AIO_Yok'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object SatirlarVS_Firsat: TcxGridDBBandedColumn
        Caption = 'Firsat'
        DataBinding.FieldName = 'VS_Firsat'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object SatirlarVS_Yikama_Ovma_Yok: TcxGridDBBandedColumn
        Caption = 'Yikama'
        DataBinding.FieldName = 'VS_Yikama'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object SatirlarVS_Ovma: TcxGridDBBandedColumn
        Caption = 'Ovma'
        DataBinding.FieldName = 'VS_Ovma'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object SatirlarVS_Yok: TcxGridDBBandedColumn
        Caption = 'Yok'
        DataBinding.FieldName = 'VS_Yok'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object SatirlarHCTS_Firsat: TcxGridDBBandedColumn
        Caption = 'Firsat'
        DataBinding.FieldName = 'HCTS_Firsat'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 5
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object SatirlarHCTS_Yikama_Ovma_Yok: TcxGridDBBandedColumn
        Caption = 'Yikama'
        DataBinding.FieldName = 'HCTS_Yikama'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 5
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object SatirlarHCTS_Ovma: TcxGridDBBandedColumn
        Caption = 'Ovma'
        DataBinding.FieldName = 'HCTS_Ovma'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 5
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object SatirlarHCTS_Yok: TcxGridDBBandedColumn
        Caption = 'Yok'
        DataBinding.FieldName = 'HCTS_Yok'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.ImageAlign = iaRight
        Properties.Images = cxImageList1
        Properties.Items = <>
        Properties.PopupAlignment = taCenter
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Position.BandIndex = 5
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object SatirlarTO_uygun: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TO_uygun'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object SatirlarTO_uygunsuz: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TO_uygunsuz'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object SatirlarTS_uygun: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TS_uygun'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object SatirlarTS_uygunsuz: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TS_uygunsuz'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object SatirlarAIO_uygun: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AIO_uygun'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object SatirlarAIO_uygunsuz: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AIO_uygunsuz'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object SatirlarVS_uygun: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VS_uygun'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object SatirlarVS_uygunsuz: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VS_uygunsuz'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object SatirlarHCTS_uygun: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HCTS_uygun'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object SatirlarHCTS_uygunsuz: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HCTS_uygunsuz'
        Visible = False
        Position.BandIndex = 5
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
    end
    object cxGridKadir1Level1: TcxGridLevel
      GridView = Satirlar
    end
  end
  object DataSource1: TDataSource
    DataSet = ADO_SahaGozetim
    Left = 152
    Top = 274
  end
  object ADO_SahaGozetim: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from EL_HijyenGozlem E'
      ' join SIRKETLER_TNM S on S.sirketKod = E.sirketKod '
      ''
      'where Tarih between '#39'20200101'#39' and '#39'20201231'#39)
    Left = 48
    Top = 272
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 128
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
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 16
    Top = 56
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
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 240
    Top = 272
    object miYeniGozetim: TMenuItem
      Tag = -9
      Caption = 'Yeni G'#246'zetim'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object miGozetimDuzenle: TMenuItem
      Tag = -11
      Caption = 'G'#246'zetim D'#252'zenle'
      ImageIndex = 31
      OnClick = cxButtonCClick
    end
    object miGozetimSil: TMenuItem
      Tag = -18
      Caption = 'G'#246'zetim Sil'
      ImageIndex = 42
      OnClick = cxButtonCClick
    end
    object miGozetimYazdir: TMenuItem
      Tag = -27
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
      object ElHijyeniGzlemFormu1: TMenuItem
        Tag = -22
        Caption = 'El Hijyeni G'#246'zlem Formu'
        OnClick = cxButtonCClick
      end
      object E2: TMenuItem
        Tag = -21
        Caption = 'El Hijyeni Uyum Raporu'
        OnClick = cxButtonCClick
      end
      object E1: TMenuItem
        Tag = -20
        Caption = 'El Hijyeni G'#246'zlem Formu (BO'#350')'
        OnClick = cxButtonCClick
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object T1: TMenuItem
      Tag = -90
      Caption = 'Tan'#305'mlamalar'
      ImageIndex = 4
      Visible = False
      OnClick = cxButtonCClick
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 120
    Top = 386
  end
  object ADOQuery1: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    CommandTimeout = 0
    Parameters = <
      item
        Name = '@id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    SQL.Strings = (
      
        'select * ,case when meslek = 1 then '#39'Hekim'#39' else case when mesle' +
        'k = 2 then '#39'Hem'#351'ire'#39' else case when meslek = 3 then '#39'Di'#287'er Sa'#287'l'#305 +
        'k'#39' else '#39'Di'#287'er'#39' end end end meslekTanim '
      
        ',case when cinsiyet = 0 then '#39'Bay'#39' else '#39'Bayan'#39' end cinsiyetTani' +
        'm '
      'from  El_HijyenGozlemDetay E'
      'where E.gozlem_id =:@id'
      '')
    Left = 48
    Top = 384
  end
  object PopupMenu2: TPopupMenu
    Left = 488
    Top = 280
    object D1: TMenuItem
      Tag = -50
      Caption = 'DOF Olu'#351'tur'
      OnClick = cxButtonCClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object B1: TMenuItem
      Tag = -60
      Caption = 'Dosya Y'#252'kle'
      OnClick = cxButtonCClick
    end
    object D2: TMenuItem
      Tag = -70
      Caption = 'Dosya Sil'
      OnClick = cxButtonCClick
    end
    object D3: TMenuItem
      Tag = -80
      Caption = 'Dosya G'#246'ster'
      OnClick = cxButtonCClick
    end
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 8913256
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000100020527094F0B4F12A00E6A17D6107A1BF6107A1BF70F6E
          18E10C5613AF062B0A5700010002000000000000000000000000000000000000
          0000010401080C5914B5148323FF22A44AFF1EBA5CFF16C460FF1AC563FF25BF
          63FF29AC54FF178627FF0D6316C9020E031D0000000000000000000000000002
          01050D5E15BF208F35FF3EC476FF2DC76FFF1DC264FF3DB26EFF3DAF6DFF2FBA
          6BFF35C874FF48C47BFF26933BFF0F7119E4020F031E00000000000000000A47
          10901B872AFF54C583FF43C87CFF30C771FF2AB967FFEEEEEEFFDADADAFF5CB1
          80FF36C875FF4BC981FF60C98DFF2B943FFF0E6416CB0001000203190633117D
          1CFA5DBC7FFF5DCA8BFF48C980FF38C876FF35B96EFFFFFFFFFFEEEEEEFF63B2
          85FF3EC879FF4EC983FF60CA8EFF6BC792FF1B862AFF062A09560A4D119C3196
          45FF72CA98FF5FCA8DFF4EC983FF42C87CFF41BA75FFFFFFFFFFEEEEEEFF6BB3
          8AFF48C97FFF54C986FF62CA8EFF6ECA95FF49AA65FF0C5814B20F6F19E050AC
          6BFF6DC793FF95BBA5FF8FB49FFF8DB49EFF93B6A2FFFBFAFAFFF4F4F4FFA6BB
          AFFF8FB49FFF91B4A0FF91B19FFF6FBB8FFF66C38BFF0E7018E510791BF551B1
          6FFF65C48EFFE8EEEBFFF6F6F6FFF6F6F6FFF8F8F8FFFEFEFEFFFEFEFEFFF9F9
          F9FFF6F6F6FFF6F6F6FFDEDEDEFF71B78FFF6ACA93FF117B1BF910771AF149B0
          69FF5EC58AFFD3E2DAFFE4EDE8FFE5EDE8FFE6EDE9FFFFFFFFFFFDFDFDFFEEF1
          EFFFE6EDE9FFE5EDE8FFDDE6E1FF70BE92FF64C98FFF107A1BF70D5F15C139A3
          56FF5BC98AFF5AC688FF64C68EFF70C796FF79B995FFFFFFFFFFF0F0F0FF92B6
          A1FF7DC79DFF71C796FF65C68FFF61C98EFF57BD7EFF0E6A17D708390D731A86
          29FF5BC98AFF5FC98CFF6FCA96FF81CBA1FF8ABEA0FFFFFFFFFFEEEEEEFF97B5
          A4FF8DCCA8FF7CCB9EFF6CCA95FF62CA8FFF359F4FFF0A4E119D010902121074
          1AEB41AC61FF62CA8FFF77CB9BFF8CCCA7FF96BEA7FFFFFFFFFFF0F0F0FF9DB6
          A8FF95CCACFF82CBA1FF6FCA96FF5EC386FF148121FF04210743000000000526
          084C117B1DF74BB46EFF77CB9BFF90CCA9FF9FC4AFFFD4DDD8FFD2DCD6FFA6C3
          B3FF95CCADFF7FCBA0FF5BC083FF1E8B30FF0B4E119E00000001000000000000
          00000526084D117B1EF63BA75AFF6DC792FF8BCCA7FFA1CDB4FFA0CDB3FF8FCC
          A9FF77CB9BFF46B16AFF158223FF0B5012A20001000300000000000000000000
          000000000000042007400F6D18DD158222FF2E9C48FF3AA85AFF3CAA5CFF35A2
          52FF1E8C31FF10751AED07340C69000000010000000000000000000000000000
          0000000000000000000000020105062909530A4C119A0D6216C70E6617CE0C56
          13AE08390D74010B021600000000000000000000000000000000}
      end>
  end
end
