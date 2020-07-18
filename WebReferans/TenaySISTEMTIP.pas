unit TenaySISTEMTIP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,cxGridDBTableView,cxProgressBar,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,TenayserviceV4, cxMemo,
  data_modul;

  procedure TenaySonucAlTCdenSISTEM(_dosyaNo,_gelisNo: string ;trh1 : string ; trh2 : string ;
                                     gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);

//  function OrderSYNLAB (dosyaNo : string ; gelis : string) : Order;
 // procedure TenayOrderKaydetSYNLAB(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
 // procedure ornekdurumyaz(durum,id,refId : string);

implementation


var
   HTIMNT : Order;
   KurumMNT : KurumBilgileri;
   GelisSYNLAB : Gelis;
   istekMNT : Tetkik;
   isteklerMNT : Array_Of_Tetkik;
   doktorMNT : Doktor;
   HTICvpMNT : HastakaydetCevap;

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

procedure TenaySonucAlTCdenSISTEM(_dosyaNo,_gelisNo: string ; trh1 : string  ; trh2 : string ;
                                  gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
 // Service : TenayserviceV4.TenayWebServiceSoapMNT;
  HTSOTC : TCSonuclariQuery;
  HTSOTCCvp : TCSonuclariResult;
  KurumMNT : KurumBilgileri;
  HastaLst : HastaListQuery;
  HastaLstCvp : HastaListesi;

  I,s , testAdet , j , x  : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max,kayitTip : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
  Tarih : TXSDateTime;
  tc : Int64;
    _Sonuclar_ : OrnekSonuc;
  _TetkikSonuclar_ : TetkikSonuc;
begin
       datalar.Login;
       KurumMNT := KurumBilgileri.Create;
       KurumMNT.KullaniciAdi := datalar._labusername;
       KurumMNT.Kodu := datalar._labkurumkod;
       KurumMNT.Sifre := datalar._labsifre;



     if not DirectoryExists('C:\NoktaV3\SISTEM')
     then
      MkDir('C:\NoktaV3\SISTEM');


   datalar.Lab.URL := datalar._laburl;
   txtLog.Lines.Clear;

   progres.Properties.Max := gridAktif.Controller.SelectedRowCount;
   progres.Position := 0;


   for x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
   begin
       sleep(1000);
       ss := '';
       sm := '';

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


                    HTSOTC := TCSonuclariQuery.Create;
                    HTSOTCCvp := TCSonuclariResult.Create;
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

                    datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\SISTEM\SISTEM_SonucAl_' + dosyaNo + '_' + gelisNo;

                   try
                    HTSOTCCvp := (datalar.Lab as TenayWebServiceSoapV4).TCSonuclariGetir(HTSOTC);
                   except on e : Exception do
                     begin
                       sm := e.Message;
                       ss := 'Hata';
                       txtLog.Lines.Add(e.Message);
                     end;
                   end;



            Progres.Position := Progres.Position + 1;


            if HTSOTCCvp.SonucKodu = '1'
            then begin
              txtLog.Lines.Add(HTSOTCCvp.SonucMesaji);
              exit;
            end;


            if ss <> 'Hata'
            Then Begin
                  if (HTSOTCCvp.Sonuclar[0] = nil) and (length(HTSOTCCvp.Sonuclar) = 1)
                  then  begin
                     txtLog.Lines.Add(inttostr(HTSOTC.TC) + ' - Sonuç Bulunamadý');
                  end
                  else
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
                                testKod := KodEslestirNormalDeger(
                                               ifThen(_TetkikSonuclar_.AltTest = false,_TetkikSonuclar_.Kodu + '.' +_TetkikSonuclar_.AltTestKodu,_TetkikSonuclar_.AltTestKodu),
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

                                        datalar.QueryExec(sql);

                                        sql := 'update hareketler set islemAciklamasi  = dbo.fn_gecersizKarakterHarf(' + QuotedStr(Trim(sonucA)) + ')' +
                                               ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                                        datalar.QueryExec(sql);

                                   End
                                   else
                                   begin
                                      try
                                       sql := 'update hareketler set Gd = dbo.fn_gecersizKarakterHarf(' + QuotedStr(_TetkikSonuclar_.Sonuc) + ')' +
                                             ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                             ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                                       datalar.QueryExec(sql);
                                      except
                                         sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                                                ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and tip1 = ' + QuotedStr(_F_) +
                                                ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                                         datalar.QueryExec(sql);

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



end.
