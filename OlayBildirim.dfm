object frmOlayBildirim: TfrmOlayBildirim
  Left = 0
  Top = 0
  Caption = 'frmOlayBildirim'
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
    Left = 400
    Top = 40
    object Y1: TMenuItem
      Tag = -1
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object g1: TMenuItem
      Caption = 'grs.saglik.gov.tr (Bildirim Yap)'
      ImageIndex = 15
    end
  end
  object Olaylar: TListeAc
    ListeBaslik = 'Olay Bildirimleri'
    TColcount = 5
    TColsW = '50,80,100,150,200'
    Table = 'OlayBildirimView'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'id'
      'Tarih'
      'KonuAdi'
      'anaParametreAdi'
      'altParametreAdi')
    KolonBasliklari.Strings = (
      'ID'
      'Tarih'
      'Konu'
      'AnaModul'
      'AltModul')
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 528
    Top = 88
  end
end
