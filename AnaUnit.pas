unit AnaUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,EncdDecd,
  cxLookAndFeelPainters, Vcl.ExtCtrls, dxNavBar,kadirType,kadir,GirisUnit,
  KadirLabel, Data.Win.ADODB, dxSkinsForm, dxSkinsdxStatusBarPainter,
  dxStatusBar, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ImgList, cxClasses, dxNavBarBase,
  dxNavBarCollns,JPEG, Vcl.StdCtrls,pngimage, cxContainer, cxEdit, cxImage,
  cxTextEdit, cxCurrencyEdit, dxSkinsCore, GetFormClass, dxSkinscxSchedulerPainter,
   cxStyles, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView, cxGroupBox,
  cxRadioGroup, cxSchedulerAggregateStorage, cxSchedulerDBStorage, Menus,
  cxButtons, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxPC, Vcl.OleCtrls, SHDocVw,
  cxSchedulerStrs, cxMaskEdit,strUtils,ShellApi,MSHTML,
  cxDropDownEdit, cxImageComboBox, Data.SqlExpr, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxMemo, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, DB, cxLabel, acPNG, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinsDefaultPainters, dxSkinsdxNavBarPainter, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins,NThermo;

type
  TAnaForm = class(TForm)
    MainMenuKadir1: TMainMenuKadir;
    Timer1: TTimer;
    Timer2: TTimer;
    dxSkinController1: TdxSkinController;
    ToolImage32: TcxImageList;
    ToolImage32_: TcxImageList;
    Menu_Image32: TcxImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton10: TToolButton;
    ToolButton3: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    dxStatusBar1: TdxStatusBar;
    MenuAktifSirket: TdxNavBarGroup;
    cxImageList3: TcxImageList;
    cxImageToolPanel: TcxImageList;
    EventsDataSource: TDataSource;
    EventsTable: TADOTable;
    DBStorage: TcxSchedulerDBStorage;
    UnboundStorage: TcxSchedulerStorage;
    cxSchedulerStorage1: TcxSchedulerStorage;
    cxSchedulerAggregateStorage1: TcxSchedulerAggregateStorage;
    cxSchedulerHolidays1: TcxSchedulerHolidays;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    DataSource1: TDataSource;
    UserTable: TADOTable;
    sayfalar: TcxPageControl;
    AjandaPage: TcxTabSheet;
    pnl_Ajanda: TcxGroupBox;
    Panel1: TPanel;
    cxRadioGroup1: TcxRadioGroup;
    DuyuruPage: TcxTabSheet;
    WebBrowser1: TWebBrowser;
    Menu_Image24: TcxImageList;
    Menu_Image16: TcxImageList;
    Menu_Image24x24: TcxImageList;
    MenuPanel: TcxGroupBox;
    Sirketler: TcxImageComboKadir;
    Subeler: TcxImageComboKadir;
    cxSchedulerDBStorage2: TcxSchedulerDBStorage;
    xTmpPanel: TPanel;
    btRefresh: TcxButtonKadir;
    AjandaAltPage: TcxPageControl;
    pageAjanda: TcxTabSheet;
    Liste: TcxTabSheet;
    cxScheduler1: TcxScheduler;
    AjandaGrid: TcxGridKadir;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    AjandaGridSatirlar: TcxGridDBBandedTableView;
    AjandaGridSatirlarLocation: TcxGridDBBandedColumn;
    AjandaGridSatirlartanimi: TcxGridDBBandedColumn;
    AjandaGridSatirlarILCE: TcxGridDBBandedColumn;
    AjandaGridSatirlarHizmetSure: TcxGridDBBandedColumn;
    AjandaGridSatirlarGirisSaat: TcxGridDBBandedColumn;
    AjandaGridSatirlarCikisSaat: TcxGridDBBandedColumn;
    AjandaGridSatirlarPlanlananTarih: TcxGridDBBandedColumn;
    AjandaGridSatirlarResourceId: TcxGridDBBandedColumn;
    AjandaGridSatirlarADISOYADI: TcxGridDBBandedColumn;
    AjandaGridSatirlarColumn1: TcxGridDBBandedColumn;
    AjandaGridSatirlarColumn2: TcxGridDBBandedColumn;
    AjandaGridLevel1: TcxGridLevel;
    AjandaPanel: TcxGroupBox;
    btnYazdir: TcxButtonKadir;
    cxButtonKadir1: TcxButtonKadir;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    AjandaGridSatirlarColumn3: TcxGridDBBandedColumn;
    FotoPanel: TcxGroupBox;
    cxAdi: TcxLabel;
    cxGrupAdi: TcxLabel;
    Foto: TcxImage;
    Panel2: TPanel;
    Label2: TLabel;
    Doktorlar: TcxImageComboKadir;
    cxStyle2: TcxStyle;
    ilacList: TcxImageComboKadir;
    Hemsireler: TcxImageComboKadir;
    Doktors: TcxImageComboKadir;
    Noktaesaj: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure MainMenuKadir1GroupClick(Sender: TObject; AGroup: TdxNavBarGroup);
    procedure MainMenuKadir1LinkClick(Sender: TObject;
      ALink: TdxNavBarItemLink);
    procedure menuclik(_tag_ : integer ; FormID : integer = 0; ShowTip : integer = 0);
    procedure ToolButtonClick(Sender: TObject);
    function GetResourceAsJpeg(const resname: string): TJPEGImage;
  //  function GetResourceAsString(const resname: string): TstringList;
    function GetResourceAsPNG(const resname: string): TPNGImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxRadioGroup1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure sayfalarCanCloseEx(Sender: TObject; ATabIndex: Integer;
      var ACanClose: Boolean);
    procedure sayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    function GuncellemeKontrol : boolean;
    procedure GuncellemeBaslat(const bAutomatic: Boolean);
    procedure MainMenuKadir1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure MainMenuKadir1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure MainMenuKadir1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure MainMenuKadir1LinkPress(Sender: TObject;
      ALink: TdxNavBarItemLink);
    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure SubelerPropertiesChange(Sender: TObject);
    procedure cxScheduler1InitEventImages(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AImages: TcxSchedulerEventImages);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btRefreshClick(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);
    procedure cxButtonKadir1Click(Sender: TObject);
    procedure AjandaAltPagePageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure cxScheduler1AfterEditing(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent);
    procedure HesapBilgileriYukle;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SirketlerEnabled;
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure WebBrowser1NavigateComplete2(ASender: TObject;
      const pDisp: IDispatch; const URL: OleVariant);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
  private
    { Private declarations }
    procedure WMSettingChange(var Message: TMessage); message WM_SETTINGCHANGE;
  protected
    procedure SetUserInfo;
    procedure SetMenu;
  public
    { Public declarations }
    destructor Destroy; override;
  end;

   const
  ScreenWidth : LongInt = 1024;
  ScreenHeight : LongInt = 768;

var
  AnaForm: TAnaForm;
  f : double;
  _pressItem_ : TdxNavBarItem;
  _targetGroup_ : TdxNavBarGroup;
  _uygulama : String;

implementation
      uses Tnm_Ilaclar,
      Tnm_LabTest,
      Data_Modul,
      PersonelKart,
      Login,
      EventCompletDurumBildir,
      Tnm_UserSettings,
      sifreDegis,
      Update_G,
      MedEczane;

{$R *.dfm}
{$R xx.res}

