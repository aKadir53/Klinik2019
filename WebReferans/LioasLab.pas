unit LioasLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, ComCtrls, Mask, EditType, adodb,strutils,
  IdHTTP, IdBaseComponent,xmldom, XMLIntf, msxmldom, Xmlxform,LiosLABservice,
  IdComponent, IdTCPConnection, IdTCPClient;

  procedure SonucAl(var SonuclarList : TStringList;username,password,ornekNo,tarih1,tarih2,Tc,id,dosyaNo,gelisNo:string);
  procedure ornekdurumyaz(durum,id,refId : string);

implementation

uses data_model1;

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


procedure SonucAl(var SonuclarList : TStringList;username,password,ornekNo,tarih1,tarih2,Tc,id,dosyaNo,gelisNo:string);
var
  sql,sm,_F_,testKod: string;
  I : integer;
  t : boolean;
  sonuclar1 : ArrayOfHastaSonucToplu;

procedure SonucYaz(Sonuclar : ArrayOfSonucBilgi ; c  : integer);
var
 x : integer;
 sonuc , kod2 : string;
 ado : TADOQuery;
begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      _F_ := '';
      if c = 4 then _F_ := 'Gd';
      if c = 5 then _F_ := 'Cd';

      for x := 0 to length(sonuclar) - 1 do
      begin
        //  kod2 := ifthen(Sonuclar[x].TETKIK_KODU2 = '0','' ,Sonuclar[x].TETKIK_KODU2);
          _F_ := '';

          if (sonuclar[x].TestGrupAdi = 'HEMATOLOJÝ') or
             (sonuclar[x].TestGrupAdi = 'Hematoloji')
          then
             testKod := KodEslestir(sonuclar[x].TestID+sonuclar[x].TestParametreAdi ,_F_)
          else
             testKod := KodEslestir(sonuclar[x].TestID ,_F_);


          if testKod <> ''
          Then Begin
             sonuclar[x].Sonuc := StringReplace(sonuclar[x].Sonuc,'Poz','POZ',[rfReplaceAll]);
             sonuclar[x].Sonuc := StringReplace(sonuclar[x].Sonuc,'Neg','NEG',[rfReplaceAll]);
             sonuclar[x].Sonuc  := StringReplace(sonuclar[x].Sonuc,',','.',[rfReplaceAll]);

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
               sql := 'update hareketler set ' + _F_ + ' = ' + QuotedStr(sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                      QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
               datalar.QueryExec(ado,sql);
             except

               sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                      ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                       QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
               datalar.QueryExec(ado,sql);

               SonuclarList.Add('**************HATA : ' + sonuclar1[0].TestSonuclariGenel[0].ORNEKNO +'-'+
               sonuclar[x].TestID + '-' + sonuclar[x].TestGrupAdi
               + '-' +sonuclar[x].TestAdi
               + '-' + sonuclar[x].TestParametreAdi
               +'-'+ sonuclar[x].Sonuc);

             end;
          End;

          SonuclarList.Add(sonuclar1[0].TestSonuclariGenel[0].ORNEKNO + ' - '+_F_+ ' - ' +
          sonuclar[x].TestID
          + '-' + sonuclar[x].TestGrupAdi + '-' +
               sonuclar[x].TestAdi
               + '-' + sonuclar[x].TestParametreAdi
               +'-'+ sonuclar[x].Sonuc);

      end;
      ado.Free;
end;

begin
      try
       Sonuclar1 := (datalar.Lios as LabServiceSoap).DiyalizSonucDurum(username,password,ornekNo,tarih1,tarih2,Tc);
      except on e : Exception do
       begin
         sm := e.Message;
         SonuclarList.Add('Tc : ' + Tc + ' - ' + sm);
         exit;
       end;
      end;

      if Sonuclar1[0].Hata = ''
      Then Begin
        SonucYaz(Sonuclar1[0].TestSonuclariGenel[0].TestSonuclari ,4);
        ornekdurumyaz('Sonuç Alýndý',id,'');
      End
      else
       SonuclarList.Add(Sonuclar1[0].Hata);


end;

end.
