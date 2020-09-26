unit topluGelis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, ComCtrls, Buttons, sBitBtn,
  AdvToolBtn, ExtCtrls, Menus,kadir, Mask,KadirMedula3,GetFormClass, KadirType,
  EditType, InvokeRegistry, Rio, SOAPHTTPClient,SOAPHTTPTrans , WinInet,adodb,
  sComboBox, sCheckBox, cxGraphics, cxControls, cxLookAndFeels,AnaUnit,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxProgressBar, dxSkinsCore,
  dxSkinsDefaultPainters, cxCheckBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,GirisUnit,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, AdvObj,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup,
  cxLabel, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, KadirLabel,
  cxImageComboBox, cxPCdxBarPopupMenu, cxMemo, cxPC , Data_Modul,StrUtils;

type
  TfrmTopluGelis = class(TGirisForm)
    pnlToolBar: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    gridAktif: TAdvStringGrid;
    TabSheet2: TTabSheet;
    txtHatalar: TMemo;
    txtSigortaliTur: TComboBox;
    txtDevredilenKurum: TComboBox;
    pnlGunler: TPanel;
    GroupBox5: TGroupBox;
    Label37: TLabel;
    Label47: TLabel;
    txtPazartesi: TsCheckBox;
    txtSali: TsCheckBox;
    txtCarsamba: TsCheckBox;
    txtPersembe: TsCheckBox;
    txtCuma: TsCheckBox;
    txtCumartesi: TsCheckBox;
    txtPazar: TsCheckBox;
    txtMakinaNo: TEditTyped;
    txtSure: TEditTyped;
    txtSeans: TsComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    sBitBtn5: TsBitBtn;
    sBitBtn6: TsBitBtn;
    PopupMenu1: TPopupMenu;
    H1: TMenuItem;
    L1: TMenuItem;
    T1: TMenuItem;
    S1: TMenuItem;
    G1: TMenuItem;
    A1: TMenuItem;
    GeliTarihineGreHastaListesi1: TMenuItem;
    txtProvizyonTarihi: TcxDateEdit;
    txtSeansNo: TcxComboBox;
    TakipSor: TcxRadioGroup;
    hastaTip: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Sayfa: TcxPageControl;
    SayfaListe: TcxTabSheet;
    SayfaLog: TcxTabSheet;
    cxGrid2: TcxGridKadir;
    Liste: TcxGridDBTableView;
    ListeADSOYAD: TcxGridDBColumn;
    ListeTCKIMLIKNO: TcxGridDBColumn;
    ListedosyaNo: TcxGridDBColumn;
    ListesonGelisno: TcxGridDBColumn;
    ListeGno: TcxGridDBColumn;
    ListeprovizyonTarihi: TcxGridDBColumn;
    ListeSIGORTANO: TcxGridDBColumn;
    ListeBABAADI: TcxGridDBColumn;
    ListeKarneNo: TcxGridDBColumn;
    ListeColumn1: TcxGridDBColumn;
    ListeCINS: TcxGridDBColumn;
    ListeKurum: TcxGridDBColumn;
    ListeColumn2: TcxGridDBColumn;
    ListeDurumS: TcxGridDBColumn;
    ListeGunler: TcxGridDBColumn;
    ListeSeans: TcxGridDBColumn;
    Listedtar: TcxGridDBColumn;
    Listedrapor: TcxGridDBColumn;
    Listedrapgec: TcxGridDBColumn;
    ListeKurumTip: TcxGridDBColumn;
    ListeDurum: TcxGridDBColumn;
    ListeKANG: TcxGridDBColumn;
    ListeSeansGunleri: TcxGridDBColumn;
    ListeYAKINLIK: TcxGridDBColumn;
    Listeyaz3: TcxGridDBColumn;
    ListeBRANS: TcxGridDBColumn;
    ListeornekNo: TcxGridDBColumn;
    ListeCikisOrnekNO: TcxGridDBColumn;
    Listedoktor: TcxGridDBColumn;
    ListemakinaNo: TcxGridDBColumn;
    ListeSeans_1: TcxGridDBColumn;
    ListebitisTarihi: TcxGridDBColumn;
    ListeseansSayi: TcxGridDBColumn;
    ListeraporTakipNo: TcxGridDBColumn;
    ListeColumn3: TcxGridDBColumn;
    ListeEV_ADRES: TcxGridDBColumn;
    ListeEV_TEL1: TcxGridDBColumn;
    ListeSIRANO: TcxGridDBColumn;
    Listesira: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    txtLog: TcxMemo;
    E1: TMenuItem;
    P1: TMenuItem;
    ListeColumn4: TcxGridDBColumn;
    ListeColumn5: TcxGridDBColumn;
    K1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    txtDoktor: TcxImageComboKadir;
    cxLabel4: TcxLabel;
    procedure gridAktifCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure mnSe1Click(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure haksahibi(x : integer);
    procedure haksahibiBosalt(x : integer);

    function SeansDetay(gun : integer ; gunler , Bas , Bit , dosyaNo , gelisNo , doktor , mn , s : string) : boolean;
    procedure gridAktifGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure HTTPRIO1HTTPWebNode1BeforePost(
      const HTTPReqResp: THTTPReqResp; Data: Pointer);
    procedure gridAktifCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure sBitBtn2Click(Sender: TObject);
    function seans : string;
    procedure seansisaretle(seans : string);
    procedure sBitBtn6Click(Sender: TObject);
    procedure gridAktifDblClick(Sender: TObject);
    procedure sBitBtn5Click(Sender: TObject);
    procedure gridAktifCheckBoxMouseUp(Sender: TObject; ACol,
      ARow: Integer; State: Boolean);
    procedure KartTalepClick(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabHizmetEkle;
    procedure cxButtonCClick(Sender: TObject);
    procedure txtProvizyonTarihiPropertiesChange(Sender: TObject);
    procedure Listele(Tag : integer);
    procedure TakipAl;
    procedure SeansOlustur;
    procedure KanAlimTarihiSet;
    procedure GelisAc;
    procedure PasifYap;
    procedure SetData(x : integer);
    procedure SetDataFocused(x: integer);
    procedure ListeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ListeStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);

  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmTopluGelis: TfrmTopluGelis;
  sonSeansTarihi : Tdate;
  dosyaNo,gelisNo,GelisSiraNo,raporTakipNo,AD,doktor,provizyonTarihi,brans,mNo,kanAlimTarihi : string;
  seansGunleri,seansNo,sutKodu : string;
  ilkS,sonS : string;
  ListTip : integer;
  kanAlimDate : TdateTime;

implementation

uses HastaKart;

{$R *.dfm}

function TfrmTopluGelis.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  txtProvizyonTarihi.Date := date;
  sonSeansTarihi := ayliktarih(date);
  cxGrid2.Dataset.Connection := DATALAR.ADOConnection2;
  if not inherited Init(Sender) then exit;
  Result := True;
end;

procedure TfrmTopluGelis.cxButtonCClick(Sender: TObject);
begin
inherited;
  case Tcontrol(sender).Tag of
  -4 : begin
          LabHizmetEkle;
       end;
  -5 : begin
         TakipAl;
       end;
  -6 : begin
        SeansOlustur;
       end;
  -7 : begin
        GelisAc;
       end;
  -8,-9 : begin
             Listele(Tcontrol(sender).Tag);
          end;
  -10 : begin
          KanAlimTarihiSet;
        end;

  -50 : begin
          PasifYap;
        end;

  end;
end;

procedure TfrmTopluGelis.GelisAc;
var
  sql , sonuc,Takip,gelis,error , SonucMesaj , Hata , takipNo,basvuruNo, hasta : string;
  x ,satir : integer;
  ado : TADOQuery;
  mgelis , sonGelis : integer;
  provizyonTarihi : TDate;
begin

  if varToStr(txtDoktor.EditingValue) = ''
  then begin
    ShowMessageSkin('Doktor Seçilmedi','','','info');
    txtDoktor.SetFocus;
    exit;
  end;

       Hata := '';
      // Takipsor.Enabled := false;
       DurumGoster(True,True,islemYapiliyor,Liste.Controller.SelectedRowCount - 1);
  try
    //  datalar.ADOConnection2.BeginTrans;
     // try
           pbar.Properties.Max := Liste.Controller.SelectedRowCount;
           pbar.Position := 0;

           for x := 0 to Liste.Controller.SelectedRowCount - 1 do
           begin
             satir := Liste.Controller.SelectedRows[x].RecordIndex;
             provizyonTarihi := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('provizyonTarihi').Index);
              (*
               hasta := Liste.DataController.GetValue(x,Liste.DataController.GetItemByFieldName('ADSOYAD').Index);
               mgelis := Liste.DataController.GetValue(x,Liste.DataController.GetItemByFieldName('Gno').Index);
               sonGelis := Liste.DataController.GetValue(x,Liste.DataController.GetItemByFieldName('sonGelisno').Index);

               if sonGelis >= mgelis then begin
                 txtLog.Lines.Add(Hasta + ' açýlacak geliþ var veya daha sonrasý için geliþi var');
                 Continue;
               end;
                *)

               Application.ProcessMessages;
               pbar.Position := pbar.Position + 1;

               setData(x);
               SonucMesaj := SonucMesaj + ' ' + AD + ' - ' + dosyaNo + ' Ýþlem Baþlatýldý ';
                 sql := 'select * from Hasta_gelisler where dosyaNo = ' + QuotedStr(dosyaNo) +
                        ' and BHDAT = ' + QuotedStr(FormatDateTime('YYYYMMDD',provizyonTarihi));
              //   datalar.QuerySelect(sql);
                 //ShowMessageSkin('Bu Hastanýn Bulunduðunuz Aya Ait Bir Seans Geliþi Bulunmaktadýr, Tekrar Açamazsýnýz...','','','info');
                 if not datalar.QuerySelect(sql).Eof then Continue;

                 (*
                 if TakipSor.ItemIndex = 0
                 Then Begin
                      haksahibiBosalt(satir);
                      haksahibi(satir);

                    //  sonuc := TakipAl_3KimlikDorulama(datalar.Bilgi,datalar.HastaKabul,False);
                      datalar.HastaKabulWS.TakipAl_3KimlikDorulama;
                      if datalar.HastaKabulWS.Cevap.sonucKodu = '0000'
                      Then begin
                            takipNo := datalar.HastaKabulWS.Cevap.takipNo;
                            basvuruNo := datalar.HastaKabulWS.Cevap.hastaBasvuruNo;
                            if datalar.HastaKabulWS.GirisParametre.devredilenKurum <> datalar.HastaKabulWS.Cevap.hastaBilgileri.devredilenKurum
                            Then Begin
                              sql := 'update hastakart set DURUM = ' + QuotedStr(datalar.HastaKabulWS.Cevap.hastaBilgileri.sigortaliTuru) +
                                    ',KurumTip = ' + QuotedStr(datalar.HastaKabulWS.Cevap.hastaBilgileri.devredilenKurum) +
                                    ' where dosyaNO = ' + QuotedStr(dosyaNo);
                              datalar.QueryExec(sql);
                            End;
                      End
                      Else
                        Hata := ' Hata ' + datalar.HastaKabulWS.Cevap.sonucMesaji;
                      // SonucMesaj := SonucMesaj + ' Takip Alýnamadý : ' + datalar.HastaKabulWS.Cevap.sonucMesaji;
                        SonucMesaj := SonucMesaj + ' ' + AD +' Takip Sonucu :' + sonuc + ' ' + datalar.HastaKabulWS.Cevap.takipNo;
                 End;
                 *)
                     DATALAR.ADOConnection2.BeginTrans;
                     try
                     sql := 'exec sp_HastaGelisKaydet ' +
                            '@dosyaNo = ' + #39 + dosyaNo + #39 + ',' +
                            '@gelisNo = ' + '0' + ',' +
                            '@BHDAT = ' + #39 + FormatDateTime('YYYYMMDD', provizyonTarihi) + #39 + ',' +
                            '@doktor = ' + #39 + varToStr(txtdoktor.EditingValue) + #39 + ',' +
                            '@SERVIS = ' + #39 + datalar.KurumBransi + #39 + ',' +
                            '@TEDAVITURU = ' + #39 + 'G' + #39 + ',' +
                            '@HastaTop = 0 ,' +
                            '@KurumTop = 0 ,' +
                            '@Kullanici = ' + #39 + datalar.username + #39 + ',' +
                            '@DIYALIZOR = ' + QuotedStr('') + ',' +
                            '@GIRISYOLU = ' + QuotedStr('') + ',' +
                            '@TakipNo = '   + QuotedStr(takipNo) + ',' +
                            '@basvuruNo = ' + QuotedStr(basvuruNo) + ',' +
                            '@kanAlimTarihi = ' + QuotedStr(FormatDateTime('YYYY-MM-DD HH:MM', StrToDateTime(kanAlimTarihi))) ;

                       datalar.QuerySelect(sqlRun,sql);
                       gelis := sqlRun.fieldbyname('Gelis').AsString;
                       error := sqlRun.fieldbyname('error').AsString;
                     except
                       Datalar.ADOConnection2.RollbackTrans;
                     end;


                       if gelis = '-1'
                       then begin
                          //ShowMessageSkin(error,'','','info');
                         // raise Exception.Create(error);
                          if Datalar.ADOConnection2.InTransaction then Datalar.ADOConnection2.RollbackTrans;
                          Hata := ' Hata ';
                          SonucMesaj := SonucMesaj + ' Gelis Açýlamadý : ' + error;
                          txtLog.Lines.Add(Hata + ' ' + SonucMesaj);
                          Continue;
                       end
                       else
                       begin
                        gelisSiraNo := sqlRun.fieldbyname('GelisSIRANO').AsString;
                        if Datalar.ADOConnection2.InTransaction then Datalar.ADOConnection2.CommitTrans;
                       end;
                      SonucMesaj := SonucMesaj + '  Gelis Açýldý ';
                      Takip := '';
                      txtLog.Lines.Add(Hata + ' ' + SonucMesaj);


                   (*

                     if sureKontrol
                     then begin
                        if Raporgecerlimi(dosyaNo) = 0
                        then begin
                           txtHatalar.Lines.Add('Dikkat , Rapor Bitiþ Tarihi Dolmuþtur. Yeni Rapor Giriþi Yapmadan Seans Geliþi Açamazsýnýz...!');
                        end else
                        if Raporgecerlimi(dosyaNo) <> -1
                        then begin
                            txtHatalar.Lines.Add('Dikkat , Rapor Bitiþ Tarihi Dolmak Üzere ,Kalan gun :' + floattostr(RaporGecerlimi(dosyaNo)));
                           end;
                     end;
                     *)

           end; // for end

        //  datalar.ADOConnection2.CommitTrans;
         // ShowMessageSkin('Geliþler Açýldý','','','info');
         // Takipsor.Enabled := true;
   //   except on e : Exception do
   //     begin
   //         datalar.ADOConnection2.RollbackTrans;
   //         ShowMessageSkin('Hata Oluþtu : ' + e.Message,'','','info');
            //exit;
  //      end;
   //   end;

  finally
    DurumGoster(False);
  end;


