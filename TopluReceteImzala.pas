unit TopluReceteImzala;

interface

uses
  Windows, Messages, SysUtils, strUtils,Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, DB, ADODB, AdvMemo, cxGroupBox, ExtCtrls, StdCtrls, Mask,
  sMaskEdit, sCustomComboEdit, sTooledit, sButton, cxStyles, DISWS,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,XSBuiltIns,
  cxClasses, cxGridCustomView, cxGrid, AdvmPS, cxDropDownEdit, cxCheckComboBox,
  cxRadioGroup, Buttons, sBitBtn,cxGridExportLink, cxImageComboBox,
  Menus, cxCheckGroup, cxCheckBox, cxGridDBBandedTableView,
  cxGridBandedTableView, cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxCalendar,
  cxCurrencyEdit,GirisUnit,kadir,KadirLabel,KadirType,GetFormClass,Data_modul, cxMemo,
  cxGridCardView, cxGridDBCardView, dxLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView, cxImage, cxPCdxBarPopupMenu, cxPC;

type
  TfrmTopluHastaRecete = class(TGirisForm)
    Panel2: TPanel;
    Splitter1: TSplitter;
    cxGroupBox2: TcxGroupBox;
    ADO_Recete: TADOQuery;
    DataSource1: TDataSource;
    DyobKodlar: TADOTable;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle4: TcxStyle;
    N2: TMenuItem;
    DSVerileriniGnder1: TMenuItem;
    ExceleGnder1: TMenuItem;
    H2: TMenuItem;
    Y1: TMenuItem;
    S1: TMenuItem;
    R1: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Log: TcxTabSheet;
    cxGrid1: TcxGridKadir;
    gridHastalar: TcxGridDBBandedTableView;
    gridHastalarTCKIMLIKNO: TcxGridDBBandedColumn;
    gridHastalardosyaNo: TcxGridDBBandedColumn;
    gridHastalargelisNo: TcxGridDBBandedColumn;
    gridHastalardoktor: TcxGridDBBandedColumn;
    gridHastalarTarih: TcxGridDBBandedColumn;
    gridHastalarHASTAADI: TcxGridDBBandedColumn;
    gridHastalarHASTASOYADI: TcxGridDBBandedColumn;
    gridHastalarColumn1: TcxGridDBBandedColumn;
    gridHastalarColumn2: TcxGridDBBandedColumn;
    gridHastalarColumn3: TcxGridDBBandedColumn;
    gridHastalarColumn4: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    txtLog: TcxMemo;
    gridHastalarColumn5: TcxGridDBBandedColumn;

    procedure TopPanelButonClick(Sender: TObject);
    procedure ADO_ReceteAfterScroll(DataSet: TDataSet);
    procedure gridHastalarStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure ListeDblClick(Sender: TObject);
    procedure btnUzmanMYazdirClick(Sender: TObject);
    procedure gridHastalarSelectionChanged(Sender: TcxCustomGridTableView);
    procedure btnIptalClick(Sender: TObject);
    procedure gridHastalarkanahPropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure H2Click(Sender: TObject);

    function ReceteImzalaGonder(receteId : string ; goster : integer = 1) : string;
    procedure ReceteKaydet;
    procedure Yazdir(dosyaNo : string ; ReceteId : string ; Yazdirma : TprintTip = pTNone);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTopluHastaRecete: TfrmTopluHastaRecete;
  Tc : Int64;
  stop : integer;
  UDoktor : string;
implementation

{$R *.dfm}

uses rapor,AnaUnit;

function TfrmTopluHastaRecete.ReceteImzalaGonder(receteId : string ; goster : integer = 1) : string;
var
  imzala : TReceteImzala;
  dllHandle: Cardinal;
  TesisKodu: integer;
  recete,doktorKullanici,doktorsifre,pin,url,cardType : string;
  doktorTc : string;
  ss : PWideChar;
  sql : string;
