unit sirketISGKurulToplanti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir,  KadirType,GetFormClass,GirisUnit,dxLayoutContainer,
  StdCtrls, Buttons, sBitBtn, ExtCtrls, cxContainer, cxLabel, cxTextEdit, cxGridExportLink,
  cxMaskEdit, cxDropDownEdit, cxCalendar, sCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxGroupBox, cxRadioGroup, sGauge,
  cxPCdxBarPopupMenu, cxMemo, cxPC, cxCheckBox, rxAnimate, rxGIFCtrl,
  JvExControls, JvAnimatedImage, JvGIFCtrl, cxButtons, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage,
  cxImageComboBox, cxButtonEdit, cxColorComboBox, Vcl.ImgList;

type
  TfrmISGKurulToplanti = class(TGirisForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle7: TcxStyle;
    PopupMenu1: TPopupMenu;
    cxStyle8: TcxStyle;
    tmr1: TTimer;
    E1: TMenuItem;
    List: TListeAc;
    cxStyle9: TcxStyle;
    T1: TMenuItem;
    Y1: TMenuItem;
    M1: TMenuItem;
    KurulEkipGrid: TcxGridKadir;
    KurulEkipGridList: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    KurulEkipGridListAdiSoyadi: TcxGridDBBandedColumn;
    KurulEkipGridListGorevTanim: TcxGridDBBandedColumn;
    KurulEkipGridListeMail: TcxGridDBBandedColumn;
    KurulEkipGridListTelefon: TcxGridDBBandedColumn;
    KurulMaddeler: TcxGridKadir;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    Satirlar: TcxGridDBBandedTableView;
    KurulMaddelerLevel1: TcxGridLevel;
    SatirlarColumn1: TcxGridDBBandedColumn;
    SatirlarColumn2: TcxGridDBBandedColumn;
    SatirlarColumn3: TcxGridDBBandedColumn;
    procedure NewRecord(DataSet: TDataSet);
    procedure Fatura(islem: Integer);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
                AButtonIndex: Integer); override;

    procedure ButtonClick(Sender: TObject);
    procedure FaturaSatirTutarCustomDrawFooterCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    function CreateRotatedFont: HFONT;
    procedure SirketlerPropertiesChange(Sender: TObject);
    function Ekip : TDataset;
    function Maddeler : TDataset;
    procedure SatirlarNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
 //   function EArsivGonder(FaturaId : string) : string;
 //   function EArsivIptal(FaturaGuid : string) : string;
 //   function EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
 //   procedure Gonder;

  private
    { Private declarations }

  protected
    procedure GozlemYazdir (const GozlemID : integer);

  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;



const
//LIB_DLL = 'NoktaDLL.dll';
  LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';
  test = 'https://efatura-test.uyumsoft.com.tr/Services/Integration';
  gercek = 'https://efatura.uyumsoft.com.tr/Services/Integration';
var
  frmISGKurulToplanti: TfrmISGKurulToplanti;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

function TfrmISGKurulToplanti.Ekip : TDataset;
begin
  Ekip := nil;
  KurulEkipGrid.Dataset.Connection := Datalar.ADOConnection2;
  KurulEkipGrid.Dataset.Active := False;
  KurulEkipGrid.Dataset.SQL.Text :=
  'select AdiSoyadi,tanimi GorevTanim,eMail,Telefon from SirketISGKurulToplantiEkibi E ' +
  ' join SIRKET_SUBE_EKIP_View SE on SE.kod = E.EkipID ' +
  ' where ISGEkipId = 10 and SirketKod = ' +
  QuotedStr(vartoStr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue)) +
  ' and E.ISGKurulToplantiID = ' + QuotedStr(vartoStr(TcxButtonEditKadir(FindComponent('id')).EditValue));
  KurulEkipGrid.Dataset.Active := True;
  Ekip := KurulEkipGrid.Dataset;
end;