end;


procedure TfrmTopluGelis.KanAlimTarihiSet;
var
  x : integer;
  gelis , sonuc ,sql : string;
begin

  Takipsor.Enabled := false;
  DurumGoster(True,True,islemYapiliyor,Liste.Controller.SelectedRowCount - 1);
  try
       for x := 0 to Liste.Controller.SelectedRowCount - 1 do
       begin
           Application.ProcessMessages;
           pbar.Position := pbar.Position + 1;

           setData(x);

           sql := 'update hareketler set kanalindimi = 0 ' +
            			' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo + ' and Tip = ''S'' '
                  +
                  ' update hareketler set kanalindimi = 1 ' +
            			' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo + ' and Tarih = ' + QuotedStr(tarih(kanAlimTarihi)) + ' and Tip = ''S'' '
                  +
                  ' update hasta_gelisler set KanAlimZamani =  ' +
                  ' from hasta_gelisler g ' +
                  ' join hastakart hk on hk.dosyaNO = g.dosyaNo ' +
                  ' dbo.KanAlimTarihi(hk.SeansGunleri,' + txtSeansNo.Text + ',' + QuotedStr(tarih(kanAlimTarihi))  + ',hk.seans)' +

            			' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;


           datalar.QueryExec(sql);
       end;

       ShowMessageSkin('Kan Alým Tarihleri Ayarlandý ','','','info');

  finally
    DurumGoster(False);
    Takipsor.Enabled := True;
  end;



