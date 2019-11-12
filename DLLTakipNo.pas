unit DLLTakipNo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,KadirMedula3,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxDropDownEdit, cxImageComboBox,
  cxTextEdit, cxMaskEdit, cxCalendar, cxButtonEdit, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  Vcl.Buttons, cxGroupBox, Menus, cxButtons , adoDb,dxLayoutContainer, dxLayoutControl,
  Soap.InvokeRegistry, hastaKabulIslemleriWS, Soap.Rio, Soap.SOAPHTTPClient,
  MedulaHastaKabul, cxLabel;

type
  TfrmTakipNo = class(TGirisForm)
    txtTedaviTipi: TcxImageComboKadir;
    txtTarih: TcxDateEditKadir;
    txtTakipTipi: TcxImageComboKadir;
    txtSigortaliTuru: TcxImageComboKadir;
    txtTcKimlikNo: TcxTextEditKadir;
    pnlYardimHakki: TcxGroupBox;
    cxGrid6: TcxGridKadir;
    gridYardimHakki: TcxGridDBTableView;
    gridYardimHakkiRecId: TcxGridDBColumn;
    gridYardimHakkiid: TcxGridDBColumn;
    gridYardimHakkikisiNo: TcxGridDBColumn;
    gridYardimHakkiTarih: TcxGridDBColumn;
    gridYardimHakkiodemeTuru: TcxGridDBColumn;
    gridYardimHakkitedaviKapsami: TcxGridDBColumn;
    gridYardimHakkiformulAdi: TcxGridDBColumn;
    gridYardimHakkiaciklama: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    btnYardimHakki: TcxButtonKadir;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    akipAl1: TMenuItem;
    txtilkTakipNo: TcxTextEditKadir;
    txtAdi: TcxTextEditKadir;
    txtDogumTarihi: TcxTextEditKadir;
    txtdonenSigortaTur: TcxTextEditKadir;
    txtdonendevKurum: TcxTextEditKadir;
    Kapat1: TMenuItem;
    txtDevredilenKurum: TcxImageComboKadir;
    txtYUPASS: TcxTextEditKadir;
    txtTedaviTuru: TcxImageComboKadir;
    txtProvizyonTipi: TcxImageComboKadir;
    txtBransKodu: TcxImageComboKadir;
    takipNo: TcxLabel;
    basvuruNo: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnYardimHakkiClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure TakipAl(_TakipNo_ : String = '');
    procedure TakipSil(_TakipNo_: String);
    procedure cxKaydetClick(Sender: TObject);override;
  private

    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Takipler';
      formGenislik = 450;
      formYukseklik = 380;
var
  frmTakipNo: TfrmTakipNo;

implementation
      uses Data_Modul,AnaUnit, HastaKart;
{$R *.dfm}

function TFrmTakipNo.Init(Sender: TObject) : Boolean;
begin
   txtTarih.Date := tarihyap(_provizyonTarihi_);
   txtSigortaliTuru.EditValue := _SigortaliTur_;
   txtDevredilenKurum.EditValue := _DevKurum_;
   txtTcKimlikNo.EditValue := _TC_;
   txtYUPASS.EditValue := _Yupass_;
   txtBransKodu.EditValue := _BransKodu_;
   txtTedaviTuru.EditValue := _TedaviTuru_;


  if txtYUPASS.EditValue <> '' then
  begin
   // TdxLayoutItem(FindComponent('dxLAtxtYUPASS')).Visible := True;
   // txtYUPASS.Visible := True;
     pnlYardimHakki.Visible := True;
     setDataStringKontrol(self,pnlYardimHakki, 'pnlYardimHakki','',Sayfa3_Kolon1,'',410,220,alClient);
     SayfaCaption('Provizyon Giriþ','Provizyon Cevap','Yurt Dýþý Yardým Hakký','','');
  end
  else
  begin
    SayfaCaption('Provizyon Giriþ','Provizyon Cevap','','','');
    pnlYardimHakki.Visible := False;
   // TdxLayoutItem(FindComponent('dxLAtxtYUPASS')).Visible := false;
   // txtYUPASS.Visible := false;
  end;


  FormInputZorunluKontrolPaint(self,$00FCDDD1);
  Result := True;

end;
procedure TfrmTakipNo.TakipSil(_TakipNo_: String);
var
  sql : string;
