unit Faturalar;

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
  Menus, cxGroupBox, cxRadioGroup, sGauge,
  cxPCdxBarPopupMenu, cxMemo, cxPC, cxCheckBox, rxAnimate, rxGIFCtrl,
  JvExControls, JvAnimatedImage, JvGIFCtrl, cxButtons, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxImage,
  cxImageComboBox,cxCheckGroup, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins;

type
  TfrmFaturalar = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_Faturalar: TADOQuery;
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
    miYeniGozetim: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxStyle8: TcxStyle;
    tmr1: TTimer;
    miGozetimDuzenle: TMenuItem;
    cxGrid1: TcxGridKadir;
    GridFaturalar: TcxGridDBTableView;
    ID: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    GridFaturalarColumn1: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    N1: TMenuItem;
    E1: TMenuItem;
    GridFaturalarColumn3: TcxGridDBColumn;
    E2: TMenuItem;
    E3: TMenuItem;
    E4: TMenuItem;
    K1: TMenuItem;
    A1: TMenuItem;
    S1: TMenuItem;
    GridFaturalarColumn4: TcxGridDBColumn;
    P1: TMenuItem;
    cxTabSheet2: TcxTabSheet;
    txtLog: TcxMemo;
    S2: TMenuItem;
    FaturaDetayGrid: TcxGridKadir;
    FaturaDetaySatirlar: TcxGridDBTableView;
    FaturaDetaySatirlarid: TcxGridDBColumn;
    FaturaDetaySatirlarSirketSozlesmeID: TcxGridDBColumn;
    FaturaDetaySatirlarHizmetKodu: TcxGridDBColumn;
    FaturaDetaySatirlarColumn1: TcxGridDBColumn;
    FaturaDetaySatirlarColumn2: TcxGridDBColumn;
    FaturaDetaySatirlarBirimFiyat: TcxGridDBColumn;
    FaturaDetaySatirlarToplamFiyat: TcxGridDBColumn;
    FaturaDetayGridLevel1: TcxGridLevel;
    FaturaDetaySatirlarColumn3: TcxGridDBColumn;
    FaturaDetaySatirlarColumn4: TcxGridDBColumn;
    F1: TMenuItem;
    E5: TMenuItem;
    T1: TMenuItem;
    GridFaturalarColumn2: TcxGridDBColumn;
    P2: TMenuItem;
    procedure Fatura(islem: Integer);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    function EArsivGonder(FaturaId : string) : string;
    function EArsivIptal(FaturaGuid : string) : string;
    function EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
    function EArsivDurumSorgula(FaturaGuid : string) : string;
    procedure Gonder;
    procedure GridFaturalarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TopPanelPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FImages : array of TcxImage;
    FImageIds : array of Integer;
    function findMethod(dllHandle: Cardinal; methodName: string): FARPROC;

  protected
    procedure GozlemYazdir (const GozlemID : integer);

  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;


const
  LIB_DLL = 'EFaturaDLL.dll';
  //LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';

//  test = 'https://efatura-test.uyumsoft.com.tr/Services/Integration';
//  gercek = 'https://efatura.uyumsoft.com.tr/Services/Integration';
var
  frmFaturalar: TfrmFaturalar;
  test,gercek : string;

implementation

uses data_modul, StrUtils, Jpeg, AnaUnit , MedEczane;

{$R *.dfm}

function TfrmFaturalar.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;

procedure TfrmFaturalar.TopPanelPropertiesChange(Sender: TObject);
begin
  if vartostr(chkList.EditValue) = '1'
  then FaturaDetayGrid.Visible := True else FaturaDetayGrid.Visible := false;
end;

procedure TfrmFaturalar.Gonder;
var
 i,r : integer;
 sql ,faturaId,sonucStr,GibFaturaNo,sirketKod : string;
 Sonuc : TStringList;
 FaturaTarihi : TDate;
 FaturaVar : TADOQuery;
