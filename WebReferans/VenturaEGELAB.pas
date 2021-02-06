unit VenturaEGELAB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,kadirType,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio, AdvGrid, DateUtils,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,cxGridDBTableView, cxMemo,cxProgressBar ,
  data_modul,SQLMemMain, VenturaServiceEGELAB;
 (*
  procedure TenaySonucAlENA(_dosyaNo,_gelisNo,_RefId : string ;
                            gridAktif : TAdvStringGrid ; txtLog : Tmemo ; progres :TsGauge ; Ref : boolean);
 *)
  procedure TenaySonucAlTCdenENA(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);

 // function OrderENA(dosyaNo : string ; gelis : string ; Field : string = '') : VenturaServiceEGELAB.Order;

  procedure TenayOrderKaydetEGELAB(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  procedure ornekdurumyaz(durum,id,refId : string);
//  function ReferansKontrolToField(Referans : String; gridAktif : TAdvStringGrid ; Row : integer) : String;
  procedure BarkodOlustur(Liste : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  procedure BarkodYazdir(Liste : TcxGridDBTableView ; memData: TSQLMemTable ; txtLog : Tcxmemo ; progres :TcxProgressBar);



implementation


var
   HTIMNT : VenturaServiceEGELAB.entegrec;
 (*  KurumEGELAB : VenturaServiceEGELAB. //KurumBilgileri;
   GelisEGELAB : VenturaServiceEGELAB.Gelis;
   istekEGELAB : VenturaServiceEGELAB.Tetkik;
   isteklerEGELAB : VenturaServiceEGELAB.Array_Of_Tetkik;
   doktorEGELAB : VenturaServiceEGELAB.Doktor;
   HTICvpEGELAB : VenturaServiceEGELAB.HastakaydetCevap;
*)
procedure ornekdurumyaz(durum,id,refId : string);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   sql := 'update gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ',LabRefId = ' + QuotedStr(refId) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(ado,sql);

   ado.Free;
end;


(*
Procedure TenayOrderKaydetEGELAB(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
 I : integer;
 t : boolean;
 sm,ss , dosyaNo,gelisNo,id , Field , kayitTip : string;
 x , r : Integer;
Begin


      datalar.Login;
      HTIMNT     := VenturaServiceEGELAB.EntegRec.Create;
  //    HTICvpMNT  := VenturaServiceEGELAB.HastakaydetCevap.Create;
   //   GelisMNT   := VenturaServiceEGELAB.      // gelis.create;
   //   doktorMNT  := VenturaServiceEGELAB.DoktorBilgi.Create;
   //   KurumEGELAB   := VenturaServiceEGELAB.   ///KurumBilgileri.Create;

      txtLog.Lines.Clear;
      progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
      progres.Position := 0;

     if not DirectoryExists('C:\NoktaV3\EGELAB')
                                           then
                                            MkDir('C:\NoktaV3\EGELAB');

      datalar.HTTP_XMLDosya_Name := '';

   for x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
   begin
       sleep(1000);
       Application.ProcessMessages;
       kayitTip := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.
                                      DataController.GetItemByFieldName('LabornekDurum').Index));

        if  (kayitTip = 'Yeni Kayýt')
        Then Begin
           dosyaNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.
                                      DataController.GetItemByFieldName('dosyaNo').Index);
           gelisNo := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.
                                      DataController.GetItemByFieldName('gelisNo').Index);
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.
                                      DataController.GetItemByFieldName('SIRANO').Index);

                 Field := 'OrnekNo';
               //  HTIMNT := OrderENA(dosyaNo,gelisNo,Field);

            if HTIMNT <> nil
                 Then begin
                    KurumEGELAB := VenturaServiceEGELAB.KurumBilgileri.Create;
                       KurumEGELAB.KullaniciAdi := datalar._labusername;
                       KurumEGELAB.Sifre := datalar._labsifre;
                       KurumEGELAB.Kodu := datalar._labkurumkod;
                       HTIMNT.KurumBilgileri := KurumEGELAB;
                       datalar.Lab.URL := datalar._laburl;

                     if HTIMNT.Gelis.ReferansNo = '' then
                     datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\EGELAB\HastaKaydet_' + dosyaNo + '_' + gelisNo;

                     try
                      HTICvpMNT := (datalar.Lab as VenturaServiceEGELAB.TenayWebServiceSoapV4).HastaKaydet(HTIMNT);
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

            End;  // end of if HTIMNT
      End; // for end
      datalar.HTTP_XMLDosya_Name := '';
      Progres.Visible := false;
      txtinfo.Caption := '.';

End;
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

procedure TenaySonucAlTCdenENA(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);
var


  _Sonuc_ :  OrnekSonuc;
  _tetkikSonuc_ : TetkikSonuc;
  KurumEGELAB : KurumBilgileri;
  I,s , testAdet , sonucAdet , j , x , Tc : integer;
  dosyaNo,gelisNo,testKod ,id, sm , _F_ ,sql , sonuc ,markersonuc , sonucA, a,b,c,t1,t2,onaytarihi,ss ,min ,max,Field,_tc_ ,kayitTip: string;
  ado : TADOQuery;
  t : boolean;
  Http : THTTPRIO;
  TTarih : TXSDateTime;
begin
   // datalar.Login;

   HTSO := TCSonuclariQuery.Create;
   HTSOCvp := TCSonuclariResult.Create;
   KurumEGELAB := KurumBilgileri.Create;
   KurumEGELAB.KullaniciAdi := datalar._labusername;
   KurumEGELAB.Kodu := datalar._labkurumkod;
   KurumEGELAB.Sifre := datalar._labsifre;
   HTSO.KurumBilgileri := KurumEGELAB;

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
           id := gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('GELISID').Index);

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

             datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\ENA\SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


             try
                HTSOCvp := (datalar.Lab as VenturaServiceEGELAB.TenayWebServiceSoapV4).TCSonuclariGetir(HTSO);
             except on e : Exception do
                 begin
                   sm := e.Message;
                   ss := 'Hata';
                 end;
             end;


            Progres.Position := Progres.Position + 1;

            if length(HTSOCvp.Sonuclar) > 0
            Then Begin
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

                             markersonuc := '0';

                             if (pos('NEG',_tetkikSonuc_.Sonuc) > 0)
                             Then markersonuc := '-1'
                             Else
                             if (pos('POZ',_tetkikSonuc_.Sonuc) > 0)
                             Then markersonuc := '1'
                             Else
                             if (pos('NEG',_tetkikSonuc_.Aciklama) > 0)
                             Then markersonuc := '-1'
                             Else
                             if (pos('POZ',_tetkikSonuc_.Aciklama) > 0)
                             Then markersonuc := '1';


                              sql := 'update hareketler set Gd = dbo.fn_gecersizKarakterHarf(' + QuotedStr(_tetkikSonuc_.Sonuc) + ')' +
                                      ',MarkerGD = ' + QuotedStr(markerSonuc) +
                                      ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                                      ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

                             datalar.QueryExec(sql);

                         End
                         else
                         begin
                            try
                             sql := 'update hareketler set Gd = dbo.fn_gecersizKarakterHarf(' + _tetkikSonuc_.Sonuc + ')' +
                                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) +
                                      ' and gelisNO = ' + gelisNo + ' and tip1 = ' + QuotedStr(_F_);

                             datalar.QueryExec(sql);
                            except
                               sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(_tetkikSonuc_.Sonuc) +
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
       end;  // for end Satýrlar

end;



end.