function TfrmISGKurulToplanti.Maddeler : TDataset;
begin
  Maddeler := nil;
  KurulMaddeler.Dataset.Connection := Datalar.ADOConnection2;
  KurulMaddeler.Dataset.Active := False;
  KurulMaddeler.Dataset.SQL.Text :=
  'select * from KurulToplantiMaddeler  ' +
  ' where kurulId = ' + QuotedStr(vartoStr(TcxButtonEditKadir(FindComponent('id')).EditValue));
  KurulMaddeler.Dataset.Active := True;
  Maddeler := KurulMaddeler.Dataset;
  KurulMaddeler.Dataset.OnNewRecord := NewRecord;

end;



function TfrmISGKurulToplanti.CreateRotatedFont: HFONT;
  var
    ALogFont: TLogFont;
begin
    FillChar(ALogFont, SizeOf(ALogFont), 0);
   // GetObject(ANFont.Handle, SizeOf(ALogFont), @ALogFont);
    ALogFont.lfEscapement := 900;
    Result := CreateFontIndirect(ALogFont);
end;


procedure TfrmISGKurulToplanti.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
//  FaturaToplamlari;
end;


procedure TfrmISGKurulToplanti.NewRecord(DataSet: TDataSet);
begin
   KurulMaddeler.Dataset.FieldByName('kurulId').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;


procedure TfrmISGKurulToplanti.SatirlarNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);

var
  Book : TBookmark;
  siraNo : integer;
procedure datawrite;
begin
   Satirlar.DataController.DataSet.FieldByName('siraNo').AsInteger := datalar.KurulToplantiMadde.SiraNo;
   Satirlar.DataController.DataSet.FieldByName('Madde').AsString := datalar.KurulToplantiMadde.Madde;
   Satirlar.DataController.DataSet.FieldByName('Karar').AsString := datalar.KurulToplantiMadde.Karar;
   Satirlar.DataController.DataSet.FieldByName('GorusmeNotlari').AsString := datalar.KurulToplantiMadde.GorusmeNotlari;
   Satirlar.DataController.DataSet.FieldByName('Aksiyon').AsString := datalar.KurulToplantiMadde.Aksiyon;
   Satirlar.DataController.DataSet.FieldByName('Gorevli').AsString := datalar.KurulToplantiMadde.Gorevli;
   Satirlar.DataController.DataSet.FieldByName('GorevTarihi').AsDateTime := datalar.KurulToplantiMadde.GorevTarihi;
   Satirlar.DataController.DataSet.FieldByName('HedefTarih').AsDateTime := datalar.KurulToplantiMadde.HedafTarih;
   Satirlar.DataController.DataSet.FieldByName('YapilanIslem').AsString := datalar.KurulToplantiMadde.YapilanIslem;
   Satirlar.DataController.DataSet.FieldByName('TamamlanmaTarihi').AsDateTime := datalar.KurulToplantiMadde.TamamlanmaTarihi;
   Satirlar.DataController.DataSet.FieldByName('Tamam').AsInteger := datalar.KurulToplantiMadde.Tamam;


 //  Satirlar.DataController.DataSet.FieldByName('Image').AsVariant := datalar.Risk.Image;

 (*
    Blob := TADOBlobStream.Create(TBlobField(Satirlar.DataController.DataSet.FieldByName('Image')),bmwrite);
    try
    //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
      datalar.Risk.Image.Picture.Graphic.SaveToStream(Blob);
     // Blob.LoadFromStream(datalar.Risk.Stream);
      Blob.Position := 0;
      TBlobField(Satirlar.DataController.DataSet.FieldByName('Image')).LoadFromStream(Blob);
    finally
      Blob.Free;
    end;
   *)
end;

