unit TenayAhenk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,DateUtils,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,TenayServiceSYNLAB_SYNEVO_CENTRO,
  data_modul,cxGridDBTableView, cxMemo,cxProgressBar;

  procedure TenaySonucAlTCdenAhenk(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);

  procedure TenayOrderKaydetAhenk( gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);

  function OrderAhenk(dosyaNo : string ; gelis : string ; Field : string = '') : TenayServiceSYNLAB_SYNEVO_CENTRO.Order;

  procedure ornekdurumyaz(durum,id,refId : string);

  function ReferansKontrolToField(Referans : String; gridAktif : TAdvStringGrid ; Row : integer) : String;

implementation

 (*
var
   HTISynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Order;
   KurumSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.KurumBilgileri;
   GelisSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Gelis;
   istekSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Tetkik;
   isteklerSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Array_Of_Tetkik;
   doktorSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Doktor;
   HTICvpSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.HastakaydetCevap;
   *)

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

procedure TenayOrderKaydetAhenk( gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
   I : integer;
   t : boolean;
   sm,ss , dosyaNo,gelisNo,id , Field, kayitTip : string;
   x , r : Integer;
   HTISynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Order;
   KurumSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.KurumBilgileri;
   GelisSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Gelis;
   istekSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Tetkik;
   isteklerSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Array_Of_Tetkik;
   doktorSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Doktor;
   HTICvpSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.HastakaydetCevap;
Begin
      datalar.Login;
      HTISynevo := TenayServiceSYNLAB_SYNEVO_CENTRO.Order.Create;
      HTICvpSynevo := TenayServiceSYNLAB_SYNEVO_CENTRO.HastakaydetCevap.Create;
      GelisSynevo := TenayServiceSYNLAB_SYNEVO_CENTRO.Gelis.Create;
      doktorSynevo := TenayServiceSYNLAB_SYNEVO_CENTRO.Doktor.Create;
      KurumSynevo := TenayServiceSYNLAB_SYNEVO_CENTRO.KurumBilgileri.Create;
      datalar.Lab.URL := datalar._laburl;

      txtLog.Lines.Clear;

      progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
      progres.Position := 0;

      Progres.Visible := true;
  //    txtinfo.Caption := 'Gönderiliyor...';

     if not DirectoryExists('C:\NoktaV3\Ahenk')
                                   then
                                    MkDir('C:\NoktaV3\Ahenk');

    //  datalar.TenayMNT_XMLDosya_Name := '';
      For x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
      Begin

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


            Field := 'OrnekNo';
            HTISynevo := OrderAhenk(dosyaNo,gelisNo,Field);


            KurumSynevo := TenayServiceSYNLAB_SYNEVO_CENTRO.KurumBilgileri.Create;
            KurumSynevo.KullaniciAdi := datalar._labusername;
            KurumSynevo.Sifre := datalar._labsifre;
            KurumSynevo.Kodu := datalar._labkurumkod;

            HTISynevo.KurumBilgileri := KurumSynevo;

                 if HTISynevo <> nil
                 Then begin

                     datalar.Lab.URL := datalar._laburl;

                   //  if HTIMNT.Gelis.ReferansNo = '' then

                     datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Ahenk\HastaKaydet_' + dosyaNo + '_' + gelisNo;

                     try
                        HTICvpSynevo := (datalar.Lab as TenayServiceSYNLAB_SYNEVO_CENTRO.TenayWebServiceSoapSSC).HastaKaydet(HTISynevo);
                     except on e : Exception do
                               begin
                                     sm := e.Message;
                                     ss := 'Hata';
                               end;
                     end;

                     if (HTICvpSynevo.Kod = '1') and (HTICvpSynevo.Mesaj = '')
                     then begin
                       ornekdurumyaz('Gönderildi',id,inttostr(HTICvpSynevo.ReferansId));
                       txtLog.Lines.Add(HTISynevo.Adi+' '+HTISynevo.Soyadi + ' - ' +
                       HTISynevo.Gelis.ReferansNo + ' - ' + HTICvpSynevo.Mesaj + ' ' + 'Ýþlem Baþarýlý');
                     end
                     else
                     begin
                       txtLog.Lines.Add(HTISynevo.Gelis.ReferansNo + ' : ' + HTICvpSynevo.Mesaj);
                     end;

                     if ss = 'Hata'
                     Then
                      txtLog.Lines.Add(HTISynevo.Adi+' '+HTISynevo.Soyadi + ' - ' +
                      HTISynevo.Gelis.ReferansNo + ' - ' + sm );


                 end;
{$region 'eski kod 1'}
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
           *)
           {$endregion }
          Progres.Position := Progres.Position + 1;

        End;
      End; // for end
