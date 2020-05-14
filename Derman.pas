unit Derman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,kadirType,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,DateUtils,cxProgressBar,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,LabIslemleri,cxGridDBTableView, cxMemo,
  data_modul,SQLMemMain;


  procedure DermanSonucAl(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);


  procedure DermanOrderKaydet(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  procedure ornekdurumyaz(durum,id,refId : string);
  function HastabilgileriDoldurDerman(dosyaNo : string ; gelis : string ; id,ornekno ,Tip: string ; Giris : TGirisFormRecord) : HastaTahlilBilgileriGiris;

implementation


var
  sql : string;

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






function HastabilgileriDoldurDerman(dosyaNo : string ; gelis : string ; id,ornekno , tip : string ; Giris : TGirisFormRecord) : HastaTahlilBilgileriGiris;
var
  sql : string;
  Hasta : HastaTahlilBilgileriGiris;
  Hizmet : string;
  Hizmetler : LabIslemleri.ArrayOfString;
  ado : TADOQuery;
  i,j : integer;
begin

  Hasta := HastaTahlilBilgileriGiris.Create;

  Hasta.GelenHastaid := id;
  Hasta.OrnekNo := ornekNo;
  Hasta.TCKimlik := Giris.F_TC_;
  Hasta.Adi := Giris.F_HASTAADI;
  Hasta.Soyadi := Giris.F_HASTASOYADI;
  Hasta.Cinsiyet := ifThen(Giris.F_Cinsiyet = '0','E','B');
  Hasta.DogumTarihi := Giris.F_DogumTarihi;
  Hasta.Serverid := '';

 (*
  sql := 'select islemKodu from hareketler h ' +
         ' join labtestler l on l.butkodu = h.code ' +
         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
         ' and charindex(''.'',code)= 0 ';
   *)
  if Tip = 'G'
  then
    sql := 'select h.name1,h.Tarih,l.islemKodu from hareketlerLab h ' +
           ' join labtestler_firma l on l.butKodu = h.code and h.tip1 = l.tip and l.LabID = ' + QuotedStr(datalar._labID) +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis +
           ' and h.tip1 = ''G'' and charindex(''.'',h.code) = 0 and onay = 1'
  else
    sql := 'select h.name1,h.Tarih,l.islemKodu from hareketlerLab h ' +
           ' join labtestler_firma l on l.butKodu = h.code and h.tip1 = l.tip and l.LabID = ' + QuotedStr(datalar._labID) +
           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis +
           ' and onay = 1 and h.tip1 = ''C''';

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
    datalar.QuerySelect(ado,sql);
    j := ado.RecordCount;
    SetLength(Hizmetler,j);
    i := 0;
    while not ado.Eof do
    begin
      Hizmet := ado.fieldbyname('islemKodu').AsString;
      Hizmetler[i] := Hizmet;
      i := i + 1;
      ado.Next;
    end;

    Hasta.HizmetListe := Hizmetler;

  finally
    ado.free;
  end;

  result := Hasta;
end;




procedure DermanOrderKaydet(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  TahlilGiris : HastaTahlilBilgileriGiris;
  TahlilGirisC : HastaTahlilBilgileriGiris;
  Cvp : HastaTahlilBilgileriKayitCikis;
  CvpC : HastaTahlilBilgileriKayitCikis;
  I ,x : integer;
  t : boolean;
  dosyaNo , gelisNo , id , idC , sm , s , ornekNo , ornekNoC ,kayitTip : string;
  Giris : TGirisFormRecord;
Begin

      datalar.Login;
      TahlilGiris := HastaTahlilBilgileriGiris.Create;
      TahlilGirisC := HastaTahlilBilgileriGiris.Create;

      Cvp := HastaTahlilBilgileriKayitCikis.Create;
      CvpC := HastaTahlilBilgileriKayitCikis.Create;

      txtLog.Lines.Clear;
      progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
      progres.Position := 0;


     if not DirectoryExists('C:\NoktaV3\DERMAN')
     then
      MkDir('C:\NoktaV3\DERMAN');

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
           id := 'G'+varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index));
           idC := 'C'+varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index));

           ornekNo := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('OrnekNO').Index));
           ornekNoC := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('CikisOrnekNo').Index));

          Giris.F_dosyaNo_ := dosyaNo;
          Giris.F_gelisNO_ := gelisNo;
          Giris.F_HASTAADI := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('HASTAADI').Index));
          Giris.F_HASTASOYADI := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('HASTASOYADI').Index));

          Giris.F_TC_ := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index));
          Giris.F_Cinsiyet := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('CINSIYETI').Index));

          Giris.F_DogumTarihi := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('DOGUMTARIHI').Index));



         TahlilGiris := HastabilgileriDoldurDerman(dosyaNo,gelisNo,id,ornekNo,'G',Giris);
         TahlilGiris.kullaniciadi := datalar._labusername;
         TahlilGiris.kullanicisifre := datalar._labsifre;
         TahlilGirisC := HastabilgileriDoldurDerman(dosyaNo,gelisNo,idC,ornekNoC,'C',Giris);
         TahlilGirisC.kullaniciadi := datalar._labusername;
         TahlilGirisC.kullanicisifre := datalar._labsifre;

         datalar.Lab.URL := datalar._laburl;
         datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\DERMAN\Derman_HastaKaydet_G' + dosyaNo + '_' + gelisNo + '.XML';
         try
         if length(ornekNo) > 0
         then
          Cvp := (datalar.Lab as LabIslemleriSoap).HastaTahlilBilgileriKaydet(TahlilGiris)
         else
          Cvp := (datalar.Lab as LabIslemleriSoap).HastaTahlilBilgileriKaydetorneknosuz(TahlilGiris);

         except on e : Exception do
           begin
             sm := e.Message;
             Cvp.Sonuc := '-1';
           end;
         end;

         s := Cvp.SonucKod;
         if s = '0'
         Then Begin
           ornekdurumyaz('Gönderildi',copy(id,2,10),'');
           txtLog.Lines.Add(Cvp.detay.GelenHastaid + ' - ' + Cvp.sonuc);
         //  gridAktif.Cells[4,I] := CVp.detay.OrnekNo;
         End
         Else
          txtLog.Lines.Add(Cvp.detay.GelenHastaid + ' - ' + Cvp.sonuc + '-' + sm);

         datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\DERMAN\Derman_HastaKaydet_C' + dosyaNo + '_' + gelisNo + '.XML';
         try
         if length(ornekNoC) > 0
         then
          CvpC := (datalar.Lab as LabIslemleriSoap).HastaTahlilBilgileriKaydet(TahlilGirisC)
         else
          CvpC := (datalar.Lab as LabIslemleriSoap).HastaTahlilBilgileriKaydetorneknosuz(TahlilGirisC);

         except on e : Exception do
           begin
             sm := e.Message;
             CvpC.Sonuc := '-1';
           end;
         end;

         s := CvpC.SonucKod;
         if s = '0'
         Then Begin
           ornekdurumyaz('Gönderildi',copy(idC,2,10),'');
           txtLog.Lines.Add(CvpC.detay.GelenHastaid + ' - ' + CvpC.sonuc);
         //  gridAktif.Cells[4,I] := CVp.detay.OrnekNo;
         End
         Else
          txtLog.Lines.Add(CvpC.detay.GelenHastaid + ' - ' + CvpC.sonuc + '-' + sm);

          Progres.Position := Progres.Position + 1;
        End;
      End; // for end
      datalar.HTTP_XMLDosya_Name := '';
      Progres.Visible := false;

