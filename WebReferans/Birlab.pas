unit BirLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio, SuperObject,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask, IdTCPClient,
  data_modul,cxGridDBTableView, cxMemo,cxProgressBar,BirlabService;


  procedure SonucAl(tarih1,tarih2 : TDate ; gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
 // function OrderMNT(dosyaNo : string ; gelis : string) : TenayServiceMNT.Order;

  procedure OrderKaydet( gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  procedure ornekdurumyaz(durum,id,refId,ornekNo,ornekNOCikis : string); overload;
  procedure ornekdurumyaz(durum,id,refId : string);overload;

implementation


procedure ornekdurumyaz(durum,id,refId,ornekNo,ornekNOCikis : string);
var
  sql : string;
begin
   sql := 'update Hasta_gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ',LabRefId = ' + QuotedStr(refId) +
          ',ornekNO = ' + QuotedStr(ornekNo) +
          ',CikisornekNo = ' + QuotedStr(ornekNOCikis) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(sql);
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

procedure OrderKaydet( gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  Cvp : BirlabService.SorguCevap;
  Sql , VENPASS,VENUSER,KURUM_KODU , SERVIS_KODU ,ss ,sm, dosyaNo,tc,gelisNo,islemNo : string;
  Adi,soyadi : string;
  testKod ,test , min,max, _F_,sonuc ,sonucA ,id ,tarih1,tarih2,gelisTarihi,gelenBarkod,gelenBarkod2 : string;
  ado : TADOQuery;
  x, testAdet : integer;
  t : boolean;
  url,_url_ ,kayitTip,CINSIYETI,DOGUMTARIHI : string;
  i,r: integer;
  Response: TStringStream;
  Request : TStringStream;
  Json,SutSon,BarkodItem : ISuperObject;
  JArr: TSuperArray;
begin
   VENUSER := datalar._labusername;
   KURUM_KODU := datalar._labkurumkod;
   VENPASS := datalar._labsifre;

   Response := TStringStream.Create;
   datalar.Http1.Request.BasicAuthentication := True;
   datalar.Http1.Request.UserName := VENUSER;
   datalar.Http1.Request.Password := VENPASS;
   url := datalar._laburl;                    // 2016-02-01   2016-02-010

   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   txtLog.Lines.Clear;
   progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
   progres.Position := 0;
   try
     if not DirectoryExists('C:\NoktaV3\Birlab')
                                   then
                                    MkDir('C:\NoktaV3\Birlab');


      For I := 0 to gridAktif.Controller.SelectedRowCount - 1 do
      Begin
       sleep(1000);
       Application.ProcessMessages;
       kayitTip := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));


        if  (kayitTip = 'Yeni Kayýt')
        Then Begin
           datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Birlab\HastaKaydet_' + dosyaNo + '_' + gelisNo;

           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);
           Tc := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index));
           adi := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('HASTAADI').Index));
           soyadi := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('HASTASOYADI').Index));

           gelisTarihi := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('bhdat').Index));

           CINSIYETI := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('CINSIYETI').Index));
           DOGUMTARIHI := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('DOGUMTARIHI').Index));


        try
            Response.Clear;

            url := datalar._laburl;

            Json := SO;
           // JSon.S['Tarih'] := '2016-10-10'; // String Alan
            JSon.S['Adi'] := adi;
            JSon.S['Soyadi'] := soyadi;
            JSon.S['TCNo'] := Tc;
            JSon.S['Cinsiyet'] := ifThen(CINSIYETI= '0','E','K');
            JSon.S['DogumTarihi'] := FormattedTarih(DOGUMTARIHI);
            JSon.S['Tarih'] := FormattedTarihYYMMGG(gelisTarihi,'-');
            JSon.I['KurumId'] := strtoint(KURUM_KODU);
            JSon.I['MuracaatNo'] := strtoint(id);

           // JSon.O['Testler'] := HastaIstekBilgileriBirlab(dosyaNo,gelisNo).O['Testler'];
            sql := 'select * from hareketlerLab h ' +
                   ' join labtestler_Firma l on l.butKodu = h.code and l.LabID = ' + QuotedStr(datalar._labID) +
                   ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and onay = 1 and gelisNo = ' + gelisNo +
                   ' and charindex(''.'',code) = 0 and l.tip = 2';


            datalar.QuerySelect(ado,sql);

            JSon.O['Testler'] := SA([]); // Array Alan
            while not ado.Eof do
            begin
              SutSon := SO;
              SutSon.S['SutKodu'] := ado.fieldbyname('islemKodu').AsString;
              SutSon.I['IslemId'] := ado.fieldbyname('SIRANO').AsInteger;
              Json.A['Testler'].Add(SutSon);
              ado.Next;
            end;

            Request:= TStringStream.Create(JSon.AsJson(False, True));
            Request.Position := 0;
            datalar.Http1.Post(url+'/kayit', Request, Response);

            Request.SaveToFile(datalar.HTTP_XMLDosya_Name + '.txt');
            Response.SaveToFile(datalar.HTTP_XMLDosya_Name + '_SendCvp.txt');
            try
              Json := SO(Response.DataString);
            except on e : exception do
              begin
               txtLog.Lines.Add(e.Message);
              end;
            end;

            if Json.B['Basarili']
            then begin
              ornekdurumyaz('Gönderildi',id,'');
              Jarr := Json.O['Veri'].A['Barkodlar'];

              for r := 0 to JArr.LengtH - 1 do
              begin
                   BarkodItem := Jarr.O[I];
                   if r = 0 then GelenBarkod := inttostr(BarkodItem.I['Barkod']);
                   if r = 1 then GelenBarkod2 := inttostr(BarkodItem.I['Barkod']);
              end;
              ornekdurumyaz('Gönderildi',id,'',gelenBarkod,gelenBarkod2);

              txtLog.Lines.Add(JSon.O['Veri'].S['Adi'] + JSon.O['Veri'].S['TCNo'] + ' - ' + inttostr(JSon.O['Veri'].I['MuracaatNo']));
              gelenBarkod := inttostr(JSon.O['Veri'].I['MuracaatNo']);


            end
            else
            txtLog.Lines.Add(Json.S['HataMesaji']);

            //TcNo := JSon.O['Veri'].S['TCNo'];


         Except on e : Exception do
         begin
           txtLog.Lines.Add(e.Message);
           Response.Free;
           Request.Free;
         end;
        end;
     end;
     Progres.Position := Progres.Position + 1;
   end;  // for end

   finally
 //    Progres.Visible := false;
     ado.Free;

   end;