begin
  url := (datalar.receteURL);
 (*
  if Tag = TagfrmPersonelRecete
  then
   sql := 'sp_PersonelReceteToXML ' + ADO_Recete.FieldByName('id').AsString
  else
   *)

  sql := 'sp_HastaReceteToXML ' + receteId;

  QuerySelect(sql);


  ss := 'Yok';
  recete := (SelectAdo.FieldByName('recete').AsString);
  doktorKullanici := (SelectAdo.FieldByName('doktorKullanici').AsString);
  doktorsifre :=  (SelectAdo.FieldByName('doktorsifre').AsString);
  pin :=  (SelectAdo.FieldByName('pin').AsString);
  doktorTc :=  (SelectAdo.FieldByName('doktorTc').AsString);
  TesisKodu :=  (SelectAdo.FieldByName('TesisKodu').AsInteger);
  cardType :=  SelectAdo.FieldByName('cardType').AsString;

  dllHandle := LoadLibrary(NoktaDLL);
  try
    if dllHandle = 0 then exit;

    @imzala := findMethod(dllHandle, 'ReceteImzalaGonder');
    if addr(imzala) <> nil then
    imzala(strToint(receteId),PWidechar(recete),PWidechar(doktorKullanici),PWidechar(doktorsifre),PWidechar(pin),PWidechar(doktorTc),PWidechar(TesisKodu),PWidechar(ss),PWidechar(url),PWidechar(cardType),goster);

    ReceteImzalaGonder := ss;

    if not Assigned(imzala) then
      raise Exception.Create(LIB_DLL + ' içersinde ReceteImzalaGonder bulunamadý!');

  finally
    FreeLibrary(dllHandle);
  end;
end;

procedure TfrmTopluHastaRecete.ListeDblClick(Sender: TObject);
var
  dosyaNo,gelisNo,hasta : string;
begin
    (*
     dosyaNo := Ado_.fieldbyname('dosyaNo').AsString;
     gelisNo := Hastalar.fieldbyname('gelisNo').AsString;
     hasta := Hastalar.fieldbyname('HASTAADI').AsString + ' ' + Hastalar.fieldbyname('HASTASOYADI').AsString;
      *)
end;

procedure TfrmTopluHastaRecete.ReceteKaydet;
var
  x : integer;
  ReceteId , Sonuc: string;
  fark : double;
begin
   stop := 0;
   if LisansKontrol(fark) = True
   Then Begin
       for x := 0 to gridHastalar.Controller.SelectedRowCount - 1 do
       begin
           Application.ProcessMessages;
           if stop = 1 then break;
           ReceteId := gridHastalar.DataController.GetValue(
                                          gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('id').Index);
           try

               Sonuc := ReceteImzalaGonder(ReceteId,0);

               if Copy(Sonuc,1,4) = '0000'
               then begin
                    datalar.QueryExec('update recete set eReceteNo = ' + QuotedStr(Copy(Sonuc,6,10)) +
                                      'where id = ' + ReceteId);

                    gridHastalar.DataController.SetValue(gridHastalar.Controller.SelectedRows[x].RecordIndex,
                                                         gridHastalar.DataController.GetItemByFieldName('eReceteNo').Index,Copy(Sonuc,6,10));
                  //  ShowMessageSkin(Sonuc,'Reçete Medulaya Gönderildi','','info');
               end;
           finally
            // if Copy(Sonuc,1,4) <> '0000' then
             txtLog.Lines.Add('Reçete ID : ' + ReceteId + ' - Sonuç : ' + Sonuc);
            // ShowMessageSkin(Sonuc,'','','info');
           end;
       end; // for end

   End
     Else
      ShowMessageSkin('Lütfen Lisans Bilgilerinizi Kontrol Ediniz...','Kalan Lisans Süreniz : ' + floattoStr(fark),'Detaylý Bilgi Ýçin Sistem Yöneticisine Baþvurunuz','info');

   DurumGoster(False,False,'');
end;


procedure TfrmTopluHastaRecete.Yazdir(dosyaNo : string ; ReceteId : string ; Yazdirma : TprintTip = pTNone);
var
  sql , id : string;
  ado,ado1,ado2,ado3 : TADOQuery;
  TopluDataset : TDataSetKadir;
