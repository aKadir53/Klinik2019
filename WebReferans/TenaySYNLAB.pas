unit TenaySYNLAB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,cxGridDBTableView,
  cxProgressBar,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,TenayserviceSYNLAB, cxMemo,
  data_modul;

  procedure TenaySonucAlTCdenSYNLAB(_dosyaNo,_gelisNo: string ;trh1 : string ; trh2 : string ;
                                     gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);

  function OrderSYNLAB (dosyaNo : string ; gelis : string) : Order;

  procedure TenayOrderKaydetSYNLAB(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  procedure ornekdurumyaz(durum,id,refId : string);

implementation


var
   HTIMNT : TenayserviceSYNLAB.Order;
   KurumMNT : TenayserviceSYNLAB.KurumBilgileri;
   GelisSYNLAB : TenayserviceSYNLAB.Gelis;
   istekMNT : TenayserviceSYNLAB.Tetkik;
   isteklerMNT : TenayserviceSYNLAB.Array_Of_Tetkik;
   doktorMNT : TenayserviceSYNLAB.Doktor;
   HTICvpMNT : TenayserviceSYNLAB.HastakaydetCevap;

procedure ornekdurumyaz(durum,id,refId : string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   sql := 'update hasta_gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ',LabRefId = ' + QuotedStr(refId) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(ado,sql);

   ado.Free;
end;

procedure TenayOrderKaydetSYNLAB(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
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

     if not DirectoryExists('C:\NoktaV3\SYNLAB')
     then
      MkDir('C:\NoktaV3\SYNLAB');

      datalar.HTTP_XMLDosya_Name := '';

   for x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
   begin
       sleep(1000);
       Application.ProcessMessages;
       kayitTip := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));

        if  (kayitTip = 'Yeni Kay�t')
        Then Begin
           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);


           HTIMNT := OrderSYNLAB(dosyaNo,gelisNo);
           KurumMNT := KurumBilgileri.Create;
           KurumMNT.KullaniciAdi := datalar._labusername;
           KurumMNT.Sifre := datalar._labsifre;
           KurumMNT.Kodu := datalar._labkurumkod;
           HTIMNT.KurumBilgileri := KurumMNT;

      //     datalar.TenayMNT.URL := datalar._laburl;
           datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\SYNLAB\HastaKaydet_' + dosyaNo + '_' + gelisNo + '.XML';


           try
            HTICvpMNT := (datalar.Lab as TenayserviceSYNLAB.TenayWebServiceSoapSYNLAB).HastaKaydet(HTIMNT);
           except on e : Exception do
             begin
               sm := e.Message;
               ss := 'Hata';
             end;
           end;

           Progres.Position := Progres.Position + 1;

         //  ss := HTICvpMNT.Kod;
           if ss <> 'Hata'
           Then Begin
              ornekdurumyaz('G�nderildi',id,inttostr(HTICvpMNT.ReferansId));

             txtLog.Lines.Add(HTIMNT.Adi+' '+HTIMNT.Soyadi + ' - ' +
             inttostr(HTIMNT.OrnekNo) + ' - ' + HTICvpMNT.Mesaj + ' ' + '��lem Ba�ar�l�');
           End
           Else
            txtLog.Lines.Add(HTIMNT.Adi+' '+HTIMNT.Soyadi + ' - ' +
            inttostr(HTIMNT.OrnekNo) + ' - ' + HTICvpMNT.Mesaj + ' ' + sm + ' ' + datalar.TenayMNTRequest);

        End;
      End; // for end
      Progres.Visible := false;
   //   datalar.TenayMNT_XMLDosya_Name := '';
  //    txtinfo.Caption := '.';

End;

