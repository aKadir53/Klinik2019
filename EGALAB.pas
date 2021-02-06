unit EGALAB;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,kadirType,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,DateUtils,cxProgressBar,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,AlisWS,cxGridDBTableView, cxMemo,
  data_modul,SQLMemMain;


  procedure SonucAlALis(Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ;  progres :TcxProgressBar ; txtLog : Tcxmemo);

  procedure OrderKaydetAlis(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);

  function HastabilgileriDoldurVentura(var Hasta : EntegRec;dosyaNo : string ; gelis : string) : string;
  function HastaIstekBilgileriVentura(dosyaNo : string ; gelisNo , Tip : string) : string;
  procedure ornekdurumyaz(durum,id,refId : string);

implementation


function HastabilgileriDoldurVentura(var Hasta : EntegRec;dosyaNo : string ; gelis : string) : string;
var
  sql : string;
  ado : TADOQuery;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
 // Hasta := EntegRec.Create;
  sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
  datalar.QuerySelect(ado,sql);

  (*
  if datalar.DosyaNOONEK = ''
  then
    Hasta.DOSYA_NO := dosyaNo
  else
    Hasta.DOSYA_NO := datalar.DosyaNOONEK + inttostr(strtoint(dosyaNo));
  *)

  Hasta.DOSYA_NO := dosyaNo;

  Hasta.TC_KIMLIKNO := ado.fieldbyname('TCKIMLIKNO').AsString;
  Hasta.AD := ado.fieldbyname('HASTAADI').AsString;
  Hasta.SOYAD := ado.fieldbyname('HASTASOYADI').AsString;
  Hasta.GELIS_NO := gelis;
  if ado.fieldbyname('CINSIYETI').AsString = '0'
  then
   Hasta.CINSIYET := AlisWs.CINSIYET_TIPI.ERKEK
  else
   Hasta.CINSIYET := AlisWs.CINSIYET_TIPI.KADIN;

  Hasta.DOGUM_TARIHI := FormattedTarih(ado.fieldbyname('DOGUMTARIHI').AsString);
  hasta.SERPOL := AlisWs.SERPOL_TIPI.POLIKLINIK;
  hasta.YATAN := AlisWs.YATAN_TIPI.AYAKTAN;


  finally
   ado.Free;
  end;

  result := 'OK';
end;


procedure ornekdurumyaz(durum,id,refId : string);
var
  sql : string;
begin
   sql := 'update Hasta_gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ',LabRefId = ' + QuotedStr(refId) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(sql);
end;



function HastaIstekBilgileriVentura(dosyaNo : string ; gelisNo , Tip : string) : string;
var
  sql : string;
  Testler : string;
  ado : TADOQuery;
  i , j : integer;
  kod , ckod : string;
begin
  i := 0;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
  Testler := '';

//  if Tip = 'C'
//  Then
  sql := 'select h.name1,h.Tarih,l.islemKodu from hareketlerLab h ' +
         ' join labtestler_firma l on l.butKodu = h.code and h.tip1 = l.tip and l.LabID = ' + QuotedStr(datalar._labID) +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo +
         ' and charindex(''.'',h.code) = 0 and h.tip1 = l.tip and h.onay = 1';

  datalar.QuerySelect(ado,sql);
  j := ado.RecordCount;
  while not ado.Eof do
  begin
    Testler := Testler + '|' + ado.fieldbyname('islemKodu').AsString;
    i := i + 1;
    ado.Next;
  end;

  finally
    ado.free;
  end;

  result := copy(Testler,2,500);
end;