begin

   if datalar.efaturaTaslak = 'Hay�r'
   then begin
     if mrNo = ShowMessageSkin('Fatura G�nderim Taslak De�il','Direk G�nderilecek','Emin misiniz?','msg')
      Then exit;
   end;

   sonucStr := '';
   if mrYes = ShowMessageSkin('Se�ili Fatura  G�nderilecek',
                               '','','msg')
   then begin
     pBar.Properties.Max := GridFaturalar.Controller.SelectedRowCount;
     pBar.Position := 0;
     Sonuc := TStringList.Create;
     try
       DurumGoster(True,True,'Fatura G�nderiliyor , ' + faturaId);
       try
         for i := 0 to GridFaturalar.Controller.SelectedRowCount - 1 do
         begin
            faturaId := GridCellToString(GridFaturalar,'sira',i);
            GibFaturaNo := GridCellToString(GridFaturalar,'GibFaturaNo',i);
            FaturaTarihi := GridCellToVariant(GridFaturalar,'FaturaTarihi',i);

            Application.ProcessMessages;
            pBar.Position := i;


            sql := 'exec sp_FaturaNoKontrol @faturaNo = ' + QuotedStr(GibFaturaNo) +
                   ',@faturaTarihi = ' + QuotedStr(FormatDateTime('YYYYMMDD',FaturaTarihi))+
                   ',@sirketKod = ' + QuotedStr(datalar.AktifSirket);
            FaturaVar := datalar.QuerySelect(sql);

            if FaturaVar.RecordCount = 0
            then begin
                sonucStr := EArsivGonder(faturaId);
                Sonuc.Text := '';
                ExtractStrings(['|'],[],PWideChar(sonucStr),Sonuc);
                txtLog.Lines.Add('Fatura ID : ' + faturaId + ' Sonuc : ' + SonucStr);
                if Sonuc[0]= '0000' then
                begin
                  sql := 'update faturalar set ' +
                         'Guid = ' + QuotedStr(Sonuc[1]) +
                         ',GIBFaturaNo = ' + QuotedStr(Sonuc[2]) +
                         ' where sira = ' + faturaId;
                  datalar.QueryExec(sql);

                  sql := 'update KurumFatura set ' +
                         'FaturaGuid = ' +  QuotedStr(Sonuc[1]) +
                         ' where id = (select KurumFaturaID from faturalar where sira = ' + faturaId + ' and KurumFaturaID is not null)';
                  datalar.QueryExec(sql);

                  EArsivDurumSorgula(Sonuc[1]);

                end;
                ShowMessageSkin('Fatura G�nderim ��lemi Tamamland�','Log Bilgilerini Kontrol Ediniz','','info');

            end
            else
            begin
               if mrYes = ShowMessageSkin('Daha Eski GIBFaturaNo yada Tarihli','G�nderilmemi� Fatura Var','','msg')
               then begin
                 FaturaVar.First;
                 for r := 0 to FaturaVar.RecordCount -1 do
                 begin
                   txtLog.Lines.Add('FaturaId : ' + FaturaVar.FieldByName('sira').AsString + ' , FaturaNo :' + FaturaVar.FieldByName('GIBFaturaNO').AsString);
                   FaturaVar.Next;
                 end;
               end;
            end;

         end;
 //        ShowMessageSkin('Fatura G�nderim ��lemi Tamamland�','Log Bilgilerini Kontrol Ediniz','','info');
       finally
         DurumGoster(False,False,faturaId);
         FaturaVar.Free;
       end;
     finally
       Sonuc.free;
     end;
   end;
end;

function TfrmFaturalar.EArsivGonder(FaturaId : string) : string;
var
  fatura : TFaturaGonder;
  dllHandle: Cardinal;
  TesisKodu: integer;
  faturaXML,doktorKullanici,doktorsifre,pin,url,cardType: string;
  doktorTc : string;
  ss : PWideChar;
  sql : string;
begin
  sql := 'sp_FaturaXML ' + FaturaId;
  QuerySelect(sql);

  ss := 'Yok';
  faturaXML := SelectAdo.FieldByName('FaturaXML').AsString;

  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;

    @fatura := findMethod(dllHandle, 'EArsivFaturaGonder');
    if addr(fatura) <> nil then
    fatura(PWideChar(faturaXML),PWideChar(datalar.efaturaUsername),PWideChar(datalar.efaturaSifre),ss,PWideChar(datalar.eFaturaUrl),PWideChar(datalar.efaturaTaslak));
  //  ShowMessage(ss,'','','info');
    Result := ss;

    if not Assigned(fatura) then
      raise Exception.Create(LIB_DLL + ' i�ersinde EArsivFaturaGonder bulunamad�!');
  finally
    FreeLibrary(dllHandle);
  end;
end;


function TfrmFaturalar.EArsivDurumSorgula(FaturaGuid : string) : string;
var
  fatura : TFaturaDurum;
  dllHandle: Cardinal;
  TesisKodu: integer;
  faturaXML,doktorKullanici,doktorsifre,pin,url,cardType: string;
  doktorTc : string;
  ss : PWideChar;
  sql,sonucStr : string;
  Sonuc : TstringList;
