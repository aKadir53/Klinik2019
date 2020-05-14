object Form12: TForm12
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Klinik2019 Firma Kodu '#350'ifrele'
  ClientHeight = 147
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    624
    147)
  PixelsPerInch = 96
  TextHeight = 13
  object txtOrd: TcxTextEdit
    Left = 16
    Top = 28
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    Width = 584
  end
  object txtNew: TcxTextEdit
    Left = 16
    Top = 67
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 1
    Width = 584
  end
  object btnSifrele: TcxButton
    Left = 16
    Top = 100
    Width = 105
    Height = 25
    Caption = #350'ifrele'
    TabOrder = 2
    OnClick = btnSifreleClick
  end
  object cxButton1: TcxButton
    Left = 127
    Top = 100
    Width = 105
    Height = 25
    Caption = #199#246'z'
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 4
    Width = 97
    Height = 17
    Caption = 'Code64 '#350'ifrele'
    TabOrder = 4
  end
end
