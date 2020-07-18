unit RENTEKpas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,kadir,kadirType,
  adodb,XMLIntf,XMLDoc,strutils,XSBuiltIns,SOAPHTTPClient, Rio,AdvGrid,DateUtils,cxProgressBar,
  Dialogs, StdCtrls, Grids, BaseGrid,ComCtrls, Mask,cxGridDBTableView, cxMemo,
  data_modul,SQLMemMain;

  procedure ornekdurumyaz(durum,id,refId : string);
  procedure BarkodOlustur(Liste : TcxGridDBTableView ; txtLog : Tcxmemo ; progres :TcxProgressBar);
  procedure BarkodYazdir(Liste : TcxGridDBTableView ; memData: TSQLMemTable ; txtLog : Tcxmemo ; progres :TcxProgressBar);

implementation



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


procedure BarkodYazdir(Liste : TcxGridDBTableView ; memData: TSQLMemTable ; txtLog : Tcxmemo ; progres :TcxProgressBar);
var
 I , x  : integer;
 t : boolean;
 TC,dosyaNo,gelisNo,ornekNo ,CikisornekNo,OrnekNo_Plazma,OrnekNo_Serum,OrnekNo_TamKan ,Hasta ,id: string;
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
      TC := Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('TCKIMLIKNO').Index);

      id := Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('SIRANO').Index);


      memData.Append;
      memData.FieldByName('dosyaNo').AsString := dosyaNo;
      memData.FieldByName('gelisNo').AsString := gelisNo;
      memData.FieldByName('ornekNo').AsString :=
            ifThen(ornekNo = '',dosyaNo + gelisNo,ornekNo);

      memData.FieldByName('CikisornekNo').AsString := CikisornekNo;
      memData.FieldByName('SIRANO').AsString := id;
      memData.FieldByName('TC').AsString := TC;
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
      Hasta := varTostr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('ADSOYAD').Index));
      id := varToStr(Liste.DataController.GetValue(
                                  Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('SIRANO').Index));

      kayitTip := varToStr(Liste.DataController.GetValue(
                                      Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('LabornekDurum').Index));


      if  (ornekNo = '') and (CikisornekNo = '')
          and (kayitTip = 'Yeni Kayýt')
      Then Begin

         ornekNo := 'G'+id; // giris
         CikisornekNo := 'C'+id; // Cýkýs

         sql := 'update Hasta_gelisler set ' +
                ' OrnekNo = ' + QuotedStr(ornekNo) +
                ', CikisOrnekNo = ' + QuotedStr(CikisornekNo) +
                ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;
         datalar.QueryExec(sql);

      End;
       progres.Position :=progres.Position + 1;

    End;
  finally
    ado.Free;
    adoB.Free;
  end;

end;


end.
