unit TenayBio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  TenayserviceBio,adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,cxProgressBar, cxGridDBTableView,
  cxMemo,  data_modul;

procedure TenaySonucAlBio(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);
function OrderBIO(dosyaNo : string ; gelis : string ; GC : string) : TenayServiceBio.Order;
//  procedure TenayOrderKaydetBio(gridAktif : TAdvStringGrid ; txtLog : Tmemo ; progres :TsGauge);
 procedure TenayOrderKaydetBio(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
 procedure ornekdurumyaz(durum,id,refId,GC,Tip : string)overload;
 procedure  ornekdurumyaz(durum,id,refId : string) overload;

implementation

var
   HTIBIO : TenayServiceBIO.Order;
   KurumBIO : TenayServiceBIO.KurumBilgileri;
   GelisBIO : TenayServiceBIO.Gelis;
   istekBIO : TenayServiceBIO.Tetkik;
   isteklerBIO : TenayServiceBIO.Array_Of_Tetkik;
   doktorBIO : TenayServiceBIO.Doktor;
   HTICvpBIO : TenayServiceBIO.HastakaydetCevap;

procedure ornekdurumyaz(durum, id, refId, GC, Tip : string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   if Tip = 'Ref'
   then begin
     if GC = 'G'
             then
              sql := 'update gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
                     ',LabRefId = ' + QuotedStr(refId) +
                     ',OrnekNo = ' + QuotedStr(refId) +
                     ' where SIRANO = ' + id
             else
              sql := 'update gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
                     ',LabRefId = ' + QuotedStr(refId) +
                     ',CikisOrnekNo = ' + QuotedStr(refId) +
                     ' where SIRANO = ' + id;
   end
     else   //  Tip <> 'Ref' ise
         begin
           if GC = 'G'
           then
            sql := 'update gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
                   ',OrnekNo = ' + QuotedStr(refId) +
                   ' where SIRANO = ' + id
           else
            sql := 'update gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
                   ',CikisOrnekNo = ' + QuotedStr(refId) +
                   ' where SIRANO = ' + id;
         end;


   datalar.QueryExec(ado,sql);

   ado.Free;
end;


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

procedure TenayOrderKaydetBio(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
 I : integer;
 t : boolean;
 sm,ss , Field , dosyaNo,gelisNo,id, kayitTip : string;
 x , r : Integer;
begin
      datalar.Login;
      HTIBIO := TenayServiceBIO.Order.Create;
      HTICvpBIO := TenayServiceBIO.HastakaydetCevap.Create;
      GelisBIO := TenayServiceBIO.Gelis.Create;
      doktorBIO := TenayServiceBIO.Doktor.Create;
      KurumBIO := TenayServiceBIO.KurumBilgileri.Create;

      txtLog.Lines.Clear;
      progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
      progres.Position := 0;

      if not DirectoryExists('C:\NoktaV3\Bio')
      then
          MkDir('C:\NoktaV3\Bio');

      datalar.HTTP_XMLDosya_Name := '';


    //  txtinfo.Caption := 'Gönderiliyor...';

    For x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
      Begin
        sleep(1000);
       Application.ProcessMessages;

       kayitTip := varToStr(gridAktif.DataController.GetValue(
                       gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));

        if  (kayitTip = 'Yeni Kayýt')
        Then Begin
           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);


                 Field := 'OrnekNo';
                 HTIBIO := OrderBio(dosyaNo,gelisNo,Field);

                 if HTIBIO <> nil
                 Then begin
                     KurumBio := TenayserviceBio.KurumBilgileri.Create;
                     KurumBio.KullaniciAdi := datalar._labusername;
                     KurumBio.Sifre := datalar._labsifre;
                     KurumBio.Kodu := datalar._labkurumkod;
                     HTIBIO.KurumBilgileri := KurumBio;

                     datalar.Lab.URL := datalar._laburl;

                   //  if HTIMNT.Gelis.ReferansNo = '' then

                     datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ENA\HastaKaydet_' + dosyaNo + '_' + gelisNo;

                     try
                      HTICvpBIO := (datalar.Lab as TenayServiceBio.TenayWebServiceSoapBio).HastaKaydet(HTIBIO);
                     except on e : Exception do
                       begin
                         sm := e.Message;
                         ss := 'Hata';
                       end;
                     end;
                 //---------------
                     if (HTICvpBIO.Kod = '1') and (HTICvpBIO.Mesaj = '')
                         then begin
                           ornekdurumyaz('Gönderildi',id,inttostr(HTICvpBIO.ReferansId));
                           txtLog.Lines.Add(HTIBIO.Adi+' '+HTIBIO.Soyadi + ' - ' +
                           HTIBIO.Gelis.ReferansNo + ' - ' + HTICvpBIO.Mesaj + ' ' + 'Ýþlem Baþarýlý');
                         end
                             else
                             begin
                               txtLog.Lines.Add(HTIBIO.Gelis.ReferansNo + ' : ' + HTICvpBIO.Mesaj);
                             end;

                     if ss = 'Hata'
                             Then
                              txtLog.Lines.Add(HTIBIO.Adi+' '+HTIBIO.Soyadi + ' - ' +
                              HTIBIO.Gelis.ReferansNo + ' - ' + sm );
                             end;
               //-----------------------
           Progres.Position := Progres.Position + 1;

        End;
      End; // for end
      datalar.HTTP_XMLDosya_Name := '';
      Progres.Visible := false;
  //    txtinfo.Caption := '.';

  {$Region   'Eski kod'}
    (*
        if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
        Then Begin
           dosyaNo := gridAktif.Cells[1,I];
           gelisNo := gridAktif.Cells[2,I];
           id := gridAktif.Cells[6,I];
           KurumBIO := TenayServiceBIO.KurumBilgileri.Create;
           KurumBIO.KullaniciAdi := datalar._labusername;
           KurumBIO.Sifre := datalar._labsifre;
           KurumBIO.Kodu := datalar._labkurumkod;
           HTIBIO.KurumBilgileri := KurumBIO;
           datalar.Lab.URL := datalar._laburl;

           datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Bio\HastaKaydet_' + dosyaNo + '_' + gelisNo;

           try
            HTICvpBIO := (datalar.Lab as TenayServiceBio.TenayWebServiceSoapBio).HastaKaydet(HTIBIO);
           except on e : Exception do
             begin
               sm := e.Message;
               ss := 'Hata';
             end;
           end;

          if ss <> 'Hata'
           Then Begin
             ornekdurumyaz('Gönderildi',id,inttostr(HTICvpBIO.ReferansId),'G','Ref');
             txtLog.Lines.Add(HTIBIO.Adi+' '+HTIBIO.Soyadi + ' - ' +
             inttostr(HTIBIO.OrnekNo) + ' - ' + HTICvpBIO.Mesaj + ' ' + 'Ýþlem Baþarýlý');
           End
           Else
            txtLog.Lines.Add(HTIBIO.Adi+' '+HTIBIO.Soyadi + ' - ' +
            inttostr(HTIBIO.OrnekNo) + ' - ' + HTICvpBIO.Mesaj + ' ' + sm + ' ' + datalar.TenayBIOLabRequest);

           // Cýkýs Test Gönder
           HTIBIO := OrderBIO(dosyaNo,gelisNo,'C');

         *)
     {$endregion}

  End;


procedure TenaySonucAlBio(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);
var
  HTSO : TenayServiceBIO.OrderQuery;
  HTSOCvp : TenayServiceBIO.HastaSorguCevap;
  KurumBIO : TenayServiceBIO.KurumBilgileri;
  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;

  procedure SonucYaz(HTSOCvp : TenayServiceBIO.HastaSorguCevap ; GC,Tip : string);
  var
   x , OrnekNoORRefId: integer;
  begin
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

        if GC = 'C' then _F_ := 'cd' else _F_ := 'gd';

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
              sonucA := trim(StringReplace(StringReplace(SonucA,'NEGATÝF','',[rfReplaceAll]),'POZÝTÝF','',[rfReplaceAll]));
              sonucA := trim(StringReplace(StringReplace(SonucA,'negatif','',[rfReplaceAll]),'pozitif','',[rfReplaceAll]));
              sonucA := trim(StringReplace(StringReplace(SonucA,'DÜÞÜK','',[rfReplaceAll]),'düþük','',[rfReplaceAll]));

              sonucA := trim(StringReplace(SonucA,'-','',[rfReplaceAll]));

             // sonucA := sonuc;
             // try
             //  if strtofloat(sonuc) < strtofloat(max)
             //  Then sonuc := '-1' else sonuc := '1';
            //  except end;

              sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                     ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
              datalar.QueryExec(ado,sql);
           End;

          try
           sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                    ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

           datalar.QueryExec(ado,sql);
          except
             sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                    ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
             datalar.QueryExec(ado,sql);

          end;


        End;
      end; // test for end

      if Tip = 'Ref'
      then OrnekNoORRefId := HTSO.ReferanId
      else OrnekNoORRefId := HTSO.OrnekNo;

      ornekdurumyaz('Sonuç Alýndý',id,inttostr(OrnekNoORRefId),GC,Tip);

  end;
 // end of SonucYaz ()

begin
       datalar.Login;
       HTSO := TenayServiceBIO.OrderQuery.Create;
       HTSOCvp := TenayServiceBIO.HastaSorguCevap.Create;
       KurumBIO := TenayServiceBIO.KurumBilgileri.Create;
       KurumBIO.KullaniciAdi := datalar._labusername;
       KurumBIO.Kodu := datalar._labkurumkod;
       KurumBIO.Sifre := datalar._labsifre;
       HTSO.KurumBilgileri := KurumBIO;


       datalar.Lab.URL := datalar._laburl;
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;
       txtLog.Lines.Clear;

       progres.Properties.Max := gridAktif.Controller.SelectedRowCount ; //gridAktif.RowCount - 2;
       progres.Position := 0;
       Progres.Visible := true;
 //      txtinfo.Caption := 'Alýnýyor...';


        {$region 'bu kod bloðu düzeltilecek. eski gride göre yapýlmýþ.'}
        (*
       for I := 0 to gridAktif.Controller.SelectedRowCount do
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

             if ref = True
             Then Begin
               HTSO.ReferanId := gridAktif.ints[4,I];
               try
                HTSOCvp := (datalar.Lab as TenayServiceBIO.TenayWebServiceSoapBio).HastaSonucSorgula(HTSO);
               except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
               end;
               Progres.Position := Progres.Position + 1;

               if ss <> 'Hata'
               Then Begin
                SonucYaz(HTSOCvp,'G','Ref');
               End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + inttostr(HTSO.ReferanId) + ' - ' + HTSOCvp.Mesaj + ' - ' + datalar.TenayBIORequest);

               // Cýkýs RefId
               if gridAktif.ints[5,I] > 0
               Then Begin
                 HTSO.ReferanId := gridAktif.ints[5,I];
                 try
                  HTSOCvp := (datalar.Lab as TenayServiceBIO.TenayWebServiceSoapBio).HastaSonucSorgula(HTSO);
                 except on e : Exception do
                   begin
                     sm := e.Message;
                     ss := 'Hata';
                   end;
                 end;
                 Progres.Progress := Progres.Progress + 1;
                 if ss <> 'Hata'
                 Then Begin
                  SonucYaz(HTSOCvp,'C','Ref');
                 End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + inttostr(HTSO.ReferanId) + ' - ' + HTSOCvp.Mesaj + ' - ' + datalar.TenayBIORequest);
               End;
             End
             Else
             Begin
               HTSO.OrnekNo := gridAktif.ints[4,I];
               try
                HTSOCvp := (datalar.Lab as TenayServiceBIO.TenayWebServiceSoapBio).HastaSonucSorgulaOrnekNo(HTSO);
               except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
               end;
               Progres.Progress := Progres.Progress + 1;
               if ss <> 'Hata'
               Then Begin
                SonucYaz(HTSOCvp,'G','');
               End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + inttostr(HTSO.ReferanId) + ' - ' + HTSOCvp.Mesaj + ' - ' + datalar.TenayBIORequest);

               // Çýkýþ ÖrnekNo
               if gridAktif.ints[5,I] > 0
               Then Begin
                 HTSO.OrnekNo := gridAktif.ints[5,I];
                 try
                  HTSOCvp := (datalar.Lab as TenayServiceBIO.TenayWebServiceSoapBio).HastaSonucSorgulaOrnekNo(HTSO);
                 except on e : Exception do
                   begin
                     sm := e.Message;
                     ss := 'Hata';
                   end;
                 end;
                 Progres.Progress := Progres.Progress + 1;
                 if ss <> 'Hata'
                 Then Begin
                  SonucYaz(HTSOCvp,'C','');
                 End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + inttostr(HTSO.ReferanId) + ' - ' + HTSOCvp.Mesaj + ' - ' + datalar.TenayBIORequest);
               End;

             End;


           End; //* chk end

       end;  // for end
       *)
       {$endregion}
       Progres.Visible := false;
     //  txtinfo.Caption := '.';