procedure TenaySonucAlTCdenSYNLAB(_dosyaNo,_gelisNo: string ; trh1 : string  ; trh2 : string ;
                                  gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
 // Service : TenayserviceV4.TenayWebServiceSoapMNT;
  HTSOTC :TenayserviceSYNLAB.TCSonuclariQuery;
  HTSOTCCvp : TenayserviceSYNLAB.TCSonuclariResult;
  KurumMNT : TenayserviceSYNLAB.KurumBilgileri;
  I,s , testAdet , j , x  : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,markersonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max,kayitTip : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
  Tarih : TXSDateTime;
  tc : Int64;
    _Sonuclar_ : TenayserviceSYNLAB.OrnekSonuc;
  _TetkikSonuclar_ : TenayserviceSYNLAB.TetkikSonuc;
begin
       datalar.Login;
       KurumMNT := TenayserviceSYNLAB.KurumBilgileri.Create;
       KurumMNT.KullaniciAdi := datalar._labusername;
       KurumMNT.Kodu := datalar._labkurumkod;
       KurumMNT.Sifre := datalar._labsifre;
       datalar.Lab.URL := datalar._laburl;

       if not DirectoryExists('C:\NoktaV3\SYNLAB')
       then
        MkDir('C:\NoktaV3\SYNLAB');

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

        if  (kayitTip = 'G�nderildi')
        Then Begin
           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);

           Tc := StrToInt64(varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index)));


                    HTSOTC := TenayserviceSYNLAB.TCSonuclariQuery.Create;
                    HTSOTCCvp := TenayserviceSYNLAB.TCSonuclariResult.Create;
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

                    datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\SYNLAB\_SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


                   try
                    //HTSOTCCvp := GetTenayWebServiceSoapSYNLAB(False,datalar._laburl).TCSonuclariGetir(HTSOTC);
                    HTSOTCCvp := (datalar.lab as TenayserviceSYNLAB.TenayWebServiceSoapSYNLAB).TCSonuclariGetir(HTSOTC);
                   except on e : Exception do
                     begin
                       sm := e.Message;
                       ss := 'Hata';
                     end;
                   end;



            Progres.Position := Progres.Position + 1;

            if ss <> 'Hata'
            Then Begin
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
                                testKod := KodEslestirNormalDeger(_TetkikSonuclar_.Kodu + '.' +_TetkikSonuclar_.AltTestKodu,
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


                                   if (testKod = '907440') or
                                      (testKod = '906610') or
                                      (testKod = '906630') or
                                      (testKod = '906660')
                                   Then Begin
                                      markersonuc := '0';
                                      if (pos('NEG',_TetkikSonuclar_.Sonuc) > 0)
                                      Then markersonuc := '-1'
                                      Else
                                      if (pos('POZ',_TetkikSonuclar_.Sonuc) > 0)
                                      Then markersonuc := '1'
                                      Else
                                      if (pos('NEG',_TetkikSonuclar_.Aciklama) > 0)
                                      Then markersonuc := '-1'
                                      Else
                                      if (pos('POZ',_TetkikSonuclar_.Aciklama) > 0)
                                      Then markersonuc := '1';


                                      sonucA := trim(StringReplace(StringReplace(_TetkikSonuclar_.Sonuc,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(StringReplace(SonucA,'NEGatif','',[rfReplaceAll]),'POZitif','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(StringReplace(SonucA,'NEGAT�F','',[rfReplaceAll]),'POZ�T�F','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(StringReplace(SonucA,'D���K','',[rfReplaceAll]),'d���k','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(SonucA,'-','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(SonucA,'(','',[rfReplaceAll]));
                                      sonucA := trim(StringReplace(SonucA,')','',[rfReplaceAll]));

                                      sql := 'update hareketler set Gd = dbo.fn_gecersizKarakterHarf(' + sonuc + ')' +
                                             ',MarkerGD = ' + QuotedStr(markerSonuc) +
                                             ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                             ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                                       datalar.QueryExec(ado,sql);

                                   End
                                   else
                                   begin
                                      try
                                       sql := 'update hareketler set Gd = dbo.fn_gecersizKarakterHarf(' + _TetkikSonuclar_.Sonuc + ')' +
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
                      ornekdurumyaz('Sonu� Al�nd�',id,'');
            end
            else txtLog.Lines.Add(HTSOTCCvp.SonucMesaji + ' - ' + datalar.TenayMNTRequest);

           End; //* chk end


       end;  // for end
       Progres.Visible := false;
    //   txtinfo.Caption := '.';


end;



function OrderSYNLAB(dosyaNo : string ; gelis : string) : Order;
var
  sql           : string;
  HastaTenay    : TenayServiceSYNLAB.Order;
  GelisSYNLAB   : TenayServiceSYNLAB.Gelis;
  istekler      : TenayServiceSYNLAB.Array_Of_Tetkik;
  istek         : TenayServiceSYNLAB.Tetkik;

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

  if (ado.fieldbyname('CINSIYETI').AsString = '0')
  Then HastaTenay.Cinsiyeti := Cinsiyet.Erkek
  else HastaTenay.Cinsiyeti := Cinsiyet.Kadin;

  DTarih := TXSDateTime.Create;
  Dtarih.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
  Dtarih.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
  Dtarih.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));
  HastaTenay.DogumTarihi := DTarih;


    sql := 'select * from Hasta_gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
    datalar.QuerySelect(ado,sql);

    HastaTenay.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                               '0',ado.fieldbyname('OrnekNo').AsString));

    GelisSYNLAB := TenayServiceSYNLAB.Gelis.Create;
    GelisSYNLAB.ReferansNo := ado.fieldbyname('SIRANO').AsString;
    GelisSYNLAB.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                               '0',ado.fieldbyname('OrnekNo').AsString));

    TTarih := TXSDateTime.Create;
    TTarih.Year := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,1,4));
    TTarih.Month := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,5,2));
    TTarih.Day := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,7,2));
    GelisSYNLAB.Tarih := TTarih;

    GelisSYNLAB.GelisTipi := GelisTipi.DiyalizGiris;

    sql := 'select * from hareketlerLab h ' +
           ' join labtestler_Firma l on l.butKodu = h.code and l.labID = ' + QuotedStr(datalar._labID) +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
           ' and charindex(''.'',code) = 0 and l.tip = 2';
    datalar.QuerySelect(ado,sql);
    j := ado.RecordCount;
    SetLength(istekler,j);

    while not ado.Eof do
    begin
      istek := Tetkik.Create;
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
        istek := Tetkik.Create;
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

    GelisSYNLAB.Tetkikler := istekler;
    HastaTenay.Gelis := GelisSYNLAB;




  ado.Free;
  result := HastaTenay;
end;


end.
