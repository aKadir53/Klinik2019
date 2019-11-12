unit ErguvanEKOL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  ErguvanServiceEKOL,adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio, AdvGrid,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,cxProgressBar, cxGridDBTableView,
  cxMemo,  data_modul;

procedure TenaySonucAlBio(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);

implementation

procedure SonucAlEKOL(_dosyaNo,_gelisNo,Trh1,Trh2 : string ;
                            gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar ; Ref : boolean);
var

   ado : TADOQuery;
  I : integer;
  ss ,dosyaNo,gelisNo,tc,id,kul,sif,testkod,sonuc,_F_,sql: string;
  t : boolean;
  xml : XSBuiltIns.TxmlData;
  t1,t2 : TXSDateTime;
  Bilgi : IXMLTestSonuclariType;

procedure SonucYaz(dataset : TClientDataSet ; id : string);
var
  x : integer;
  t1,t2 ,sonucAciklama: string;
begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

    t1 := tarihal(txtTarih.Date);
    t2 := tarihal(txttarih1.Date);
    Progres.Visible := True;
    Progres.MaxValue := dataset.RecordCount;

    while not dataset.Eof do
    begin
     Application.ProcessMessages;
     Progres.Progress := Progres.Progress + 1;

     try
        dosyaNO := '0';
        gelisNo := '0';
        TCdenDosyaNoGelisNo(dataset.FieldByName('TCKIMLIKNO').AsString,t1,t2,dosyaNo,gelisNo,id);
        _F_ := '';
        testKod := KodEslestir(dataset.FieldByName('TEST_NO').AsString,_F_);

        txtLog.Lines.Add(dataset.FieldByName('TCKIMLIKNO').AsString + ' ' +
                       dataset.FieldByName('HASTA_ADI').AsString + '/ ' +
                       dosyaNO + ' ' + gelisNo + ' - /  ' +
                       testKod + ' ' + dataset.FieldByName('TEST_NO').AsString +' '+
                       dataset.FieldByName('ID').AsString + ' ' +
                      // dataset.FieldByName('TAHLIL_TIPI').AsString + ' ' +
                       dataset.FieldByName('TEST_ISMI').AsString + ' - ' +
                       dataset.FieldByName('SONUC').AsString);


      if testKod <> ''
      Then Begin
         sonuc := dataset.FieldByName('SONUC').AsString;
         sonucAciklama := sonuc;

         Sonuc := StringReplace(Sonuc,'Poz','POZ',[rfReplaceAll]);
         Sonuc := StringReplace(Sonuc,'Neg','NEG',[rfReplaceAll]);

         Sonuc := StringReplace(Sonuc,'>','',[rfReplaceAll]);
         Sonuc := StringReplace(Sonuc,'<','',[rfReplaceAll]);
         Sonuc := StringReplace(Sonuc,',','.',[rfReplaceAll]);


         if (pos('NEG',Sonuc) > 0)
         Then sonuc := '-1'
         Else
         if (pos('POZ',Sonuc) > 0)
         Then sonuc := '1'
         Else
         sonuc := Sonuc;


        try

         sql := 'DECLARE @sonuc float ' +
                ' SET @sonuc = ' + sonuc +
                ' UPDATE Hareketler ' +
                ' SET	Gd = (CASE WHEN @sonuc > gd THEN @sonuc ELSE gd END),' +
                ' Cd = (CASE WHEN @sonuc < gd THEN @sonuc ELSE cd END) ' +
                ' from hareketler h ' +
                ' join LabTestler t on h.code = t.butkodu ' +
                ' where onay = 1 and t.Uygulamaadet = 2 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(ado,sql);

         sql := 'DECLARE @sonuc float ' +
                ' SET @sonuc = ' + sonuc +
                ' UPDATE Hareketler ' +
                ' SET	Gd = @sonuc ' +
                ' from hareketler h ' +
                ' join LabTestler t on h.code = t.butkodu ' +
                ' where onay = 1 and t.Uygulamaadet = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(ado,sql);



        (*
         sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucAciklama) +
                ' where code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
         datalar.QueryExec(ado,sql);
          *)
        except on e : exception do
          begin
           sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonucAciklama) +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
           datalar.QueryExec(ado,sql);
           //ShowMessage(e.Message);
          end;
        end;
      End;

     except on ee : Exception do
      begin
          txtLog.Lines.Add(dataset.FieldByName('TCKIMLIKNO').AsString + ' ' +
                       dataset.FieldByName('HASTA_ADI').AsString + '/ ' +
                       dosyaNO + ' ' + gelisNo + ' - /  ' +
                       testKod + ' ' + dataset.FieldByName('TEST_NO').AsString +' '+
                       dataset.FieldByName('ID').AsString + ' - ' +
                       dataset.FieldByName('SONUC').AsString + ';' + ee.Message+'; '+_F_);
      end;
     end;
      dataset.Next;
    end; // test for end

      // markerlar için aralýk deðerine göre pozitif negatif yap
   (*
      sql := ' UPDATE Hareketler ' +
             ' SET islemAciklamasi = (case when onay = 1 and gd > 0 THEN cast(gd AS VARCHAR) ELSE '''' END),' +
             ' Gd = (CASE WHEN onay = 1 and gd between minD and MaxD THEN -1 ' +
             '  ELSE ' +
             '   CASE WHEN onay = 1 and gd not between minD and MaxD THEN 1 ELSE gd END ' +
             ' END) ' +
             ' from Hareketler h ' +
             ' join LabTestler t on h.code = t.butkodu ' +
             ' where onay = 1 and sonucTip = ''B'' and dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
      datalar.QueryExec(ado,sql);
     *)


    ornekdurumyaz('Sonuç Alýndý',id,'');
    ado.Free;
end;

begin

  t1 := TXSDateTime.Create;
  t1.Day := dayof(txtTarih.Date);
  t1.Month := MonthOf(txtTarih.Date);
  t1.Year := YearOf(txtTarih.date);
  t2 := TXSDateTime.Create;
  t2.Day := dayof(txtTarih1.Date);
  t2.Month := MonthOf(txtTarih1.Date);
  t2.Year := YearOf(txtTarih1.date);


  datalar.Login;
  kul := datalar._labusername;
  sif := datalar._labsifre;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  xml := XSBuiltIns.TXMLData.Create;
  ErguvanHttp.URL := datalar._laburl;

  Progres.Visible := True;
  Progres.MaxValue := gridAktif.RowCount - 1;

   for I := 1 to gridAktif.RowCount - 2 do
   begin
     Application.ProcessMessages;
     ss := '';
     gridAktif.GetCheckBoxState(1,I,t);

     if  (t = True) and (gridAktif.Cells[8,I] = 'Gönderildi')
     Then Begin
         dosyaNo := gridAktif.Cells[1,I];
         gelisNo := gridAktif.Cells[2,I];
         id := gridAktif.Cells[6,I];
         tc := gridAktif.Cells[7,I];

         try
           xml := (ErguvanHttp as Service1Soap).TetkikSonuclariGetir(kul,sif,t1,t2,tc).schema;
         except on e : exception do
           begin
              ShowMessage(e.Message);
           end;
         end;

        try
          txtinfo.Caption := 'Sonuçlar Sisteme Yazýlýyor...';
          Application.ProcessMessages;
          SonucYaz(ClientDataSet1,id);

        except
        end;

       End; //* chk end
   end;  // for end

   Progres.Visible := false;
   txtinfo.Caption := '.';

end;

end;


end.
