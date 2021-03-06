unit FaturaDetay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir,  KadirType,GetFormClass,GirisUnit,
  StdCtrls, Buttons, sBitBtn, ExtCtrls, cxContainer, cxLabel, cxTextEdit, cxGridExportLink,
  cxMaskEdit, cxDropDownEdit, cxCalendar, sCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxGroupBox, cxRadioGroup, sGauge,
  cxPCdxBarPopupMenu, cxMemo, cxPC, cxCheckBox, rxAnimate, rxGIFCtrl,
  JvExControls, JvAnimatedImage, JvGIFCtrl, cxButtons, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage,
  cxImageComboBox, cxButtonEdit,dxLayoutControl,dxLayoutContainer;

type
  TfrmFaturaDetay = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_FaturaDetay: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle7: TcxStyle;
    PopupMenu1: TPopupMenu;
    cxStyle8: TcxStyle;
    tmr1: TTimer;
    E1: TMenuItem;
    E2: TMenuItem;
    E3: TMenuItem;
    E4: TMenuItem;
    K1: TMenuItem;
    A1: TMenuItem;
    FaturaSatirlar: TcxGridDBTableView;
    FaturaGridLevel1: TcxGridLevel;
    FaturaGrid: TcxGridKadir;
    FaturaSatirlarfaturaId: TcxGridDBColumn;
    FaturaSatirlarsira: TcxGridDBColumn;
    FaturaSatirlarhizmetAdi: TcxGridDBColumn;
    FaturaSatirlarhizmetkodu: TcxGridDBColumn;
    FaturaSatirlarfiyat: TcxGridDBColumn;
    FaturaSatirlarisk: TcxGridDBColumn;
    FaturaSatirlarkdv: TcxGridDBColumn;
    FaturaSatirlaradet: TcxGridDBColumn;
    FaturaSatirlartutar: TcxGridDBColumn;
    FaturaSatirlarkdvTutar: TcxGridDBColumn;
    FaturaSatirlarbirim: TcxGridDBColumn;
    FaturaSatirTutar: TcxGridDBColumn;
    SatirToplam: TcxCurrencyEdit;
    TutarToplam: TcxCurrencyEdit;
    kdvToplam: TcxCurrencyEdit;
    H1: TMenuItem;
    H2: TMenuItem;
    FaturaSatirlarColumnLot: TcxGridDBColumn;
    procedure Fatura(islem: Integer);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
                AButtonIndex: Integer); override;
    procedure FaturaDetay;
    procedure NewRecord(DataSet: TDataSet);
    procedure AfterPost(DataSet: TDataSet);
    procedure FaturaToplamlari;
    procedure FaturaSatirTutarCustomDrawFooterCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
 //   function EArsivGonder(FaturaId : string) : string;
 //   function EArsivIptal(FaturaGuid : string) : string;
 //   function EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
 //   procedure Gonder;

  private
    { Private declarations }
  protected
    procedure GozlemYazdir (const GozlemID : integer);

  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

  TFaturaGonder = procedure(FaturaXML : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar); stdcall;

  TFaturaIptal = procedure(FaturaGuid : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar); stdcall;
  TFaturaPDF = procedure(FaturaGuid : PWideChar;
                      kullaniciAdi : PWideChar;
                      sifre : PWideChar;
                      var sonuc : PWideChar;
                      url : PWideChar;
                      smtpClientHost : PWideChar;
                      Username : PWideChar;
                      Password : PWideChar;
                      alici : PWideChar;
                      konu : PWideChar;
                      msj : PWideChar
                      ); stdcall;


const
  LIB_DLL = 'EFaturaDLL.dll';
 // LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';
  test = 'https://efatura-test.uyumsoft.com.tr/Services/Integration';
  gercek = 'https://efatura.uyumsoft.com.tr/Services/Integration';
var
  frmFaturaDetay: TfrmFaturaDetay;
  faturaNoDegisti : Boolean;
implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

procedure TfrmFaturaDetay.FaturaToplamlari;
begin
     TcxCurrencyEdit(FindComponent('faturaTutar')).EditValue :=
     FaturaSatirlar.DataController.Summary.FooterSummaryValues[1];
     TcxCurrencyEdit(FindComponent('kdv')).EditValue :=
     FaturaSatirlar.DataController.Summary.FooterSummaryValues[0];
     TcxCurrencyEdit(FindComponent('faturaGenelTutar')).EditValue :=
     FaturaSatirlar.DataController.Summary.FooterSummaryValues[2];
end;

