object frmTedaviBilgisi: TfrmTedaviBilgisi
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmTedaviBilgisi'
  ClientHeight = 517
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHastaGelis: TcxGroupBox
    Left = 0
    Top = 0
    Align = alLeft
    Caption = '.'
    TabOrder = 0
    Height = 517
    Width = 249
    object LeftPanelcxPageControl: TcxPageControl
      Left = 3
      Top = 161
      Width = 243
      Height = 346
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabHastaListe
      Properties.TabPosition = tpBottom
      ClientRectBottom = 316
      ClientRectLeft = 3
      ClientRectRight = 236
      ClientRectTop = 3
      object cxTabHastaListe: TcxTabSheet
        Caption = 'Hasta Liste'
        ImageIndex = 0
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = 'Hasta Listesi  [ Salon Bilgisi ]'
          TabOrder = 0
          Height = 51
          Width = 233
          object cxSalonBilgisi: TcxComboBox
            Tag = -100
            Left = 2
            Top = -2
            Align = alClient
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              ''
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9'
              '10')
            Properties.OnChange = cxSalonBilgisiPropertiesChange
            TabOrder = 0
            ExplicitWidth = 227
            Width = 229
          end
        end
        object cxGrid2: TcxGrid
          Left = 0
          Top = 51
          Width = 233
          Height = 262
          Align = alClient
          TabOrder = 1
          object cxGridHastaListesi: TcxGridDBTableView
            OnDblClick = cxGridHastaListesiDblClick
            OnFocusedRecordChanged = cxGridHastaListesiFocusedRecordChanged
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object dosyaNoColum: TcxGridDBColumn
              DataBinding.FieldName = 'dosyaNo'
              Visible = False
            end
            object HastaAdi: TcxGridDBColumn
              Caption = 'Hasta Ad'#305
              DataBinding.FieldName = 'HASTAADI'
              Width = 101
            end
            object HastaSoyadi: TcxGridDBColumn
              Caption = 'Soyad'#305
              DataBinding.FieldName = 'HASTASOYADI'
              Width = 118
            end
            object cxGridHastaListesiColumn4: TcxGridDBColumn
              DataBinding.FieldName = 'Salon'
              Visible = False
            end
            object TC: TcxGridDBColumn
              DataBinding.FieldName = 'TCKIMLIKNO'
              Visible = False
            end
            object ProvizyonTarihi: TcxGridDBColumn
              DataBinding.FieldName = 'tarih'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridHastaListesi
          end
        end
      end
      object cxTabHastaGelis: TcxTabSheet
        Caption = 'Hastan'#305'n Geli'#351'leri'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object cxGroupBox2: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = 'Gelisler'
          TabOrder = 0
          Height = 313
          Width = 233
          object cxGrid1: TcxGrid
            Left = 2
            Top = -2
            Width = 229
            Height = 313
            Align = alClient
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = 15
            ExplicitWidth = 227
            ExplicitHeight = 288
            object cxGridHastaGelis: TcxGridDBTableView
              OnFocusedRecordChanged = cxGridHastaGelisFocusedRecordChanged
              DataController.DataModeController.GridMode = True
              DataController.DataSource = AdoHastaGelisDataSource
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object Tarih: TcxGridDBColumn
                DataBinding.FieldName = 'Tarih'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
                Width = 99
              end
              object GelisNo: TcxGridDBColumn
                Caption = #304#351'lem No'
                DataBinding.FieldName = 'GelisNo'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                Width = 44
              end
              object TakIpNo: TcxGridDBColumn
                Caption = #304#351'lem Turu'
                DataBinding.FieldName = 'TEDAVITURU'
                PropertiesClassName = 'TcxTextEditProperties'
                HeaderAlignmentHorz = taCenter
                Width = 77
              end
              object cxGridHastaGelisColumn1: TcxGridDBColumn
                Caption = 'Protokol No'
                DataBinding.FieldName = 'PROTOKOLNO'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.Alignment.Vert = taVCenter
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGridHastaGelis
            end
          end
        end
      end
    end
    object fotoPanel: TcxGroupBox
      Left = 3
      Top = 15
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 1
      Height = 146
      Width = 243
      object foto: TcxDBImage
        Left = 2
        Top = 2
        Align = alLeft
        Anchors = []
        DataBinding.DataField = 'foto'
        Properties.GraphicClassName = 'TJPEGImage'
        TabOrder = 0
        Height = 142
        Width = 122
      end
      object ad: TcxDBLabel
        Left = 127
        Top = 5
        DataBinding.DataField = 'HASTAADI'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 21
        Width = 114
        AnchorX = 184
        AnchorY = 16
      end
      object soyad: TcxDBLabel
        Left = 127
        Top = 25
        DataBinding.DataField = 'HASTASOYADI'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 21
        Width = 114
        AnchorX = 184
        AnchorY = 36
      end
      object yas: TcxDBLabel
        Left = 127
        Top = 45
        DataBinding.DataField = 'yas'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Height = 21
        Width = 114
        AnchorX = 184
        AnchorY = 56
      end
    end
  end
  object AdoHastaGelis: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    Left = 344
    Top = 176
  end
  object AdoHastaGelisDataSource: TDataSource
    DataSet = AdoHastaGelis
    Left = 352
    Top = 88
  end
end