end;


procedure TfrmTopluGelis.SeansOlustur;
var
  x : integer;
  gelis , sonuc ,sql : string;
begin

  Takipsor.Enabled := false;
  DurumGoster(True,True,islemYapiliyor,Liste.Controller.SelectedRowCount - 1);
  try
       for x := 0 to Liste.Controller.SelectedRowCount - 1 do
       begin
           Application.ProcessMessages;
           pbar.Position := pbar.Position + 1;

           setData(x);

           sql := 'exec sp_hastaSeansIsle ' + QuotedStr(dosyaNo) + ',' +
                                              gelisNo + ',' +
                                              QuotedStr(tarih(kanAlimTarihi));
           datalar.QueryExec(sql);
       end;

       ShowMessageSkin('Seanslar Oluþturuldu','','','info');

  finally
    DurumGoster(False);
    Takipsor.Enabled := True;
  end;



end;

procedure TfrmTopluGelis.SetData(x: integer);
var
  satir : integer;
begin
   if Liste.Controller.SelectedRowCount = 0 then exit;
   satir := Liste.Controller.SelectedRows[x].RecordIndex;
   dosyaNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
   gelisNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('GNo').Index));
   raporTakipNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('raporTakipNo').Index));
   gelisSiraNo :=  varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('SIRANO').Index));
   doktor := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('doktor').Index));
   AD := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('ADSOYAD').Index));
   provizyonTarihi := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('provizyonTarihi').Index));
   kanAlimTarihi := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('KanAlimTarihi').Index));
//   kanAlimDate := varTStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('KanAlimTarihi').Index))
   brans := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('brans').Index));
   seansGunleri := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('SeansGunleri').Index));
   mNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('makinaNo').Index));
   seansNo := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Seans').Index));
   sutKodu := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('butKodu').Index));

end;

procedure TfrmTopluGelis.SetDataFocused(x: integer);
var
  satir : integer;
begin
   if Liste.Controller.SelectedRowCount = 0 then exit;
   satir := x;
   dosyaNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
   gelisNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('GNo').Index));
   raporTakipNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('raporTakipNo').Index));
   gelisSiraNo :=  varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('SIRANO').Index));
   doktor := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('doktor').Index));
   AD := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('ADSOYAD').Index));
   provizyonTarihi := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('provizyonTarihi').Index));
   brans := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('brans').Index));
   seansGunleri := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('SeansGunleri').Index));
   mNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('makinaNo').Index));
   seansNo := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Seans').Index));
   sutKodu := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('butKodu').Index));

