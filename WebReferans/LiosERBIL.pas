unit LiosERBIL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,KadirLabel,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, ComCtrls, Mask, EditType, adodb,strutils,
  IdHTTP, IdBaseComponent,xmldom, XMLIntf, msxmldom, Xmlxform, LiosLabService,XSBuiltIns,
  IdComponent, IdTCPConnection, IdTCPClient, cxGridDBTableView, cxMemo, cxProgressBar,
  data_modul ;

  procedure SonucAl(tarih1,tarih2:string ;
                    gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);

  procedure TestEkle(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);

  function Order(dosyaNo , gelisNo : string) : ArrayOfInt;

  procedure ornekdurumyaz(durum,id,refId,barkod,barkodC  : string);

implementation

// uses data_modul1;  // Bu unit bulunamýyor....

procedure ornekdurumyaz(durum,id,refId,barkod,barkodC : string);
var
  sql : string;
begin

   sql := 'update Hasta_gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ifThen(durum = 'Gönderildi',
          ',ornekNo = ' + QuotedStr(barkod) +
          ',CikisOrnekNo = ' + QuotedStr(barkodC),'') +
          ',LabRefId = ' + QuotedStr(refId) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(sql);
end;


function Order(dosyaNo , gelisNo : string) : ArrayOfInt;
var
  testler : ArrayOfInt;
  ado : TADOQuery;
  i : integer;
begin
  ado :=
  datalar.QuerySelect(
                 'select h.name1,h.Tarih,l.islemKodu from hareketlerLab h ' +
                 ' join labtestler_firma l on l.butKodu = h.code and h.tip1 = l.tip and l.LabID = ' + QuotedStr(datalar._labID) +
                 ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo +
                 ' and charindex(''.'',h.code) = 0 and h.tip1 = l.tip and h.onay = 1');

   SetLength(testler,ado.RecordCount);
   ado.First;
   i := 0;
   while not ado.Eof do
   begin
      testler[i] := ado.FieldByName('islemKodu').AsInteger;
      inc(i);
      ado.Next;
   end;

   Order := testler;

end;

procedure SonucAl(tarih1,tarih2:string ;
             gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  sql,sm,_F_,testKod: string;
  I,x : integer;
  t : boolean;
  sonuclar1 : ArrayOfHastaSonucToplu;
  Tc,id,dosyaNo,gelisNo : string;
  sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max,Field,_tc_ ,kayitTip,ornekNo: string;
  username,password : string;

procedure SonucYaz(Sonuclar : ArrayOfSonucBilgi ; c  : integer);
var
 x : integer;
 sonuc , markerSonuc , kod2 : string;
 ado : TADOQuery;
begin

      _F_ := '';
     // if c = 4 then _F_ := 'G';
    //  if c = 5 then _F_ := 'C';


      for x := 0 to length(sonuclar) - 1 do
      begin
        //  kod2 := ifthen(Sonuclar[x].TETKIK_KODU2 = '0','' ,Sonuclar[x].TETKIK_KODU2);
          _F_ := '';

          if (sonuclar[x].TestGrupAdi = 'HEMATOLOJÝ') or
             (sonuclar[x].TestGrupAdi = 'Hematoloji') or
             (sonuclar[x].SutKodu = '901450')
          then
             testKod := KodEslestirNormalDeger(sonuclar[x].TestID+sonuclar[x].TestAltParametreLabKodu,'',min,max, _F_)
          else
             testKod := KodEslestirNormalDeger(sonuclar[x].TestID,'',min,max, _F_);


          if testKod <> ''
          Then Begin
             sonuc := sonuclar[x].Sonuc;

             try

              if (testKod = '906610') or
                 (testKod = '906630') or
                 (testKod = '907440') or
                 (testKod = '906660')
              then begin
                 markerSonuc := '0';
                 sonuclar[x].SonucDurum := StringReplace(sonuclar[x].SonucDurum,'Poz','POZ',[rfReplaceAll]);
                 sonuclar[x].SonucDurum := StringReplace(sonuclar[x].SonucDurum,'Neg','NEG',[rfReplaceAll]);
                 if (pos('NEG',sonuclar[x].SonucDurum) > 0)
                 Then markerSonuc := '-1'
                 Else
                 if (pos('POZ',sonuclar[x].SonucDurum) > 0)
                 Then markerSonuc := '1';
                 sonuc := sonuclar[x].Sonuc;

                 sql := 'update hareketler set gd = dbo.fn_gecerliKarakterRakam(' + QuotedStr(Sonuc) + ')' +
                        ',islemAciklamasi = ' + QuotedStr(sonuc) +
                        ',MarkerGD = ' + QuotedStr(markerSonuc) +
                        ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                      QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo + ' and Tip1 = ' + QuotedStr(_F_);
                 datalar.QueryExec(sql);

              end
              else
              begin
                 sql := 'update hareketler set gd = ' + QuotedStr(Sonuc) +
                        ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                        QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo + ' and Tip1 = ' + QuotedStr(_F_);
                 datalar.QueryExec(sql);
              end;

             except

               sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                       QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo + ' and Tip1 = ' + QuotedStr(_F_);;
               datalar.QueryExec(sql);

               txtLog.Lines.Add('**************HATA : ' + sonuclar1[0].TestSonuclariGenel[0].ORNEKNO +'-'+
               sonuclar[x].TestID + '-' + sonuclar[x].TestGrupAdi
               + '-' +sonuclar[x].TestAdi
               + '-' + sonuclar[x].TestParametreAdi
               +'-'+ sonuclar[x].Sonuc);

             end;
          End;

          txtLog.Lines.Add(sonuclar1[0].TestSonuclariGenel[0].ORNEKNO + ' - '+_F_+ ' - ' +
          sonuclar[x].TestID
          + '-' + sonuclar[x].TestGrupAdi + '-' +
               sonuclar[x].TestAdi
               + '-' + sonuclar[x].TestParametreAdi
               +'-'+ sonuclar[x].Sonuc);

      end;

end;

begin
   username := datalar._labusername;
   password := datalar._labsifre;
   datalar.Lab.URL := datalar._laburl;
   txtLog.Lines.Clear;

   if not DirectoryExists('C:\NoktaV3\ERBIL')
   then
    MkDir('C:\NoktaV3\ERBIL');

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


          ornekNo := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index));


          datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ERBIL\SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


          try
           Sonuclar1 := (datalar.Lab as LabServiceSoap).DiyalizSonucDurum(username,password,ornekNo,tarih1,tarih2,_Tc_);
          except on e : Exception do
           begin
             sm := e.Message;
             txtLog.Lines.Add('Tc : ' + Tc + ' - ' + sm);
             exit;
           end;
          end;

          if Sonuclar1[0].Hata = ''
          Then
            if Assigned(Sonuclar1[0].TestSonuclariGenel[0].TestSonuclari)
            Then Begin
              SonucYaz(Sonuclar1[0].TestSonuclariGenel[0].TestSonuclari ,4);
              ornekdurumyaz('Sonuç Alýndý',id,'','','');
            End
            else
             txtLog.Lines.Add('TestSonuclari Verisi Bulunamadý')
          Else
           txtLog.Lines.Add(Sonuclar1[0].Hata);
        End;

   End; // for end