procedure TfrmFaturaDetay.FaturaDetay;
begin
   FaturaGrid.Dataset.Active := False;
   FaturaGrid.Dataset.SQL.Text := 'select * from faturaHareket where faturaId = ' +
   QuotedStr(TcxButtonEditKadir(FindComponent('Sira')).Text);
   FaturaGrid.Dataset.Active := True;
   FaturaToplamlari;
end;

procedure TfrmFaturaDetay.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  FaturaToplamlari;
end;

procedure TfrmFaturaDetay.cxKaydetClick(Sender: TObject);
var
  faturaId , id , sql : string;
begin
  //SirketKodx.Text := datalar.AktifSirket; giri� formuna eklendi.
  case TControl(sender).Tag  of
    Kaydet : begin
               if varToStr(TcxImageComboKadir(FindComponent('FaturaTip')).EditValue) <> '3'
               Then
                 if Length(TcxTextEdit(FindComponent('GIBFaturaNo')).Text) = 0
                 Then begin
                    TcxTextEdit(FindComponent('GIBFaturaNo')).Text :=
                    GibFaturaNoUret(datalar.AktifSirket,
                                    TcxDateEditKAdir(FindComponent('FaturaTarihi')).GetValue,
                                    '-1');

                 end;
    end;
  end;

  inherited;

  case TControl(sender).Tag  of
    Kaydet : begin
               if varToStr(TcxImageComboKadir(FindComponent('FaturaTip')).EditValue) <> '3'
               Then begin
                 if Length(TcxTextEdit(FindComponent('GIBFaturaNo')).Text) <> 16
                 Then begin
                    ShowMessageSkin('Fatura G�B No Hatal�','�rnek , ABC0123456789 Format�nda 16 karakter Olmal�','','info');
                    TcxTextEdit(FindComponent('GIBFaturaNo')).SetFocus;
                    exit;
                 end;

                 FaturaGrid.Enabled := True;

                 if faturaNoDegisti = True
                 then begin
                     faturaId := TcxButtonEdit(FindComponent('sira')).Text;
                     sql :=  'exec sp_FaturaNumaraTarihceIDUpdate ' + faturaId;
                     datalar.QueryExec(sql);
                     faturaNoDegisti := False;
                 end;

               end;


             end;
    Yeni   : begin


               TcxTextEditKadir(FindComponent('faturaNo')).text := '0';
               TcxImageComboKadir(FindComponent('FaturaTip')).EditValue := 1;
               TcxImageComboKadir(FindComponent('ozelKod')).EditValue := 1;
               TcxDateEditKadir(FindComponent('FaturaTarihi')).EditValue := date;
               FaturaGrid.Enabled := False;
               FaturaDetay;
             end;
  end;
end;


procedure TfrmFaturaDetay.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    inherited;
    if TcxButtonEditKadir(sender).name = 'SirketKod'
    then
      TcxTextEditKadir(FindComponent('sirketTanimi')).Text := TcxButtonEditKadir(sender).tanimDeger
    else
    begin
      Enabled;
      FaturaDetay;
    end;


end;

function TfrmFaturaDetay.Init(Sender : TObject) : Boolean;
var
  _obje_ : TcxCustomEdit;
begin
 if _FaturaNo_ <> ''
 then begin
  _obje_ := TcxButtonEditKadir(FindComponent('sira'));
  TcxButtonEditKadir(FindComponent('sira')).EditValue := _FaturaNo_;
  indexKaydiBul(TcxButtonEditKadir(_obje_).EditValue ,TcxButtonEditKadir(_obje_).name);
  FaturaDetay;
  Enabled;
 end;
  Result := True;
  inherited;
end;


procedure TfrmFaturaDetay.Fatura(islem: Integer);
begin
  //
end;

procedure TfrmFaturaDetay.NewRecord(DataSet: TDataSet);
begin
   FaturaGrid.Dataset.FieldByName('FaturaId').AsInteger := TcxButtonEditKadir(FindComponent('Sira')).EditingValue;
end;