procedure dataRead;
begin
   (*
   g := TJpegimage.Create;
   try
      g.Assign(Satirlar.DataController.DataSet.FieldByName('Image'));
      datalar.Risk.Image := TcxImage.Create(nil);
      datalar.Risk.Image.Picture.Assign(g);
  //    datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
   finally
     g.free;
   end;
     *)
   datalar.KurulToplantiMadde.SiraNo := Satirlar.DataController.DataSet.FieldByName('siraNo').AsInteger;
   datalar.KurulToplantiMadde.Madde := Satirlar.DataController.DataSet.FieldByName('Madde').AsString;
   datalar.KurulToplantiMadde.Karar := Satirlar.DataController.DataSet.FieldByName('Karar').AsString;
   datalar.KurulToplantiMadde.GorusmeNotlari := Satirlar.DataController.DataSet.FieldByName('GorusmeNotlari').AsString;
   datalar.KurulToplantiMadde.Aksiyon := Satirlar.DataController.DataSet.FieldByName('Aksiyon').AsString;
   datalar.KurulToplantiMadde.Gorevli := Satirlar.DataController.DataSet.FieldByName('Gorevli').AsString;
   datalar.KurulToplantiMadde.GorevTarihi := Satirlar.DataController.DataSet.FieldByName('GorevTarihi').AsDateTime;
   datalar.KurulToplantiMadde.HedafTarih := Satirlar.DataController.DataSet.FieldByName('HedefTarih').AsDateTime;
   datalar.KurulToplantiMadde.YapilanIslem := Satirlar.DataController.DataSet.FieldByName('YapilanIslem').AsString;
   datalar.KurulToplantiMadde.TamamlanmaTarihi := Satirlar.DataController.DataSet.FieldByName('TamamlanmaTarihi').AsDateTime;
   datalar.KurulToplantiMadde.Tamam := Satirlar.DataController.DataSet.FieldByName('Tamam').AsInteger;

end;

begin

  case AButtonIndex of
   6 : begin
        datalar.KurulToplantiMadde.SiraNo := 0;
        datalar.KurulToplantiMadde.Madde := '';
        datalar.KurulToplantiMadde.Karar := '';
        datalar.KurulToplantiMadde.GorusmeNotlari := '';
        datalar.KurulToplantiMadde.Aksiyon := '';
        datalar.KurulToplantiMadde.Gorevli := '';
        datalar.KurulToplantiMadde.GorevTarihi := date;
        datalar.KurulToplantiMadde.HedafTarih := date;
        datalar.KurulToplantiMadde.YapilanIslem := '';
        datalar.KurulToplantiMadde.TamamlanmaTarihi := date;
        datalar.KurulToplantiMadde.Tamam := 0;

        Satirlar.DataController.DataSet.Last;
        siraNo := Satirlar.DataController.DataSet.FieldByName('siraNo').AsInteger + 1;
        datalar.KurulToplantiMadde.SiraNo := siraNo;
        if mrYes = ShowPopupForm('Madde Ekle',yeniMadde)
        then begin
         try
          Satirlar.DataController.DataSet.Append;

          datawrite;
          Satirlar.DataController.DataSet.post;
          Satirlar.DataController.DataSet.Active := False;
          Satirlar.DataController.DataSet.Active := True;
          ADone := True;
        except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           Satirlar.DataController.DataSet.Cancel;
          end;
        end;
        end
        else Satirlar.DataController.DataSet.Cancel;

    end;
   8 : begin
       //  SatirSil(SahaGozetimGrid.Dataset.FieldByName('id').AsString);
       //  FaturaDetay;
       end;

   9 : begin
        dataRead;
        if mrYes = ShowPopupForm('Madde D�zenle',MaddeDuzenle)
        then begin
         try
          Book := Satirlar.DataController.DataSet.Bookmark;
          Satirlar.DataController.DataSet.Edit;
          datawrite;
          Satirlar.DataController.DataSet.Post;
          Satirlar.DataController.DataSet.Active := False;
          Satirlar.DataController.DataSet.Active := True;
          Satirlar.DataController.DataSet.GotoBookmark(Book);
          //Satirlar.DataController.DataSet.Refresh;
         except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           Satirlar.DataController.DataSet.Cancel;
          end;
         end;
        end
        else Satirlar.DataController.DataSet.Cancel;

    end;

  end;


end;



procedure TfrmISGKurulToplanti.SirketlerPropertiesChange(Sender: TObject);
var
  sql : string;
  dataset : Tdataset;