begin
       (*
          pnlDurum.Visible := True;
          pnlDurum.Parent := sayfa1;
          pnlDurum.Align := alBottom;
          Application.ProcessMessages;

          datalar.HastaKabul.GirisSil := takipSilGirisDVO.Create;
          HastaKabul.GirisSil.takipNo := _TakipNo_;
          HastaKabul.GirisSil.saglikTesisKodu := datalar._kurumKod;
          HastaKabul.TakipSil_3;

          if HastaKabul.CevapSil.sonucKodu = '0000'
          then begin
            sql := 'Update Hasta_Gelisler set TakipNo = ' + QuotedStr('') +
                          ',BasvuruNo = ' + QuotedStr('') +
                          ' where DosyaNo = ' + #39 + frmTakipNo._dosyaNO_ + #39 + ' and GelisNo = ' + #39 + frmTakipNo._gelisNO_ +#39;
            datalar.QueryExec(sql);
          end;
         *)
end;

procedure TFrmTakipNo.TakipAl(_TakipNo_ : String = '');
var
  Sql ,s1,s2 , d  , sonuckodu , takip , basvuru , msj : string;
  ado : TADOQuery;

begin

          pnlDurum.Visible := True;
          pnlDurum.Parent := sayfa1;
          pnlDurum.Align := alBottom;
          Application.ProcessMessages;


          if not datalar.memData_yurtDisiYardimHakki.Eof
          then
           datalar.HastaKabulWS.GirisParametre.yardimHakkiID :=  datalar.memData_yurtDisiYardimHakki.FieldByName('id').AsInteger  //ClientDataSet1.FieldByName('id').AsInteger
          else
           datalar.HastaKabulWS.GirisParametre.yardimHakkiID := 0;

          datalar.HastaKabulWS.GirisParametre.saglikTesisKodu := datalar._kurumKod;
          datalar.HastaKabulWS.GirisParametre.takipTipi := txtTakipTipi.EditValue;
          datalar.HastaKabulWS.GirisParametre.tedaviTuru := txtTedaviTuru.EditValue;
          datalar.HastaKabulWS.GirisParametre.tedaviTipi := txtTedaviTipi.EditValue;
          datalar.HastaKabulWS.GirisParametre.devredilenKurum := txtDevredilenKurum.EditValue;
          datalar.HastaKabulWS.GirisParametre.provizyonTipi := txtProvizyonTipi.EditValue;
          datalar.HastaKabulWS.GirisParametre.sigortaliTuru := varToStr(txtSigortaliTuru.EditValue);
          datalar.HastaKabulWS.GirisParametre.hastaTCKimlikNo := txtTcKimlikNo.EditValue;
          datalar.HastaKabulWS.GirisParametre.bransKodu := txtBransKodu.EditValue;
          datalar.HastaKabulWS.GirisParametre.provizyonTarihi := txtTarih.Text;
          datalar.HastaKabulWS.GirisParametre.takipNo := txtilkTakipNo.Text;
          datalar.HastaKabulWS.GirisParametre.hastaTelefon :=   _mobilTel_;
          datalar.HastaKabulWS.GirisParametre.hastaAdres :=   TrtoEng(_adres_);

          datalar.HastaKabulWS.UserName := datalar._username;
          datalar.HastaKabulWS.Password := datalar._sifre;
          //HastaKabul.GirisParametre.yeniDoganBilgisi := nil;

          datalar.HastaKabulWS.TakipAl_3KimlikDorulama;


          if datalar.HastaKabulWS.Cevap.sonuckodu = '0543'
          then begin
             msj := datalar.HastaKabulWS.Cevap.sonucMesaji;
             takip := copy(msj,pos('[',msj)+1,7);
             datalar.HastaKabulWS.TakipOkuGiris.saglikTesisKodu := datalar._kurumKod;
             datalar.HastaKabulWS.TakipOkuGiris.takipNo := takip;
             datalar.HastaKabulWS.KabulOku;
             basvuru := datalar.HastaKabulWS.Takip.hastaBasvuruNo;
             sql := 'Update Hasta_Gelisler set TakipNo = ' + QuotedStr(takip) +
                    ',BasvuruNo = ' + QuotedStr(basvuru) +
                    ' where DosyaNo = ' + #39 + frmTakipNo._dosyaNO_ + #39 + ' and GelisNo = ' + #39 + frmTakipNo._gelisNO_ +#39;
             datalar.QueryExec(sql);
          end
          else
          if datalar.HastaKabulWS.Cevap.sonuckodu = '0000'
          then begin
              txtAdi.Text := datalar.HastaKabulWS.Cevap.hastaBilgileri.ad + ' ' +datalar.HastaKabulWS.Cevap.hastaBilgileri.soyad;
              txtDogumTarihi.Text := datalar.HastaKabulWS.Cevap.hastaBilgileri.dogumTarihi;

              takipNo.Caption := datalar.HastaKabulWS.Cevap.takipNo;
              basvuruNo.Caption := datalar.HastaKabulWS.Cevap.hastaBasvuruNo;

             // frmTakipNo._TakipNo_ := HastaKabul.Cevap.takipNo;
            //  frmTakipNo._BasvuruNo_ := HastaKabul.Cevap.hastaBasvuruNo;
            //  frmTakipNo._SigortaliTur_ := HastaKabul.Cevap.hastaBilgileri.sigortaliTuru;
            //  frmTakipNo._DevKurum_ := HastaKabul.Cevap.hastaBilgileri.devredilenKurum;

              txtdonenSigortaTur.Text := datalar.HastaKabulWS.Cevap.hastaBilgileri.sigortaliTuru;
              txtdonendevKurum.Text := datalar.HastaKabulWS.Cevap.hastaBilgileri.devredilenKurum;


              if mryes = ShowMessageSkin(datalar.HastaKabulWS.Cevap.hastaBilgileri.ad + ' ' +datalar.HastaKabulWS.Cevap.hastaBilgileri.soyad +
                                          ' Adlý Hasta Kabul Edildi','Sistem Kaydý Gerçekleþtirilsin mi ?',
                                          'Sigortalý Turu : ' + txtdonenSigortaTur.Text + '  Devredilen Kurum : ' + txtdonendevKurum.Text,'msg')
              then begin

                   sql := 'Update Hasta_Gelisler set TakipNo = ' + #39 + datalar.HastaKabulWS.Cevap.takipNo + #39 + ',BHDAT = ' + #39 + tarih(txtTarih.Text) + #39 +
                          ',BasvuruNo = ' + QuotedStr(datalar.HastaKabulWS.Cevap.hastaBasvuruNo) + ',ilkTakipNo = ' + QuotedStr(datalar.Bilgi.ilkTakip) +
                          ' where DosyaNo = ' + #39 + frmTakipNo._dosyaNO_ + #39 + ' and GelisNo = ' + #39 + frmTakipNo._gelisNO_ +#39;
                   datalar.QueryExec(sql);

                   (*
                   if not datalar.Bilgi.id = 0
                   then begin
                     sql := 'Update Hasta_Gelisler set yupass = ' + QuotedStr(txtTcKimlikNo.Text) + ',' +
                            ' yardimHakki = ' + inttostr(datalar.Bilgi.id) +
                            ' where DosyaNo = ' + #39 + frmTakipNo._dosyaNO_ + #39 + ' and GelisNo = ' + #39 + frmTakipNo._gelisNO_ +#39;
                     datalar.QueryExec(ado,sql);
                   end;


                   datalar.ADO_SQL3.Close;
                   datalar.ADO_SQL3.SQL.Clear;
                   sql := 'update hareketler set TARIH = ' + #39 + tarih(txtTarih.Text) + #39 +
                          ' where  dosyaNo = ' + QuotedStr(frmTakipNo._dosyaNO_) + ' and gelisNo = ' + frmTakipNo._gelisNO_;
                   datalar.QueryExec(ado,sql);

                   if txtdonendevKurum.Text <> ''
                   Then
                   if (txtdonenSigortaTur.Text  <> trim(copy(txtSigortaliTuru.Text,1,1))) or
                      (txtdonendevKurum.Text <> trim(copy(txtDevredilenKurum.Text,1,2)))
                   Then Begin
                       sql := 'update hastakart set DURUM = ' + QuotedStr(txtdonenSigortaTur.Text) +
                              ',KurumTip = ' + QuotedStr(txtdonendevKurum.Text) +
                              ' where dosyaNO = ' + QuotedStr(frmTakipNo._dosyaNO_);
                        datalar.QueryExec(ado,sql);

                   End;
                       *)
                 //  ado.Free;

                //   frmHastaKart.Gelisler(frmTakipNo._dosyaNO_);
                   datalar.Bilgi.TakipNo := '';


                   Close;

              end else
              begin
                 //  TakipSil_3(datalar.bilgi.takipno,datalar.HastaKabul);
              end; // Showmessage end

          end // sonuc = '0000' end
          Else ShowMessageSkin(datalar.HastaKabulWS.Cevap.sonucKodu,datalar.HastaKabulWS.Cevap.sonucMesaji,'','info');

          pnlDurum.Visible := false;



