unit TenayBIOLAB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,kadirType,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,DateUtils,cxProgressBar,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,TenayENA,cxGridDBTableView, cxMemo,
  data_modul,SQLMemMain;

 (*
  procedure TenaySonucAlENA(_dosyaNo,_gelisNo,_RefId : string ;
                            gridAktif : TAdvStringGrid ; txtLog : Tmemo ; progres :TsGauge ; Ref : boolean);
   *)
  procedure TenaySonucAlTCdenBIOLAB(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);

  function OrderBIOLAB(dosyaNo : string ; gelis : string ; Field : string = '') : TenayENA.Order;
  procedure TenayOrderKaydetBIOLAB(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  procedure ornekdurumyaz(durum,id,refId : string);

//  procedure BarkodOlustur(Liste : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
//  procedure BarkodYazdir(Liste : TcxGridDBTableView ; memData: TSQLMemTable ; txtLog : Tcxmemo ; progres :TcxProgressBar);

implementation


var
   HTIMNT : TenayENA.Order;
   KurumMNT : TenayENA.KurumBilgileri;
   GelisMNT : TenayENA.Gelis;
   istekMNT : TenayENA.Tetkik;
   isteklerMNT : TenayENA.Array_Of_Tetkik;
   doktorMNT : TenayENA.Doktor;
   HTICvpMNT : TenayENA.HastakaydetCevap;

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

 (*
procedure BarkodYazdir(Liste : TcxGridDBTableView ; memData: TSQLMemTable ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
 I , x  : integer;
 t : boolean;
 dosyaNo,gelisNo,ornekNo ,CikisornekNo,OrnekNo_Plazma,OrnekNo_Serum,OrnekNo_TamKan ,Hasta ,id: string;
 DatasetKadir : TDataSetKadir;
begin
   memData.Active := false;
   memData.EmptyTable;
   memData.Active := True;

   for x := 0 to Liste.Controller.SelectedRowCount - 1 do
   begin
      Application.ProcessMessages;

      dosyaNo := Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
      gelisNo := Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('gelisNo').Index);
      ornekNo := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('ornekNo').Index));
      CikisornekNo := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('CikisornekNo').Index));
      OrnekNo_Plazma := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('OrnekNo_Plazma').Index));
      OrnekNo_Serum := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('OrnekNo_Serum').Index));
      OrnekNo_TamKan := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('OrnekNo_TamKan').Index));
      Hasta := Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('ADSOYAD').Index);
      id := Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('SIRANO').Index);


      memData.Append;
      memData.FieldByName('dosyaNo').AsString := dosyaNo;
      memData.FieldByName('gelisNo').AsString := gelisNo;
      memData.FieldByName('ornekNo').AsString :=
            ifThen(ornekNo = '',dosyaNo + gelisNo,ornekNo);

      memData.FieldByName('CikisornekNo').AsString := CikisornekNo;
      memData.FieldByName('SIRANO').AsString := id;
      memData.FieldByName('TC').AsString := OrnekNo_Plazma;
      memData.FieldByName('hasta').AsString := Hasta;
      memData.FieldByName('OrnekNo_Plazma').AsString := OrnekNo_Plazma;
      memData.FieldByName('OrnekNo_Serum').AsString := OrnekNo_Serum;
      memData.FieldByName('OrnekNo_TamKan').AsString := OrnekNo_TamKan;
      memData.Post

  End;

    DatasetKadir.Dataset0 := memData;
    PrintYap('230','\Barkod Bas',intTostr(TagfrmLabEntegrasyon),DatasetKadir);

end;

