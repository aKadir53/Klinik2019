object frmTopluHastaRecete: TfrmTopluHastaRecete
  Left = 389
  Top = 0
  Caption = 'frmTopluHastaRecete'
  ClientHeight = 669
  ClientWidth = 1298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Height = 669
    ExplicitLeft = 320
    ExplicitTop = 65
    ExplicitHeight = 610
  end
  object Panel2: TPanel
    Left = 3
    Top = 0
    Width = 1295
    Height = 669
    Align = alClient
    TabOrder = 0
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 1
      Align = alClient
      PanelStyle.Active = True
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.Shadow = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 667
      Width = 1293
      object cxPageControl1: TcxPageControl
        Left = 2
        Top = 2
        Width = 1289
        Height = 663
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet1
        ClientRectBottom = 656
        ClientRectLeft = 3
        ClientRectRight = 1282
        ClientRectTop = 27
        object cxTabSheet1: TcxTabSheet
          Caption = 'Doktor Re'#231'ete Listesi'
          ImageIndex = 0
          object cxGrid1: TcxGridKadir
            Left = 0
            Top = 0
            Width = 1279
            Height = 629
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
            ExcelFileName = 'Re'#231'eteListesi'
            ExceleGonder = True
            PopupForm = False
            object gridHastalar: TcxGridDBBandedTableView
              PopupMenu = PopupMenu1
              DataController.DataSource = DataSource1
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.Visible = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.DataRowHeight = 30
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 32
              Bands = <
                item
                  Caption = 'Hasta Bilgileri'
                  FixedKind = fkLeft
                  Styles.Content = cxStyle3
                  Width = 780
                end>
              object gridHastalarTCKIMLIKNO: TcxGridDBBandedColumn
                Caption = 'TC Kimlik No'
                DataBinding.FieldName = 'TCKIMLIKNO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 86
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object gridHastalardosyaNo: TcxGridDBBandedColumn
                Caption = 'DosyaNo'
                DataBinding.FieldName = 'dosyaNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 57
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object gridHastalargelisNo: TcxGridDBBandedColumn
                Caption = 'GNo'
                DataBinding.FieldName = 'gelisNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 55
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object gridHastalardoktor: TcxGridDBBandedColumn
                Caption = 'Doktor'
                DataBinding.FieldName = 'DoktorAdi'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 140
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object gridHastalarTarih: TcxGridDBBandedColumn
                Caption = 'Re'#231'ete Tarihi'
                DataBinding.FieldName = 'Tarih'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Editing = False
                Width = 91
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object gridHastalarHASTAADI: TcxGridDBBandedColumn
                Caption = 'Hasta Ad'#305
                DataBinding.FieldName = 'HASTAADI'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 105
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object gridHastalarHASTASOYADI: TcxGridDBBandedColumn
                Caption = 'Soyad'#305
                DataBinding.FieldName = 'HASTASOYADI'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 107
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object gridHastalarColumn1: TcxGridDBBandedColumn
                Caption = 'ReceteID'
                DataBinding.FieldName = 'id'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 53
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object gridHastalarColumn2: TcxGridDBBandedColumn
                Caption = 'Doktor'
                DataBinding.FieldName = 'doktor'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object gridHastalarColumn3: TcxGridDBBandedColumn
                Caption = 'E-ReceteNo'
                DataBinding.FieldName = 'ereceteNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 62
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object gridHastalarColumn4: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Ev_Tel1'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object gridHastalarColumn5: TcxGridDBBandedColumn
                Caption = 'SMS'
                DataBinding.FieldName = 'HastaBildirim'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                Properties.Images = DATALAR.imag24png
                Properties.Items = <
                  item
                    ImageIndex = 94
                    Value = True
                  end>
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 26
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = gridHastalar
            end
          end
        end
        object Log: TcxTabSheet
          Caption = 'Log'
          ImageIndex = 1
          object txtLog: TcxMemo
            Left = 0
            Top = 0
            Align = alClient
            Lines.Strings = (
              'txtLog')
            TabOrder = 0
            Height = 629
            Width = 1279
          end
        end
      end
    end
  end
  object ADO_Recete: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = ADO_ReceteAfterScroll
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      ''
      
        'exec sp_DoktorReceteList @doktor = '#39'0001'#39',@tarih1 = '#39'2020-02-11'#39 +
        ',@tarih2 = '#39'2020-02-12'#39',@sirketKod = '#39'000005'#39)
    Left = 376
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADO_Recete
    Left = 448
    Top = 120
  end
  object DyobKodlar: TADOTable
    Connection = DATALAR.ADOConnection2
    TableName = 'DyobKods'
    Left = 664
    Top = 232
  end
  object SaveDialog1: TSaveDialog
    Left = 712
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 368
    Top = 232
    object H2: TMenuItem
      Caption = 'Hasta Kart'#305
      ImageIndex = 44
      OnClick = H2Click
    end
    object R1: TMenuItem
      Tag = -7
      Caption = 'Re'#231'ete'
      ImageIndex = 97
      OnClick = cxButtonCClick
    end
    object Y1: TMenuItem
      Tag = -12
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object S1: TMenuItem
      Tag = -13
      Caption = 'SMS G'#246'nder'
      ImageIndex = 94
      OnClick = cxButtonCClick
    end
    object ExceleGnder1: TMenuItem
      Tag = 9997
      Caption = 'Excel'#39'e G'#246'nder'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
    object M1: TMenuItem
      Caption = 'Medulaya G'#246'nder'
      ImageIndex = 76
      object DSVerileriniGnder1: TMenuItem
        Tag = -11
        Caption = 'Re'#231'ete '#304'mzala G'#246'nder'
        ImageIndex = 76
        OnClick = cxButtonCClick
      end
      object R2: TMenuItem
        Tag = -100
        Caption = 'Re'#231'etem'
        ImageIndex = 122
        OnClick = cxButtonCClick
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 200
    Top = 184
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 8454016
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 72
    Top = 352
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 112
    Top = 352
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
end