procedure TAnaForm.SetMenu;
var
 i,j : integer;
begin

  MainMenuKadir1.KullaniciAdi := datalar.username;
  MainMenuKadir1.ProgramTip := 'K';// datalar.programTip
  try
   MainMenuKadir1.LisansTip := strtoint(datalar.LisansTipDeger);
  except on e : exception do
   begin
    ShowMessageSkin('Lisans Tipi Okunamad�','','','info');
    MainMenuKadir1.LisansTip := 0;
   end;
  end;

  MainMenuKadir1.MenuGetir;

  for i := 0 to MainMenuKadir1.Items.Count - 1 do
  begin
    for j := 0 to ToolBar1.ButtonCount - 1 do
    begin
      if MainMenuKadir1.Items[i].Tag = ToolBar1.Buttons[j].Tag
      then begin
        ToolBar1.Buttons[j].Visible := MainMenuKadir1.Items[i].Visible;
        ToolBar1.Buttons[j].Hint := MainMenuKadir1.Items[i].Hint;
   //     ToolBar1.Buttons[j].ImageIndex := MainMenuKadir1.Items[i].LargeImageIndex;
      end;

    end;
  end;
end;

procedure TAnaForm.WebBrowser1DocumentComplete(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
var
   iDoc: IHTMLDocument2;
   i: integer;
   ov: OleVariant;
   iDisp: IDispatch;
   iColl: IHTMLElementCollection;
   iInputElement : IHTMLInputElement;
   iTextElement:IHTMLTextAreaElement;
   formelement:IHtmlFormElement;
   _goster : integer;
  Buttons: OleVariant;
  Button: OleVariant;
  bb , muayeneKayit , YeniSifreDogrulama , sifreDegistirildi , hosgeldin : integer;
  ss : string;
begin
 //  if ButtonClick = True then exit;
   ss := (Webbrowser1.Document as ihtmldocument2).body.parentelement.outerhtml;
 //  cxMemo1.Text := (Webbrowser1.Document as ihtmldocument2).body.parentelement.outerhtml;
   YeniSifreDogrulama := pos('Yeni �ifre Do�rulama',ss);
   muayeneKayit := pos('MUAYENE KAYIT',ss);
   sifreDegistirildi := pos('De�i�tirildi',ss);
   hosgeldin := pos('Ho�geldin',ss);

   if (hosgeldin > 0) and (YeniSifreDogrulama = 0)
   then begin
      WebBrowser1.Navigate('https://medula.sgk.gov.tr/hastane/pages/sifreDegistir.jsf');
   end;



      idoc := Webbrowser1.document as IHTMLDocument2;
      ov := 'INPUT';
      IDisp := iDoc.all.tags(ov);
      if assigned(IDisp)
      then begin
               IDisp.QueryInterface(IHTMLElementCollection, iColl);
               if assigned(iColl)
               then begin
                         for i := 1 to iColl.Get_length do
                         begin
                            iDisp := iColl.item(pred(i), 0);
                            iDisp.QueryInterface(IHTMLInputElement, iInputElement);
                            if assigned(iInputElement) then


                           (*
                            if _uygulama = 'Medula'
                            Then begin
                              if iInputElement.Get_name = 'j_id_9:userName' //'j_username'
                              then iInputElement.Set_value(_user);

                              if iInputElement.Get_name = 'j_id_9:j_id_j' //'j_password'
                              then iInputElement.Set_value(_pas);
                            end;
                             *)

                           (*
                            if (iInputElement.Get_type_ = 'submit')
                         //  and (iInputElement.Get_name = 'form1:buttonSorgula')
                               then iInputElement.select;
                             *)
                          end;

                          Buttons := WebBrowser1.OleObject.Document.getElementsByTagName('button');
                          for I := 0 to Buttons.Length - 1 do
                          begin
                            Button := Buttons.item(I);
                            if Button.innerText = 'De�i�tir' then
                            begin
                              Button.click();
                              ButtonClick := True;
                              Break;
                            end;
                          end;

               end;
      end;
end;

procedure TAnaForm.WebBrowser1NavigateComplete2(ASender: TObject;
  const pDisp: IDispatch; const URL: OleVariant);
var
  url__ : string;
begin
   url__ := URL;
end;

procedure TAnaForm.WMSettingChange(var Message: TMessage);
begin
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';
 // FormatSettings.ShortDateFormat := 'gg.aa.yyyy';
end;


function TAnaForm.GuncellemeKontrol : boolean;
var
  sql , guncel : string;
  ado : TADOQuery;
  deneme : integer;
begin
  ado := TADOQuery.Create(nil);
  try
    Result := False;
    ado.Connection := datalar.ADOConnection2;
    try
      sql := 'select SLK,SLT,SLX from parametreler where SLK = ''GT'' and SLB = ''0000''';
      datalar.QuerySelect(ado,sql);
      Guncel := ado.Fieldbyname('SLX').AsString;

      (*
      if datalar.ADOConnection1.Connected = false
      then begin
               deneme := 1;
               while deneme < 3 do
               begin
                    try
                       SQL_Host_Baglan;
                       deneme := 3;
                    except
                          deneme := deneme + 1;
                    end;
               end;

               if DATALAR.ADOConnection1.Connected = false
               then begin
                  exit;
               end;
      end;
        *)
      try
        datalar.Ado_Guncellemeler.Connection := datalar.ADOConnection2;
        sql := 'select * from OSGB_Master.dbo.UPDATE_CMD where ID > ' + guncel + ' and Modul = ''D''' +
               ' Order by ID ';
        datalar.QuerySelect(datalar.Ado_Guncellemeler,sql);
      except on e : Exception do
       begin
          ShowMessageSkin(e.Message,'','','info');
       end;
      end;

      if not datalar.Ado_Guncellemeler.Eof
      then begin
        Result := True
      end
      else
        Result := False;
    except

    end;
  finally
    ado.Free;
  end;


end;

procedure TAnaForm.HesapBilgileriYukle;
var
  sube , sql : string;
  _LabDataset_ : TDataset;
  ado : TADOQuery;
begin


 // datalar.QuerySelect(datalar.ADO_AktifSirket,'select * from SIRKETLER_TNM where sirketKod = ' +
 //                     QuotedStr(datalar.AktifSirket));



   ado := TADOQuery.Create(nil);
   try
     sql := 'select id,Value,Erisim_Tanimi,SLK,SLB,Sira,SLB_Tanimi,ValueTip,ValueObje,ValueObjeValues ' +
            ' from WebServisErisimBilgileri ' +
            ' where Ozel = ''O''';
      Datalar.ServisErisimBilgileri.Active := False;
      Datalar.ServisErisimBilgileri.Active := True;
      datalar.QuerySelect(ado,sql);
      Datalar.ServisErisimBilgileri.LoadFromDataSet(ado);
   finally
     ado.Free;
   end;
    try
      WebErisimBilgileriFirma(datalar.AktifSirket);

      if WebErisimBilgi('98','00') = 'Ger�ek'
      Then BEgin
        datalar._tesisKodu := WebErisimBilgiFirma('98','01');//datalar.ADO_AktifSirket.FieldByName('TesisKodu').AsInteger;
        datalar._username := WebErisimBilgiFirma('98','07');//datalar.ADO_AktifSirket.FieldByName('TesisKodu').AsString;
        datalar._sifre := WebErisimBilgiFirma('98','08');//datalar.ADO_AktifSirket.FieldByName('HastaKabulSifre').AsString;
        datalar._kurumKod := strToint(ifThen(datalar._tesisKodu='','0',datalar._tesisKodu));
        datalar._medulaOrtam_ := 'G';
        datalar.receteURL := WebErisimBilgi('98','02');
        datalar._donemuser := WebErisimBilgiFirma('98','09');
        datalar._donemsifre := WebErisimBilgiFirma('98','10');

      End
      Else
      begin
        datalar._tesisKodu := WebErisimBilgi('98','03');//datalar.ADO_AktifSirket.FieldByName('TesisKodu').AsInteger;
        datalar._username := WebErisimBilgi('98','05');//datalar.ADO_AktifSirket.FieldByName('TesisKodu').AsString;
        datalar._sifre := WebErisimBilgi('98','06');//datalar.ADO_AktifSirket.FieldByName('HastaKabulSifre').AsString;
        datalar._kurumKod := strToint(ifThen(datalar._tesisKodu='','0',datalar._tesisKodu));
        datalar._medulaOrtam_ := 'T';
        datalar.receteURL := WebErisimBilgi('98','04');
      end;


        if WebErisimBilgi('EF','00') = 'Ger�ek'
        Then begin
          datalar.efaturaURL := WebErisimBilgi('EF','02');
          datalar.efaturaUsername := WebErisimBilgiFirma('EF','03');
          datalar.efaturaSifre := WebErisimBilgiFirma('EF','04');
         // datalar.efaturaUsername := WebErisimBilgi('EF','03');
         // datalar.efaturaSifre := WebErisimBilgi('EF','04');
          datalar.portalURL := WebErisimBilgiOrtak('EF','08');
          datalar.portalUSer := WebErisimBilgiFirma('EF','09');
          datalar.portalSifre := WebErisimBilgiFirma('EF','10');
        end
        Else
        begin
          datalar.efaturaURL := WebErisimBilgiOrtak('EF','05');
          datalar.efaturaUsername := WebErisimBilgiOrtak('EF','06');
          datalar.efaturaSifre := WebErisimBilgiOrtak('EF','07');
          datalar.portalURL := WebErisimBilgiOrtak('EF','08');
          datalar.portalUSer := WebErisimBilgiOrtak('EF','09');
          datalar.portalSifre := WebErisimBilgiOrtak('EF','10');
        end;



        datalar.E2033HataTakipYaz  := WebErisimBilgi('SNT','04');
        datalar.efaturaTaslak := WebErisimBilgi('EF','11');


      datalar._donemuser := WebErisimBilgiFirma('98','09');
      datalar._donemsifre := WebErisimBilgiFirma('98','10');

      datalar.MedulayaGidenKaydiKitle := WebErisimBilgi('98','15');


      datalar._userSaglikNet2_ := WebErisimBilgiFirma('SNT','02');//datalar.ADO_AktifSirket.FieldByName('SaglikNetKullaniciAdi').AsString;
      datalar._passSaglikNet2_ := WebErisimBilgiFirma('SNT','03');//datalar.ADO_AktifSirket.FieldByName('SaglikNetSifre').AsString;
      datalar._KurumSKRS_ := WebErisimBilgiFirma('SNT','01');


      datalar.SMSHesapUser := WebErisimBilgiFirma('SMS','00');
      datalar.SMSHesapSifre := WebErisimBilgiFirma('SMS','01');
      datalar.SMSHesapFrom := WebErisimBilgiFirma('SMS','02');
      datalar.WhatsappTelefonToken := WebErisimBilgiFirma('SMS','03');
      datalar.WhatsappMesajTagEkle := WebErisimBilgiFirma('SMS','04');

      datalar.SMTPSunucu := WebErisimBilgi('EML','01');
      datalar.SMTPUserName := WebErisimBilgi('EML','02');
      datalar.SMTPPassword := WebErisimBilgi('EML','03');
      datalar.SMTPPort := WebErisimBilgi('EML','04');
      datalar.SMTPSEndTip := WebErisimBilgi('EML','06');
      datalar.SMTPSSL :=  WebErisimBilgi('EML','05');

      datalar._labusername := WebErisimBilgiFirma('LA','00');
      datalar._labsifre := WebErisimBilgiFirma('LA','01');
      datalar._labkurumkod := WebErisimBilgiFirma('LA','02');
      datalar._labkurumkodText := WebErisimBilgiFirma('LA','03');
      datalar._labID := WebErisimBilgiFirma('LA','05');
      datalar._LabBarkodOlustur := WebErisimBilgiFirma('LA','11');


      datalar.KurumBransi := WebErisimBilgiFirma('98','11');

      try
        try
          ado := datalar.QuerySelect('select tcKimlikNo,substring(tanimi,1,charindex('' '',tanimi)) adi, ' +
                                     'substring(tanimi,charindex('' '',tanimi)+1,50) soyadi ' +
                                     ' from doktorlarT where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                            ' and durum = ''Aktif'' and MesulMudur = 1');
          if not ado.Eof
          then begin
            datalar._mesulMudurTc_ := ado.FieldByName('tcKimlikNo').AsVariant;
            datalar._mesulMudurAdi_ := ado.FieldByName('adi').AsString;
            datalar.mesulMudurSoyadi_ := ado.FieldByName('soyadi').AsString;
          end;
        finally
          ado.free;
        end;
      except
      end;

   //   datalar._labSonucIcinGozArdiEt := WebErisimBilgiFirma('817');

      _LabDataset_ := datalar.QuerySelect('select WebserviceURL,CalismaTipi,BarkodBasim from OSGB_MASTER.dbo.LabFirmalar where kod = ' +
                                     QuotedStr(datalar._labID));

       datalar._laburl := _LabDataset_.FieldByName('WebserviceURL').AsString;
       datalar._LabCalismaYon := _LabDataset_.FieldByName('CalismaTipi').AsString;
       datalar._LabBarkodBasim := _LabDataset_.FieldByName('BarkodBasim').AsString;

       TestKodToNormalDegerYukle;


       datalar.eNabizKayit := WebErisimBilgi('PRM','03');
       datalar.MakineNoKontrol := WebErisimBilgi('PRM','06');
       datalar.DefaultTedaviTuru := WebErisimBilgi('98','12');
       datalar.DefaultTedaviTipi := WebErisimBilgi('98','13');

       datalar.SeansOnayDoktorHemsireYapar := WebErisimBilgi('98','14');
       datalar.KimlikDogrulamaOlmadanSeansOnayla := WebErisimBilgi('PRM','05');

       datalar.itsGLN := WebErisimBilgiFirma('ITS','00');
       datalar.itsUser := WebErisimBilgiFirma('ITS','01');
       datalar.itsPass := WebErisimBilgiFirma('ITS','02');

       datalar._DyobKurumKodu_ := WebErisimBilgiFirma('TDS','00');
       datalar._DyobSifre_ := WebErisimBilgiFirma('TDS','01');
       datalar._DyobServiceKodu_ := WebErisimBilgiFirma('TDS','02');

       datalar.AlpemixRun := WebErisimBilgi('UD','03');
       datalar.AlpemixGrupAdi := WebErisimBilgiFirma('UD','00');
       datalar.AlpemixGrupParola := WebErisimBilgiFirma('UD','01');


       ado := datalar.QuerySelect('select Telefon,AdiSoyadi from SIRKET_SUBE_EKIP where SirketKod = ' + QuotedStr(datalar.AktifSirket) + ' and Gorevi = ''59''');
       try
        datalar.KaliteBirim.BirimDirektoruAdi := ado.FieldByName('AdiSoyadi').AsString;
        datalar.KaliteBirim.BirimDirektoruTel := ado.FieldByName('Telefon').AsString;
       finally
        ado.Free;
       end;

    except on e : exception do
     begin
       ShowMessageSkin(e.Message,'','','info');
     end;
    end;




  // Lab Eri�im bilgileri buraya al�nacak



  datalar.HizmetKayitWS.UserName := datalar._username;
  datalar.HizmetKayitWS.Password := datalar._sifre;
  datalar.HastaKabulWS.UserName := datalar._username;
  datalar.HastaKabulWS.Password := datalar._sifre;
  datalar.HastaKabulWS.saglikNetUsername := datalar._userSaglikNet2_;
  datalar.HastaKabulWS.salikNetPassword := datalar._passSaglikNet2_;

  datalar.YardimciIslemWS.UserName := datalar._username;
  datalar.YardimciIslemWS.Password := datalar._sifre;
  datalar.FaturaKayitWS.UserName := datalar._username;
  datalar.FaturaKayitWS.Password := datalar._sifre;
  datalar.RaporIslemWS.UserName := datalar._username;
  datalar.RaporIslemWS.Password := datalar._sifre;

  if datalar._medulaOrtam_ = 'T'
  Then begin
   datalar.RaporIslemWS.Method := mTest;
   datalar.HizmetKayitWS.Method := mTest;
   datalar.HastaKabulWS.Method := mTest;
   datalar.YardimciIslemWS.Method := mTest;
   datalar.FaturaKayitWS.Method := mTest;
  end
  else
  begin
   datalar.RaporIslemWS.Method := mGercek;
   datalar.HizmetKayitWS.Method := mGercek;
   datalar.HastaKabulWS.Method := mGercek;
   datalar.YardimciIslemWS.Method := mGercek;
   datalar.FaturaKayitWS.Method := mGercek;
  end;

end;

procedure TAnaForm.GuncellemeBaslat(const bAutomatic: Boolean);
begin
  Application.CreateForm(TfrmUpdate, frmUpdate);
  try
    frmUpdate.UpdateTip(bAutomatic);
    frmUpdate.ShowModal;
  finally
    FreeandNil (frmUpdate);
  end;
end;



function GetResourceAsString(const resname: string): TstringList;
var
  Stream: TResourceStream;
begin
  Stream := TResourceStream.Create(HInstance, 'Deneme', 'TEXT');
  try
    result := TStringList.Create;
    result.LoadFromStream(Stream);
  finally
    stream.Free;
  end;
end;


function TAnaForm.GetResourceAsJpeg(const resname: string): TJPEGImage;
var
 Stream: TResourceStream;
begin
    Stream := TResourceStream.Create(hInstance, ResName, 'JPEG');
  try
    Result := TJPEGImage.Create;
    Result.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

function TAnaForm.GetResourceAsPNG(const resname: string): TPNGImage;
var
 Stream: TResourceStream;
begin
    Stream := TResourceStream.Create(hInstance, ResName, 'PNG');
  try
    Result := TPNGImage.Create;
    Result.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TAnaForm.btRefreshClick(Sender: TObject);
var
  sTmp : String;
  ado : TADOQuery;
  bRetry : boolean;
begin
  ado := TADOQuery.Create (Self);
  bRetry := False;
  try
    ado.Connection := DATALAR.ADOConnection2;
    try
      ado.SQL.Text := 'select 1 x';
      ado.Open;
      ado.Close;
    except
      on e:exception do
      begin
        bRetry := True;
        ShowMessageSkin('Veritaban� ba�lant�s� ba�ar�s�z oldu, tekrar ba�lan�lacak'#13#10#13#10 + e.Message, '', '', 'info');
      end;
    end;
    if bRetry then
    begin
      DATALAR.ADOConnection2.Close;
      Sleep (1000);
      DATALAR.ADOConnection2.Open;
    end;
    sTmp := Sirketler.Filter;
    Sirketler.Filter := ' FirmaTip = 1';
    Sirketler.Filter := sTmp;
    datalar.ReceteKullanimYollari.active := False;
    datalar.Ado_Doktorlar.Active := False;
    datalar.Ado_IGU.Active := False;
    datalar.Ado_DSP.Active := False;
    datalar.ADO_TehlikeSiniflari.Active := False;
    datalar.KontrolZorunlu.Active := False;
    datalar.ReceteKullanimYollari.active := True;
    datalar.Ado_Doktorlar.Active := True;
    datalar.Ado_IGU.Active := True;
    datalar.Ado_DSP.Active := True;
    datalar.ADO_TehlikeSiniflari.Active := True;
    datalar.KontrolZorunlu.Active := True;
    datalar.ADO_AktifSirket.Requery();
    datalar.ADO_aktifSirketLogo.Requery();
    ado.SQL.Text := 'Select Donem,Doktor, SirketKodu, IGU, DigerSaglikPers, Grup, ADISOYADI, GrupTanimi from Users where Kullanici = ' + SQLValue(DATALAR.username);
    ado.Open;
    try
      if not ado.Eof then
      begin
        DATALAR.doktorKodu := ado.FieldByName('doktor').AsString;
        datalar.sirketKodu := ado.FieldByName('SirketKodu').AsString;
        datalar.IGU := ado.FieldByName('IGU').AsString;
        datalar.DSPers := ado.FieldByName('DigerSaglikPers').AsString;
        datalar.UserGroup := ado.FieldByName('Grup').AsString;
        datalar.usernameAdi := ado.FieldByName('ADISOYADI').AsString;
        datalar.UserGroupName := ado.FieldByName('GrupTanimi').AsString;
        datalar.userTC := ado.FieldByName('Donem').AsString;
      end
      else begin
        DATALAR.doktorKodu := '';
        datalar.sirketKodu := '';
        datalar.IGU := '';
        datalar.DSPers := '';
        datalar.UserGroup := '';
        datalar.UserGroupName := '';
        DATALAR.usernameAdi := '';
        datalar.userTC := '';
      end;
      SetUserInfo;
    finally
      ado.Close;
    end;
  finally
    ado.Free;
  end;

  SetMenu;
  HesapBilgileriYukle;

end;

procedure TAnaForm.cxButton1Click(Sender: TObject);
begin
  pnl_Ajanda.Visible := false;
end;

procedure TAnaForm.cxButtonKadir1Click(Sender: TObject);
//var
  //GirisRecord : TGirisFormRecord;
  //F : TGirisForm;
  //uu : string;
begin
(*
    GirisRecord.F_Tarih1_ := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[0]);
    GirisRecord.F_Tarih2_ := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[cxScheduler1.DateNavigator.SelectionList.Count-1]);
    GirisRecord.F_ResourceID_ :=  cxScheduler1.SelResource.ResourceID;
    F := FormINIT(TagfrmAjandaOzet,self,GirisRecord,'',NewTab(AnaForm.sayfalar,TagfrmAjandaOzet),ikHayir,'');
    if F <> nil then F.ShowModal;
    *)
end;

procedure TAnaForm.AjandaAltPagePageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
var
  uu,t1,t2 : string;
begin
  if NewPage = Liste then
  begin
   t1 := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[0]);
   t2 := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[cxScheduler1.DateNavigator.SelectionList.Count-1]);

   if UserRight('Kullan�c� ��lemleri', 'Herkesin �� Plan�n� G�rs�n') = True
   then
    uu := ''
   else
   uu :=  cxScheduler1.SelResource.ResourceID;

   AjandaGrid.Dataset.Connection := datalar.ADOConnection2;
   AjandaGrid.Dataset.Active := False;
   AjandaGrid.Dataset.SQL.Text := 'exec sp_ajanda ' + QuotedStr(uu) + ',' +
                                                     QuotedStr(t1) + ',' +
                                                     QuotedStr(t2);

   AjandaGrid.Dataset.Active := True;

  end;

