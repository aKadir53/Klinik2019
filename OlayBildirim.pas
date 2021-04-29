unit OlayBildirim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,GetFormClass,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxImageComboBox, cxMemo, cxCurrencyEdit, cxGridLevel,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;



type
  TfrmOlayBildirim = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    Olaylar: TListeAc;
    g1: TMenuItem;
    O1: TMenuItem;
    O2: TMenuItem;
    List: TcxGridKadir;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    Liste: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    ListeColumn1: TcxGridDBBandedColumn;
    ListeColumn2: TcxGridDBBandedColumn;
    ListeColumn3: TcxGridDBBandedColumn;
    ListeColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    ListeColumn5: TcxGridDBBandedColumn;
    ListeColumn6: TcxGridDBBandedColumn;
    K1: TMenuItem;
    S1: TMenuItem;
    W1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure Yazdir(Tip : integer);
    procedure g1Click(Sender: TObject);
    procedure W1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'OlayBildirim';
      formGenislik = 780;
      formYukseklik = 570;

var
  frmOlayBildirim: TfrmOlayBildirim;
  konuKod , anaParametreKod , altParametreKod : string;

implementation
   uses MedEczane;

{$R *.dfm}
procedure TfrmOlayBildirim.cxButtonCClick(Sender: TObject);
var
  Ado : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;
    case TMenuItem(sender).Tag  of
      -1,-2 : begin
               Yazdir(TMenuItem(sender).Tag);
              end;


    end;
end;

procedure TfrmOlayBildirim.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
end;

procedure TfrmOlayBildirim.ButtonClick(Sender: TObject);
begin
    if TcxButtonKadir(sender).tag = -21
    Then begin
      datalar.QuerySelect(List.Dataset,
                          'select * from OlayBildirimView  ' +
                          ' where sirketKod = ' + QuotedStr(datalar.aktifSirket) +
                          ' and Tarih between ' + TcxDateEditKadir(FindComponent('Tarih1')).GetSQLValue  +
                          ' and ' + TcxDateEditKadir(FindComponent('Tarih2')).GetSQLValue
                          );

    end;
end;

procedure TfrmOlayBildirim.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmOlayBildirim.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmOlayBildirim.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmOlayBildirim.FormCreate(Sender: TObject);
var
  IC : TcxImageComboKadir;
  Tarih,KTarih,TaniTarih : TcxDateEditKadir;
  FaturaTarihi : TcxDateEditKadir;
begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'id';
  TableName := _TableName_;
  Menu := PopupMenu1;

  setDataStringB(self,'id','S�ra No',Kolon1,'',70,Olaylar,True,nil,'','',False,True,-100);


  Tarih := TcxDateEditKadir.Create(self);
  Tarih.ValueTip := tvDate;
  setDataStringKontrol(self,Tarih,'Tarih','Tarih',kolon1,'trh',100);
  Tarih.Tag := 1;

  setDataString(self,'HataKodu','Hata Kodu',Kolon1,'trh',110,True);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'KullaniciSirketleri_View';
  IC.ValueField := 'SirketKod';
  IC.DisplayField := 'Tanimi';
  IC.BosOlamaz := False;
  IC.Filter := datalar.sirketlerUserFilter;

  //SirketComboFilter

  setDataStringKontrol(self,IC,'SirketKod','�irket',Kolon1,'',370,0,alNone,'');

  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := PropertiesEditValueChanged;//SirketlerPropertiesChange;

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'OlayBildirim_Hata_Yapan';
  IC.ValueField := 'kod';
  IC.DisplayField := 'Tanimi';
  IC.BosOlamaz := False;
  IC.Filter := '';
  setDataStringKontrol(self,IC,'hatayiYapan','Hatayi Yapan Meslek',Kolon1,'per',120,0,alNone,'');

  setDataStringCurr(self,'personelSayisi','Personel Say�s�',Kolon1,'per',50,'0',0);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'OlayBildirim_Zaman';
  IC.ValueField := 'kod';
  IC.DisplayField := 'Tanimi';
  IC.BosOlamaz := False;
  IC.Filter := '';
  setDataStringKontrol(self,IC,'hataZamani','Hatayi Zaman�',Kolon1,'',120,0,alNone,'');


  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'OlayBildirimKonu';
  IC.ValueField := 'kod';
  IC.DisplayField := 'tanimi';
  IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'konu','Bildirim Konusu',kolon1,'',120);
  OrtakEventAta(IC);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'OlayBildirimKonu_Alt_Modul';
  IC.ValueField := 'kod';
  IC.DisplayField := 'tanimi';
 // IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'anaParametre','Ana Parametresi',kolon1,'',200);
  OrtakEventAta(IC);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'OlayBildirimKonu_Alt_Modul_Detay';
  IC.ValueField := 'kod';
  IC.DisplayField := 'tanimi';
 // IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'altParametre','Alt Parametresi',kolon1,'',200);
  OrtakEventAta(IC);


  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'PersonelKartListeView';
  IC.ValueField := 'dosyaNO';
  IC.DisplayField := 'Personel';
  IC.Filter := ' aktif = 1 and sirketKod = ' + QuotedStr(datalar.AktifSirket) ;
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'personelDosyaNo','Personel ',kolon1,'',200);
  OrtakEventAta(IC);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'HastaKartView';
  IC.ValueField := 'dosyaNO';
  IC.DisplayField := 'Hasta';
  IC.Filter := ' aktif = 1 and sirketKod = ' + QuotedStr(datalar.AktifSirket);
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'hastaDosyaNo','Hasta ',kolon1,'',200);
  OrtakEventAta(IC);


  IC := TcxImageComboKadir.Create(self);
  IC.Conn := nil;
  IC.ItemList := '0;Ger�ekle�en Olay,1;�stenmeyen Olay,2;Ramak Kala';
  IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'duzey','Bildirim D�zeyi',Kolon1,'',120);
  OrtakEventAta(IC);

  setDataString(self,'yer','Ger�ekle�ti�i Yer',Kolon1,'',380,True);

  setDataString(self,'kisi','Bildirim Yapan',Kolon1,'',380,True);
  setDataString(self,'yetkiliKisi','Bildirim Yap�lan Yetkili',Kolon1,'',380,True);

  Tarih := TcxDateEditKadir.Create(self);
  Tarih.ValueTip := tvDate;
  setDataStringKontrol(self,Tarih,'zaman','Tarih',kolon1,'',130);
  Tarih.Tag := 1;

  setDataStringMemo(self,'Olay','Olay',Kolon1,'',380,50);

  setDataStringMemo(self,'aciklama','Yap�lan ��lem',Kolon1,'',380,50);
  setDataStringMemo(self,'gorusOneri','Sonu�',Kolon1,'',380,50);
  setDataStringMemo(self,'idariTibbiUygulama','Yap�lan �dari/T�bbi Uyg.',Kolon1,'',380,30);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := nil;
  IC.ItemList := '0;Hay�r,1;Evet';
  IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'hukakaYansidi','Hukuka Yans�d�',Kolon1,'',60);
  OrtakEventAta(IC);

  Tarih := TcxDateEditKadir.Create(self);
  Tarih.ValueTip := tvDateTime;
  setDataStringKontrol(self,Tarih,'gorulmeTarihi','G�r�lme',kolon1,'',130);
  Tarih.Tag := 1;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  FaturaTarihi.Tag := -1;
  setDataStringKontrol(self,FaturaTarihi,'Tarih1','Tarih Aral���',sayfa2_Kolon1,'trh2',100);
  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  FaturaTarihi.Tag := -1;
  setDataStringKontrol(self,FaturaTarihi,'Tarih2','',sayfa2_Kolon1,'trh2',100);
  addButton(self,nil,'btnList','','Listele',sayfa2_Kolon1,'trh2',100,ButtonClick,-21);


  setDataStringKontrol(self,List,'List','',sayfa2_Kolon1,'',1,1,alClient);

  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;

  Kolon2.Visible := False;
  Kolon3.Visible := False;
  Kolon4.Visible := False;

  SayfaCaption('Olay','Olay Listesi','','','');


  Disabled(self,True);


 end;





procedure TfrmOlayBildirim.g1Click(Sender: TObject);
var
  d , tc : string;
  F : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin

     if UserRight('SKS', 'Olay Bildirim G�nderimi Yap') = False
     then begin
         ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
         exit;
     end;

 //  if TcxImageComboKadir(FindComponent('Konu')).EditValue = 1 then
 //  begin
         GirisFormRecord.F_HastaAdSoyad_ := 'G�venlik Raporlama';
         try
          F := FormINIT(TagfrmOlayBildirimRaporlama,GirisFormRecord,ikHayir,'');
          TfrmMedEczane(F).receteForm := self;
          TfrmMedEczane(F)._tip := konuKod;
          TfrmMedEczane(F)._yer := 'KL';
          TfrmMedEczane(F)._konu := konuKod;
          TfrmMedEczane(F)._yapan := varTostr(TcxImageComboKadir(FindComponent('hatayiYapan')).EditValue);
          TfrmMedEczane(F)._zaman := varTostr(TcxImageComboKadir(FindComponent('hataZamani')).EditValue);
          TfrmMedEczane(F)._anaprm := anaParametreKod;
          TfrmMedEczane(F)._altprm := altParametreKod;

          if F <> nil then F.ShowModal;

         finally
           F.Free;
         end;

 //  end;


end;

function TfrmOlayBildirim.Init(Sender: TObject): Boolean;
begin
  Result := True;
  if not inherited Init(Sender) then exit;
   if _kod_ <> '' then
   begin
     TcxButtonEdit(FindComponent('id')).EditValue := _kod_;
     cxButtonEditPropertiesButtonClick(TcxButtonEdit(FindComponent('id')),-1);
     enabled;
   end;
end;

