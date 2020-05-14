object frmPaket: TfrmPaket
  Left = 450
  Top = 119
  BorderStyle = bsDialog
  Caption = 'Klinik2019 Update - Revizyon'
  ClientHeight = 588
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 556
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtMemo1: TMemo
    Left = 376
    Top = 512
    Width = 81
    Height = 17
    Lines.Strings = (
      'txtMemo1')
    TabOrder = 0
    Visible = False
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 53
    Width = 664
    Height = 500
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet4
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Lilian'
    ClientRectBottom = 493
    ClientRectLeft = 3
    ClientRectRight = 657
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = 'G'#252'ncelleme Komutlar'#305
      ImageIndex = 0
      object SpeedButton2: TSpeedButton
        Left = 3
        Top = 272
        Width = 89
        Height = 26
        Caption = 'DosyaDan Ekle'
        Visible = False
        OnClick = SpeedButton2Click
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 654
        Height = 241
        Align = alTop
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 266
        Width = 654
        Height = 201
        Align = alClient
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 241
        Width = 654
        Height = 25
        DataSource = DataSource1
        Align = alTop
        Kind = dbnHorizontal
        TabOrder = 2
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Rapor Dizayn'
      ImageIndex = 1
      object DBMemo2: TDBMemo
        Left = 0
        Top = 266
        Width = 654
        Height = 201
        Align = alClient
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 241
        Width = 654
        Height = 25
        DataSource = DataSource2
        Align = alTop
        Kind = dbnHorizontal
        TabOrder = 1
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 654
        Height = 241
        Align = alTop
        DataSource = DataSource2
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Klinik2019Dpr'
      ImageIndex = 2
      object Klinik2019Dpr: TMemo
        Left = 0
        Top = 0
        Width = 654
        Height = 467
        Align = alClient
        Lines.Strings = (
          'Klinik2019Dpr')
        TabOrder = 0
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Kullan'#305'c'#305' Veritabanlar'#305
      ImageIndex = 3
      object Splitter1: TSplitter
        Left = 389
        Top = 35
        Height = 432
        ExplicitLeft = 488
        ExplicitTop = 232
        ExplicitHeight = 100
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 654
        Height = 35
        Align = alTop
        TabOrder = 0
        object Button1: TButton
          Left = 3
          Top = 4
          Width = 75
          Height = 25
          Caption = 'Listele'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 104
          Top = 4
          Width = 121
          Height = 25
          Caption = 'Se'#231'ili SQL Uygula'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 35
        Width = 389
        Height = 432
        Align = alLeft
        Caption = 'Panel4'
        TabOrder = 1
        object DBGrid3: TDBGrid
          Left = 1
          Top = 1
          Width = 387
          Height = 430
          Align = alClient
          DataSource = DataSource3
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object txtLog: TMemo
        Left = 392
        Top = 35
        Width = 262
        Height = 432
        Align = alClient
        Lines.Strings = (
          '')
        TabOrder = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 53
    Align = alTop
    TabOrder = 2
    object SpeedButton4: TSpeedButton
      Left = 4
      Top = 2
      Width = 97
      Height = 26
      Caption = 'Ba'#287'lan'
      OnClick = SpeedButton4Click
    end
    object SpeedButton1: TSpeedButton
      Left = 104
      Top = 2
      Width = 65
      Height = 26
      Caption = 'Paket '#199#305'kar'
      Enabled = False
      Visible = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 188
      Top = 2
      Width = 337
      Height = 26
      Caption = 'Dosyalar'#305' Sunucuya G'#246'nder'
      Enabled = False
      OnClick = SpeedButton3Click
    end
    object btPanodanYapistir: TSpeedButton
      Left = 535
      Top = 2
      Width = 126
      Height = 26
      Caption = 'Panodan SQL Yap'#305#351't'#305'r'
      Enabled = False
      OnClick = btPanodanYapistirClick
    end
    object label111: TLabel
      Left = 535
      Top = 34
      Width = 67
      Height = 13
      Caption = 'ID Art'#305#351' miktar'#305
      FocusControl = SpinEdit1
    end
    object btnGit: TSpeedButton
      Left = 104
      Top = 2
      Width = 65
      Height = 26
      Caption = 'Git....'
      Enabled = False
      Visible = False
      OnClick = btnGitClick
    end
    object Label2: TLabel
      Left = 143
      Top = 34
      Width = 38
      Height = 13
      Caption = 'App.Ver'
    end
    object Label3: TLabel
      Left = 339
      Top = 34
      Width = 53
      Height = 13
      Caption = 'DB.Update'
    end
    object Label4: TLabel
      Left = 229
      Top = 34
      Width = 63
      Height = 13
      Caption = 'DLL Versiyon'
    end
    object Label5: TLabel
      Left = 440
      Top = 34
      Width = 18
      Height = 13
      Caption = 'yvK'
    end
    object ComboBox1: TComboBox
      Left = 107
      Top = 4
      Width = 70
      Height = 21
      ItemIndex = 1
      TabOrder = 0
      Text = 'DIYALIZ'
      OnChange = ComboBox1Change
      Items.Strings = (
        ''
        'DIYALIZ')
    end
    object txtVersiyon: TMemo
      Left = 188
      Top = 28
      Width = 40
      Height = 23
      Color = clYellow
      Lines.Strings = (
        '')
      TabOrder = 1
    end
    object txtRev: TMemo
      Left = 397
      Top = 28
      Width = 40
      Height = 23
      Color = clYellow
      Lines.Strings = (
        '')
      TabOrder = 2
    end
    object SpinEdit1: TSpinEdit
      Left = 613
      Top = 30
      Width = 46
      Height = 22
      Hint = 'araya script sokmak laz'#305'm gelirse atlamas'#305' i'#231#252'n'
      MaxValue = 3
      MinValue = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Value = 2
    end
    object cbSonBirAy: TCheckBox
      Left = 6
      Top = 30
      Width = 92
      Height = 17
      Caption = 'Son 1 ay'#305' getir'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 4
      OnClick = cbSonBirAyClick
    end
    object txtDLLVersiyon: TMemo
      Left = 296
      Top = 28
      Width = 40
      Height = 23
      Color = clYellow
      Lines.Strings = (
        '')
      TabOrder = 5
    end
    object yvK: TMemo
      Left = 462
      Top = 28
      Width = 62
      Height = 23
      Color = clYellow
      Lines.Strings = (
        '')
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 553
    Width = 664
    Height = 35
    Align = alBottom
    TabOrder = 3
    Visible = False
    object progressFilename: TLabel
      Left = 1
      Top = 1
      Width = 662
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = '...'
      Transparent = False
      ExplicitWidth = 9
    end
    object pb: TProgressBar
      Left = 1
      Top = 16
      Width = 662
      Height = 18
      Align = alBottom
      TabOrder = 0
    end
  end
  object DataSource1: TDataSource
    DataSet = table1
    Left = 488
    Top = 104
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.sql'
    InitialDir = 'C:\NoktaDiyaliz\SQLBAKIM\UPDATE'
    Left = 66
    Top = 292
  end
  object IdFTP1: TIdFTP
    OnStatus = IdFTP1Status
    OnWork = IdFTP1Work
    OnWorkBegin = IdFTP1WorkBegin
    OnWorkEnd = IdFTP1WorkEnd
    OnConnected = IdFTP1Connected
    IPVersion = Id_IPv4
    Host = 'ftp.noktayazilim.net'
    Passive = True
    Password = '53Noktanokta'
    Username = 'mavinokta'
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 0
    Left = 330
    Top = 140
  end
  object table1: TADOQuery
    Connection = DATALAR.Master
    OnNewRecord = table1NewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from UPDATE_CMD'
      'where Modul = '#39'K'#39
      'order by ID')
    Left = 568
    Top = 104
  end
  object DataSource2: TDataSource
    DataSet = ADO_Rapor_Dizayn
    Left = 488
    Top = 232
  end
  object ADO_Rapor_Dizayn: TADOQuery
    Connection = DATALAR.Hedef
    Parameters = <>
    SQL.Strings = (
      'select * from RaporlarDizayn')
    Left = 576
    Top = 232
  end
  object ado_sql: TADOQuery
    Connection = DATALAR.Master
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select SLVV s,SLXX u ,SLYY p , SLZZ db from parametreler where S' +
        'LK = '#39'GA'#39' and SLB = '#39'00'#39)
    Left = 64
    Top = 232
  end
  object HTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 280
    Top = 144
  end
  object DataSource3: TDataSource
    DataSet = ADO_Databases
    Left = 288
    Top = 272
  end
  object ADO_Databases: TADOQuery
    Connection = DATALAR.Master
    OnNewRecord = table1NewRecord
    Parameters = <>
    SQL.Strings = (
      'select * from sys.sysdatabases'
      'where sid = 0xDDA391E50F3F8A43AC54F20D2480ADCC')
    Left = 320
    Top = 272
  end
end