end;

procedure TAnaForm.btnYazdirClick(Sender: TObject);
var
  uu,sql,t1,t2 : string;
  TopluDataset : TDataSetKadir;
begin

   t1 := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[0]);
   t2 := FormatDateTime('YYYY-MM-DD',cxScheduler1.DateNavigator.SelectionList[cxScheduler1.DateNavigator.SelectionList.Count-1]);

   uu :=  AjandaGrid.Dataset.FieldByName('ResourceId').AsString;
   sql := 'exec sp_ajanda ' + QuotedStr(uu) + ','
                            + QuotedStr(t1) + ','
                            + QuotedStr(t2);
  // datalar.QuerySelect(sql);
   TopluDataset.Dataset0 := datalar.QuerySelect(sql);
   PrintYap('AJP','\Ajanda Yazd�r',inttoStr(Tag) ,TopluDataset,KadirType.pTNone);

end;

procedure TAnaForm.cxRadioGroup1PropertiesChange(Sender: TObject);
begin
  case cxRadioGroup1.EditValue of
     1 : cxScheduler1.ViewDay.Active := true;
     7 : cxScheduler1.ViewWeek.Active := true;
     365 : cxScheduler1.ViewYear.Active := true;
  end;
end;

procedure TAnaForm.cxScheduler1AfterEditing(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent);
var
  FB : TFirmaBilgi;
