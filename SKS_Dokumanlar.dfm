object frmSKS_Dokumanlar: TfrmSKS_Dokumanlar
  Left = 0
  Top = 0
  Caption = 'frmSKS_Dokumanlar'
  ClientHeight = 633
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object kapsam: TcxImageComboBox
    Left = 584
    Top = 257
    Properties.Images = DATALAR.imag32png
    Properties.Items = <>
    TabOrder = 0
    Visible = False
    Width = 121
  end
  object tur: TcxImageComboBox
    Left = 16
    Top = 419
    Properties.Items = <>
    TabOrder = 1
    Visible = False
    Width = 121
  end
  object cxGrid2: TcxGridKadir
    Left = 0
    Top = 0
    Width = 972
    Height = 633
    Align = alClient
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    LevelTabs.ImageBorder = 2
    LevelTabs.Style = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    ExcelFileName = 'SKS_DokumanListesi'
    ExceleGonder = True
    PopupForm = False
    object gridDokumanlar: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnDblClick = gridDokumanlarDblClick
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      FilterBox.CustomizeDialog = False
      DataController.DataModeController.DetailInSQLMode = True
      DataController.DataSource = DS_Dokumanlar
      DataController.Filter.Active = True
      DataController.Filter.TranslateBetween = True
      DataController.Filter.TranslateLike = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnMRUItemsList = False
      FilterRow.InfoText = 'Kay'#305't Filitrele'
      FilterRow.SeparatorColor = 8454143
      FilterRow.SeparatorWidth = 5
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = 'Kay'#305't Yok'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.IndicatorWidth = 0
      OptionsView.RowSeparatorColor = clBlack
      Styles.Group = cxStyle1
      object gridDokumanlarid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Width = 20
      end
      object gridDokumanlardokumanNo: TcxGridDBColumn
        Caption = 'D'#246'k'#252'man No'
        DataBinding.FieldName = 'dokumanNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 75
      end
      object gridDokumanlarColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'dokumanTip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            Description = 'SKS'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Di'#287'er'
            Value = 2
          end
          item
            Description = '15504'
            Value = 4
          end
          item
            Description = '27001'
            Value = 3
          end>
        Visible = False
        GroupIndex = 0
        IsCaptionAssigned = True
      end
      object gridDokumanlartur: TcxGridDBColumn
        Caption = 'T'#252'r'
        DataBinding.FieldName = 'tur'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 36
      end
      object gridDokumanlaradi: TcxGridDBColumn
        Caption = 'D'#246'k'#252'man Tan'#305'm'#305
        DataBinding.FieldName = 'adi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Styles.Content = cxStyle2
        Styles.Header = cxStyle2
        Width = 249
      end
      object KapsamAdi: TcxGridDBColumn
        DataBinding.FieldName = 'KapsamAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Visible = False
        GroupIndex = 1
        Width = 87
        IsCaptionAssigned = True
      end
      object gridDokumanlarkapsam: TcxGridDBColumn
        DataBinding.FieldName = 'kapsam'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DATALAR.imag32png
        Properties.Items = <
          item
            Description = 'ATIK YONET'#304'M'#304
            ImageIndex = 59
            Value = 'AY'
          end>
        Properties.LargeImages = DATALAR.imag32png
        Visible = False
        HeaderGlyphAlignmentHorz = taCenter
        Width = 107
        IsCaptionAssigned = True
      end
      object gridDokumanlarsira: TcxGridDBColumn
        DataBinding.FieldName = 'sira'
        Visible = False
        Width = 37
      end
      object gridDokumanlardurum: TcxGridDBColumn
        DataBinding.FieldName = 'durum'
        Visible = False
        Width = 110
      end
      object gridDokumanlaramaci: TcxGridDBColumn
        DataBinding.FieldName = 'amaci'
        Visible = False
        Width = 142
      end
      object gridDokumanlarkaynak: TcxGridDBColumn
        DataBinding.FieldName = 'kaynak'
        Visible = False
        Width = 55
      end
      object gridDokumanlarkullanan: TcxGridDBColumn
        DataBinding.FieldName = 'kullanan'
        Visible = False
        Width = 28
      end
      object gridDokumanlarraporlayan: TcxGridDBColumn
        DataBinding.FieldName = 'raporlayan'
        Visible = False
        Width = 28
      end
      object gridDokumanlarkullanmaPeryot: TcxGridDBColumn
        DataBinding.FieldName = 'kullanmaPeryot'
        Visible = False
        Width = 28
      end
      object gridDokumanlarraporlamaPeryot: TcxGridDBColumn
        DataBinding.FieldName = 'raporlamaPeryot'
        Visible = False
        Width = 28
      end
      object gridDokumanlaryaynTarih: TcxGridDBColumn
        Caption = 'Yay'#305'n Tarihi'
        DataBinding.FieldName = 'yayinTarih'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 81
      end
      object gridDokumanlarraporlamaKime: TcxGridDBColumn
        DataBinding.FieldName = 'raporlamaKime'
        Visible = False
        Width = 29
      end
      object gridDokumanlargozdenGecirmePeryot: TcxGridDBColumn
        DataBinding.FieldName = 'gozdenGecirmePeryot'
        Visible = False
        Width = 29
      end
      object gridDokumanlarsonrakiGGTarihi: TcxGridDBColumn
        Caption = 'G'#246'zden Ge'#231'irme Tarihi'
        DataBinding.FieldName = 'sonrakiGGTarihi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 94
      end
      object gridDokumanlardenetci: TcxGridDBColumn
        DataBinding.FieldName = 'denetci'
        Visible = False
        Width = 30
      end
      object gridDokumanlardepartman: TcxGridDBColumn
        DataBinding.FieldName = 'departman'
        Visible = False
        Width = 26
      end
      object gridDokumanlarmeslek: TcxGridDBColumn
        DataBinding.FieldName = 'meslek'
        Visible = False
        Width = 29
      end
      object turAdi: TcxGridDBColumn
        DataBinding.FieldName = 'TurAdi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Visible = False
        GroupIndex = 2
        Width = 46
        IsCaptionAssigned = True
      end
      object gridDokumanlarKontrol: TcxGridDBColumn
        Caption = 'Kontrol Durum'
        DataBinding.FieldName = 'kontrolDurum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            Description = 'Kontrol Edildi'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Kontrol Bekliyor...'
            ImageIndex = 41
            Value = 0
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 121
      end
      object gridDokumanlarOnay: TcxGridDBColumn
        Caption = 'Onay Durum'
        DataBinding.FieldName = 'onayDurum'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            Description = 'Onayland'#305
            ImageIndex = 7
            Value = 1
          end
          item
            Description = 'Onay Bekliyor'
            ImageIndex = 41
            Value = 0
          end
          item
            Description = 'Red'
            ImageIndex = 1
            Value = 2
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 115
      end
      object gridDokumanlarRev: TcxGridDBColumn
        Caption = 'Rev.'
        DataBinding.FieldName = 'rev'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 62
      end
      object gridDokumanlarColumn2: TcxGridDBColumn
        Caption = 'Revizyon Tarihi'
        DataBinding.FieldName = 'revTarihi'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 80
      end
      object gridDokumanlarColumn3: TcxGridDBColumn
        Caption = 'Dosya'
        DataBinding.FieldName = 'DosyaTip'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Properties.Images = DATALAR.imag24png
        Properties.Items = <
          item
            ImageIndex = 110
            Value = 'PDF'
          end
          item
            ImageIndex = 75
            Value = 'XLS'
          end
          item
            ImageIndex = 75
            Value = 'XLSX'
          end
          item
            ImageIndex = 111
            Value = 'DOC'
          end
          item
            ImageIndex = 121
            Value = 'RTF'
          end>
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
        Width = 40
      end
    end
    object cxGridLevel1: TcxGridLevel
      Caption = 'Hastalar'
      GridView = gridDokumanlar
      Options.DetailFrameColor = clHighlight
    end
  end
  object cxImage1: TcxImage
    Left = 816
    Top = 160
    Picture.Data = {
      0A544A504547496D616765050E0000FFD8FFE000104A46494600010200006400
      640000FFEC00114475636B7900010004000000640000FFEE000E41646F626500
      64C000000001FFDB008400010101010101010101010101010101010101010101
      0101010101010101010101010101010101010101010102020202020202020202
      0203030303030303030303010101010101010201010202020102020303030303
      0303030303030303030303030303030303030303030303030303030303030303
      030303030303030303030303FFC00011080030003003011100021101031101FF
      C40096000001030500000000000000000000000007050809000304060A010002
      0301010100000000000000000000000805060701090410000104020104010303
      0403000000000004020305060107110012130821141509312216415161175233
      1811000201030303020207050900000000000102031104050012062113073108
      4109516171812232142333B36415A1C142526272432418FFDA000C0301000211
      0311003F00EFE3A34681DBFB652355D301B1BF6180AB8645818892E62CA833ED
      2DE098899284148281799263FEE3220B23E1F4F7291973F6E32ACE3834698EAB
      DD1230BE7F9169158DFAE4D4EDFBFA1ACA7FE78695DAB4A738F9E3E3A3469D77
      AD9BC83DCAAB7B71D66AB5A06AC8F5AC904D44896918C8F93997AC9F53179979
      8528A9179A162987739CE7847978FD38E8D14234E97A346ABA346ABA346998FB
      7FB26A7035F46BDBC9C88AA1DA6AD629BD8C7B30ACD8670EA8C74A56EB8DD32A
      3185B0404CD9AEB2D696DB4C83ADB898D04429D461B254310CF2FF003B86E1F8
      19F97E78335ADBCD1C51A052FBE69048EB551F982AC6C76554312BB982060728
      F2DF9238FF008DB8FB65B935C4B6B86DA7B8F123493BD5923482DD17FE6999E8
      1CD1634576254ED6584FBAFB65F8D26EFE24331E90478443932C064CEE6AB4E1
      02428C792CF9D70A29440B869A53B8CE718E78C63E3F4EB00B0F741C45723FA6
      93137925BB3050CE60522A6952BB8FDE2BA51AF7DFBF13BDCAC78FC7E133315A
      99554CAF35BA1018D2A6305FD2B5A6FD3F1A87B4FA2B52853507AFAE95ED375F
      9C307B589AFAE1530616BC09D263AC59872B07D449833828820A01B772D3CE97
      969F75CC359433E3691B963F94E3B955AA5D63E2685211DB21C2AB9FF129215D
      D4D14ED0C36EEA7504D496F3C4BE41C2791F0F7997C29BA5ECDE76E58A7081A3
      93B68C4A6D24989EB50CC48DDB9568176859CFBE75F4F39FF71E85CB5CFF00DD
      FCBF64273C7F7ECFBD6538F8FF003D7DDAD53471D03EDB57B6CEC481A457F66D
      36EE61A9972256269C04F9E3C7C6C742C9199912A7E6652456CA9324D0CCA51C
      212BF367FAF1D72A2B4F8EBB434AD3A6A40FAEEB9A8F9F70ABB1D60BC5580951
      905085EADB4BCA69CC7727988DADA630A5631FD329C4CE3E7FCF509CFED63BBF
      19DCACA3746997B4247FBA0BC1FDDA5A3DCBE22CF33C5A2B5BF4125B7762620F
      FA6EADFAFDDBB5CB77B4D0C0427B0F331514C2050D9B0C3A1A65A4E1084F7943
      E33C253C631CE73D791F9B926B5E5D35BC1248B08B85A0DC69F9BEDD78DBCCAD
      62C7F3CB8B2B4AADBADC4600A9E9F886A4E29760A3D11156D896CD4B37BC6C36
      63EC4BA7528D2C28ED5F55135CD9EE5AD869BB104B899632E76E38FF00B99096
      49ED8F0C5298C36CE486F2FF004E17927CFBFF009BB09616380E37739CE4D99E
      3D6F777374D376A08E0964768ADD008E66050C75959515DAA3F6A14EC1EF27CB
      E7D9A71CE6FC2AEBCE198E43FA0C8DFDCFE9FB3F89895B4697B7442F1C5D3BCE
      7B923382CD4118D8189848B6D5257C13BFF86343C5299710FBD90F5688E96B6F
      9E5DC64E4C2B23F93C79CF19CA38E7A4A47CDA7956332C6CEE78AE01A10F4657
      B993B8A2BD6951D0D3E95FBB4F8653DB670D967167166EFD241E8EB7560A09F8
      5528491F480DA2C426FD83A15C23D8A25131A86E5315B9C7DB62AC987CEBDB90
      9AEAB53D761A06F9435C488A13EB63DA2866E622480A58671C6BC8B2586BE9B2
      FF00789BDDFDA792797E0782E678F2C10720BC30437305C06EC4AF17715B6B47
      1B15217AA969141F445AEE19B731F6E53F19E0F98F236073AD2CD85B359A5B79
      630C2E22593615DC8EE9B817E8EA226A7ABB05084F507EDEEEBBC4722D150AC6
      9906B32AF9AEC20765B05BB3601E39A31F6056E6B2002807127E169397D2C72C
      A1CCE52852D38C2D59379C3E649EDE7C01E50CA788F99D872DB9E4F877892E24
      B3B3B492D8B4D04570044F2DF42EC024AA1898D7F10205695D56B07E33E539FC
      45BE6ACDAD52D2E537A06EF16DB5206EDB195AF4EA0134D0C765DCBD82D8D370
      D3840FA1007A1EAB69AA24744BDDDE6DF1ECF64D7B6570D539E36949782235EB
      2D2118C70A494E6739E529C7591E53E703ED3B2DC72E38E4D89E7A90DC5C4137
      70585816530099400A72542184C6A49E94141D4EAB9CE7DB2728E718F18FB9BC
      B7B74029B963998FEF6196BD6303D610BF6313EA069845C7F1B3B577B5D4BDAE
      46E6D29582889B6DC7A03ED97A31A688882197B28498865EF230FE309FDD8CF3
      8C6738E319C671D6A9E19F1D7897DCAF0DB5F3770ACA723B5E3F91B999521BCB
      4B48A657B599A29032A4F2AD0B2D548735523D0D4042B9FF00CBB71F65CD64BC
      CAF24BA5BD7114DB23B68CA50FE251572ADD6841A8FAC541D1AAFB4ED9BEB26B
      BA6AAD169D43658E7ADB65A6C1134A6ADCBB18139B52D161BB8D22F03678EC43
      93150D20FBC3A93DDE4521C439C67385272D27903C4980E5B062E6BA9E76831B
      8FB3C7C9132AA8B8B74982339753BA394ACBD3682A29EB53D1E6F065EDFF0086
      BC7A9E34B071776AB24F34772C36C8B2B2C92006215464A8A1EB5F43F4D759FF
      00756E009ABBC203E9E7BB7B6428030A0A3EF7A68FF45E52853ADB2EB6D24D53
      B6FDDD51B6D7BC985670E0B23163963AF19C2D1F1F2AC663E58BED3F37999339
      7967C805E4AFB982656554AFD4BDB240FAABABB1F27F2D6996E1DEDCCCBE87B4
      3FB7AEB0AA38BE6DF84DE575BCFAB361D40CE9FD0FB3AC215B3607B81A4AE7B6
      2AF7394A8CC035A157A33D686AC90F080CE47B0679489EB2B5DADB4AC34211CA
      FB1B0F187B7CF13F03E4B87BDC06349C858DF5B9B79679A699E26DCB1EF5DCFB
      03EC246ED95EA751BCA3CA5CE727C4329809EF8A61AEECA559A28D23459542B3
      8572177150C0353752A0695CAD23ECDEB22CBA546EA3DC93C2C312FB4998AC54
      E9960AD4929C754EE4E8195CED98721F8D37BBCCDA48106259F278DD6D2B42BA
      44FDC67CB7E5F3D799F37E598F9363EC62CC4B0B8824B5B87923EDDBC3010CE8
      0AB1AC55054FE520115075BF78D7DC4F0DE15C171BC4F37C73217B91B089E369
      E1B8B64490196491582C8378215C2907FCBD35A45A4DDFB4B7E386B2EA6DEF14
      FCB0B2668087F5AD69DC903439508148398FA2DBE5E5BF013630D38C2F09EFF2
      E729E7B17DB89CBF27EB8831F3E526E638A5B0B7D9DC7FD1DDD17B8DB53A0527
      A9E9AB0E67DE7788B016C6F32DC632F0DB804D4DCDA1E80A8268149F5651F7EA
      D56FF207A834D201D57B4B5BFB4466C954C1EE96988D6D5A14179D9A905B91C2
      8EDBFB04B5A72C319436A52DCF956339F8C74FBFB78B1F1C7B70F19E3FC2D90E
      456D7793B2B9B870F1DB5D22B1B998C8000D1D7A13D4F4EA7E81528179B3DE5F
      82796793E6B8B5B89316F2416D0A5ACA0CB2031C610B33C6823FDA355801E80F
      53ABFBBB74437B134EA57F00D3FEC0400B58DB0CCA4B59362C05561AAC1B14F8
      36A4AC233C446DB65CFF00B83225963D4C270C650E65FE30AE719C74CAE733F8
      2B2B5C6C4F721A6CD946B3508FFB548AEE3491EA540508CA410D427E008EBAB0
      78FB2D6BE47C34FCB3891FD4F1DB2691269AA1423F6A40136B51C927D2829F5E
      B43B67E29A6B7858B62ED90F5FFE312E03DACC7659E93DE3E9A6D42F6A8ED90F
      37943365BA6A9F63A8F07B1CD6B19EC51E7C48E5BF8E3CBDDF2AEAC47D75F7E8
      E554FC79ECDF5EBD70DDCF56B7C694D2B406F5BDA6CB71D39E937A51A93D73AB
      6D076BF5997C8711B2AF1759ADE7B42C90CFB44B83BD91E4A38FC8AE38968A67
      BD5D4AE00573F603F9FB7FE326A3B31D30D787F949FF0084FAE88BA89D48E85B
      B47590DB18288718926E0EC75B2CB32065888A1E7E2D689105D8D9783B257CA7
      C46E7EAF361BB84942A4811FC38D32F8E40E4B0CBCDCB6332305A473D8E4205B
      BC3DDC612685895DC158323A380DB254615472AE3AB2B23A332984CE6120CD5B
      AC721559909DA590488430DAC9246681E371F996AA6A159595D558469EC4FC66
      406C3D8E2ECC9DA240936914A18851F01EC35FAA9066BA12959608CD4E574C6C
      026350E73FB994CC15DBFA7933FAF543BFF0DF84F2796FEB737F578AEEA08411
      A38047C370BC88350FC7B495FA0696BCFF00B57E0F9FE46393DDE3E9950CA4B4
      591B88A362BE87B2F6B3EDFB04ADF6E88C3FA7566ABD5EC558CD52127E996499
      2E75BAFD27604A0F7AA8C84A566BF569950960BEC5055CD82CCB8F5A14AC25F4
      D63E81F42928FA8439C3765E41C1BC77C92CF096B617991C5E538F2CA2D2E248
      D26864EF4A6761342ACF24603D000AD3EE00754A1DCC078BECB27E1EC15FF19E
      3B63693F15C93879AD84D2779182ED668E79428919EA58EE10AA924056046D57
      AFEAAF666AF1C4C256A66CE3574CC21B58565D79A3E4E71A192E256A6FEE519B
      B4611E7B84FC2D48E39F9CE3AA3CFC5BCBD15FFF00D6E5BC2E6C66E1FBCC3E5D
      66DB5EA0B25C842D4F43DB02BF0D68E99AE1D24357C1F228EE29E8B7B8E64AFD
      EBB80FBC9FAF59C7EA2F60AE91F294FB01D702E02721A6608F0ED39D4B45A061
      8978F7A371293016B699D877AB7AA25B2964331197E2C23DF6D082496DBE73D5
      E78D60B278ACE5AF20E51C9ED2EAD2CE5594596371D2C3DF74219165B8BD62E9
      1823A98981AD0947036341E6B2D6990C44F86C1E0AE20BBB98CC66EEF6F6393B
      48C08631436B456720F4EE291404064277AFFFD9}
    TabOrder = 3
    Visible = False
    Height = 73
    Width = 81
  end
  object Ado_Dokumanlar: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'exec sp_DokumanListesi '#39'000005'#39
      '')
    Left = 368
    Top = 208
  end
  object DS_Dokumanlar: TDataSource
    DataSet = Ado_Dokumanlar
    Left = 368
    Top = 272
  end
  object ADO_Kapsam: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'DokumanKapsamlari'
    Left = 568
    Top = 304
  end
  object DS_Kapsam: TDataSource
    DataSet = ADO_Kapsam
    Left = 568
    Top = 256
  end
  object DS_Tur: TDataSource
    DataSet = ADO_Tur
    Left = 120
    Top = 176
  end
  object ADO_Tur: TADOTable
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    TableName = 'DokumanTurleri'
    Left = 120
    Top = 224
  end
  object DS_User: TDataSource
    DataSet = ADO_User
    Left = 136
    Top = 416
  end
  object ADO_User: TADOQuery
    Connection = DATALAR.ADOConnection2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *,DK.tanimi KapsamAdi,DT.tanimi TurAdi from Dokumanlar D'
      '          join DokumanKapsamlari DK on DK.kod = D.Kapsam '
      '           join DokumanTurleri DT on DT.kod = D.tur ')
    Left = 184
    Top = 416
  end
  object PopupMenu1: TPopupMenu
    Images = DATALAR.imag24png
    Left = 288
    Top = 320
    object T1: TMenuItem
      Tag = 1
      Caption = 'T'#252'm K'#305'r'#305'l'#305'mlar'#305' A'#231
      ImageIndex = 16
      OnClick = T2Click
    end
    object T2: TMenuItem
      Caption = 'T'#252'm K'#305'r'#305'l'#305'mlar'#305' Kapat'
      ImageIndex = 14
      OnClick = T2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object E1: TMenuItem
      Tag = -1
      Caption = 'Yeni'
      ImageIndex = 30
      OnClick = cxButtonCClick
    end
    object D1: TMenuItem
      Caption = 'D'#252'zenle'
      ImageIndex = 32
      Visible = False
      OnClick = cxButtonCClick
    end
    object S1: TMenuItem
      Caption = 'Sil'
      ImageIndex = 43
      Visible = False
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object onayDurum: TMenuItem
      Tag = -5
      Caption = 'Onay'
      ImageIndex = 7
      OnClick = cxButtonCClick
    end
    object kontrolDurum: TMenuItem
      Tag = -6
      Caption = 'Kontrol'
      ImageIndex = 0
      OnClick = cxButtonCClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object D2: TMenuItem
      Tag = -10
      Caption = 'Dokuman'#305' A'#231
      ImageIndex = 101
      OnClick = cxButtonCClick
      object Y1: TMenuItem
        Tag = -101
        Caption = 'Y'#252'kl'#252' Dosya'
        ImageIndex = 114
        OnClick = cxButtonCClick
      end
      object Y2: TMenuItem
        Tag = -104
        Caption = 'Y'#252'kl'#252' Dosya '#350'ablonu (RTF)'
        OnClick = cxButtonCClick
      end
      object B1: TMenuItem
        Tag = -102
        Caption = 'Benim Dokuman'#305'm'
        ImageIndex = 101
        OnClick = cxButtonCClick
      end
      object D3: TMenuItem
        Tag = -103
        Caption = 'Dokuman Ge'#231'mi'#351'i'
        ImageIndex = 3
        OnClick = cxButtonCClick
      end
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Tag = -12
      Caption = 'RPT '#350'ablonu'
      ImageIndex = 121
      OnClick = cxButtonCClick
    end
    object R2: TMenuItem
      Caption = 'RTF '#39'den Al'
      ImageIndex = 9
      object R1: TMenuItem
        Tag = -11
        Caption = 'RTF den '#304#231'erik Y'#252'kle'
        ImageIndex = 14
        OnClick = cxButtonCClick
      end
      object R3: TMenuItem
        Tag = -13
        Caption = 'RTF Dosya Yukle'
        ImageIndex = 110
        OnClick = cxButtonCClick
      end
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object L1: TMenuItem
      Tag = 9997
      Caption = 'Listeyi Excele At'
      ImageIndex = 75
      OnClick = cxButtonCClick
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 112
    Top = 80
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16770764
      Font.Charset = TURKISH_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
  object EkRTF1: TEkRTF
    OutFile = 'outfile.doc'
    TrueValue = 'True'
    FalseValue = 'False'
    UnicodeByDefault = False
    Charset = DEFAULT_CHARSET
    Lang = 0
    Options = [eoGraphicsBinary, eoDotAsColon]
    DisableControls = True
    Left = 728
    Top = 104
    VarDataTypes = {00000000}
  end
  object EkUDFList1: TEkUDFList
    Functions = <
      item
        OnCalculate = EkUDFList1Functions0Calculate
        Name = 'DrawMemoryBitmap'
        ArgMinCount = 0
        ArgMaxCount = 0
        ResultType = 1
      end>
    Left = 800
    Top = 104
  end
end
