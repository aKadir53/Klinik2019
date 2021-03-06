object frmUsers: TfrmUsers
  Tag = 110
  Left = 0
  Top = 0
  Caption = 'frmUsers'
  ClientHeight = 562
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 463
    Top = 16
    Width = 23
    Height = 22
  end
  object cxKullaniciAdi: TcxButtonEditKadir
    Left = 8
    Top = 22
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    Properties.OnButtonClick = cxButtonEditPropertiesButtonClick
    TabOrder = 0
    Text = 'cxKullaniciAdi'
    Visible = False
    OnEnter = cxEditEnter
    OnExit = cxEditExit
    OnKeyDown = cxTextEditBKeyDown
    indexField = False
    ListeAcTus = 0
    Width = 121
  end
  object cxPageControl1: TcxPageControl
    Left = 414
    Top = 0
    Width = 470
    Height = 562
    Align = alRight
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.Style = 11
    ClientRectBottom = 555
    ClientRectLeft = 3
    ClientRectRight = 463
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = #304#351'lem Yetkiler'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 460
        Height = 529
        Align = alClient
        TabOrder = 0
        object cxGridUserSet: TcxGridDBTableView
          PopupMenu = PopupMenu2
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = UserSettings_DataSource
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          DataController.OnFilterRecord = cxGridUserSetDataControllerFilterRecord
          FilterRow.InfoText = #304#351'lem Aramak i'#231'in Yaz'#305'n'#305'z...'
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.GroupRowHeight = 25
          Styles.FilterBox = cxStyle2
          object cxGridUserSetModul: TcxGridDBColumn
            DataBinding.FieldName = 'Modul'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            GroupIndex = 0
            Options.Editing = False
            Styles.Content = cxStyle1
          end
          object cxGridUserSetIslem: TcxGridDBColumn
            DataBinding.FieldName = 'Islem'
            Options.Editing = False
          end
          object cxGridUserSetIzin: TcxGridDBColumn
            DataBinding.FieldName = 'Izin'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnEditValueChanged = cxGridUserSetIzinPropertiesEditValueChanged
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridUserSet
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Men'#252' Yetkileri'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 460
        Height = 529
        Align = alClient
        TabOrder = 0
        object cxGridMenuSet: TcxGridDBTableView
          DataController.DataModeController.DetailInSQLMode = True
          DataController.DataSource = User_Menu_Settings_DataSource
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = 'Arama Yapmak '#304#231'in men'#252' bilgisini yaz'#305'n'#305'z...'
          FilterRow.SeparatorColor = 8454143
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Styles.FilterBox = cxStyle2
          object cxGridMenuSetCOLUMN1: TcxGridDBColumn
            DataBinding.FieldName = 'COLUMN1'
            Visible = False
          end
          object cxGridMenuSetMainMenu: TcxGridDBColumn
            Caption = 'Men'#252
            DataBinding.FieldName = 'Menu'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 240
          end
          object cxGridMenuSetKAYITID: TcxGridDBColumn
            DataBinding.FieldName = 'KAYITID'
            Visible = False
          end
          object cxGridMenuSetCOLUMN2: TcxGridDBColumn
            Caption = 'G'#246'ster / Gizle'
            DataBinding.FieldName = 'Izin'
            PropertiesClassName = 'TcxRadioGroupProperties'
            Properties.Columns = 2
            Properties.Items = <
              item
                Caption = 'G'#246'ster'
                Value = '1'
              end
              item
                Caption = 'Gizle'
                Value = '0'
              end>
            Properties.OnEditValueChanged = cxGridMenuSetCOLUMN2PropertiesEditValueChanged
            HeaderAlignmentHorz = taCenter
            Width = 126
          end
          object cxGridMenuSetColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'KApsam'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGridMenuSet
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Kullan'#305'c'#305'n'#305'n Firmalar'#305
      ImageIndex = 2
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'cxGroupBox1'
        PanelStyle.Active = True
        TabOrder = 0
        Height = 38
        Width = 460
        object cxButtonKadirTaniSil: TcxButtonKadir
          Left = 44
          Top = 2
          Width = 42
          Height = 34
          Align = alLeft
          Caption = 'Sil'
          TabOrder = 0
          OnClick = cxButtonKadirTaniEkleClick
          NewButtonVisible = False
        end
        object cxButtonKadirTaniEkle: TcxButtonKadir
          Tag = 1
          Left = 2
          Top = 2
          Width = 42
          Height = 34
          Align = alLeft
          Caption = 'Ekle'
          TabOrder = 1
          OnClick = cxButtonKadirTaniEkleClick
          NewButtonVisible = False
        end
      end
    end
  end
  object txtSifreTekrar: TcxTextEdit
    Left = 8
    Top = 49
    TabOrder = 2
    Width = 121
  end
  object userSkin: TcxComboBox
    Left = 144
    Top = 21
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      'Blue'
      'Caramel'
      'Coffee'
      'iMaginary'
      'Lilian'
      'LiquidSky'
      'LondonLiquidSky'
      'McSkin'
      'MoneyTwins'
      '')
    Properties.OnChange = userSkinPropertiesChange
    TabOrder = 3
    Width = 121
  end
  object pnlUserGrup: TcxGroupBox
    Left = 8
    Top = 97
    Caption = 'Kullan'#305'c'#305' Gruplar'#305
    TabOrder = 4
    Height = 296
    Width = 400
    object cxGrid3: TcxGrid
      Left = 3
      Top = 43
      Width = 394
      Height = 243
      Align = alClient
      TabOrder = 0
      object cxGridUserGrup: TcxGridDBTableView
        Navigator.Buttons.First.Visible = False
        Navigator.Buttons.PriorPage.Visible = False
        Navigator.Buttons.Prior.Visible = False
        Navigator.Buttons.Next.Visible = False
        Navigator.Buttons.NextPage.Visible = False
        Navigator.Buttons.Last.Visible = False
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.Visible = True
        OnFocusedRecordChanged = cxGridUserGrupFocusedRecordChanged
        DataController.DataModeController.DetailInSQLMode = True
        DataController.DataModeController.GridMode = True
        DataController.DataSource = UserGroup_DataSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        NewItemRow.InfoText = 'Yeni Grup Eklemek '#304#231'in Girin...'
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ScrollBars = ssNone
        OptionsView.GroupByBox = False
        object cxGridUserGrupKODU: TcxGridDBColumn
          DataBinding.FieldName = 'KODU'
          Visible = False
        end
        object cxGridUserGrupADI: TcxGridDBColumn
          Caption = 'Grup Tan'#305'm'#305
          DataBinding.FieldName = 'ADI'
          HeaderAlignmentHorz = taCenter
          Width = 269
        end
        object cxGridUserGrupSifreDegistirmePeryod: TcxGridDBColumn
          Caption = #350'ifre De'#287'i'#351'.G'#252'n'
          DataBinding.FieldName = 'SifreDegistirmePeryod'
          Width = 81
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridUserGrup
      end
    end
    object TcxGroupBox
      Left = 3
      Top = 15
      Align = alTop
      PanelStyle.Active = True
      TabOrder = 1
      Height = 28
      Width = 394
      object txtYeniGrup: TcxTextEditKadir
        Tag = -100
        Left = 70
        Top = 2
        Align = alClient
        Properties.Alignment.Vert = taVCenter
        TabOrder = 0
        Width = 263
      end
      object cxLabel1: TcxLabel
        Left = 2
        Top = 2
        Align = alLeft
        Caption = 'Yeni Grup Ad'#305
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorX = 36
        AnchorY = 14
      end
      object btnGrupEkle: TcxButtonKadir
        Tag = 50
        Left = 333
        Top = 2
        Width = 59
        Height = 24
        Align = alRight
        Caption = '&Ekle'
        TabOrder = 2
        TabStop = False
        OnClick = btnGrupEkleClick
        NewButtonVisible = False
      end
    end
  end
  object User_Spliter: TcxSplitter
    Left = 406
    Top = 0
    Width = 8
    Height = 562
    AlignSplitter = salRight
    Control = cxPageControl1
  end
  object UserSettings: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    BeforePost = UserSettingsBeforePost
    TableName = 'UserSettings'
    Left = 40
    Top = 176
  end
  object UserSettings_DataSource: TDataSource
    DataSet = UserSettings
    Left = 88
    Top = 184
  end
  object User_Menu_Settings_DataSource: TDataSource
    DataSet = User_Menu_Settings
    Left = 160
    Top = 336
  end
  object User_Menu_Settings_: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    BeforePost = UserSettingsBeforePost
    TableName = 'UserMenuSettings'
    Left = 56
    Top = 272
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 328
    Top = 8
    object Kapat1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxKaydetClick
    end
    object MenucxYeni: TMenuItem
      Tag = 2
      Caption = 'Yeni'
      ImageIndex = 30
      OnClick = cxKaydetClick
    end
    object MenucxKaydet: TMenuItem
      Caption = 'Kaydet'
      ImageIndex = 31
      OnClick = cxKaydetClick
    end
    object MenucxIptal: TMenuItem
      Tag = 1
      Caption = 'Sil'
      ImageIndex = 33
      OnClick = cxKaydetClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object UserGroup_Menu_Settings_DataSource: TDataSource
    DataSet = UserGroup_Menu_Settings
    Left = 208
    Top = 480
  end
  object UserGroupSettings_DataSource: TDataSource
    DataSet = UserGroupSettings
    Left = 56
    Top = 480
  end
  object UserGroup: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterPost = UserGroupAfterPost
    BeforeDelete = UserGroupBeforeDelete
    AfterDelete = UserGroupAfterDelete
    OnDeleteError = UserGroupDeleteError
    TableName = 'UserGroups'
    Left = 264
    Top = 192
  end
  object UserGroup_DataSource: TDataSource
    DataSet = UserGroup
    Left = 328
    Top = 200
  end
  object UserGroup_Menu_Settings: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from UserGroupMenuSettings where kullanici = '#39'1'#39)
    Left = 232
    Top = 416
  end
  object UserGroupSettings: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from UserGroupMenuSettings where kullanici = '#39'1'#39)
    Left = 72
    Top = 416
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 288
    Top = 8
    object S1: TMenuItem
      Tag = 1
      Caption = 'T'#252'm Sekmeleri A'#231
      OnClick = S1Click
    end
    object T1: TMenuItem
      Caption = 'T'#252'm Sekmeleri Kapat'
      OnClick = S1Click
    end
  end
  object User_Menu_Settings: TADOQuery
    Connection = DATALAR.ADOConnection2
    Parameters = <>
    SQL.Strings = (
      'select Kullanici,MI.Menu,UMS.ID,Izin,LisansTip'
      ' from UserMenuSettings UMS'
      'join MenuIslem MI on MI.KAYITID = UMS.ID'
      '')
    Left = 56
    Top = 336
  end
  object List: TListeAc
    TColcount = 0
    TColsW = '20,300'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'kod'
      'tanimi')
    KolonBasliklari.Strings = (
      'Kod'
      'Risk Tanimi')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'lilian'
    Grup = False
    GrupCol = 0
    Left = 280
    Top = 56
  end
end