procedure BarkodOlustur(Liste : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  i , j , r , x ,barkod: integer;
  p : TPoint;
  dosyaNo,gelisNo,sql,GC,ss,ornekNo ,CikisornekNo,OrnekNo_Plazma,OrnekNo_Serum,OrnekNo_TamKan ,
   id,_F_,testKod,min,max,sonuc,sonucA,sm,Hasta,kayitTip : string;
  ado,adoB : TADOQuery;
  t : boolean;
  Ornekler : array of string;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;
    adoB := TADOQuery.Create(nil);
    adoB.Connection := datalar.ADOConnection2;

    progres.Properties.Max := Liste.Controller.SelectedRowCount;
    progres.Position := 0;

  try
   for x := 0 to Liste.Controller.SelectedRowCount - 1 do
   begin
      Application.ProcessMessages;

      dosyaNo := Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
      gelisNo := Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('gelisNo').Index);
      ornekNo := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('ornekNo').Index));
      CikisornekNo := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('CikisornekNo').Index));
      OrnekNo_Plazma := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('OrnekNo_Plazma').Index));
      OrnekNo_Serum := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('OrnekNo_Serum').Index));
      OrnekNo_TamKan := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('OrnekNo_TamKan').Index));
      Hasta := Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('ADSOYAD').Index);
      id := Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('SIRANO').Index);

      kayitTip := varToStr(Liste.DataController.GetValue(
                                      Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('LabornekDurum').Index));


      if  (ornekNo = '') and (CikisornekNo = '') and (OrnekNo_TamKan = '')
          and (kayitTip = 'Yeni Kay�t')
      Then Begin
         sql := 'select top 1 barkodNo from Centro_barkodlar where durum = 0 order by barkodNo';
         datalar.QuerySelect(adoB,sql);
         i := 0;
         barkod := adoB.Fields[0].AsInteger;

         ornekNo := intToStr(barkod); // giris
         CikisornekNo := intToStr(barkod + 1); // C�k�s
         OrnekNo_TamKan := intToStr(barkod + 2);  // tam kan
         OrnekNo_Plazma := intToStr(barkod + 4);  // plazma
         OrnekNo_Serum := intToStr(barkod + 3);  // biakarbonat


         sql := 'update Hasta_gelisler set OrnekNo_Serum = ' + QuotedStr(OrnekNo_Serum) +
                ', OrnekNo_TamKan = ' + QuotedStr(OrnekNo_TamKan) +
                ', OrnekNo_Plazma = ' + QuotedStr(OrnekNo_Plazma) +
                ', OrnekNo = ' + QuotedStr(ornekNo) +
                ', CikisOrnekNo = ' + QuotedStr(CikisornekNo) +
                ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;
         datalar.QueryExec(sql);

         sql := 'update Centro_barkodlar set durum = 1,dosyaNo = ' + QuotedStr(dosyaNo) + ',gelisNo = ' + QuotedStr(gelisNo) +
                ' where barkodNo = ' + QuotedStr(intToStr(barkod));
         datalar.QueryExec(sql);

      End;
       progres.Position :=progres.Position + 1;

    End;
  finally
    ado.Free;
    adoB.Free;
  end;

end;
  *)

