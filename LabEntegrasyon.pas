unit LabEntegrasyon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, StdCtrls,dxLayoutControl,
  Buttons,  ExtCtrls, DBGrids,  KadirLabel,Kadir,KadirType,GetFormClass,
  DBGridEh, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Menus,
  cxContainer, cxGroupBox, cxRadioGroup, StrUtils,
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
  dxSkinXmas2008Blue, cxCalendar, cxCurrencyEdit,cxCheckGroup, SQLMemMain,
  cxSplitter, cxGridBandedTableView, cxGridDBBandedTableView, cxCheckBox;

type
  TfrmLabEntegrasyon = class(TGirisForm)
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
 //   akipRaporBul1: TMenuItemModul;
 //   SeansTahakkuk1: TMenuItemModul;
    cxHastaListePanelBaslik: TcxGroupBox;
    N1: TMenuItem;
    cxStyle2: TcxStyle;
    K1: TMenuItem;
    ikazRed: TcxStyle;
    ikazYellow: TcxStyle;
    KaydetItem: TMenuItem;
    SonucAlItem: TMenuItem;
    f1: TMenuItem;
    cxPageControl1: TcxPageControl;
    Sayfa_Liste: TcxTabSheet;
    sayfa_log: TcxTabSheet;
    cxGrid2: TcxGridKadir;
    Liste: TcxGridDBTableView;
    dosyaNo: TcxGridDBColumn;
    ListeColumndosyaNo: TcxGridDBColumn;
    HastaAdi: TcxGridDBColumn;
    HastaSoyadi: TcxGridDBColumn;
    ListeColumn4: TcxGridDBColumn;
    Tc: TcxGridDBColumn;
    ListeColumn6: TcxGridDBColumn;
    Kilo: TcxGridDBColumn;
    ListeColumn7: TcxGridDBColumn;
    ListeColumn2: TcxGridDBColumn;
    ListeColumn13: TcxGridDBColumn;
    ListeColumn3: TcxGridDBColumn;
    ListeColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    txtLog: TcxMemo;
    D1: TMenuItem;
    Y1: TMenuItem;
    G1: TMenuItem;
    S1: TMenuItem;
    H1: TMenuItem;
    E1: TMenuItem;
    L1: TMenuItem;
    N2: TMenuItem;
    B1: TMenuItem;
    O1: TMenuItem;
    Y2: TMenuItem;
    memData: TSQLMemTable;
    IslemItem: TMenuItem;
    IslemItemSub1: TMenuItem;
    IslemItemSub2: TMenuItem;
    IslemItemSub3: TMenuItem;
    T1: TMenuItem;
    E2: TMenuItem;
    ListeColumn1: TcxGridDBColumn;
    ListeColumn8: TcxGridDBColumn;
    ListeColumn9: TcxGridDBColumn;
    ListeColumn10: TcxGridDBColumn;
    etkikTakipFormlar1: TMenuItem;
    ListeColumn11: TcxGridDBColumn;
    ListeColumn12: TcxGridDBColumn;
    ListeColumn14: TcxGridDBColumn;
    ListeColumn15: TcxGridDBColumn;
    GridHizmet: TcxGridKadir;
    GridHizmetler: TcxGridDBTableView;
    GridHizmetlertakipNo: TcxGridDBColumn;
    GridHizmetlerHizmetTuru: TcxGridDBColumn;
    GridHizmetlersutKodu: TcxGridDBColumn;
    GridHizmetlerTanm: TcxGridDBColumn;
    GridHizmetlerSonuc: TcxGridDBColumn;
    GridHizmetlerhizmetSunucuRefNo: TcxGridDBColumn;
    cxGridDBBandedTableView29: TcxGridDBBandedTableView;
    cxGridDBBandedColumn92: TcxGridDBBandedColumn;
    cxGridDBBandedColumn93: TcxGridDBBandedColumn;
    cxGridDBBandedColumn94: TcxGridDBBandedColumn;
    cxGridDBBandedColumn95: TcxGridDBBandedColumn;
    cxGridDBBandedColumn96: TcxGridDBBandedColumn;
    cxGridDBBandedTableView30: TcxGridDBBandedTableView;
    cxGridDBBandedColumn97: TcxGridDBBandedColumn;
    cxGridDBBandedColumn98: TcxGridDBBandedColumn;
    cxGridDBBandedTableView31: TcxGridDBBandedTableView;
    cxGridDBBandedTableView32: TcxGridDBBandedTableView;
    cxGridDBBandedColumn99: TcxGridDBBandedColumn;
    cxGridDBBandedColumn100: TcxGridDBBandedColumn;
    cxGridDBBandedColumn101: TcxGridDBBandedColumn;
    cxGridDBBandedColumn102: TcxGridDBBandedColumn;
    cxGridDBBandedColumn103: TcxGridDBBandedColumn;
    cxGridDBBandedColumn104: TcxGridDBBandedColumn;
    cxGridLevel7: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    PopupMenu2: TPopupMenu;
    i1: TMenuItem;
    S2: TMenuItem;
    O2: TMenuItem;
    Y3: TMenuItem;
    Tetkikler: TListeAc;
    E3: TMenuItem;
    K2: TMenuItem;
    ListeColumn16: TcxGridDBColumn;

    procedure TopPanelPropertiesChange(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure ListeDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure popupYilPopup(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure ListeFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ListeStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure TopPanelButonClick(Sender: TObject);
  //  procedure Gonder;
  //  procedure AL;

    procedure S1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure IslemItemSub1Click(Sender: TObject);
    procedure IslemItemSub2Click(Sender: TObject);
    procedure IslemItemSub3Click(Sender: TObject);

    procedure i1Click(Sender: TObject);
    procedure GridHizmetlerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);

    procedure TetkikEkle;

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

var
  frmLabEntegrasyon: TfrmLabEntegrasyon;
  ay1 , ay2  , donemYil ,_Tarih_: string;

implementation
  uses
  Data_Modul,
  AnaUnit,
  HastaRecete,

  ENA,
  Centro,
  GemSoftBIYOTIP,
  TenaySynevo,
  TenaySYNLAB,
  Referans,
  TenaySISTEMTIP,
  Derman,
  TenayAhenk,
  TenaySIMGE,
  TenayBIOLAB,
  ELABUnit,
  Interkom,
  Duzen,
  AEN,
  LiosERBIL,
  LiosDEREN;

{$R *.dfm}


function TfrmLabEntegrasyon.Init(Sender : TObject) : Boolean;
begin
   ChangeButtonListClick := True;
   Result := True;
end;



procedure TfrmLabEntegrasyon.IslemItemSub1Click(Sender: TObject);
var
  GirisFormRecord : TGirisFormRecord;
  ornekNo : string;
begin
  if Liste.Controller.SelectedRowCount = 0 then exit;

  case TMenuItem(Sender).Tag of
    BIYOTIP : begin
                DurumGoster(True,True);
                try
                  OrnekListesiOku(txtTopPanelTarih1.Date,txtTopPanelTarih2.Date);
                finally
                  DurumGoster(False);
                end;
              end;
    ENALAB  : begin
                DurumGoster(True,True);
                try
                  TenayOrderKaydetENA(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
              end;
    BIOLAB : begin
                DurumGoster(True,True);
                try
                  TenayOrderKaydetBIOLAB(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
             end;

    SYNEVO  : begin
                DurumGoster(True,True);
                try
                  TenayOrderKaydetSynevo(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
              end;
REFERANSLAB : begin
                DurumGoster(True,True);
                try
                  Referans.SonucAl(txtTopPanelTarih1.Date,txtTopPanelTarih2.Date, '' , txtLog , pBar);
                finally
                  DurumGoster(False);
                end;
              end;
      SYNLAB : begin
                DurumGoster(True,True);
                try
                  TenayOrderKaydetSYNLAB(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
               end;
      SIMGE : begin
                DurumGoster(True,True);
                try
                  TenayOrderKaydetSIMGE(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
               end;

   CentroLab : begin
                DurumGoster(True,True);
                try
                   TenayOrderKaydetCENTRO(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
              end;

 DERMANLAB   : begin
                  DurumGoster(True,True);
                  try
                     DermanOrderKaydet(Liste,txtLog,pBar);
                   finally
                    DurumGoster(False);
                  end;
               end;

    AHENK  : begin
                DurumGoster(True,True);
                try
                  TenayOrderKaydetAhenk(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
             end;

    ELAB  : begin
                DurumGoster(True,True);
                try
                  ELABOrderKaydet(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
             end;

INTERKOMLAB : begin
                DurumGoster(True,True);
                try
                  HastaListeAl(txtTopPanelTarih1.Text, Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
              end;

 DUZENLAB : begin
                DurumGoster(True,True);
                try
                    OrderKaydetDuzen(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
              end;

 ERBILLAB : begin
                DurumGoster(True,True);
                try
                    TestEkle(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
              end;
  end;



end;


procedure TfrmLabEntegrasyon.IslemItemSub3Click(Sender: TObject);
var
  glmref : string;
begin
   if Liste.Controller.SelectedRowCount = 0 then exit;

  case TMenuItem(Sender).Tag of
       ELAB : begin
                DurumGoster(True,True);
                try
                  ELABUnit.SonucAlBarkod(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
              end;

  end;
end;


procedure TfrmLabEntegrasyon.IslemItemSub2Click(Sender: TObject);
var
  glmref : string;
begin
   if Liste.Controller.SelectedRowCount = 0 then exit;

  case TMenuItem(Sender).Tag of
    BIYOTIP : Begin
                 DurumGoster(True,True);
                 try
                  OrnekNoSonucOku(Liste,txtLog,pBar);
                 finally
                  DurumGoster(False);
                 end;
              End;
    ENALAB  : Begin
                DurumGoster(True,True);
                try
                  TenaySonucAlTCdenENA('','',txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue,Liste,txtLog,pBar,False);
                finally
                  DurumGoster(False);
                end;
              End;
    BIOLAB  : Begin
                DurumGoster(True,True);
                try
                  TenaySonucAlTCdenBIOLAB('','',txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue,Liste,txtLog,pBar,False);
                finally
                  DurumGoster(False);
                end;
              End;
    SYNEVO  : Begin
                DurumGoster(True,True);
                try
                  TenaySonucAlTCdenSynevo('','',txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue,Liste,txtLog,pBar,False);
                finally
                  DurumGoster(False);
                end;
              End;
   REFERANSLAB : begin
                   DurumGoster(True,True);
                   try
                     glmref := varToStr(Liste.DataController.GetValue(
                                        Liste.Controller.SelectedRows[0].RecordIndex,Liste.DataController.GetItemByFieldName('ornekNo').Index));
                     Referans.SonucAl(txtTopPanelTarih1.Date,txtTopPanelTarih2.Date, glmref , txtLog , pBar);

                   finally
                      DurumGoster(False);
                   end;
                 end;
         SYNLAB : begin
                      DurumGoster(True,True);
                      try
                        TenaySonucAlTCdenSYNLAB('','',txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue,Liste,txtLog,pBar);
                      finally
                        DurumGoster(False);
                      end;
                  end;
         SIMGE : begin
                      DurumGoster(True,True);
                      try
                        TenaySonucAlTCdenSIMGE('','',txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue,Liste,txtLog,pBar);
                      finally
                        DurumGoster(False);
                      end;
                  end;
     SISTEMTIP :  begin
                      DurumGoster(True,True);
                      try
                       TenaySonucAlTCdenSISTEM('','',txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue,Liste,txtLog,pBar);
                      finally
                        DurumGoster(False);
                      end;
                  end;

     DERMANLAB    : begin
                      DurumGoster(True,True);
                      try
                        DermanSonucAl('','',txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue,Liste,txtLog,pBar);
                      finally
                        DurumGoster(False);
                      end;
                 end;

    AHENK  : Begin
                DurumGoster(True,True);
                try
                  TenaySonucAlTCdenAhenk('','',txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue,Liste,txtLog,pBar,False);
                finally
                  DurumGoster(False);
                end;
              End;
 CentroLab  : Begin
                DurumGoster(True,True);
                try
                  TenaySonucAlTCdenCENTRO('','',txtTopPanelTarih1.GetValue,txtTopPanelTarih2.GetValue,Liste,txtLog,pBar,False);
                finally
                  DurumGoster(False);
                end;
              End;

       ELAB : begin
                DurumGoster(True,True);
                try
                  ELABUnit.SonucAl(txtTopPanelTarih1.GetTXSDateTime,txtTopPanelTarih2.GetTXSDateTime,_Dataset,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
              end;

INTERKOMLAB  : begin
                DurumGoster(True,True);
                try
                  Interkom.SonucAl(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;

              end;

DUZENLAB  : begin
                DurumGoster(True,True);
                try
                   SonucAlDuzen(Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;

              end;

 AENLAB  : Begin
                DurumGoster(True,True);
                try
                  AENSonucAl('','',txtTopPanelTarih1.EditValue,txtTopPanelTarih2.EditValue,Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;
              End;

 DERENLAB : begin
                DurumGoster(True,True);
                try
                   LiosDEREN.SonucAl(txtTopPanelTarih1.GetValue('DD.MM.YYYY') ,txtTopPanelTarih2.GetValue('DD.MM.YYYY'),Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;


            end;

 ERBILLAB : begin

                DurumGoster(True,True);
                try
                  LiosERBIL.SonucAl(txtTopPanelTarih1.GetValue('DD.MM.YYYY'),txtTopPanelTarih2.GetValue('DD.MM.YYYY'),Liste,txtLog,pBar);
                finally
                  DurumGoster(False);
                end;

            end;

  end;
end;


  (*
procedure TfrmLabEntegrasyon.Gonder;
begin
  case strToint(datalar._labID) of
    23 : begin
          DurumGoster(True,True);
          TenayOrderKaydetENA(Liste,txtLog,pBar);
          DurumGoster(False);
         end;
  end;
end;

procedure TfrmLabEntegrasyon.Al;
begin
  case strToint(datalar._labID) of
    23 : Begin
          DurumGoster(True,True);
          TenaySonucAlTCdenENA('','','','',Liste,txtLog,pBar,False);
          DurumGoster(False);
         End;
  end;
end;
   *)

procedure TfrmLabEntegrasyon.btnVazgecClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLabEntegrasyon.cxButtonCClick(Sender: TObject);
var
 GirisFormRecord : TGirisFormRecord;
 F : TGirisForm;
 dosyaNo,sirketKod,sube : string;
 i : integer;
 DosyaNos , sql : string;
 ado : TADOQuery;
 topluset : TDataSetKadir;
  aTabSheet : TcxTabSheet;
  bTamam : Boolean;
begin
  datalar.KontrolUserSet := False;

  case Tcontrol(sender).tag of
 -12 : begin
          GirisFormRecord.F_dosyaNo_ := '';
          GirisFormRecord.F_HastaAdSoyad_ := '';
          GirisFormRecord.F_TC_ := '';
          F := FormINIT(TagfrmTestAyarlari,GirisFormRecord);
          if F <> nil then F.showModal;
       end;
  end;

  inherited;
  if datalar.KontrolUserSet = True then exit;

  if _Dataset.State = dsInactive then exit;
  if _Dataset.RecordCount = 0  then exit;


  try
    GirisFormRecord.F_dosyaNo_ := _Dataset.FieldByName('dosyaNo').AsString;
    GirisFormRecord.F_gelisNO_ := _Dataset.FieldByName('gelisNo').AsString;
    GirisFormRecord.F_HastaAdSoyad_ := _Dataset.FieldByName('ADSOYAD').AsString;
    GirisFormRecord.F_TC_ := _Dataset.FieldByName('TCKIMLIKNO').AsString;
    GirisFormRecord.F_provizyonTarihi_ := _Dataset.FieldByName('BHDAT').AsString;
  except
  end;


  case Tcontrol(sender).tag of
  LabHastaGonder :
      begin
         // Gonder;
      end;
 LabSonucAl :
      begin
         // Al;
      end;


-10 : begin
              GirisFormRecord.F_dosyaNo_ := '';
              GirisFormRecord.F_HastaAdSoyad_ := '';
              GirisFormRecord.F_TC_ := '';
              GirisFormRecord.F_kod_ := 'LA';
              F := FormINIT(TagfrmKurumBilgi,GirisFormRecord);
              if F <> nil then F.ShowModal;
      end;

-11 : begin
          F := FormINIT(TagfrmSon6AylikTetkikSonuc,GirisFormRecord);
          if F <> nil then F.showModal;
      end;

 -12 : begin

       end;

 -21 : begin
          DurumGoster(True,True);
          try
            //BarkodOlustur(Liste,txtLog,pBar);
          finally
            DurumGoster(False);
          end;
       end;

 -22 : begin
          DurumGoster(True,True);
          try
           // BarkodYazdir(Liste,memData,txtLog,pBar);
          finally
            DurumGoster(False);
          end;
       end;
 -32 : begin
          F := FormINIT(TagfrmHastaTetkikEkle,GirisFormRecord);
         // F._Foto_ := foto;
          if F <> nil then F.ShowModal;
         // TetkikEkle(dosyaNo.Text,_gelisNo_,datalar.HastaBil.Tarih);
       end;

 100 : begin
           DosyaNos := '';
           if Liste.Controller.SelectedRowCount > 0
           then begin
               for i := 0 to Liste.Controller.SelectedRowCount - 1 do
               begin
                   Application.ProcessMessages;
                   DosyaNos := DosyaNos + ifThen(DosyaNos <> '', ',','') + varToStr(Liste.DataController.GetValue(
                   Liste.Controller.SelectedRows[i].RecordIndex,Liste.DataController.GetItemByFieldName('DosyaNo').Index));
               end;

              DurumGoster(True);
              ay1 := txtTopPanelTarih1.GetValue;
              ado := TADOQuery.Create(nil);
              Try
                  sql := 'exec  sp_HastaTetkikTakipPIVOTToplu @dosyaNO = ' + QuotedStr(DosyaNos) + ', @yil = ' + QuotedStr(ay1) +
                                ',@marker = ' + QuotedStr('E') + ',@f= -1 , @sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                                ',@seans = ''''';
                  datalar.QuerySelect(ado,sql);

                  topluset.Dataset0 := ado;
                  PrintYap('205','Toplu Tetkik Takip',inttostr(TagfrmHastaListe),topluset);
              finally
                DurumGoster(False);
                ado.Free;
              end;

           end;

       end;
 110 : begin
         if FindTab(AnaForm.sayfalar,TagfrmKtvListesi)
         Then begin
           F := TGirisForm(FormClassType(TagfrmKtvListesi));
           TGirisForm(FormClassType(TagfrmKtvListesi)).Init(F);
         end
         Else begin
          bTamam := False;
          aTabSheet := NewTab(AnaForm.sayfalar,TagfrmKtvListesi);
          try
            F := FormINIT(TagfrmKtvListesi,self,'',aTabSheet,ikEvet,'','');
            bTamam := F <> nil;
            if bTamam then F.show;
          finally
            if not bTamam then FreeAndNil(aTabSheet);
          end;
         end;
         F.txtTopPanelTarih1.Date := self.txtTopPanelTarih1.Date;
         F.txtTopPanelTarih2.Date := self.txtTopPanelTarih2.Date;

       end;
 end;

end;

procedure TfrmLabEntegrasyon.FormCreate(Sender: TObject);
var
 chk : TcxCheckGroupItem;
begin
  inherited;
  cxPanel.Visible := false;
 // ToolBar1.Visible := false;

  ClientHeight := AnaForm.ClientHeight - (AnaForm.ToolBar1.Height + AnaForm.dxStatusBar1.Height+50);
  ClientWidth := formGenislik;
  Olustur(self,TableName,'Hasta Listesi',23);
  Menu := PopupMenu1;

  TopPanel.Visible := True;

  TapPanelElemanVisible(True,True,True,false,false,false,false,false,False,False,false,False,False);
  RdGroup.Visible := True;
  RdGroup.Width := 250;


  Liste.DataController.DataSource := DataSource;

 // AktifPasifTopPanel.EditValue := '0';

  SayfaCaption('','','','','');
end;

procedure TfrmLabEntegrasyon.FormShow(Sender: TObject);
var
  _tag_ : integer;
begin
   if datalar._LabBarkodBasim = 'E' Then B1.Visible := True;
   if datalar._LabCalismaYon = '1' Then KaydetItem.Visible := False;

   _tag_ := strToint(datalar._labID);
   IslemItemSub1.Tag := _tag_;
   IslemItemSub2.Tag := _tag_;
   IslemItemSub3.Tag := _tag_;
   IslemItemSub1.OnClick :=  IslemItemSub1Click;
   IslemItemSub2.OnClick :=  IslemItemSub2Click;
   IslemItemSub3.OnClick :=  IslemItemSub3Click;

 //  IslemItemSub3.OnClick :=  IslemItemSubClick;
  // IslemItemSub1.OnClick :=  IslemItemSubClick;

   if strToint(datalar._labID) in [ENALAB,SYNEVO,SYNLAB,SISTEMTIP,DERMANLAB,AHENK,
                                   BIOLAB,SIMGE,CentroLab,DUZENLAB,AENLAB,
                                   ERBILLAB,DERENLAB]
   then begin
     if datalar._LabCalismaYon = '2'
     Then BEgin
        IslemItemSub1.Caption := 'Hasta Kaydet';
        IslemItemSub2.Caption := 'Sonuç Al';
        IslemItemSub1.Visible := True;
        IslemItemSub2.Visible := True;
        IslemItemSub3.Visible := False;
        IslemItem.Visible := True;
        KaydetItem.Visible := False;
        SonucAlItem.Visible := False;
     End
     else
     begin
      IslemItemSub1.Caption := 'Hasta Kaydet';
      IslemItemSub2.Caption := 'Sonuç Al';
      IslemItemSub1.Visible := False;
      IslemItemSub2.Visible := True;
      IslemItemSub3.Visible := False;
      IslemItem.Visible := True;
      KaydetItem.Visible := false;
      SonucAlItem.Visible := False;
     end;
   end
   else
   if strToint(datalar._labID) = BIYOTIP
   then begin
      IslemItemSub1.Caption := 'Örnek Listesini Oku';
      IslemItemSub2.Caption := 'ÖrnekNo Sonuc Oku';
      IslemItemSub1.Visible := True;
      IslemItemSub2.Visible := True;
      IslemItemSub3.Visible := False;
      IslemItem.Visible := True;
      KaydetItem.Visible := false;
      SonucAlItem.Visible := False;
   end
   else
   if strToint(datalar._labID) = REFERANSLAB
   then begin
      IslemItemSub1.Caption := 'Sonuçlarý Al';
      IslemItemSub2.Caption := 'GeliþRef Sonuç Al';
      IslemItemSub1.Visible := True;
      IslemItemSub2.Visible := True;
      IslemItemSub3.Visible := False;
      IslemItem.Visible := True;
      KaydetItem.Visible := false;
      SonucAlItem.Visible := False;
   end
   else
   if strToint(datalar._labID) = INTERKOMLAB
   then begin
      IslemItemSub1.Caption := 'Hasta Listesi Oku';
      IslemItemSub2.Caption := 'Sonuç Al(Barkod)';
      IslemItemSub1.Visible := True;
      IslemItemSub2.Visible := True;
      IslemItemSub3.Visible := False;
      IslemItem.Visible := True;
      KaydetItem.Visible := false;
      SonucAlItem.Visible := False;
   end
   else
   if strToint(datalar._labID) = ELAB
   then begin
      IslemItemSub1.Caption := 'Hasta Kaydet';
      IslemItemSub2.Caption := 'Tüm Sonuçlarý Al';
      IslemItemSub3.Caption := 'Sonuç Al(Barkod)';
      IslemItemSub1.Visible := False;
      IslemItemSub2.Visible := True;
      IslemItemSub3.Visible := True;
      IslemItem.Visible := True;
      KaydetItem.Visible := false;
      SonucAlItem.Visible := False;
   end;


   inherited;

end;

procedure TfrmLabEntegrasyon.GridHizmetlerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
 index : integer;
begin
  inherited;

end;

procedure TfrmLabEntegrasyon.i1Click(Sender: TObject);
var
  siraNO , sonuc : string;
  satir : integer;
begin
  inherited;


    siraNO := GridHizmetler.DataController.GetValue(GridHizmetler.Controller.SelectedRows[0].RecordIndex,
              GridHizmetler.DataController.GetItemByFieldName('siraNo').Index);
    sonuc :=  varToStr(GridHizmetler.DataController.GetValue(GridHizmetler.Controller.SelectedRows[0].RecordIndex,
                       GridHizmetler.DataController.GetItemByFieldName('gd').Index));

    case TMenuItem(Sender).Tag of
    0,1 : begin
              for satir := 0 to GridHizmetler.Controller.SelectedRowCount - 1 do
              begin
                  siraNO := GridHizmetler.DataController.GetValue(GridHizmetler.Controller.SelectedRows[satir].RecordIndex,
                            GridHizmetler.DataController.GetItemByFieldName('siraNo').Index);
                  datalar.QueryExec('update hareketler set onay = ' +  intTostr(TMenuItem(Sender).Tag)  + ' where siraNo = ' + siraNo);
              end;
              GridHizmet.Dataset.Requery();
          end;

      2 : begin
            if sonuc = ''
            then
              if mrYEs = ShowMessageSkin('Hizmet Silinecek Emin misiniz?','','','msg')
              then begin
               datalar.QueryExec('delete from hareketler where siraNo = ' + siraNo);
               GridHizmet.Dataset.Requery();
              end;
          end;

      3 : begin
            TetkikEkle;
          end;

  end;

end;


procedure TfrmLabEntegrasyon.TetkikEkle;
var
  sql : string;
  ado : TADOQuery;
  List : ArrayListeSecimler;
begin

   Tetkikler.Filter := '%2%';


   Tetkikler.SkinName := AnaForm.dxSkinController1.SkinName;
   Tetkikler.where := ' charindex(''.'',butKodu) = 0  and uygulamaAdet = ''G''';
   List := Tetkikler.ListeGetir;

   try
     if length(List) > 0 then
     begin
       ado := datalar.QuerySelect('select butKodu,tanimi,uygulamaAdet from labtestler where substring(butKodu,1,6) = ' + QuotedStr(List[0].kolon1));
       while not ado.Eof do
       begin
           sql := 'insert into hareketler (dosyaNo,gelisNo,gelisSIRANO,Tarih,Doktor,adet,code,name1,tip,tip1) ' +
                  'values(' + QuotedStr(_dosyaNO_) + ',' +
                              _gelisNo_ + ',' +
                             _gelisSiraNo_ + ',' +
                             QuotedStr(NoktasizTarih(_provizyonTarihi_))  + ',' +
                             QuotedStr(_Doktor_) + ',' +
                             '1' + ',' +
                             QuotedStr(ado.FieldByName('butKodu').AsString) + ',' +
                             QuotedStr(ado.FieldByName('tanimi').AsString) + ',' +
                             QuotedStr('L') + ',' +
                             QuotedStr(ado.FieldByName('uygulamaAdet').AsString) + ')';
           datalar.QueryExec(sql);
           ado.Next;
       end;
     end;
   finally
    ado.Free;
   end;

   GridHizmet.Dataset.Requery;
end;

procedure TfrmLabEntegrasyon.ListeDblClick(Sender: TObject);
var
 Form : TGirisForm;
 aTabSheet : TcxTabSheet;
 bTamam : Boolean;
begin
 // datalar.Bilgi.dosyaNo := ado_BransKodlari.FieldByName('dosyaNo').AsString;
//  FormINIT(TagfrmHastaKart,AnaForm,ado_BransKodlari.FieldByName('dosyaNo').AsString);

 if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
 Then begin
   Form := TGirisForm(FormClassType(TagfrmHastaKart));
   TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
   TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := _Dataset.FieldByName('dosyaNo').AsString;
   TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
 end
 Else begin
  bTamam := False;
  aTabSheet := NewTab(AnaForm.sayfalar,TagfrmHastaKart);
  try
    Form := FormINIT(TagfrmHastaKart,self,_Dataset.FieldByName('dosyaNo').AsString,aTabSheet,ikEvet,'','');
    bTamam := Form <> nil;
    if bTamam then Form.show;
  finally
    if not bTamam then FreeAndNil (aTabSheet);
  end;
 end;


end;

procedure TfrmLabEntegrasyon.ListeFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  Hadi,HSadi,HTc , SIRANO : string;
  index : integer;
  id , i : integer;
  gun : integer;
begin
  inherited;
(*
  //index := AFocusedRecord.Index;
  Hadi := _Dataset.FieldByName('HASTAADI').AsString; //Liste.DataController.GetValue(index,HastaAdi.Index);
  HSadi := _Dataset.FieldByName('HASTASOYADI').AsString;//Liste.DataController.GetValue(index,HastaSoyadi.Index);
  HTc := _Dataset.FieldByName('TCKIMLIKNO').AsString;//Liste.DataController.GetValue(index,TC.Index);
  HastaBilgiRecordSet(Hadi,HSadi,HTc,'');
  *)

  if AFocusedRecord = nil then exit;
  index := AFocusedRecord.Index;

  _dosyaNO_ := varToStr(Liste.DataController.GetValue(index,dosyaNo.Index));
  _gelisNO_ := varToStr(Liste.DataController.GetValue(index,HastaAdi.Index));
  _gelisSiraNo_ := varToStr(Liste.DataController.GetValue(index,ListeColumn3.Index));
  _provizyonTarihi_ := varToStr(Liste.DataController.GetValue(index,ListeColumn11.Index));

  SIRANO := varToStr(Liste.DataController.GetValue(index,ListeColumn3.Index));
  if SIRANO <> ''
  then
    datalar.QuerySelect(GridHizmet.Dataset,
                        'select * from hareketlerLab h ' +
                        ' join LabTestler l on l.butKodu = h.CODE and h.tip1 = l.uygulamaAdet ' +
                        ' where gelisSIRANO = ' + SIRANO +
                        ' and charindex(''.'',code) = 0 order by l.sira'
                        );

end;

procedure TfrmLabEntegrasyon.ListeStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
var
 id : integer;
begin
(*
 try
  id := ARecord.ViewData.GridView.FindItemByName('MuayeneKalanGun').Index;
  if AItem.Index = id
  then
    if ARecord.Values[id] <> null
    then begin
     if (ARecord.Values[id] <= 0)
       Then AStyle := ikazRed
      else
     if (ARecord.Values[id] < 30)
       Then AStyle := ikazYellow;
    end;
 except
 end;
 *)
end;

procedure TfrmLabEntegrasyon.popupYilPopup(Sender: TObject);
var
  I ,yil : integer;
  item : TMenuItem;
begin
  yil := strtoint(copy(datetostr(date),7,4))+1;
//--  popupYil.Items.Clear;
  for I := 1 to 5 do
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

procedure TfrmLabEntegrasyon.S1Click(Sender: TObject);
var
  x : integer;
  sql ,id ,ids : string;
begin
   ids := '';
   if Liste.Controller.SelectedRowCount > 0
   then begin
       for x := 0 to Liste.Controller.SelectedRowCount - 1 do
       begin
           Application.ProcessMessages;
           ids := ids + ifThen(ids <> '', ',','') + varToStr(Liste.DataController.GetValue(
           Liste.Controller.SelectedRows[x].RecordIndex,Liste.DataController.GetItemByFieldName('SIRANO').Index));
       end;

           sql := 'set nocount on update Hasta_Gelisler set LabOrnekDurum = ' + QuotedStr(TMenuItem(Sender).Hint) +
                             ' where SIRANo in (select datavalue from dbo.strTotable(' + QuotedStr(ids) + ','','')) ' +
                             ' set nocount off';
           datalar.QueryExec(sql);
          _Dataset.Requery();

   end;

end;

procedure TfrmLabEntegrasyon.TopPanelButonClick(Sender: TObject);
begin
  inherited;

   if (strToint(datalar._labID) = REFERANSLAB) or
      (strToint(datalar._labID) = BIYOTIP)
   then begin

   end
   else
   begin
         if RdGroup.EditingValue = 'ONAY'
        then begin
          IslemItemSub1.Enabled := True;
        end
        else begin
          IslemItemSub1.Enabled := False;
        end;

        if RdGroup.EditingValue = 'Gönderildi'
        then begin
          IslemItemSub2.Enabled := True;
          IslemItemSub3.Enabled := True;
        end
        else begin
          IslemItemSub2.Enabled := False;
          IslemItemSub3.Enabled := False;
        end;

        PopupMenuToToolBarEnabled(self,ToolBar1,PopupMenu1);

   end;

        Liste.ViewData.Expand(true);
end;

procedure TfrmLabEntegrasyon.TopPanelPropertiesChange(Sender: TObject);
begin
  inherited;
  Liste.ViewData.Expand(true);

  //  Bilgiler;
end;

end.