begin
  if AEvent.TaskStatus = tsComplete
  Then Begin
    FB := FirmaBilgileri(copy(AEvent.Location,1,pos('-',AEvent.Location)-1));
    Application.CreateForm(TfrmEventDurumBildir, frmEventDurumBildir);
    try
      frmEventDurumBildir.EMail := FB.YetkiliMail;
      frmEventDurumBildir.MobilTel := FB.YetkiliMobil;

      frmEventDurumBildir.mesaj :=
      datetimetostr(AEvent.Start) + ' - ' + datetimetostr(AEvent.Finish) + ' Tarihi ve Saatleri Aras�nda Ziyaretimiz ,' + char(13) +
      AEvent.Message;

      frmEventDurumBildir.ShowModal;
    finally
      FreeAndNil (frmEventDurumBildir);
    end;
  End;

end;

procedure TAnaForm.cxScheduler1InitEventImages(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent; AImages: TcxSchedulerEventImages);
//var
//  intValue  : Integer;
begin
  case integer(AEvent.TaskStatus) of
   0 : AImages.Add(77);
   1 : AImages.Add(85);
   2 : AImages.Add(82);
  end;
end;

destructor TAnaForm.Destroy;
begin
  inherited;
  FreeAndNil(Datalar);
end;

procedure TAnaForm.SirketlerEnabled;
begin
 if sayfalar.PageCount = 2
 then begin
   Sirketler.Enabled := True;
 end
 else begin
  // btRefresh.SetFocus;
   Sirketler.Enabled := False;
 end;