begin

  DurumGoster(True,True,'E-Ar�iv Fatura Sorgulan�yor , ' + FaturaGuid);
  try
    Application.ProcessMessages;
    ss := '';
    dllHandle := LoadLibrary(LIB_DLL);
    try
      if dllHandle = 0 then exit;

      @fatura := findMethod(dllHandle, 'EArsivFaturaDurum');
      if addr(fatura) <> nil then
      fatura(PWideChar(FaturaGuid),PWideChar(datalar.efaturaUsername),PWideChar(datalar.efaturaSifre),ss,PWideChar(datalar.eFaturaUrl));

      EArsivDurumSorgula := ss;

      sonucStr := ss;
      txtLog.Lines.Add('Fatura Guid : ' + FaturaGuid + ' Sonuc : ' + SonucStr);
      Sonuc := TStringList.Create;
      try
       // Split('|',sonucStr,Sonuc);
        ExtractStrings(['|'],[],PWideChar(sonucStr),Sonuc);

        if Sonuc[0] = '0000' then
        begin
          sql := 'update faturalar set eArsivDurum = ' + QuotedStr(Sonuc[2]) +
                 ' where Guid = ' + QuotedStr(FaturaGuid);
          datalar.QueryExec(sql);
        end;

        if not Assigned(fatura) then
          raise Exception.Create(LIB_DLL + ' i�ersinde EArsivFaturaDurum bulunamad�!');
      finally
        Sonuc.Free;
      end;
    finally
      FreeLibrary(dllHandle);
    end;
  finally
    DurumGoster(False,False,'');
  end;
end;

function TfrmFaturalar.EArsivIptal(FaturaGuid : string) : string;
var
  fatura : TFaturaIptal;
  dllHandle: Cardinal;
  TesisKodu: integer;
  faturaXML,doktorKullanici,doktorsifre,pin,url,cardType: string;
  doktorTc : string;
  ss : PWideChar;
  sql,sonucStr : string;
begin
  ss := '';
  dllHandle := LoadLibrary(LIB_DLL);
  try
    if dllHandle = 0 then exit;

    @fatura := findMethod(dllHandle, 'EArsivFaturaIptal');
    if addr(fatura) <> nil then
    fatura(PWideChar(FaturaGuid),PWideChar(datalar.efaturaUsername),PWideChar(datalar.efaturaSifre),ss,PWideChar(datalar.eFaturaUrl));

    EArsivIptal := ss;

    DurumGoster(True,True,'E-Ar�iv Fatura �ptal Ediliyor , ' + FaturaGuid);
    try
      Application.ProcessMessages;

      sonucStr := ss;
      txtLog.Lines.Add('Fatura Guid : ' + FaturaGuid + ' Sonuc : ' + SonucStr);

      if sonucStr = '0000' then
      begin
        sql := 'update faturalar set eArsivDurum = 1400 ' +
            //   'Guid = ' + QuotedStr('') +
               ' where Guid = ' + QuotedStr(FaturaGuid);
        datalar.QueryExec(sql);
      end;

      if not Assigned(fatura) then
        raise Exception.Create(LIB_DLL + ' i�ersinde EArsivFaturaIptal bulunamad�!');
    finally
      DurumGoster(False,False,'');
    end;
  finally
    FreeLibrary(dllHandle);
  end;
end;

function TfrmFaturalar.EArsivPDF(FaturaGuid : string ; _tag_ : integer) : string;
var
  fatura : TFaturaPDF;
  dllHandle: Cardinal;
  TesisKodu: integer;
  faturaXML,doktorKullanici,doktorsifre,pin,url,cardType : string;
  username,password,mailserver,konu,msj : string;
  doktorTc : string;
  ss : PWideChar;
  sql,sonucStr : string;
  Sonuc : TStringList;
  alici : TFirmaBilgi;
