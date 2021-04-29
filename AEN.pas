unit AEN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,kadirType,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,DateUtils,cxProgressBar,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,AEN1,cxGridDBTableView, cxMemo,
  data_modul,SQLMemMain;


  procedure AENSonucAl(_dosyaNo,_gelisNo: string ; Trh1,Trh2 : TDateTime ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);


  procedure ornekdurumyaz(durum,id,refId : string);

implementation


var
  sql : string;

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




procedure AENSonucAl(_dosyaNo,_gelisNo : string ; Trh1,Trh2 : TDateTime ;
                             gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  Kullanici : C_LoginSecurity;
  Cevap : C_GeneralResult;
  ado : TADOQuery;
  I ,TestAdet , x : integer;
  ss , dosyaNo, gelisNo, id,idC, ornekNo,ornekNoC, sm , _F_  , testKod , kod , _kod_ ,tc,
  min , max , sonuc , markerSonuc, sonucA ,sql ,kayitTip : string;
  t : boolean;
  d1,d2 : TXSDateTime;

procedure sonucyaz(Cvp : C_GeneralResult);
  var
    x,j,m  : integer;
  begin

         if not Assigned(Cvp.Result_) then exit;

         for j := 0 to length(Cvp.Result_) - 1 do
         begin
           if Cvp.Result_[j].Appointment_Type = '5'
           then Begin
              for m := 0 to length(Cvp.Result_[j].LabResult) - 1 do
              begin
                kod := KodEslestirNormalDeger(Cvp.Result_[j].LabResult[m].TCode,'',min,max,_F_);

                txtLog.Lines.Add(Cvp.Result_[j].PatDesc + '-' + Cvp.Result_[j].LabResult[m].TCode + '-' +
                                 Cvp.Result_[j].LabResult[m].MDesc + '-' + Cvp.Result_[j].LabResult[m].Result_Value + '-' + Cvp.Result_[j].App_IO_Type);

                if kod <> ''
                Then Begin
               //   a := HTSOCvp.Testler[x].Aciklama;

                   Cvp.Result_[j].LabResult[m].Result_Value := StringReplace(Cvp.Result_[j].LabResult[m].Result_Value,'Poz','POZ',[rfReplaceAll]);
                   Cvp.Result_[j].LabResult[m].Result_Value := StringReplace(Cvp.Result_[j].LabResult[m].Result_Value,'Neg','NEG',[rfReplaceAll]);
                   Cvp.Result_[j].LabResult[m].Result_Value := StringReplace(Cvp.Result_[j].LabResult[m].Result_Value,',','.',[rfReplaceAll]);

                   Cvp.Result_[j].LabResult[m].Result_Value := StringReplace(Cvp.Result_[j].LabResult[m].Result_Value,'-','',[rfReplaceAll]);

                //   HTSOCvp.Testler[x].Aciklama := StringReplace(HTSOCvp.Testler[x].Aciklama,'Neg','NEG',[rfReplaceAll]);
                //   HTSOCvp.Testler[x].Aciklama := StringReplace(HTSOCvp.Testler[x].Aciklama,'Poz','POZ',[rfReplaceAll]);



                   if (kod = '907440') or
                      (kod = '906610') or
                      (kod = '906630') or
                      (kod = '906660')
                   then begin
                     markerSonuc := '0';
                       Cvp.Result_[j].LabResult[m].Result_Text := StringReplace(Cvp.Result_[j].LabResult[m].Result_Text,'Poz','POZ',[rfReplaceAll]);
                       Cvp.Result_[j].LabResult[m].Result_Text := StringReplace(Cvp.Result_[j].LabResult[m].Result_Text,'Neg','NEG',[rfReplaceAll]);
                       Cvp.Result_[j].LabResult[m].Result_Text := StringReplace(Cvp.Result_[j].LabResult[m].Result_Text,',','.',[rfReplaceAll]);

                       if (pos('NEG',Cvp.Result_[j].LabResult[m].Result_Text) > 0)
                       Then markerSonuc := '-1'
                       Else
                       if (pos('POZ',Cvp.Result_[j].LabResult[m].Result_Text) > 0)
                       Then markerSonuc := '1'
                       Else
                       if (pos('NEG',Cvp.Result_[j].LabResult[m].Result_Text) > 0)
                       Then markerSonuc := '-1'
                       Else
                       if (pos('POZ',Cvp.Result_[j].LabResult[m].Result_Text) > 0)
                       Then markerSonuc := '1';

                     if Cvp.Result_[j].LabResult[m].Result_Value  = ''
                     then begin
                       sonuc := QuotedStr(Cvp.Result_[j].LabResult[m].Result_Text);
                     end
                     else sonuc := QuotedStr(Cvp.Result_[j].LabResult[m].Result_Value);

                   end
                   else
                   sonuc := Cvp.Result_[j].LabResult[m].Result_Value;


                   if Cvp.Result_[j].App_IO_Type = '0' then _F_ := 'G' else _F_ := 'C';

                  try
                   sql := 'update hareketler set gd = dbo.fn_gecerliKarakterRakam(' + sonuc + ')' +
                            ',MarkerGD = ' + QuotedStr(markerSonuc) +
                            ' where onay = 1 and code = ' + QuotedStr(Kod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) +
                            ' and gelisNO = ' + gelisNo + ' and Tip1 = ' + QuotedStr(_F_) ;

                   datalar.QueryExec(sql);

                  except
                     sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                            ' where onay = 1 and code = ' + QuotedStr(Kod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) +
                            ' and gelisNO = ' + gelisNo + ' and Tip1 = ' + QuotedStr(_F_) ;
                     datalar.QueryExec(sql);
                  end;

                End; // if kod <> ''

              end;  //for end m
           End; // if Appointment_Type
         end; // for end j

         ornekdurumyaz('Sonuç Alýndý',id,'');

  end;

begin
  if not DirectoryExists('C:\NoktaV3\AEN')
  then
   MkDir('C:\NoktaV3\AEN');

   datalar.HTTP_XMLDosya_Name := '';

   d1 := TXSDateTime.Create;
   d2 := TXSDateTime.Create;

   DatetoxsDateTime(d1,Trh1);
   DatetoxsDateTime(d2,Trh2);

   kullanici := C_LoginSecurity.Create;
   kullanici.Username := datalar._labusername;  //'AmwEN06';//
   Kullanici.Password := datalar._labsifre;   //'1713eNmW'
   Kullanici.ID := datalar._kurumKod;  //180
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
           id := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index));

           tc := varToStr(gridAktif.DataController.GetValue(
                                      gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('TCKIMLIKNO').Index));



          datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\AEN\AEN_SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';


      //    Cevap := C_GeneralResult.Create;

          datalar.Lab.SOAPHeaders.Send(Kullanici);

          try
            Cevap := (datalar.Lab as UtilsSrvSoap).GetLabRadResultsDate(tc,d1,d2);
          except on e : Exception do
            begin
               sm := e.Message;
            end;
          end;

          if Cevap.Status = 1
          then begin
             SonucYaz(Cevap);
          end;

          Progres.Position := Progres.Position + 1;
        End;
   end;  // for end Satýrlar

end;





end.
