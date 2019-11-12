object frmStokKarti: TfrmStokKarti
  Left = 0
  Top = 0
  Caption = 'frmStokKarti'
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
      Caption = 'Yeni'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object K1: TMenuItem
      Caption = 'Kaydet'
    end
    object S1: TMenuItem
      Caption = 'Sil'
    end
  end
  object Stoklar: TListeAc
    ListeBaslik = 'Stok Kartlar'#305
    TColcount = 4
    TColsW = '50,80,150,80'
    Table = 'StokKart_View'
    Conn = DATALAR.ADOConnection2
    Filtercol = 0
    BaslikRenk = clBlack
    DipRenk = clBlack
    Kolonlar.Strings = (
      'id'
      'code'
      'NAME1'
      'tanimi')
    KolonBasliklari.Strings = (
      'ID'
      'Stok Kodu'
      'Stok Tan'#305'm'#305
      'Grup Tan'#305'm'#305)
    Calistir = fgEvet
    BiriktirmeliSecim = False
    SkinName = 'Lilian'
    Grup = False
    GrupCol = 0
    Left = 424
    Top = 104
  end
end