procedure OrderKaydetAlis(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  IstekGon : EntegRec;
  Istekcvp : IslemSonuc;
  I ,x : integer;
  t : Boolean;
  dosyaNo,gelisNo ,sm ,tip ,sql , barkod,id,kayitTip,ornekNo,kanAlimTarihi : string;
  ado : TADOQuery;
begin

  IstekGon := EntegRec.Create;
  IstekCvp := IslemSonuc.Create;

  IstekGon.VENPASS := datalar._labsifre;
  IstekGon.VENUSER := datalar._labusername;
  IstekGon.KURUM_KODU := datalar.kontrolKod ;//datalar._labkurumkodText+datalar._labkurumkod;
  datalar.Lab.URL  := datalar._laburl;
  IstekGon.ISTEM_TARIHI := datetostr(date);
  IstekGon.SERVIS_KODU := datalar.kontrolKod;

          if not DirectoryExists('C:\NoktaV3\ALIS')
          then
           MkDir('C:\NoktaV3\ALIS');


   for I := 0 to gridAktif.Controller.SelectedRowCount - 1 do
   begin
       sleep(1000);
       Application.ProcessMessages;
       kayitTip := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));

        if  (kayitTip = 'ONAY')
        Then Begin
           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);


           ornekNo := varToStr(gridAktif.DataController.GetValue(
                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index));

           kanAlimTarihi := varToStr(gridAktif.DataController.GetValue(
                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('KanAlimZamani').Index));


          barkod := id ;//ifThen(ornekNo= '',dosyaNo + gelisNo,ornekNo);
          HastabilgileriDoldurVentura(IstekGon,dosyaNo,gelisNo);

          IstekGon.ORNEKNO := strtoint(barkod);
          IstekGon.ISTEM_TARIHI := kanAlimTarihi;
          IstekGon.KANALMA_TARIHI := kanAlimTarihi;
          IstekGon.TETKIKLER := HastaIstekBilgileriVentura(dosyaNo,gelisNo,tip);

          datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ALIS\ALIS_HastaKaydet_' + dosyaNo + '_' + gelisNo + '.XML';


        try
         Istekcvp := (datalar.Lab as AlisWSSoap).ALISKayitEkleAdv(IstekGon);
        except on e : Exception do
         begin
           sm := e.Message;
         end;
        end;

        if Istekcvp.Res = 1
        Then Begin
            sql := 'update Hasta_gelisler set OrnekNo = ' + QuotedStr(inttostr(Istekcvp.OrnekNo)) +
                      ' where dosyaNO = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo ;

            datalar.QueryExec(sql);
            txtLog.Lines.Add(barkod + ' - Testler Eklendi');
            ornekdurumyaz('Gönderildi',id,'');
        End
        Else
         ShowMessage(Istekcvp.HataMesaji + ' ; ' + Istekcvp.UyarýMesaji);


     // end;

    End;
  End;


end;


procedure SonucAlAlis(Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; progres :TcxProgressBar ; txtLog : Tcxmemo );

var
  Sonuclar1,Sonuclar2 : ArrayOfSonucDurum;
  SonuclarDiyaliz : DiyalizSonucDurum;
  VENPASS,VENUSER ,dosyaNo,gelisNo ,sm , testKod , _F_ ,  sql ,id , kayitTip , _tc_ , min,max: string;
  OrnekNo ,I ,j : integer;
  t : boolean;
  go , co  : variant;
procedure SonucYazVen(Sonuclar : ArrayOfSonucDurum ; c  : integer);
var
 x : integer;
 sonuc ,markersonuc , kod2 : string;
 ado : TADOQuery;