begin
//  if not CheckReceteStatus (True, False, False, False, False) then Exit;
//   id := ADO_Recete.fieldbyname('id').AsString;
   ado := TADOQuery.Create(nil);
   try
     ado.close;
     ado.SQL.Clear;
     sql := 'exec sp_epikriz ' + QuotedStr(dosyaNo) + ',' + QuotedStr('Kurum');
     datalar.QuerySelect(ado,sql);
     TopluDataset.Dataset1 := ado;

     ado1 := TADOQuery.Create(nil);
     try
       ado1.close;
       ado1.SQL.Clear;

       ado2 := TADOQuery.Create(nil);
       try
         ado3 := TADOQuery.Create(nil);
         try
           sql := ' select *,dr.tanimi doktorAdi from Recete R ' +
                    'left join receteDetay D on R.id = D.ReceteId ' +
                    'left join hasta_gelisler g on g.dosyaNO = R.dosyaNo and g.gelisNo = R.gelisNo ' +
                    'left join OSGB_MASTER.DBO.ilacListesi I on I.barkod = D.ilacKodu ' +
                    'left join HastaKart H on H.dosyaNo = R.dosyaNo ' +
                    'left join SIRKETLER_TNM S on S.sirketKod = h.sirketKod ' +
                    'left join doktorlarT dr on dr.kod = r.doktor ' +
                    'where R.id = ' + ReceteId +
                    ' order by R.id';

           datalar.QuerySelect(ado1,sql);
           TopluDataset.Dataset2 := ado1;


           sql := 'select rd.ilacAdi,ria.aciklama from recete r ' +
                  ' left join receteDetay rd on rd.receteId = r.id ' +
                  ' left join ReceteIlacAciklama ria on ria.receteDetayId = rd.id ' +
                  ' where r.id = ' + ReceteId;

           datalar.QuerySelect(ado2,sql);
           TopluDataset.Dataset3 := ado2;


           sql := 'select taniKodu,rt.tani from recete r ' +
                  ' left join receteTani rt on rt.receteId = r.id ' +
                  ' where r.id = ' + ReceteId;

           datalar.QuerySelect(ado3,sql);
           TopluDataset.Dataset4 := ado3;


           PrintYap('050','\Reçete',inttoStr(TagfrmHastaRecete) ,TopluDataset,Yazdirma);
         finally
           ado3.free;
         end;
       finally
         ado2.free;
       end;
     finally
       ado1.Free;
     end;
   finally
     ado.Free;
   end;

end;

procedure TfrmTopluHastaRecete.TopPanelButonClick(Sender: TObject);
var
  sql,tip,t2,islem : string;
  t1 : Tdate;
  st : Tstrings;
  ado : TADOQuery;
begin

  DurumGoster(True,False,KayitYukleMesaj);
  try
   sql := 'exec sp_DoktorReceteList @doktor = ' + QuotedStr(datalar.doktorKodu) + ',' +
                                   '@tarih1 = ' + txtTopPanelTarih1.GetSQLValue('YYYY-MM-DD') + ',' +
                                   '@tarih2 = ' + txtTopPanelTarih2.GetSQLValue('YYYY-MM-DD') + ',' +
                                   '@sirketKod = ' + QuotedStr(datalar.AktifSirket);

   datalar.QuerySelect(ADO_Recete,sql);

  finally
    DurumGoster(False);
  end;

end;

procedure TfrmTopluHastaRecete.btnIptalClick(Sender: TObject);
begin
  inherited;
 //pnlUzmanTarihUpdate.Visible := false;
end;

procedure TfrmTopluHastaRecete.btnUzmanMYazdirClick(Sender: TObject);
begin
    (*
    frmRapor.topluset.Dataset0 := AD;
    frmRapor.raporData1(frmRapor.topluset ,'200T','\Uzman Muayene Tutanak(Toplu)');
    frmRapor.ShowModal;
    *)
end;

procedure TfrmTopluHastaRecete.cxButtonCClick(Sender: TObject);
var
 TopluDataset : TDataSetKadir;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
 x : integer;
 dosyaNo ,ReceteId,tel,msj,EreceteNo,hasta,sonuc : string;
 SS : TStringList;