end;

procedure TAnaForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  datalar.LoginInOut.Login := lgnOut;
  datalar.LoginInOut.Execute;
  Datalar.ADOConnection2.Connected := false;
  Action := caFree;
  Release;
end;

procedure TAnaForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Canclose := ShowMessageSkin ('Programdan ��kmak istiyor musunuz ?', '', '', 'conf') = mrYes;
end;

procedure TAnaForm.FormCreate(Sender: TObject);
//var
// sube ,where : string;
//  i,j : integer;
begin
 // Res Dosya okuma
 //memo1.Lines := GetResourceAsString('Deneme');
 //cxImage1.Picture.Graphic := GetResourceAsPNG('X');

 // WebBrowser1.Navigate('https://www.noktayazilim.net');

  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';
 // FormatSettings.ShortDateFormat := 'gg.aa.yyyy';

 (*
  datalar._YazilimGelistirici := RegOku('OSGB_YazilimGelistirici');
  if DATALAR._YazilimGelistirici = 1 then
    caption := 'Mavi Nokta Bilgi Teknolojileri �� Sa�l��� ve G�venli�i'
  else if DATALAR._YazilimGelistirici = 2 then
    caption := 'Uyumsoft �� Sa�l��� ve G�venli�i';
  *)

  Sayfalar.Properties.CloseButtonMode := cbmNone;
  try
    WebBrowser1.Navigate('https://www.noktayazilim.net/destek/GenelMesajlar2.aspx?Tip=D');
  except

  end;


//  cxSetResourceString(@scxEvent,'Olay');



end;

procedure TAnaForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if key = vk_F12
   then
    if not datalar.MemDataKullaniciDokumanOku.Eof
    then begin
      ShowPopupForm('Dokuman Oku',SKSdokumanOku);
      datalar.QueryExec('Update SKS_DokumanlarRevStatuDurum ' +
                        ' set Okundu = 1 ' +
                        ' where kullanici = ' + QuotedStr(datalar.username) +
                        ' and dokumanid = ' + datalar.MemDataKullaniciDokumanOku.FieldByName('id').AsString +
                        ' and rev = ' + datalar.MemDataKullaniciDokumanOku.FieldByName('rev').AsString);

    end;

end;

procedure TAnaForm.FormResize(Sender: TObject);
begin
  MainMenuKadir1.Height := self.ClientHeight - (dxStatusBar1.Height + ToolBar1.Height);
  MainMenuKadir1.Top := 60;
end;

procedure TAnaForm.FormShow(Sender: TObject);
var
 i,j : integer;
 sube , Where , _msg: string;
 _List_ : TStringList;