end;

procedure TestEkle(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  sql,sm,_F_,testKod: string;
  I,x : integer;
  t : boolean;
  sonuclar1 : ArrayOfHastaSonucToplu;
  Tc,id,dosyaNo,gelisNo : string;
  sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max,Field,_tc_ ,kayitTip,ornekNo,AD,SOYAD ,Cins: string;
  username,password : string;
  DT : TXSDatetime;
  _DT_ : TDateTime;
  Testler : ArrayOfInt;
  Cvp : ArrayOfHastaTestEklemeSonucu;
  CvpSTR : String;
begin

   username := datalar._labusername;
   password := datalar._labsifre;
   datalar.Lab.URL := datalar._laburl;
   txtLog.Lines.Clear;

   if not DirectoryExists('C:\NoktaV3\ERBIL')
   then
    MkDir('C:\NoktaV3\ERBIL');

   progres.Properties.Max := gridAktif.Controller.SelectedRowCount;
   progres.Position := 0;

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

          _Tc_ := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index));

          AD := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('HASTAADI').Index));

          SOYAD := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('HASTASOYADI').Index));

          Cins := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('CINSIYETI').Index));


          _DT_ := VarToDateTime(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('DOGUMTARIHI').Index));

          ornekNo := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index));


          datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ERBIL\HastaKaydet_' + dosyaNo + '_' + gelisNo + '.XML';

          DT := TXSDateTime.Create;
          DateToXsdateTime(DT,_DT_);
          Testler := Order(dosyaNo , gelisNo);

          progres.Position :=    progres.Position + 1;

          if ornekNo <> ''
          then begin
            (*
             try
               CvpSTR := (datalar.Lab as LabServiceSoap).TestGuncelle(username,password,ornekNo,Testler);

              except on e : Exception do
               begin
                 sm := e.Message;
                 txtLog.Lines.Add('Tc : ' + Tc + ' - ' + sm);
                 exit;
               end;
              end;

              if Cvp[0].Sonuc = 'Baþarýlý'
              Then Begin
                ornekdurumyaz('Gönderildi',id,'',ornekNo,'');
              End
              else
               txtLog.Lines.Add(Sonuclar1[0].Hata);
              *)

            txtLog.Lines.Add('Tc : ' + Tc + ' - ' + 'Gönderim Barkodu Olan Kayýt Tekrar Gönderilemez');
            txtLog.Lines.Add('Kaydý Erbil Ekranýndan Silip , Kaydý YeniKayýt(Onay) a alýp Barkodu Silip Tekrar Gönderebilirsiniz');
            Continue;


          end
          else
          begin

              try
               Cvp := (datalar.Lab as LabServiceSoap).TestEkle(username,password,ornekNo,
                                                               _Tc_,AD,SOYAD,
                                                               ifThen(Cins='0','Erkek','Kadýn'),
                                                               DT,'','',id,Testler);
              except on e : Exception do
               begin
                 sm := e.Message;
                 txtLog.Lines.Add('Tc : ' + Tc + ' - ' + sm);
                 exit;
               end;
              end;

              if Cvp[0].Sonuc = 'Baþarýlý'
              Then Begin
                ornekdurumyaz('Gönderildi',id,'',Cvp[0].ORNEKNO,'');
              End
              else
               txtLog.Lines.Add(Sonuclar1[0].Hata);

          end;

        End;

   End; // for end


end;

end.