procedure TfrmFaturaDetay.PropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
 if TcxTextEdit(Sender).name = 'GIBFaturaNo'
 Then begin
   faturaNoDegisti := True;
 end;

 (*
 if TcxTextEdit(Sender).name = 'FaturaTip'
 Then begin
    if varToStr(TcxImageComboKadir(FindComponent('FaturaTip')).EditValue) = '3'
    then begin

    end;
 end
 else *)
 if TcxTextEdit(Sender).name = 'OzelKod'
 Then begin
    if varToStr(TcxImageComboKadir(FindComponent('OzelKod')).EditValue) = '1'
    then begin
        TdxLayoutGroup(FindComponent('dxLailaveFaturaTip')).Visible := true;
        TdxLayoutGroup(FindComponent('dxLaevrakRefNo')).Visible := true;
        TdxLayoutGroup(FindComponent('dxLaHastaDosyaNo')).Visible := False;
        FaturaSatirlarColumnLot.Visible := False;
    end
    else
    if varToStr(TcxImageComboKadir(FindComponent('OzelKod')).EditValue) = '2'
    then
    begin
        TdxLayoutGroup(FindComponent('dxLailaveFaturaTip')).Visible := false;
        TdxLayoutGroup(FindComponent('dxLaevrakRefNo')).Visible := false;
        TdxLayoutGroup(FindComponent('dxLaHastaDosyaNo')).Visible := True;
        FaturaSatirlarColumnLot.Visible := False;
    end
    else
    begin
        TdxLayoutGroup(FindComponent('dxLailaveFaturaTip')).Visible := false;
        TdxLayoutGroup(FindComponent('dxLaevrakRefNo')).Visible := false;
        TdxLayoutGroup(FindComponent('dxLaHastaDosyaNo')).Visible := false;

        FaturaSatirlarColumnLot.Visible := True;
    end;
 end;


end;

procedure TfrmFaturaDetay.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
     FaturaGrid.Dataset.Requery();
     FaturaToplamlari;

end;

procedure TfrmFaturaDetay.cxButtonCClick(Sender: TObject);
var
  List : TListeAc;
  L : ArrayListeSecimler;
begin
  inherited;


  case Tcontrol(sender).Tag of
  -9 : begin
         Fatura(yeniFatura);
       end;
  -11 : begin
         Fatura(faturaDuzenle);
       end;
  -20 : begin
         //Gonder;
        end;
  -21:begin
      // guid := GridCellToString(GridFaturalar,'UUID',0);
      // EArsivIptal(guid);
  end;
  -22,-23:begin
         //   guid := GridCellToString(GridFaturalar,'UUID',0);
         //   EArsivPDF(guid,Tcontrol(sender).Tag);
          end;
  -24:begin

  end;
  -26 : begin
          if varToStr(TcxImageComboKadir(FindComponent('ozelKod')).EditValue) = '3'
          then
             List := ListeAcCreate('StokKart_View','code,name1,tanimi,0',
                                  'StokKod,StokTan�m,StokTipi,Fiyat',
                                  '50,250,50,80','List','Hizmet Listesi','',4,True)

          else
            List := ListeAcCreate('HIZMET','code,name1,kdv,SATISF00',
                                  'HizmetKod,HizmetTan�m,Kdv,Fiyat',
                                  '50,250,50,80','List','Hizmet Listesi','',4,True);


          try
            L := List.ListeGetir;
            if High (L) >= 0 then
            begin
              FaturaGrid.Dataset.Append;
              try
                FaturaGrid.Dataset.FieldByName('hizmetkodu').AsString := L[0].kolon1;
                FaturaGrid.Dataset.FieldByName('hizmetAdi').AsString := L[0].kolon2;

                if varToStr(TcxImageComboKadir(FindComponent('ozelKod')).EditValue) <> '3'
                Then begin
                  FaturaGrid.Dataset.FieldByName('kdv').AsString := L[0].kolon3;
                  FaturaGrid.Dataset.FieldByName('fiyat').AsString := L[0].kolon4;
                end;

                FaturaGrid.Dataset.post;
              except
                FaturaGrid.Dataset.Cancel;
                raise;
              end;
            end;
          finally
            List.Free;
          end;
        end;
  -27 : begin
          if mrYes = ShowMessageSkin('Sat�r� Silmek �stedi�inizden Emin misiniz?','','','msg')
          then begin
            FaturaGrid.Dataset.Delete;
            FaturaGrid.Dataset.Requery();
            FaturaToplamlari;
          end;
        end;
  end;
end;

procedure TfrmFaturaDetay.FormCreate(Sender: TObject);
var
  List,Faturalar : TListeAc;
  FaturaTip,FaturaOzelKodlari , sirketKod : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
  SirketAdi : TcxTextEditKadir;