end;

procedure TfrmTopluGelis.TakipAl;
var
  x ,satir : integer;
  sonuc , sql , msj , takip , basvuru : string;
  kurum,sigortaliTuru,provizyonTarihi,TC,Brans,Tel,Adres : string;
  ado : TADOQuery;
begin

   Takipsor.Enabled := false;
   DurumGoster(True,True,islemYapiliyor,-1,Liste.Controller.SelectedRowCount);
   try
       for x := 0 to Liste.Controller.SelectedRowCount - 1 do
       begin
          Application.ProcessMessages;
          pbar.Position := pbar.Position + 1;

       //   setData(x);
           satir := Liste.Controller.SelectedRows[x].RecordIndex;
           dosyaNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
           gelisNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('GNo').Index));
           raporTakipNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('raporTakipNo').Index));
           gelisSiraNo :=  varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('SIRANO').Index));
           doktor := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('doktor').Index));
           AD := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('ADSOYAD').Index));
           provizyonTarihi := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('provizyonTarihi').Index));
           kanAlimTarihi := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('KanAlimTarihi').Index));
           brans := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('brans').Index));
           seansGunleri := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('SeansGunleri').Index));
           mNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('makinaNo').Index));
           seansNo := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Seans').Index));
           sutKodu := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('butKodu').Index));

           haksahibiBosalt(x);
         // haksahibi(x);

           kurum := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('kurumTip').Index));
           sigortaliTuru := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index));
           TC := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TCKIMLIKNO').Index);
           Brans := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Brans').Index);
           Tel := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('EV_TEL1').Index));
           Tel := trim(StringReplace(StringReplace(StringReplace(Tel,'(','',[rfReplaceAll]),')','',[rfReplaceAll]),'-','',[rfReplaceAll]));

           Adres := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('EV_ADRES').Index));
           provizyonTarihi := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('provizyonTarihi').Index);

          sql := 'select * from Hasta_gelisler where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo + ' and isnull(TakipNO,'''') = ' + QuotedStr('');
          ado := datalar.QuerySelect(sql);
          datalar.HastaKabulWS.Cevap := nil;
          datalar.HastaKabulWS.SysTakipNo := '';
          datalar.HastaKabulWS.SysTakipNoMsj := '';
          datalar.HastaKabulWS.SysTakipNoCevapMsj := '';
          if not ado.Eof
          then begin
             datalar.HastaKabulWS.GirisParametre.saglikTesisKodu := datalar._kurumKod;
             datalar.HastaKabulWS.GirisParametre.takipTipi := 'N';
             datalar.HastaKabulWS.GirisParametre.tedaviTuru := 'G';
             datalar.HastaKabulWS.GirisParametre.tedaviTipi := '1';
             datalar.HastaKabulWS.GirisParametre.provizyonTipi := 'N';
             datalar.HastaKabulWS.GirisParametre.devredilenKurum := kurum;
             datalar.HastaKabulWS.GirisParametre.provizyonTarihi := provizyonTarihi;
             datalar.HastaKabulWS.GirisParametre.sigortaliTuru := sigortaliTuru;
             datalar.HastaKabulWS.GirisParametre.hastaTCKimlikNo := TC;
             datalar.HastaKabulWS.GirisParametre.bransKodu := Brans;
             datalar.HastaKabulWS.GirisParametre.takipNo := '';
             datalar.HastaKabulWS.GirisParametre.hastaTelefon :=   Tel;
             datalar.HastaKabulWS.GirisParametre.hastaAdres :=   TrtoEng(Adres);

             datalar.HastaKabulWS.UserName := datalar._username;
             datalar.HastaKabulWS.Password := datalar._sifre;
             datalar.HastaKabulWS.saglikNetUsername := datalar._userSaglikNet2_;
             datalar.HastaKabulWS.salikNetPassword := datalar._passSaglikNet2_;

             (*
             //systakipno alma iþlemimi
             datalar.HastaKabulWS.SysTakipNoMsj := '';
             datalar.HastaKabulWS.SysTakipAl := True;

             if ado.FieldByName('sysTakipNo').AsString = ''
             then begin
               datalar.HastaKabulWS.HastaneRefNo := ado.FieldByName('SIRANO').AsString;
               sql := 'exec sp_SaglikNetOnlineHastaKayitXML ' + QuotedStr(dosyaNo) + ',' + gelisNo;
               datalar.HastaKabulWS.SysTakipNoMsj := datalar.QuerySelect(sql).FieldByName('SYSMessage').AsString;
             end
             else
              datalar.HastaKabulWS.SysTakipAl := False;
             //systakipno alma iþlemimi
               *)
             datalar.HastaKabulWS.TakipAl_3KimlikDorulama;

             HastaKayitSonucYaz(datalar.HastaKabulWS.S0,datalar.HastaKabulWS.S1,datalar.HastaKabulWS.S2,datalar.HastaKabulWS.HastaneRefNo);

             if datalar.HastaKabulWS.Cevap.sonuckodu = '0543'
             then begin
                 msj := datalar.HastaKabulWS.Cevap.sonucMesaji;
                 takip := copy(msj,pos('[',msj)+1,7);
                 datalar.HastaKabulWS.TakipOkuGiris.saglikTesisKodu := datalar._kurumKod;
                 datalar.HastaKabulWS.TakipOkuGiris.takipNo := takip;
                 datalar.HastaKabulWS.KabulOku;
                 basvuru := datalar.HastaKabulWS.Takip.hastaBasvuruNo;
                 sql := 'Update Hasta_Gelisler ' +
                        ' set TakipNo = ' + QuotedStr(takip) +
                        ',BasvuruNo = ' + QuotedStr(basvuru) +
                        ' where DosyaNo = ' + QuotedStr(dosyaNo) + ' and GelisNo = ' + gelisNo;
                 datalar.QueryExec(sql);
             end
             else
             if (datalar.HastaKabulWS.Cevap.sonucKodu = '0000')
                or
                (datalar.HastaKabulWS.Cevap.sonucKodu = '9000')
             Then begin
                    sql := 'update Hasta_gelisler ' +
                           ' set TakipNo = ' + QuotedStr(datalar.HastaKabulWS.Cevap.TakipNo) +
                           ',basvuruNo = ' + QuotedStr(datalar.HastaKabulWS.Cevap.hastaBasvuruNo) +

                           ifThen(datalar.HastaKabulWS.SysTakipNo = '','',',sysTakipNo = ' + QuotedStr(datalar.HastaKabulWS.SysTakipNo)) +

                           ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;

                    datalar.QueryExec(sql);
                    txtLog.Lines.Add(AD + ' : ' + datalar.HastaKabulWS.Cevap.TakipNo +
                                     ' Baþvuru : ' + datalar.HastaKabulWS.Cevap.hastaBasvuruNo + ' - ' +
                                     ifThen(datalar.HastaKabulWS.SysTakipAl = True,
                                             'SysTakipNo : ' + datalar.HastaKabulWS.SysTakipNo + ' - Sonuc : ' + datalar.HastaKabulWS.SysTakipNoCevapMsj
                                     ));




             End
             else
                    txtLog.Lines.Add(AD + ' : ' + datalar.HastaKabulWS.Cevap.sonucMesaji);


          end;

       end;

   finally
     DurumGoster(False);
     Takipsor.Enabled := True;
     ado.free;
   end;
end;


procedure TfrmTopluGelis.ListeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
//  SetDataFocused(AFocusedRecord.Index);
end;

procedure TfrmTopluGelis.Listele(Tag : integer);
var
   sql : string;
   x : integer;
begin
  ilkS := tarih(txtProvizyonTarihi.text);
  sonS := tarih(datetostr(ayliktarih(txtProvizyonTarihi.Date)));
  ListTip := Tag;

  if Tag = -8
  then
   sql := 'exec er_aphastalistesi ''1''' + ',' + QuotedStr(ilkS) + ',' +
           QuotedStr(sonS) + ',' + QuotedStr(txtSeansNo.Text) + ',' + QuotedStr(copy(hastaTip.Text,1,1)) +
           ',' + QuotedStr(datalar.AktifSirket)
  else
   sql := 'exec er_aphastalistesiGelis ''1''' + ',' + QuotedStr(ilkS) + ',' + QuotedStr(sonS) + ',' +
           QuotedStr(txtSeansNo.Text) + ',' + QuotedStr(copy(hastaTip.Text,1,1)) + ',' + QuotedStr(datalar.AktifSirket);


   cxGrid2.Dataset.Active := False;
   cxGrid2.Dataset.SQL.Text := sql;
   cxGrid2.Dataset.Active := True;

  // datalar.QuerySelect(cxGrid2.Dataset,sql);

//   Liste.DataController.SelectRows(0,0);
 //  SetDataFocused(0);

 (*

   Grid_Temizle(gridAktif);
   for x := 1 to sqlRun.RecordCount do
   begin
       gridAktif.Cells[1,x] := sqlRun.fieldbyname('dosyaNo').AsString;
       gridAktif.AddCheckBox(1,x,false,false);
       gridAktif.Cells[2,x] := sqlRun.fieldbyname('Gno').AsString;
       gridAktif.Cells[3,x] := sqlRun.fieldbyname('ADSOYAD').AsString;
       gridAktif.Cells[4,x] := sqlRun.fieldbyname('BRANS').AsString;
       gridAktif.Cells[5,x] := 'G';
       gridAktif.Cells[6,x] := sqlRun.fieldbyname('provizyontarihi').AsString;
       gridAktif.Cells[7,x] := sqlRun.fieldbyname('TCKIMLIKNO').AsString;
       gridAktif.Cells[8,x] := sqlRun.fieldbyname('SIGORTANO').AsString;
       gridAktif.Cells[9,x] := sqlRun.fieldbyname('KarneNo').AsString;
       gridAktif.Cells[10,x] := sqlRun.fieldbyname('Durum').AsString;
       gridAktif.Cells[11,x] := sqlRun.fieldbyname('KurumTip').AsString;
       gridAktif.Cells[12,x] := sqlRun.fieldbyname('bitisTarihi').AsString;
       gridAktif.Cells[15,x] := sqlRun.fieldbyname('seansGunleri').AsString;
       gridAktif.cells[16,x] := sqlRun.fieldbyname('Doktor').AsString;
       gridAktif.cells[17,x] := sqlRun.fieldbyname('makinaNo').AsString;
       gridAktif.cells[18,x] := sqlRun.fieldbyname('Seans').AsString;
       gridAktif.cells[19,x] := sqlRun.fieldbyname('raporTakipNo').AsString;
       gridAktif.cells[20,x] := sqlRun.fieldbyname('SIRANO').AsString;
       gridAktif.cells[38,x] := sqlRun.fieldbyname('dtar').AsString;
       gridAktif.Cells[39,x] := sqlRun.fieldbyname('KANG').AsString;
       gridAktif.Cells[40,x] := sqlRun.fieldbyname('seansSayi').AsString;

       gridAktif.Cells[41,x] := sqlRun.fieldbyname('EV_ADRES').AsString;
       gridAktif.Cells[42,x] := sqlRun.fieldbyname('EV_TEL1').AsString;

       gridAktif.Cells[13,x] := ilkS;
       gridAktif.Cells[14,x] := sonS;

       gridAktif.Cells[25,x] := '';

       if sureKontrol
       then begin
          if (Raporgecerlimi(gridAktif.Cells[1,x]) = 0)
             and ((gridAktif.Cells[40,x] = '2') or (gridAktif.Cells[40,x] = '4'))
          then begin
            SatiriRenklendir(gridAktif,x,25,clRed);
            txtHatalar.Lines.Add(gridAktif.Cells[3,x] +  ' : Dikkat , Rapor Bitiþ Tarihi Dolmuþtur. Yeni Rapor Giriþi Yapmadan Seans Geliþi Açamazsýnýz...!');
            gridAktif.Cells[100,x] := 'RB';

          end else
          if (Raporgecerlimi(gridAktif.Cells[1,x]) <> -1)
          and ((gridAktif.Cells[40,x] = '2') or (gridAktif.Cells[40,x] = '4'))
          then begin
              SatiriRenklendir(gridAktif,x,25,clYellow);
              txtHatalar.Lines.Add(gridAktif.Cells[3,x] + ' : Dikkat , Rapor Bitiþ Tarihi Dolmak Üzere ,Kalan gun :' + floattostr(RaporGecerlimi(gridAktif.Cells[1,x])));
              gridAktif.Cells[100,x] := 'RBU';
          end
          else
          if (Raporgecerlimi(gridAktif.Cells[1,x]) = -2)
          and ((gridAktif.Cells[40,x] = '2') or (gridAktif.Cells[40,x] = '4'))
          then begin
              SatiriRenklendir(gridAktif,x,25,clAqua);
              txtHatalar.Lines.Add(gridAktif.Cells[3,x] + ' : Dikkat , Rapor Bitiþ Tarihi Dolmak Üzere ,Kalan gun :' + floattostr(RaporGecerlimi(gridAktif.Cells[1,x])));
              gridAktif.Cells[100,x] := 'RBY';
          end
          else
            gridAktif.Cells[100,x] := '';

       end;


       sqlRun.Next;
       gridAktif.AddRow;

   end;
       *)
end;


procedure TfrmTopluGelis.ListeStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;

  if ListTip = -8
  then
    if ARecord.Values[3] >= ARecord.Values[4]
    then begin
        AStyle := cxStyle1;
    end;


end;

procedure TfrmTopluGelis.LabHizmetEkle;
var
  sql : string;
  ado : TADOQuery;
  x : integer;

begin
   DurumGoster(True,True,islemYapiliyor,Liste.Controller.SelectedRowCount - 1);
   try

       pBar.Position := 0;
       pBar.Properties.Max := Liste.Controller.SelectedRowCount;

       for x := 0 to Liste.Controller.SelectedRowCount - 1 do
       begin
           Application.ProcessMessages;
           pbar.Position := pbar.Position + 1;

           setData(x);

              sql := 'select * from hareketler where dosyaNo = ' + QuotedStr(dosyaNo) +
              ' and gelisNo = ' + gelisNo + ' and Tip = ''L''';
               if datalar.QuerySelect(sql).Eof
               Then begin

                  sql := 'exec sp_hastaLabIsle @dosyaNo = ' + QuotedStr(dosyaNo) + ',' +
                                              ' @gelisNo = ' + gelisNo + ',' +
                                              ' @tarih = ' + QuotedStr(FormatDateTime('YYYYMMDD',(strToDateTime(kanAlimTarihi))));
                  datalar.QueryExec(sql);
               end;

       end;

   finally
    DurumGoster(False);
   end;

end;




function TfrmTopluGelis.seans : string;
var
 _seans1 , _seans2 ,_seans3 , _seans4 , _seans5 ,_seans6 , _seans7 : string;
begin
  if txtPazartesi.Checked then _seans1 := '1' else _seans1 := '0';
  if txtSali.Checked then _seans2 := '1' else _seans2 := '0';
  if txtCarsamba.Checked then _seans3 := '1' else _seans3 := '0';
  if txtPersembe.Checked then _seans4 := '1' else _seans4 := '0';
  if txtCuma.Checked then _seans5 := '1' else _seans5 := '0';
  if txtCumartesi.Checked then _seans6 := '1' else _seans6 := '0';
  if txtPazar.Checked then _seans7 := '1' else _seans7 := '0';
  result := _seans7 + _seans1 + _seans2 + _seans3 + _seans4 + _seans5 + _seans6;
end;


procedure TfrmTopluGelis.seansisaretle(seans : string);
begin
  if copy(seans,2,1) = '1' then txtPazartesi.Checked := true else txtPazartesi.Checked := false;
  if copy(seans,3,1) = '1' then txtSali.Checked := true else txtSali.Checked := false;
  if copy(seans,4,1) = '1' then txtCarsamba.Checked := true else txtCarsamba.Checked := false;
  if copy(seans,5,1) = '1' then txtPersembe.Checked := true else txtPersembe.Checked := false;
  if copy(seans,6,1) = '1' then txtCuma.Checked := true else txtCuma.Checked := false;
  if copy(seans,7,1) = '1' then txtCumartesi.Checked := true else txtCumartesi.Checked := false;
  if copy(seans,1,1) = '1' then txtPazar.Checked := true else txtPazar.Checked := false;
end;

function TfrmTopluGelis.SeansDetay(gun : integer ; gunler , Bas , Bit , dosyaNo , gelisNo , doktor , mn , s : string) : boolean;
var
  _gun , x , y : integer;
  _tarih , _btarih : tDate;
  diyalizor, sql  : string;
  ado : TADOQuery;
begin
     sql := '';
    // gunler := seansgun(dosyaNo);
     //diyalizor := DiyalizorGetir(dosyaNo);
     _btarih := strtodate(Bit);
     y := 1;

     if raporTakipNo = ''
     then begin
       ShowMessageSkin('Hastanýn Aktif Diyaliz Raporu Bulunamadý','','','info');
       exit;
     end;

     for x := 1 to gun do
     begin
        _gun := DayOfWeek(strtodate(Bas));

        if pos(inttostr(_gun),seansgunTo(gunler)) <> 0
        Then Begin 

           sql := 'if not exists(select * from Hareketler where dosyaNo = ' + QuotedStr(dosyaNo)  + ' and tarih = ' + QuotedStr(tarih(Bas)) + ' and Tip = ''S'')' +
                  ' begin ' +
                  'insert into Hareketler (dosyaNo,gelisNo,Tarih,Durum,Doktor,makinaNo,Seans,Tip,gelisSIRANO,raporTakipNo,code) ' +
                  ' values (' + QuotedStr(dosyaNo) + ','
                              + gelisNo + ','
                              + QuotedStr(tarih(Bas)) + ','
                              + '0' + ','
                              + QuotedStr(doktor) + ','
                              + QuotedStr(mn) + ','
                              + QuotedStr(s) + ','
                              + QuotedStr('S') + ','
                              + QuotedStr(GelisSiraNo) + ','
                              + QuotedStr(raporTakipNo) + ','
                              + QuotedStr(sutKodu) +
                              ') end';

           datalar.QueryExec(sql);
           y := y + 1;

        End;
        _tarih := strtodate(Bas);
        _tarih := _tarih + 1;
        Bas := datetostr(_tarih);
        if _tarih > _btarih Then Break;

     end;


     sql := 'update Hasta_Gelisler set GelinenSeans = ' + '0' + ',' +
            'AcilmisSeans = ' + inttostr(y-1) + ',' +
            'CIKTAR = ' + #39 + tarihal(_btarih) + #39 +
            ' where dosyaNo = ' + #39 + dosyaNo + #39 +
            ' and gelisNo = ' + gelisNo;

     datalar.QueryExec(sql);


end;


procedure TfrmTopluGelis.haksahibiBosalt(x : integer);
begin
    datalar.HastaKabulWS.GirisParametre.saglikTesisKodu := datalar._kurumKod;
    datalar.HastaKabulWS.GirisParametre.takipTipi := 'N';
    datalar.HastaKabulWS.GirisParametre.tedaviTuru := 'G';
    datalar.HastaKabulWS.GirisParametre.tedaviTipi := '1';
    datalar.HastaKabulWS.GirisParametre.devredilenKurum := '';
    datalar.HastaKabulWS.GirisParametre.provizyonTipi := '';
    datalar.HastaKabulWS.GirisParametre.sigortaliTuru := '';
    datalar.HastaKabulWS.GirisParametre.hastaTCKimlikNo := '';
    datalar.HastaKabulWS.GirisParametre.bransKodu := '';
    datalar.HastaKabulWS.GirisParametre.takipNo := '';
    datalar.HastaKabulWS.GirisParametre.hastaTelefon :=   '';
    datalar.HastaKabulWS.GirisParametre.hastaAdres :=  '';
end;



procedure TfrmTopluGelis.haksahibi(x : integer);
var
 kurum,sigortaliTuru,provizyonTarihi,TC,Brans,Tel,Adres : string;
 satir : integer;
begin
   if Liste.Controller.SelectedRowCount = 0 then exit;
    satir := Liste.Controller.SelectedRows[x].RecordIndex;
    kurum := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('kurumTip').Index);
    sigortaliTuru := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Durum').Index);
    TC := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('TCKIMLIKNO').Index);
    Brans := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('Brans').Index);
    Tel := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('EV_TEL1').Index);
    Adres := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('EV_ADRES').Index);
    provizyonTarihi := Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('provizyonTarihi').Index);

    datalar.HastaKabulWS.GirisParametre.saglikTesisKodu := datalar._kurumKod;
    datalar.HastaKabulWS.GirisParametre.takipTipi := 'N';
    datalar.HastaKabulWS.GirisParametre.tedaviTuru := 'G';
    datalar.HastaKabulWS.GirisParametre.tedaviTipi := '1';
    datalar.HastaKabulWS.GirisParametre.provizyonTipi := 'N';
    datalar.HastaKabulWS.GirisParametre.devredilenKurum := kurum;
    datalar.HastaKabulWS.GirisParametre.provizyonTarihi := provizyonTarihi;
    datalar.HastaKabulWS.GirisParametre.sigortaliTuru := sigortaliTuru;
    datalar.HastaKabulWS.GirisParametre.hastaTCKimlikNo := TC;
    datalar.HastaKabulWS.GirisParametre.bransKodu := Brans;
    datalar.HastaKabulWS.GirisParametre.takipNo := '';
    datalar.HastaKabulWS.GirisParametre.hastaTelefon :=   Tel;
    datalar.HastaKabulWS.GirisParametre.hastaAdres :=   TrtoEng(Adres);

    datalar.HastaKabulWS.UserName := datalar._username;
    datalar.HastaKabulWS.Password := datalar._sifre;
    //HastaKabul.GirisParametre.yeniDoganBilgisi := nil;


