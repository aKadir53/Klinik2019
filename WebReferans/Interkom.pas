unit Interkom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,DateUtils,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,InterKomService,
  data_modul,cxGridDBTableView, cxMemo,cxProgressBar,DBClient;


  procedure ornekdurumyaz(durum,id,refId : string);

  procedure SonucAl(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  procedure HastaListeAl(Tarih : string ; gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);


type
  TInterkomSonuc = Record
   testKodu : string;
   testKodu2 : string;
   sonuc: string;
   ornekNo: string;
   tip: string;
   mesaj: string;
   dosyaNo : string;
   gelisNo: string;
   siraNo : string;
  End;

  Sonuclar = Array of TInterkomSonuc;

 implementation

var
   gndref,gndrefs,tstref,hstref,glmref,fromglstar,toglstar,HataMesaji: string;
   XML : TXMLData;
   XMLString , sm , hata ,dosyaNo,gelisNo,id , sonuc ,testKod , _F_ ,sql , msj : string;
   I, x  : integer;
   t : boolean;
   ado : TADOQuery;
   Http : ThttpRio;

procedure LabBeforeExecute(const MethodName: string;SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  met : string;
begin
   met := MethodName;
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));

   m := TStringList.Create;
   try
   //  memo.Parent := AnaForm;
     m.Add(FormatXMLData(R));
     memo.Lines.SaveToFile(datalar.HTTP_XMLDosya_Name + '.XML');
   finally
     m.Free;
   end;
end;

procedure ornekdurumyaz(durum,id,refId : string);
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



procedure SonucAl(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  sonucDeger , KayitTip , barkodG , barkodC ,SonucListesi : string;
  SonucList , SonuclarList : TStringList;
  test : TInterkomSonuc;
  testler : Sonuclar;
  ado : TADOQuery;

procedure SonucYaz(dataset : Sonuclar ; id : string);
var
  x : integer;
  sonucAciklama,min ,max,Field: string;
  sonuc : TInterkomSonuc;
begin

   //txtLog.Lines.Clear;

  for sonuc in dataset do
    begin
     Application.ProcessMessages;
     try

        _F_ := '';
        testKod := KodEslestirNormalDeger(sonuc.testKodu,'',min,max,_F_);

        _F_ := sonuc.tip;

        txtLog.Lines.Add('Barkod : ' + sonuc.ornekNo + ' : ' +
                         'Test Kodu : ' + sonuc.testKodu + ' ' +
                         'Sonuc : ' + sonuc.sonuc + ' ' +
                         'Tip : ' + sonuc.tip);


      if testKod <> ''
      Then Begin
         sonucDeger := sonuc.sonuc;
         sonucDeger := StringReplace(sonucDeger,'Poz','POZ',[rfReplaceAll]);
         sonucDeger := StringReplace(sonucDeger,'Neg','NEG',[rfReplaceAll]);

         if (pos('NEG',sonucDeger) > 0)
         Then sonucDeger := '-1'
         Else
         if (pos('POZ',sonucDeger) > 0)
         Then sonucDeger := '1'
         Else
         sonucDeger := sonuc.sonuc;

         if (testKod = '907440') or
            (testKod = '906610') or
            (testKod = '906630') or
            (testKod = '906660')
         Then Begin
             sql := 'update hareketler set Gd = ' + sonucDeger +
                    ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                    ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
             datalar.QueryExec(sql);
         End
         else
         begin

              try
               sql := 'update hareketler set Gd = ' + sonucDeger +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                      ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

               datalar.QueryExec(sql);


              except on e : exception do
                begin
                 sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucDeger) +
                        ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                        ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                 datalar.QueryExec(sql);
                end;
              end;
         end;
      End;

     except on ee : Exception do
      begin
         txtLog.Lines.Add('Barkod : ' + sonuc.ornekNo + ' : ' +
                         'Test Kodu : ' + sonuc.testKodu + ' ' +
                         'Sonuc : ' + sonuc.sonuc + ' Hata : ' + ee.Message);
     end;
     end;
    end; // test for end
    ornekdurumyaz('Sonuç Alýndý',id,'');

end;


function strToSonuclar (SonucListesi , Tip: string) : sonuclar;
var
 ss : string;
begin
   SonuclarList := TStringList.Create;
   try
      ExtractStrings(['~'],[' '],PWideChar(SonucListesi),SonuclarList);
      //SplitString('~',SonucListesi);

      SetLength(testler,SonuclarList.Count);

      for I := 0 to SonuclarList.Count - 1 do
      begin
        SonucList := TStringList.Create;
        try
         ss := StringReplace(SonuclarList[I],' ','',[rfReplaceAll]);
         ExtractStrings(['|'],[' '], PWideChar(
         StringReplace(StringReplace(ss,'||','|0|',[rfReplaceAll]),'||','|0|',[rfReplaceAll])), SonucList);

         if sonucList.Count = 1 then Continue;

         test.testKodu := SonucList[0];

         test.sonuc := SonucList[1];
         if Trim(SonucList[5]) = '3'
         Then
          test.tip := 'C'
         Else
          test.tip := 'G';

         test.tip := tip;

         test.ornekNo := barkodG;
         test.dosyaNo := dosyaNo;
         test.gelisNo := gelisNo;
         testler[I] := test;
        finally
          SonucList.free;
        end;

      end;
      strToSonuclar := testler;
    finally
      SonuclarList.free;
    end;