begin
  inherited;

  ClientWidth := 780;
  ClientHeight := 630;

  faturaNoDegisti := False;

  cxPanel.Visible := True;
  Menu := PopupMenu1;
  indexFieldName := 'sira';
  TableName := 'Faturalar';
 // TopPanel.Visible := true;

  cxPanelButtonVisible(true,true,false);

  Faturalar := ListeAcCreate('faturalarView','Sira,sirketTanimi,FaturaTipTanimi,FaturaTarihi',
                       'ID,�irket,FaturaTip,FaturaTarihi',
                       '50,250,50,80','Sira','Faturalar','',5,True);

  setDataStringB(self,'sira','FaturaID',Kolon1,'FaturaID',70,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('sira')).Identity := True;

  setDataString(self,'FaturaNo','Fatura Ref.No',Kolon1,'FaturaID',50,True,'',false,0,'0');

  setDataString(self,'GIBFaturaNo','Fatura GIB No',Kolon1,'FaturaID',130,False,'',False);
 // setDataString(self,'Guid','Fatura Guid',Kolon1,'FaturaID',250,False,'',True);

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'FaturaTarihi','Fatura Tarihi',Kolon1,'FaturaID',100);

  (*
  List := ListeAcCreate('SIRKETLER_TNM','sirketKod,tanimi,Aktif',
                       'SirketKod,Sirket,Durum',
                       '50,250,50','SirketKod','Firma Listesi',' FirmaTip = 3',5,True);

  setDataStringB(self,'SirketKod','�irket Kodu',Kolon1,'SirketTnm',100,List,False,nil,'','',True,True,1);

  sirketAdi := TcxTextEditKadir.Create(self);
  sirketAdi.Properties.ReadOnly := True;
  //sirketAdi.Enabled := False;
  SirketAdi.TabStop := False;
  setDataStringKontrol(self,sirketAdi,'sirketTanimi','',Kolon1,'SirketTnm',500);
 // setDataStringBLabel(self,'SirketKod',Kolon1,'SirketTnm',350,' ','','sirketTanimi');

   *)
  sirketKod := TcxImageComboKadir.Create(self);
  sirketKod.Conn := datalar.ADOConnection2;
  sirketKod.TableName := 'SIRKETLER_TNM';
  sirketKod.ValueField := 'sirketKod';
  sirketKod.DisplayField := 'tanimi';
  sirketKod.Filter := ' FirmaTip in (2,3)';
  sirketKod.BosOlamaz := True;
  setDataStringKontrol(self,sirketKod,'SirketKod','M��teri',Kolon1,'',250);
  OrtakEventAta(sirketKod);

  sirketKod := TcxImageComboKadir.Create(self);
  sirketKod.Conn := datalar.ADOConnection2;
  sirketKod.TableName := 'SIRKETLER_TNM';
  sirketKod.ValueField := 'sirketKod';
  sirketKod.DisplayField := 'tanimi';
  sirketKod.Filter := ' FirmaTip = 1';
  sirketKod.BosOlamaz := True;
  setDataStringKontrol(self,sirketKod,'DiyalizSirketKod','Merkez',Kolon1,'',250);
  OrtakEventAta(sirketKod);



  FaturaTip := TcxImageComboKadir.Create(self);
  FaturaTip.Conn := datalar.ADOConnection2;
  FaturaTip.TableName := 'FaturaTipleri';
  FaturaTip.ValueField := 'Kod';
  FaturaTip.DisplayField := 'tanimi';
  FaturaTip.Filter := '';
  FaturaTip.BosOlamaz := True;
  setDataStringKontrol(self,FaturaTip,'FaturaTip','Fatura Tipi',Kolon1,'FT',81);
  OrtakEventAta(FaturaTip);


  FaturaOzelKodlari := TcxImageComboKadir.Create(self);
  FaturaOzelKodlari.Conn := datalar.ADOConnection2;
  FaturaOzelKodlari.TableName := 'FaturaOzelKodlari';
  FaturaOzelKodlari.ValueField := 'Kod';
  FaturaOzelKodlari.DisplayField := 'tanimi';
  FaturaOzelKodlari.Filter := '';
  FaturaOzelKodlari.BosOlamaz := True;
  setDataStringKontrol(self,FaturaOzelKodlari,'OzelKod','Fatura �zel Kod',Kolon1,'FT',82);
  OrtakEventAta(FaturaOzelKodlari);



  FaturaTip := TcxImageComboKadir.Create(self);
  FaturaTip.Conn := nil;
  FaturaTip.ItemList := 'SAGLIK_HAS;Hastane,SAGLIK_ECZ;Eczane,SAGLIK_OPT;Optik,SAGLIK_MED;Medical';
  FaturaTip.Filter := '';
  FaturaTip.BosOlamaz := True;
  setDataStringKontrol(self,FaturaTip,'ilaveFaturaTip','SGK Fat.Tipi / E.RefNo',Kolon1,'sgk',100);
  OrtakEventAta(FaturaTip);

  setDataString(self,'evrakRefNo','',Kolon1,'sgk',100,False,'');


  FaturaOzelKodlari := TcxImageComboKadir.Create(self);
  FaturaOzelKodlari.Conn := datalar.ADOConnection2;
  FaturaOzelKodlari.TableName := '(select dosyaNo HastaDosyaNo,HASTAADI+'' ''+HASTASOYADI tanimi from HastaKart) t';
  FaturaOzelKodlari.ValueField := 'HastaDosyaNo';
  FaturaOzelKodlari.DisplayField := 'tanimi';
  FaturaOzelKodlari.Filter := '';
  //FaturaOzelKodlari.Tag := ;
  setDataStringKontrol(self,FaturaOzelKodlari,'HastaDosyaNo','Hasta',Kolon1,'DosyaNo',250);
  TcxImageComboKadir(FindComponent('HastaDosyaNo')).Properties.ReadOnly := True;

