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
  dxSkinXmas2008Blue, cxCalendar, cxCurrencyEdit,cxCheckGroup, SQLMemMain;

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
  uses Data_Modul,AnaUnit,HastaRecete,
  ENA,
  Centro,
  GemSoftBIYOTIP,
  TenaySynevo,
  Referans,
  TenaySYNLAB;

{$R *.dfm}


function TfrmLabEntegrasyon.Init(Sender : TObject) : Boolean;
begin
   Result := True;
end;



procedure TfrmLabEntegrasyon.IslemItemSub1Click(Sender: TObject);
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
    SYNEVO  : Begin
                DurumGoster(True,True);
                try
                  TenaySonucAlTCdenSynevo('','','','',Liste,txtLog,pBar,False);
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
begin
  datalar.KontrolUserSet := False;
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
          F := FormINIT(TagfrmTestAyarlari,GirisFormRecord);
          if F <> nil then F.showModal;
       end;

 -21 : begin
          DurumGoster(True,True);
          try
            BarkodOlustur(Liste,txtLog,pBar);
          finally
            DurumGoster(False);
          end;
       end;

 -22 : begin
          DurumGoster(True,True);
          try
            BarkodYazdir(Liste,memData,txtLog,pBar);
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
 //  IslemItemSub3.OnClick :=  IslemItemSubClick;
  // IslemItemSub1.OnClick :=  IslemItemSubClick;

   if strToint(datalar._labID) in [ENALAB,SYNEVO]
   then begin
      IslemItemSub1.Caption := 'Hasta Kaydet';
      IslemItemSub2.Caption := 'Sonuç Al';
      IslemItemSub1.Visible := True;
      IslemItemSub2.Visible := True;
      IslemItemSub3.Visible := False;
      IslemItem.Visible := True;
      KaydetItem.Visible := False;
      SonucAlItem.Visible := False;
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
   end;

   if strToint(datalar._labID) = SYNLAB
   then begin
      IslemItemSub1.Caption := 'Hasta Kaydet';
      IslemItemSub2.Caption := 'Sonuç Al';
      IslemItemSub1.Visible := True;
      IslemItemSub2.Visible := True;
      IslemItemSub3.Visible := False;
      IslemItem.Visible := True;
      KaydetItem.Visible := false;
      SonucAlItem.Visible := False;
   end;


   inherited;

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
  Hadi,HSadi,HTc : string;
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

           sql := 'update Hasta_Gelisler set LabOrnekDurum = ' + QuotedStr(TMenuItem(Sender).Hint) +
                             ' where SIRANo in (select datavalue from dbo.strTotable(' + QuotedStr(ids) + ','',''))';
           datalar.QueryExec(sql);
          _Dataset.Requery();
   end;

end;

procedure TfrmLabEntegrasyon.TopPanelButonClick(Sender: TObject);
begin
  inherited;
  Liste.ViewData.Expand(true);
end;

procedure TfrmLabEntegrasyon.TopPanelPropertiesChange(Sender: TObject);
begin
  inherited;
  Liste.ViewData.Expand(true);

  //  Bilgiler;
end;

end.