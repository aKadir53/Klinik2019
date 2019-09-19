object frmKlorOlcum: TfrmKlorOlcum
  Left = 0
  Top = 0
  Caption = 'frmKlorOlcum '
  ClientHeight = 421
  ClientWidth = 585
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
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 128
    Top = 64
    object Y1: TMenuItem
      Tag = -1
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
  end
  object olcumler: TListeAc
    ListeBaslik = 'Klor '#214'l'#231#252'mleri'
    TColcount = 2
    TColsW = '50,80'
    Table = 'klorOlcum'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'id'
      'Tarih'
      'Yil'
      'HaftaNo'
      'OlcumDegeri'
      'PHDegeri'
      'OlcumuYapanKisi')
    KolonBasliklari.Strings = (
      'id'
      'Tarih'
      'Yil'
      'Hafta No'
      'OlcumDegeri'
      'PHDegeri'
      'OlcumuYapanKisi')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 440
    Top = 80
  end
end
