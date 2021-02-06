unit ElabUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,cxProgressBar,cxMemo,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,cxGridDBTableView,Kadir,KadirLabel,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,ElabService,data_modul,DateUtils;

  procedure ELABOrderKaydet(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  function PatientELAB (dosyaNo : string ; gelis : string ; Field : string = '') : Array_Of_NewPatientRecord;
  procedure SonucAl(t1,t2 : TXSDateTime ; dataset : TADOQuery ; Log : Tcxmemo ; progres :TcxProgressBar);
  procedure SonucAlBarkod(gridAktif : TcxGridDBTableView ; Log : Tcxmemo ; progres :TcxProgressBar);

  procedure ornekdurumyaz(durum,id : string);
  procedure ornekdNoyaz(id,refId : string);

implementation



function PatientELAB (dosyaNo : string ; gelis : string ; Field : string = '') : Array_Of_NewPatientRecord;
var
  sql : string;
  Hasta : NewPatientInfo;
  GelisELAB : Array_Of_NewPatientRecord;
  istekler : TestList2;
  istek : NewTest;
  ado : TADOQuery;
  i , j : integer;
  yil, ay, gun, saat, dakika, saniye, salise : word;
  ckod,kod,TurId : string;
  KanAlimZamani : TDateTime;
  DTarih , ATarih : TXSDateTime;
  TTarih : TXSDate;
begin
  PatientELAB := nil;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try

      Hasta := NewPatientInfo.Create;

      sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
      datalar.QuerySelect(ado,sql);

    //  Hasta.PatientNo  := dosyaNo;
      Hasta.TCKNo := ado.fieldbyname('TCKIMLIKNO').AsString;
      Hasta.Name_ := ado.fieldbyname('HASTAADI').AsString;
      Hasta.Surname := ado.fieldbyname('HASTASOYADI').AsString;


      if (ado.fieldbyname('CINSIYETI').AsString = '0')
      Then Hasta.Gender := Gender.ERKEK
      else Hasta.Gender := Gender.KADIN;

      DecodeDateTime(ado.fieldbyname('DOGUMTARIHI').AsDateTime, yil, ay, gun, saat, dakika, saniye, salise);

      TTarih := TXSDate.Create;

      TTarih.Year := yil;
      TTarih.Month := ay;
      TTarih.Day := gun;

      Hasta.BirthDate := TTarih;


      sql := 'select BHDAT,ornekNo,SIRANO ,' +
             ' (select Tarih from hareketlerSeans ' +
                ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis + ' and KanAlindimi = 1) KanAlimZamani ' +
             ' from Hasta_gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
      datalar.QuerySelect(ado,sql);

      KanAlimZamani := ado.fieldbyname('KanAlimZamani').AsDateTime;

      if 1 = 1
      then  begin

          if Field = '' then Field := 'OrnekNo';


          sql := 'select h.name1,h.Tarih,l.islemKodu from hareketlerLab h ' +
                 ' join labtestler_firma l on l.butKodu = h.code and h.tip1 = l.tip and l.LabID = ' + QuotedStr(datalar._labID) +
                 ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis +
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
            istek := NewTest.Create;
            kod := ado.fieldbyname('islemKodu').AsString;//KodEslestirKod(ado.fieldbyname('islemKodu').AsString,ckod,TurId);
            istek.ReferenceCode := kod;
            istek.TestName := ado.fieldbyname('NAME1').AsString;

            ATarih := TXSDateTime.Create;

            DecodeDateTime(ado.fieldbyname('Tarih').AsDateTime, yil, ay, gun, saat, dakika, saniye, salise);


            ATarih.Year := yil;
            ATarih.Month := ay;
            ATarih.Day := gun;
            ATarih.Hour := saat;
            ATarih.Minute := dakika;
            ATarih.Second := saniye;


            istek.SamplingTime  := ATarih;
            istekler[i] := istek;
            i := i + 1;

            ado.Next;
          end;

         SetLength(GelisELAB,1);
         GelisELAB[0].TestList := istekler;
         GelisELAB[0].PatientInfo := Hasta;
         PatientELAB := GelisELAB;
      end
      else
        PatientELAB := nil;

  finally
    ado.Free;
  end;


end;



procedure ELABOrderKaydet(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
 I : integer;
 t : boolean;
 sm,ss , dosyaNo,gelisNo,id , Field , kayitTip : string;
 x , r : Integer;
 lvGetTestResultWithDateRangeRequest : AddNewPatientRecordRequest ;
 lvGetTestResult : AddNewPatientRecordResponse ;
 Order : Array_Of_NewPatientRecord;

Begin

  datalar.Login;

  lvGetTestResultWithDateRangeRequest := AddNewPatientRecordRequest.Create;

  lvGetTestResultWithDateRangeRequest.Login := Login.Create;
  lvGetTestResultWithDateRangeRequest.Login.UserName := datalar._labusername; //'user';
  lvGetTestResultWithDateRangeRequest.Login.PassWord := datalar._labsifre; //'12345';

//  datalar.ELab.URL := datalar._laburl;// 'http://195.175.58.154:8755/webservices/elab/elab.php';
  datalar.Lab.URL := datalar._laburl;

  txtLog.Lines.Clear;
  progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
  progres.Position := 0;

  if not DirectoryExists('C:\NoktaV3\ELAB')
  then
   MkDir('C:\NoktaV3\ELAB');

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
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);





                 Field := 'OrnekNo';
                 Order := PatientELAB(dosyaNo,gelisNo,Field);

                 if Order <> nil
                 Then begin
                     lvGetTestResultWithDateRangeRequest.PatientRecord := Order;

                     datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ELAB\ELAB_HastaKaydet_' + dosyaNo + '_' + gelisNo;

                     try
                      lvGetTestResult := (datalar.Lab as ElabService.eLabPortType).AddNewPatientRecord(lvGetTestResultWithDateRangeRequest);
                     except on e : RequestFault do
                       begin
                         sm := e.message_;
                         ss := 'Hata';
                         Continue;
                       end;
                     end;

                     if Length(lvGetTestResult.AddNewPatientRecordResult.TestList) > 0
                     then begin
                       ornekdurumyaz('Gönderildi',id);
                       txtLog.Lines.Add(inttostr(lvGetTestResult.AddNewPatientRecordResult.PatientNo) + ' ' + 'Ýþlem Baþarýlý');
                     end
                     else
                     begin
                       txtLog.Lines.Add(sm);
                     end;



                 end;

           Progres.Position := Progres.Position + 1;
        End;
      End; // for end
      datalar.HTTP_XMLDosya_Name := '';
      Progres.Visible := false;
  //    txtinfo.Caption := '.';

End;



procedure ornekdNoyaz(id,refId : string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
     sql := 'update Hasta_gelisler set OrnekNo = ' + QuotedStr(refId) +
            ' where SIRANO = ' + id;
     datalar.QueryExec(ado,sql);

   finally
     ado.Free;
   end;

end;


procedure ornekdurumyaz(durum,id : string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
     sql := 'update Hasta_gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
            ' where SIRANO = ' + id;
     datalar.QueryExec(ado,sql);

   finally
     ado.Free;

   end;
end;





procedure SonucAl(t1,t2:TXSDateTime ; dataset : TADOQuery ; Log : Tcxmemo ; progres :TcxProgressBar);
var
  lvRIO: THTTPRIO;
  lvGetTestResultWithDateRangeRequest : GetTestResultWithDateRangeRequest;
  lvGetTestResult : GetTestResultWithDateRangeResponse;
  i : integer;
  min,max,_F_ ,testKod ,sql ,dosyaNo , gelisNo , tc ,id : string;
 durum : boolean;

procedure SonucYaz(Sonuclar : PatientResults ; c  : integer);
var
 x : integer;
 sonuc , markerSonuc, kod2 : string;
 ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      try
      for x := 0 to length(sonuclar.TestList) - 1 do
      begin
          _F_ := '';

        //  testKod := KodEslestir(sonuclar.TestList[x].TestNo ,_F_);
          testKod := KodEslestirNormalDeger(sonuclar.TestList[x].TestNo,'',min,max,_F_);

          if testKod <> ''
          Then Begin
             sonuclar.TestList[x].Result := StringReplace(sonuclar.TestList[x].Result,'Poz','POZ',[rfReplaceAll]);
             sonuclar.TestList[x].Result := StringReplace(sonuclar.TestList[x].Result,'Neg','NEG',[rfReplaceAll]);
             sonuclar.TestList[x].Result  := StringReplace(sonuclar.TestList[x].Result,',','.',[rfReplaceAll]);

         //    sonuclar[x].SonucAciklama := StringReplace(sonuclar[x].SonucAciklama,'Neg','NEG',[rfReplaceAll]);
         //    sonuclar[x].SonucAciklama := StringReplace(sonuclar[x].SonucAciklama,'Poz','POZ',[rfReplaceAll]);

             markersonuc := '0';
             if (pos('NEG',sonuclar.TestList[x].Result) > 0)
             Then markerSonuc := '-1'
             Else
             if (pos('POZ',sonuclar.TestList[x].Result) > 0)
             Then markerSonuc := '1'
             Else
             if (pos('NEG',sonuclar.TestList[x].Note) > 0)
             Then markerSonuc := '-1'
             Else
             if (pos('POZ',sonuclar.TestList[x].Note) > 0)
             Then markerSonuc := '1';

             sonuc := sonuclar.TestList[x].Result;

             try
               sql := 'update hareketler set gd = dbo.fn_gecerliKarakterRakam(' + QuotedStr(sonuc) + ')' +
                      ',islemAciklamasi = dbo.fn_gecerliKarakterRakam(' + QuotedStr(sonuc) + ')' +
                      ',MarkerGD = ' + QuotedStr(markerSonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                      QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo + ' and Tip1 = ' + QuotedStr(_F_) ;
               datalar.QueryExec(ado,sql);

             except

               sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                       QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo + ' and Tip1 = ' + QuotedStr(_F_);
               datalar.QueryExec(ado,sql);
             (*
               Log.Add('**************HATA : ' + sonuclar1[0].TestSonuclariGenel[0].ORNEKNO +'-'+
               sonuclar[x].TestID + '-' + sonuclar[x].TestGrupAdi
               + '-' +sonuclar[x].TestAdi
               + '-' + sonuclar[x].TestParametreAdi
               +'-'+ sonuclar[x].Sonuc);
               *)
             end;
          End;

          Log.lines.Add(sonuclar.PatientInfo.TCKNo + ' - ' +
                        sonuclar.PatientInfo.name_ + ' - ' + sonuclar.PatientInfo.Surname + ' - ' +
                        _F_+ ' - ' +
                        sonuclar.TestList[x].TestNo  + '-' +
                        sonuclar.TestList[x].TestName + '-' +
                        sonuclar.TestList[x].Result);

      end;

      finally
        ado.Free;
      end;
end;

begin
  datalar.Login;

  lvGetTestResultWithDateRangeRequest := GetTestResultWithDateRangeRequest.Create;

  lvGetTestResultWithDateRangeRequest.Login := Login.Create;
  lvGetTestResultWithDateRangeRequest.Login.UserName := datalar._labusername; //'user';
  lvGetTestResultWithDateRangeRequest.Login.PassWord := datalar._labsifre; //'12345';
  lvGetTestResultWithDateRangeRequest.StartTime  := TXSDateTime.Create;
  lvGetTestResultWithDateRangeRequest.StartTime := t1; //DateTimeToXSDateTime(now-1);
  lvGetTestResultWithDateRangeRequest.EndTime  := TXSDateTime.Create;
  lvGetTestResultWithDateRangeRequest.EndTime := t2; // DateTimeToXSDateTime(now);
//  datalar.ELab.URL := datalar._laburl;// 'http://195.175.58.154:8755/webservices/elab/elab.php';
  datalar.Lab.URL := datalar._laburl;

  if not DirectoryExists('C:\NoktaV3\ELAB')
  then
   MkDir('C:\NoktaV3\ELAB');

  datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ELAB\ELABSonuclar.xml';

  lvGetTestResult := (datalar.Lab as ElabService.eLabPortType).GetTestResultWithDateRange(lvGetTestResultWithDateRangeRequest);

//  lvRIO := THTTPRIO.Create(nil);
//  lvGetTestResult :=
 //   GeteLabPortType(True, '', datalar.Lab).GetTestResultWithDateRange(lvGetTestResultWithDateRangeRequest);

  progres.Properties.Max := length(lvGetTestResult.GetTestResultWithDateRangeResult);
  progres.Position := 0;

  for i := 0 to length(lvGetTestResult.GetTestResultWithDateRangeResult)-1 do
  begin
      Application.ProcessMessages;
      tc := lvGetTestResult.GetTestResultWithDateRangeResult[i].PatientInfo.TCKNo;
      if tc = '' then Continue;
      dosyaNo := '0';
      gelisNo := '0';
      id := '0';
      durum := false;

      if Dataset.Locate('TCKIMLIKNO',tc,[]) = True
      then begin
        dosyaNO := Dataset.FieldByName('dosyaNo').AsString;
        gelisNo := Dataset.FieldByName('gelisNo').AsString;
        id := Dataset.FieldByName('SIRANO').AsString;
        ornekdNoyaz(id,lvGetTestResult.GetTestResultWithDateRangeResult[i].PatientInfo.BarcodeNo);
        SonucYaz(lvGetTestResult.GetTestResultWithDateRangeResult[i],0);
        ornekdurumyaz('Sonuç Alýndý',id);
      end;

      progres.Position := progres.Position + 1;
  end;

end;




procedure SonucAlBarkod(gridAktif : TcxGridDBTableView ; Log : Tcxmemo ; progres :TcxProgressBar);
var
  lvRIO: THTTPRIO;
  lvGetTestResultWithDateRangeRequest : GetTestResultWithBarcodeNoRequest;
  lvGetTestResult : GetTestResultWithBarcodeNoResponse;
  i,row,ii : integer;
  min ,max,_F_ ,testKod ,sql ,dosyaNo , gelisNo , tc ,id, kayitTip ,sm, ss , hasta : string;
  durum : boolean;
  barkods : Array_Of_string;
  StringArray: TArray<string>;
  OrnekNo_Plazma,OrnekNo_Serum ,barkodG,barkodC ,OrnekNo_TamKan : string;


procedure SonucYaz(pr :  array of PatientResults ; c  : integer);
var
 x,ix : integer;
 sonuc ,markerSonuc, kod2 : string;
 ado : TADOQuery;
 Sonuclar : PatientResults;
begin

  for Sonuclar in pr do
  begin

      for x := 0 to length(sonuclar.TestList) - 1 do
      begin
          _F_ := '';

          //testKod := KodEslestir(sonuclar.TestList[x].TestNo ,_F_);
          testKod := KodEslestirNormalDeger(sonuclar.TestList[x].TestNo,'',min,max,_F_);

          if testKod <> ''
          Then Begin
             sonuclar.TestList[x].Result := StringReplace(sonuclar.TestList[x].Result,'Poz','POZ',[rfReplaceAll]);
             sonuclar.TestList[x].Result := StringReplace(sonuclar.TestList[x].Result,'Neg','NEG',[rfReplaceAll]);
             sonuclar.TestList[x].Result  := StringReplace(sonuclar.TestList[x].Result,',','.',[rfReplaceAll]);

         //    sonuclar[x].SonucAciklama := StringReplace(sonuclar[x].SonucAciklama,'Neg','NEG',[rfReplaceAll]);
         //    sonuclar[x].SonucAciklama := StringReplace(sonuclar[x].SonucAciklama,'Poz','POZ',[rfReplaceAll]);

             if (pos('NEG',sonuclar.TestList[x].Result) > 0)
             Then markerSonuc := '-1'
             Else
             if (pos('POZ',sonuclar.TestList[x].Result) > 0)
             Then markerSonuc := '1'
             Else
             if (pos('NEG',sonuclar.TestList[x].Note) > 0)
             Then markerSonuc := '-1'
             Else
             if (pos('POZ',sonuclar.TestList[x].Note) > 0)
             Then markerSonuc := '1'
             Else sonuc := sonuclar.TestList[x].Result;

             try
               sql := 'update hareketler set gd = dbo.fn_gecerliKarakterRakam(' + QuotedStr(sonuc) + ')' +
                      ',islemAciklamasi = dbo.fn_gecerliKarakterRakam(' + QuotedStr(sonuc) + ')' +
                      ',MarkerGD = ' + QuotedStr(markerSonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                      QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo + ' and Tip1 = ' + QuotedStr(_F_) ;
               datalar.QueryExec(ado,sql);

             except

               sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                       QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo + ' and Tip1 = ' + QuotedStr(_F_) ;
               datalar.QueryExec(sql);
             (*
               Log.Add('**************HATA : ' + sonuclar1[0].TestSonuclariGenel[0].ORNEKNO +'-'+
               sonuclar[x].TestID + '-' + sonuclar[x].TestGrupAdi
               + '-' +sonuclar[x].TestAdi
               + '-' + sonuclar[x].TestParametreAdi
               +'-'+ sonuclar[x].Sonuc);
               *)
             end;
          End;

          Log.lines.Add(sonuclar.PatientInfo.TCKNo + ' - ' +
                        sonuclar.PatientInfo.name_ + ' - ' + sonuclar.PatientInfo.Surname + ' - ' +
                        _F_+ ' - ' +
                        sonuclar.TestList[x].TestNo  + '-' +
                        sonuclar.TestList[x].TestName + '-' +
                        sonuclar.TestList[x].Result);

      end;
  end;
end;

begin


  lvGetTestResultWithDateRangeRequest := GetTestResultWithBarcodeNoRequest.Create;

  lvGetTestResultWithDateRangeRequest.Login := Login.Create;
  lvGetTestResultWithDateRangeRequest.Login.UserName := datalar._labusername; //'user';
  lvGetTestResultWithDateRangeRequest.Login.PassWord := datalar._labsifre; //'12345';


  datalar.Lab.URL := datalar._laburl;

  if not DirectoryExists('C:\NoktaV3\ELAB')
  then
   MkDir('C:\NoktaV3\ELAB');




  progres.Properties.Max := gridAktif.Controller.SelectedRowCount;
  progres.Position := 0;

   for row := 0 to gridAktif.Controller.SelectedRowCount - 1 do
   begin
       sleep(1000);
       Application.ProcessMessages;
       kayitTip := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[row].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));

        if  (kayitTip = 'Gönderildi')
        Then Begin
           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[row].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[row].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[row].RecordIndex,gridAktif.DataController.GetItemByFieldName('sirano').Index);

           hasta := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[row].RecordIndex,gridAktif.DataController.GetItemByFieldName('ADSOYAD').Index);

           barkodG := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[row].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index));
           barkodC := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[row].RecordIndex,gridAktif.DataController.GetItemByFieldName('CikisOrnekNo').Index));

           OrnekNo_TamKan := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[row].RecordIndex,gridAktif.DataController.GetItemByFieldName('OrnekNo_TamKan').Index));

           OrnekNo_Plazma := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[row].RecordIndex,gridAktif.DataController.GetItemByFieldName('OrnekNo_Plazma').Index));

           OrnekNo_Serum := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[row].RecordIndex,gridAktif.DataController.GetItemByFieldName('OrnekNo_Serum').Index));


           datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ELAB\ELABSonuc_' + hasta + '.xml';

        //   StringArray := TArray<string>.Create(barkodG,barkodC,OrnekNo_TamKan);


           ii := 0;
           if barkodG <> ''
           then begin
             inc(ii);
             SetLength(barkods,ii);
             barkods[ii-1] := barkodG;
           end;

           if barkodC <> ''
           then begin
             inc(ii);
             SetLength(barkods,ii);
             barkods[ii-1] := barkodC;
           end;

           if OrnekNo_TamKan <> ''
           then begin
             inc(ii);
             SetLength(barkods,ii);
             barkods[ii-1] := OrnekNo_TamKan;
           end;

            if OrnekNo_Plazma <> ''
           then begin
             inc(ii);
             SetLength(barkods,ii);
             barkods[ii-1] := OrnekNo_Plazma;
           end;

           if OrnekNo_Serum <> ''
           then begin
             inc(ii);
             SetLength(barkods,ii);
             barkods[ii-1] := OrnekNo_Serum;
           end;

           lvGetTestResultWithDateRangeRequest.BarcodeNo := barkods;
           try
             lvGetTestResult := (datalar.Lab as ElabService.eLabPortType).GetTestResultWithBarcodeNo(lvGetTestResultWithDateRangeRequest);

             SonucYaz(lvGetTestResult.GetTestResultWithBarcodeNoResult,0);

           except on e : Exception do
               begin
                 sm := e.Message;
                 ss := 'Hata';
               end;
           end;

        end;
        progres.Position := progres.Position + 1;

   end;

end;


end.

