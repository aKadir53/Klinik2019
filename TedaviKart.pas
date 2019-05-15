unit TedaviKart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,System.StrUtils,KadirLabel,GirisUnit,KadirType,Kadir,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,Adodb,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxPC, cxGroupBox, cxCalendar, cxImageComboBox, dxSkinBlack,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxImage, cxDBEdit, cxLabel, cxDBLabel;

type
  TfrmTedaviBilgisi = class(TGirisForm)
    pnlHastaGelis: TcxGroupBox;
    LeftPanelcxPageControl: TcxPageControl;
    cxTabHastaListe: TcxTabSheet;
    cxTabHastaGelis: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxSalonBilgisi: TcxComboBox;
    cxGrid2: TcxGrid;
    cxGridHastaListesi: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridHastaGelis: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Tarih: TcxGridDBColumn;
    GelisNo: TcxGridDBColumn;
    TakIpNo: TcxGridDBColumn;
    dosyaNoColum: TcxGridDBColumn;
    HastaAdi: TcxGridDBColumn;
    HastaSoyadi: TcxGridDBColumn;
    cxGridHastaListesiColumn4: TcxGridDBColumn;
    AdoHastaGelis: TADOQuery;
    AdoHastaGelisDataSource: TDataSource;
    TC: TcxGridDBColumn;
    ProvizyonTarihi: TcxGridDBColumn;
    cxGridHastaGelisColumn1: TcxGridDBColumn;
    fotoPanel: TcxGroupBox;
    foto: TcxDBImage;
    ad: TcxDBLabel;
    soyad: TcxDBLabel;
    yas: TcxDBLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxSalonBilgisiPropertiesChange(Sender: TObject);
    procedure cxGridHastaGelisFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridHastaListesiDblClick(Sender: TObject);
    procedure cxGridHastaListesiFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
      function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

const _TableName_ = '';
      formGenislik = 500;
      formYukseklik = 500;


var
  frmTedaviBilgisi: TfrmTedaviBilgisi;
//  AdoHastaGelis : TADOQuery;
 // AdoHastaGelisDataSource : TDataSource;

  sql : String;
implementation
      uses Data_Modul,AnaUnit,HastaListe,HastaListeD,
           HastaRecete,HastaTetkikEkle,Anamnez,HastaIlacTedavi,
           HastaDiyalizIzlem,UzmanMuayene;

{$R *.dfm}

function TfrmTedaviBilgisi.Init(Sender : TObject) : Boolean;
var
 i : integer;
begin
  Result := False;
  inherited;

   case TfrmTedaviBilgisi(self).Tag  of
     TagfrmHastaRecete,
     TagfrmHastaTetkikEkle,
     TagfrmHastaIlacTedavi,
     TagfrmHastaDiyalizIzlem,
     TagfrmUzmanMuayene
      :
         begin
              for i := 0 to Screen.FormCount - 1 do
                if Screen.Forms[i] = frmHastaListeD
                Then begin
                 if not frmHastaListeD._Dataset.Eof then
                 begin
                    frmHastaListeD._Dataset.Locate('dosyaNo',datalar.Bilgi.dosyaNo,[]);
                    cxGridHastaListesi.DataController.DataSource := frmHastaListeD._DataSource;
                    foto.DataBinding.DataSource :=  frmHastaListeD._DataSource;
                    ad.DataBinding.DataSource :=  frmHastaListeD._DataSource;
                    soyad.DataBinding.DataSource :=  frmHastaListeD._DataSource;
                    yas.DataBinding.DataSource :=  frmHastaListeD._DataSource;

                    cxTabHastaListe.TabVisible := True;
                 end;
                end;

         end;
   131 :
         begin
            for i := 0 to Screen.FormCount - 1 do
              if Screen.Forms[i] = frmHastaListe
              Then begin
               if not frmHastaListe._Dataset.Eof then
               begin
                  frmHastaListe._Dataset.Locate('dosyaNo',datalar.Bilgi.dosyaNo,[]);
                  cxGridHastaListesi.DataController.DataSource := frmHastaListe._DataSource;
                  foto.DataBinding.DataSource :=  frmHastaListe._DataSource;
                  ad.DataBinding.DataSource :=  frmHastaListe._DataSource;
                  soyad.DataBinding.DataSource :=  frmHastaListe._DataSource;
                  yas.DataBinding.DataSource :=  frmHastaListe._DataSource;

                  cxTabHastaListe.TabVisible := True;
               end;
              end;

         end;

   end;

  Result := True;
end;

procedure TfrmTedaviBilgisi.cxGridHastaGelisFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  dosyaNo,gelisNo,Tarih : string;
  _tag_ : integer;