procedure TenayOrderKaydetBIOLAB(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
 I : integer;
 t : boolean;
 sm,ss , dosyaNo,gelisNo,id , Field , kayitTip : string;
  x , r : Integer;
Begin
      datalar.Login;
      HTIMNT := TenayENA.Order.Create;
      HTICvpMNT := TenayENA.HastakaydetCevap.Create;
      GelisMNT := TenayENA.Gelis.Create;
      doktorMNT := TenayENA.Doktor.Create;
      KurumMNT := TenayENA.KurumBilgileri.Create;

      txtLog.Lines.Clear;
      progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
      progres.Position := 0;


     if not DirectoryExists('C:\NoktaV3\BIOLAB')
     then
      MkDir('C:\NoktaV3\BIOLAB');

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
                 HTIMNT := OrderBIOLAB(dosyaNo,gelisNo,Field);

                 if HTIMNT <> nil
                 Then begin
                     KurumMNT := TenayENA.KurumBilgileri.Create;
                     KurumMNT.KullaniciAdi := datalar._labusername;
                     KurumMNT.Sifre := datalar._labsifre;
                     KurumMNT.Kodu := datalar._labkurumkod;
                     HTIMNT.KurumBilgileri := KurumMNT;
                     datalar.Lab.URL := datalar._laburl;
                     datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\BIOLAB\BIOLAB_HastaKaydet_' + dosyaNo + '_' + gelisNo;

                     try
                      HTICvpMNT := (datalar.Lab as TenayENA.TenayWebServiceSoapV4).HastaKaydet(HTIMNT);
                     except on e : Exception do
                       begin
                         sm := e.Message;
                         ss := 'Hata';
                       end;
                     end;

                     if (HTICvpMNT.Kod = '1') and (HTICvpMNT.Mesaj = '')
                     then begin
                      // ornekdurumyaz('G�nderildi',id,inttostr(HTICvpMNT.ReferansId));
                       txtLog.Lines.Add(HTIMNT.Adi+' '+HTIMNT.Soyadi + ' - ' +
                       HTIMNT.Gelis.ReferansNo + ' - ' + HTICvpMNT.Mesaj + ' ' + '��lem Ba�ar�l�');
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

                 Field := 'CikisOrnekNo';
                 HTIMNT := OrderBIOLAB(dosyaNo,gelisNo,Field);

                 if HTIMNT <> nil
                 Then begin
                     KurumMNT := TenayENA.KurumBilgileri.Create;
                     KurumMNT.KullaniciAdi := datalar._labusername;
                     KurumMNT.Sifre := datalar._labsifre;
                     KurumMNT.Kodu := datalar._labkurumkod;
                     HTIMNT.KurumBilgileri := KurumMNT;
                     datalar.Lab.URL := datalar._laburl;
                     datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\BIOLAB\BIOLAB_HastaKaydetCikis_' + dosyaNo + '_' + gelisNo;

                     try
                      HTICvpMNT := (datalar.Lab as TenayENA.TenayWebServiceSoapV4).HastaKaydet(HTIMNT);
                     except on e : Exception do
                       begin
                         sm := e.Message;
                         ss := 'Hata';
                       end;
                     end;

                     if (HTICvpMNT.Kod = '1') and (HTICvpMNT.Mesaj = '')
                     then begin
                       ornekdurumyaz('G�nderildi',id,inttostr(HTICvpMNT.ReferansId));
                       txtLog.Lines.Add(HTIMNT.Adi+' '+HTIMNT.Soyadi + ' - ' +
                       HTIMNT.Gelis.ReferansNo + ' - ' + HTICvpMNT.Mesaj + ' ' + '��lem Ba�ar�l�');
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
      datalar.HTTP_XMLDosya_Name := '';
      Progres.Visible := false;
  //    txtinfo.Caption := '.';

End;

(*
procedure TenaySonucAlENA(_dosyaNo,_gelisNo,_RefId : string ;
                            gridAktif : TAdvStringGrid ; txtLog : Tmemo ; progres :TcxProgressBar ; Ref : boolean);
var
 // Service : TenayENA.TenayWebServiceSoapMNT;
  HTSO : TenayENA.OrderQuery;
  HTSOCvp : TenayENA.HastaSorguCevap;
  KurumMNT : TenayENA.KurumBilgileri;
  I,s , testAdet , j , x : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max : string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
begin
       datalar.Login;
     //  Service := TenayENA.GetTenayWebServiceSoap(False,datalar._laburl,datalar.TenayMNT);
       HTSO := TenayENA.OrderQuery.Create;
       HTSOCvp := TenayENA.HastaSorguCevap.Create;
       KurumMNT := TenayENA.KurumBilgileri.Create;
       KurumMNT.KullaniciAdi := datalar._labusername;
       KurumMNT.Kodu := datalar._labkurumkod;
       KurumMNT.Sifre := datalar._labsifre;
       HTSO.KurumBilgileri := KurumMNT;


       datalar.Lab.URL := datalar._laburl;
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;
       txtLog.Lines.Clear;

       progres.MaxValue := gridAktif.RowCount - 2;
       progres.Progress := 0;
       Progres.Visible := true;
    //   txtinfo.Caption := 'Al�n�yor...';


       for I := 1 to gridAktif.RowCount - 2 do
       begin
         Application.ProcessMessages;
         ss := '';
         gridAktif.GetCheckBoxState(1,I,t);

         if  (t = True) and (gridAktif.Cells[8,I] = 'G�nderildi')
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
                HTSOCvp := (datalar.Lab as TenayENA.TenayWebServiceSoapV4).HastaSonucSorgula(HTSO);
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
                HTSOCvp := (datalar.Lab as TenayENA.TenayWebServiceSoapV4).HastaSonucSorgulaOrnekNo(HTSO);
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
                        sonucA := trim(StringReplace(StringReplace(SonucA,'NEGAT�F','',[rfReplaceAll]),'POZ�T�F','',[rfReplaceAll]));
                        sonucA := trim(StringReplace(StringReplace(SonucA,'D���K','',[rfReplaceAll]),'d���k','',[rfReplaceAll]));
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
                ornekdurumyaz('Sonu� Al�nd�',id,inttostr(HTSO.ReferanId));
            End else txtLog.Lines.Add(inttostr(HTSO.OrnekNo) + ' - ' + inttostr(HTSO.ReferanId) + ' - ' + HTSOCvp.Mesaj + ' - ' + datalar.TenayMNTRequest);

           End; //* chk end

       end;  // for end
       Progres.Visible := false;
    //   txtinfo.Caption := '.';

end;

*)



procedure TenaySonucAlTCdenBIOLAB(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);
var
 // Service : TenayENA.TenayWebServiceSoapMNT;
  HTSO : TenayENA.TCSonuclariQuery;
  HTSOCvp : TenayENA.TCSonuclariResult;
  _Sonuc_ :  TenayENA.OrnekSonuc;
  _tetkikSonuc_ : TenayENA.TetkikSonuc;
  KurumMNT : TenayENA.KurumBilgileri;
  I,s , testAdet , sonucAdet , j , x , Tc : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc,markerSonuc ,sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max,Field,_tc_ ,kayitTip: string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
  TTarih : TXSDateTime;
begin
  // datalar.Login;

   HTSO := TenayENA.TCSonuclariQuery.Create;
   HTSOCvp := TenayENA.TCSonuclariResult.Create;
   KurumMNT := TenayENA.KurumBilgileri.Create;
   KurumMNT.KullaniciAdi := datalar._labusername;
   KurumMNT.Kodu := datalar._labkurumkod;
   KurumMNT.Sifre := datalar._labsifre;
   HTSO.KurumBilgileri := KurumMNT;

     if not DirectoryExists('C:\NoktaV3\BIOLAB')
     then
      MkDir('C:\NoktaV3\BIOLAB');

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

        if  (kayitTip = 'G�nderildi')
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

             datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\BIOLAB\BIOLAB_SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


             try
                HTSOCvp := (datalar.Lab as TenayENA.TenayWebServiceSoapV4).TCSonuclariGetir(HTSO);
             except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
             end;


            Progres.Position := Progres.Position + 1;

            if length(HTSOCvp.Sonuclar) > 0
            Then Begin
              if (HTSOCvp.Sonuclar[0] = nil) and (length(HTSOCvp.Sonuclar) = 1)
              then  begin
                 txtLog.Lines.Add(inttostr(HTSO.TC) + ' - Sonu� Bulunamad�');
              end
              else
              begin
                for _Sonuc_ in HTSOCvp.Sonuclar do
                begin
                  txtLog.Lines.Add('Barkod : ' + _Sonuc_.Referans);
                  txtLog.Lines.Add('-----------------------------------------');

                //  Field := ReferansKontrolToField(_Sonuc_.Referans,gridAktif,I);

                  for _tetkikSonuc_ in _Sonuc_.Tetkikler do
                  begin
                      txtLog.Lines.Add(_tetkikSonuc_.Adi + ' ' + 'Test Kodu : ' +_tetkikSonuc_.Kodu + ' ' +
                      'Alt Test Kodu : ' + _tetkikSonuc_.AltTestKodu + ' - ' + ' - ' + 'Tur Id : ' + inttostr(_tetkikSonuc_.OrnekTurId) + ' - ' +
                      'Sonuc : ' + _tetkikSonuc_.Sonuc + ' - ' +  _tetkikSonuc_.onaytarihi);
                      _F_ := '';
                      testKod := KodEslestirNormalDeger( ifthen(_tetkikSonuc_.Kodu = '',_tetkikSonuc_.AltTestKodu,_tetkikSonuc_.Kodu),
                                                        inttostr(_tetkikSonuc_.OrnekTurId),min,max, _F_);

                      if testKod <> ''
                      Then Begin
                         a := _tetkikSonuc_.Aciklama;

                         sonuc := _tetkikSonuc_.Sonuc;

                         if (testKod = '907440') or
                            (testKod = '906610') or
                            (testKod = '906630') or
                            (testKod = '906660')
                         Then Begin
                             _tetkikSonuc_.Sonuc := StringReplace(_tetkikSonuc_.Sonuc,'Poz','POZ',[rfReplaceAll]);
                             _tetkikSonuc_.Sonuc := StringReplace(_tetkikSonuc_.Sonuc,'Neg','NEG',[rfReplaceAll]);
                             _tetkikSonuc_.Sonuc := StringReplace(_tetkikSonuc_.Sonuc,',','.',[rfReplaceAll]);
                             _tetkikSonuc_.Aciklama := StringReplace(_tetkikSonuc_.Aciklama,'Neg','NEG',[rfReplaceAll]);
                             _tetkikSonuc_.Aciklama := StringReplace(_tetkikSonuc_.Aciklama,'Poz','POZ',[rfReplaceAll]);

                             sonuc := _tetkikSonuc_.Sonuc;
                             markerSonuc := '0';
                             if (pos('NEG',_tetkikSonuc_.Sonuc) > 0)
                             Then markerSonuc := '-1'
                             Else
                             if (pos('POZ',_tetkikSonuc_.Sonuc) > 0)
                             Then markerSonuc := '1'
                             Else
                             if (pos('NEG',_tetkikSonuc_.Aciklama) > 0)
                             Then markerSonuc := '-1'
                             Else
                             if (pos('POZ',_tetkikSonuc_.Aciklama) > 0)
                             Then markerSonuc := '1';

                                 sql := 'update hareketler set Gd = dbo.fn_gecerliKarakterRakam(' + QuotedStr(_tetkikSonuc_.Sonuc) + ')' +
                                        ',islemAciklamasi = dbo.fn_gecerliKarakterRakam(' + QuotedStr(_tetkikSonuc_.Sonuc) + ')' +
                                        ',MarkerGD = ' + QuotedStr(markerSonuc) +
                                        ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                        ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                                 datalar.QueryExec(sql);

                         End
                         else
                         begin
                            try
                             sql := 'update hareketler set Gd = dbo.fn_gecerliKarakterRakam(' + QuotedStr(_tetkikSonuc_.Sonuc) + ')' +
                                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) +
                                      ' and gelisNO = ' + gelisNo + ' and tip1 = ' + QuotedStr(_F_);

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
                ornekdurumyaz('Sonu� Al�nd�',id,_Sonuc_.Referans);

              end;
            End //Sonuclar > 0 end
             else txtLog.Lines.Add(inttostr(HTSO.TC) + ' - ' +  HTSOCvp.SonucMesaji);

         End; //* chk end G�ndrildi
       end;  // for end Sat�rlar

