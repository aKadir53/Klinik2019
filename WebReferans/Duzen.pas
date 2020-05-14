unit Duzen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,DateUtils,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,sGauge,DuzenService, KadirType,
  data_modul,cxGridDBTableView, cxMemo,cxProgressBar,DBClient;

  procedure SonucAlDuzen(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);

  procedure OrderKaydetDuzen( gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);

  function OrderDuzen(dosyaNo : string ; gelis : string ; Field : string = '') : THastaKabul;

  procedure ornekdurumyaz(durum,id,refId : string);


implementation

var
  Hst : THastaKabul;


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

procedure OrderKaydetDuzen( gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  HstCvp : DuzenService.addNPatients;
  I,x : integer;
  t : boolean;
  dosyaNo,gelisNo,id,sm ,testler , sql , cins,kayitTip : string;
  ado : TADOQuery;
begin
      datalar.Lab.URL := datalar._laburl;
      HstCvp := DuzenService.addNPatients.Create;

      txtLog.Lines.Clear;

      progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
      progres.Position := 0;

      if not DirectoryExists('C:\NoktaV3\Duzen')
      then
       MkDir('C:\NoktaV3\Duzen');

      datalar.HTTP_XMLDosya_Name := '';

      For x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
      Begin
          sleep(1000);
          Application.ProcessMessages;
          kayitTip := varToStr(gridAktif.DataController.GetValue(
                                          gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));

          if  (kayitTip = 'Yeni Kayýt')
          Then Begin
             dosyaNo := gridAktif.DataController.GetValue(
                                        gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
             gelisNo := gridAktif.DataController.GetValue(
                                        gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
             id := gridAktif.DataController.GetValue(
                                        gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);
             testler := varToStr(gridAktif.DataController.GetValue(
                                        gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('testler').Index));


             Hst := OrderDuzen(dosyaNo,gelisNo);

             cins := ifthen(Hst.Cinsiyet = '0','E','K');

             datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Duzen\Duzen_HastaKaydet_' + dosyaNo + '_' + gelisNo;

             try
              HstCvp := (datalar.Lab as PatientProcsSoap).addPatients(Hst.tckimlikNo,id,cins,Hst.Adi,
                                                                       Hst.Sadi,Hst.DT,'','','','','T',testler,
                                                                       strtoint(datalar._labkurumkod),datalar._labsifre);
             except on e : Exception do
              begin
               sm := e.Message;
              end;
             end;


             if HstCvp.resultCode = '0000'
             then Begin
                sql := 'update Hasta_gelisler set OrnekNo = ' + QuotedStr(HstCvp.resultPANo) +
                       ' where dosyaNO = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo ;
                datalar.QueryExec(sql);

                ornekdurumyaz('Gönderildi',id,'');
                txtLog.Lines.Add(HstCvp.resultCode +'-'+ HstCvp.resultClass);

             End
             else
               txtLog.Lines.Add('Hata' + HstCvp.resultClass);

          End;
          progres.Position := progres.Position + 1;
      End; // for end

end;



procedure SonucAlDuzen(gridAktif : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
  HstCvp : duzenService.getPResults;
  I,x : integer;
  t : boolean;
  dosyaNo,gelisNo,id,sm ,testler , sql , cins ,kayitTip , ornekNo : string;
  testKod ,_F_ , sonuc : string;
  ado : TADOQuery;

procedure SonucYaz(dataset : TClientDataSet ; id : string);
var
  x : integer;
begin
    txtLog.Lines.Add('Tetkik Sayýsý : ' + inttostr(dataset.RecordCount));
    while not dataset.Eof do
    begin
      txtLog.Lines.Add(id + ' : ' + dataset.FieldByName('TESTNO').AsString +' '
      + dataset.FieldByName('BUTCEKODU').AsString + ' - ' +
       dataset.FieldByName('TESTADI').AsString + ' ' + dataset.FieldByName('SONUC').AsString);
      _F_ := '';
      testKod := Kadir.KodEslestir(dataset.FieldByName('TESTNO').AsString,_F_);

      if testKod <> ''
      Then Begin
         sonuc := dataset.FieldByName('SONUC').AsString;

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
         sql := 'update hareketler set ' + _F_ + '= ' + sonuc +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                   QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;

         datalar.QueryExec(ado,sql);

        except
           sql := 'update hareketler set islemAciklamasi  = ' + QuotedStr(sonuc) +
                  ' where onay = 1 and code = ' + QuotedStr(testKod) + ' and dosyaNo = ' +
                  QuotedStr(dosyaNo) + ' and gelisNO = ' + gelisNo ;
           datalar.QueryExec(ado,sql);
        end;


      End;
      dataset.Next;
    end; // test for end
    ornekdurumyaz('Sonuç Alýndý',id,'');
end;


begin

      HstCvp := duzenService.getPResults.Create;

      Datalar.Lab.URL := datalar._laburl;

      if not DirectoryExists('C:\NoktaV3\Duzen')
      then
       MkDir('C:\NoktaV3\Duzen');

      progres.Properties.Max := gridAktif.Controller.SelectedRowCount ;
      progres.Position := 0;

      For x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
      Begin
          sleep(1000);
          Application.ProcessMessages;
          kayitTip := varToStr(gridAktif.DataController.GetValue(
                                        gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('LabornekDurum').Index));

          if  (kayitTip = 'Gonderildi')
          Then Begin
             dosyaNo := gridAktif.DataController.GetValue(
                                        gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
             gelisNo := gridAktif.DataController.GetValue(
                                        gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
             id := gridAktif.DataController.GetValue(
                                        gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('SIRANO').Index);

             ornekNo := gridAktif.DataController.GetValue(
                                        gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('ornekNo').Index);

             datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\Duzen\Duzen_SonucAl_' + dosyaNo + '_' + gelisNo + '.XML';



            try
             HstCvp := (datalar.Lab as PatientProcsSoap).getPatientResults(ornekNo,strtoint(datalar._labkurumkod),datalar._labsifre);
            except on e : Exception do
             begin
               sm := e.Message;
             end;
            end;

            if HstCvp.resultCode = '0000'
            then
            begin
               try
                SonucYaz(datalar.ClientDataSet1,id);
               except end;
            end
            Else
            Begin
              txtLog.Lines.Add(id + ' : ' + HstCvp.resultCode + '-' + HstCvp.resultClass + '-' + sm);
            End;
          End;
          progres.Position := progres.Position  + 1;
      End;


end;




function OrderDuzen(dosyaNo : string ; gelis : string ; Field : string = '') : THastaKabul;
var
  sql : string;
  ado : TADOQuery;
  i , j : integer;
  ckod,kod,TurId : string;
  DTarih,TTarih , ATarih : TXSDateTime;
  Order : THastaKabul;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
    sql := 'select * from HastaKart where dosyano = ' + QuotedStr(dosyaNo);
    datalar.QuerySelect(ado,sql);

    Order.DosyaNo  := dosyaNo;
    Order.tckimlikNo := ado.fieldbyname('TCKIMLIKNO').AsString;
    Order.Adi := ado.fieldbyname('HASTAADI').AsString;
    Order.Sadi := ado.fieldbyname('HASTASOYADI').AsString;
    Order.Cinsiyet := ado.fieldbyname('CINSIYETI').AsString;

    DTarih := TXSDateTime.Create;
    Dtarih.Year := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,1,4));
    Dtarih.Month := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,5,2));
    Dtarih.Day := strtoint(copy(ado.fieldbyname('DOGUMTARIHI').Asstring,7,2));
    Order.DT := DTarih;


    sql := 'select * from Hasta_gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelis;
    datalar.QuerySelect(ado,sql);

    Order.TakipNo := ado.fieldbyname('OrnekNo').AsString;

    result := Order;

  finally
    ado.Free;

  end;

end;

end.
