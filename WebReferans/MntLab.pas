unit MntLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,TenayserviceMNT,
  data_model1;


  procedure TenaySonucAlMNT(_dosyaNo,_gelisNo,_RefId : string ;
                            gridAktif : TAdvStringGrid ; txtLog : Tmemo ; progres :TsGauge ; Ref : boolean);
  function OrderMNT(dosyaNo : string ; gelis : string) : TenayServiceMNT.Order;

  procedure TenayOrderKaydetMNT(gridAktif : TAdvStringGrid ; txtLog : Tmemo ; progres :TsGauge);
  procedure ornekdurumyaz(durum,id,refId : string);

implementation


var
   HTIMNT : TenayServiceMNT.Order;
   KurumMNT : TenayServiceMNT.KurumBilgileri;
   GelisMNT : TenayServiceMNT.Gelis;
   istekMNT : TenayServiceMNT.Tetkik;
   isteklerMNT : TenayServiceMNT.Array_Of_Tetkik;
   doktorMNT : TenayServiceMNT.Doktor;
   HTICvpMNT : TenayServiceMNT.HastakaydetCevap;

procedure ornekdurumyaz(durum,id,refId : string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   sql := 'update gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ',LabRefId = ' + QuotedStr(refId) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(ado,sql);

   ado.Free;
end;

procedure TenayOrderKaydetMNT(gridAktif : TAdvStringGrid ; txtLog : Tmemo ; progres :TsGauge);
var
 I : integer;
 t : boolean;
 sm,ss , dosyaNo,gelisNo,id : string;
Begin
      datalar.Login;
      HTIMNT := TenayServiceMNT.Order.Create;
      HTICvpMNT := TenayServiceMNT.HastakaydetCevap.Create;
      GelisMNT := TenayServiceMNT.Gelis.Create;
      doktorMNT := TenayServiceMNT.Doktor.Create;
      KurumMNT := TenayServiceMNT.KurumBilgileri.Create;

      txtLog.Lines.Clear;
      progres.MaxValue := gridAktif.RowCount - 2;
      progres.Progress := 0;
      Progres.Visible := true;
  //    txtinfo.Caption := 'Gönderiliyor...';


      For I := 1 to gridAktif.RowCount - 2 do
      Begin
        Application.ProcessMessages;
        gridAktif.GetCheckBoxState(1,I,t);

        if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
        Then Begin
           dosyaNo := gridAktif.Cells[1,I];
           gelisNo := gridAktif.Cells[2,I];
           id := gridAktif.Cells[6,I];

           HTIMNT := OrderMNT(dosyaNo,gelisNo);
           KurumMNT := TenayServiceMNT.KurumBilgileri.Create;
           KurumMNT.KullaniciAdi := datalar._labusername;
           KurumMNT.Sifre := datalar._labsifre;
           KurumMNT.Kodu := datalar._labkurumkod;
           HTIMNT.KurumBilgileri := KurumMNT;

           datalar.TenayMNT.URL := datalar._laburl;

           try
            HTICvpMNT := (datalar.TenayMNT as TenayServiceMNT.TenayWebServiceSoapMNT).HastaKaydet(HTIMNT);
           except on e : Exception do
             begin
               sm := e.Message;
               ss := 'Hata';
             end;
           end;

           Progres.Progress := Progres.Progress + 1;

         //  ss := HTICvpMNT.Kod;
           if ss <> 'Hata'
           Then Begin
              ornekdurumyaz('Gönderildi',id,inttostr(HTICvpMNT.ReferansId));

             txtLog.Lines.Add(HTIMNT.Adi+' '+HTIMNT.Soyadi + ' - ' +
             inttostr(HTIMNT.OrnekNo) + ' - ' + HTICvpMNT.Mesaj + ' ' + 'Ýþlem Baþarýlý');
           End
           Else
            txtLog.Lines.Add(HTIMNT.Adi+' '+HTIMNT.Soyadi + ' - ' +
            inttostr(HTIMNT.OrnekNo) + ' - ' + HTICvpMNT.Mesaj + ' ' + sm + ' ' + datalar.TenayMNTRequest);

        End;
      End; // for end
      Progres.Visible := false;
  //    txtinfo.Caption := '.';

End;

procedure TenaySonucAlMNT(_dosyaNo,_gelisNo,_RefId : string ;
                            gridAktif : TAdvStringGrid ; txtLog : Tmemo ; progres :TsGauge ; Ref : boolean);
var
 // Service : TenayServiceMNT.TenayWebServiceSoapMNT;
  HTSO : TenayServiceMNT.OrderQuery;
  HTSOCvp : TenayServiceMNT.HastaSorguCevap;
  KurumMNT : TenayServiceMNT.KurumBilgileri;
  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
begin
       datalar.Login;
     //  Service := TenayServiceMNT.GetTenayWebServiceSoap(False,datalar._laburl,datalar.TenayMNT);
       HTSO := TenayServiceMNT.OrderQuery.Create;
       HTSOCvp := TenayServiceMNT.HastaSorguCevap.Create;
       KurumMNT := TenayServiceMNT.KurumBilgileri.Create;
       KurumMNT.KullaniciAdi := datalar._labusername;
       KurumMNT.Kodu := datalar._labkurumkod;
       KurumMNT.Sifre := datalar._labsifre;
       HTSO.KurumBilgileri := KurumMNT;


       datalar.TenayMNT.URL := datalar._laburl;
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;
       txtLog.Lines.Clear;

       progres.MaxValue := gridAktif.RowCount - 2;
       progres.Progress := 0;
       Progres.Visible := true;
    //   txtinfo.Caption := 'Alýnýyor...';


       for I := 1 to gridAktif.RowCount - 2 do
       begin
         Application.ProcessMessages;
         ss := '';
         gridAktif.GetCheckBoxState(1,I,t);

         if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
         Then Begin
             dosyaNo := gridAktif.Cells[1,I];
             gelisNo := gridAktif.Cells[2,I];
             id := gridAktif.Cells[6,I];

             if  length(gridAktif.Cells[9,I]) > 0
             then ref := True
             else ref := False;

             if gridAktif.Cells[4,I] = ''
             Then Begin
                 if ref = True
                 then
                   HTSO.ReferanId := gridAktif.ints[9,I]
                 else
                   HTSO.ReferanId := gridAktif.ints[6,I];
               try
                HTSOCvp := (datalar.TenayMNT as TenayServiceMNT.TenayWebServiceSoapMNT).HastaSonucSorgula(HTSO);
               except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
               end;
             End
             Else
             Begin
              // HTSO.GelisReferansId := '0';
               HTSO.OrnekNo := gridAktif.ints[4,I];
               try
                HTSOCvp := (datalar.TenayMNT as TenayServiceMNT.TenayWebServiceSoapMNT).HastaSonucSorgulaOrnekNo(HTSO);
               except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
               end;
             End;


            Progres.Progress := Progres.Progress + 1;

            if ss <> 'Hata'
            Then Begin
                testAdet := length(HTSOCvp.Tetkikler);
                for x := 0 to testAdet - 1 do
                begin
                  txtLog.Lines.Add(HTSOCvp.HastaBilgileri.Adi+ ' - ' +
                  HTSOCvp.Tetkikler[x].Adi + ' ' + 'Test Kodu : ' + HTSOCvp.Tetkikler[x].Kodu + ' ' +
                  'Alt Test Kodu : ' + HTSOCvp.Tetkikler[x].AltTestKodu + ' - ' + ' - ' + 'Tur Id : ' + inttostr(HTSOCvp.Tetkikler[x].OrnekTurId) + ' - ' +
                  'Sonuc : ' + HTSOCvp.Tetkikler[x].Sonuc + ' - ' +
                  onaytarihi);
                  _F_ := '';
                  testKod := KodEslestirNormalDeger(ifthen(HTSOCvp.Tetkikler[x].Kodu = '',HTSOCvp.Tetkikler[x].AltTestKodu,HTSOCvp.Tetkikler[x].Kodu),
                                                    inttostr(HTSOCvp.Tetkikler[x].OrnekTurId),min,max, _F_);

                  if HTSOCvp.Tetkikler[x].OrnekTurId = 147
                  Then _F_ := 'Cd';

                  if testKod <> ''
                  Then Begin
                    a := HTSOCvp.Tetkikler[x].Aciklama;
                 //   b := HTSOCvp.Testler[x].NormalDeger;

                     HTSOCvp.Tetkikler[x].Sonuc := StringReplace(HTSOCvp.Tetkikler[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
                     HTSOCvp.Tetkikler[x].Sonuc := StringReplace(HTSOCvp.Tetkikler[x].Sonuc,'Neg','NEG',[rfReplaceAll]);
                     HTSOCvp.Tetkikler[x].Sonuc := StringReplace(HTSOCvp.Tetkikler[x].Sonuc,',','.',[rfReplaceAll]);
                     HTSOCvp.Tetkikler[x].Sonuc := StringReplace(HTSOCvp.Tetkikler[x].Sonuc,'-','',[rfReplaceAll]);


                     HTSOCvp.Tetkikler[x].Aciklama := StringReplace(HTSOCvp.Tetkikler[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
                     HTSOCvp.Tetkikler[x].Aciklama := StringReplace(HTSOCvp.Tetkikler[x].Aciklama,'Poz','POZ',[rfReplaceAll]);

                     sonuc := HTSOCvp.Tetkikler[x].Sonuc;

                     if (pos('NEG',HTSOCvp.Tetkikler[x].Sonuc) > 0)
                     Then sonuc := '-1'
                     Else
                     if (pos('POZ',HTSOCvp.Tetkikler[x].Sonuc) > 0)
                     Then sonuc := '1'
                     Else
                     if (pos('NEG',HTSOCvp.Tetkikler[x].Aciklama) > 0)
                     Then sonuc := '-1'
                     Else
                     if (pos('POZ',HTSOCvp.Tetkikler[x].Aciklama) > 0)
                     Then sonuc := '1'
                     Else sonuc := HTSOCvp.Tetkikler[x].Sonuc;

                     if (testKod = '907440') or
                        (testKod = '906610') or
                        (testKod = '906630') or
                        (testKod = '906660')
                     Then Begin
                        sonucA := trim(StringReplace(StringReplace(HTSOCvp.Tetkikler[x].Sonuc,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                        sonucA := trim(StringReplace(StringReplace(SonucA,'NEGatif','',[rfReplaceAll]),'POZitif','',[rfReplaceAll]));
                        sonucA := trim(StringReplace(StringReplace(SonucA,'NEGATÝF','',[rfReplaceAll]),'POZÝTÝF','',[rfReplaceAll]));
                        sonucA := trim(StringReplace(SonucA,'-','',[rfReplaceAll]));

                        sql := 'update hareketler set ' + _F_ + '= ' + sonucA +
                                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                         datalar.QueryExec(ado,sql);

                        sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                               ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                        datalar.QueryExec(ado,sql);
                     End
                     else
                     begin
                        try
                         sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                         datalar.QueryExec(ado,sql);
                        except
                           sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                           datalar.QueryExec(ado,sql);

                        end;

                     end;

                  End;
                end; // test for end
                ornekdurumyaz('Sonuç Alýndý',id,inttostr(HTSO.ReferanId));
            End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + inttostr(HTSO.ReferanId) + ' - ' + HTSOCvp.Mesaj + ' - ' + datalar.TenayMNTRequest);

           End; //* chk end

       end;  // for end
       Progres.Visible := false;
    //   txtinfo.Caption := '.';

end;


function OrderMNT(dosyaNo : string ; gelis : string) : TenayServiceMNT.Order;
var
  sql : string;
  HastaTenay : TenayServiceMNT.Order;
  GelisMNT : TenayServiceMNT.Gelis;
  istekler : TenayServiceMNT.Array_Of_Tetkik;
  istek : TenayServiceMNT.Tetkik;
  ado : TADOQuery;
  i , j : integer;
  ckod,kod,TurId : string;
  DTarih,TTarih , ATarih : TXSDateTime;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  HastaTenay := TenayServiceMNT.Order.Create;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  HastaTenay.DosyaNo  := dosyaNo;
  HastaTenay.KimlikNo := ado.fieldbyname('TCKIMLIKNO').AsString;
  HastaTenay.Adi := ado.fieldbyname('HASTAADI').AsString;
  HastaTenay.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
  HastaTenay.BabaAdi := ado.fieldbyname('BABAADI').AsString;
  HastaTenay.AnneAdi := ado.fieldbyname('ANAADI').AsString;

  if (ado.fieldbyname('CINSIYETI').AsString = '0')
  Then HastaTenay.Cinsiyeti := TenayServiceMNT.Cinsiyet.Erkek
  else HastaTenay.Cinsiyeti := TenayServiceMNT.Cinsiyet.Kadin;

  DTarih := TXSDateTime.Create;
  Dtarih.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
  Dtarih.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
  Dtarih.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));
  HastaTenay.DogumTarihi := DTarih;


    sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
    datalar.QuerySelect(ado,sql);

    HastaTenay.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                               '0',ado.fieldbyname('OrnekNo').AsString));

    GelisMNT := TenayServiceMNT.Gelis.Create;
    GelisMNT.ReferansNo := ado.fieldbyname('SIRANO').AsString;
    GelisMNT.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                               '0',ado.fieldbyname('OrnekNo').AsString));

    TTarih := TXSDateTime.Create;
    TTarih.Year := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,1,4));
    TTarih.Month := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,5,2));
    TTarih.Day := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,7,2));
    GelisMNT.Tarih := TTarih;

    GelisMNT.GelisTipi := TenayServiceMNT.GelisTipi.DiyalizGiris;

    sql := 'select * from hareketler h ' +
           ' join labtestler l on l.butKodu = h.code ' +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
           ' and charindex(''.'',code) = 0 and l.tip = 2';
    datalar.QuerySelect(ado,sql);
    j := ado.RecordCount;
    SetLength(istekler,j);

    while not ado.Eof do
    begin
      istek := TenayServiceMNT.Tetkik.Create;
     // istek.LogId := ado.fieldbyname('SIRANO').AsInteger;
      ckod := '';
      kod := KodEslestirKod(ado.fieldbyname('code').AsString,ckod,TurId);

      istek.Kodu := kod;
      istek.Adi := ado.fieldbyname('NAME1').AsString;
      istek.KapId := 26;
      istek.OrnekTurId := ifThen(TurId = '','0',TurId);
      ATarih := TXSDateTime.Create;
      ATarih.Year := strtoint(copy(ado.fieldbyname('Tarih').Asstring,1,4));
      ATarih.Month := strtoint(copy(ado.fieldbyname('Tarih').Asstring,5,2));
      ATarih.Day := strtoint(copy(ado.fieldbyname('Tarih').Asstring,7,2));
      istek.AlindigiTarih := ATarih;


      istekler[i] := istek;
      i := i + 1;

      if ckod <> ''
      Then begin
        j := j +1;
        SetLength(istekler,j);
        istek := TenayServiceMNT.Tetkik.Create;
       // istek.LogId := ado.fieldbyname('SIRANO').AsInteger+1000;
        istek.Kodu := ckod;
        istek.Adi := ado.fieldbyname('NAME1').AsString;
        istek.KapId := 26;
        istek.OrnekTurId := '147';
        istek.AlindigiTarih := ATarih;
        istekler[i] := istek;
        i := i + 1;
      end;
      ado.Next;
    end;

    GelisMNT.Tetkikler := istekler;
    HastaTenay.Gelis := GelisMNT;




  ado.Free;
  result := HastaTenay;
end;


end.