begin

   sql :=
      ' select I.kod IGUKod,I.tanimi IGUAdi,D.kod DoktorKod,D.tanimi DoktorAdi from SIRKETLER_TNM S ' +
      ' join SIRKET_SUBE_TNM SB on SB.sirketKod = S.sirketKod ' +
      ' left join IGU I on I.kod = SB.IGU ' +
      ' left join DoktorlarT D on D.kod = SB.subeDoktor ' +
      ' where S.sirketKod = ' +
       QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue));
     //   +
    //  ' and SB.subeKod = ' +
    //   QuotedStr(vartostr(TcxImageComboKadir(FindComponent('subeKod')).EditingValue));

       dataset := datalar.QuerySelect(sql);

      TcxImageComboKadir(FindComponent('hekim')).EditValue := dataset.FieldByName('DoktorKod').AsString;
      TcxImageComboKadir(FindComponent('igu')).EditValue := dataset.FieldByName('IGUKod').AsString;
  (*
      TcxImageComboKadir(FindComponent('calisanTemsilci')).TableTip := tpSp;
      TcxImageComboKadir(FindComponent('calisanTemsilci')).TableName := 'exec sp_ISGFirmaEkip 10 ,' +
                                                                         QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue));
      TcxImageComboKadir(FindComponent('calisanTemsilci')).Filter := '';
      TcxImageComboKadir(FindComponent('idariIslerGorevli')).Properties.Items :=
      TcxImageComboKadir(FindComponent('calisanTemsilci')).Properties.Items;
      TcxImageComboKadir(FindComponent('ustabasi')).Properties.Items :=
      TcxImageComboKadir(FindComponent('calisanTemsilci')).Properties.Items;
      *)
end;

procedure TfrmISGKurulToplanti.cxKaydetClick(Sender: TObject);
var
 sql : string;
begin
  //SirketKodx.Text := datalar.AktifSirket; giri� formuna eklendi.
  inherited;

  case TControl(sender).Tag  of
Kaydet : begin
          Ekip;
        end;
  Yeni : begin
          TcxDateEditKadir(FindComponent('kararTarihi')).EditValue := date;
        end;
  end;
end;


procedure TfrmISGKurulToplanti.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    inherited;
    Enabled;
    Ekip;

    Maddeler;

(*
    if (TcxTextEditKadir(FindComponent('hazirlayan')).Text <>
       datalar.username) and
       TcxImageComboKadir(FindComponent('Onay')).EditValue = 1
    then begin
       Satirlar.OptionsData.Editing := False;
       Satirlar.OptionsData.Inserting := False;
       Satirlar.OptionsData.Deleting := False;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := False;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := False;
       TcxImageComboKadir(FindComponent('isveren')).Enabled := False;
       TcxImageComboKadir(FindComponent('Onay')).Enabled := False;

    end
    else
    begin
       Satirlar.OptionsData.Editing := True;
       Satirlar.OptionsData.Inserting := True;
       Satirlar.OptionsData.Deleting := True;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := True;
       TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := True;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := True;
       TcxImageComboKadir(FindComponent('isveren')).Enabled := True;
       TcxImageComboKadir(FindComponent('Onay')).Enabled := True;
    end;

  *)
end;

function TfrmISGKurulToplanti.Init(Sender : TObject) : Boolean;
begin
  Result := True;
end;


procedure TfrmISGKurulToplanti.Fatura(islem: Integer);

begin
  //
end;

procedure TfrmISGKurulToplanti.PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
(*
  if RDSSatirlar.Controller.FocusedColumn.Name = 'RDSSatirlarRisk_tanim'
  Then begin
    List.Table := 'RDS_Risk';
    L := List.ListeGetir;
    RDSSatirlar.DataController.DataSet.Edit;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsString := L[0].Kolon2;
    RDSSatirlar.DataController.DataSet.Post;
  end;

  if RDSSatirlar.Controller.FocusedColumn.Name = 'RDSSatirlarTehlike'
  Then begin
    List.Table := 'RDS_Tehlike';
    L := List.ListeGetir;
    RDSSatirlar.DataController.DataSet.Edit;
    RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString := L[0].Kolon2;
    RDSSatirlar.DataController.DataSet.Post;
  end;
  *)
end;

procedure TfrmISGKurulToplanti.cxButtonCClick(Sender: TObject);
var
  dosya : TOpenDialog;
  TopluDataset : TDataSetKadir;
  FB : TFirmaBilgi;
