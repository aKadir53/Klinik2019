unit GemSoftBIYOTIP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,GemsoftServiceBIYOTIP,
  data_modul,cxGridDBTableView, cxMemo,cxProgressBar;


  procedure OrnekListesiOku(t1,t2 : Tdate);
  procedure OrnekNoSonucOku(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  procedure ornekdurumyaz(durum,id,refId : string);



implementation

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

procedure OrnekListesiOku(t1,t2 : Tdate);
var
  Gon : HastaOrnekNoListele;
  Cvp : HastaOrnekNoListeleResponse;
  d1,d2 : TXSDateTime;
  i,x : integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC : string;
  ado : TADOQuery;
  txtTarih,txtTarih1 : TXSDateTime;
  _tetkikSonucu_ : tetkikSonucu;
begin

      Gon := HastaOrnekNoListele.Create;
      Cvp := HastaOrnekNoListeleResponse.Create;
  try
      d1 := TXSDateTime.Create;
      d2 := TXSDateTime.Create;
      txtTarih:= TXSDateTime.Create;
      txtTarih1:= TXSDateTime.Create;

      DatetoxsDate(d1,t1);
      DatetoxsDate(d2,t2);
      Gon.kurumKodu := datalar._labusername;
      Gon.kurumSifre := datalar._labsifre;
      Gon.tarih1 := d1;
      Gon.tarih2 := d2;

      datalar.Lab.URL := datalar._laburl;

      try
       Cvp := (datalar.Lab as IstekGonderSoap).HastaOrnekNoListele(Gon);
      except on e : exception do
       begin
          ShowMessage(e.Message);
       end;
      end;

      if length(Cvp.tetkikSonuc) > 0
      Then Begin
        for _tetkikSonucu_ in Cvp.tetkikSonuc do
        begin
             sql := 'update Hasta_gelisler  set ornekNo = ' + QuotedStr(inttostr(_tetkikSonucu_.OrnekNo)) +
                     ' from Hasta_gelisler g ' +
                     ' join hastakart h on h.dosyaNo = g.dosyaNo ' +
                     ' where TCKIMLIKNO = ' + QuotedStr(_tetkikSonucu_.TcNo) +
                     ' and BHDAT between ' + QuotedStr(tarihal(t1)) + ' and ' + QuotedStr(tarihal(t2));
             datalar.QueryExec(sql);

        end;  // for end
      End; // length(alisCvp.Patients) > 0

  finally

  end;

end;

procedure OrnekNoSonucOku(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  Gon : OrnekNoyaGoreSorgula;
  Cvp : OrnekNoyaGoreSorgulaResponse;
  i   : integer;
  p : TPoint;
  dosyaNo,gelisNo,kayitTip,sql,GC,ss,ornekNo,id,_F_,testKod,min,max,sonuc,sonucA : string;
  ado : TADOQuery;
  t : boolean;

procedure sonucYaz;
var
 x ,testAdet : integer;
begin
      testAdet := length(Cvp.tetkikSonuc);
      for x := 0 to testAdet - 1 do
      begin
        txtLog.Lines.Add(Cvp.tetkikSonuc[x].HastaAdi + ' - ' + Cvp.tetkikSonuc[x].HastaSoyadi + ' -' + Cvp.tetkikSonuc[x].KurumHizmetAdi + ' ' +
        Cvp.tetkikSonuc[x].KurumHizmetKodu  + ' - ' + Cvp.tetkikSonuc[x].Deger);

        testKod := KodEslestirNormalDeger(Cvp.tetkikSonuc[x].KurumHizmetKodu+Cvp.tetkikSonuc[x].GssKod,'0',min,max, _F_);

        if testKod <> ''
        Then Begin

           Cvp.tetkikSonuc[x].Deger := StringReplace(Cvp.tetkikSonuc[x].Deger,'Poz','POZ',[rfReplaceAll]);
           Cvp.tetkikSonuc[x].Deger:= StringReplace(Cvp.tetkikSonuc[x].Deger,'Neg','NEG',[rfReplaceAll]);
           Cvp.tetkikSonuc[x].Deger := StringReplace(Cvp.tetkikSonuc[x].Deger,',','.',[rfReplaceAll]);

           sonuc := trim(StringReplace(StringReplace(Cvp.tetkikSonuc[x].Deger,'>','',[rfReplaceAll]),'<','',[rfReplaceAll]));

           if (testKod = '907440') or
              (testKod = '906610') or
              (testKod = '906630') or
              (testKod = '906660')
           Then Begin

              if (pos('NEG',Cvp.tetkikSonuc[x].Deger) > 0)
              Then sonuc := '-1'
              Else
              if (pos('POZ',Cvp.tetkikSonuc[x].Deger) > 0)
              Then sonuc := '1'
              Else sonuc := Cvp.tetkikSonuc[x].Deger;

              sonucA := Cvp.tetkikSonuc[x].Deger;
              sonucA := trim(StringReplace(sonucA,'(','',[rfReplaceAll]));
              sonucA := trim(StringReplace(sonucA,')','',[rfReplaceAll]));
              sonucA := trim(StringReplace(sonucA,'NEGATÝF','',[rfReplaceAll]));
              sonucA := trim(StringReplace(sonucA,'POZÝTÝF','',[rfReplaceAll]));
              sonucA := trim(StringReplace(sonucA,'-','',[rfReplaceAll]));
              sonucA := trim(StringReplace(sonucA,'_','',[rfReplaceAll]));

              (*
              try
               if strtofloat(sonuc) < strtofloat(max)
               Then sonuc := '-1' else sonuc := '1';
              except end;
              *)
                try
                  sql :=  'update hareketler set gd = ' + sonuc +
                          ',islemAciklamasi  = ' + QuotedStr(sonucA) +
                          ' where onay = 1 and code = ' + QuotedStr(testKod) +
                          ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo +
                          ' and Tip1 = ' + QuotedStr(_F_);
                  datalar.QueryExec(ado,sql);
                except
                  sql :=  'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucA) +
                          ' where onay = 1 and code = ' + QuotedStr(testKod) +
                          ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo +
                          ' and Tip1 = ' + QuotedStr(_F_);

                  datalar.QueryExec(ado,sql);
                end;
           End
           Else
           begin


              try
               sql := 'update hareketler set gd = ' + sonuc +
                        ' where onay = 1 and code = ' + QuotedStr(testKod) +
                        ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo +
                        ' and Tip1 = ' + QuotedStr(_F_);

               datalar.QueryExec(ado,sql);
              except
                 sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                        ' where onay = 1 and code = ' + QuotedStr(testKod) +
                        ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo +
                        ' and Tip1 = ' + QuotedStr(_F_);
                 datalar.QueryExec(ado,sql);

              end;

           end;
        End;
      end; // test for end
      ornekdurumyaz('Sonuç Alýndý',id,'');

end;

begin

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  Gon := OrnekNoyaGoreSorgula.Create;

  Gon.kurumKodu := datalar._labusername;
  Gon.kurumSifre := datalar._labsifre;
 // gon. := strtoint(datalar._labkurumkod);


  datalar.Lab.URL := datalar._laburl;

   progres.Properties.Max := gridAktif.Controller.SelectedRowCount;
   progres.Position := 0;


  if not DirectoryExists('C:\NoktaV3\BIYOTIP')
  then
   MkDir('C:\NoktaV3\BIYOTIP');


   for i := 0 to gridAktif.Controller.SelectedRowCount - 1 do
   begin
     Application.ProcessMessages;
     kayitTip := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[i].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));
     ss := '';

     if  (kayitTip = 'Gönderildi')
     Then Begin
          dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[i].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[i].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[i].RecordIndex,gridAktif.DataController.GetItemByFieldName('sirano').Index);
           Gon.OrnekNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[i].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index);

           Cvp := OrnekNoyaGoreSorgulaResponse.Create;

           datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\BIYOTIP\BIYOTIP_' + intTostr(Gon.OrnekNo) +'.xml';

           try
             Cvp := (datalar.Lab as IstekGonderSoap).OrnekNoyaGoreSorgula(Gon);
           except on e : exception do
             begin
                ShowMessage(e.Message);
             end;
           end;

           if Cvp.OrnekNoyaGoreSorgulaResult.SonucKodu = '0000'
           Then Begin
            sonucYaz;
           End else txtLog.Lines.Add(inttostr(Cvp.OrnekNoyaGoreSorgulaResult.DonenId) + ' - ' + Cvp.OrnekNoyaGoreSorgulaResult.SonucMesaji);



     End;
     Progres.Position := Progres.Position + 1;

  // end;  // for end
   Progres.Visible := false;

end;


end;



end.