end;


procedure TfrmTopluGelis.gridAktifCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin

     if (gridAktif.Cells[100,arow] <> 'RB') and (gridAktif.Cells[100,arow] <> 'RBY')
     Then Begin

         if state = true
         then begin
              gridAktif.Cells[25,arow] := 'T';

         end;

         if state = false
         then begin
            gridAktif.Cells[25,arow] := 'F';

         end;


     End;


end;

procedure TfrmTopluGelis.mnSe1Click(Sender: TObject);
var
   x : integer;
   secim : boolean;
   _secim : string;
begin

   if TPopupMenu(sender).Tag = 0
   then begin
       secim := True;
       _secim := 'T';
   end else
   begin                                                                              
       secim := False;
       _secim := 'F';
   end;

       for x := 1 to gridAktif.RowCount - 1 do
       begin
            if (gridAktif.Cells[100,x] = 'RB') or (gridAktif.Cells[100,x] = 'RBY')  then Continue;
            gridAktif.SetCheckBoxState(1,x,secim);
            gridAktif.Cells[25,x] := _secim;


       end;

end;

procedure TfrmTopluGelis.PasifYap;
var
  sql,dosyaNo : string;
  satir : integer;
begin
   satir := Liste.Controller.SelectedRows[0].RecordIndex;
   dosyaNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
   datalar.QueryExec('update hastaKart set aktif = 0 where dosyaNO = ' + QuotedStr(dosyaNo));
   cxGrid2.Dataset.Requery();