begin
  inherited;

  if ADO_Recete.Eof then exit;

  GirisFormRecord.F_ResourceID_ := ADO_Recete.FieldByName('id').AsString;
  GirisFormRecord.F_dosyaNo_ := ADO_Recete.FieldByName('dosyaNo').AsString;;
  GirisFormRecord.F_gelisNo_ := ADO_Recete.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_HastaAdSoyad_ := ADO_Recete.FieldByName('HASTAADI').AsString + ' ' +
                                     ADO_Recete.FieldByName('HASTASOYADI').AsString;

  DurumGoster;
  try
    case Tcontrol(sender).tag of
   -7  : begin
            DurumGoster(True,False,'Hastanýn Reçeteleri Yükleniyor...');
            F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet);
            F._foto_ := _foto_;
            if F <> nil then F.ShowModal;
            DurumGoster(False,False);
         end;

   -11 : begin
              ReceteKaydet;
            end;

   -12 : begin
           stop := 0;
           for x := 0 to gridHastalar.Controller.SelectedRowCount - 1 do
           begin
               Application.ProcessMessages;
               if stop = 1 then break;
               ReceteId := gridHastalar.DataController.GetValue(
                                              gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('id').Index);
               dosyaNo := gridHastalar.DataController.GetValue(
                                              gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('dosyaNo').Index);

               if gridHastalar.Controller.SelectedRowCount = 1
               Then
                Yazdir(dosyaNo,ReceteId)
               Else
                Yazdir(dosyaNo,ReceteId,pTYazdir);
           end; // for end
         end;

   -13 : begin
            if mrYes = ShowMessageSkin('E-Reçete Numaranýz SMS ile Bildirilecek','','','msg')
            then begin
                 for x := 0 to gridHastalar.Controller.SelectedRowCount - 1 do
                 begin
                    Application.ProcessMessages;
                    tel := varToStr(gridHastalar.DataController.GetValue(
                                                    gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('Ev_Tel1').Index));
                    EreceteNo := gridHastalar.DataController.GetValue(
                                                    gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('ereceteNo').Index);
                    dosyaNo := gridHastalar.DataController.GetValue(
                                                    gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('dosyaNo').Index);
                    hasta := gridHastalar.DataController.GetValue(
                                                    gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('HASTAADI').Index) + ' ' +
                              gridHastalar.DataController.GetValue(
                                                    gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('HASTASOYADI').Index);

                    msj := 'E-Reçete Numaranýz : ' + EreceteNo + #13 + ' Saðlýklý Günler Dileriz';
                    if tel = ''
                    then begin
                      ShowMessageSkin('Mobil Telefon boþ olmamalýdýr','','','info');
                      exit;
                    end;
                    sonuc := SMSGonder(tel,msj);
                    SS := TStringList.Create;
                    ExtractStrings(['|'], [], PChar(sonuc),SS);
                    try
                      if SS[1] = '200'
                      Then begin
                        datalar.QueryExec('update recete set HastaBildirim = 1 where eReceteNo = ' + QuotedStr(EreceteNo));
                        txtLog.Lines.Add('Ýþlem Baþarýlý ,SMS Gönderildi E-ReçeteNo: ' + EreceteNo);
                      end
                      Else
                       txtLog.Lines.Add('E-ReçeteNo: ' + EreceteNo + ' - Sonuç : ' + Sonuc);
                      // ShowMessageSkin('Hata : ' + SS[2] ,'','','info');
                    finally
                      SS.free;
                    end;

                 end;


              end;
         end;
    end;
  finally
    DurumGoster(False);
  end;

end;

procedure TfrmTopluHastaRecete.FormCreate(Sender: TObject);
var
 IC : TcxImageComboKadir;
 C : TcxComboBox;
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;
  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,False,False,False,False,False,False,False,False,False,False);





end;

procedure TfrmTopluHastaRecete.gridHastalarkanahPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
    gridHastalar.DataController.post;

end;

procedure TfrmTopluHastaRecete.gridHastalarSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  inherited;


 // cxGridDBTableView1.DataController.SelectRows(gridHastalar.Controller.SelectedRecords[0].R,
end;                                  //         gridHastalar.Controller.SelectedRecords[0].



procedure TfrmTopluHastaRecete.gridHastalarStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
   if ARecord.Values[20] = '1'
   Then AStyle := cxStyle1;
end;

procedure TfrmTopluHastaRecete.H2Click(Sender: TObject);
var
 r ,satir : integer;
 Form : TGirisForm;
 dosyaNo : string;
begin
   satir := gridHastalar.Controller.SelectedRows[0].RecordIndex;
   dosyaNo := varTostr(gridHastalar.DataController.GetValue(satir,gridHastalar.DataController.GetItemByFieldName('dosyaNo').Index));

   if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
   Then begin
     Form := TGirisForm(FormClassType(TagfrmHastaKart));
     TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := dosyaNo;
     TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
     TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
   end
   Else begin
    Form := FormINIT(TagfrmHastaKart,self,dosyaNo,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
    if Form <> nil then Form.show;
   end;
end;

procedure TfrmTopluHastaRecete.ADO_ReceteAfterScroll(DataSet: TDataSet);
var
  sql : string;
begin
  //labelAd.Caption := hastalar.FieldByName('HASTAADI').AsString + ' ' + hastalar.FieldByName('HASTASOYADI').AsString;


 // ADO_Tetkikler.Active := false;
 // cxGrid2.Visible := False;

end;

end.