begin

  try
    LisansKontrol(f);
    if f < 10
    Then ShowMessageSkin('Kalan Lisans S�reniz : ' + floattoStr(f) + ' G�n','Hizmetinizin Aksamamas� ��in ,L�tfen Lisans Uzat�n�z','Detayl� Bilgi ��in Sistem Y�neticisine Ba�vurunuz','info');
  except
    ShowMessageSkin('Lisans Hatas�','L�tfen Lisans AL�n�z','','info');
  end;


   try
     Application.ProcessMessages;
     _msg := ProgramStartMesaj;
   except
   End;

   if  _msg <> ''
   Then
   ShowMessageSkin(_msg,'','','info');

  if pos('UYUM',paramStr(0)) > 0
  then begin
    Caption := 'Uyumsoft Bilgi Sistemleri ve Teknolojileri A.�.';
    Datalar.YazilimFirma := 'UYUM';
  end
  Else
  Begin
    Caption := 'Mavi Nokta Bilgi Teknolojileri LTD.�T�.';
    Datalar.YazilimFirma := 'Nokta';
  End;
  Datalar.StandartFormCaption := Caption;


  if datalar.DoktorKodu <> '' then
  begin
    where := '';
    sube := ' Doktor = ' + QuotedStr(datalar.doktorKodu);
  end
  else
  if datalar.IGU <> '' then
  begin
    where := '';
    sube := ' IGU = ' + QuotedStr(datalar.IGU);
  end
  else
  if datalar.DSPers <> '' then
  begin
    where := '';
    sube := ' DigerSaglikPers = ' + QuotedStr(datalar.DSPers);
  end
  else
  if datalar.sirketKodu <> ''
  Then begin
    Where := 'SirketKod = ' + QuotedStr(datalar.sirketKodu);
    sube:= '';
  end
  else begin
    Where := '';
    Sube := '';
  end;
  Where := ' kullanici = ' + QuotedStr(datalar.username) + ' and FirmaTip = 1';
  datalar.sirketlerUserFilter := Where;
  Sirketler.Conn := Datalar.ADOConnection2;
  Sirketler.TableName := 'KullaniciSirketleri_View';
  Sirketler.ValueField := 'SirketKod';
  Sirketler.DisplayField := 'Tanimi';
  Sirketler.BosOlamaz := False;
  Sirketler.Filter :=  Where;
  Sirketler.tag := -100;
  Sirketler.ItemIndex := 0;


  cxScheduler1.Storage.ConString := datalar.ADOConnection2.ConnectionString;
  cxScheduler1.Storage.Sirketler.Properties.Items := Sirketler.Properties.Items;
 // if not GuncellemeTakipScriptPush then Vcl.dialogs.ShowMessage('');

  if GuncelKontrol = 'Evet'
  then
    if rev = 'G'
    then begin
       GuncellemeBaslat(True);
    end;





  UserTable.Active := True;
  if UserRight('Kullan�c� ��lemleri', 'Herkesin �� Plan�n� G�rs�n') = True
  then begin
       UserTable.Filter := 'Aktif = 1';
  end
  else
   UserTable.Filter := 'Kullanici = ' + QuotedStr(datalar.username);

  EventsTable.Active := True;

  AjandaAltPage.ActivePageIndex := 0;

  if datalar.AlpemixRun = 'Evet' then OnlineDestekOpen;


  if OkunmayanDokumanVar(datalar.username)
  Then Begin
     ShowmessageSkin('Okuman�z� Bekleyen Dokumanlar Var',
                                'Okumak ��in Dokuman Butonunu Basarak D�k�manlar� A��n',
                                '',
                                'info');
     ToolButton15.Visible := True;

  End;


  if UserRight('SKS', 'Olay Bildirimleri Uyar�s�n� G�r') = True
  then
    if OkunmayanOlayBildirimVar(datalar.username)
    Then Begin
       ShowmessageSkin('G�rmenizi Bekleyen Olay Bildirim Var',
                                  'G�rmek ��in Dokuman Butonunu Basarak D�k�manlar� A��n',
                                  '',
                                  'info');
       ToolButton11.Visible := True;

    End;


(*
  MainMenuKadir1.Left := -1 * MainMenuKadir1.Width;
  MainMenuKadir1.Height := self.ClientHeight - (dxStatusBar1.Height + ToolBar1.Height);
  MainMenuKadir1.Top := 60;
  *)

  SetMenu;

 (*
  MainMenuKadir1.KullaniciAdi := datalar.username;
  MainMenuKadir1.MenuGetir;

  for i := 0 to MainMenuKadir1.Items.Count - 1 do
  begin
    for j := 0 to ToolBar1.ButtonCount - 1 do
    begin
      if MainMenuKadir1.Items[i].Tag = ToolBar1.Buttons[j].Tag
      then begin
        ToolBar1.Buttons[j].Visible := MainMenuKadir1.Items[i].Visible;
        ToolBar1.Buttons[j].Hint := MainMenuKadir1.Items[i].Hint;
   //     ToolBar1.Buttons[j].ImageIndex := MainMenuKadir1.Items[i].LargeImageIndex;
      end;

    end;
  end;
  *)



  scaled := true;
  if (screen.width <> ScreenWidth) then
  begin
   // height := longint(height) * longint(screen.height) div ScreenHeight;
   // width := longint(width) * longint(screen.width) div ScreenWidth;

 //   scaleBy(screen.width, ScreenWidth);
  end;

 // dxStatusBar1.Panels[1].Text := DATALAR.AktifSirketAdi + '-' + datalar.AktifSubeAdi;
 // dxStatusBar1.Panels[1].Width := length(Datalar.AktifSirketAdi) * 8;
  dxStatusBar1.Panels[3].Text := DATALAR._merkezAdi;
  dxStatusBar1.Panels[3].Width := length(dxStatusBar1.Panels[3].Text) * 8;
  dxStatusBar1.Panels[5].Text := 'Versiyon : ' + datalar.versiyon + ' - Lisans Biti� Tarihi : ' + FormattedTarih(Datalar.LisansBitis);
  SetUserInfo;





end;

procedure TAnaForm.MainMenuKadir1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
    if dxNavBarDragObject.TargetGroup.Tag = 500 then
    begin
       _targetGroup_ := dxNavBarDragObject.TargetGroup;
    end
    else
    begin
      _targetGroup_ := nil;

    end;
end;

procedure TAnaForm.MainMenuKadir1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    if Assigned(_targetGroup_) = True
    then
     if _targetGroup_.Tag <> 500 then
      Accept := False;
end;

procedure TAnaForm.MainMenuKadir1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
var
  sql : string;
begin
    if Assigned(_targetGroup_) = True
    then begin
      // ShowMessage(_pressItem_.Caption,'','','info');
       sql := ' if not exists (select * from MenuIslem_SK where Kullanici = ' + QuotedStr(datalar.username)  + ' and KAYITID = ' + inttostr(_pressItem_.Tag)+ ') ' +
              'insert into MenuIslem_SK ' +
              '(Menu, KAYITID, MainMenu, Kapsam, imageIndex, ShowTip, FormTag,Kullanici) ' +
              ' values (' +
               QuotedStr(_pressItem_.Caption) + ',' +
               inttostr(_pressItem_.Tag) + ',' +
               QuotedStr(_pressItem_.Caption) + ',' +
               inttostr(_targetGroup_.Tag) + ',' +
               inttostr(_pressItem_.SmallImageIndex) + ',' +
               inttostr(_pressItem_.ShowTip) + ',' +
               inttostr(_pressItem_.FormID) + ',' +
               QuotedStr(datalar.username) + ')';
       datalar.QueryExec(sql);
    end;
    MainMenuKadir1.MenuGetir;
   _targetGroup_ := nil;
end;

procedure TAnaForm.MainMenuKadir1GroupClick(Sender: TObject;
  AGroup: TdxNavBarGroup);
var
  I : integer;
begin

   for I := 0 to MainMenuKadir1.Groups.Count - 1 do
   begin
     if I <> AGroup.Index then MainMenuKadir1.Groups[I].Expanded := false;
   end;
 //  MainMenuKadir1.Groups[AGroup.Index].Expanded := true;


end;