end;

procedure TfrmTopluGelis.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTopluGelis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmTopluGelis.FormCreate(Sender: TObject);
begin
  Tag := TagfrmTopluGelis;
  TableName := '';
  cxPanel.Visible := false;
  cxTab.Width := 120;

 // setDataStringKontrol(self,cxGrid2,'cxGrid2','',Kolon1,'',-1,-1,alClient);


  txtDoktor.Conn := DATALAR.ADOConnection2;
  txtDoktor.TableName := 'DoktorlarT';
  txtDoktor.Filter := ' durum = ''Aktif'' and sirketKod = ' + QuotedStr(datalar.AktifSirket);


  Kolon2.Visible := False;
  Kolon3.Visible := False;
  Kolon4.Visible := False;

  SayfaCaption('Toplu Geliþ Açma Ýþlemi','','','','');

  //Olustur(self,'','',23);
  Menu := PopupMenu1;
end;

procedure TfrmTopluGelis.gridAktifGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
var
  sql : string;
  ado : TADOQuery;
  x : integer;
begin
    if (acol = 6) or (acol = 13) or (acol = 14)
    then aEditor := edDateEdit;


    if acol = 16
    then begin
            ado := TADOQuery.Create(nil);
            ado.Connection := datalar.ADOConnection2;

            AEditor := edComboList;
            sql := 'select * from DoktorlarT where durum = ''Aktif'' and sirketKod = ' + QuotedStr(datalar.AktifSirket);
            datalar.QuerySelect(ado,sql);
            gridAktif.Combobox.Clear;
            for x := 1 to ado.RecordCount do
            begin
                 gridAktif.AddComboString(ado.Fields[0].asstring + '-' + ado.Fields[1].asstring);
                 ado.Next;
            end;
           ado.Close;
           ado.Free;
    end;

    if acol = 10
    then begin
        AEditor := edComboList;
        gridAktif.Combobox.Clear;
        for x := 0 to txtSigortaliTur.Items.Count do
        begin
          gridAktif.AddComboString(txtSigortaliTur.Items.Strings[x]);

        end;
    end;

    if acol = 11
    then begin
        AEditor := edComboList;
        gridAktif.Combobox.Clear;
        for x := 0 to txtDevredilenKurum.Items.Count do
        begin
          gridAktif.AddComboString(txtDevredilenKurum.Items.Strings[x]);

        end;
    end;