procedure TfrmOlayBildirim.PropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if TcxImageComboKadir(sender).Name = 'konu'
  then begin
    TcxImageComboKadir(FindComponent('anaParametre')).Filter := ' BildirimKonuKod = ' + varTostr(TcxImageComboKadir(FindComponent('konu')).EditValue);
    konuKod := datalar.QuerySelect('select koddegeri from OlayBildirimKonu where kod = ' + varTostr(TcxImageComboKadir(FindComponent('konu')).EditValue)).Fields[0].AsString;

    if TcxImageComboKadir(FindComponent('konu')).EditValue = 1
    then
      TcxImageComboKadir(FindComponent('personelDosyaNo')).Clear
    else
      TcxImageComboKadir(FindComponent('hastaDosyaNo')).Clear;
  end;

  if TcxImageComboKadir(sender).Name = 'anaParametre'
  then begin
    TcxImageComboKadir(FindComponent('altParametre')).Filter := ' AltModulKod = ' + varTostr(TcxImageComboKadir(FindComponent('anaParametre')).EditValue);
    anaParametreKod := datalar.QuerySelect('select koddegeri from OlayBildirimKonu_Alt_Modul where kod = ' + varTostr(TcxImageComboKadir(FindComponent('anaParametre')).EditValue)).Fields[0].AsString;
  end;

   if TcxImageComboKadir(sender).Name = 'altParametre'
  then begin
    altParametreKod := datalar.QuerySelect('select koddegeri from OlayBildirimKonu_Alt_Modul_Detay where kod = ' + varTostr(TcxImageComboKadir(FindComponent('altParametre')).EditValue)).Fields[0].AsString;
  end;

  TcxTextEdit(FindComponent('hataKodu')).EditValue :=
  konuKod + 'KL.' + varTostr(TcxImageComboKadir(FindComponent('hatayiYapan')).EditValue) + '.' +
  varTostr(TcxImageComboKadir(FindComponent('hataZamani')).EditValue) + '.' + anaParametreKod+altParametreKod;



end;

procedure TfrmOlayBildirim.W1Click(Sender: TObject);
var
 Tel,msj,Ad : string;
begin

      tel := datalar.KaliteBirim.BirimDirektoruTel;
      Ad :=  'Kalite Direkt�r� : ' + datalar.KaliteBirim.BirimDirektoruAdi;

      tel := trim(StringReplace(StringReplace(StringReplace(tel,'(','',[rfReplaceAll]),')','',[rfReplaceAll]),'-','',[rfReplaceAll]));

      msj := 'Olay Bildirim S�ra NO : ' + TcxTextEdit(FindComponent('Id')).Text + #13 +
             'Hata Turu : ' + TcxImageComboBox(FindComponent('Konu')).Text + #13 +
             'Hata : ' +  TcxImageComboBox(FindComponent('altParametre')).Text +  #13 +
             'Hata Kodu : ' + TcxTextEdit(FindComponent('HataKodu')).Text;


      if tel = ''
      then begin
        ShowMessageSkin('Mobil Telefon bo� olmamal�d�r','','','info');
        exit;
      end;

      if (Length(tel) > 0) and (Length(tel) < 10)
      then begin
       ShowMessageSkin(tel,'Mobil Tel Hatal�','10 Haneli Ge�erli Bir Numara De�ildir','info');
       exit;
      end;

      if TMenuItem(sender).Tag = -22
      then
        WhatsappSend(datalar.WhatsappTelefonToken,tel,msj,Ad,'')
      else
      SMSSend(tel,msj,_HastaAdSoyad_,_dosyaNO_);


end;

procedure TfrmOlayBildirim.Yazdir(Tip : integer);
var
  Data : TDataSetKadir;
begin
//

  case Tip of
   -1 : begin
          Data.Dataset1 := datalar.QuerySelect(
                                'select * from OlayBildirimView  ' +
                                ' where id = ' + TcxButtonEditKadir(FindComponent('id')).Text
                                );
          Data.Dataset2 := datalar.ADO_AktifSirket;
          Data.Dataset3 := datalar.ADO_aktifSirketLogo;
          PrintYap('OBF','Olay Bildirim','0',Data);
       end;

    -2 : begin
          Data.Dataset1 := List.Dataset;
          Data.Dataset2 := datalar.ADO_AktifSirket;
          Data.Dataset3 := datalar.ADO_aktifSirketLogo;
          PrintYap('OBL','Olay Bildirim Listesi','0',Data);
       end;

  end;







end;

procedure TfrmOlayBildirim.cxKaydetClick(Sender: TObject);
begin
  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    Yeni : begin
             TcxImageComboKadir(FindComponent('hastaDosyaNo')).Filter := ' Aktif = 1 ';
             TcxImageComboKadir(FindComponent('personelDosyaNo')).Filter := ' Aktif = 1 ';
           end;
  end;


  inherited;

  case TcxButton(sender).Tag  of
Kaydet : begin
          W1.Click;

        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    1 : begin
         // post;
         //ShowMessage('�ptal');
        end;
  end;
end;

end.