begin
  DurumGoster(True,True,'E-Ar�iv Fatura PDF indiriliyor , ' + FaturaGuid);
  try
    Application.ProcessMessages;

    ss := '';
    dllHandle := LoadLibrary(LIB_DLL);
    try
      if dllHandle = 0 then exit;

      @fatura := findMethod(dllHandle, 'EArsivFaturaSavePDF');
      if addr(fatura) <> nil then

      case _tag_ of
      -22 : begin
             alici.YetkiliMail := '' ; username := ''; password := ''; mailserver := ''; konu := '' ; msj := '';
            end;
      -23 : begin
             alici := FirmaBilgileri(GridCellToString(GridFaturalar,'sirketKod',0));
             mailserver := datalar.SMTPSunucu;
             username := datalar.SMTPUserName;
             password := datalar.SMTPPassword;
             konu := 'D�nem Faturas�';
             msj := 'D�nem Faturan�z ektedir. �yi �al��malar';
            end;
      end;

      fatura(PWideChar(FaturaGuid),PWideChar(datalar.efaturaUsername),PWideChar(datalar.efaturaSifre),ss,PWideChar(datalar.eFaturaUrl),
             PWideChar(mailserver),PWideChar(username),PWideChar(password),PWideChar(alici.YetkiliMail),PWideChar(konu),PWideChar(msj));

      EArsivPDF := ss;

      sonucStr := ss;
      Sonuc := TStringList.Create;
      try
        ExtractStrings(['|'],[],PWideChar(sonucStr),Sonuc);

        if sonuc[0] = '0000' then
        begin
          txtLog.Lines.Add(sonuc[1]);
         if _tag_ = -22 then ShellExecute(0, 'open', PChar(sonuc[1]), nil, nil, SW_SHOWNORMAL);
         //if _tag_ = -23 then ShowMessageSkin('Fatura G�nderildi','','','info');
        end
        else begin
          txtLog.Lines.Add(Sonuc[0] + ' - ' + sonuc[1]);
          ShowMessageSkin(Sonuc[0],Sonuc[1],'','info');

        end;

        if not Assigned(fatura) then
          raise Exception.Create(LIB_DLL + ' i�ersinde EArsivFaturaSavePDF bulunamad�!');
      finally
        Sonuc.Free;
      end;
    finally
      FreeLibrary(dllHandle);
    end;
  finally
    DurumGoster(False,False,'');
  end;
end;

function TfrmFaturalar.Init(Sender : TObject) : Boolean;
begin
  TapPanelElemanVisible(True,True,True,false,false,false,False,false,False,False,False,False,True);
  Result := True;
end;


procedure TfrmFaturalar.Fatura(islem: Integer);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
  bBasarili: Boolean;
  fID : string;
begin


   case islem of
   faturaDuzenle :
                   begin
                      fID := GridCellToString(GridFaturalar,'sira',0);
                      GirisRecord.F_FaturaNO_ := fID;
                      GirisRecord.F_FaturaIptal :=  GridCellToBoolean(GridFaturalar,'iptal',0);
                   end;
   yeniFatura :
                   begin
                       GirisRecord.F_FaturaNO_ := '';
                   end;
   faturaSil  :
                   begin
                     fID := GridCellToString(GridFaturalar,'sira',0);
                     if FaturaSilIptal(fID) = True
                     then begin
                       DataSource.DataSet.Active := false;
                       DataSource.DataSet.Active := True;
                     end;
                     exit;
                   end;

   FaturaTahsilatEkle :
                   begin
                       fID := GridCellToString(GridFaturalar,'sirketKod',0);
                       datalar.Tahsilat.sirketKod := fID;
                       datalar.Tahsilat.DiyalizSirketKod := QuotedStr(datalar.AktifSirket);
                       datalar.Tahsilat.tutar := GridCellToDouble(GridFaturalar,'faturaGenelTutar',0);
                       datalar.Tahsilat.aciklama := GridCellToString(GridFaturalar,'GIBFaturaNo',0) + ' Nolu Fatura Tahsilat�';

                       if mrYEs = ShowPopupForm('Fatura Tahsilat Ekle',FaturaTahsilatEkle,fID)
                       then begin

                       end;
                       exit;
                   end;

  end;

  F := FormINIT(TagfrmFatura,GirisRecord,ikEvet,'');
  if F <> nil then F.ShowModal;

end;