end;

procedure TfrmTopluGelis.H1Click(Sender: TObject);
var
 r ,satir : integer;
 Form : TGirisForm;
begin
   satir := Liste.Controller.SelectedRows[0].RecordIndex;
   dosyaNo := varTostr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));

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


procedure TfrmTopluGelis.txtProvizyonTarihiPropertiesChange(Sender: TObject);
begin
  inherited;
  sonSeansTarihi := ayliktarih(txtProvizyonTarihi.Date);
end;

procedure TfrmTopluGelis.HTTPRIO1HTTPWebNode1BeforePost(
  const HTTPReqResp: THTTPReqResp; Data: Pointer);
var
    TimeOut : integer;

begin

      TimeOut := 10000; // in milleseconds.

      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

      InternetSetOption(Data,
      INTERNET_OPTION_SEND_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(TimeOut));

end;

procedure TfrmTopluGelis.gridAktifCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
//  if (acol = 1) or (acol =2)
//  then canedit := false;

end;

procedure TfrmTopluGelis.sBitBtn2Click(Sender: TObject);
var
  ado : TADOQuery;
  sql : string;
  x : integer;
begin
(*
       ado := TADOQuery.Create(nil);
       ado.Connection := datalar.ADOConnection2;

       for x := 1 to gridAktif.RowCount - 2 do
       begin
          Application.ProcessMessages;
          if gridAktif.Cells[25,x] = 'T'
          then begin
             sql := 'update hastakart set ' +
                    ' kurumTip = ' + QuotedStr(trim(copy(gridAktif.Cells[11,x],1,2))) +
                    ',durum = ' +  QuotedStr(trim(copy(gridAktif.Cells[10,x],1,1))) +
                    ',seansGunleri = ' + QuotedStr(gridAktif.Cells[15,x]) +
                    ',makinaNo = ' + QuotedStr(gridAktif.Cells[17,x]) +
                    ',seans = ' + QuotedStr(gridAktif.Cells[18,x]) +
                    ' where dosyaNo = ' + QuotedStr(gridAktif.Cells[1,x]);
             datalar.QueryExec(ado,sql);
          end;
       end;
       ShowMessageSkin('iþlem Tamamlandý','','','info');
       ado.Free;
       *)
