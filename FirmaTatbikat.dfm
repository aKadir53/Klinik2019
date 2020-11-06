object frmTatbikat: TfrmTatbikat
  Left = 1
  Top = 1
  Caption = 'Tatbikatlar'
  ClientHeight = 469
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGridKadir2: TcxGridKadir
    Left = 0
    Top = 0
    Width = 777
    Height = 469
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 0
    ExcelFileName = 'TahlilSonuclar'#305
    ExceleGonder = True
    PopupForm = False
    object gridRaporlar: TcxGridDBTableView
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object gridRaporlarID: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 41
      end
      object gridRaporlarSubeTanimi: TcxGridDBColumn
        Caption = #350'ube'
        DataBinding.FieldName = 'SubeTanimi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 100
      end
      object gridRaporlarGozlemGrupTanim: TcxGridDBColumn
        Caption = 'Tatbikat'
        DataBinding.FieldName = 'tanimi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 151
      end
      object gridRaporlarDate_Create: TcxGridDBColumn
        DataBinding.FieldName = 'Tarih'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 116
      end
      object gridRaporlarDenetimiYapanKullanici: TcxGridDBColumn
        Caption = 'Haz'#305'rlayan'
        DataBinding.FieldName = 'hazirlayan'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 154
      end
      object gridRaporlarColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'Onaylayan'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 132
      end
      object gridRaporlarColumn2: TcxGridDBColumn
        Caption = 'Rapor'
        DataBinding.FieldName = 'dosyaVar'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            ImageIndex = 110
            Value = 1
          end
          item
            Value = 0
          end>
        Properties.ShowDescriptions = False
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gridRaporlar
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 128
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 15132390
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor]
      Color = 8454143
    end
    object cxStyle7: TcxStyle
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clRed
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 16
    Top = 56
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 544
    Top = 192
    object miYeniGozetim: TMenuItem
      Tag = -9
      Caption = 'Yeni Tatbikat'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object miGozetimDuzenle: TMenuItem
      Tag = -11
      Caption = 'D'#252'zenle'
      ImageIndex = 31
      OnClick = cxButtonCClick
    end
    object miGozetimSil: TMenuItem
      Tag = -18
      Caption = 'Sil'
      ImageIndex = 42
      OnClick = cxButtonCClick
    end
    object miGozetimYazdir: TMenuItem
      Tag = -27
      Caption = 'Yazd'#305'r'
      ImageIndex = 28
      OnClick = cxButtonCClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object T1: TMenuItem
      Tag = -90
      Caption = 'Raporu Y'#252'kle'
      ImageIndex = 9
      Visible = False
      OnClick = cxButtonCClick
    end
    object R1: TMenuItem
      Tag = -91
      Caption = 'Raporu G'#246'ster'
      ImageIndex = 110
      Visible = False
      OnClick = cxButtonCClick
    end
    object R2: TMenuItem
      Tag = -92
      Caption = 'Raporu Sil'
      ImageIndex = 43
      OnClick = cxButtonCClick
    end
    object R3: TMenuItem
      Caption = 'Taranm'#305#351' Raporu'
      ImageIndex = 110
      object e1: TMenuItem
        Tag = -6666
        Caption = 'Raporu Y'#252'kle'
        OnClick = cxButtonCClick
      end
      object e2: TMenuItem
        Tag = -6667
        Caption = 'Raporu A'#231
        OnClick = cxButtonCClick
      end
      object e3: TMenuItem
        Tag = -6668
        Caption = 'Raporu Sil'
        OnClick = cxButtonCClick
      end
    end
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmr1Timer
    Left = 16
    Top = 48
  end
  object cxImageList1: TcxImageList
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 8913256
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000A0000002D0204
          02590A120A840F1A0F940F1A0F950D170D8C0508056500000033000000120000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000060000003C101D10A1366036E83797
          38FE22B324FF1BC01CFF1AC11CFF1DBB1FFF2FA230FF3B7B3BF5253F25C80508
          05630000000E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000140A110A82326833E921B523FF04E309FF00F1
          06FF00F606FF00F806FF00F806FF00F706FF00F406FF00ED05FF0FD012FF2F9D
          30FD203720BA0101012F00000001000000000000000000000000000000000000
          00000000000000000014101B109A359236FC07DA0DFF00F108FF00F908FF00F8
          07FF00FC07FF00FE07FF00FE07FF00FE07FF00FD07FF00FB07FF00F708FF00EB
          08FF1ABB1EFF2F5A2FDC0203023B000000000000000000000000000000000000
          00000000000B0D170D8E359437FE02E00AFF00F30AFF00FB0AFF00F808FF62BE
          64FF2FCA32FF00FF08FF00FF08FF00FF08FF00FF08FF00FF08FF00FD09FF00F8
          0AFF00EC0AFF0FC714FF325D32DE000100200000000000000000000000000000
          00010408045C388439F902D809FF00EF0AFF00F90BFF00FB0BFF5CC85FFFD7D6
          D7FFAFBDAFFF09E710FF00FF09FF00FF09FF00FF09FF00FF09FF00FE0AFF00FC
          0BFF00F60BFF00E709FF15BB19FF253F25BC0000000800000000000000000000
          0011274727CC0FBD14FF00E609FF00F509FF00F50AFF55C659FFDEDFDEFFF7F7
          F7FFDFDFDFFF72BD74FF00F40AFF00FF0BFF00FF0BFF00FF0BFF00FF0BFF00FE
          0BFF00FA0AFF00EF0AFF00DC09FF2E9A2FFF070C075600000000000000000406
          04532E962FFE00D608FF00EC09FF04E80CFF72BF73FFE0DFE0FFFAFAFAFFFFFF
          FFFFFCFCFCFFD3D3D3FF72B374FF01F30AFF00FF0AFF00FF0AFF00FF09FF00FF
          09FF00FD09FF00F409FF00E50AFF05C50BFF2B4D2BC900000006000000061C30
          1CAD12B015FF00D508FF2ECA33FFA5C4A5FFE5E5E5FFFAFAFAFFF7F7F7FF7FCD
          80FFF6FAF7FFF5F5F5FFD2D2D2FF68BD6AFF00F607FF00FF07FF00FF07FF00FF
          07FF00FD08FF00F509FF00E80AFF00D107FF339233FF0204023000000016355F
          35E201C005FF30C734FFE8F0E8FFFAFAFAFFFEFEFEFFFCFCFCFFC6DCC6FF02E8
          07FF94DE95FFFFFFFFFFF5F5F5FFD2D1D2FF52C254FF00FD06FF00FF06FF00FF
          07FF00FD08FF00F509FF00E90AFF00D407FF209F22FF0D170D6D000000213B81
          3BFA00C106FF00DA09FF0FD416FFA3DEA4FFFFFFFFFFFAFAFAFF56D759FF00FF
          08FF11E317FFF3F9F4FFFFFFFFFFF4F4F4FFCDCECDFF42C144FF00FC07FF00FF
          08FF00FD09FF00F409FF00E70AFF00D307FF0EAB11FF1D301C9C000000243C86
          3BFE00BE07FF00D709FF00E90AFF00ED0AFF56D059FFE7F3E8FF07E80FFF00FF
          0AFF00FE0AFF95E197FFFFFFFFFFFFFFFFFFEEEEEEFFC7C6C7FF30C734FF00FD
          0AFF00FB0BFF00F20AFF00E40AFF00CF08FF03B007FF223921AA000000223C86
          3BFE00B907FF00D208FF00E50AFF00F30AFF00F90BFF0FE917FF00FE0AFF00FF
          0BFF00FF0BFF22E229FFF2F8F2FFFFFFFFFFFDFDFDFFEAEAEAFFBEC3BEFF3CC4
          41FF00F30BFF00EE0BFF00DF09FF00CA08FF03AC07FF223921AA000000153B7F
          3CF900B105FF00CA07FF01DD0AFF00ED08FF00F708FF00FC07FF00FE07FF00FF
          07FF00FF08FF00FD08FF2BD42FFFF2F8F2FFFFFFFFFFFEFEFEFFEFEFEFFFD0D0
          D0FF77B378FF00E409FF01D60AFF00C106FF0AA20DFF1F341F9E00000006345E
          34DA01A704FF02BF09FF05D30DFF00E307FF00F006FF00F806FF00FC06FF00FE
          06FF00FF07FF00FF07FF00FE07FF63DA65FFFEFEFEFFFFFFFFFFFEFEFEFFE9E9
          E9FF69B76AFF01DD08FF06CC0EFF00B605FF1C941DFF17281770000000011B2E
          1B97119713FF05B40AFF10C917FF02D708FF00E506FF00F006FF00F706FF00FA
          07FF00FC07FF00FD07FF00FD07FF00F507FF93DF95FFFFFFFFFFFFFFFFFFE6E6
          E6FF42B345FF06D10DFF0FC315FF00AB04FF2E892FFF080E0831000000000204
          022A2E872FFE02A607FF24C129FF0BC911FF01D507FF00E107FF00EA08FF00F0
          08FF00F309FF00F509FF00F509FF00F409FF04E50CFFA9DDAAFFFFFFFFFFE8E8
          E8FF42AB45FF18C61DFF17B71CFF049C07FF336033CB00000001000000000000
          0000274627B70C940FFF28B52CFF28C22DFF09C50FFF00D008FF00DA09FF00E1
          09FF00E509FF00E809FF00E809FF00E709FF00E409FF05D10CFF9AD49BFFF8F8
          F8FF64AB66FF37C23CFF0DA711FF278928FF111D115100000000000000000000
          00000406042F377D38F70C9E0FFF4FC252FF2FC033FF0BC012FF01C608FF00CE
          07FF00D306FF00D507FF00D607FF00D407FF00D107FF00CB07FF04BC0AFF6EBC
          70FF9BC49CFF36B63AFF0F9211FF335833BF0000000100000000000000000000
          0000000000000B120B52328333FE25A627FF71CC73FF4EC551FF1FBB23FF09BA
          0EFF02BC06FF01BE05FF01BE05FF01BD05FF05BB09FF12BA16FF33BF37FF64CA
          67FF57BA5AFF119413FF376E38DC040704100000000000000000000000000000
          0000000000000000000017271763327F33F82FA231FF87D089FF88D489FF63C9
          64FF44C146FF35BD37FF34BD36FF3CBF3EFF53C555FF78D07AFF94D796FF63BF
          65FF1D901EFF376B37D50B140B29000000000000000000000000000000000000
          00000000000000000000000000000D160D43396C39DC2B8E2BFF68BC69FFAEDE
          AFFFC4E8C4FFC4E9C4FFC4E9C4FFC4E8C5FFBEE5BEFF8FD090FF41A542FF2C84
          2DFE305430A90407040F00000000000000000000000000000000000000000000
          000000000000000000000000000000000000020302061B2E1B5E356135CA3785
          37FF439343FF519C52FF539D54FF49974AFF3A8B3AFF397939F22B4A2B9B0B12
          0B32000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010D17
          0D31243F24822F502FA42F502FA42D4C2D9C182A18570306030C000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object DataSource1: TDataSource
    DataSet = ADO_SahaGozetim
    Left = 168
    Top = 258
  end
  object ADO_SahaGozetim: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    AfterScroll = ADO_SahaGozetimAfterScroll
    CommandTimeout = 0
    Parameters = <>
    SQL.Strings = (
      'select * from KaliteYonetimPlan where sirketKod = '#39'0001'#39
      'order by Yil desc')
    Left = 64
    Top = 256
  end
end