end;





function OrderBIOLAB(dosyaNo : string ; gelis : string ; Field : string = '') : TenayENA.Order;
var
  sql ,tip1 : string;
  HastaTenay : TenayENA.Order;
  GelisMNT : TenayENA.Gelis;
  istekler : TenayENA.Array_Of_Tetkik;
  istek : TenayENA.Tetkik;
  ado : TADOQuery;
  i , j : integer;
  yil, ay, gun, saat, dakika, saniye, salise : word;
  ckod,kod,TurId : string;
  KanAlimZamani : TDateTime;
  DTarih,TTarih , ATarih : TXSDateTime;
begin
  OrderBIOLAB:= nil;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try

      HastaTenay := TenayENA.Order.Create;

      sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
      datalar.QuerySelect(ado,sql);

      HastaTenay.DosyaNo  := dosyaNo;
      HastaTenay.KimlikNo := ado.fieldbyname('TCKIMLIKNO').AsString;
      HastaTenay.Adi := ado.fieldbyname('HASTAADI').AsString;
      HastaTenay.Soyadi := ado.fieldbyname('HASTASOYADI').AsString;
      HastaTenay.BabaAdi := ado.fieldbyname('BABAADI').AsString;
      HastaTenay.AnneAdi := ado.fieldbyname('ANAADI').AsString;


      if (ado.fieldbyname('CINSIYETI').AsString = '0')
      Then HastaTenay.Cinsiyeti := TenayENA.Cinsiyet.Erkek
      else HastaTenay.Cinsiyeti := TenayENA.Cinsiyet.Kadin;

      DTarih := TXSDateTime.Create;
     // DateToXsdate(DTarih,ado.fieldbyname('DOGUMTARIHI').Value);
      Dtarih.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
      Dtarih.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
      Dtarih.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));
      HastaTenay.DogumTarihi := DTarih;


      sql := 'select BHDAT,' + Field + ',SIRANO , KanAlimZamani ' +
             ' from Hasta_gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
      datalar.QuerySelect(ado,sql);

      KanAlimZamani := ado.fieldbyname('KanAlimZamani').AsDateTime;

      HastaTenay.OrnekNo := 0;

      if 1 = 1
      then  begin
          GelisMNT := TenayENA.Gelis.Create;
          GelisMNT.ReferansNo := ado.fieldbyname(Field).AsString;
          GelisMNT.OrnekNo := 0;

          TTarih := TXSDateTime.Create;
          DateToXsdateTime(TTarih,KanAlimZamani);

          GelisMNT.Tarih := TTarih;

          if Field = '' then Field := 'OrnekNo';

          if Field = 'OrnekNo'
          then
           tip1 := 'G'
          else
           tip1 := 'C';

          sql := 'select h.name1,h.Tarih,l.islemKodu from hareketlerLab h ' +
                 ' join labtestler_firma l on l.butKodu = h.code and h.tip1 = l.tip and l.LabID = ' + QuotedStr(datalar._labID) +
                 ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis +
                 ' and charindex(''.'',h.code) = 0 and h.tip1 = l.tip and h.onay = 1 ' +
                 ' and h.tip1 = ' + QuotedStr(tip1);

          datalar.QuerySelect(ado,sql);
          j := ado.RecordCount;
          SetLength(istekler,j);

          while not ado.Eof do
          begin
            istek := TenayENA.Tetkik.Create;
            kod := ado.fieldbyname('islemKodu').AsString;//KodEslestirKod(ado.fieldbyname('islemKodu').AsString,ckod,TurId);
            istek.Kodu := kod;
            istek.Adi := ado.fieldbyname('NAME1').AsString;
            istek.KapId := 0;
          //  istek.OrnekTurId := ifThen(TurId = '','0',TurId);
            ATarih := TXSDateTime.Create;

            DecodeDateTime(ado.fieldbyname('Tarih').AsDateTime, yil, ay, gun, saat, dakika, saniye, salise);


            ATarih.Year := yil;
            ATarih.Month := ay;
            ATarih.Day := gun;
            ATarih.Hour := saat;
            ATarih.Minute := dakika;
            ATarih.Second := saniye;


            istek.AlindigiTarih := ATarih;
            istekler[i] := istek;
            i := i + 1;

            ado.Next;
          end;


         GelisMNT.Tetkikler := istekler;
         HastaTenay.Gelis := GelisMNT;
         OrderBIOLAB := HastaTenay;
      end
      else
        OrderBIOLAB := nil;

  finally
    ado.Free;
  end;


end;


end.
