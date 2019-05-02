object frmGunSonuOzet: TfrmGunSonuOzet
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'G'#252'n Sonu '#246'zet'
  ClientHeight = 570
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Mcskin'
    StyleDisabled.LookAndFeel.SkinName = 'Mcskin'
    StyleFocused.LookAndFeel.SkinName = 'Mcskin'
    StyleHot.LookAndFeel.SkinName = 'Mcskin'
    TabOrder = 0
    Height = 41
    Width = 598
    object btnList: TcxButton
      Left = 244
      Top = 2
      Width = 70
      Height = 37
      Align = alLeft
      Caption = 'Listele'
      TabOrder = 0
      OnClick = btnListClick
    end
    object SifirGoster: TcxCheckBox
      Left = 461
      Top = 20
      Caption = 'S'#305'f'#305'r Olanlar'#305' Dahil Etme'
      TabOrder = 1
      Width = 169
    end
    object btnGonder: TcxButton
      Left = 314
      Top = 2
      Width = 70
      Height = 37
      Align = alLeft
      Caption = 'G'#246'nder'
      TabOrder = 2
      OnClick = btnGonderClick
    end
    object txtTarih: TcxDateEditKadir
      Left = 123
      Top = 2
      Align = alLeft
      EditValue = 41456d
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.DateOnError = deToday
      Properties.ImmediateDropDownWhenKeyPressed = True
      Properties.OnChange = txtTarihPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      BosOlamaz = False
      ValueTip = tvString
      Width = 121
    end
    object txtTarih2: TcxDateEditKadir
      Left = 2
      Top = 2
      Align = alLeft
      EditValue = 41456d
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.DateOnError = deToday
      Properties.ImmediateDropDownWhenKeyPressed = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      BosOlamaz = False
      ValueTip = tvString
      Width = 121
    end
    object btnSorgula: TcxButton
      Tag = 1
      Left = 384
      Top = 2
      Width = 70
      Height = 37
      Align = alLeft
      Caption = 'Sorgula'
      TabOrder = 5
      OnClick = btnGonderClick
    end
    object chkTumAy: TcxCheckBox
      Left = 461
      Top = 2
      Caption = 'T'#252'm Ay'
      TabOrder = 6
      Width = 169
    end
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 41
    Width = 598
    Height = 529
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet3
    ClientRectBottom = 522
    ClientRectLeft = 3
    ClientRectRight = 591
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = #214'zet Veri'
      ImageIndex = 0
      object cxGrid1: TcxGridKadir
        Left = 0
        Top = 0
        Width = 588
        Height = 496
        Align = alClient
        TabOrder = 0
        ExceleGonder = False
        object gridListe: TcxGridDBTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = 'Listelenen : #'
              Kind = skCount
              Column = gridListeAdi
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object gridListeAdi: TcxGridDBColumn
            Caption = #304#351'lem Referans Tan'#305'm'#305
            DataBinding.FieldName = 'Adi'
            HeaderAlignmentHorz = taCenter
            Width = 492
          end
          object gridListesayi: TcxGridDBColumn
            Caption = #304#351'lem Adet'
            DataBinding.FieldName = 'sayi'
            HeaderAlignmentHorz = taCenter
          end
          object gridListekodu: TcxGridDBColumn
            DataBinding.FieldName = 'kodu'
            Visible = False
          end
          object gridListeColumn1: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih'
            Visible = False
            GroupIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = gridListe
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Mesaj XML'
      ImageIndex = 1
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 0
        Width = 588
        Height = 496
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 590
        ExplicitHeight = 416
        ControlData = {
          4C000000C63C0000433300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Log'
      ImageIndex = 2
      object cxGrid2: TcxGridKadir
        Left = 0
        Top = 0
        Width = 588
        Height = 496
        Align = alClient
        TabOrder = 0
        ExceleGonder = False
        object cxGridGonderimLog: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataSource = DataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object cxGridGonderimLogtarih1: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih1'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridGonderimLogtarih2: TcxGridDBColumn
            Caption = 'Tarih'
            DataBinding.FieldName = 'tarih2'
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object cxGridGonderimLogsonucMesaj: TcxGridDBColumn
            DataBinding.FieldName = 'sonucMesaj'
            PropertiesClassName = 'TcxMemoProperties'
            Properties.ScrollBars = ssBoth
            HeaderAlignmentHorz = taCenter
            Width = 350
          end
          object cxGridGonderimLogColumn1: TcxGridDBColumn
            Caption = 'G'#246'nderim Zaman'#305
            DataBinding.FieldName = 'date_create'
            Width = 90
          end
          object cxGridGonderimLogColumn2: TcxGridDBColumn
            Caption = 'Send User'
            DataBinding.FieldName = 'sendUser'
            Width = 80
          end
          object cxGridGonderimLogid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Width = 50
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridGonderimLog
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Sorgu Mesaj'
      ImageIndex = 3
      object WebBrowser2: TWebBrowser
        Left = 0
        Top = 0
        Width = 588
        Height = 496
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 590
        ExplicitHeight = 416
        ControlData = {
          4C000000C63C0000433300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Sorgu Sonu'#231' XML'
      ImageIndex = 4
      object WebBrowser3: TWebBrowser
        Left = 0
        Top = 0
        Width = 588
        Height = 496
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 590
        ExplicitHeight = 416
        ControlData = {
          4C000000C63C0000433300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object XMLDocument1: TXMLDocument
    Left = 536
    Top = 136
    DOMVendorDesc = 'MSXML'
  end
  object DataSource2: TDataSource
    DataSet = Ado_GunSonuOzetLog
    Left = 72
    Top = 192
  end
  object Ado_GunSonuOzetLog: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'GunSonuOzetGonderimLog'
    Left = 160
    Top = 192
  end
  object XMLDocument2: TXMLDocument
    Left = 536
    Top = 192
    DOMVendorDesc = 'MSXML'
  end
  object XMLDocument3: TXMLDocument
    Left = 536
    Top = 256
    DOMVendorDesc = 'MSXML'
  end
end