end;


function OrderBIO(dosyaNo : string ; gelis : string ; GC : string) : TenayServiceBio.Order;
var
  sql : string;
  HastaTenay : TenayServiceBIO.Order;
  GelisBIO : TenayServiceBIO.Gelis;
  istekler : TenayServiceBIO.Array_Of_Tetkik;
  istek : TenayServiceBIO.Tetkik;
  ado : TADOQuery;
  i , j : integer;
  ckod,kod,TurId : string;
  DTarih,TTarih , ATarih : TXSDateTime;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  HastaTenay := TenayServiceBIO.Order.Create;

  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  HastaTenay.DosyaNo  := dosyaNo;
  HastaTenay.KimlikNo := ado.fieldbyname('TCKIMLIKNO').AsString;
  HastaTenay.Adi      := ado.fieldbyname('HASTAADI').AsString;
  HastaTenay.Soyadi   := ado.fieldbyname('HASTASOYADI').AsString;
  HastaTenay.BabaAdi  := ado.fieldbyname('BABAADI').AsString;
  HastaTenay.AnneAdi  := ado.fieldbyname('ANAADI').AsString;

  if (ado.fieldbyname('CINSIYETI').AsString = '0')
                                  Then HastaTenay.Cinsiyeti := Cinsiyet.Erkek
                                                      else HastaTenay.Cinsiyeti := Cinsiyet.Kadin;

  DTarih        := TXSDateTime.Create;
  Dtarih.Year   := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
  Dtarih.Month  := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
  Dtarih.Day    := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));
  HastaTenay.DogumTarihi := DTarih;


    sql := 'select * from gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
    datalar.QuerySelect(ado,sql);

    HastaTenay.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                                                    '0',ado.fieldbyname('OrnekNo').AsString));

    GelisBIO            := TenayServiceBIO.Gelis.Create;
    GelisBIO.ReferansNo := ado.fieldbyname('SIRANO').AsString;
    GelisBIO.OrnekNo    := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                                                    '0',ado.fieldbyname('OrnekNo').AsString));

    TTarih          := TXSDateTime.Create;
    TTarih.Year     := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,1,4));
    TTarih.Month    := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,5,2));
    TTarih.Day      := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,7,2));
    GelisBIO.Tarih  := TTarih;

    if GC = 'G'
          then begin
                 GelisBIO.GelisTipi := GelisTipi.DiyalizGiris;
                 sql := 'select * from hareketler h ' +
                        ' join labtestler l on l.butKodu = h.code ' +
                        ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
                        ' and charindex(''.'',code) = 0 and l.tip = 2';
                end
                    else
                        begin
                         GelisBIO.GelisTipi := GelisTipi.DiyalizCikis;
                         sql := 'select * from hareketler h ' +
                                ' join labtestler l on l.butKodu = h.code ' +
                                ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
                                ' and charindex(''.'',code) = 0 and l.tip = 2 and adet = 2';
                        end;



    datalar.QuerySelect(ado,sql);
    j := ado.RecordCount;
    SetLength(istekler,j);

    while not ado.Eof do
    begin
      istek := TenayServiceBIO.Tetkik.Create;
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
                          istek := TenayServiceBIO.Tetkik.Create;
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

    GelisBIO.Tetkikler := istekler;
    HastaTenay.Gelis := GelisBIO;




  ado.Free;
  result := HastaTenay;
end;


end.