begin
      _F_ := '';
      if c = 4 then _F_ := 'G';
      if c = 5 then _F_ := 'C';

      for x := 0 to length(sonuclar) - 1 do
      begin
          if Sonuclar[x].islemSonuc.Res = 1
          then begin
              kod2 := ifthen(Sonuclar[x].TETKIK_KODU2 = '0','' ,Sonuclar[x].TETKIK_KODU2);
            // testKod := Kadir.KodEslestir(Sonuclar[x].TETKIK_KODU+kod2,_F_);
              testKod := KodEslestirNormalDeger( Sonuclar[x].TETKIK_KODU+kod2,'0',min,max, _F_);

              if testKod <> ''
              Then Begin

                 sonuc := Sonuclar[x].Sonuc ;

                 if (testKod = '907440') or
                    (testKod = '906610') or
                    (testKod = '906630') or
                    (testKod = '906660')
                 Then Begin

                       Sonuclar[x].Sonuc := StringReplace(Sonuclar[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
                       Sonuclar[x].Sonuc := StringReplace(Sonuclar[x].Sonuc,'Neg','NEG',[rfReplaceAll]);

                       Sonuclar[x].Sonuc := StringReplace(Sonuclar[x].Sonuc,'>','',[rfReplaceAll]);
                       Sonuclar[x].Sonuc := StringReplace(Sonuclar[x].Sonuc,'<','',[rfReplaceAll]);
                       Sonuclar[x].Sonuc := StringReplace(Sonuclar[x].Sonuc,',','.',[rfReplaceAll]);

                       Sonuclar[x].Aciklama := StringReplace(Sonuclar[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
                       Sonuclar[x].Aciklama := StringReplace(Sonuclar[x].Aciklama,'Poz','POZ',[rfReplaceAll]);

                       markersonuc := '0';
                       if (pos('NEG',Sonuclar[x].EKSONUC1) > 0) or (pos('NEG',Sonuclar[x].Sonuc) > 0)
                       Then markersonuc := '-1'
                       Else
                       if (pos('POZ',Sonuclar[x].EKSONUC1) > 0) or (pos('POZ',Sonuclar[x].Sonuc) > 0)
                       Then markersonuc := '1'
                       Else
                       if (pos('NEG',Sonuclar[x].Aciklama) > 0)
                       Then markersonuc := '-1'
                       Else
                       if (pos('POZ',Sonuclar[x].Aciklama) > 0)
                       Then markersonuc := '1';


                       sql := 'update hareketler set  gd = dbo.fn_gecerliKarakterRakam(' + QuotedStr(Sonuclar[x].Sonuc) + ')' +
                              ',islemAciklamasi = dbo.fn_gecerliKarakterRakam(' + QuotedStr(Sonuclar[x].Sonuc) + ')' +
                              ',MarkerGD = ' + QuotedStr(markerSonuc) +
                              ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                              QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo +
                              ' and tip1 = ' + QuotedStr(_F_) ;
                       datalar.QueryExec(sql);

                 End
                 else
                 begin

                     try
                       sql := 'update hareketler set  gd = dbo.fn_gecerliKarakterRakam(' + QuotedStr(Sonuclar[x].Sonuc) + ')' +
                              ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                              QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo +
                              ' and tip1 = ' + QuotedStr(_F_) ;
                       datalar.QueryExec(sql);
                     except

                       sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                              ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                               QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo +
                               ' and tip1 = ' + QuotedStr(_F_) ;
                       datalar.QueryExec(sql);

                 end;
                   txtLog.Lines.Add('**************HATA : ' + inttostr(Sonuclar[x].ORNEKNO)+'-'+
                   Sonuclar[x].TETKIK_KODU+Sonuclar[x].TETKIK_KODU2+'-'+ Sonuclar[x].TEST_ADI+'-'+
                   inttostr(Sonuclar[x].islemSonuc.Res)+' - ' + Sonuclar[x].Sonuc);

                 end;
              End;

          end;

          txtLog.Lines.Add(inttostr(Sonuclar[x].ORNEKNO)+' - '+
          Sonuclar[x].TETKIK_KODU+Sonuclar[x].TETKIK_KODU2+'-'+ _F_ + ' - ' +
          Sonuclar[x].TEST_ADI+'-'+inttostr(Sonuclar[x].islemSonuc.Res)+' - ' + Sonuclar[x].Sonuc);
      end;

end;


begin
  VENPASS := datalar._labsifre;
  VENUSER := datalar._labusername;
  datalar.Lab.URL  := datalar._laburl;

   progres.Properties.Max := gridAktif.Controller.SelectedRowCount;
   progres.Position := 0;

          if not DirectoryExists('C:\NoktaV3\ALIS')
          then
           MkDir('C:\NoktaV3\ALIS');

   for I := 0 to gridAktif.Controller.SelectedRowCount - 1 do
   begin
       sleep(1000);
       Application.ProcessMessages;
       kayitTip := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));

        if  (kayitTip = 'Gönderildi')
        Then Begin
           go := '';
           co := '';

           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);

           _Tc_ := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index));


           go := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index);
           co := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('CikisOrnekNo').Index);


          datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ALIS\ALIS_SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


         if varToStr(go) <> ''
         then begin
            try
             Sonuclar1 := (datalar.Lab  as AlisWSSoap).ALISSonucDurum(VENUSER,VENPASS,go);
            except on e : Exception do
             begin
               sm := e.Message;
             end;
            end;

            SonucYazVen(Sonuclar1,4);
            ornekdurumyaz('Sonuç Alýndý',id,'');
          end;


         if varToStr(co) <> ''
         then begin
           try
             Sonuclar2 := (datalar.Lab  as AlisWSSoap).ALISSonucDurum(VENUSER,VENPASS,co);
            except on e : Exception do
             begin
               sm := e.Message;
             end;
           end;
            SonucYazVen(Sonuclar2,5);
            ornekdurumyaz('Sonuç Alýndý',id,'');
         end;

    End;
  End;

end;

end.
