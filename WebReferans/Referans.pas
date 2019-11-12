unit Referans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,DateUtils,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,ServiceReferansLab,
  data_modul,cxGridDBTableView, cxMemo,cxProgressBar,DBClient;


  procedure ornekdurumyaz(durum,id,refId : string);

  procedure SonucAl(t1,t2 : Tdate ; glmref : string ;txtLog : Tcxmemo ; progres :TcxProgressBar);


 implementation

var
   gndref,gndrefs,tstref,hstref,glmref,fromglstar,toglstar,HataMesaji: string;
   XML : TXMLData;
   XMLString , sm , hata ,dosyaNo,gelisNo,id , sonuc ,testKod , _F_ ,sql , msj : string;
   SonucListesi : ReLabSonucListesiResult;
   I : integer;
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

   sql := 'update gelisler set LabOrnekdurum = ' + QuotedStr(durum) +
          ',LabRefId = ' + QuotedStr(refId) +
          ' where SIRANO = ' + id;
   datalar.QueryExec(ado,sql);

   ado.Free;
end;



procedure SonucAl(t1,t2 : Tdate ; glmref : string ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  _dataset_ : TClientDataSet;
  gndref,gndrefs,tstref,hstref,fromglstar,toglstar,HataMesaji: string;
  XML : TXMLData;
  XMLString , sm , hata ,dosyaNo,gelisNo,id , sonuc ,testKod , _F_ ,sql , msj : string;
  SonucListesi : ReLabSonucListesiResult;
  I : integer;
  t : boolean;
  ado : TADOQuery;

procedure SonucYaz(dataset : TClientDataSet ; id : string);
var
  x : integer;
  t1,t2 ,sonucAciklama: string;
begin

   txtLog.Lines.Clear;

   progres.Properties.Max := dataset.RecordCount;
   progres.Position := 0;

   while not dataset.Eof do
    begin
     Application.ProcessMessages;
     Progres.Position := Progres.Position + 1;

     try
        dosyaNO := '0';
        gelisNo := '0';
        TCdenDosyaNoGelisNo(dataset.FieldByName('HASTATCKNO').AsString,t1,t2,dosyaNo,gelisNo,id);
        _F_ := '';
        testKod := KodEslestir(dataset.FieldByName('TESTREF').AsString,_F_);

        txtLog.Lines.Add(dataset.FieldByName('HASTATCKNO').AsString + ' ' +
                       dataset.FieldByName('HASTAADI').AsString + '/ ' +
                       dosyaNO + ' ' + gelisNo + ' - /  ' +
                       testKod + ' ' + dataset.FieldByName('TESTREF').AsString +' '+
                       dataset.FieldByName('TESTADI').AsString + ' - ' +
                       dataset.FieldByName('SONUC').AsString + ' - ' +
                       dataset.FieldByName('SONUCTEXT').AsString);


      if testKod <> ''
      Then Begin
         sonuc := dataset.FieldByName('SONUC').AsString;
         sonucAciklama := dataset.FieldByName('SONUCTEXT').AsString;
         if pos('SAMPLE RESULT',sonucaciklama) > 0
         then begin
           sonucAciklama := StringReplace(sonucAciklama,'SAMPLE RESULT','',[rfReplaceAll]);
           sonucAciklama := StringReplace(sonucAciklama,':','',[rfReplaceAll]);
           sonucAciklama := TrimLeft(sonucAciklama);
           sonucAciklama := copy(sonucAciklama,1,5);
         end;

         Sonuc := StringReplace(Sonuc,'Poz','POZ',[rfReplaceAll]);
         Sonuc := StringReplace(Sonuc,'Neg','NEG',[rfReplaceAll]);

         if (pos('NEG',Sonuc) > 0)
         Then sonuc := '-1'
         Else
         if (pos('POZ',Sonuc) > 0)
         Then sonuc := '1'
         Else
         sonuc := Sonuc;

        try
         sql := 'update hareketler set Gd = dbo.fn_gecersizKarakterHarf(' + sonuc + ')' +
                ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(sql);


        except on e : exception do
          begin
           sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucAciklama) +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) +  ' and tip1 = ' + QuotedStr(_F_) +
                  ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
           datalar.QueryExec(sql);
          end;
        end;
      End;

     except on ee : Exception do
      begin
          txtLog.Lines.Add(dataset.FieldByName('HASTATCKNO').AsString + ' ' +
                       dataset.FieldByName('HASTAADI').AsString + '/ ' +
                       dosyaNO + ' ' + gelisNo + ' - /  ' +
                       testKod + ' ' + dataset.FieldByName('TESTREF').AsString +' '+
                       dataset.FieldByName('TESTADI').AsString + ' - ' +
                       dataset.FieldByName('SONUC').AsString + ';' + ee.Message+'; '+_F_);
      end;
     end;
      dataset.Next;
    end; // test for end
    ornekdurumyaz('Sonuç Alýndý',id,'');
   // ado.Free;
end;

begin

  if not DirectoryExists('C:\NoktaV3\Referans')
  then
    MkDir('C:\NoktaV3\Referans');

  datalar.Lab.URL := datalar._laburl;
  fromglstar := FormatDateTime('YYYYMMDD',t1);
  toglstar := FormatDateTime('YYYYMMDD',t2);

  SonucListesi := ReLabSonucListesiResult.Create;

  gndref := datalar._labusername;
  gndrefs := datalar._labsifre;

  datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Referans\Referans_SonucAl.XML';


  try
   SonucListesi := (datalar.Lab as ReLabSonucOkuSoap).ReLabSonucListesi(gndref,gndrefs,tstref,hstref,glmref,fromglstar,toglstar,msj);
  except on e : Exception do
   begin
     sm := e.Message;
    // txtLog.Lines.Add(e.Message);
   end;
  end;



  try
    //txtinfo.Caption := 'Sonuçlar Sisteme Yazýlýyor...';
   Application.ProcessMessages;
    SonucYaz(datalar.ClientDataSet1,id);
  except
  end;

  //txtinfo.Caption := '';

end;





end.
