unit TenaySIMGE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,cxGridDBTableView,
  cxProgressBar,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,TenayServiceSYNLAB_SYNEVO_CENTRO, cxMemo,
  data_modul;

  procedure TenaySonucAlTCdenSIMGE(_dosyaNo,_gelisNo: string ;trh1 : string ; trh2 : string ;
                                     gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);

  function OrderSIMGE (dosyaNo : string ; gelis : string) : Order;

  procedure TenayOrderKaydetSIMGE(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  procedure ornekdurumyaz(durum,id,refId : string);

implementation


var
   HTIMNT : TenayServiceSYNLAB_SYNEVO_CENTRO.Order;
   KurumMNT : TenayServiceSYNLAB_SYNEVO_CENTRO.KurumBilgileri;
   GelisSYNLAB : TenayServiceSYNLAB_SYNEVO_CENTRO.Gelis;
   istekMNT : TenayServiceSYNLAB_SYNEVO_CENTRO.Tetkik;
   isteklerMNT : TenayServiceSYNLAB_SYNEVO_CENTRO.Array_Of_Tetkik;
   doktorMNT : TenayServiceSYNLAB_SYNEVO_CENTRO.Doktor;
   HTICvpMNT : TenayServiceSYNLAB_SYNEVO_CENTRO.HastakaydetCevap;

procedure ornekdurumyaz(durum,id,refId : string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
   sql := 'update hasta_gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ',LabRefId = ' + QuotedStr(refId) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(ado,sql);

   finally
         ado.Free;
   end;

end;

procedure TenayOrderKaydetSIMGE(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
 I,x : integer;
 t : boolean;
 sm,ss , dosyaNo,gelisNo,id ,kayitTip: string;
Begin
      datalar.Login;
      HTIMNT := Order.Create;
      HTICvpMNT := HastakaydetCevap.Create;
      GelisSYNLAB := Gelis.Create;
      doktorMNT := Doktor.Create;
      KurumMNT := KurumBilgileri.Create;
      datalar.Lab.URL := datalar._laburl;

     if not DirectoryExists('C:\NoktaV3\SIMGE')
     then
      MkDir('C:\NoktaV3\SIMGE');

      datalar.HTTP_XMLDosya_Name := '';

   for x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
   begin
       sleep(1000);
       Application.ProcessMessages;
       kayitTip := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));

        if  (kayitTip = 'ONAY')
        Then Begin
           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);


           HTIMNT := OrderSIMGE(dosyaNo,gelisNo);
           KurumMNT := KurumBilgileri.Create;
           KurumMNT.KullaniciAdi := datalar._labusername;
           KurumMNT.Sifre := datalar._labsifre;
           KurumMNT.Kodu := datalar._labkurumkod;
           KurumMNT.KurumKodu :=  datalar._labkurumkod;
           KurumMNT.WebUserKurumId := 0;
           HTIMNT.KurumBilgileri := KurumMNT;


      //     datalar.TenayMNT.URL := datalar._laburl;
           datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\SIMGE\HastaKaydet_' + dosyaNo + '_' + gelisNo + '.XML';


           try
            HTICvpMNT := (datalar.Lab as TenayServiceSYNLAB_SYNEVO_CENTRO.TenayWebServiceSoapSSC).HastaKaydet(HTIMNT);
           except on e : Exception do
             begin
               sm := e.Message;
               ss := 'Hata';
             end;
           end;

           Progres.Position := Progres.Position + 1;

         //  ss := HTICvpMNT.Kod;
           if (ss <> 'Hata') and (HTICvpMNT.Kod = '1')
           Then Begin
              ornekdurumyaz('Gönderildi',id,inttostr(HTICvpMNT.ReferansId));

             txtLog.Lines.Add(HTIMNT.Adi+' '+HTIMNT.Soyadi + ' - ' +
             inttostr(HTIMNT.OrnekNo) + ' - Sonuc Kodu : ' + HTICvpMNT.Kod + ' - ' + HTICvpMNT.Mesaj + ' ' + 'Ýþlem Baþarýlý');
           End
           Else
            txtLog.Lines.Add(HTIMNT.Adi+' '+HTIMNT.Soyadi + ' - ' +
            inttostr(HTIMNT.OrnekNo) + ' - Sonuc Kodu : ' + HTICvpMNT.Kod + ' - ' + HTICvpMNT.Mesaj + ' ' + sm + ' ' + datalar.TenayMNTRequest);

        End;
      End; // for end
      Progres.Visible := false;
   //   datalar.TenayMNT_XMLDosya_Name := '';
  //    txtinfo.Caption := '.';