procedure TfrmFaturalar.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
  aModalResult : TModalResult;
  guid,durum,sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;

  case Tcontrol(sender).Tag of
  -9 : begin
         Fatura(yeniFatura);
       end;
  -11 : begin
         Fatura(faturaDuzenle);
       end;
  -12 : begin
          F := FormINIT(TagfrmSirketSozlesmeler,GirisRecord,ikEvet,'');
          if F <> nil then F.ShowModal;
       end;
  -20 : begin
            Gonder;
            guid := GridCellToString(GridFaturalar,'UUID',0);
           // if guid = '' then exit;
           // EArsivDurumSorgula(guid);
        end;
  -21:begin
       guid := GridCellToString(GridFaturalar,'UUID',0);
       if guid = '' then exit;
       EArsivIptal(guid);
  end;
  -22,-23 : begin
              guid := GridCellToString(GridFaturalar,'UUID',0);
              EArsivPDF(guid,Tcontrol(sender).Tag);
          end;
  -24:begin

  end;
  -25:begin
            guid := GridCellToString(GridFaturalar,'UUID',0);
            if guid = '' then exit;
            EArsivDurumSorgula(guid);
  end;
  -26 : begin
           //UyumSoftPortalGit(datalar.portalUser,datalar.portalSifre,datalar.portalUrl);


           if FindTab(AnaForm.sayfalar,TagfrmUyum)
           Then begin
             (*
             F := TGirisForm(FormClassType(TagfrmUyum));
             TfrmMedEczane(F)._user := datalar.portalUser;;
             TfrmMedEczane(F)._pas := datalar.portalSifre;
             TGirisForm(FormClassType(TagfrmUyum)).Init(F);
             *)
           end
           Else begin
            F := FormINIT(TagfrmUyum,self,GirisRecord,'',NewTab(AnaForm.sayfalar,TagfrmUyum),ikHayir,'Giri�');
            TfrmMedEczane(F)._user := datalar.portalUser;
            TfrmMedEczane(F)._pas := datalar.portalSifre;
            if F <> nil then F.show;
           end;

        end;
  -27 : begin
          durum := GridCellToString(GridFaturalar,'eArsivDurum',0);
          if (durum = 'Onayland�') or
             (durum = 'G�B�e g�nderildi') or
             (durum = 'Onay Bekliyor') or
             (durum = 'Kuyrukta') or
             (durum = '��lemde')
             Then
               ShowMessageSkin('Faturan�n e-ar�iv Durumu Silmeye Uygun De�ildir','','','info')
             else
               if mrYES = ShowMessageSkin('Fatura �ptal Edilecek Eminmisiniz ?','','','msg')
               then
                Fatura(faturaSil);
        end;
   -28 : begin
           Fatura(FaturaTahsilatEkle);
         end;
   -30 : begin
            sql := 'exec sp_FaturaPrint ' + QuotedStr(seciliSatirlarColumData(GridFaturalar,0));
            TopluDataset.Dataset0 := datalar.QuerySelect(sql);
            sql := 'exec sp_FaturaPrint ' + QuotedStr(seciliSatirlarColumData(GridFaturalar,0)) + ',' +  QuotedStr('E');
            TopluDataset.Dataset1 := datalar.QuerySelect(sql);
            PrintYap('FYZ','Fatura Print Et','',TopluDataset,pTNone)
         end;

  -100 : begin
            ShowPopupForm('Portalden Fatura Oku',PortaldenFaturaOku,frmFaturalar);
         end;

  end;

end;

procedure TfrmFaturalar.FormCreate(Sender: TObject);
var
 ii : TcxCheckGroupItem;
begin
  inherited;
  cxPanel.Visible := false;
 // ToolBar1.Visible := false;

 // ClientHeight := AnaForm.ClientHeight - (AnaForm.ToolBar1.Height + AnaForm.dxStatusBar1.Height+50);
 // ClientWidth := formGenislik;
 // Olustur(self,TableName,'Personel Listesi',23);
  Menu := PopupMenu1;

  TopPanel.Visible := true;

  chkList.Properties.Items.Clear;
  ii := chkList.Properties.Items.Add;
  ii.Caption := 'Fatura Detay� G�ster';
  ii := chkList.Properties.Items.Add;
  ii.Caption := '�ptalleri G�ster';
  chkList.Width := 300;

  GridFaturalar.DataController.DataSource := DataSource;
  FaturaDetayGrid.Dataset.Connection := Datalar.ADOConnection2;

  SayfaCaption('Takipler','','','','');
end;

procedure TfrmFaturalar.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmFaturalar.GridFaturalarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  fid : string;
begin
 try
   fid := vartostr(AFocusedRecord.Values[0]);
   //GridCellToString(GridFaturalar,'sira',0);
   FaturaDetayGrid.Dataset.Active := false;
   FaturaDetayGrid.Dataset.SQL.Text := 'select * from FaturaHareket where faturaId = ' + fid;
   FaturaDetayGrid.Dataset.Active := True;
 except
 end;
end;

procedure TfrmFaturalar.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