begin
  inherited;
 // if ANewItemRecordFocusingChanged  then
 // begin

      dosyaNo := AdoHastaGelis.FieldByName('dosyaNo').AsString;
      datalar.hastaBil.gelisNo := AdoHastaGelis.FieldByName('gelisNo').AsString;
      datalar.HastaBil.Tarih := tarihal(AdoHastaGelis.FieldByName('Tarih').AsDateTime);
      self._gelisNO_ := AdoHastaGelis.FieldByName('gelisNo').AsString;
      self._gelisSiraNo_ := AdoHastaGelis.FieldByName('SIRANO').AsString;
      self._provizyonTarihi_ := AdoHastaGelis.FieldByName('Tarih').AsString;
      self._MuayeneProtokolNo_ := AdoHastaGelis.FieldByName('PROTOKOLNO').AsString;




      case TfrmTedaviBilgisi(self).Tag of
        TagfrmPersonelRecete,
        TagfrmHastaRecete
                             :  begin
                                  if Assigned(frmHastaRecete) then
                                  begin
                                    frmHastaRecete._dosyaNO_ := self._dosyaNO_;
                                    frmHastaRecete._gelisNO_ := self._gelisNO_;
                                    frmHastaRecete._MuayeneProtokolNo_ := self._MuayeneProtokolNo_;
                                    yukle;
                                   // frmHastaRecete.ReceteGetir(self._dosyaNO_,self._gelisNO_);
                                    frmHastaRecete._provizyonTarihi_ := self._provizyonTarihi_;
                                  end;
                                end;

        TagfrmHastaIlacTedavi : begin
                                  if Assigned(frmHastaIlacTedavi) then
                                  begin
                                    frmHastaIlacTedavi._dosyaNO_ := self._dosyaNO_;
                                    frmHastaIlacTedavi._gelisNO_ := self._gelisNO_;
                                    frmHastaIlacTedavi._provizyonTarihi_ := self._provizyonTarihi_;
                                    yukle;
                                  end;
                                end;

        TagfrmUzmanMuayene  : begin
                                  if Assigned(frmUzmanMuayene ) then
                                  begin
                                    frmUzmanMuayene ._dosyaNO_ := self._dosyaNO_;
                                    frmUzmanMuayene._gelisNO_ := self._gelisNO_;
                                    frmUzmanMuayene._provizyonTarihi_ := self._provizyonTarihi_;
                                    yukle;
                                  end;
                                end;

        TagfrmHastaDiyalizIzlem : begin
                                  if Assigned(frmHastaDiyalizIzlem) then
                                  begin
                                    frmHastaDiyalizIzlem._dosyaNO_ := self._dosyaNO_;
                                    frmHastaDiyalizIzlem._gelisNO_ := self._gelisNO_;
                                    frmHastaDiyalizIzlem._provizyonTarihi_ := self._provizyonTarihi_;
                                    yukle;
                                  end;


                                end;

        TagfrmHastaTetkikEkle : begin
                                   frmHastaTetkikEkle._dosyaNO_ := self._dosyaNO_;
                                   frmHastaTetkikEkle._gelisNO_ := self._gelisNO_;

                                   frmHastaTetkikEkle.Sonuclar;
                                end;

 TagfrmAnamnez,TagfrmIseGiris : begin
                                   case AdoHastaGelis.FieldByName('AnemnezEkranTipi').AsInteger of
                                    1 : _tag_ := TagfrmIseGiris;
                                    2 : _tag_ := TagfrmAnamnez;
                                  end;
                                  case _tag_ of
                                     TagfrmAnamnez : begin
                                                        frmAnamnez._dosyaNO_ := self._dosyaNO_;
                                                        frmAnamnez._gelisNO_ := self._gelisNO_;
                                                        frmAnamnez.Tag := TagfrmAnamnez;
                                                        frmAnamnez.IseGirisMuayene.Visible := False;
                                                        Kolon2.Visible := False;
                                                        Kolon3.Visible := False;
                                                        Kolon4.Visible := False;

                                                        ClientWidth := 850;
                                                        ClientHeight := 560;
                                                        cxPanel.Visible := True;
                                                        cxYeni.Visible := False;
                                                        cxIptal.Visible := False;
                                                        indexFieldName := 'dosyaNo = ' + _dosyaNO_ + ' and  gelisNo = ' + _gelisNo_ ;
                                                        yukle;
                                                        sqlRunLoad;
                                                     end;
                                     TagfrmIseGiris : begin
                                                        frmAnamnez._dosyaNO_ := self._dosyaNO_;
                                                        frmAnamnez._gelisNO_ := self._gelisNO_;
                                                        frmAnamnez.Tag := TagfrmIseGiris;
                                                        frmAnamnez.IseGirisMuayene.Dataset.Connection := datalar.ADOConnection2;
                                                        frmAnamnez.IseGirisMuayene.Dataset.SQL.Text := 'sp_frmPersonelIseGirisMuayene ' + QuotedStr(_dosyaNO_)+ ',' +
                                                                                                                           _gelisNO_ + ',' + QuotedStr('0');
                                                        frmAnamnez.IseGirisMuayene.Dataset.Open;
                                                        frmAnamnez.IseGirisMuayene.Dataset.AfterScroll := frmAnamnez.ADO_WebServisErisimAfterScroll;
                                                        frmAnamnez.GridList.ViewData.Expand(true);
                                                        frmAnamnez.IseGirisMuayene.Visible := True;
                                                        frmAnamnez.IseGirisMuayene.Align := alClient;
                                                        frmAnamnez.IseGirisMuayene.BringToFront;
                                                        cxPanel.Visible := False;
                                                        cxYeni.Visible := False;
                                                        cxIptal.Visible := False;
                                                      end;

                                  end;


                                end;


      end;

 // end;