//      datalar.TenayMNT_XMLDosya_Name := '';
      Progres.Visible := false;
  //    txtinfo.Caption := '.';

End;


 {$region 'eski kod 2'}
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
 {$endregion}




function ReferansKontrolToField ( Referans: String; gridAktif : TAdvStringGrid ; Row : integer) : String;
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

procedure TenaySonucAlTCdenAhenk(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);
var
 // Service : tenayserviceCENTRO.TenayWebServiceSoapMNT;
  HTSO : TenayServiceSYNLAB_SYNEVO_CENTRO.TCSonuclariQuery;
  HTSOTCCvp : TenayServiceSYNLAB_SYNEVO_CENTRO.TCSonuclariResult;
  _Sonuclar_ :  TenayServiceSYNLAB_SYNEVO_CENTRO.OrnekSonuc;
  _TetkikSonuclar_ : TenayServiceSYNLAB_SYNEVO_CENTRO.TetkikSonuc;
  KurumMNT : TenayServiceSYNLAB_SYNEVO_CENTRO.KurumBilgileri;
  I,s , testAdet , sonucAdet , j , x , Tc : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max,Field,
  _tc_,kayitTip : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
  TTarih : TXSDateTime;
begin
   HTSO := TenayServiceSYNLAB_SYNEVO_CENTRO.TCSonuclariQuery.Create;
   HTSOTCCvp := TenayServiceSYNLAB_SYNEVO_CENTRO.TCSonuclariResult.Create;
   KurumMNT := TenayServiceSYNLAB_SYNEVO_CENTRO.KurumBilgileri.Create;
   KurumMNT.KullaniciAdi := datalar._labusername;
   KurumMNT.Kodu := datalar._labkurumkod;
   KurumMNT.Sifre := datalar._labsifre;
   HTSO.KurumBilgileri := KurumMNT;

   datalar.Lab.URL := datalar._laburl;
   txtLog.Lines.Clear;

   if not DirectoryExists('C:\NoktaV3\Ahenk')
   then
    MkDir('C:\NoktaV3\Ahenk');

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
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('sirano').Index);

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

             datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Ahenk\SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


             try
                HTSOTCCvp := (datalar.Lab as TenayServiceSYNLAB_SYNEVO_CENTRO.TenayWebServiceSoapSSC).TCSonuclariGetir(HTSO);
             except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
             end;

            if (ss <> 'Hata') and (HTSOTCCvp.SonucKodu <> '1')
            Then Begin
               if (HTSOTCCvp.Sonuclar[0] = nil) and (length(HTSOTCCvp.Sonuclar) = 1)
              then  begin
                 txtLog.Lines.Add(inttostr(HTSO.TC) + ' - Sonuç Bulunamadý');
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
                                           ifthen(_TetkikSonuclar_.Kodu = '',_TetkikSonuclar_.AltTestKodu,_TetkikSonuclar_.Kodu),
                                           inttostr(_TetkikSonuclar_.OrnekTurId),min,max, _F_);


                                if testKod <> ''
                                Then Begin
                                  a := _TetkikSonuclar_.Aciklama;
                               //   b := HTSOCvp.Testler[x].NormalDeger;

                                   _TetkikSonuclar_.Sonuc := StringReplace(_TetkikSonuclar_.Sonuc,'Poz','POZ',[rfReplaceAll]);
                                   _TetkikSonuclar_.Sonuc := StringReplace(_TetkikSonuclar_.Sonuc,'Neg','NEG',[rfReplaceAll]);
                                   _TetkikSonuclar_.Sonuc := StringReplace(_TetkikSonuclar_.Sonuc,',','.',[rfReplaceAll]);
                                   _TetkikSonuclar_.Sonuc := StringReplace(_TetkikSonuclar_.Sonuc,'-','',[rfReplaceAll]);
                                   _TetkikSonuclar_.Sonuc := StringReplace(_TetkikSonuclar_.Sonuc,'>','',[rfReplaceAll]);
                                   _TetkikSonuclar_.Sonuc := StringReplace(_TetkikSonuclar_.Sonuc,'<','',[rfReplaceAll]);

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
                                     try
                                       sql := 'update hareketler set Gd = ' + QuotedStr(sonuc)  +
                                             // ',islemAciklamasi = ' + _TetkikSonuclar_.Aciklama +
                                              ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                              ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                                       datalar.QueryExec(sql);

                                       sql := 'update hareketler ' +
                                              'set islemAciklamasi = dbo.fn_gecersizKarakterHarf(' + QuotedStr(_TetkikSonuclar_.Sonuc) + ')' +
                                              ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                              ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                                       datalar.QueryExec(sql);
                                     except
                                           sql := 'update hareketler ' +
                                              'set islemAciklamasi = ' + QuotedStr(_TetkikSonuclar_.Sonuc) +
                                              ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                              ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                                            datalar.QueryExec(sql);
                                     end;
                                   End
                                   else
                                   begin
                                      try
                                          sql := 'update hareketler set Gd = dbo.fn_gecersizKarakterHarf(' + QuotedStr(_TetkikSonuclar_.Sonuc) + ')' +
                                            //  ',islemAciklamasi = ' + _TetkikSonuclar_.Sonuc +
                                              ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                              ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                                       datalar.QueryExec(sql);
                                      except
                                          sql := 'update hareketler ' +
                                              'set islemAciklamasi = ' + QuotedStr(_TetkikSonuclar_.Sonuc) +
                                              ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                              ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                                              datalar.QueryExec(sql);
                                      end;

                                   end;

                                End;
                          end; // tetkikler end
                      end; //sonuclar end
                      ornekdurumyaz('Sonuç Alýndý',id,'');

            End //Sonuclar > 0 end
             else txtLog.Lines.Add(inttostr(HTSO.TC) + ' - ' +  HTSOTCCvp.SonucMesaji);

         End; //* chk end Göndrildi
        Progres.Position := Progres.Position + 1;
       end;  // for end Satýrlar