end;


begin

   if not DirectoryExists('C:\NoktaV3\Interkom')
   then
     MkDir('C:\NoktaV3\Interkom');

   datalar.Lab.URL := datalar._laburl;

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

            barkodG := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index);
            barkodC := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('CikisOrnekNo').Index);


            if barkodG <> ''
            then begin
              datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Interkom\' + barkodG + '_Interkom.XML';

              try
               SonucListesi := (datalar.Lab as Service1Soap).TetkikSorgula(datalar._labkurumkod,datalar._labsifre,barkodG);
              except on e : Exception do
               begin
                 sm := e.Message;
                 txtLog.Lines.Add(sm);
               end;
              end;

              if copy(SonucListesi,1,2) = '00'
              then begin
                  testler := strToSonuclar(SonucListesi,'G');
                  SonucYaz(testler,id);
                  Application.ProcessMessages;
              end;
            end;

            if barkodC <> ''
            then begin
                datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Interkom\' + barkodC + '_Interkom.XML';
                try
                 SonucListesi := (datalar.Lab as Service1Soap).TetkikSorgula(datalar._labkurumkod,datalar._labsifre,barkodC);
                except on e : Exception do
                 begin
                   sm := e.Message;
                   txtLog.Lines.Add(sm);
                 end;
                end;

                if copy(SonucListesi,1,2) = '00'
                then begin
                    testler := strToSonuclar(SonucListesi,'C');
                    SonucYaz(testler,id);
                    Application.ProcessMessages;
                end;
            End;

        End;
        Progres.Position := Progres.Position + 1;
  End;  // for end


end;



procedure HastaListeAl(Tarih : string ; gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  sonucDeger , KayitTip , barkodG , barkodC ,SonucListesi : string;
  SonucList , SonuclarList : TStringList;
  test : TInterkomSonuc;
  testler : Sonuclar;
  ado : TADOQuery;

procedure SonucYaz(dataset : Sonuclar ; id : string);
var
  x : integer;
  sonucAciklama,min ,max,Field: string;
  sonuc : TInterkomSonuc;
begin

   //txtLog.Lines.Clear;

  for sonuc in dataset do
    begin
     Application.ProcessMessages;
     try

        _F_ := '';
        testKod := KodEslestirNormalDeger(sonuc.testKodu,'',min,max,_F_);

        _F_ := sonuc.tip;

        txtLog.Lines.Add('Barkod : ' + sonuc.ornekNo + ' : ' +
                         'Test Kodu : ' + sonuc.testKodu + ' ' +
                         'Sonuc : ' + sonuc.sonuc + ' ' +
                         'Tip : ' + sonuc.tip);


      if testKod <> ''
      Then Begin
         sonucDeger := sonuc.sonuc;
         sonucDeger := StringReplace(sonucDeger,'Poz','POZ',[rfReplaceAll]);
         sonucDeger := StringReplace(sonucDeger,'Neg','NEG',[rfReplaceAll]);

         if (pos('NEG',sonucDeger) > 0)
         Then sonucDeger := '-1'
         Else
         if (pos('POZ',sonucDeger) > 0)
         Then sonucDeger := '1'
         Else
         sonucDeger := sonuc.sonuc;

         if (testKod = '907440') or
            (testKod = '906610') or
            (testKod = '906630') or
            (testKod = '906660')
         Then Begin
             sql := 'update hareketler set Gd = ' + sonucDeger +
                    ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                    ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
             datalar.QueryExec(sql);
         End
         else
         begin

              try
               sql := 'update hareketler set Gd = ' + sonucDeger +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                      ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

               datalar.QueryExec(sql);


              except on e : exception do
                begin
                 sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucDeger) +
                        ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                        ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
                 datalar.QueryExec(sql);
                end;
              end;
         end;
      End;

     except on ee : Exception do
      begin
         txtLog.Lines.Add('Barkod : ' + sonuc.ornekNo + ' : ' +
                         'Test Kodu : ' + sonuc.testKodu + ' ' +
                         'Sonuc : ' + sonuc.sonuc + ' Hata : ' + ee.Message);
     end;
     end;
    end; // test for end
    ornekdurumyaz('Sonuç Alýndý',id,'');

end;


begin

   if not DirectoryExists('C:\NoktaV3\Interkom')
   then
     MkDir('C:\NoktaV3\Interkom');

   datalar.Lab.URL := datalar._laburl;

   progres.Properties.Max := gridAktif.Controller.SelectedRowCount;
   progres.Position := 0;

   datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Interkom\' + Tarih + '_HastaListe_Interkom.XML';

    try
     SonucListesi := (datalar.Lab as Service1Soap).HastaListesi(datalar._labkurumkod,datalar._labsifre,Tarih);
    except on e : Exception do
     begin
       sm := e.Message;
     end;
    end;


   for x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
   begin

  End;  // for end


end;





end.