end;

procedure TfrmTedaviBilgisi.cxGridHastaListesiDblClick(Sender: TObject);
var
  dosyaNo : string;
  index : integer;
begin
  inherited;
  dosyaNo := cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,dosyaNoColum.index);
  self._HastaAdSoyad_ :=
  cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,HastaAdi.Index) + ' ' +
  cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,HastaSoyadi.Index);

  self._TC_ := cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,TC.Index);

  self._dosyaNO_ := cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,dosyaNoColum.index);

  cxTab.Tabs[0].Caption := self._HastaAdSoyad_;
  LeftPanelcxPageControl.ActivePageIndex := 1;

  HastaGelisSelect(dosyaNo,AdoHastaGelis);
end;

procedure TfrmTedaviBilgisi.cxGridHastaListesiFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  dosyaNo : string;
  index : integer;
begin
  inherited;

  HastaBilgiRecordSet(cxGridHastaListesi.DataController.GetValue(AFocusedRecord.Index,HastaAdi.Index),
                      cxGridHastaListesi.DataController.GetValue(AFocusedRecord.Index,HastaSoyadi.Index),
                      cxGridHastaListesi.DataController.GetValue(AFocusedRecord.Index,TC.Index),'');

  dosyaNo := cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,dosyaNoColum.index);
  self._HastaAdSoyad_ :=
  cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,HastaAdi.Index) + ' ' +
  cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,HastaSoyadi.Index);

  self._TC_ := cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,TC.Index);

  self._dosyaNO_ := cxGridHastaListesi.DataController.GetValue(
  cxGridHastaListesi.Controller.SelectedRows[0].RecordIndex,dosyaNoColum.index);

  cxTab.Tabs[0].Caption := self._HastaAdSoyad_;
  LeftPanelcxPageControl.ActivePageIndex := 1;

  HastaGelisSelect(dosyaNo,AdoHastaGelis);



end;

procedure TfrmTedaviBilgisi.cxSalonBilgisiPropertiesChange(Sender: TObject);
var
 s ,key : string;
begin
  inherited;
   key := cxSalonBilgisi.Text;
   filterGrid(cxGridHastaListesi,key,s,8,True);
end;

procedure TfrmTedaviBilgisi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 // AdoHastaGelis.Close;
end;

procedure TfrmTedaviBilgisi.FormCreate(Sender: TObject);
var
  index,i , _Tag_: integer;
begin
  inherited;
//  Tag := TagfrmTedaviBilgisi;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'kod';
  TableName := _TableName_;
  cxPanel.Visible := false;
  SayfaCaption('','','','','');
 // Olustur(self,_TableName_,'Tedavi Kartý',23);
  LeftPanelcxPageControl.ActivePageIndex := 1;





end;

procedure TfrmTedaviBilgisi.FormShow(Sender: TObject);
var
 tt : string;
begin
   inherited;

   case TfrmTedaviBilgisi(self).Tag  of
     TagfrmHastaRecete,
     TagfrmHastaTetkikEkle,
     TagfrmHastaIlacTedavi,
     TagfrmHastaDiyalizIzlem,
     TagfrmUzmanMuayene
          :
       tt := 'Hasta_gelisler'
     else
       tt := 'gelisler';
   end;


   HastaGelisSelect(_dosyaNo_,AdoHastaGelis,tt);
   cxTab.Tabs[0].Caption := self._HastaAdSoyad_;// datalar.HastaBil.Adi + ' ' + datalar.HastaBil.SoyAdi;
end;

end.

