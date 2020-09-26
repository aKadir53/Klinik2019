unit rapor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, frxDesgn, frxClass, ADODB,KadirType,
  frxDBSet,db, kadir,DBCtrls, frxExportPDF, frxExportRTF, frxExportXLS,
  frxExportXML, frxExportHTML, frxBarcode, frxDCtrl, ExtCtrls,
  frxDMPExport, frxChBox, frxRich, frxChart, frxGradient,frxRes,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxButtons, frxADOComponents, strUtils,
  frxExportMail, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, frxCross, frxCtrls;

type
  sablonTip = (stEvet,stHayir);


type
  TfrmRapor = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    StatusBar1: TStatusBar;
    memo: TDBMemo;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXMLExport1: TfrxXMLExport;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    frxDBDataset6: TfrxDBDataset;
    frxDBDataset7: TfrxDBDataset;
    frxDBDataset8: TfrxDBDataset;
    frxDBDataset9: TfrxDBDataset;
    frxDBDataset10: TfrxDBDataset;
    frxDBDataset11: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDialogControls1: TfrxDialogControls;
    Panel1: TPanel;
    frxChartObject1: TfrxChartObject;
    frxRichObject1: TfrxRichObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxGradientObject1: TfrxGradientObject;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    frxDBDataset12: TfrxDBDataset;
    frxDBDataset0: TfrxDBDataset;
    frxDBDataset00: TfrxDBDataset;
    btnOnIzle: TcxButton;
    btnYazdir: TcxButton;
    btnSend: TcxButton;
    frxADOComponents1: TfrxADOComponents;
    frxMailExport1: TfrxMailExport;
    frxADOComponents2: TfrxADOComponents;
    frxCrossObject1: TfrxCrossObject;
    procedure raporData(Dataset : TADOQuery ; kod ,dosya ,yazici: string);
    procedure rapor1Data(dataset : TADOQuery ; kod , dosya , yazici : string);
    procedure raporDataset(Dataset : TDataset ; kod ,dosya ,yazici: string);
    procedure rapor1Dataset(Dataset : TDataset ; kod ,dosya ,yazici: string ; sirketKod : string = '');

    procedure rapor1Data1(dataset : TDataSetKadir ; kod , dosya : string);
    function frxDesigner1SaveReport(Report: TfrxReport;
      SaveAs: Boolean): Boolean;
    function frxDesigner1LoadReport(Report: TfrxReport): Boolean;
    procedure FormShow(Sender: TObject);
    procedure btnYazdir_Click(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure btnOnIzleClick(Sender: TObject);
    procedure frxDesigner1InsertObject(Sender: TObject);
    procedure DesignerOnShow(sender: TObject);

    procedure IcerikAl(var template : TStream ; dokumanNo: string ; ObjeName : string = 'Icerik' ; Dataset : TDataset = nil);
 //   function GenReportPDF(const RepName, Id: string): string;
  private

    { Private declarations }
  public
       topluset : TDataSetKadir;
       procedure raporData1(dataset : TDataSetKadir ; kod , caption : string;formId : string = '' ;printTip : TprintTip = pTNone;printer : string = '');
       procedure raporDataDokuman(dataset : TDataSetKadir ; kod , caption : string;formId : string = '' ;printTip : TprintTip = pTNone;printer : string = '' ; SayfaGizle : string = '');

       procedure raporData2(dataset : TDataSetKadir ; kod , dosya : string ; SablonLoad : sablonTip = stHayir; Expo : Boolean = True);
       procedure raporDataIcerikYukle(kod : string);
    { Public declarations }
  end;


var
  frmRapor: TfrmRapor;
  data : Tdataset;
  dosyaName ,d , _printer,_Caption_ : string;
  toplu : TDataSetKadir;
implementation
 uses data_modul;
{$R *.dfm}

 (*
function TfrmRapor.GenReportPDF(const RepName, Id: string): string;
var
  TopluDataset : TDataSetKadir;
  sql : string;
begin
  OpenDS(RepName, Id);
  try

    frxReport1.PrintOptions.ShowDialog := False;
    frxReport1.ShowProgress := false;

    frxReport1.EngineOptions.SilentMode := True;
    frxReport1.EngineOptions.EnableThreadSafe := True;
    frxReport1.EngineOptions.DestroyForms := False;
    frxReport1.EngineOptions.UseGlobalDataSetList := False;


           TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;
           TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
           sql := 'select *,DK.tanimi KapsamAdi,DT.tanimi TurAdi from SKS_Dokumanlar D' +
                ' join SKS_DokumanKapsamlari DK on DK.kod = D.Kapsam ' +
                ' join SKS_DokumanTurleri DT on DT.kod = D.tur ' +
                ' left join SKS_DokumanlarRev DR on DR.dokumanid = D.id'+ // and DR.aktif = 1' +
                ' where D.id = ' + Id;

           TopluDataset.Dataset2 := datalar.QuerySelect(sql);

    raporData1(TopluDataset ,RepName,'','0',pTOnIzle);

   // frxReport1.LoadFromFile(UniServerModule.FilesFolderPath + RepName + '.fr3');

    frxPDFExport1.Background := True;
    frxPDFExport1.ShowProgress := False;
    frxPDFExport1.ShowDialog := False;
    frxPDFExport1.FileName := DATALAR. NewCacheFileUrl(False, 'pdf', '', '', Result, True);
    frxPDFExport1.DefaultPath := '';

    frxReport1.PreviewOptions.AllowEdit := False;
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
  finally
    CloseDS;
  end;
end;
   *)

procedure TfrmRapor.DesignerOnShow(sender: TObject);
Begin
 if sender is Tform then
 Tform(sender).Caption := frmRapor.Caption;
End;

procedure TfrmRapor.IcerikAl(var template : TStream ; dokumanNo: string ; ObjeName : string = 'Icerik' ; Dataset : TDataset = nil);
var
 RichView : TfrxRichView;
 Stream: TMemoryStream;
 Str: string;
begin

  if Dataset = nil then dataset := datalar.ADO_RAPORLAR;

  if not FileExists('C:\RTF\' +dokumanNo + '.rtf')
  then begin
   ShowMessageSkin('C:\RTF\' +dokumanNo + '.rtf','Ýçerik Alýnacak Dosya Bulunamadý','','info');
   exit;
  end;
  
  try
    template.Position := 0;
    frxReport1.LoadFromStream(template);
  finally
  // template.free;
  end;



 RichView := TfrxRichView(frxReport1.FindObject(ObjeName));
 if RichView = nil then
   Exit;
 Stream := TMemoryStream.Create;
 try
   try
     Stream.LoadFromFile('C:\RTF\' +dokumanNo + '.rtf');
     SetLength(Str, Stream.Size);
     Stream.Read(Str[1], Stream.Size);
     RichView.RichEdit.Text := Str;
   finally // wrap up
     Stream.Free;
   end;    // try/finally
 except
 end;

 //frxDesigner1SaveReport(frxReport1,False);


  Stream := TMemoryStream.Create;
  try
    Stream.Position := 0;
    frxReport1.SaveToStream(Stream);

    if Dataset.Active = true
    Then Begin
      Dataset.Edit;
      try
         Dataset.DisableControls;
         Dataset.FieldByName('raporAdi').AsString := d;
         (Dataset.FieldByName('rapor') as TBlobField).LoadFromStream(Stream);
         Dataset.Post;
         ShowMessageSkin('Ýçerik Alýndý','','','info');
      finally
        Dataset.EnableControls;
      end;
    End
  finally
    Stream.Free;
  end;



 template.Position := 0;
 frxReport1.SaveToStream(template);


end;


procedure TfrmRapor.raporData(dataset : TADOQuery ; kod , dosya , yazici : string);
var
  template : TStream;
begin
  _printer := yazici;
  datalar.ADO_RAPORLAR.Active := true;
  datalar.ADO_RAPORLAR.Locate('raporkodu',kod,[]);
  frmRapor.Caption := dosya;
  d := dosya;
  template := datalar.ADO_RAPORLAR.CreateBlobStream(datalar.ADO_RAPORLAR.FieldByName('Rapor'), bmRead);
  try
    template.Position := 0;
    frxReport1.LoadFromStream(template);
    frxDBDataset1.DataSet := dataset;
    // frxReport1.ShowReport;
  finally
    template.Free;
  end;

end;


procedure TfrmRapor.raporData2(dataset: TDataSetKadir; kod, dosya: string;
  SablonLoad: sablonTip; Expo: Boolean);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
    Table : TADOQuery;
    Locate : Boolean;
begin
     if Expo then
     begin
        frxXLSExport1 := TfrxXLSExport.Create(frmRapor);
        frxPDFExport1 := TfrxPDFExport.Create(frmRapor);
        frxHTMLExport1 := TfrxHTMLExport.Create(frmRapor);
        frxMailExport1 := TfrxMailExport.Create(frmRapor);
        frxRTFExport1 := TfrxRTFExport.Create(frmRapor);
     end;

     datalar.ADO_RAPORLAR.Active := true;
     datalar.ADO_RAPORLAR.First;
     Locate := datalar.ADO_RAPORLAR.Locate('raporkodu',kod,[]);

     if SablonLoad = stEvet
     Then begin
       if Locate = False
       Then Begin
          Table := Datalar.QuerySelect('Select * from RaporlarDizayn where raporKodu = ''BOS''');
          template := Table.CreateBlobStream(Table.FieldByName('Rapor'), bmRead);
          template.Position := 0;
          datalar.ADO_RAPORLAR.Append;
          datalar.ADO_RAPORLAR.FieldByName('raporKodu').AsString := kod;
          datalar.ADO_RAPORLAR.FieldByName('raporAdi').AsString := dosya;
          datalar.ADO_RAPORLAR.FieldByName('rapor').AsString := '<?xml version="1.0" encoding="utf-8"?>';
          datalar.ADO_RAPORLAR.Post;
       End
       Else
       Begin
          template := datalar.ADO_RAPORLAR.CreateBlobStream(datalar.ADO_RAPORLAR.FieldByName('Rapor'), bmRead);
          template.Position := 0;
       End;
     end
     else
     begin
       template := datalar.ADO_RAPORLAR.CreateBlobStream(datalar.ADO_RAPORLAR.FieldByName('Rapor'), bmRead);
       template.Position := 0;
     end;

    try
       frxReport1.LoadFromStream(template);
       frxDBDataset0.DataSet := dataset.Dataset0;
       frxDBDataset00.DataSet := dataset.Dataset00;
       frxDBDataset1.DataSet := dataset.Dataset1;
       frxDBDataset2.DataSet := dataset.Dataset2;
       frxDBDataset3.DataSet := dataset.Dataset3;
       frxDBDataset4.DataSet := dataset.Dataset4;
       frxDBDataset5.DataSet := dataset.Dataset5;
       frxDBDataset6.DataSet := dataset.Dataset6;
       frxDBDataset7.DataSet := dataset.Dataset7;
       frxDBDataset8.DataSet := dataset.Dataset8;
       frxDBDataset9.DataSet := dataset.Dataset9;
       frxDBDataset10.DataSet := dataset.Dataset10;
       frxDBDataset11.DataSet := dataset.Dataset11;
       frxDBDataset12.DataSet := dataset.Dataset12;

      // frxReport1.ShowReport;
    finally
          template.Free;
    end;




end;

procedure TfrmRapor.rapor1Data(dataset : TADOQuery ; kod , dosya , yazici : string);
var
    template : TStream;
begin
  _printer := yazici;

  datalar.ADO_RAPORLAR1.Active := true;
  datalar.ADO_RAPORLAR1.Locate('raporkodu',kod,[]);
       frmRapor.Caption := dosya;

  d := dosya;

  template := datalar.ADO_RAPORLAR1.CreateBlobStream(datalar.ADO_RAPORLAR1.FieldByName('Rapor'), bmRead);
  try
    template.Position := 0;
    frxReport1.LoadFromStream(template);
    frxDBDataset1.DataSet := dataset;
    // frxReport1.ShowReport;
  finally
        template.Free;
  end;

end;




procedure TfrmRapor.raporDataset(dataset : Tdataset ; kod , dosya , yazici : string);
var
    template : TStream;
begin
  _printer := yazici;

  frmRapor.Caption := dosya;

  datalar.ADO_RAPORLAR.Active := true;
  datalar.ADO_RAPORLAR.Locate('raporkodu',kod,[]);

  d := dosya;


  template := datalar.ADO_RAPORLAR.CreateBlobStream(datalar.ADO_RAPORLAR.FieldByName('Rapor'), bmRead);
  try
    template.Position := 0;
    frxReport1.LoadFromStream(template);
    frxDBDataset1.DataSet := dataset;
    // frxReport1.ShowReport;
  finally
    template.Free;
  end;

end;


procedure TfrmRapor.rapor1Dataset(dataset : Tdataset ; kod , dosya , yazici : string ; sirketKod : string = '');
var
  template : TStream;
begin
  _printer := yazici;

  frmRapor.Caption := dosya;

  datalar.ADO_RAPORLAR1.Active := true;
  datalar.ADO_RAPORLAR1.Locate('raporkodu;sirketKod',VarArrayOf([kod, datalar.AktifSirket]),[]);

  d := dosya;

  template := datalar.ADO_RAPORLAR1.CreateBlobStream(datalar.ADO_RAPORLAR1.FieldByName('Rapor'), bmRead);
  try
    template.Position := 0;
    frxReport1.LoadFromStream(template);
    frxDBDataset1.DataSet := dataset;
    // frxReport1.ShowReport;
  finally
    template.Free;
  end;
end;


procedure TfrmRapor.raporDataIcerikYukle(kod : string);
var
  template : TStream;
  Table,AdoRapor : TADOQuery;
begin
  AdoRapor := Datalar.QuerySelect('Select * from RaporlarDizayn where raporKodu = ' + QuotedStr(kod) +
                                  ' and sirketKod = ' + QuotedStr(datalar.AktifSirket));

  if AdoRapor.Eof
  Then begin
      AdoRapor.Append;
      AdoRapor.FieldByName('raporKodu').AsString := kod;
      AdoRapor.FieldByName('raporAdi').AsString := '';
      AdoRapor.FieldByName('sirketKod').AsString := datalar.AktifSirket;
      AdoRapor.FieldByName('rapor').AsString := '<?xml version="1.0" encoding="utf-8"?>';
      AdoRapor.Post;
      AdoRapor.Edit;

      Table := Datalar.QuerySelect('Select * from RaporlarDizayn where raporKodu = ''BOS''');
      if not Table.Eof
      then begin
          Table.Edit;
          template := Table.CreateBlobStream(Table.FieldByName('Rapor'), bmRead);
          IcerikAl(template,kod,'Icerik',AdoRapor);
      end;
      Table.close;
  end
  else
  begin
      template := AdoRapor.CreateBlobStream(AdoRapor.FieldByName('Rapor'), bmRead);
      IcerikAl(template,kod,'Icerik',AdoRapor);
  end;

end;


procedure TfrmRapor.raporDataDokuman(dataset : TDataSetKadir ; kod , caption : string;formId : string = '' ;printTip : TprintTip = pTNone;printer : string = '' ; SayfaGizle : string = '');
var
  template : TStream;
  Table , Table1 : TADOQuery;
begin


  frxDesigner1.OnShow:= DesignerOnShow;
  frmRapor.Caption := kod + ' - ' + caption;


  datalar.QuerySelect(datalar.ADO_RAPORLAR_Q,'select * from RaporlarDizayn where raporKodu = ' + QuotedStr(kod));
  Table1 := datalar.QuerySelect('select * from SKS_Dokumanlar where dokumanNo = ' + QuotedStr(kod));
  if not Table1.Eof
  then begin
      if datalar.ADO_RAPORLAR_Q.Locate('raporkodu;sirketKod',VarArrayOf([kod, datalar.AktifSirket]),[]) = False
      Then begin

          Table := Datalar.QuerySelect('Select * from RaporlarDizayn where raporKodu = ''BOS''');

          datalar.ADO_RAPORLAR_Q.Append;
          datalar.ADO_RAPORLAR_Q.FieldByName('raporKodu').AsString := kod;
          datalar.ADO_RAPORLAR_Q.FieldByName('raporAdi').AsString := '';
          datalar.ADO_RAPORLAR_Q.FieldByName('sirketKod').AsString := datalar.AktifSirket;
          datalar.ADO_RAPORLAR_Q.FieldByName('rapor').AsString :=
          ifThen(Table.FieldByName('rapor').AsString = '','<?xml version="1.0" encoding="utf-8"?>',Table.FieldByName('rapor').AsString);
          datalar.ADO_RAPORLAR_Q.FieldByName('Tip').AsString := Table1.FieldByName('dokumanTip').AsString;
          datalar.ADO_RAPORLAR_Q.FieldByName('SKS_formID').AsString := Table1.FieldByName('id').AsString;
          datalar.ADO_RAPORLAR_Q.Post;
          Table.close;
        //  datalar.ADO_RAPORLAR_Q.Edit;
         (*
          Table := Datalar.QuerySelect('Select * from RaporlarDizayn where raporKodu = ''BOS''');
          if not Table.Eof
          then begin
              Table.Edit;
              template := Table.CreateBlobStream(Table.FieldByName('Rapor'), bmRead);
              IcerikAl(template,kod);
          end;
           *)
      end
      else
      begin

      end;

      Table1.close;
  end;

//   datalar.ADO_RAPORLAR_Q.Locate('raporkodu',kod,[]);
  template := datalar.ADO_RAPORLAR_Q.CreateBlobStream(datalar.ADO_RAPORLAR_Q.FieldByName('Rapor'), bmRead);
  frmRapor.Caption := kod;


  try
    template.Position := 0;
    frxReport1.LoadFromStream(template);
    frxDBDataset0.DataSet := dataset.Dataset0;
    frxDBDataset00.DataSet := dataset.Dataset00;
    frxDBDataset1.DataSet := dataset.Dataset1;
    frxDBDataset2.DataSet := dataset.Dataset2;
    frxDBDataset3.DataSet := dataset.Dataset3;
    frxDBDataset4.DataSet := dataset.Dataset4;
    frxDBDataset5.DataSet := dataset.Dataset5;
    frxDBDataset6.DataSet := dataset.Dataset6;
    frxDBDataset7.DataSet := dataset.Dataset7;
    frxDBDataset8.DataSet := dataset.Dataset8;
    frxDBDataset9.DataSet := dataset.Dataset9;
    frxDBDataset10.DataSet := dataset.Dataset10;
    frxDBDataset11.DataSet := dataset.Dataset11;
    frxDBDataset12.DataSet := dataset.Dataset12;
  finally
    template.Free;

  end;

  frxReport1.ReportOptions.Name := frmRapor.Caption;
  frxReport1.PrepareReport(True);

  if SayfaGizle <> ''
  then
    if Assigned(frxReport1.FindObject(SayfaGizle))
    then
     TfrxPage(frxReport1.FindObject(SayfaGizle)).Visible := False;

  if printTip = pTYazdir
  then begin
   frxReport1.PrepareReport;
   frxReport1.PrintOptions.ShowDialog := false;
   frxReport1.Print;
  end
  else
  if printTip in [pTOnIzle,pTDizayn] then
  begin
    frxReport1.PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator];
    frxReport1.PrintOptions.ShowDialog := True;
    if printer <> ''
    Then begin
      frxReport1.PrintOptions.Printer := printer;
      frxReport1.SelectPrinter;
    End;
    if printTip = pTOnIzle then frxReport1.ShowReport else frxReport1.DesignReport;
  end;

end;


procedure TfrmRapor.raporData1(dataset : TDataSetKadir ; kod , caption : string;formId : string = '' ;printTip : TprintTip = pTNone;printer : string = '');
var
  template : TStream;
  Table : TADOQuery;
begin

  frxDesigner1.OnShow:= DesignerOnShow;
  frmRapor.Caption := kod + ' - ' + caption;


  datalar.QuerySelect(datalar.ADO_RAPORLAR_Q,'select * from RaporlarDizayn where raporKodu = ' + QuotedStr(kod));

//  if datalar.ADO_RAPORLAR_Q.Locate('raporkodu;sirketKod',VarArrayOf([kod, datalar.AktifSirket]),[]) = False

  if datalar.ADO_RAPORLAR_Q.Locate('raporkodu',kod,[]) = False
  Then begin
      datalar.ADO_RAPORLAR_Q.Append;
      datalar.ADO_RAPORLAR_Q.FieldByName('raporKodu').AsString := kod;
      datalar.ADO_RAPORLAR_Q.FieldByName('raporAdi').AsString := '';
      datalar.ADO_RAPORLAR_Q.FieldByName('sirketKod').AsString := datalar.AktifSirket;
      datalar.ADO_RAPORLAR_Q.FieldByName('rapor').AsString := '<?xml version="1.0" encoding="utf-8"?>';
      datalar.ADO_RAPORLAR_Q.Post;
  end
  else
  begin
     if datalar.ADO_RAPORLAR_Q.FieldByName('SKS_formID').AsString  <> ''
     then begin
        dataset.Dataset0 := datalar.QuerySelect(
           'sp_Dokuman ' + QuotedStr(datalar.AktifSirket) + ',' +
           datalar.ADO_RAPORLAR_Q.FieldByName('SKS_formID').AsString);

     end;

  end;

  template := datalar.ADO_RAPORLAR_Q.CreateBlobStream(datalar.ADO_RAPORLAR_Q.FieldByName('Rapor'), bmRead);
  frmRapor.Caption := kod;


  try
    template.Position := 0;
    frxReport1.LoadFromStream(template);
    frxDBDataset0.DataSet := dataset.Dataset0;
    frxDBDataset00.DataSet := dataset.Dataset00;
    frxDBDataset1.DataSet := dataset.Dataset1;
    frxDBDataset2.DataSet := dataset.Dataset2;
    frxDBDataset3.DataSet := dataset.Dataset3;
    frxDBDataset4.DataSet := dataset.Dataset4;
    frxDBDataset5.DataSet := dataset.Dataset5;
    frxDBDataset6.DataSet := dataset.Dataset6;
    frxDBDataset7.DataSet := dataset.Dataset7;
    frxDBDataset8.DataSet := dataset.Dataset8;
    frxDBDataset9.DataSet := dataset.Dataset9;
    frxDBDataset10.DataSet := dataset.Dataset10;
    frxDBDataset11.DataSet := dataset.Dataset11;
    frxDBDataset12.DataSet := dataset.Dataset12;
  finally
    template.Free;
  end;

  frxReport1.ReportOptions.Name := frmRapor.Caption;
  frxReport1.PrepareReport(True);


  if printTip = pTYazdir
  then begin
   frxReport1.PrepareReport;
   frxReport1.PrintOptions.ShowDialog := false;
   frxReport1.Print;
  end
  else
  if printTip in [pTOnIzle,pTDizayn] then
  begin
    frxReport1.PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator];
    frxReport1.PrintOptions.ShowDialog := True;
    if printer <> ''
    Then begin
      frxReport1.PrintOptions.Printer := printer;
      frxReport1.SelectPrinter;
    End;
    if printTip = pTOnIzle then frxReport1.ShowReport else frxReport1.DesignReport;
  end;

end;

procedure TfrmRapor.rapor1Data1(dataset : TDataSetKadir ; kod , dosya : string);
var
    template : TStream;
begin

  //  frxReport1.Variables.AddVariable('Sabitler','Donem','ÞUBAT');
  datalar.ADO_RAPORLAR1.Active := false;
  datalar.ADO_RAPORLAR1.Active := true;
  datalar.ADO_RAPORLAR1.Locate('raporkodu',kod,[]);

  //   memo.DataSource := datalar.ADO_RAPORLAR;
  frmRapor.Caption := dosya;
  d := dosya;


  template := datalar.ADO_RAPORLAR1.CreateBlobStream(datalar.ADO_RAPORLAR1.FieldByName('Rapor'), bmRead);
  try
    template.Position := 0;
    frxReport1.LoadFromStream(template);
    frxDBDataset0.DataSet := dataset.Dataset0;
    frxDBDataset0.DataSet.Name := dataset.Dataset0.name;

    frxDBDataset1.DataSet := dataset.Dataset1;
    frxDBDataset1.DataSet.name := dataset.Dataset1.name;
    frxDBDataset2.DataSet := dataset.Dataset2;
    frxDBDataset3.DataSet := dataset.Dataset3;
    frxDBDataset4.DataSet := dataset.Dataset4;
    frxDBDataset5.DataSet := dataset.Dataset5;
    frxDBDataset6.DataSet := dataset.Dataset6;
    frxDBDataset7.DataSet := dataset.Dataset7;
    frxDBDataset8.DataSet := dataset.Dataset8;
    frxDBDataset9.DataSet := dataset.Dataset9;
    frxDBDataset10.DataSet := dataset.Dataset10;
    frxDBDataset11.DataSet := dataset.Dataset11;
    frxDBDataset12.DataSet := dataset.Dataset12;
    // frxReport1.ShowReport;
  finally
    template.Free;
  end;
end;



procedure TfrmRapor.btnSendClick(Sender: TObject);
begin
   //  frxDBDataset1.DataSet := data;
     frxReport1.PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator];
     frxReport1.PrintOptions.ShowDialog := True;

     if _printer = 'fis'
     Then begin
          frxReport1.PrintOptions.Printer := 'fis';
          frxReport1.SelectPrinter;
     End;


//     frxResources.
//     Get('Turkish.frc');
//     .LoadFromFile('Turkish.frc');
     frxReport1.DesignReport;
     close;

end;

function TfrmRapor.frxDesigner1SaveReport(Report: TfrxReport;
  SaveAs: Boolean): Boolean;
var
  template : TStream;
begin

  Result := False;
  if not Result then ;;;

  template := TMemoryStream.Create;
  try
    template.Position := 0;
    Report.SaveToStream(template);

    if datalar.ADO_RAPORLAR_Q.Active = true
    Then Begin
      datalar.ADO_RAPORLAR_Q.Edit;
      try
         datalar.ADO_RAPORLAR_Q.DisableControls;
         datalar.ADO_RAPORLAR_Q.FieldByName('raporAdi').AsString := d;
         (datalar.ADO_RAPORLAR_Q.FieldByName('rapor') as TBlobField).LoadFromStream(template);
         datalar.ADO_RAPORLAR_Q.Post;
         Result := True;
      finally
        datalar.ADO_RAPORLAR_Q.EnableControls;
      end;
    End
    Else
    Begin
      datalar.ADO_RAPORLAR1.Edit;
      try
         datalar.ADO_RAPORLAR1.DisableControls;
         datalar.ADO_RAPORLAR1.FieldByName('raporAdi').AsString := d;
         (datalar.ADO_RAPORLAR1.FieldByName('rapor') as TBlobField).LoadFromStream(template);
         datalar.ADO_RAPORLAR1.Post;
         Result := True;
      finally
        datalar.ADO_RAPORLAR1.EnableControls;
      end;
    End;
  finally
    template.Free;
  end;

end;

procedure TfrmRapor.frxDesigner1InsertObject(Sender: TObject);
var
 Ct : string;
begin
 // if TComponent(Sender).ClassType = TfrxPictureView
//  Then begin
 //  TfrxPictureView(Sender).Picture.LoadFromFile('D:\test.bmp');

 // end;


end;

function TfrmRapor.frxDesigner1LoadReport(Report: TfrxReport): Boolean;
begin

    showmessage('y','','','info');
    result := True;
(*
    template := TMemoryStream.Create;
    template.Position := 0;
    Report.SaveToStream(template);
    datalar.ADO_RAPORLAR.Edit;
try
   datalar.ADO_RAPORLAR.DisableControls;
   (datalar.ADO_RAPORLAR.FieldByName('rapor') as TBlobField).LoadFromStream(template);
   datalar.ADO_RAPORLAR.Post;
finally
       datalar.ADO_RAPORLAR.EnableControls;
end;
*)
end;


procedure TfrmRapor.btnOnIzleClick(Sender: TObject);
begin



    // frxDBDataset1.DataSet := data;
     frxReport1.PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator];
     frxReport1.PrintOptions.ShowDialog := True;

     if _printer = 'fis'
     Then begin
          frxReport1.PrintOptions.Printer := 'fis';
          frxReport1.SelectPrinter;
     End;

     frxReport1.ShowReport;
     close;

end;

procedure TfrmRapor.FormShow(Sender: TObject);
begin

   if UserRight('Raporlar', 'Dizayn Modu') = True
   then begin
          btnSend.Visible := True;
   End Else btnSend.Visible := False;

   if UserRight('Raporlar', 'Ön Ýzleme') = True
   then begin
          btnOnIzle.Visible := True;
   End Else btnOnIzle.Visible := False;


end;

procedure TfrmRapor.btnYazdirClick(Sender: TObject);
begin

     frxReport1.PrepareReport;
     frxReport1.PrintOptions.ShowDialog := false;
     frxReport1.Print;
     close;

end;

procedure TfrmRapor.btnYazdir_Click(Sender: TObject);
begin
//     frxReport1.PreviewOptions.Buttons := [pbPrint];

(*
     if _printer <> ''
     Then begin
          frxReport1.PrintOptions.ShowDialog := false;
          frxReport1.PrintOptions.Printer := _printer;
          frxReport1.SelectPrinter;
//          frxReport1.PrintOptions.Copies := HastaKabulBarkodAdedi(durum);
     End;
  *)

     frxReport1.PrepareReport;
     frxReport1.PrintOptions.ShowDialog := false;
     frxReport1.Print;
     close;



end;

end.