end;

procedure TfrmTakipNo.btnYardimHakkiClick(Sender: TObject);
begin
  if txtYUPASS.Text <> '' then
   YurtDisiYardimHakkiGetirSorgula(txtYUPASS.Text,txtTarih.Text)
  else
   ShowMessageSkin('Yupass Bilgisi Girilmemiþ','Lütfen Yupass Bilgisini Girip ,tekrar deneyin','','info');
end;

procedure TfrmTakipNo.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  if FormInputZorunluKontrol(self) Then Abort;

  case Tcontrol(sender).Tag of
 -1 : begin
        TakipAl;
      end;

  end;


end;

procedure TfrmTakipNo.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 inherited;
//
end;

procedure TfrmTakipNo.cxKaydetClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmTakipNo.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
begin
  inherited;

  Height := formYukseklik;
  Width := formGenislik;

  TableName := _TableName_;
  cxPanel.Visible := false;

  Olustur(self,_TableName_,'Hasta Kabul',23);
  menu := PopupMenu1;

  setDataStringKontrol(self,txtTarih, 'txtTarih','Tarih',Kolon1,'pt',100);
  setDataStringKontrol(self,txtTcKimlikNo, 'txtTcKimlikNo','TC Kimlik No',Kolon1,'tc',100);
  setDataStringKontrol(self,txtilkTakipNo, 'txtilkTakipNo','Takip No',Kolon1,'drm',80);

  setDataStringKontrol(self,txtDevredilenKurum,'txtDevredilenKurum','Dev. Kurum',kolon1,'',100);
  setDataStringKontrol(self,txtSigortaliTuru, 'txtSigortaliTuru','Sigortalý Türü',Kolon1,'',100);

  setDataStringKontrol(self,txtTakipTipi, 'txtTakipTipi','Takip Türü',Kolon1,'',80);
  setDataStringKontrol(self,txtProvizyonTipi, 'txtProvizyonTipi','Provizyon Tipi',Kolon1,'',80);
  setDataStringKontrol(self,txtTedaviTuru, 'txtTedaviTuru','Tedavi Türü',Kolon1,'',100);
  TcxImageComboKadir(FindComponent('txtTedaviTuru')).EditValue :=  DATALAR.DefaultTedaviTuru;
  setDataStringKontrol(self,txtTedaviTipi, 'txtTedaviTipi','Tedavi Tipi',Kolon1,'',100);
  TcxImageComboKadir(FindComponent('txtTedaviTipi')).EditValue :=  DATALAR.DefaultTedaviTipi;
  setDataStringKontrol(self,txtBransKodu, 'txtBransKodu','Branþ Kodu',Kolon1,'',100);
  setDataStringKontrol(self,txtYUPASS, 'txtYUPASS','Yupass',Kolon1,'',100);

  txtTakipTipi.Filter := '';
  txtProvizyonTipi.Filter := '';
  txtDevredilenKurum.Filter := '';
  txtSigortaliTuru.Filter := '';
  txtTedaviTipi.Filter := '';
  txtTedaviTuru.Filter := '';
  txtBransKodu.Filter := '';

  setDataStringKontrol(self,txtAdi, 'txtAdi','Hasta Adý Soyadý',Sayfa2_Kolon1,'',150);
  setDataStringKontrol(self,txtDogumTarihi, 'txtDogumTarihi','Doðum Tarihi',Sayfa2_Kolon1,'',100);
  setDataStringKontrol(self,txtdonenSigortaTur, 'txtdonenSigortaTur','Sigortalý Türü',Sayfa2_Kolon1,'',100);
  setDataStringKontrol(self,txtdonendevKurum, 'txtdonendevKurum','Devrdilen Kurum',Sayfa2_Kolon1,'',100);


  setDataStringKontrol(self,takipNo, 'takipNo','',Kolon2,'',200);
  setDataStringKontrol(self,basvuruNo, 'basvuruNo','',Kolon2,'',200);

//  setDataStringKontrol(self,pnlYardimHakki, 'pnlYardimHakki','',Sayfa3_Kolon1,'',1,1,alClient);

//  SayfaCaption('Provizyon Giriþ','Provizyon Cevap','Yurt Dýþý Yardým Hakký','','');
  //pnlYardimHakki.Align := alBottom;

 kolon2.Visible := False;
 Kolon3.Visible := False;
 Kolon4.Visible := False;
 Sayfa2_Kolon2.Visible := False;
 Sayfa2_Kolon3.Visible := False;
 Sayfa3_Kolon2.Visible := False;
 Sayfa3_Kolon3.Visible := False;
end;

procedure TfrmTakipNo.FormShow(Sender: TObject);
begin
   inherited;

 (*
   if _DevKurum_ = '99'
   then begin
     Height := 400;
     pnlYardimHakki. Height := 165;
   end
   else
   begin
    Height := 250;
    pnlYardimHakki.Height := 0;
   end;
   *)


end;

end.
