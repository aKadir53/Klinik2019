object frmUzmanMuayene: TfrmUzmanMuayene
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'frmUzmanMuayene'
  ClientHeight = 571
  ClientWidth = 986
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
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 0
    Width = 8
    Height = 571
  end
  object chkSistemSorgu: TcxCheckListBox
    Left = 35
    Top = 39
    Width = 846
    Height = 178
    Columns = 4
    Items = <
      item
        Text = 'Ba'#351' A'#287'r'#305's'#305
      end
      item
        Tag = 1
        Text = 'Ba'#351' D'#246'nmesi'
      end
      item
        Tag = 2
        Text = #304#351'itme Kayb'#305
      end
      item
        Tag = 3
        Text = 'Kulak '#199#305'nlamas'#305
      end
      item
        Tag = 4
        Text = 'Kulak Ak'#305'nt'#305's'#305
      end
      item
        Tag = 5
        Text = 'Burun Kanamas'#305
      end
      item
        Tag = 6
        Text = 'G'#246'rme Kayb'#305
      end
      item
        Tag = 7
        Text = #199'ift G'#246'rme'
      end
      item
        Tag = 8
        Text = 'Fotofobi'
      end
      item
        Tag = 9
        Text = 'G'#246'zlerde A'#287'r'#305
      end
      item
        Tag = 10
        Text = #214'ks'#252'r'#252'k'
      end
      item
        Tag = 11
        Text = 'Bo'#287'az Ak'#305'nt'#305's'#305
      end
      item
        Tag = 12
        Text = 'Gece Terlemesi'
      end
      item
        Tag = 13
        Text = 'Balgam'
      end
      item
        Tag = 14
        Text = 'Hemoptizi'
      end
      item
        Tag = 15
        Text = 'PND'
      end
      item
        Tag = 16
        Text = #199'arp'#305'nt'#305
      end
      item
        Tag = 17
        Text = 'Efor Dispnesi'
      end
      item
        Tag = 18
        Text = 'Meme Ak'#305'nt'#305's'#305
      end
      item
        Tag = 19
        Text = 'Ortopne'
      end
      item
        Tag = 20
        Text = 'Meme A'#287'r'#305's'#305
      end
      item
        Tag = 21
        Text = 'G'#246#287#252's A'#287'r'#305's'#305
      end
      item
        Tag = 22
        Text = 'Bulant'#305
      end
      item
        Tag = 23
        Text = #304#351'tahs'#305'zl'#305'k'
      end
      item
        Tag = 24
        Text = 'Refl'#252
      end
      item
        Tag = 25
        Text = 'Kusma'
      end
      item
        Tag = 26
        Text = 'Dispepsi'
      end
      item
        Tag = 27
        Text = 'Meteorizm'
      end
      item
        Tag = 28
        Text = 'Diyare'
      end
      item
        Tag = 29
        Text = 'Konstipasyon'
      end
      item
        Tag = 30
        Text = 'Melena'
      end
      item
        Tag = 31
        Text = 'Kar'#305'n A'#287'r'#305's'#305
      end
      item
        Tag = 32
        Text = 'Hematemez'
      end
      item
        Tag = 33
        Text = 'Kilo Kayb'#305
      end
      item
        Tag = 34
        Text = 'Hemoroid'
      end
      item
        Tag = 35
        Text = 'Hemoto'#231'ezya'
      end
      item
        Tag = 36
        Text = 'Diz'#252'r'#252
      end
      item
        Tag = 37
        Text = 'Hemat'#252'r'#252
      end
      item
        Tag = 38
        Text = #304'mpotans'
      end
      item
        Tag = 39
        Text = 'Libido Kayb'#305
      end
      item
        Tag = 40
        Text = 'Genital Ak'#305'nt'#305
      end
      item
        Tag = 41
        Text = 'Amenore'
      end
      item
        Tag = 42
        Text = 'Hipermenore'
      end
      item
        Tag = 43
        Text = 'Dismenore'
      end
      item
        Tag = 44
        Text = 'Pete'#351'i - Purpura'
      end
      item
        Tag = 45
        Text = 'Ekimoz'
      end
      item
        Tag = 46
        Text = #214'dem'
      end
      item
        Tag = 47
        Text = 'Kladikasyo'
      end
      item
        Tag = 48
        Text = 'Parentezi'
      end
      item
        Tag = 49
        Text = 'Halsizlik'
      end
      item
        Tag = 50
        Text = 'Huzursuz Bacak'
      end
      item
        Tag = 51
        Text = 'Uykusuzluk'
      end
      item
        Tag = 52
        Text = 'Ate'#351
      end
      item
        Tag = 54
        Text = 'Di'#287'er'
      end>
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 152
    Top = 88
    object K1: TMenuItem
      Tag = 9999
      Caption = 'Kapat'
      ImageIndex = 18
      OnClick = cxButtonCClick
    end
    object y1: TMenuItem
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      object N1: TMenuItem
        Tag = -1
        Caption = 'Muayene Tutana'#287#305'n'#305' Yazd'#305'r'
        OnClick = cxButtonCClick
      end
      object T1: TMenuItem
        Tag = -2
        Caption = 'Formu Yazd'#305'r'
        OnClick = cxButtonCClick
      end
    end
    object N3: TMenuItem
      Caption = '-'
      ImageIndex = 28
    end
  end
  object ADO_UzmanMuayene: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 80
    Top = 224
  end
  object DataSource7: TDataSource
    DataSet = ADO_UzmanMuayene
    Left = 80
    Top = 282
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 400
    Top = 112
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8454016
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object K: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16744448
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object Yesil_siyah: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clLime
      TextColor = clBlack
    end
    object Sari_Siyah: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clYellow
      TextColor = clBlack
    end
  end
end
