unit TenayGama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,DateUtils,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,TenayserviceGAMA,
  data_modul,cxGridDBTableView, cxMemo,cxProgressBar;

(*
  procedure TenaySonucAlCENTRO(_dosyaNo,_gelisNo,_RefId : string ;
                            gridAktif : TAdvStringGrid ; txtLog : Tmemo ; progres :TsGauge ; Ref : boolean);
 *)
  procedure TenaySonucAlTCdenGama(Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);

  procedure TenayOrderKaydetGama( gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);

  function OrderGama(dosyaNo : string ; gelisNo : string ; Field : string = '') : TenayserviceGAMA.Order;

  procedure ornekdurumyaz(durum,id,refId : string);
//  function ReferansKontrolToField(Referans : String; gridAktif : TAdvStringGrid ; Row : integer) : String;

implementation


var
   HTI : TenayserviceGAMA.Order;
   Kurum : TenayserviceGAMA.KurumBilgileri;
   Gelis : TenayserviceGAMA.Gelis;
   istek : TenayserviceGAMA.Tetkik;
   istekler : TenayserviceGAMA.Array_Of_Tetkik;
   Doktor : TenayserviceGAMA.Doktor;
   HTICvp : TenayserviceGAMA.HastakaydetCevap;

procedure ornekdurumyaz(durum,id,refId : string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   sql := 'update Hasta_gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ',LabRefId = ' + QuotedStr(refId) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(ado,sql);

   ado.Free;
end;

procedure TenayOrderKaydetGama( gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
 I : integer;
 t : boolean;
 sm,ss , dosyaNo,gelisNo,id , Field, kayitTip : string;
  x , r : Integer;
Begin
      datalar.Login;
      HTI := TenayserviceGAMA.Order.Create;
      HTICvp := TenayserviceGAMA.HastakaydetCevap.Create;
      Gelis := TenayserviceGAMA.Gelis.Create;
      Doktor := TenayserviceGAMA.Doktor.Create;
      Kurum := TenayserviceGAMA.KurumBilgileri.Create;

      datalar.Lab.URL := datalar._laburl;
      Kurum := TenayserviceGAMA.KurumBilgileri.Create;
      Kurum.KullaniciAdi := datalar._labusername;
      Kurum.Sifre := datalar._labsifre;
      Kurum.Kodu := datalar._labkurumkod;
      HTI.KurumBilgileri := Kurum;

      txtLog.Lines.Clear;

      progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
      progres.Position := 0;

      Progres.Visible := true;
  //    txtinfo.Caption := 'Gönderiliyor...';

     if not DirectoryExists('C:\NoktaV3\Gama')
                                   then
                                    MkDir('C:\NoktaV3\Gama');

    //  datalar.TenayMNT_XMLDosya_Name := '';
      For I := 0 to gridAktif.Controller.SelectedRowCount - 1 do
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
            HTI := OrderGama(dosyaNo,gelisNo,Field);

                 if HTI <> nil
                 Then begin
                     Kurum := KurumBilgileri.Create;
                     Kurum.KullaniciAdi := datalar._labusername;
                     Kurum.Sifre := datalar._labsifre;
                     Kurum.Kodu := datalar._labkurumkod;
                     HTI.KurumBilgileri := Kurum;

                     datalar.Lab.URL := datalar._laburl;

                   //  if HTIMNT.Gelis.ReferansNo = '' then

                     datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Gama\HastaKaydet_' + dosyaNo + '_' + gelisNo;

                     try
                          HTICvp := (datalar.Lab as TenayserviceGAMA.TenayWebServiceSoap).HastaKaydet(HTI);
                     except on e : Exception do
                               begin
                                     sm := e.Message;
                                     ss := 'Hata';
                               end;
                     end;

                     if (HTICvp.Kod = '1') and (HTICvp.Mesaj = '')
                     then begin
                       ornekdurumyaz('Gönderildi',id,inttostr(HTICvp.ReferansId));
                       txtLog.Lines.Add(HTI.Adi+' '+HTI.Soyadi + ' - ' +
                       HTI.Gelis.ReferansNo + ' - ' + HTICvp.Mesaj + ' ' + 'Ýþlem Baþarýlý');
                     end
                     else
                     begin
                       txtLog.Lines.Add(HTI.Gelis.ReferansNo + ' : ' + HTICvp.Mesaj);
                     end;

                     if ss = 'Hata'
                     Then
                      txtLog.Lines.Add(HTI.Adi+' '+HTI.Soyadi + ' - ' +
                      HTI.Gelis.ReferansNo + ' - ' + sm );


                 end;
        End;
      End;
End;



       (*
        if  (t = True) and (gridAktif.Cells[8,I] = 'Yeni Kayýt')
        Then Begin
           dosyaNo := gridAktif.Cells[1,I];
           gelisNo := gridAktif.Cells[2,I];
           id := gridAktif.Cells[6,I];

                 Field := 'OrnekNo';
                 HTIMNT := OrderCENTRO(dosyaNo,gelisNo,Field);

                 if HTIMNT <> nil
                 Then begin

                     datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Centro\HastaKaydet_' + dosyaNo + '_' + gelisNo;

                     try
                      HTICvpMNT := (datalar.Lab as tenayserviceCENTRO.TenayWebServiceSoap).HastaKaydet(HTIMNT);
                     except on e : Exception do
                       begin
                         sm := e.Message;
                         ss := 'Hata';
                       end;
                     end;

                     if (HTICvpMNT.Kod = '1') and (HTICvpMNT.Mesaj = '')
                     then begin
                       ornekdurumyaz('Gönderildi',id,inttostr(HTICvpMNT.ReferansId));
                       txtLog.Lines.Add(HTIMNT.Adi+' '+HTIMNT.Soyadi + ' - ' +
                       HTIMNT.Gelis.ReferansNo + ' - ' + HTICvpMNT.Mesaj + ' ' + 'Ýþlem Baþarýlý');
                     end
                     else
                     begin
                       txtLog.Lines.Add(HTIMNT.Gelis.ReferansNo + ' : ' + HTICvpMNT.Mesaj);
                     end;

                     if ss = 'Hata'
                     Then
                      txtLog.Lines.Add(HTIMNT.Adi+' '+HTIMNT.Soyadi + ' - ' +
                      HTIMNT.Gelis.ReferansNo + ' - ' + sm );


                 end;

          Progres.Position := Progres.Position + 1;

        End;
      End; // for end
//      datalar.TenayMNT_XMLDosya_Name := '';
      Progres.Visible := false;
  //    txtinfo.Caption := '.';

End;
      (*
procedure TenaySonucAlCENTRO(_dosyaNo,_gelisNo,_RefId : string ;
                            gridAktif : TAdvStringGrid ; txtLog : Tmemo ; progres :TsGauge ; Ref : boolean);
var
 // Service : tenayserviceCENTRO.TenayWebServiceSoapMNT;
  HTSO : tenayserviceCENTRO.OrderQuery;
  HTSOCvp : tenayserviceCENTRO.HastaSorguCevap;
  KurumMNT : tenayserviceCENTRO.KurumBilgileri;
  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
begin
       datalar.Login;
     //  Service := tenayserviceCENTRO.GetTenayWebServiceSoap(False,datalar._laburl,datalar.TenayMNT);
       HTSO := tenayserviceCENTRO.OrderQuery.Create;
       HTSOCvp := tenayserviceCENTRO.HastaSorguCevap.Create;
       KurumMNT := tenayserviceCENTRO.KurumBilgileri.Create;
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
                HTSOCvp := (datalar.TenayMNT as tenayserviceCENTRO.TenayWebServiceSoap).HastaSonucSorgula(HTSO);
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
                HTSOCvp := (datalar.TenayMNT as tenayserviceCENTRO.TenayWebServiceSoap).HastaSonucSorgulaOrnekNo(HTSO);
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
                        sonucA := trim(StringReplace(StringReplace(SonucA,'DÜÞÜK','',[rfReplaceAll]),'düþük','',[rfReplaceAll]));
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

 *)
(*
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
  *)

procedure TenaySonucAlTCdenGama(Trh1,Trh2 : string ;
                                 gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);
var
 // Service : tenayserviceCENTRO.TenayWebServiceSoapMNT;
  HTSO : TenayserviceGAMA.TCSonuclariQuery;
  HTSOCvp : TenayserviceGAMA.TCSonuclariResult;
  _Sonuc_ :  TenayserviceGAMA.OrnekSonuc;
  _tetkikSonuc_ : TenayserviceGAMA.TetkikSonuc;
  KurumMNT : TenayserviceGAMA.KurumBilgileri;
  I,s , testAdet , sonucAdet , j , x , Tc : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max,Field,
  _tc_,kayitTip : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
  TTarih : TXSDateTime;
begin
       HTSO := TenayserviceGAMA.TCSonuclariQuery.Create;
       HTSOCvp := TenayserviceGAMA.TCSonuclariResult.Create;
       Kurum := TenayserviceGAMA.KurumBilgileri.Create;
       Kurum.KullaniciAdi := datalar._labusername;
       Kurum.Kodu := datalar._labkurumkod;
       Kurum.Sifre := datalar._labsifre;
       HTSO.KurumBilgileri := Kurum;

       datalar.Lab.URL := datalar._laburl;
       txtLog.Lines.Clear;

       if not DirectoryExists('C:\NoktaV3\Gama')
       then
        MkDir('C:\NoktaV3\Gama');

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

           _Tc_ := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index));


             HTSO.TC := StrToInt64(_Tc_);

             TTarih := TXSDateTime.Create;
             TTarih.Year := strtoint(copy(Trh1,1,4));
             TTarih.Month := strtoint(copy(Trh1,5,2));
             TTarih.Day := strtoint(copy(Trh1,7,2));

             HTSO.Bas := TTarih;

             TTarih := TXSDateTime.Create;
             TTarih.Year := strtoint(copy(Trh2,1,4));
             TTarih.Month := strtoint(copy(Trh2,5,2));
             TTarih.Day := strtoint(copy(Trh2,7,2));

             HTSO.Son := TTarih;

             datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Gama\SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


             try
                HTSOCvp := (datalar.Lab as TenayserviceGAMA.TenayWebServiceSoap).TCSonuclariGetir(HTSO);
             except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
             end;


            if HTSOCvp.Sonuclar = nil
            Then begin
             txtLog.Lines.Add('Tc : ' + intTostr(HTSO.TC) + ' - Barkod : ' + intTostr(_tetkikSonuc_.Barkod) + '  = Nil');
             Continue;
            end;

            if length(HTSOCvp.Sonuclar) > 0
            Then Begin
                for _Sonuc_ in HTSOCvp.Sonuclar do
                begin
                 // txtLog.Lines.Add('Barkod : ' + _Sonuc_.OrnekNo);
                 // txtLog.Lines.Add('-----------------------------------------');
               //   Field := ReferansKontrolToField(_Sonuc_.Referans,gridAktif,I);

                  for _tetkikSonuc_ in _Sonuc_.Tetkikler do
                  begin
                      txtLog.Lines.Add('Barkod : ' + intTostr(_tetkikSonuc_.Barkod));
                      txtLog.Lines.Add(_tetkikSonuc_.Adi + ' ' + 'Test Kodu : ' +_tetkikSonuc_.Kodu + ' ' +
                      'Alt Test Kodu : ' + _tetkikSonuc_.AltTestKodu + ' - ' + ' - ' + 'Tur Id : ' + inttostr(_tetkikSonuc_.OrnekTurId) + ' - ' +
                      'Sonuc : ' + _tetkikSonuc_.Sonuc + ' - ' +  _tetkikSonuc_.onaytarihi);
                      _F_ := '';
                      testKod := KodEslestirNormalDeger( ifthen(_tetkikSonuc_.Kodu = '',_tetkikSonuc_.AltTestKodu,_tetkikSonuc_.Kodu),
                                                        inttostr(_tetkikSonuc_.OrnekTurId),min,max, _F_);
                                                      //   _tetkikSonuc_.Kodu + '.' +_tetkikSonuc_.AltTestKodu
                      //          if _TetkikSonuclar_.OrnekTurId = 107
                      //          Then _F_ := 'Cd';

                      if testKod <> ''
                      Then Begin
                        a := _tetkikSonuc_.Aciklama;
                     //   b := HTSOCvp.Testler[x].NormalDeger;

                         _tetkikSonuc_.Sonuc := StringReplace(_tetkikSonuc_.Sonuc,'Poz','POZ',[rfReplaceAll]);
                         _tetkikSonuc_.Sonuc := StringReplace(_tetkikSonuc_.Sonuc,'Neg','NEG',[rfReplaceAll]);
                         _tetkikSonuc_.Sonuc := StringReplace(_tetkikSonuc_.Sonuc,',','.',[rfReplaceAll]);
                         _tetkikSonuc_.Sonuc := StringReplace(_tetkikSonuc_.Sonuc,'-','',[rfReplaceAll]);


                         _tetkikSonuc_.Aciklama := StringReplace(_tetkikSonuc_.Aciklama,'Neg','NEG',[rfReplaceAll]);
                         _tetkikSonuc_.Aciklama := StringReplace(_tetkikSonuc_.Aciklama,'Poz','POZ',[rfReplaceAll]);

                         sonuc := _tetkikSonuc_.Sonuc;


                         if (testKod = '907440') or
                            (testKod = '906610') or
                            (testKod = '906630') or
                            (testKod = '906660')
                         Then Begin

                             if (pos('NEG',_tetkikSonuc_.Sonuc) > 0) or (pos('N',_tetkikSonuc_.Sonuc) > 0)
                             Then sonuc := '-1'
                             Else
                             if (pos('POZ',_tetkikSonuc_.Sonuc) > 0) or (pos('P',_tetkikSonuc_.Sonuc) > 0)
                             Then sonuc := '1'
                             Else
                             if (pos('NEG',_tetkikSonuc_.Aciklama) > 0)
                             Then sonuc := '-1'
                             Else
                             if (pos('POZ',_tetkikSonuc_.Aciklama) > 0)
                             Then sonuc := '1'
                             Else sonuc := _tetkikSonuc_.Sonuc;

                            sonucA := trim(StringReplace(StringReplace(_tetkikSonuc_.Sonuc,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                            sonucA := trim(StringReplace(StringReplace(SonucA,'NEGatif','',[rfReplaceAll]),'POZitif','',[rfReplaceAll]));
                            sonucA := trim(StringReplace(StringReplace(SonucA,'NEGATÝF','',[rfReplaceAll]),'POZÝTÝF','',[rfReplaceAll]));
                            sonucA := trim(StringReplace(StringReplace(SonucA,'DÜÞÜK','',[rfReplaceAll]),'düþük','',[rfReplaceAll]));
                            sonucA := trim(StringReplace(SonucA,'-','',[rfReplaceAll]));

                            sql := 'update hareketler set gd = ' + sonuc +
                                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) +
                                      ' and gelisNO = ' + gelisNo + ' and tip1 = ' + QuotedStr(_F_) ;

                             datalar.QueryExec(sql);

                            sql := 'update hareketler set islemAciklamasi  = dbo.fn_gecersizKarakterHarf(' + QuotedStr(sonucA) + ')' +
                                   ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                            datalar.QueryExec(sql);
                         End
                         else
                         begin
                            try
                             sql := 'update hareketler set gd = ' + sonuc +
                                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and tip1 = ' + QuotedStr(_F_) +
                                      ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                             datalar.QueryExec(sql);
                            except
                               sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) +
                                      ' and gelisNO = ' + gelisNo + ' and tip1 = ' + QuotedStr(_F_);
                               datalar.QueryExec(sql);

                            end;

                         end;

                      End;
                  end; // _tetikSonuc_ for end
                end; // _sonuc_ for end
                ornekdurumyaz('Sonuç Alýndý',id,_Sonuc_.Referans);

            End //Sonuclar > 0 end
             else txtLog.Lines.Add(inttostr(HTSO.TC) + ' - ' +  HTSOCvp.SonucMesaji);

         End; //* chk end Göndrildi
        Progres.Position := Progres.Position + 1;
       end;  // for end Satýrlar

end;


function OrderGama(dosyaNo : string ; gelisNo : string ; Field : string = '') : TenayserviceGAMA.Order;
var
  sql : string;
  HastaTenay : TenayserviceGAMA.Order;
  Gelis : TenayserviceGAMA.Gelis;
  istekler : TenayserviceGAMA.Array_Of_Tetkik;
  istek : TenayserviceGAMA.Tetkik;
  HastaTur: TenayserviceGAMA.HastaTur;
  Doktor:TenayserviceGAMA.Doktor;

  ado : TADOQuery;
  i , j  : integer;
  barkod : int64;
  yil, ay, gun, saat, dakika, saniye, salise : word;
  ckod,kod,TurId  : string;
  KanAlimZamani : TDateTime;
  TTarih , ATarih : TXSDateTime;
  DTarih : TXSDateTime;
begin
  OrderGama := nil;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try

      HastaTenay := TenayserviceGAMA.Order.Create;
      Doktor:= TenayserviceGAMA.Doktor.Create;
      Gelis := TenayserviceGAMA.Gelis.Create;
      //sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
      //datalar.QuerySelect(ado,sql);

   //   sql:= 'Select d.TCKimlik, RTRIM(LEFT(d.AdI, CHARINDEX('' '', d.AdI) - 1)) as ADI, RTRIM(RIGhT(d.AdI, CHARINDEX('' '', d.AdI) -1)) as SOYADI'  +
   //    ' from GelisDetay g join Doktorlar d on g.Doktor=d.kod where gelisNo=' + QuotedStr(gelisNo) + ' and g.dosyaNo= '+QuotedStr(dosyaNo);

      sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
      datalar.QuerySelect(ado,sql);

     // datalar.QuerySelect(ado,sql);
     // Doktor.KimlikNo= ado.fieldbyname('TCKimlik').Astring;
    //  Doktor.Adi := ado.fieldbyname('ADI').AsString;
    //  Doktor.Soyadi := ado.fieldbyname('SOYADI').AsString;
     // HastaTenay.DoktorBilgileri:= Doktor;

      HastaTenay.DosyaNo  := dosyaNo;
      HastaTenay.KimlikNo := ado.fieldbyname('TCKIMLIKNO').AsString;
      HastaTenay.Adi := ado.fieldbyname('HASTAADI').AsString;
      HastaTenay.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
      HastaTenay.BabaAdi := ado.fieldbyname('BABAADI').AsString;
      HastaTenay.AnneAdi := ado.fieldbyname('ANAADI').AsString;

      if (ado.fieldbyname('CINSIYETI').AsString = '0')
      Then HastaTenay.Cinsiyeti := TenayserviceGAMA.Cinsiyet.Erkek
      else HastaTenay.Cinsiyeti := TenayserviceGAMA.Cinsiyet.Kadin;

      DTarih := TXSDateTime.Create;
      Dtarih.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
      Dtarih.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
      Dtarih.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));
      HastaTenay.DogumTarihi := DTarih;


      sql := 'select BHDAT,ornekNo,SIRANO , KanAlimZamani ' +
             ' from Hasta_gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;
      datalar.QuerySelect(ado,sql);

      KanAlimZamani := ado.fieldbyname('KanAlimZamani').AsDateTime;

      HastaTenay.OrnekNo := 0;


      if 1 = 1
      then  begin
          Gelis := TenayserviceGAMA.Gelis.Create;
          Gelis.ReferansNo := ado.fieldbyname('ornekNo').AsString;
          Gelis.OrnekNo := 0;


          TTarih := TXSDateTime.Create;
          DateToXsdateTime(TTarih,KanAlimZamani);
         // TTarih.Year := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,1,4));
         // TTarih.Month := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,5,2));
         // TTarih.Day := strtoint(copy(ado.fieldbyname('BHDAT').Asstring,7,2));

          Gelis.Tarih := TTarih;


          if Field = '' then Field := 'OrnekNo';


          sql := 'select h.name1,h.Tarih,l.islemKodu from hareketlerLab h ' +
                 ' join labtestler_firma l on l.butKodu = h.code and h.tip1 = l.tip and l.LabID = ' + QuotedStr(datalar._labID) +
                 ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo +
                 ' and charindex(''.'',h.code) = 0 and h.tip1 = l.tip and h.onay = 1';

                (*
                 ' union all ' +
                 'select l.tanimi,'''',l.islemKodu from labtestler l ' +
                 ' where isnull(l.islemKodu,'''') <> '''' and l.grupKodu = 5';

                (*
                 ' union all ' +
                 'select h.name1,h.TarIh,l.islemKoduC from hareketler h ' +
                 ' join labtestler l on l.butKodu = h.code ' +
                 ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis +
                 ' and l.tip = 2 and onay = 1 and l.uygulamaAdet = 2' +
                 ' union all ' +
                 'select l.tanimi,'''',l.islemKodu from labtestler l ' +
                 ' where isnull(l.islemKodu,'''') <> '''' and  l.tip is NULL and l.grupKodu = 5';
                  *)

          datalar.QuerySelect(ado,sql);
          j := ado.RecordCount;
          SetLength(istekler,j);

          while not ado.Eof do
          begin
            istek := TenayserviceGAMA.Tetkik.Create;
            kod := ado.fieldbyname('islemKodu').AsString;//KodEslestirKod(ado.fieldbyname('islemKodu').AsString,ckod,TurId);
            istek.Kodu := kod;
            istek.Adi := ado.fieldbyname('NAME1').AsString;
            istek.KapId := 0;
          //  istek.OrnekTurId := ifThen(TurId = '','0',TurId);
            ATarih := TXSDateTime.Create;

            DecodeDateTime(KanAlimZamani, yil, ay, gun, saat, dakika, saniye, salise);


            ATarih.Year := yil;
            ATarih.Month := ay;
            ATarih.Day := gun;

       //     ATarih.Hour := saat;
        //    ATarih.Minute := dakika;
        //    ATarih.Second := saniye;


            istek.AlindigiTarih := ATarih;
            istekler[i] := istek;
            i := i + 1;

            ado.Next;
          end;


         Gelis.Tetkikler := istekler;
         HastaTenay.Gelis := Gelis;
         OrderGama := HastaTenay;
      end
      else
        OrderGama := nil;

  finally
    ado.Free;
  end;


end;


end.
