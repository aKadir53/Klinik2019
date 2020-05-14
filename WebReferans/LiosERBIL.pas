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

// uses data_modul1;  // Bu unit bulunam�yor....

procedure ornekdurumyaz(durum,id,refId,barkod,barkodC : string);
var
  sql : string;
begin

   sql := 'update Hasta_gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ifThen(durum = 'Sonuc Al�nd�',
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
  'select l.islemKoduC' +
  'from hareketlerLab h ' +
  'join labtestler l on l.butkodu = h.code ' +
  'where dosyano = ' + QuotedStr(dosyaNo) + ' and gelisno = ' + gelisNo  + ' and onay = 1 and charindex(''.'',code) = 0  '  //and uygulamaAdet = 'C'
   );

   SetLength(testler,ado.RecordCount);
   ado.First;
   i := 0;
   while not ado.Eof do
   begin
      testler[i] := ado.FieldByName('islemKoduC').AsInteger;
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
 sonuc , kod2 : string;
 ado : TADOQuery;
begin

      _F_ := '';
     // if c = 4 then _F_ := 'G';
    //  if c = 5 then _F_ := 'C';

      for x := 0 to length(sonuclar) - 1 do
      begin
        //  kod2 := ifthen(Sonuclar[x].TETKIK_KODU2 = '0','' ,Sonuclar[x].TETKIK_KODU2);
          _F_ := '';

          if (sonuclar[x].TestGrupAdi = 'HEMATOLOJ�') or
             (sonuclar[x].TestGrupAdi = 'Hematoloji')
          then
             testKod := KodEslestirNormalDeger(sonuclar[x].TestID+sonuclar[x].TestParametreAdi,'',min,max, _F_)
          else
             testKod := KodEslestirNormalDeger(sonuclar[x].TestID,'',min,max, _F_);


          if testKod <> ''
          Then Begin
             sonuclar[x].Sonuc := StringReplace(sonuclar[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
             sonuclar[x].Sonuc := StringReplace(sonuclar[x].Sonuc,'Neg','NEG',[rfReplaceAll]);

             sonuclar[x].SonucAciklama := StringReplace(sonuclar[x].SonucAciklama,'Neg','NEG',[rfReplaceAll]);
             sonuclar[x].SonucAciklama := StringReplace(sonuclar[x].SonucAciklama,'Poz','POZ',[rfReplaceAll]);

             if (pos('NEG',sonuclar[x].Sonuc) > 0)
             Then sonuc := '-1'
             Else
             if (pos('POZ',sonuclar[x].Sonuc) > 0)
             Then sonuc := '1'
             Else
             if (pos('NEG',sonuclar[x].SonucAciklama) > 0)
             Then sonuc := '-1'
             Else
             if (pos('POZ',sonuclar[x].SonucAciklama) > 0)
             Then sonuc := '1'
             Else sonuc := sonuclar[x].Sonuc;

             try
               sql := 'update hareketler set gd = ' + QuotedStr(sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                      QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo + ' and Tip1 = ' + QuotedStr(_F_);
               datalar.QueryExec(sql);
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

        if  (kayitTip = 'G�nderildi')
        Then Begin
          dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
          gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
          id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('GELISID').Index);

          _Tc_ := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index));


          ornekNo := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index));


          datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ERBIL\SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


          try
           Sonuclar1 := (datalar.Lab as LabServiceSoap).DiyalizSonucDurum(username,password,ornekNo,tarih1,tarih2,Tc);
          except on e : Exception do
           begin
             sm := e.Message;
             txtLog.Lines.Add('Tc : ' + Tc + ' - ' + sm);
             exit;
           end;
          end;

          if Sonuclar1[0].Hata = ''
          Then Begin
            SonucYaz(Sonuclar1[0].TestSonuclariGenel[0].TestSonuclari ,4);
            ornekdurumyaz('Sonu� Al�nd�',id,'','','');
          End
          else
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
  sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max,Field,_tc_ ,kayitTip,ornekNo,AD,SOYAD : string;
  username,password : string;
  DT : TXSDatetime;
  _DT_ : TDateTime;
  Testler : ArrayOfInt;
  Cvp : ArrayOfHastaTestEklemeSonucu;
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

        if  (kayitTip = 'G�nderildi')
        Then Begin
          dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
          gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
          id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('GELISID').Index);

          _Tc_ := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index));

          AD := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('ADSOYAD').Index));

          _DT_ := VarToDateTime(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('DOGUMTARIHI').Index));

          ornekNo := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index));


          datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ERBIL\HastaKaydet_' + dosyaNo + '_' + gelisNo + '.XML';


          DateToXsdate(DT,_DT_);
          Testler := Order(dosyaNo , gelisNo);

          try
           Cvp := (datalar.Lab as LabServiceSoap).TestEkle(username,password,ornekNo,
                                                           _Tc_,AD,'','',DT,'','',id,Testler);
          except on e : Exception do
           begin
             sm := e.Message;
             txtLog.Lines.Add('Tc : ' + Tc + ' - ' + sm);
             exit;
           end;
          end;

          if Cvp[0].Sonuc = ''
          Then Begin
            ornekdurumyaz('G�nderildi',id,'',Cvp[0].ORNEKNO,'');
          End
          else
           txtLog.Lines.Add(Sonuclar1[0].Hata);
        End;

   End; // for end


end;

end.