begin
  inherited;

  TopluDataset.Dataset0 := datalar.QuerySelect('select * from SirketISGKurulToplanti_view where id = ' +
                                                        varTostr(TcxButtonEditKadir(FindComponent('id')).EditValue));
  TopluDataset.Dataset1 := KurulEkipGrid.Dataset;

  case Tcontrol(sender).Tag of
  -20 : begin
          PrintYap('TCF','Toplant� �a�r� Formu','',TopluDataset);
        end;

  -21 : begin
          PrintYap('KTT','Kurul Toplant� Tutana��','',TopluDataset);

        end;
  -30 : begin
          PrintYap('TCF','Toplant� �a�r� Formu','',TopluDataset,pTPDF,self);

          FB.isgKurulEkibiMailBilgileri := isgKurulEkibiMailBilgileri(vartostr(TcxButtonEditKadir(FindComponent('id')).EditValue));
          //:= FirmaBilgileri(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue),'00');
          if (mailGonder(FB.isgKurulEkibiMailBilgileri,
                        'Toplant� �a�r� Formu',
                        'Toplant� �a�r� Formu , ekteki dosyada bilginize sunulmu�tur',
                        'Toplant� �a�r� Formu.PDF')
               = '0000')
             Then ShowMessageSkin('Email Bilgilendirmesi Yap�ld�','','','info')
              else ShowMessageSkin('Email Bilgilendirmesi Yap�lamad�','','','info')

        end;

  end;
end;

procedure TfrmISGKurulToplanti.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
    F := FormINIT(9010,GirisRecord,ikHayir,'');
    if F <> nil then F.ShowModal;
end;


procedure TfrmISGKurulToplanti.FormCreate(Sender: TObject);
var
  Faturalar : TListeAc;
  sirketlerx,igu,hekim : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
   where : string;
