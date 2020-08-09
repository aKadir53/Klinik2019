unit takipOkuBilgisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, Buttons, Mask,adodb,
  AdvToolBtn, ExtCtrls ,strUtils ,kadir ,GirisUnit,KadirType,
  data_modul, DB, RxMemDS, DBGridEh, ComCtrls,kadirMedula3,
  Menus, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, GridsEh, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit,
  cxButtonEdit, KadirLabel;



type
  TfrmTakipBilgisiOku = class(TGirisForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    txtTakipBilgisi: TMemo;
    hizmetler: TPageControl;
    TabSheet3: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet7: TTabSheet;
    TabSheet10: TTabSheet;
    DBGridEh4: TDBGridEh;
    DBGridEh8: TDBGridEh;
    TabSheet6: TTabSheet;
    DBGridEh7: TDBGridEh;
    PopupMenu1: TPopupMenu;
    SadeceHizmetiptalEt1: TMenuItem;
    GruptakiHizmetleriptalEt1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    GridSonuc: TDBGridEh;
    Splitter1: TSplitter;
    TabSheet4: TTabSheet;
    DBGridEh2: TDBGridEh;
    TabSheet5: TTabSheet;
    txtLog: TMemo;
    TabSheet8: TTabSheet;
    DBGridEh6: TDBGridEh;
    PopupMenu3: TPopupMenu;
    SonularSistemeYaz1: TMenuItem;
    bilgiT: TRxMemoryData;
    bilgiTtckimlikNo: TStringField;
    bilgiTmuayeneAcilisTarihi: TStringField;
    bilgiTsosyalGuvenlikNo: TStringField;
    bilgiTyakinlikKodu: TStringField;
    bilgiTkarneNo: TStringField;
    bilgiTprovizyonTuru: TStringField;
    bilgiTdevredilenKurum: TStringField;
    bilgiTDurum: TStringField;
    bilgiTAdi: TStringField;
    bilgiTDTarihi: TStringField;
    bilgiTCinsiyet: TStringField;
    bilgiTDoktor: TStringField;
    bilgiTKayitTarihi: TStringField;
    bilgiTtakipNo: TStringField;
    PopupMenu4: TPopupMenu;
    S1: TMenuItem;
    T1: TMenuItem;
    PopupMenu5: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    PopupMenu6: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    N1: TMenuItem;
    MainMenu: TPopupMenu;
    HizmetleriOku1: TMenuItem;
    HizmetleriptalEt1: TMenuItem;
    HizmetleriKaydet1: TMenuItem;
    lemNumaralarnAl1: TMenuItem;
    BavuruNoAl1: TMenuItem;
    Kapat1: TMenuItem;
    N2: TMenuItem;
    procedure btnYeniClick(Sender: TObject);
    procedure btnIptalClick(Sender: TObject);
    procedure mHizmetleriptalEt1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure SonularSistemeYaz1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure TakipBilgisiOku;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmTakipBilgisiOku: TfrmTakipBilgisiOku;
  _takipNo : string;
  Takip : TTakipBilgisi;

implementation
uses //HastaKart,
     rapor;
{$R *.dfm}


function TfrmTakipBilgisiOku.Init(Sender: TObject) : Boolean;
begin
  inherited;
 // Olustur(self,_TableName_,'Takip Bilgisi Oku',22,sqlInsert);
  Menu := MainMenu;
  cxPanel.Visible := false;
  SayfaCaption('','','','','');
  ToolBar1.Visible := false;
  Result := True;
end;


procedure TfrmTakipBilgisiOku.cxButtonCClick(Sender: TObject);
var
 List : TListeAc;
 _L_ : ArrayListeSecimler;
 _name_ : string;
 sonuc : string;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag  of
  -1 : begin
          pnlDurum.BringToFront;
          pnlDurum.Visible := True;
          pnlDurum.Caption := 'Hizmet Bilgisi Okunuyor...';
          Application.ProcessMessages;
          DatalariBosalt;
          txtLog.Lines.Add(HizmetKaydiOku(_TakipNo_,_BasvuruNo_));
          pnlDurum.Visible := False;
        end;
  -2 : begin
         pnlDurum.Visible := true;
         //TumHizmetleriIptalEt(_TakipNo_);
         pnlDurum.Visible := false;
       end;
  -3 : begin
         pnlDurum.Visible := true;
      //   TumHizmetleriMedulayaKaydet(_TakipNo_,_BasvuruNo_);
         pnlDurum.Visible := false;
       end;
  -4 : begin
         DurumGoster(True);
         try
          IslemNumaralariniAl(_TakipNo_);
          finally
           DurumGoster(False);
         end;
       end;
  -5 : begin
         BasvuruNoSistemeYaz(_TakipNo_,_BasvuruNo_);
       end;


 -10 : begin
         close;
       end;


  end;

end;


procedure TfrmTakipBilgisiOku.TakipBilgisiOku;
var
   HastaBil : TTakipBilgisi;
   Sonuc : string;
begin

      datalar.RxTaniBilgisi.Active := False;
      datalar.RxTaniBilgisi.Active := True;
      datalar.RxDigerIslem.Active := False;
      datalar.RxDigerIslem.Active := True;
      datalar.RxTahlilIslem.Active := False;
      datalar.RxTahlilIslem.Active := True;

      datalar.HastaKabulWS.TakipOkuGiris.takipNo := _TakipNo_;
      datalar.HastaKabulWS.TakipOkuGiris.saglikTesisKodu := datalar._kurumKod;
      datalar.HastaKabulWS.KabulOku;

      if datalar.HastaKabulWS.Takip.sonucKodu = '0000'
      Then Begin
          ToolBar1.Visible := true;
          txtTakipBilgisi.Lines.Add('Takip No       :  ' + datalar.HastaKabulWS.Takip.takipNo);
          txtTakipBilgisi.Lines.Add('Baþvuru No     :  ' + datalar.HastaKabulWS.Takip.hastaBasvuruNo);
          txtTakipBilgisi.Lines.Add('Ýlk Takip No   :  ' + datalar.HastaKabulWS.Takip.ilkTakipNo );
          txtTakipBilgisi.Lines.Add('Takip Tarihi   :  ' + datalar.HastaKabulWS.Takip.takipTarihi);
          txtTakipBilgisi.Lines.Add('Kayýt Tarihi   :  ' + datalar.HastaKabulWS.Takip.KayitTarihi);
          txtTakipBilgisi.Lines.Add('Hasta Adý      :  ' + datalar.HastaKabulWS.Takip.hastaBilgileri.ad + ' ' + datalar.HastaKabulWS.Takip.hastaBilgileri.soyad);
          txtTakipBilgisi.Lines.Add('Hasta Kimlik No:  ' + datalar.HastaKabulWS.Takip.hastaBilgileri.tcKimlikNo);
          txtTakipBilgisi.Lines.Add('Takip Tipi     :  ' + datalar.HastaKabulWS.Takip.provizyonTipi);
          txtTakipBilgisi.Lines.Add('Tedavi Türü    :  ' + datalar.HastaKabulWS.Takip.tedaviTuru);
          txtTakipBilgisi.Lines.Add('Tedavi Tipi    :  ' + datalar.HastaKabulWS.Takip.tedaviTipi);
          txtTakipBilgisi.Lines.Add('ProvizYon Tipi :  ' + datalar.HastaKabulWS.Takip.provizyonTipi);
          txtTakipBilgisi.Lines.Add('Branþ          :  ' + datalar.HastaKabulWS.takip.bransKodu);

          datalar.Bilgi.TakipNo := datalar.HastaKabulWS.Takip.takipNo;
          datalar.Bilgi.BasvuruNo := datalar.HastaKabulWS.Takip.hastaBasvuruNo;
          datalar.Bilgi.dosyaNo := _dosyaNO_;
          datalar.Bilgi.gelisNo := _gelisNO_;
          _BasvuruNo_ := datalar.HastaKabulWS.Takip.hastaBasvuruNo;
          frmTakipBilgisiOku._HastaAdSoyad_ := _HastaAdSoyad_;
      End
      else
      frmTakipBilgisiOku.txtTakipBilgisi.Lines.Add(datalar.HastaKabulWS.Takip.sonucMesaji);

end;


procedure TfrmTakipBilgisiOku.btnYeniClick(Sender: TObject);
var
  _data : Tdataset;
begin


//     Application.CreateForm(TrptProvizyonYaz, rptProvizyonYaz);
     bilgiT.Active := false;
     bilgiT.Active := true;
     bilgit.Append;
     bilgiTtakipNo.Value := takip.Takip;
     bilgiTtckimlikNo.Value := takip.TcKimlik;
     bilgiTmuayeneAcilisTarihi.Value := takip.MuayeneTarihi;
     bilgiTKayitTarihi.Value := takip.KayitTarihi;

     bilgiTsosyalGuvenlikNo.Value := datalar.bilgi.sosyalGuvenlikNo;
     bilgiTkarneNo.Value := datalar.bilgi.karneNo;
     bilgiTDurum.Value := takip.TalipDurumu;
     bilgiTAdi.Value := takip.HastaAdi;
     bilgiTDTarihi.Value := takip.yas;
     bilgiTDoktor.Value := datalar.bilgi.Doktor;
     bilgiT.Post;

     _data := bilgiT;

     frmRapor.raporDataset(_data,'031','\TakipOkuYaz','');
     frmRapor.ShowModal;

end;

procedure TfrmTakipBilgisiOku.btnIptalClick(Sender: TObject);
begin

//   Application.Terminate;
   close;

end;

procedure TfrmTakipBilgisiOku.mHizmetleriptalEt1Click(Sender: TObject);
var
  msg , islemSiraNo , sql : string;
  i , j : integer;
begin

    if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = False
    Then Begin
      ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok','Sistem Yöneticinizle Görüþün','Hizmet Ýptal','info');
      exit;
    End;

   try

            if TMenuItem(sender).Tag = 2
            Then Begin
                 if mrYes = ShowMessageSkin('Gruptaki Hizmetler Ýptal Edilecek Emin misiniz ?','','','msg')
                 Then begin
                        i := datalar.RxTahlilIslem.RecordCount;
                        if i = 0 then exit;
                        setlength(datalar.islemSiralari,0);
                        setlength(datalar.islemSiralari,i);
                        datalar.RxTahlilIslem.First;
                        for j := 0 to i-1 do
                        begin
                            datalar.islemSiralari[j] := datalar.RxTahlilIslem.fieldbyname('islemsiraNo').AsString;
                            datalar.RxTahlilIslem.Next;
                        end;
                 End else exit;
            End;

            if TMenuItem(sender).Tag = 1
            Then Begin
                 if mrYes = ShowMessageSkin('Satýrdaki Hizmet Ýptal Edilecek Emin misiniz ?','','','msg')
                 Then begin
                      setlength(datalar.islemSiralari,0);
                      i := 1;
                      setlength(datalar.islemSiralari,i);
                      datalar.islemSiralari[0] := datalar.RxTahlilIslem.fieldbyname('islemsiraNo').AsString;
                 End else exit;
            End;

            if Length(datalar.islemSiralari) > 0
            then begin
              msg := HizmetKaydiIptal(_TakipNo_);

              if msg = '0000'
              Then Begin
                 HizmetIptalSonucDBYaz;
                 ShowMessageSkin('Hizmet Ýptal Edildi','','','info')
              End
              Else ShowMessageSkin(msg,'','','info');
            end;


   finally
      setlength(datalar.islemSiralari,0);
    end;

End;


procedure TfrmTakipBilgisiOku.N1Click(Sender: TObject);
var
  islemSiraNO : string;
  siraNO ,sql : string;
begin
     try
      islemSiraNO := datalar.RxDigerIslem.fieldbyname('islemSiraNo').AsString;
      siraNO := datalar.RxDigerIslem.fieldbyname('HizmetSunucuRefNo').AsString;
      sql := 'update hareketler set islemSiraNo = ' + QuotedStr(islemSiraNo) +
            ' where sirano = ' + siraNO;
      datalar.QueryExec(sql);
     except on e : Exception do
       begin
         ShowMessageSkin(e.Message,'','','info');
       end;
     end;
     ShowMessageSkin('Ýþlem Sira Sisteme Alýndý','','','info');
end;

procedure TfrmTakipBilgisiOku.S1Click(Sender: TObject);
var
  msg , islemSiraNo , sql : string;
  i , j : integer;
begin

    if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = False
    Then Begin
      ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok','Sistem Yöneticinizle Görüþün','Hizmet Ýptal','info');
      exit;
    End;

  try

            if TMenuItem(sender).Tag = 0
            Then Begin
                 if mrYes = ShowMessageSkin('Seans Ýptal Edilecek Emin misiniz ?','','','msg')
                 Then begin
                      setlength(datalar.islemSiralari,0);
                      i := 1;
                      setlength(datalar.islemSiralari,i);
                      datalar.islemSiralari[0] := datalar.RxDigerIslem.fieldbyname('islemsiraNo').AsString;
                 End else exit;
            End;


            msg := HizmetKaydiIptal(_TakipNo_);

            if msg = '0000'
            Then Begin
               HizmetIptalSonucDBYaz;
               ShowMessageSkin('Hizmet Ýptal Edildi','','','info')
            End
            Else ShowMessageSkin(msg,'','','info');


  finally
   setlength(datalar.islemSiralari,0);
  end;


End;

procedure TfrmTakipBilgisiOku.MenuItem1Click(Sender: TObject);
var
  msg , islemSiraNo , sql : string;
  i , j : integer;
begin

            if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = False
            Then Begin
              ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok','Sistem Yöneticinizle Görüþün','Hizmet Ýptal','info');
              exit;
            End;


   try
            if TMenuItem(sender).Tag = 2
            Then Begin
                 if mrYes = ShowMessageSkin('Gruptaki Hizmetler Ýptal Edilecek Emin misiniz ?','','','msg')
                 Then begin
                        i := datalar.RxRadIslem.RecordCount;
                        if i = 0 then exit;
                        setlength(datalar.islemSiralari,0);
                        setlength(datalar.islemSiralari,i);
                        datalar.RxRadIslem.First;
                        for j := 0 to i-1 do
                        begin
                            datalar.islemSiralari[j] := datalar.RxRadIslem.fieldbyname('islemsiraNo').AsString;
                            datalar.RxRadIslem.Next;
                        end;
                 End else exit;
            End;

            if TMenuItem(sender).Tag = 1
            Then Begin
                 if mrYes = ShowMessageSkin('Satýrdaki Hizmet Ýptal Edilecek Emin misiniz ?','','','msg')
                 Then begin
                      setlength(datalar.islemSiralari,0);
                      i := 1;
                      setlength(datalar.islemSiralari,i);
                      datalar.islemSiralari[0] := datalar.RxRadIslem.fieldbyname('islemsiraNo').AsString;
                 End else exit;
            End;

            if Length(datalar.islemSiralari) > 0
            then begin
            msg := HizmetKaydiIptal(_TakipNo_);

              if msg = '0000'
              Then Begin
                  HizmetIptalSonucDBYaz;
                 ShowMessageSkin('Hizmet Ýptal Edildi','','','info')
              End
              Else ShowMessageSkin(msg,'','','info');

            end;

   finally
     setlength(datalar.islemSiralari,0);
   end;


end;
procedure TfrmTakipBilgisiOku.MenuItem2Click(Sender: TObject);
var
  msg , islemSiraNo , sql : string;
  i , j : integer;
begin

    if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = False
    Then Begin
      ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok','Sistem Yöneticinizle Görüþün','Hizmet Ýptal','info');
      exit;
    End;

    try

            if TMenuItem(sender).Tag = 2
            Then Begin
                 if mrYes = ShowMessageSkin('Gruptaki Hizmetler Ýptal Edilecek Emin misiniz ?','','','msg')
                 Then begin
                        i := datalar.RxTaniBilgisi.RecordCount;
                        setlength(datalar.islemSiralari,0);
                        setlength(datalar.islemSiralari,i);
                        datalar.RxYatakBilgisi.First;
                        for j := 0 to i-1 do
                        begin
                            datalar.islemSiralari[j] := datalar.RxTaniBilgisi.fieldbyname('islemsiraNo').AsString;
                            datalar.RxTaniBilgisi.Next;
                        end;
                 End else exit;
            End;

            if Length(datalar.islemSiralari) > 0
            then begin

              msg := HizmetKaydiIptal(_TakipNo_);

              if msg = '0000'
              Then Begin
                 HizmetIptalSonucDBYaz;
                 ShowMessageSkin('Taný Ýptal Edildi','','','info')
              End
              Else ShowMessageSkin(msg,'','','info');
            end;


    finally
      setlength(datalar.islemSiralari,0);
    end;


end;

procedure TfrmTakipBilgisiOku.MenuItem5Click(Sender: TObject);
var
  msg , islemSiraNo , sql : string;
  i , j : integer;
begin

    if UserRight('MEDULA ÝÞLEMLERÝ', 'Hizmet Ýptal') = False
    Then Begin
      ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok','Sistem Yöneticinizle Görüþün','Hizmet Ýptal','info');
      exit;
    End;

   try

            if TMenuItem(sender).Tag = 2
            Then Begin
                 if mrYes = ShowMessageSkin('Gruptaki Hizmetler Ýptal Edilecek Emin misiniz ?','','','msg')
                 Then begin
                        i := datalar.RxMalzemeBilgisi.RecordCount;
                        if i = 0 then exit;
                        setlength(datalar.islemSiralari,0);
                        setlength(datalar.islemSiralari,i);
                        datalar.RxMalzemeBilgisi.First;
                        for j := 0 to i-1 do
                        begin
                            datalar.islemSiralari[j] := datalar.RxMalzemeBilgisi.fieldbyname('islemsiraNo').AsString;
                            datalar.RxMalzemeBilgisi.Next;
                        end;
                 End else exit;
            End;

            if TMenuItem(sender).Tag = 1
            Then Begin
                 if mrYes = ShowMessageSkin('Satýrdaki Hizmet Ýptal Edilecek Emin misiniz ?','','','msg')
                 Then begin
                      setlength(datalar.islemSiralari,0);
                      i := 1;
                      setlength(datalar.islemSiralari,i);
                      datalar.islemSiralari[0] := datalar.RxMalzemeBilgisi.fieldbyname('islemsiraNo').AsString;
                 End else exit;
            End;


            if Length(datalar.islemSiralari) > 0
            then begin
              msg := HizmetKaydiIptal(_TakipNo_);

              if msg = '0000'
              Then Begin
                 HizmetIptalSonucDBYaz;
                 ShowMessageSkin('Hizmet Ýptal Edildi','','','info')
              End
              Else ShowMessageSkin(msg,'','','info');
            end;


   finally
     setlength(datalar.islemSiralari,0);
   end;



End;

procedure TfrmTakipBilgisiOku.DBGridEh1DblClick(Sender: TObject);
begin
     gridSonuc.DataSource.DataSet.Filtered := false;
     gridSonuc.DataSource.DataSet.Filter := 'code = ' + datalar.RxTahlilIslem.fieldbyname('sutkodu').AsString;
     gridSonuc.DataSource.DataSet.Filtered := True;

end;

procedure TfrmTakipBilgisiOku.FormActivate(Sender: TObject);
begin
  pnlDurum.BringToFront;
  pnlDurum.Visible := True;
  pnlDurum.Caption := 'Takip Bilgisi Okunuyor...';
  Application.ProcessMessages;
  TakipBilgisiOku;
  pnlDurum.Visible := False;

end;

procedure TfrmTakipBilgisiOku.FormCreate(Sender: TObject);
begin
  inherited;
  Tag := TagfrmTakipBilgisiOku;
  ClientHeight := 529;
  ClientWidth := 664;

  cxPanel.Visible := false;
  Sayfalar.Properties.HideTabs := True;

  SayfaCaption('Takip','','','','');

  kolon2.Width := 0;
  kolon3.Width := 0;
  kolon2.Visible := false;
  kolon3.Visible := false;
end;

procedure TfrmTakipBilgisiOku.FormShow(Sender: TObject);
begin
  inherited;
  //Olustur(self,_TableName_,_HastaAdSoyad_,22,sqlInsert);
end;

procedure TfrmTakipBilgisiOku.SonularSistemeYaz1Click(Sender: TObject);
var
  sql,islemSiraNo,code , s , sonuc , sgktip : string;
  ado : TADOQuery;
begin

    if UserRight('Donem Sonlandýrma', 'Okunan Hizmet Sisteme Yaz') = False
    Then Begin
      ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Yok','Sistem Yöneticinizle Görüþün','Okunan Hizmet Sisteme Yaz','info');
      exit;
    End;

    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    while not datalar.RxTahlilSonuc.Eof do
    begin
     try

      sonuc := StringReplace(datalar.RxTahlilSonuc.fieldbyname('sonuc').AsString,',','.',[rfReplaceAll]);
      sgktip := SgKTipEslestirKod(datalar.RxTahlilSonuc.fieldbyname('tip').AsString);

      if (islemSiraNo = datalar.RxTahlilSonuc.FieldByName('islemSiraNo').AsString)
         and
         (code = datalar.RxTahlilSonuc.FieldByName('code').AsString) and (pos('HEM',datalar.RxTahlilSonuc.fieldbyname('tip').AsString)=0)
      Then s := 'cd'
      Else s := 'gd';


      if pos('HEM',datalar.RxTahlilSonuc.fieldbyname('tip').AsString) > 0
      Then begin

        sql :=     'if exists(select * from hareketler  where dosyaNO = ' + QuotedStr(datalar.Bilgi.dosyaNo) +
               ' and gelisNo = ' + datalar.Bilgi.gelisNo + ' and code = ' + QuotedStr(sgktip) + ')' +
               ' begin ' +

               ' update hareketler set ' + s + ' = ' + ifThen(pos('NEG',sonuc) > 0,'-1',ifThen(pos('POZ',sonuc) > 0,'1',sonuc)) +
               ' where dosyaNO = ' + QuotedStr(datalar.Bilgi.dosyaNo) + ' and gelisNo = ' + datalar.Bilgi.gelisNo +
               ' and code = ' + QuotedStr(sgktip) +
               ' end else begin ' +
               ' insert into hareketler (dosyaNo,gelisNo,code,' + s + ',TARIH) ' +
               ' values (' + QuotedStr(datalar.Bilgi.dosyaNo) + ',' + datalar.Bilgi.gelisNo + ',' +
                  ifThen(pos('NEG',sonuc) > 0,'-1',ifThen(pos('POZ',sonuc) > 0,'1',sonuc)) + ',' +
                  QuotedStr(Tarih(datalar.RxTahlilIslem.FieldByName('islemTarihi').AsString)) + ')' +
               ' end ';

      end
      Else
      Begin

       sql :=  'if exists(select * from hareketler  where SIRANO =  ' +
                StringReplace(datalar.RxTahlilSonuc.FieldByName('islemSiraNo').AsString,'L','',[rfReplaceAll]) +
               ' begin ' +

               ' update hareketler set ' + s + ' = ' + ifThen(pos('NEG',sonuc) > 0,'-1',ifThen(pos('POZ',sonuc) > 0,'1',sonuc)) +
               ' where SIRANO = ' +
               StringReplace(datalar.RxTahlilSonuc.FieldByName('islemSiraNo').AsString,'L','',[rfReplaceAll]) +
              ' end else begin ' +
               ' insert into hareketler (dosyaNo,gelisNo,code,' + s + ',TARIH) ' +
               ' values (' + QuotedStr(datalar.Bilgi.dosyaNo) + ',' + datalar.Bilgi.gelisNo + ',' +
                  ifThen(pos('NEG',sonuc) > 0,'-1',ifThen(pos('POZ',sonuc) > 0,'1',sonuc)) + ',' +
                  QuotedStr(Tarih(datalar.RxTahlilIslem.FieldByName('islemTarihi').AsString)) + ')' +
               ' end ';

      End;

      try
        datalar.QueryExec(ado,sql);
      except end;

      islemSiraNo := datalar.RxTahlilSonuc.FieldByName('islemSiraNo').AsString;
      code := datalar.RxTahlilSonuc.FieldByName('code').AsString;


     except on e : Exception do
      begin
         ShowMessage(e.Message,'','','info');
      end;
     end;
      datalar.RxTahlilSonuc.Next;

    end;
    ShowMessage('Sonuçlar Sisteme Yazýldý','','','info');

    ado.Free;

end;

end.