end;





function OrderAhenk(dosyaNo : string ; gelis : string ; Field : string = '') : TenayServiceSYNLAB_SYNEVO_CENTRO.Order;
var
  sql : string;
  HastaTenay : TenayServiceSYNLAB_SYNEVO_CENTRO.Order;
  GelisSynevo : TenayServiceSYNLAB_SYNEVO_CENTRO.Gelis;
  istekler : TenayServiceSYNLAB_SYNEVO_CENTRO.Array_Of_Tetkik;
  istek : TenayServiceSYNLAB_SYNEVO_CENTRO.Tetkik;
  ado : TADOQuery;
  i , j  : integer;
  barkod : int64;
  yil, ay, gun, saat, dakika, saniye, salise : word;
  ckod,kod,TurId  : string;
  KanAlimZamani : TDateTime;
  DTarih,TTarih , ATarih : TXSDateTime;
begin
  OrderAhenk := nil;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try

      HastaTenay := TenayServiceSYNLAB_SYNEVO_CENTRO.Order.Create;

      sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
      datalar.QuerySelect(ado,sql);

      HastaTenay.DosyaNo  := dosyaNo;
      HastaTenay.KimlikNo := ado.fieldbyname('TCKIMLIKNO').AsString;
      HastaTenay.Adi := ado.fieldbyname('HASTAADI').AsString;
      HastaTenay.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
      HastaTenay.BabaAdi := ado.fieldbyname('BABAADI').AsString;
      HastaTenay.AnneAdi := ado.fieldbyname('ANAADI').AsString;

      if (ado.fieldbyname('CINSIYETI').AsString = '0')
      Then HastaTenay.Cinsiyeti := TenayServiceSYNLAB_SYNEVO_CENTRO.Cinsiyet.Erkek
      else HastaTenay.Cinsiyeti := TenayServiceSYNLAB_SYNEVO_CENTRO.Cinsiyet.Kadin;

      DTarih := TXSDateTime.Create;
      Dtarih.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
      Dtarih.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
      Dtarih.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));

     // DTarih.AsDate := tarihyap(ado.fieldbyname('DOGUMTARIHI').Asstring);

      HastaTenay.DogumTarihi := DTarih;


      sql := 'select BHDAT,ornekNo,KanAlimZamani from Hasta_gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
      datalar.QuerySelect(ado,sql);

      KanAlimZamani := ado.fieldbyname('KanAlimZamani').AsDateTime;


      HastaTenay.OrnekNo := 0;

          GelisSynevo := TenayServiceSYNLAB_SYNEVO_CENTRO.Gelis.Create;
          GelisSynevo.ReferansNo := ado.fieldbyname('ornekNo').AsString;
           GelisSynevo.OrnekNo := strtoint(ifthen(ado.fieldbyname('OrnekNo').AsString = '',
                       '0',ado.fieldbyname('OrnekNo').AsString));


          TTarih := TXSDateTime.Create;
          TTarih.Year := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('BHDAT').AsDateTime),1,4));
          TTarih.Month := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('BHDAT').AsDateTime),5,2));
          TTarih.Day := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('BHDAT').AsDateTime),7,2));


       //   TTarih.AsDate := tarihyap(ado.fieldbyname('BHDAT').Asstring);

          GelisSynevo.Tarih := TTarih;

          GelisSynevo.GelisTipi := TenayServiceSYNLAB_SYNEVO_CENTRO.GelisTipi.DiyalizGiris;

            sql := 'select * from hareketlerLab h ' +
                   ' join labtestler_Firma l on l.butKodu = h.code and l.LabID = ' + QuotedStr(datalar._labID) +
                   ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelis +
                   ' and charindex(''.'',code) = 0 and h.tip1 = l.tip';
            datalar.QuerySelect(ado,sql);
            j := ado.RecordCount;
            SetLength(istekler,j);

            while not ado.Eof do
            begin
              istek := TenayServiceSYNLAB_SYNEVO_CENTRO.Tetkik.Create;
             // istek.LogId := ado.fieldbyname('SIRANO').AsInteger;
              ckod := '';
              //kod := KodEslestirKod(ado.fieldbyname('code').AsString,ckod,TurId);
              kod := ado.fieldbyname('islemKodu').AsString;
              istek.Kodu := kod;
              istek.Adi := ado.fieldbyname('NAME1').AsString;
              istek.KapId := 26;
              istek.OrnekTurId := ifThen(TurId = '','0',TurId);
              ATarih := TXSDateTime.Create;
              ATarih.Year := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('Tarih').AsDateTime),1,4));
              ATarih.Month := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('Tarih').AsDateTime),5,2));
              ATarih.Day := strtoint(copy(FormatDateTime('YYYYMMDD', ado.fieldbyname('Tarih').AsDateTime),7,2));
              istek.AlindigiTarih := ATarih;


              istekler[i] := istek;
              i := i + 1;

              ado.Next;
            end;

               GelisSynevo.Tetkikler := istekler;
                 HastaTenay.Gelis := GelisSynevo;
                 OrderAhenk := HastaTenay;




  finally
    ado.Free;
  end;


end;


end.