End;

procedure SonucAl(tarih1,tarih2 : TDate ; gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  Cvp : BirlabService.SorguCevap;
  Sql , VENPASS,VENUSER,KURUM_KODU , SERVIS_KODU ,ss ,sm, dosyaNo,tc,gelisNo,islemNo : string;
  testKod ,test , min,max, _F_,sonuc , markersonuc ,sonucA ,id : string;
  ado : TADOQuery;
  x, testAdet : integer;
  t : boolean;
  url,_url_ ,kayitTip,_tarih1,_tarih2 , getUrl: string;
  i,r: integer;
  Response: TStringStream;
  Json: ISuperObject;
  JArr: TSuperArray;

begin
   VENUSER := datalar._labusername;
   KURUM_KODU := datalar._labkurumkod;
   VENPASS := datalar._labsifre;

   Response := TStringStream.Create;
   datalar.idHttp1.Request.UserName := VENUSER;
   datalar.idHttp1.Request.Password := VENPASS;
   datalar.idHttp1.ConnectTimeout := 0;
   url := datalar._laburl;                    // 2016-02-01   2016-02-010
 try
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   txtLog.Lines.Clear;

   progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
   progres.Position := 0;
  // Progres.Visible := true;

     if not DirectoryExists('C:\NoktaV3\Birlab')
                                   then
                                    MkDir('C:\NoktaV3\Birlab');

    //  datalar.TenayMNT_XMLDosya_Name := '';
      For I := 0 to gridAktif.Controller.SelectedRowCount - 1 do
      Begin

       sleep(1000);
       Application.ProcessMessages;
       kayitTip := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));

         if  (kayitTip = 'Gönderildi')
         Then Begin
           datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Birlab\SonucAl_' + dosyaNo + '_' + gelisNo;

           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);
           Tc := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[I].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index));

         _tarih1 := FormatDatetime('yyyy-mm-dd',Tarih1);
         _tarih2 := FormatDatetime('yyyy-mm-dd',Tarih2);

        try
          Response.Clear;
          url := datalar._laburl;
          getUrl := url + '/sonuc/'+tc+'/'+_tarih1+'/'+_tarih2+'';

          (*
          datalar.idHttp1.readTimeout := 15000;
          (datalar.idHttp1 as TIdTCPClient).Connect(20000);
          if datalar.idHttp1.connected then
          begin
            datalar.idHttp1.Get(getUrl, Response);
          end
          else
          begin
            raise Exception.Create('no connection was established')
          end;
           *)

          datalar.idHttp1.Get(getUrl, Response);
          Response.SaveToFile(datalar.HTTP_XMLDosya_Name + '.txt');
          try
            Json := SO(Response.DataString);
            JArr := Json.AsArray;
             txtLog.Lines.Add(inttostr(JArr.LengtH));
          except on e : exception do
            begin
             txtLog.Lines.Add(e.Message);
            end;
          end;


          for r := 0 to JArr.LengtH - 1 do
          begin
                txtLog.Lines.Add(JArr.O[r].S['HASTA_ADI'] + ' ' +JArr.O[r].S['HASTA_SOYADI']+ ' - ' + JArr.O[r].S['TETKIK_ADI'] + ' ' +
                JArr.O[r].S['SUT_KODU'] + '-' + JArr.O[r].S['PARAMETRE'] + ' - ' + JArr.O[r].S['SONUC']);

                _F_ := '';

                if JArr.O[r].S['SUT_KODU'] = '901620'
                then
                  testKod := KodEslestirNormalDeger(JArr.O[r].S['SUT_KODU']+'.'+JArr.O[r].S['PARAMETRE_ID']
                                                         ,'0',min,max, _F_)
                else
                  testKod := KodEslestirNormalDeger(JArr.O[r].S['SUT_KODU'],'0',min,max, _F_);


                if testKod <> ''
                Then Begin
                   sonuc := JArr.O[r].S['SONUC'];
                   sonuc := StringReplace(sonuc,'Poz','POZ',[rfReplaceAll]);
                   sonuc := StringReplace(sonuc,'Neg','NEG',[rfReplaceAll]);
                   sonuc := StringReplace(sonuc,',','.',[rfReplaceAll]);
                   sonucA := JArr.O[r].S['SONUC'];

                   if (testKod = '907440') or
                      (testKod = '906610') or
                      (testKod = '906630') or
                      (testKod = '906660')
                   Then Begin
                     try
                      sonuc := sonuc;
                      sonuc := trim(StringReplace(StringReplace(sonuc,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));
                      markersonuc := '0';
                      if (pos('NEG',sonuc) > 0)
                      Then markersonuc := '-1'
                      Else
                      if (pos('POZ',sonuc) > 0)
                      Then markersonuc := '1';

                      (*
                      if strtofloat(sonuc) < strtofloat(max)
                      Then sonuc := '-1' else sonuc := '1';
                      *)
                      sql := 'update hareketler set gd  = dbo.fn_gecerliKarakterRakam(' + QuotedStr(sonuc) + ')' +
                             ',islemAciklamasi = dbo.fn_gecerliKarakterRakam(' + QuotedStr(sonuc) + ')' +
                             ',MarkerGD = ' + QuotedStr(markerSonuc) +
                             ' where onay = 1 and code = ' + QuotedStr(testKod) +
                             ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo +
                             ' and tip1 = ' + QuotedStr(_F_);
                      datalar.QueryExec(ado,sql);
                     except
                     end;
                   End
                   else
                   begin
                      try
                       sql := 'update hareketler set gd = dbo.fn_gecerliKarakterRakam(' + sonuc + ')' +
                                ' where onay = 1 and code = ' + QuotedStr(testKod) +
                                ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo +
                                 ' and tip1 = ' + QuotedStr(_F_); ;

                       datalar.QueryExec(ado,sql);
                      except
                         sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                                ' where onay = 1 and code = ' + QuotedStr(testKod) +
                                ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo +
                                 ' and tip1 = ' + QuotedStr(_F_);
                         datalar.QueryExec(ado,sql);
                      end;
                   end;
                End;
          end; // test for end
          ornekdurumyaz('Sonuç Alýndý',id,'');

         Except on e : Exception do
         begin
           txtLog.Lines.Add(e.Message);
           Response.Free;
         end;
        end;
     end;
     Progres.Position := Progres.Position + 1;
   end;  // for end

 finally
   //Progres.Visible := false;
   ado.Free;
 end;

end;

(*
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
 *)

end.
