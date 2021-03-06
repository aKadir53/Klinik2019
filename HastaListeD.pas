unit HastaListeD;

interface

uses
  Windows, Messages, SysUtils,StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, StdCtrls,dxLayoutControl, jpeg,
  Buttons,  ExtCtrls, DBGrids,  KadirLabel,Kadir,KadirType,GetFormClass,
  DBGridEh, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Menus,
  cxContainer, cxGroupBox, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxMemo,
  cxPCdxBarPopupMenu, cxPC,GirisUnit, Vcl.ComCtrls, dxtree, dxdbtree,
  dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxSkinBlack, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxImage, cxEditRepositoryItems, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

type
  TfrmHastaListeD = class(TGirisForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    Tip: TcxRadioGroup;
    txtay: TcxComboBox;
    ktip: TcxComboBox;
    DiyalizTip: TcxRadioGroup;
    popupYil: TPopupMenu;
    cxListPanel: TcxGroupBox;
    uyari: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    txtUyariMesaj: TcxMemo;
    Recete: TMenuItemModul;
    edaviKart1: TMenuItemModul;
    SeansKart1: TMenuItemModul;
    Epikriz1: TMenuItemModul;
 //   akipRaporBul1: TMenuItemModul;
 //   SeansTahakkuk1: TMenuItemModul;
    cxHastaListePanelBaslik: TcxGroupBox;
    e1: TMenuItemModul;
    He1: TMenuItemModul;
    He2: TMenuItemModul;
    He3: TMenuItemModul;
    N1: TMenuItem;
    A1: TMenuItem;
    T1: TMenuItem;
    cxGrid2: TcxGridKadir;
    Liste: TcxGridDBTableView;
    TC: TcxGridDBColumn;
    ListeColumn1: TcxGridDBColumn;
    HastaAdi: TcxGridDBColumn;
    HastaSoyadi: TcxGridDBColumn;
    ListeColumn4: TcxGridDBColumn;
    ListeColumn5: TcxGridDBColumn;
    ListeColumn6: TcxGridDBColumn;
    Kilo: TcxGridDBColumn;
    ListeColumn7: TcxGridDBColumn;
    ListeColumn8: TcxGridDBColumn;
    ListeColumn10: TcxGridDBColumn;
    ListeColumn11: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    N2: TMenuItem;
    ListeColumn2: TcxGridDBColumn;
    E2: TMenuItem;
    R1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    HastaYllkTekikCetveli1: TMenuItem;
    ListeColumn3: TcxGridDBColumn;
    H1: TMenuItem;
    M1: TMenuItem;
    E3: TMenuItem;
    H2: TMenuItem;
    T2: TMenuItem;
    T3: TMenuItem;
    H3: TMenuItem;
    ListeColumn9: TcxGridDBColumn;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    ListeColumn12: TcxGridDBColumn;
    ADOQuery1: TADOQuery;
    N5: TMenuItem;
    M2: TMenuItem;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    S1: TMenuItem;
    A2: TMenuItem;
    H4: TMenuItem;
    Asilar: TListeAc;
    S2: TMenuItem;
    T4: TMenuItem;

    procedure TopPanelPropertiesChange(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure btnAraClick(Sender: TObject);
    procedure btnGuncelleClick(Sender: TObject);
    procedure Bilgiler;
    Procedure JSONSend;
    function seciliHastaDosyaNos : string;
    procedure ado_BransKodlariAfterPost(DataSet: TDataSet);
    procedure ListeDblClick(Sender: TObject);
    procedure SeansKart1Click(Sender: TObject);
    procedure edaviKart1Click(Sender: TObject);
    procedure Epikriz1Click(Sender: TObject);
    procedure SeansTahakkuk1Click(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtayPropertiesChange(Sender: TObject);
    procedure ado_BransKodlariAfterOpen(DataSet: TDataSet);
    procedure ado_BransKodlariAfterScroll(DataSet: TDataSet);
    procedure ListeDataControllerFilterRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var Accept: Boolean);
    procedure popupYilPopup(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ListeCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButtonCClick(Sender: TObject);
    procedure ListeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxDonemComboKadir1PropertiesChange(Sender: TObject);
    procedure ListeGetCellHeight(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
    procedure cxEditRepository1ButtonItem1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure M2Click(Sender: TObject);
    procedure S2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

type
  TdxLayoutControlAccess = class(TdxLayoutControl);

const formGenislik = 700;
      formYukseklik = 600;
      FotoTable = 'select * from PersonelFoto where dosyaNo = %s';

var
  frmHastaListeD: TfrmHastaListeD;
  ay1 , ay2  , donemYil ,_Tarih_: string;
implementation
  uses Data_Modul,AnaUnit, HastaListe,MedEczane;// HastaRecete, HastaSeansIsle;
{$R *.dfm}



procedure TfrmHastaListeD.Bilgiler;

begin
    ay1 := txtDonemTopPanel.getValueIlkTarih; //tarihal(ayaditoay(txtAy.Text,donemYil));
    ay2 := txtDonemTopPanel.getValueSonTarih; //tarihal(ayliktarih2(txtAy.Text,donemYil));
    _tarih_ := copy(ay1,1,4);
  //  cxGrid2.Dataset := _Dataset;
end;

procedure TfrmHastaListeD.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmHastaListeD.cxButtonCClick(Sender: TObject);
var
 GirisFormRecord : TGirisFormRecord;
 F : TGirisForm;
 Datasets : TDataSetKadir;
 x , satir : integer;
 dosyaNo , dosyaNos ,sql,_dosyaNos_ : string;
 List : ArrayListeSecimler;
 ado,ado0,ado1,ado2,ado3,ado4,ado5,ado6,ado7,ado8,ado9,ado10,ado11,ado12 : TADOQuery;
 m , ff : string;
begin
  if _Dataset.Eof then exit;

  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  GirisFormRecord.F_dosyaNo_ := _Dataset.FieldByName('dosyaNo').AsString;
  GirisFormRecord.F_gelisNo_ := _Dataset.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_GelisSIRANO := _Dataset.FieldByName('SIRANO').AsString;
  GirisFormRecord.F_provizyonTarihi_ := FormatDateTime('YYYYMMDD', _Dataset.FieldByName('BHDAT').AsDateTime);
  GirisFormRecord.F_HastaAdSoyad_ := _Dataset.FieldByName('HASTAADI').AsString + ' ' +
                                     _Dataset.FieldByName('HASTASOYADI').AsString;
  GirisFormRecord.F_TakipNo_ := _Dataset.FieldByName('TakipNO').AsString;
  GirisFormRecord.F_TC_ := _Dataset.FieldByName('TCKimlikNo').AsString;
  GirisFormRecord.F_Doktor_ := _Dataset.FieldByName('doktor').AsString;
  GirisFormRecord.F_Makina_ := _Dataset.FieldByName('MakinaNo').AsString;
  GirisFormRecord.F_Seans_ := _Dataset.FieldByName('Seans').AsString;
  GirisFormRecord.F_mobilTel_ := _Dataset.FieldByName('EV_TEL1').AsString;
  GirisFormRecord.F_PasifSebeb_ := _Dataset.FieldByName('PasifSebeb').AsString;

  GirisFormRecord.F_Aktif_ := _Dataset.FieldByName('Aktif').AsString;


  GirisFormRecord.F_SeansBilgi.yas := _Dataset.FieldByName('yas').AsString;

  GirisFormRecord.F_SeansBilgi.DiyalizorTipi := _Dataset.FieldByName('DiyalizorTipi').AsString;
  GirisFormRecord.F_SeansBilgi.DiyalizorCinsi := _Dataset.FieldByName('DiyalizorCinsi').AsString;
  GirisFormRecord.F_SeansBilgi.Diyalizat := _Dataset.FieldByName('D').AsString;
  GirisFormRecord.F_SeansBilgi.YA := _Dataset.FieldByName('YA').AsString;
  GirisFormRecord.F_SeansBilgi.Diyalizor := _Dataset.FieldByName('Diyalizor').AsString;
  GirisFormRecord.F_SeansBilgi.GirisYolu := _Dataset.FieldByName('GIRISYOLU').AsString;
  GirisFormRecord.F_SeansBilgi.Heparin := _Dataset.FieldByName('HEPARIN').AsString;
  GirisFormRecord.F_SeansBilgi.HeparinTip := _Dataset.FieldByName('HEPARINTIP').AsString;
  GirisFormRecord.F_SeansBilgi.HeparinUyg := _Dataset.FieldByName('HEPARINUYG').AsString;
  GirisFormRecord.F_SeansBilgi.Igne := _Dataset.FieldByName('Igne').AsString;
  GirisFormRecord.F_SeansBilgi.IgneV := _Dataset.FieldByName('IgneV').AsString;
  GirisFormRecord.F_SeansBilgi.APH := _Dataset.FieldByName('APH').AsString;
  GirisFormRecord.F_SeansBilgi.Na := _Dataset.FieldByName('Na').AsString;


  if _Dataset.RecordCount = 0 then exit;

  case Tcontrol(sender).tag of
 -1 : begin
          F := FormINIT(TagfrmHastaIlacTedavi,GirisFormRecord,ikEvet,'');
          F._foto_ := _foto_;
          if F <> nil then F.ShowModal;
      end;
 -2 : begin
          F := FormINIT(TagfrmHastaSeans,GirisFormRecord,ikHayir,'');
          if F <> nil then F.ShowModal;
      end;
 -3  : begin
          EpikrizYaz(_Dataset.FieldByName('dosyaNo').AsString,_Dataset.FieldByName('gelisNo').AsString,false);
       end;

 -7 : begin
           DurumGoster(True,False,'Hastan�n Re�eteleri Y�kleniyor...');

          try
            F := FormINIT(TagfrmHastaRecete,GirisFormRecord,ikEvet);
            F._foto_ := _foto_;
            if F <> nil then F.ShowModal;
          finally
            DurumGoster(False,False);
          end;







       // ReceteForm(ado_BransKodlari.FieldByName('dosyaNo').AsString,ado_BransKodlari.FieldByName('gelisNo').AsString);
      end;

 -8 : begin
          F := FormINIT(TagfrmRaporDetay,GirisFormRecord,ikEvet,'');
          F._foto_ := _foto_;
          if F <> nil then F.ShowModal;
      end;


 -20,-21 : begin
        //
              DurumGoster(True,False,'�mza F�yleri Y�kleniyor, L�tfen Bekleyiniz');
              try
                Datasets.Dataset3 := datalar.ADO_aktifSirketLogo;
                Datasets.Dataset2 := datalar.ADO_AktifSirket;

                if Tcontrol(sender).tag = -21
                then begin
                  DataSource.Dataset.Filtered := True;
                  DataSource.Dataset.Filter := 'dosyaNO = ' + QuotedStr(GirisFormRecord.F_dosyaNo_);
                end;


                Datasets.Dataset1 := DataSource.Dataset;
                PrintYap('039','�mza F�y�',intTostr(TagfrmHastaListeD),Datasets);
                DataSource.Dataset.Filtered := False;
              finally
                DurumGoster(False);
              end;

       end;
 -37 : begin
          GirisFormRecord.F_provizyonTarihi_ := FormatDateTime('YYYYMMDD', _Dataset.FieldByName('BHDAT').AsDateTime);
          F := FormINIT(TagfrmKanTetkikTakip,GirisFormRecord,ikHayir);
          if F <> nil then F.ShowModal;
       end;

 -90 : begin
         TetkikIlacTedaviYazdir(GirisFormRecord.F_dosyaNo_,ay1);


       end;

-110 : begin
         if datalar.doktorKodu <> ''
         then begin

             try
              F := FormINIT(TagfrmMedEczane,GirisFormRecord,ikHayir,'');
              TfrmMedEczane(F).receteForm := self;
              TfrmMedEczane(F)._user := datalar._doktorReceteUser;
              TfrmMedEczane(F)._pas := datalar._doktorRecetePas;
              if F <> nil then F.ShowModal;

             finally
               F.Free;
             end;
             (*
             if FindTab(AnaForm.sayfalar,TagfrmMedEczane)
             Then begin
               F := TGirisForm(FormClassType(TagfrmMedEczane));
               TGirisForm(FormClassType(TagfrmMedEczane))._dosyaNO_ := '';
               TGirisForm(FormClassType(TagfrmMedEczane))._value_ := 'MedEczane';
               TGirisForm(FormClassType(TagfrmMedEczane))._TC_ := _Dataset.FieldByName('TCKimlikNo').AsString;
               TGirisForm(FormClassType(TagfrmMedEczane))._HastaAdSoyad_ :=   GirisFormRecord.F_HastaAdSoyad_;
               TGirisForm(FormClassType(TagfrmMedEczane)).Init(F);
             end
             Else begin
              F := FormINIT(TagfrmMedEczane,self,GirisFormRecord,'',NewTab(AnaForm.sayfalar,TagfrmMedEczane),ikEvet,'Giri�');
              if F <> nil then F.show;
             end; *)

         end
         else
           ShowMessageSkin('Doktor Kullan�c�s� Olmal�s�n�z','','','info');
       end;

-111 : begin
         if datalar.doktorKodu <> ''
         then
           ENabizDoktorErisim(datalar._userSaglikNet2_,datalar._passSaglikNet2_,_Dataset.FieldByName('TCKimlikNo').AsString,datalar.doktorTC)
         else
         begin
           ShowMessageSkin('Doktor Kullan�c�s� Olmal�s�n�z','','','info');
         end;
       end;
-112 : begin
           F := FormINIT(TagfrmHizliKayit,GirisFormRecord,ikEvet,'Giri�');
           if F <> nil then F.ShowModal;
       end;

-113 : begin
          DurumGoster(True);

          try
            for x := 0 to Liste.Controller.SelectedRowCount - 1 do
            begin
               Application.ProcessMessages;
               satir := Liste.Controller.SelectedRows[x].RecordIndex;
               dosyaNo := varToSTr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
               dosyaNos := dosyaNos + ifthen(dosyaNos = '','',',') + dosyaNo;
            end;

              sql := 'select h.* from hastakart h ' +
                     'where h.dosyaNo in (select datavalue from dbo.strTotable(' + QuotedStr(dosyaNos) + ','',''))' ;

              Datasets.Dataset1 := datalar.QuerySelect(sql);

              Datasets.Dataset2 := datalar.ADO_AktifSirket;
              Datasets.Dataset3 := datalar.ADO_aktifSirketLogo;
              PrintYap('HBP','Hasta Bak�m Plan�','',Datasets,kadirType.pTNone);

          finally
            DurumGoster(False);
          end;
       end;

-100 : begin
              if DirectoryExists('C:\NoktaV3\QR') = False
              then
                MkDir('C:\NoktaV3\QR');

          DurumGoster(True);

          try
            for x := 0 to Liste.Controller.SelectedRowCount - 1 do
            begin
               Application.ProcessMessages;
               satir := Liste.Controller.SelectedRows[x].RecordIndex;
               dosyaNo := varToSTr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
               dosyaNos := dosyaNos + ifthen(dosyaNos = '','',',') + dosyaNo;
               FotoEkle('',dosyaNo);
               QRBarkod('http://185.99.199.39:8079?dosyaNo=' + dosyaNo,'C:\NoktaV3\QR\' + dosyaNo +'.jpg');
               QRYukle(datalar.ADO_FOTO ,'QR','C:\NoktaV3\QR\' + dosyaNo+'.jpg');
            end;

              sql := 'select h.*,p.foto,kg.ADI,I.atc_tanimi,I.aciklama ilacAlerjiAciklama from hastakart h ' +
                     ' join SKRS_KAN_GRUBU kg on kg.EntegrasyonKodu = h.KANGRUBU ' +
                     ' left join Hasta_Ilac_Uyari I on I.dosyaNO = h.dosyaNo ' +
                     'left join PersonelFoto p on h.dosyano = p.dosyano ' +
                     'where h.dosyaNo in (select datavalue from dbo.strTotable(' + QuotedStr(dosyaNos) + ','',''))' ;

              Datasets.Dataset0 := datalar.QuerySelect(sql);
              Datasets.Dataset2 := datalar.ADO_AktifSirket;
              Datasets.Dataset3 := datalar.ADO_aktifSirketLogo;
              PrintYap('PKBT','Hasta Kart Toplu','',Datasets,kadirType.pTNone);

          finally
            DurumGoster(False);
          end;


       end;


     14 : begin
            TedaviKartiYaz(_Dataset.FieldByName('dosyaNo').AsString,_Dataset.FieldByName('gelisNo').AsString,false);

          end;


 10,11,12,13 : begin
             m := 'E';

             case TMenuItem(sender).Tag of
              10 : dosyaNo := '';
              11 : dosyaNO := _Dataset.FieldByName('dosyaNo').AsString;
             end;

             if TMenuItem(sender).Tag in [12]
             then begin
              Datasets.Dataset1 := cxGrid2.Dataset;
              PrintYap('203T','Hasta Tetkik Takip Hepatit Toplu',inttostr(TagfrmHastaListe),Datasets);
             end
             else begin

              DurumGoster(True);

              _dosyaNos_ := seciliHastaDosyaNos;


              try
              ado := TADOQuery.Create(nil);

              if TMenuItem(sender).Tag = 13
              then begin
                m := '6H';
                ff := '1';
              end
              else
              begin
                ff := '-1';
              end;

              sql := 'exec sp_HastaTetkikTakipPIVOTToplu @dosyaNO = ' + QuotedStr(_dosyaNos_) + ' , @yil = ' + QuotedStr(ay1) +
                            ',@marker = ' + QuotedStr(m) + ',@f= ' + ff + ' , @sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                            ',@seans = ' + QuotedStr(txtSeansTopPanel.text);
              datalar.QuerySelect(ado,sql);

              Datasets.Dataset1 := ado;
              Datasets.Dataset2 := datalar.ADO_AktifSirket;
              Datasets.Dataset3 := datalar.ADO_aktifSirketLogo;

              if TMenuItem(sender).Tag = 13
              then begin
                PrintYap('205_6','Son 6 ay Toplu Tetkik Takip',inttostr(TagfrmHastaListe),Datasets);
               end
              else
                PrintYap('205','Toplu Tetkik Takip',inttostr(TagfrmHastaListe),Datasets);


              finally
                DurumGoster(False);
                ado.Free;
              end;

             end;

           end;

   190 : begin
          F := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
          F._Foto_ := _foto_;
          if F <> nil then F.ShowModal;
         end;


 330,9020 : begin
               F := FormINIT(Tcontrol(sender).tag,GirisFormRecord,ikEvet,'Giri�');
               if F <> nil then F.ShowModal;
            end;

     9021 : begin
                DurumGoster(True);
                try
                  List := Asilar.ListeGetir;
                  if Length(List) >  0
                  then
                    if mryes = ShowMessageSkin('Se�ili A��lar , Hastalara uygulanacak','','','msg')
                    then begin
                     sql := 'exec sp_HastaTopluAsiEkle ' + QuotedStr(seciliHastaDosyaNos) + ',' + QuotedStr(ArrayListeSecimlerToSTR(List));
                     datalar.QueryExec(sql);
                    end;
                finally
                  DurumGoster(False);
                end;
            end;

    -50    : begin
               (*
                if mrYEs = ShowMessageSkin('Hastalar�n �lk Seanslar�','Merkezde Ba�lang�� Olarak Ayarlanacak','','msg')
                then begin
                    DurumGoster(True);
                    try
                       datalar.QueryExec('exec sp_ilkSeansTarihiniMerkezdeBaslangicYap @sirketKod = ' + QuotedStr(datalar.AktifSirket));
                    finally
                       DurumGoster(False);
                    end;
                end;
                *)
             end;

  end;
end;

procedure TfrmHastaListeD.cxDonemComboKadir1PropertiesChange(Sender: TObject);
begin
   Bilgiler;
end;

procedure TfrmHastaListeD.cxEditRepository1ButtonItem1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
 GirisFormRecord : TGirisFormRecord;
 F : TGirisForm;
 Datasets : TDataSetKadir;
 ado : TADOQuery;
 x ,satir: integer;
 _dosyaNos_ ,sql,m,dosyaNo : string;
begin

  if _Dataset.Eof then exit;


  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  GirisFormRecord.F_dosyaNo_ := _Dataset.FieldByName('dosyaNo').AsString;
  GirisFormRecord.F_gelisNo_ := _Dataset.FieldByName('gelisNo').AsString;

  case AButtonIndex of
    0 : begin
          EpikrizYaz(_Dataset.FieldByName('dosyaNo').AsString,_Dataset.FieldByName('gelisNo').AsString,false);
        end;
    1 : begin
              DurumGoster(True,False,'�mza F�yleri Y�kleniyor, L�tfen Bekleyiniz');
              try
                Datasets.Dataset3 := datalar.ADO_aktifSirketLogo;
                Datasets.Dataset2 := datalar.ADO_AktifSirket;

                DataSource.Dataset.Filtered := True;
                DataSource.Dataset.Filter := 'dosyaNO = ' + QuotedStr(GirisFormRecord.F_dosyaNo_);

                Datasets.Dataset1 := DataSource.Dataset;

                PrintYap('039','�mza F�y�',intTostr(TagfrmHastaListeD),Datasets);
                DataSource.Dataset.Filtered := False;
              finally
                DurumGoster(False);
              end;
        end;
    2 : begin

                DurumGoster(True);

                satir := Liste.Controller.SelectedRows[0].RecordIndex;
               _dosyaNos_ := ifThen(_dosyaNos_='',_dosyaNos_+'',_dosyaNos_+',') +
                 varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));


                try
                  ado := TADOQuery.Create(nil);
                  sql := 'exec  sp_HastaTetkikTakipPIVOTToplu @dosyaNO = ' + QuotedStr(_dosyaNos_) + ' , @yil = ' + QuotedStr(ay1) +
                                ',@marker = ' + QuotedStr('E') + ',@f= -1 , @sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                                ',@seans = ' + QuotedStr(txtSeansTopPanel.text);
                  datalar.QuerySelect(ado,sql);

                  Datasets.Dataset1 := ado;
                  Datasets.Dataset2 := datalar.ADO_AktifSirket;
                  Datasets.Dataset3 := datalar.ADO_aktifSirketLogo;
                  PrintYap('205','Toplu Tetkik Takip',inttostr(TagfrmHastaListe),Datasets);
                finally
                  DurumGoster(False);
                  ado.Free;
                end;


        end;

  end;


end;

procedure TfrmHastaListeD.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
    Bilgiler;

(*
    ado_BransKodlari.Close;
    ado_BransKodlari.Parameters.ParamByName('ak').Value := Tip.EditValue;
    ado_BransKodlari.Parameters.ParamByName('tip').Value := DiyalizTip.EditValue;
    ado_BransKodlari.Parameters.ParamByName('t').value := ay1;
    ado_BransKodlari.Parameters.ParamByName('t1').value := ay2;
    ado_BransKodlari.Parameters.ParamByName('ktip').value := trim(copy(ktip.Text,1,2));
    ado_BransKodlari.Open;
  *)


end;

procedure TfrmHastaListeD.FormCreate(Sender: TObject);
var
 d : string;
begin
  inherited;

  cxPanel.Visible := false;
 // ToolBar1.Visible := false;

  ClientHeight := AnaForm.ClientHeight - (AnaForm.ToolBar1.Height + AnaForm.dxStatusBar1.Height+50);
  ClientWidth := formGenislik;
  Olustur(self,TableName,'Hasta Listesi',23);

  if datalar.LisansTipDeger = '1'
  then
    E3.Visible := False
  else
    E3.Visible := True;

  Menu := PopupMenu1;
  Tag := TagfrmHastaListeD;

//  TdxLayoutControlAccess(sayfa1_dxLayoutControl1). ScrollBars := ssVertical;
//  TdxLayoutControlAccess(dxLayoutControl1).VScrollBar.Visible := False;

  TopPanel.Visible := True;

 // AktifPasifTopPanel.EditValue := '1';

(*
  KurumTipTopPanel.TableName := 'KURUMLAR_TNM';
  KurumTipTopPanel.DisplayField := 'tanimi';
  KurumTipTopPanel.EditValue := 'KurumKod';
  KurumTipTopPanel.Conn := Datalar.ADOConnection2;
  *)
  KurumTipTopPanel.Filter := '';

  Liste.DataController.DataSource := DataSource;

  txtDonemTopPanel.Yil := copy(FormatDateTime('YYYYMMDD', date()),1,4);
  d := copy(FormatDateTime('YYYYMMDD', date()),5,2);
  txtDonemTopPanel.EditValue := copy(FormatDateTime('YYYYMMDD', date()),5,2);

 // txtay.ItemIndex :=  strtoint(copy(tarihal(date()),5,2))-1;

  ay1 := txtDonemTopPanel.getValueIlkTarih; //tarihal(ayaditoay(txtAy.Text));
  ay2 := txtDonemTopPanel.getValueSonTarih; //tarihal(ayliktarih2(txtAy.Text));
  SayfaCaption('','','','','');

end;

function TfrmHastaListeD.Init(Sender: TObject): Boolean;
var
  seans : string;
begin
   TopPanel.Visible := True;
   TapPanelElemanVisible(True,false,false,false,True,false,True,false,False,True,False,True,False,True,True);
   txtTekTarih.Clear;

   AktifPasifTopPanel.EditValue := '1';
   KurumTipTopPanel.EditValue := '1000';

   try
     seans := SaatRangeToSeans(FormatDateTime('hh:nn',now()));
   except
     seans := '';
   end;

   if seans <> ''
   then begin
//     ChangeButtonListClick := True;
     txtSeansTopPanel.EditValue := seans;
   end;


   Result := True;
end;

procedure TfrmHastaListeD.btnAraClick(Sender: TObject);
var
  t : string;
  List : TStringList;
begin



end;

procedure TfrmHastaListeD.btnGuncelleClick(Sender: TObject);
begin
  (*
  if mrYes = ShowMessageSkin('Sat�r Silmek �stedi�inize Eminmisiniz ?','','','msg')
  then begin
     ado_BransKodlari.Delete;
  end;
         *)

end;

procedure TfrmHastaListeD.ado_BransKodlariAfterOpen(DataSet: TDataSet);
begin
 // panel1.Caption := 'Listelenen Hasta Say�s� : ' + inttostr(ado_BransKodlari.RecordCount);
end;

procedure TfrmHastaListeD.ado_BransKodlariAfterPost(DataSet: TDataSet);
begin

//   gridBransKodlari.Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing , goRowSelect];


end;

procedure TfrmHastaListeD.ado_BransKodlariAfterScroll(DataSet: TDataSet);
begin
(*
  datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
  datalar.Bilgi.gelisNo := ado_BransKodlari.FieldByName('gelisNo').AsString;
  datalar.Bilgi.Doktor := ado_BransKodlari.FieldByName('doktor').AsString;
  datalar.Bilgi.TakipNo := ado_BransKodlari.FieldByName('Tak�pNo').AsString;
  datalar.Bilgi.Adi := ado_BransKodlari.FieldByName('HASTAADI').AsString + ' ' +
                           ado_BransKodlari.FieldByName('HASTASOYADI').AsString;
  datalar.Bilgi.tckimlikNo := ado_BransKodlari.FieldByName('TCKIMLIKNO').AsString;
  datalar.Bilgi.ProvizyonTarihi := FormattedTarih(ado_BransKodlari.FieldByName('BHDAT').AsString);




 (*
  HastaBilgileri.TcKimlikNo := ado_BransKodlari.FieldByName('TCKIMLIKNO').AsString;

  HastaBilgileri.Adi := ado_BransKodlari.FieldByName('HASTAADI').AsString + ' ' +
                           ado_BransKodlari.FieldByName('HASTASOYADI').AsString;

  HastaBilgileri.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
  datalar._takip_ := ado_BransKodlari.FieldByName('Tak�pNo').AsString;


  datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
  datalar.Bilgi.gelisNo := ado_BransKodlari.FieldByName('gelisNo').AsString;
  datalar.Bilgi.Doktor := ado_BransKodlari.FieldByName('doktor').AsString;
  datalar.Bilgi.TakipNo := ado_BransKodlari.FieldByName('Tak�pNo').AsString;
  datalar.Bilgi.Adi := ado_BransKodlari.FieldByName('HASTAADI').AsString + ' ' +
                           ado_BransKodlari.FieldByName('HASTASOYADI').AsString;
  datalar.Bilgi.tckimlikNo := ado_BransKodlari.FieldByName('TCKIMLIKNO').AsString;
      *)

(*
  if (ado_BransKodlari.FieldByName('tahlil').AsString = '1')
      or
     (ado_BransKodlari.FieldByName('ozelDurum').AsString = '1')
     or
     (ado_BransKodlari.FieldByName('seansKontrol').AsString = '1')
     Then Begin
       uyari.Visible := True;
       txtUyariMesaj.Lines.Add(ado_BransKodlari.FieldByName('diger').AsString);
       if ado_BransKodlari.FieldByName('tahlil').AsString = '1'
       Then txtUyariMesaj.Lines.Add('Sonucu Girilmemi� Tetkik Bilgisi Bulunmaktad�r');
       if ado_BransKodlari.FieldByName('Kilo').AsString = '1'
       Then txtUyariMesaj.Lines.Add('Giri� ��k�� Kilo Bilgisi Girilmemi� Seans Bulunmaktad�r');
       if ado_BransKodlari.FieldByName('seansKontrol').AsString = '1'
       Then txtUyariMesaj.Lines.Add('Rapora G�re haftal�k eksik yada sebeb belirtilmeden girilmemi� Seans bulunmaktad�r');
     End
     Else
     begin
      txtUyariMesaj.Lines.Clear;
      uyari.Visible := False;
     end;
     *)
end;

procedure TfrmHastaListeD.ListeCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  (*
  if ACellViewInfo.Item.Index = 6
  Then Begin
    cxGrid2.Hint := ado_BransKodlari.FieldByName('diger').AsString;
    cxGrid2.ShowHint := True;
  End
  else
  if (ACellViewInfo.Item.Index = 11) and (ado_BransKodlari.FieldByName('TakipProvizyonTarihiKontrol').AsString = 'H')
  Then Begin
    cxGrid2.Hint := 'Takibin Provizyon Tarihi ile ilk seans tarihi uyu�muyor';
    cxGrid2.ShowHint := True;
  End
  else
  begin
    cxGrid2.Hint := '';
    cxGrid2.ShowHint := false;
  end;
      *)

end;

procedure TfrmHastaListeD.ListeDataControllerFilterRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var Accept: Boolean);
begin

 //  panel1.Caption := 'Kay�t Say�s� : '  + inttostr(liste.DataController.Summary.FooterSummaryValues[0]);

end;

procedure TfrmHastaListeD.ListeDblClick(Sender: TObject);
var
 Form : TGirisForm;
begin
 // datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
//  FormINIT(TagfrmHastaKart,AnaForm,ado_BransKodlari.FieldByName('dosyaNo').AsString);
 if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
 Then begin
   Form := TGirisForm(FormClassType(TagfrmHastaKart));
   TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := _Dataset.FieldByName('dosyaNo').AsString;
   TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
   TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
 end
 Else begin
  Form := FormINIT(TagfrmHastaKart,self,_Dataset.FieldByName('dosyaNo').AsString,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giri�');
  if Form <> nil then Form.show;
 end;
  (*


   if UserRight('Hasta Kart�', 'Giri�') = False
   then begin
       ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
       exit;
   end;

    try

           if datalar.HkA = 0
           Then Begin
            frmHastaKarti := TfrmHastaKarti.Create(self);
          //  GorselAyar(frmHastaKarti,datalar.global_img_list4);
            frmHastaKarti.Top := 2;
            frmHastaKarti.Left := 2 + frmHastaListe.Width + 5;
           End;

           frmHastaKarti.Combo;
           frmHastaKarti.ilCombo;
           frmHastaKarti.yakinlikCombo;
           frmHastaKarti.KartGetir(ado_BransKodlari.FieldByName('dosyaNo').AsString);
           frmHastaKarti.Gelisler(ado_BransKodlari.FieldByName('dosyaNo').AsString);
           frmHastaKarti.Durum(1);
           frmHastaKarti.btnGuncelle.Enabled := True;
          // Disabled(frmHastaKarti);
           frmHastaKarti.Disable;
    except
    end;

             *)

end;

procedure TfrmHastaListeD.ListeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  Hadi,HSadi,HTc : string;
  index : integer;
  g : TGraphic;
begin
 // inherited;

   if _Dataset.Eof  then exit;
   
   g := TJpegimage.Create;

   try
    if _Dataset.FieldByName('foto').AsVariant <> Null
    Then begin
      g.Assign(_Dataset.FieldByName('foto'));
      _foto_ := TcxImage.Create(self);
      _foto_.Visible := False;
      _foto_.Picture.Assign(g);
    end;

   finally
     g.Free;
   end;

   _dosyaNO_ := _Dataset.FieldByName('dosyaNo').AsString;

  //index := AFocusedRecord.Index;
  Hadi := _Dataset.FieldByName('HASTAADI').AsString; //Liste.DataController.GetValue(index,HastaAdi.Index);
  HSadi := _Dataset.FieldByName('HASTASOYADI').AsString;//Liste.DataController.GetValue(index,HastaSoyadi.Index);
  HTc := _Dataset.FieldByName('TCKIMLIKNO').AsString;//Liste.DataController.GetValue(index,TC.Index);
  HastaBilgiRecordSet(Hadi,HSadi,HTc,'');

end;

procedure TfrmHastaListeD.ListeGetCellHeight(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
begin
  inherited;

  if ACellViewInfo.Properties.ClassType = TcxImageProperties
  then begin
    AHeight := 48;

  end;

end;

procedure TfrmHastaListeD.M2Click(Sender: TObject);
begin
  inherited;
   JSONSend;
end;

Procedure TfrmHastaListeD.JSONSend;
var
  Json: string;
  sResponse: string;
  JsonToSend: TMemoryStream;
  StrList1 : TStringList;
  IdSSLIOHandlerSocketOpenSSL1 : TIdSSLIOHandlerSocketOpenSSL;
begin

  StrList1 := TStringList.Create;
  Json := '{"action": {"type": "text", "token": ["95cb762c-cc51-457a-bec2-e2e7f289c770"], "numbers": "905417309091", "message": "Test."}}';
  StrList1.Text := Json;
//  memoRequest.Text := Json;

  JsonToSend := TMemoryStream.Create;

  try
   StrList1.SaveToStream(JsonToSend);
  //  WriteStringToStream(JsonToSend, Json, enUTF8);
    JsonToSend.Position := 0;
    UnLoadOpenSSLLibrary;
    IdHTTP1.Request.ContentType := 'application/json';
    IdHTTP1.Request.CharSet := 'utf-8';
    IdHTTP1.HTTPOptions := IdHTTP1.HTTPOptions + [hoKeepOrigProtocol];
 (*
  IdSSLIOHandlerSocketOpenSSL1 := TIdSSLIOHandlerSocketOpenSSL.Create(self);
  with idSSLIOHandlerSocketOpenSSL1 do
    begin
      SSLOptions.Method := sslvSSLv2;
      SSLOptions.Mode := sslmUnassigned;
      SSLOptions.VerifyMode := [];
      SSLOptions.VerifyDepth := 0;
      host := '';
    end;
   *)
    try

      sResponse := IdHTTP1.Post('https://api.mhatsapp.com/api/v3/message/send/', JsonToSend);

    except on E: Exception do
      ShowMessageSkin('Hata: '#13#10 + e.Message,'','','info');
    end;

  finally
    JsonToSend.Free;
    StrList1.Free;
  end;

 // memoResponse.Text := sResponse;

end;

procedure TfrmHastaListeD.N1Click(Sender: TObject);
begin
  donemYil := trim(stringReplace(TMenuItem(sender).Caption,'&','',[rfReplaceAll]));
  frmHastaListe.Caption := 'Hasta Listesi [ ' + donemYil + ' ]';
  Bilgiler;
end;

procedure TfrmHastaListeD.popupYilPopup(Sender: TObject);
var
  I ,yil : integer;
  item : TMenuItem;
begin
  yil := strtoint(copy(datetostr(date),7,4))+1;
//--  popupYil.Items.Clear;
  for I := 1 to 10 do
  begin
   yil := yil - 1;
   if popupYil.items.Find(inttostr(yil)) = nil
   Then Begin
     item := TMenuItem.Create(self);
     item.Caption := inttostr(yil);
    // item.Name := protokol + '-' + hasta;
     item.onClick := N1.onClick;
     popupYil.Items.Insert(popupYil.Items.Count  , item);
   End;
  end;
end;

procedure TfrmHastaListeD.S2Click(Sender: TObject);
var
 List : TListeAc;
 _L_ : ArrayListeSecimler;
 _name_, tel,msj,sysTakipNo,eNabizSonuc , _dosyaNos_ : string;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
 TopluDataset : TDataSetKadir;
begin
  _dosyaNos_ := seciliHastaDosyaNos;

    if _dosyaNos_ <> ''
    then
      if mrYes = ShowPopupForm('SKS Hasta Formlar�',SKS_HastaForm)
      Then Begin
               TopluDataset.Dataset1 := datalar.QuerySelect(
                                        'exec sp_HastaTanimBilgileri ' +
                                        ' @dosyaNO = ' + QuotedStr(_dosyaNos_));
               TopluDataset.Dataset2 := datalar.ADO_aktifSirketLogo;
               TopluDataset.Dataset3 := datalar.ADO_AktifSirket;

               PrintYap(datalar.SKSForm.raporKodu,datalar.SKSForm.raporKodu,'',TopluDataset,kadirType.pTNone);

      End
    else
    ShowMessageSkin('Hasta Dosyas� Se�ilmeden Bu ��lem Kullan�lamaz...','','','info');


end;

procedure TfrmHastaListeD.SeansKart1Click(Sender: TObject);
begin

   (*
   if UserRight('SEANS i�LEMLER�', '�zle') = False
   then begin
       ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
       exit;
   end;

    Application.CreateForm(TfrmSeanslar, frmSeanslar);
    GorselAyar(frmSeanslar,datalar.global_img_list4);
    //frmSeanslar.HastaBil(txtDosyaNo.Text , gridGelisler.Cells[1,gridgelisler.Row] , txtHastaAdi.text+' '+txtSoyadi.text , gridGelisler.Cells[3,gridgelisler.Row] ,gridGelisler.Cells[6,gridgelisler.Row],txtMakinaNo.text);
    frmSeanslar.SeansGetir(ado_BransKodlari.fieldbyname('dosyaNo').AsString , ado_BransKodlari.fieldbyname('gelisno').AsString);
    frmSeanslar.ShowModal;
    frmSeanslar.Release;
    frmSeanslar := nil;
             *)

end;

procedure TfrmHastaListeD.edaviKart1Click(Sender: TObject);
begin
  (*
   if UserRight('Hasta Kart�', 'Tedavi Kart�') = False
   then begin
       ShowMessageSkin('Bu ��lem ��in Yetkiniz Bulunmamaktad�r !','','','info');
       exit;
   end;

       Application.CreateForm(TfrmTedaviBilgisi, frmTedaviBilgisi);
       frmTedaviBilgisi.TedaviFormDosyaNo := ado_BransKodlari.fieldbyname('dosyaNo').AsString;
       frmTedaviBilgisi.TedaviFormGelisNo := ado_BransKodlari.fieldbyname('gelisNo').AsString;

       GorselAyar(frmTedaviBilgisi,datalar.global_img_list4);
       frmTedaviBilgisi.TedaviBilgi(ado_BransKodlari.fieldbyname('gelisNo').AsString,ado_BransKodlari.fieldbyname('dosyaNo').AsString
                                      ,datetostr(kadir.tarihyap(ado_BransKodlari.fieldbyname('BHDAT').AsString)),'',ado_BransKodlari.fieldbyname('HASTAADI').AsString,
                                       ado_BransKodlari.fieldbyname('HASTASOYADI').AsString);
       frmTedaviBilgisi.ShowModal;
       *)
end;

procedure TfrmHastaListeD.Epikriz1Click(Sender: TObject);
begin
   EpikrizYaz(cxGrid2.Dataset.fieldbyname('dosyaNo').AsString,cxGrid2.Dataset.fieldbyname('gelisNo').AsString,false);
end;

procedure TfrmHastaListeD.SeansTahakkuk1Click(Sender: TObject);
begin
(*
  DatasetiDoldur(ado_BransKodlari.fieldbyname('Tak�pNo').AsString,
                 ado_BransKodlari.fieldbyname('TEDAVITURU').AsString,
                 ado_BransKodlari.fieldbyname('Tak�pNo').AsString);

  frmRapor.topluset.Dataset8 := KurumBilgi;

  frmRapor.raporData1(frmRapor.topluset ,'035','\SeansTahakkuk');
  frmRapor.ShowModal;
  *)
end;

function TfrmHastaListeD.seciliHastaDosyaNos: string;
var
 x ,satir : integer;
 _dosyaNos_ : string;
begin
     for x := 0 to Liste.Controller.SelectedRowCount - 1 do
     begin
         satir := Liste.Controller.SelectedRows[x].RecordIndex;
         _dosyaNos_ := ifThen(_dosyaNos_='',_dosyaNos_+'',_dosyaNos_+',') +
           varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
     end;
     seciliHastaDosyaNos := _dosyaNos_;
end;

procedure TfrmHastaListeD.TopPanelPropertiesChange(Sender: TObject);
begin
  inherited;
  ay1 := txtDonemTopPanel.getValueIlkTarih; //tarihal(ayaditoay(txtAy.Text));
  ay2 := txtDonemTopPanel.getValueSonTarih; //tarihal(ayliktarih2(txtAy.Text));
//  Bilgiler;
end;

procedure TfrmHastaListeD.TopPanelButonClick(Sender: TObject);
var
 sql : string;
begin
  inherited;
 (*
    sql := 'exec sp_frmHastaListesi ' + QuotedStr(txtDonemTopPanel.getValueIlkTarih) + ',' +
                                        QuotedStr(txtDonemTopPanel.getValueSonTarih) + ',' +
                                        QuotedStr(vartoStr(AktifPasifTopPanel.EditValue)) + ',' +
                                        QuotedStr(varToStr(txtSeansTopPanel.EditValue)) + ',' +
                                        QuotedStr(varToStr(KurumTipTopPanel.EditValue)) + ',' +
                                        QuotedStr(datalar.AktifSirket) + ',' +
                                        QuotedStr(varToStr(ifThen(txtTekTarih.GetValue='NULL','',txtTekTarih.GetValue)));



  //  datalar.QuerySelect(ADOQuery1,sql);
  *)
end;


procedure TfrmHastaListeD.txtayPropertiesChange(Sender: TObject);
begin
    Bilgiler;
end;

end.