procedure TAnaForm.Timer1Timer(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection1;
   try
     sql := 'select * from sorunCozumSureci ss ' +
            'join sorunlar s on s.sorunId = ss.sorunId ' +
            'where kurumKodu = ' + QuotedStr(datalar._tesisKodu) +
            ' and taraf = ''Nokta'' and ss.durum in (1,2,3) ' +
            ' and Kullanici = ' + QuotedStr(datalar.username);
     ado.SQL.Text := sql;
     ado.Open;

     if datalar.messaboxAcik = False
     then
       if not ado.Eof
       then begin
         datalar.messaboxAcik := True;
         ShowMessageSkin('Noktadan Mesaj Var','Destek Talep Ekran�ndan Okuyabilirsiniz','','info');
       end;

   finally
     ado.free;
   end;


  if UserRight('SKS', 'Olay Bildirimleri Uyar�s�n� G�r') = True
  then
    if OkunmayanOlayBildirimVar(datalar.username)
    Then Begin
       ShowmessageSkin('G�rmenizi Bekleyen Olay Bildirim Var',
                                  'G�rmek ��in Olay Bildirim Butonunu Kullan�n�z',
                                  '',
                                  'info');
       ToolButton11.Visible := True;

    End;



end;

procedure TAnaForm.ToolButton11Click(Sender: TObject);
begin
    if not datalar.MemDataOlayBildirimOku.Eof
    then begin
      ShowPopupForm('Olay Bildirim',SKSOlayBildirimGor);
    (*
      datalar.QueryExec('Update OlayBildirim ' +
                        ' set gorulmeTarihi = getdate() ' +
                       // ' where kullanici = ' + QuotedStr(datalar.username) +
                        ' where id = ' + datalar.MemDataOlayBildirimOku.FieldByName('id').AsString);
                        // +
                       // ' and rev = ' + datalar.MemDataKullaniciDokumanOku.FieldByName('rev').AsString);

      OkunmayanOlayBildirimVar(datalar.username);
      *)
    end;
end;

procedure TAnaForm.ToolButton12Click(Sender: TObject);
begin
  ShowPopupForm('Neler Yeni',NelerYeni);

end;

procedure TAnaForm.ToolButton15Click(Sender: TObject);
begin
    if not datalar.MemDataKullaniciDokumanOku.Eof
    then begin
      ShowPopupForm('Dokuman Oku',SKSdokumanOku);
      datalar.QueryExec('Update SKS_DokumanlarRevStatuDurum ' +
                        ' set Okundu = 1 ' +
                        ' where kullanici = ' + QuotedStr(datalar.username) +
                        ' and dokumanid = ' + datalar.MemDataKullaniciDokumanOku.FieldByName('id').AsString +
                        ' and rev = ' + datalar.MemDataKullaniciDokumanOku.FieldByName('rev').AsString);

    end;
end;

procedure TAnaForm.ToolButton16Click(Sender: TObject);
Const
  VersiyonURL : string = 'http://www.noktayazilim.net/Diyaliz_Klinik2019/Klinik2019Versiyon.txt';

var
  yvk,yvkNewVersiyon,versiyon : string;
  _exe : PAnsiChar;
begin

  try
    Download('https://www.noktayazilim.net/Diyaliz_Klinik2019/yvK.exe','mavinokta','nokta53Nokta','C:\NoktaV3\yvK.exe');
  finally
  end;

  try
    versiyon := (datalar.HTTP1.Get(VersiyonURL));
  except
    versiyon := inttostr(AppalicationVer);
  end;

  if (strtoint(versiyon) > datalar.AppalicationVer)
  Then Begin
    try
     _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\yvK.exe kur'));
     WinExec(_exe,SW_SHOW);
    except on e : exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
      end;
    end;
  End
  Else
   ShowMessageSkin('Uygulaman�z G�ncel','','','info');



end;

procedure TAnaForm.ToolButton1Click(Sender: TObject);
begin
(*
 if MainMenuKadir1.left < 0
  then
   MainMenuKadir1.Goster
  else
   MainMenuKadir1.Gizle;
  *)
  if MenuPanel.Visible then MenuPanel.Visible := False else MenuPanel.Visible := True;


end;

procedure TAnaForm.ToolButton2Click(Sender: TObject);
begin
  pnl_Ajanda.Visible := True;
end;

procedure TAnaForm.ToolButton7Click(Sender: TObject);
begin
  ShowPopupForm('E�itime Kat�l',EgitimPanelZoom);
end;

procedure TAnaForm.ToolButtonClick(Sender: TObject);
var
  u,s : string;
  F : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin

 case TToolButton(sender).Tag of
   101 : begin
           menuclik(TToolButton(sender).Tag,TagfrmDoktorlar,1);
         end;

   200 : begin
              ShellExecute(0, 'open', PChar('Chrome.exe'), PChar('https://www.noktayazilim.net/KlinikKlavuz/index.html'),
             nil, SW_SHOWNORMAL);
         end;
   400 : begin

               u := datalar._donemuser;
               s := datalar._donemsifre;
               if FindTab(AnaForm.sayfalar,TagfrmMedula)
               Then begin
               end
               Else begin
                F := FormINIT(TagfrmMedula,self,GirisFormRecord,'',NewTab(AnaForm.sayfalar,TagfrmMedula),ikEvet,'Mesul M�d�r Giri�');
                TfrmMedEczane(F)._user := u;
                TfrmMedEczane(F)._pas := s;
                if F <> nil then F.show;
               end;


      (*
        // GirisFormRecord.F_TC_ := _TC_;
        // GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
         try
          F := FormINIT(TagfrmMedula,GirisFormRecord,ikHayir,'');
          TfrmMedEczane(F).receteForm := nil;
          TfrmMedEczane(F)._user := datalar._donemuser;
          TfrmMedEczane(F)._pas := datalar._donemsifre;
          if F <> nil then F.ShowModal;

         finally
           F.Free;
         end;
        *)


         end
         else
           menuclik(TToolButton(sender).Tag);

 end;




end;

procedure TAnaForm.MainMenuKadir1LinkClick(Sender: TObject;
  ALink: TdxNavBarItemLink);
var
 showTip : integer;
 FID : integer;
begin
  FID :=  Alink.Item.FormID;
  showTip := ALink.Item.ShowTip;
  menuclik(ALink.Item.Tag,FID,showTip);
end;

procedure TAnaForm.MainMenuKadir1LinkPress(Sender: TObject;
  ALink: TdxNavBarItemLink);
begin
  _pressItem_ := Alink.Item;
end;

procedure TAnaForm.menuclik(_tag_ : integer ; FormID : integer = 0 ; ShowTip : integer = 0);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
  tc ,PDKSCihazIP : string;
  aTabSheet : TcxTabSheet;
  bTamam : Boolean;
  sSifre : String;
  iThermo : Integer;
  prm : string;
begin
// MenuItem cliklendi�inde menu satiri form a��lma �ekli ile form a�ar yada sadece method �al��t�r�r.
//FormID > 0 form a��lacak
       Application.ProcessMessages;
 ShowThermo (iThermo, 'Y�kleniyor', 0, 1, 0);
      Application.ProcessMessages;
 try
     case _Tag_ of
        9999 : close;
        3003 : begin
               SifreDegistir (False);
              end;
        121 : begin
                DestekTalep;
              end;
        TagYeniOSGBVeriTabani : begin
          if not InputQuery ('��lem �ifresi Giri�i', '��lem �ifresi', sSifre) then Exit;
          if sSifre <> 'Nokta5353' then Exit;
          YeniOSGBFirmaVeritabani;
        end;
        122 : begin
                OnlineDestekOpen;
              end;
        124 : begin
                LisansUzat;
              end;
        125 : begin
                 DBUpdate;

              end;
        126 : begin
                    if mrYes = ShowPopupForm('Mobil Uygulama Linkiniz',MobilUygulamaLinki)
                    Then Begin

                    End;
              end;
        135 : begin
               PersonelTetkikIstemleri('','');
              end;
   148 : begin
                    if mrYes = ShowPopupForm('SKS �ndikat�r Sorgula',SKSindikatorSorgu)
                    Then Begin

                    End;
              end;
   6003 : begin
                    if mrYes = ShowPopupForm('T�bb� Denetim',TibbiDenetimSorgu)
                    Then Begin

                    End;
              end;

        5006 : begin
                Try
                 GunlereGoreHastaDagilimCizelgesi;
                Finally
                  Cursor := crNone;
                End;
              end;

      4003 : begin

                 PDKSCihazIP := PDKSCihazlar;

                 prm := EncodeString(datalar.osgbKodu+','+datalar._database+','+datalar.AktifSirket+','+ifThen(PDKSCihazIP='','127.0.0.0',PDKSCihazIP));
                 ShellExecute(0, 'open', PChar('C:\NoktaV3\PDKS\FK623AttendDllCSSample.exe'), PChar(prm),
                 nil, SW_SHOWNORMAL);
                 exit;

              end;

       (*
        5011 : begin
                    if mrYes = ShowPopupForm('A�� Takip Listesi',AsiTakipListesi)
                    Then Begin

                    End;
               end;
         *)
          6 : begin
                 tc := InputBox('Personel Ara','Tc Kimlik No','');
                 if IsNull (TC) then Exit;

                 if FindTab(AnaForm.sayfalar,TagfrmPersonelKart)
                 Then begin
                   F := TGirisForm(FormClassType(TagfrmPersonelKart));
                   TGirisForm(FormClassType(TagfrmPersonelKart))._TC_ := tc;
                   TGirisForm(FormClassType(TagfrmPersonelKart)).Init(F);
                 end
                 Else begin
                  bTamam := False;
                  aTabSheet := NewTab(AnaForm.sayfalar,TagfrmPersonelKart);
                  try
                    F := FormINIT(TagfrmPersonelKart,self,'',aTabSheet,ikEvet,'',tc);
                    bTamam := F <> nil;
                    if bTamam then F.show;
                  finally
                    if not bTamam then FreeAndNil(aTabSheet);
                  end;
              end;
              end
         else
            if FormID > 0 then
            begin
              GirisRecord.F_HastaAdSoyad_ := '';
              if ShowTip  =  0
              then begin
                  if FindTab(sayfalar,FormID) Then Exit;
                  bTamam := False;
                  aTabSheet := NewTab(sayfalar,FormID);
                  aTabSheet.Caption := 'Y�kleniyor...';
                  try
                    F := FormINIT(FormID,self,'',aTabSheet,ikEvet,'');
                    bTamam := F <> nil;
                    if bTamam then F.show;
                  finally
                 //   if not bTamam then FreeAndNil(aTabSheet);
                  end;
              end
              else
              begin
                  GirisRecord.F_HastaAdSoyad_ := '';
                  F := FormINIT(FormID,GirisRecord,ikEvet,'');
                  if F <> nil then F.ShowModal;
              end;
            end
            else
            begin
               FormINIT(_Tag_);
            end;
     end;


 finally
      FreeThermo (iThermo);
 end;
end;

procedure TAnaForm.sayfalarCanCloseEx(Sender: TObject; ATabIndex: Integer;
  var ACanClose: Boolean);
var
  Comp : TComponent;
begin
 if ATabIndex in [0,1]
 then begin
   ACanClose := False;
 end
 else begin
   Comp := Sayfalar.Pages[ATabIndex].Components[0];
   ACanClose := TGirisForm(Comp).CloseQuery;
   if ACanClose then TGirisForm(Comp).Close;
 end;

  SirketlerEnabled;




end;

procedure TAnaForm.sayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
   if NewPage.PageIndex in [0,1]
   then begin
     Sayfalar.Properties.CloseButtonMode := cbmNone;
     ButtonClick := false;
   end
   else
     Sayfalar.Properties.CloseButtonMode := cbmActiveTab;

   // Deneme

  SirketlerEnabled;
end;

procedure TAnaForm.SetUserInfo;
begin
  dxStatusBar1.Panels[4].Text := 'Kullan�c� : ' + datalar.username + ' ('+datalar.usernameAdi+'), Grubu: ' + DATALAR.UserGroupName;
  dxStatusBar1.Panels[4].Width := length(dxStatusBar1.Panels[4].Text) * 6;
  SetAnaFormFoto;
  Foto.Picture.Assign(datalar.Foto);
  cxAdi.Caption := datalar.userTanimi;
  cxGrupAdi.Caption := datalar.UserGroupName;

end;

procedure TAnaForm.SirketlerPropertiesChange(Sender: TObject);
var
  sube , sql : string;
  _LabDataset_ : TDataset;
begin

  datalar.AktifSirket := TcxImageComboKadir(sender).EditValue;
  datalar.AktifSirketAdi := TcxImageComboKadir(sender).EditingText;

  dxStatusBar1.Panels[1].Text := DATALAR.AktifSirketAdi + '-' + datalar.AktifSubeAdi;
  dxStatusBar1.Panels[1].Width := length(Datalar.AktifSirketAdi) * 8;

  HesapBilgileriYukle;

  datalar.QuerySelect(datalar.ADO_aktifSirketLogo,'select * from FirmaLogo where sirketKod = ' +
                      QuotedStr(datalar.AktifSirket));

  datalar.QuerySelect(datalar.ADO_AktifSirket,'select * from SIRKETLER_TNM where sirketKod = ' +
                      QuotedStr(datalar.AktifSirket));

  doktorlar.Clear;
  doktorlar.Filter := ' sirketKod = ' + QuotedStr(datalar.AktifSirket);

  doktors.Filter := '';

  Hemsireler.Clear;
  Hemsireler.Filter := ' sirketKod = ' + QuotedStr(datalar.AktifSirket);


  (*

  if (datalar.doktorKodu <> '')
  then
     sube := ' and subeDoktor = ' + QuotedStr(datalar.doktorKodu)
  else
  if (datalar.IGU <> '') then
     sube := ' and IGU = ' + QuotedStr(datalar.IGU)
  else
  if (datalar.DSPers <> '') then
     sube := ' and DigerSaglikPers = ' + QuotedStr(datalar.DSPers)
  else
    sube := '';


  Subeler.Conn := Datalar.ADOConnection2;
  Subeler.TableName := 'SIRKET_SUBE_TNM';
  Subeler.ValueField := 'subeKod';
  Subeler.DisplayField := 'subeTanim';
  Subeler.Filter := ' SirketKod = ' + QuotedStr(datalar.AktifSirket) + sube + ' and (Pasif = 0 or Pasif is Null)';

  datalar.AktifSube := Subeler.getItemString;
    *)
end;

procedure TAnaForm.SubelerPropertiesChange(Sender: TObject);
begin
  if not isNull(Subeler.EditText)
  then begin
    datalar.AktifSube := Subeler.EditValue;
    datalar.AktifSubeAdi := Subeler.EditingText;
  end
  else
  datalar.AktifSube := Subeler.getItemString;
end;

end.