begin
  inherited;


  cxPanel.Visible := True;
  Menu := PopupMenu1;
  indexFieldName := 'id';
  TableName := 'SirketISGKurulToplanti';
 // TopPanel.Visible := true;

  where := '';

  Faturalar := ListeAcCreate('SirketISGKurulToplanti_view','id,sirketKod,sirketAdi,kararTarihi,kararNo',
                       'ID,�irketKodu,�irketAd�,Kara Tarihi,Karar No',
                       '40,60,250,80,50','ID','Kurul Toplant�lar�',where,5,True);

  setDataStringB(self,'id','Toplant� ID',Kolon1,'',50,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  setDataString(self,'ToplantiNo','Toplant� No',Kolon1,'',80,false,'');
  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  FaturaTarihi.Properties.Kind := ckDateTime;
  setDataStringKontrol(self,FaturaTarihi,'ToplantiZamani','Toplant� Tarihi',Kolon1,'',150);
  setDataString(self,'ToplantiYeri','Toplant� Yeri',Kolon1,'',150,false,'');
  setDataString(self,'ToplantiBaskani','Toplant� Ba�kan�',Kolon1,'',150,false,'');

 // setDataStringBLabel(self,'bosSatir1',kolon1,'',300);

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  FaturaTarihi.Properties.Kind := ckDateTime;
  setDataStringKontrol(self,FaturaTarihi,'kararTarihi','Karar Tarihi',Kolon2,'',150);
  setDataString(self,'defterSayfaNo','Defter Sayfa No',Kolon2,'',80,false,'');
  setDataString(self,'kararNo','Karar No',Kolon2,'',80,false,'',False);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := '';//datalar.sirketlerUserFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','�irket',Kolon1,'',300,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := SirketlerPropertiesChange;

  setDataString(self,'isveren','��veren',Kolon1,'',150,false,'');

  igu := TcxImageComboKadir.Create(self);
  igu.Conn := Datalar.ADOConnection2;
  igu.TableName := 'IGU';
  igu.ValueField := 'kod';
  igu.DisplayField := 'Tanimi';
  igu.BosOlamaz := False;
  igu.Enabled := False;
  igu.Filter := ' durum = ''Aktif''';
  setDataStringKontrol(self,igu,'igu','�� G�venlik Uzm',Kolon1,'',150,0,alNone,'');


//  setDataString(self,'hazirlayan','�� G�venlik Uzm',Kolon1,'hz',120,false,'',True);

  hekim := TcxImageComboKadir.Create(self);
  hekim.Conn := Datalar.ADOConnection2;
  hekim.TableName := 'DoktorlarT';
  hekim.ValueField := 'kod';
  hekim.DisplayField := 'Tanimi';
  hekim.BosOlamaz := False;
  hekim.Filter := ' durum = ''Aktif''';
  hekim.Enabled := False;
  setDataStringKontrol(self,hekim,'hekim','��yeri Hekimi',Kolon1,'',150,0,alNone,'');

(*
  hekim := TcxImageComboKadir.Create(self);
  hekim.Conn := Datalar.ADOConnection2;
  hekim.TableTip := tpSp;
  hekim.TableName := 'exec sp_ISGFirmaEkip 10 ,' + QuotedStr('0000') ;
  hekim.ValueField := 'kod';
  hekim.DisplayField := 'AdiSoyadi';
  hekim.BosOlamaz := False;
  hekim.Filter := '';
  hekim.Enabled := False;
  setDataStringKontrol(self,hekim,'calisanTemsilci','�al��an Temsilcisi',Kolon1,'',150,0,alNone,'');


//  setDataString(self,'calisanTemsilci','�al��an Temsilcisi',Kolon1,'',150,false,'');


  hekim := TcxImageComboKadir.Create(self);
  hekim.Conn := Datalar.ADOConnection2;
  hekim.TableTip := tpSp;
  hekim.TableName := 'exec sp_ISGFirmaEkip 10 ,' + QuotedStr('0000') ;
  hekim.ValueField := 'kod';
  hekim.DisplayField := 'AdiSoyadi';
  hekim.BosOlamaz := False;
  hekim.Filter := '';
  hekim.Enabled := False;
  setDataStringKontrol(self,hekim,'ustaBasi','Ustaba��',Kolon1,'',150,0,alNone,'');

  hekim := TcxImageComboKadir.Create(self);
  hekim.Conn := Datalar.ADOConnection2;
  hekim.TableTip := tpSp;
  hekim.TableName := 'exec sp_ISGFirmaEkip 10 ,' + QuotedStr('0000') ;
  hekim.ValueField := 'kod';
  hekim.DisplayField := 'AdiSoyadi';
  hekim.BosOlamaz := False;
  hekim.Filter := '';
  hekim.Enabled := False;
  setDataStringKontrol(self,hekim,'idariIslerGorevli','�dari ��ler G�revlisi',Kolon1,'',150,0,alNone,'');
 *)

  setDataStringKontrol(self,KurulEkipGrid,'KurulEkipGrid',' ',Kolon1,'',450,140,alNone,'',clLeft);

  setDataStringKontrol(self,KurulMaddeler,'KurulMaddeler',' ',Kolon1,'',900,140,alNone,'',clLeft);

//  setDataStringMemo(self,'GundemMaddeleri','Gundem Maddeleri',kolon1,'',450,145);

//  setDataStringMemo(self,'KonuveKararlar','Al�nan Kararlar',kolon2,'',450,400);

(*
  Onay := TcxImageComboKadir.Create(self);
  Onay.Conn := nil;
  Onay.ItemList := '1;Evet,0;Hay�r';
  Onay.Filter := '';
  setDataStringKontrol(self,Onay,'Onay','Onay',kolon4,'trh',50);
  OrtakEventAta(Onay);
 *)



  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;

  SayfaCaption('','','','','');
  Disabled(self,True);
end;

procedure TfrmISGKurulToplanti.GozlemYazdir(const GozlemID: integer);
var
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_SahaGozlemRaporBaski ' + IntToStr (GozlemID);

    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.Name := 'SahaSaglikGozetimRaporu';

    PrintYap('007','Saha Sa�l�k G�zetim Raporu','',TopluDataset,pTNone)
  finally
    ado.free;
  end;
end;

procedure TfrmISGKurulToplanti.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