//  setDataString(self,'HastaDosyaNo','Hasta DosyaNo',Kolon1,'DosyaNo',100,False,'');

  (*
  if varToStr(TcxImageComboKadir(FindComponent('OzelKod')).EditValue) = '1'
  then begin
      TdxLayoutGroup(FindComponent('dxLailaveFaturaTip')).Visible := true;
      TdxLayoutGroup(FindComponent('dxLaevrakRefNo')).Visible := true;
      TdxLayoutGroup(FindComponent('dxLaDosyaNo')).Visible := False;
  end
  else
  if varToStr(TcxImageComboKadir(FindComponent('OzelKod')).EditValue) = '2'
  then
  begin
      TdxLayoutGroup(FindComponent('dxLailaveFaturaTip')).Visible := false;
      TdxLayoutGroup(FindComponent('dxLaevrakRefNo')).Visible := false;
      TdxLayoutGroup(FindComponent('dxLaDosyaNo')).Visible := True;
  end
  else
  begin
      TdxLayoutGroup(FindComponent('dxLailaveFaturaTip')).Visible := false;
      TdxLayoutGroup(FindComponent('dxLaevrakRefNo')).Visible := false;
      TdxLayoutGroup(FindComponent('dxLaDosyaNo')).Visible := false;
  end;
   *)






  setDataStringBLabel(self,'bosSatir',kolon1,'',750,'Fatura Mal ve Hizmetleri');
  setDataStringKontrol(self,FaturaGrid,'FaturaGrid','',Kolon1,'',750,300);
  FaturaGrid.Dataset.Connection := datalar.ADOConnection2;
  FaturaGrid.Dataset.OnNewRecord := NewRecord;
  FaturaGrid.Dataset.AfterPost := AfterPost;

  kolon2.Visible := false;
  kolon3.Visible := false;
  kolon4.Visible := false;
  setDataStringBLabel(self,'bosSatirFTop',kolon1,'FTop',538,'');
  setDataStringKontrol(self,TutarToplam,'faturaTutar','Fatura Toplam ',Kolon1,'Ftop',100);
  setDataStringBLabel(self,'bosSatirkdvTop',kolon1,'kdvTop',538,'');
  setDataStringKontrol(self,kdvToplam,'kdv','Kdv Tutar�',Kolon1,'kdvTop',100);
  setDataStringBLabel(self,'bosSatirGTop',kolon1,'GTop',538,'');
 // setDataStringKontrol(self,'aciklama','aciklama','',Kolon1,'Gtop',538);

  setDataStringKontrol(self,SatirToplam,'faturaGenelTutar','Fatura Genl Toplam',Kolon1,'Gtop',100);


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('','','','','');
  Disabled(self,True);



end;

procedure TfrmFaturaDetay.FormShow(Sender: TObject);
begin
  inherited;
  if _FaturaIptal  then
  begin
     cxTopPanelAltOrta.Enabled := False;
     Disabled(self,False);
     FaturaGrid.Enabled := False;
     cxPanelButtonEnabled(False,False,False);
  end;
end;

procedure TfrmFaturaDetay.GozlemYazdir(const GozlemID: integer);
var
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'sp_SahaGozlemRaporBaski ' + IntToStr (GozlemID);

    datalar.QuerySelect(ado, sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset0.Name := 'SahaSaglikGozetimRaporu';

    PrintYap('007','Saha Sa�l�k G�zetim Raporu','',TopluDataset,pTNone)
  finally
    ado.free;
  end;
end;

procedure TfrmFaturaDetay.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