end;

procedure TfrmTopluGelis.sBitBtn6Click(Sender: TObject);
begin

   gridAktif.Cells[15,gridAktif.row] := seans;
   gridAktif.Cells[17,gridAktif.Row] := txtMakinaNo.Text;
   gridAktif.Cells[18,gridAktif.Row] := txtSeans.Text[1];

   pnlGunler.Visible := false;


end;

procedure TfrmTopluGelis.gridAktifDblClick(Sender: TObject);
begin

   if gridAktif.Col = 15
   Then begin
     pnlGunler.Visible := true;
     seansisaretle(gridAktif.Cells[15,gridAktif.row]);
   End;
   
end;

procedure TfrmTopluGelis.sBitBtn5Click(Sender: TObject);
begin

  pnlGunler.Visible := false;

end;

procedure TfrmTopluGelis.gridAktifCheckBoxMouseUp(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
   if gridAktif.cells[100,Arow] = 'RB'
   then gridAktif.SetCheckBoxState(1,Arow,False);
end;

procedure TfrmTopluGelis.KartTalepClick(Sender: TObject);
var
  sql, kurum , tc,ad,dt,kg,kadi , sifre : string;
  ado : TADOQuery;
  x : integer;
  con : string;
begin
(*
   con := 'Provider=SQLOLEDB.1;Password=Guneysu**Rize;Persist Security Info=True;User ID=noktaadmin;Initial Catalog=mavi;Data Source=213.142.141.101';
   sifre := '12345678987654321';

   datalar.ADOConnection1.ConnectionString := con;

   if sifre <> inputbox('Talep þifre','Talep Þifrsini Girin','')
   Then begin
      ShowMessageSkin('Talep Þifresi Kabul Edilmedi','','','info');
      exit;
   End;

   if mryes = ShowMessageSkin('Seçili Hastalara Kart Talebinde Bulunulacak , Emin misiniz ?','','','msg')
   Then Begin
     try
      datalar.ADOConnection1.Connected := true;
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection1;
      datalar.Login;
      for x := 1 to gridAktif.RowCount - 1 do
      Begin
        Application.ProcessMessages;
        gridAktif.Row := x;
        if gridAktif.Cells[25,x] = 'T'
        Then Begin
         kurum := inttostr(datalar._kurumKod);
         tc := gridAktif.Cells[7,x];
         ad := gridAktif.Cells[3,x];
         dt := gridAktif.Cells[38,x];
         kg := gridAktif.Cells[39,x];
         kadi := merkezAdi(kurum);

         sql :=  ' if not exists(select * from HastaKartTalep where kurum = ' + QuotedStr(kurum) + ' and tc = ' + QuotedStr(tc) + ') ' +
                 ' begin ' +
                 '   insert into HastaKartTalep (kurum,tc,adSoyad,dtarih,kangrubu,merkezadi) ' +
                 '   select ' + QuotedStr(kurum) + ',' + QuotedStr(tc) + ',' + QuotedStr(ad) + ',' + QuotedStr(dt) + ',' + QuotedStr(kg) + ',' + QuotedStr(kadi) +
                 '   select ''0'',''Kart Talebi Ýletildi''' +
                 ' end ' +
                 ' else ' +
                 ' select ''1'',''Kart Talebi Mevcut''';

         datalar.QuerySelect(ado,sql);


        End;

      End; // for end

     except on e : Exception do
      begin
        ShowMessageSkin('Hata : ' + e.Message,'','','info');
      end;

     end;  // try end

     datalar.ADOConnection1.Connected := false;

   End;

     *)

end;

end.