End;

procedure TenaySonucAlTCdenSIMGE(_dosyaNo,_gelisNo: string ; trh1 : string  ; trh2 : string ;
                                  gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  HTSOTC :TenayServiceSYNLAB_SYNEVO_CENTRO.TCSonuclariQuery;
  HTSOTCCvp : TenayServiceSYNLAB_SYNEVO_CENTRO.TCSonuclariResult;
  KurumMNT : TenayServiceSYNLAB_SYNEVO_CENTRO.KurumBilgileri;
  I,s , testAdet , j , x  : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max,kayitTip : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
  Tarih : TXSDateTime;
  tc : Int64;
    _Sonuclar_ : TenayServiceSYNLAB_SYNEVO_CENTRO.OrnekSonuc;
  _TetkikSonuclar_ : TenayServiceSYNLAB_SYNEVO_CENTRO.TetkikSonuc;
begin
       datalar.Login;
       KurumMNT := TenayServiceSYNLAB_SYNEVO_CENTRO.KurumBilgileri.Create;
       KurumMNT.KullaniciAdi := datalar._labusername;
       KurumMNT.Kodu := datalar._labkurumkod;
       KurumMNT.KurumKodu := datalar._labkurumkod;
       KurumMNT.Sifre := datalar._labsifre;
       datalar.Lab.URL := datalar._laburl;

       if not DirectoryExists('C:\NoktaV3\SIMGE')
       then
        MkDir('C:\NoktaV3\SIMGE');

        datalar.HTTP_XMLDosya_Name := '';



   txtLog.Lines.Clear;

   progres.Properties.Max := gridAktif.Controller.SelectedRowCount;
   progres.Position := 0;


   for x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
   begin
       sleep(1000);
       Application.ProcessMessages;
       kayitTip := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));

        if  (kayitTip = 'Gönderildi')
        Then Begin
           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);

           Tc := StrToInt64(varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index)));


                    HTSOTC := TenayServiceSYNLAB_SYNEVO_CENTRO.TCSonuclariQuery.Create;
                    HTSOTCCvp := TenayServiceSYNLAB_SYNEVO_CENTRO.TCSonuclariResult.Create;
                    Tarih := TXSDateTime.Create;
                    tarih.Year := strtoint(copy(trh1,1,4));
                    tarih.Month := strtoint(copy(trh1,5,2));
                    tarih.Day := strtoint(copy(trh1,7,2));
                    HTSOTC.Bas := Tarih;
                    Tarih := TXSDateTime.Create;
                    tarih.Year := strtoint(copy(trh2,1,4));
                    tarih.Month := strtoint(copy(trh2,5,2));
                    tarih.Day := strtoint(copy(trh2,7,2));
                    HTSOTC.Son := Tarih;
                    HTSOTC.TC :=  Tc;
                    HTSOTC.KurumBilgileri := KurumMNT;

                    datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\SIMGE\_SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


                   try
                    HTSOTCCvp := (datalar.lab as TenayServiceSYNLAB_SYNEVO_CENTRO.TenayWebServiceSoapSSC).TCSonuclariGetir(HTSOTC);
                   except on e : Exception do
                     begin
                       sm := e.Message;
                       ss := 'Hata';
                     end;
                   end;



            Progres.Position := Progres.Position + 1;



            if ss <> 'Hata'
            Then Begin
                if (HTSOTCCvp.Sonuclar[0] = nil) and (length(HTSOTCCvp.Sonuclar) = 1)
                then  begin
                   txtLog.Lines.Add(inttostr(HTSOTC.TC) + ' - Sonuç Bulunamadý');
                   exit;
                end;

                      for _Sonuclar_ in HTSOTCCvp.Sonuclar do
                      begin
                          for _TetkikSonuclar_ in _Sonuclar_.Tetkikler do
                          begin
                                txtLog.Lines.Add(HTSOTCCvp.Adi+ ' ' + HTSOTCCvp.Soyadi + ' - ' +
                                _TetkikSonuclar_.Adi + ' ' + 'Test Kodu : ' + _TetkikSonuclar_.Kodu + ' ' +
                                'Alt Test Kodu : ' + _TetkikSonuclar_.AltTestKodu + ' - ' + ' - ' + 'Tur Id : ' + inttostr(_TetkikSonuclar_.OrnekTurId) + ' - ' +
                                'Sonuc : ' + _TetkikSonuclar_.Sonuc + ' - ' +
                                onaytarihi);
                                _F_ := '';
                                testKod := KodEslestirNormalDeger( ifthen(_TetkikSonuclar_.Kodu = '',_TetkikSonuclar_.AltTestKodu,_TetkikSonuclar_.Kodu),
                                                                  inttostr(_TetkikSonuclar_.OrnekTurId),min,max, _F_);



                                if testKod <> ''
                                Then Begin
                                  a := _TetkikSonuclar_.Aciklama;
                               //   b := HTSOCvp.Testler[x].NormalDeger;

                                   _TetkikSonuclar_.Sonuc := StringReplace(_TetkikSonuclar_.Sonuc,'Poz','POZ',[rfReplaceAll]);
                                   _TetkikSonuclar_.Sonuc := StringReplace(_TetkikSonuclar_.Sonuc,'Neg','NEG',[rfReplaceAll]);
                                   _TetkikSonuclar_.Sonuc := StringReplace(_TetkikSonuclar_.Sonuc,',','.',[rfReplaceAll]);
                                   _TetkikSonuclar_.Sonuc := StringReplace(_TetkikSonuclar_.Sonuc,'-','',[rfReplaceAll]);


                                   _TetkikSonuclar_.Aciklama := StringReplace(_TetkikSonuclar_.Aciklama,'Neg','NEG',[rfReplaceAll]);
                                   _TetkikSonuclar_.Aciklama := StringReplace(_TetkikSonuclar_.Aciklama,'Poz','POZ',[rfReplaceAll]);

                                   sonuc := _TetkikSonuclar_.Sonuc;

                                   if (pos('NEG',_TetkikSonuclar_.Sonuc) > 0)
                                   Then sonuc := '-1'
                                   Else
                                   if (pos('POZ',_TetkikSonuclar_.Sonuc) > 0)
                                   Then sonuc := '1'
                                   Else
                                   if (pos('NEG',_TetkikSonuclar_.Aciklama) > 0)
                                   Then sonuc := '-1'
                                   Else
                                   if (pos('POZ',_TetkikSonuclar_.Aciklama) > 0)
                                   Then sonuc := '1'
                                   Else sonuc := _TetkikSonuclar_.Sonuc;

                                   if (testKod = '907440') or
                                      (testKod = '906610') or
                                      (testKod = '906630') or
                                      (testKod = '906660')
                                   Then Begin
                                      sonucA := trim(StringReplace(StringReplace(_TetkikSonuclar_.Sonuc,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(StringReplace(SonucA,'NEGatif','',[rfReplaceAll]),'POZitif','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(StringReplace(SonucA,'NEGATÝF','',[rfReplaceAll]),'POZÝTÝF','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(StringReplace(SonucA,'DÜÞÜK','',[rfReplaceAll]),'düþük','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(SonucA,'-','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(SonucA,'(','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(SonucA,')','',[rfReplaceAll]));

                                      sql := 'update hareketler set Gd = ' + QuotedStr(Sonuc) +
                                             ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                             ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                                       datalar.QueryExec(ado,sql);

                                      sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                                             ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                                      datalar.QueryExec(ado,sql);
                                   End
                                   else
                                   begin
                                      try
                                       sql := 'update hareketler set Gd = dbo.fn_gecersizKarakterHarf(' + QuotedStr(_TetkikSonuclar_.Sonuc) + ')' +
                                             ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                             ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                                       datalar.QueryExec(ado,sql);
                                      except
                                         sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                                                ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and tip1 = ' + QuotedStr(_F_) +
                                                ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                                         datalar.QueryExec(ado,sql);

                                      end;

                                   end;

                                End;
                          end; // tetkikler end
                      end; //sonuclar end
                      ornekdurumyaz('Sonuç Alýndý',id,'');
            end
            else txtLog.Lines.Add(HTSOTCCvp.SonucMesaji + ' - ' + datalar.TenayMNTRequest);

           End; //* chk end


       end;  // for end
       Progres.Visible := false;
    //   txtinfo.Caption := '.';


end;



function OrderSIMGE(dosyaNo : string ; gelis : string) : Order;
var
  sql           : string;
  HastaTenay    : TenayServiceSYNLAB_SYNEVO_CENTRO.Order;
  GelisSYNLAB   : TenayServiceSYNLAB_SYNEVO_CENTRO.Gelis;
  istekler      : TenayServiceSYNLAB_SYNEVO_CENTRO.Array_Of_Tetkik;
  istek         : TenayServiceSYNLAB_SYNEVO_CENTRO.Tetkik;
  HastaTuru     : TenayServiceSYNLAB_SYNEVO_CENTRO.HastaTur;
  HastaTurs     : TenayServiceSYNLAB_SYNEVO_CENTRO.Array_Of_HastaTur;
  Dr            : TenayServiceSYNLAB_SYNEVO_CENTRO.Doktor;

  ado           : TADOQuery;
  i , j         : integer;
  ckod,kod,
  TurId         : string;
  DTarih,TTarih,
  ATarih        : TXSDateTime;

begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  HastaTenay := Order.Create;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  HastaTenay.DosyaNo  := dosyaNo;
  HastaTenay.KimlikNo := ado.fieldbyname('TCKIMLIKNO').AsString;
  HastaTenay.Adi      := ado.fieldbyname('HASTAADI').AsString;
  HastaTenay.Soyadi   := ado.fieldbyname('HASTASOYADI').AsString;
  HastaTenay.BabaAdi  := ado.fieldbyname('BABAADI').AsString;
  HastaTenay.AnneAdi  := ado.fieldbyname('ANAADI').AsString;
  HastaTenay.DogumYeri := '';
  HastaTenay.EPosta := '';


  if (ado.fieldbyname('CINSIYETI').AsString = '0')
  Then HastaTenay.Cinsiyeti := Cinsiyet.Erkek
  else HastaTenay.Cinsiyeti := Cinsiyet.Kadin;

  DTarih := TXSDateTime.Create;
  Dtarih.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
  Dtarih.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
  Dtarih.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));
  HastaTenay.DogumTarihi := DTarih;


    sql := 'select * from hasta_gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
    datalar.QuerySelect(ado,sql);

    HastaTenay.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                               '0',ado.fieldbyname('OrnekNo').AsString));

    GelisSYNLAB := TenayServiceSYNLAB_SYNEVO_CENTRO.Gelis.Create;
    GelisSYNLAB.ReferansNo := ado.fieldbyname('SIRANO').AsString;
    GelisSYNLAB.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                               '0',ado.fieldbyname('OrnekNo').AsString));

    TTarih := TXSDateTime.Create;
    TTarih.Year := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('BHDAT').AsDateTime),1,4));
    TTarih.Month := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('BHDAT').AsDateTime),5,2));
    TTarih.Day := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('BHDAT').AsDateTime),7,2));
    GelisSYNLAB.Tarih := TTarih;

    Dr := Doktor.Create;
    Dr.KimlikNo := 0;
    Dr.Adi := '';
    Dr.Soyadi := '';
    HastaTenay.DoktorBilgileri := Dr;


    GelisSYNLAB.GelisTipi := GelisTipi.DiyalizGiris;


    HastaTuru := HastaTur.Create;
    HastaTuru.Id := 0;
    HastaTuru.Adi := '';
    SetLength(HastaTurs,1);
    HastaTurs[0] := HastaTuru;

    GelisSYNLAB.HastaTurleri := HastaTurs;

    GelisSYNLAB.Aciklama := '';

    sql := 'select * from hareketlerLab h ' +
           ' join labtestler_Firma l on l.butKodu = h.code and l.labID = ' + QuotedStr(datalar._labID) +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
           ' and charindex(''.'',code) = 0 and h.tip1 = l.tip';
    datalar.QuerySelect(ado,sql);
    j := ado.RecordCount;
    SetLength(istekler,j);

    while not ado.Eof do
    begin
      istek := Tetkik.Create;
     // istek.LogId := ado.fieldbyname('SIRANO').AsInteger;
      ckod := '';
      kod := '';

      kod := ado.fieldbyname('islemKodu').AsString;

      istek.Kodu := kod;
      istek.Adi := ado.fieldbyname('NAME1').AsString;
      istek.KapId := 0;
      istek.OrnekTurId := '';//ifThen(TurId = '','0',TurId);
      ATarih := TXSDateTime.Create;
      ATarih.Year := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('Tarih').AsDateTime),1,4));
      ATarih.Month := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('Tarih').AsDateTime),5,2));
      ATarih.Day := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('Tarih').AsDateTime),7,2));
      istek.AlindigiTarih := ATarih;

      istekler[i] := istek;
      i := i + 1;

      ado.Next;
    end;

    GelisSYNLAB.Tetkikler := istekler;
    HastaTenay.Gelis := GelisSYNLAB;




  ado.Free;
  result := HastaTenay;
end;


end.