End;



function ReferansKontrolToField(Referans : String; gridAktif : TAdvStringGrid ; Row : integer) : String;
begin
  if gridAktif.Cells[4,Row] = Referans
  Then
   ReferansKontrolToField := 'OrnekNo'
  Else
  if gridAktif.Cells[5,Row] = Referans
  Then
   ReferansKontrolToField := 'CikisOrnekNo'
  Else
  if gridAktif.Cells[10,Row] = Referans
  Then
   ReferansKontrolToField := 'OrnekNo_Plazma'
  Else
  if gridAktif.Cells[11,Row] = Referans
  Then
   ReferansKontrolToField := 'OrnekNo_Serum'
  Else
  if gridAktif.Cells[12,Row] = Referans
  Then
   ReferansKontrolToField := 'OrnekNo_TamKan'

end;




procedure DermanSonucAl(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                             gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  okuGiris : HastaTahlilOkuGiris;
  okuGirisC : HastaTahlilOkuGiris;
  CvpG : HastaTahlilSonuclariCevap;
  CvpC : HastaTahlilSonuclariCevap;

  ado : TADOQuery;
  I ,TestAdet , x : integer;
  ss , dosyaNo, gelisNo, id,idC, ornekNo,ornekNoC, sm , _F_  , testKod , _kod_ ,
  min , max , sonuc , sonucA ,sql ,kayitTip : string;
  t : boolean;

procedure sonucyaz(Cvp : HastaTahlilSonuclariCevap ; Tip : string);
var
 x : integer;
begin
            testAdet := length(Cvp.SonucDetay);
            if TestAdet = 0 then exit;

            for x := 0 to testAdet - 1 do
            begin
              txtLog.Lines.Add(Cvp.SonucDetay[x].GelenHastaid + ' - ' +
              Cvp.SonucDetay[x].HizmetAdi + ' ' + 'Test Kodu : ' + Cvp.SonucDetay[x].HizmetKod + ' ' +
              'Sonuc : ' + Cvp.SonucDetay[x].SonucDeger + ' - ' + Cvp.SonucDetay[x].SonucTarih);

              _F_ := '';

              if Cvp.SonucDetay[x].TestNo = 0
              then
                _kod_ := Cvp.SonucDetay[x].HizmetKod
              else
                _kod_ := Cvp.SonucDetay[x].HizmetKod + '.' + inttostr(Cvp.SonucDetay[x].TestNo);

              testKod := KodEslestirNormalDeger(_kod_,'',min,max, _F_);
              _F_ :=  Tip;//copy(Cvp.SonucDetay[x].GelenHastaid,1,1)+'d';

              if testKod <> ''
              Then Begin
                 Cvp.SonucDetay[x].SonucDeger := StringReplace(Cvp.SonucDetay[x].SonucDeger,'Poz','POZ',[rfReplaceAll]);
                 Cvp.SonucDetay[x].SonucDeger := StringReplace(Cvp.SonucDetay[x].SonucDeger,'Neg','NEG',[rfReplaceAll]);
                 Cvp.SonucDetay[x].SonucDeger := StringReplace(Cvp.SonucDetay[x].SonucDeger,',','.',[rfReplaceAll]);
                 sonuc := Cvp.SonucDetay[x].SonucDeger;


                 // markers
                 if (testKod = '907440') or
                    (testKod = '906610') or
                    (testKod = '906630') or
                    (testKod = '906660')
                 Then Begin
                    if (pos('NEG',Cvp.SonucDetay[x].SonucDeger) > 0)
                    Then sonuc := '-1'
                    Else
                    if (pos('POZ',Cvp.SonucDetay[x].SonucDeger) > 0)
                    Then sonuc := '1';

                    sonucA := trim(StringReplace(StringReplace(Cvp.SonucDetay[x].SonucDeger,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                    sonucA := trim(StringReplace(StringReplace(SonucA,'NEGatif','',[rfReplaceAll]),'POZitif','',[rfReplaceAll]));
                    sonucA := trim(StringReplace(StringReplace(SonucA,'NEGATÝF','',[rfReplaceAll]),'POZÝTÝF','',[rfReplaceAll]));

                    //sonucA := sonuc;
                    try
                     if strtofloat(sonuc) < strtofloat(max)
                     Then sonuc := '-1' else sonuc := '1';
                    except end;

                    try
                     sql := 'update hareketler set Gd = ' + sonuc +
                              ' , islemAciklamasi = ' + QuotedStr(sonucA) +
                              ' where onay = 1 and code = ' + QuotedStr(testKod) +
                              ' and tip = ''L'' and tip1 = ' + QuotedStr(Tip) +
                              ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                     datalar.QueryExec(sql);
                    except
                        sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                               ' where onay = 1 and code = ' + QuotedStr(testKod) +
                               ' and tip = ''L'' and tip1 = ' + QuotedStr(Tip) +
                               ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                        datalar.QueryExec(ado,sql);
                    end;
                 End
                 else
                 begin
                 // markers

                      try
                       sql := 'update hareketler set Gd = ' + QuotedStr(sonuc) +
                                ' where onay = 1 and code = ' + QuotedStr(testKod) +
                                ' and tip = ''L'' and tip1 = ' + QuotedStr(Tip) +
                                ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                       datalar.QueryExec(ado,sql);
                      except
                         sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                                ' where onay = 1 and code = ' + QuotedStr(testKod) +
                                ' and tip = ''L'' and tip1 = ' + QuotedStr(Tip) +
                                ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                         datalar.QueryExec(ado,sql);

                      end;
                 end;


              End;
            end; // test for end
            ornekdurumyaz('Sonuç Alýndý',copy(id,2,10),'');
end;

begin
  // datalar.Login;

   datalar.Login;
   okuGiris := HastaTahlilOkuGiris.Create;
   okuGiris.kullaniciadi := datalar._labusername;
   okuGiris.kullanicisifre := datalar._labsifre;
   okuGirisC := HastaTahlilOkuGiris.Create;
   okuGirisC.kullaniciadi := datalar._labusername;
   okuGirisC.kullanicisifre := datalar._labsifre;

   CvpG := HastaTahlilSonuclariCevap.Create;
   CvpC := HastaTahlilSonuclariCevap.Create;

   datalar.Lab.URL := datalar._laburl;
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
           id := 'G'+varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index));
           idC := 'C'+varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index));

           ornekNo := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index));
           ornekNoC := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('CikisOrnekNo').Index));



         okuGiris.OrnekNo := ornekNo;
         okuGiris.GelenHastaid := id;


         datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\DERMAN\Derman_SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


         try
          CvpG := (datalar.Lab as LabIslemleriSoap).HastaTahlilSonuclariOku(okuGiris);
         except on e : Exception do
           begin
             sm := e.Message;
             ss := 'Hata';
           end;
         end;

        if ss <> 'Hata'
        Then Begin
         if CvpG.sonuckod <> '-1'
         then begin
           sonucyaz(CvpG,'G');
           txtLog.Lines.Add(CvpG.SonucDetay[x].OrnekNo + ' - ' + CvpG.SonucDetay[x].GelenHastaid + ' - ' + CvpG.sonuc);
         end
         else
           txtLog.Lines.Add(CvpG.sonuc);
        End;



         datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\DERMAN\Derman_SonucAl_Cýkýs' + dosyaNo + '_' + gelisNo + '.XML';

         okuGirisC.OrnekNo := ornekNoC;
         okuGirisC.GelenHastaid := idC;
         try
          CvpC := (datalar.Lab as LabIslemleriSoap).HastaTahlilSonuclariOku(okuGirisC);
         except on e : Exception do
           begin
             sm := e.Message;
             ss := 'Hata';
           end;
         end;

        if ss <> 'Hata'
        Then Begin
         if CvpC.sonuckod <> '-1'
         then begin
           sonucyaz(CvpC,'C');
           txtLog.Lines.Add(CvpC.SonucDetay[x].OrnekNo + ' - ' + CvpC.SonucDetay[x].GelenHastaid + ' - ' + CvpC.sonuc);
         end
         else
           txtLog.Lines.Add(CvpC.sonuc);
        End;

        Progres.Position := Progres.Position + 1;


     End;
   end;  // for end Satýrlar

end;





end.
