unit SahaSaglikGozetim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,
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
  cxSplitter, cxImageComboBox;

type
  TfrmSahaSaglikGozetim = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_SahaGozetim: TADOQuery;
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
    miGozetimSil: TMenuItem;
    miGozetimYazdir: TMenuItem;
    cxGridKadir1: TcxGridKadir;
    gridRapor: TcxGridDBTableView;
    cxGridKadir1Level1: TcxGridLevel;
    cxGridKadir2: TcxGridKadir;
    cxGridLevel1: TcxGridLevel;
    gridRaporlar: TcxGridDBTableView;
    gridRaporlarID: TcxGridDBColumn;
    gridRaporlarDenetimiYapanKullanici: TcxGridDBColumn;
    gridRaporlarDenetimTarihi: TcxGridDBColumn;
    gridRaporlarDate_Create: TcxGridDBColumn;
    gridRaporlarGozetimDefterNo: TcxGridDBColumn;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    gridRaporID: TcxGridDBColumn;
    gridRaporKonuRakamli: TcxGridDBColumn;
    gridRaporUygunmu: TcxGridDBColumn;
    gridRaporTespitler: TcxGridDBColumn;
    gridRaporOneriler: TcxGridDBColumn;
    tmr1: TTimer;
    miGozetimDuzenle: TMenuItem;
    miFotografYukle: TMenuItem;
    miFotografGoruntule: TMenuItem;
    miFotografiSil: TMenuItem;
    gridRaporlarImageVar: TcxGridDBColumn;
    gridRaporlarGozlemGrupTanim: TcxGridDBColumn;
    gridRaporGrupBaslikRakamli: TcxGridDBColumn;
    gridRaporlarSubeTanimi: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    PopupMenu2: TPopupMenu;
    D1: TMenuItem;
    N1: TMenuItem;
    B1: TMenuItem;
    D2: TMenuItem;
    gridRaporColumn1: TcxGridDBColumn;
    D3: TMenuItem;
    N2: TMenuItem;
    T1: TMenuItem;
    gridRaporlarColumn1: TcxGridDBColumn;
    gridRaporlarColumn2: TcxGridDBColumn;
    gridRaporlarColumn3: TcxGridDBColumn;
    cxStyle9: TcxStyle;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Gozlem(islem: Integer);
    procedure gridRaporlarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tmr1Timer(Sender: TObject);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);

  private
    { Private declarations }
    FImages : array of TcxImage;
    FImageIds : array of Integer;
    function ImageIndexOfID (const iID : Integer): Integer;
    function ImageAdd (const iID : Integer; const aImage : TCxImage): Integer;
    procedure ImageDelete (const iIndex: Integer);
  protected
    procedure GozlemYazdir (const GozlemID : integer);
    procedure AdjustMasterControls;
    procedure RefreshSahaGozetimler (const bUseBookmark: Boolean);
    function SahaSaglikGozetimFormFotografYukle (const iSahaGozetimID : Integer): Boolean;
    function SahaSaglikGozetimFormFotografSil (const iSahaGozetimID : Integer): Boolean;
    procedure SahaSaglikGozetimFormFotografGoruntule (const iSahaGozetimID : Integer);
    procedure DOFOlustur(GozlemId : string; _DOF_ : TDOF);
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmSahaSaglikGozetim: TfrmSahaSaglikGozetim;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}




function TfrmSahaSaglikGozetim.ImageAdd(const iID: Integer;
  const aImage: TCxImage): Integer;
begin
  Result := -1;
  if Result < 0 then ;;
  SetLength (FImages, High (FImages) + 2);
  SetLength (FImageIds, High (FImageIds) + 2);
  Result := High (FImages);
  FImages [Result]:= TcxImage.Create (Self);
  FImages [Result].Picture.Assign (aImage.Picture);
  FImageIds[Result] := iID;
end;

procedure TfrmSahaSaglikGozetim.ImageDelete(const iIndex: Integer);
var
  i : Integer;
begin
  FreeAndNil(FImages [iIndex]);
  for i := iIndex to High (FImages) -1 do
  begin
    FImages [i] := FImages [i + 1];
    FImageIds [i] := FImageIds [i + 1];
  end;
  SetLength (FImages, High (FImages));
  SetLength (FImageIds, High (FImageIds));
end;

function TfrmSahaSaglikGozetim.ImageIndexOfID(const iID: Integer): Integer;
var
  i:Integer;
begin
  Result := -1;
  i := 0;
  while (Result = -1) and (i <= High (FImageIds)) do
  begin
    if FImageIds [i] = iID then Result := i;
    i := i + 1;
  end;
end;

function TfrmSahaSaglikGozetim.Init(Sender : TObject) : Boolean;
begin
  //�ube kodu ekle
  ADO_SahaGozetim.SQL.Text :=
    'select SR.ID, DenetimiYapanKullanici, DenetimTarihi, SR.Date_Create, GozetimDefterNo, FirmaKodu, '#13#10+
    '  cast (case when Image Is NULL then 0 else 1 end as bit) ImageVar, '#13#10+
    '  SR.GozlemGrup, SGR.Tanimi GozlemGrupTanim, '#13#10+
    '  DenetimOnaylamaTarihi,DenetimiPlanlayan,BirSonrakiGozetimTarihi , DosyaTip , Image,DenetimOnaylayan ' +
    'from SahaGozlemRaporlari SR'#13#10+
    'inner join SahaGozlemSoruGrup SGR on SGR.GozlemGrup = SR.GozlemGrup'#13#10+
    'left outer join SIRKETLER_TNM sst on sst.SirketKod = SR.FirmaKodu'#13#10+
    'where FirmaKodu = ' + QuotedStr (DATALAR.AktifSirket) + ''#13#10+
    'order by DenetimTarihi desc , SR.ID';
  ADO_SahaGozetim .Active := true;
  Result := True;
end;

procedure TfrmSahaSaglikGozetim.RefreshSahaGozetimler(
  const bUseBookmark: Boolean);
var
  aBM: TBookmark;
begin
  if bUseBookmark then
  begin
    aBM := ADO_SahaGozetim.GetBookmark;
    try
      //ADO_SahaGozetim.Refresh;
      ADO_SahaGozetim.Active := False;
      ADO_SahaGozetim.Active := True;
      ADO_SahaGozetim.GotoBookmark(aBM);
    finally
      ADO_SahaGozetim.FreeBookmark(aBM);
    end;
  end
  else begin
    ADO_SahaGozetim.Active := False;
    ADO_SahaGozetim.Active := True;
  end;
  AdjustMasterControls;
end;

procedure TfrmSahaSaglikGozetim.SahaSaglikGozetimFormFotografGoruntule(
  const iSahaGozetimID: Integer);
var
  iIndex : Integer;
  sFileName : String;
  aImage : TcxImage;
begin
  iIndex := ImageIndexOfID(iSahaGozetimID);
  if iIndex < 0 then
  begin
    aImage := TcxImage.Create (Self);
    try
      if not VeritabaniAlanindanFotografYukle ('SahaGozlemRaporlari', 'ID', 'Image', IntToStr (iSahaGozetimID), aImage) then Exit;
      iIndex := ImageAdd(iSahaGozetimID, aImage);
    finally
      aImage.Free;
    end;
  end;
  FotografGoruntule (FImages [iIndex].Picture);
end;

function TfrmSahaSaglikGozetim.SahaSaglikGozetimFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;
var
  sql : String;
begin
  SQL := 'update SahaGozlemRaporlari set Image = NULL where ID = ' + IntToStr (iSahaGozetimID);
  DATALAR.QueryExec(SQL);
  Result := True;
end;

function TfrmSahaSaglikGozetim.SahaSaglikGozetimFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
  Result := VeritabaniAlaninaFotografYukle ('SahaGozlemRaporlari', 'ID', 'Image', IntToStr (iSahaGozetimID));
end;

procedure TfrmSahaSaglikGozetim.tmr1Timer(Sender: TObject);
begin
  inherited;
  TTimer (Sender).Enabled := False;
  ADOQuery1.Open;
  gridRapor.ViewData.Expand(true);
end;

procedure TfrmSahaSaglikGozetim.AdjustMasterControls;
begin
  miFotografYukle.Enabled := ADO_SahaGozetim.Active;
//  miFotografGoruntule.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('DosyaTip').AsString <> '';
//  miFotografiSil.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('DosyaTip').AsString <> '';
  miGozetimSil.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimYazdir.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimDuzenle.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  PopupMenuToToolBar(self,ToolBar1,Menu);
end;

procedure TfrmSahaSaglikGozetim.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  inherited;
  //soru cevaplar� default 1 olacak. bo� b�rak�rsa uygun de�ilse de�erlendirme ve �neri girmek zorunda olacak.
  if (DataSet.FieldByName ('UygunMu').AsInteger <> 1)
    and (IsNull (DataSet.FieldByName ('Tespitler').AsString)
      or IsNull (DataSet.FieldByName ('Oneriler').AsString)) then
  begin
    ShowMessageSkin('Uygun Olmayan Durum ��in Tespit ve �neri giri�i yap�lmal�d�r', '', '', 'info');
    Abort;
  end;
end;

procedure TfrmSahaSaglikGozetim.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
  dof : TDOF;
  dosya : TOpenDialog;
  dosyaTip , sql : string;
  F : TGirisForm;
begin
  inherited;

  GirisRecord.F_firmaKod_ := ADO_SahaGozetim.fieldbyname('FirmaKodu').AsString;

  case Tcontrol(sender).Tag of
  -9 : begin
         Gozlem(yeniGozlem);
       end;
  -11 : begin
         if not ADO_SahaGozetim.Eof then
           Gozlem(GozlemDuzenle);
       end;
  -18 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
          begin
            aModalResult := ShowMessageSkin('Saha G�zetim Kayd�n� silmek istedi�inizden emin misiniz ?', '', '', 'conf');
            if aModalResult <> mrYes then Exit;
            if not SahaSaglikGozlemSil (ADO_SahaGozetim.FieldByName('ID').AsInteger) then Exit;
            RefreshSahaGozetimler (False);
          end;
        end;
  -21:begin
          DurumGoster(True,False,'Dosya Y�kleniyor , L�tfen Bekleyiniz');
          dosya := TOpenDialog.Create(nil);
          try
              if not dosya.Execute then Exit;
              dosyaTip := ExtractFileExt(dosya.FileName);
              dosyaTip := UPPERCASE(StringReplace(dosyaTip,'.','',[rfReplaceAll]));
              DokumanYuklePDF(ADO_SahaGozetim,'Image',dosya.FileName);
          finally
            dosya.Free;
            dxStatusBar1.Panels[1].Text := '';
            DurumGoster(False,False);
          end;
  end;
  -22:begin
            DokumanAc(ADO_SahaGozetim,'Image',
                      ADO_SahaGozetim.FieldByName('ID').AsString +'_S',True,
                      ADO_SahaGozetim.FieldByName('DosyaTip').AsString);
  end;
  -23:begin
            sql := 'update SahaGozlemRaporlari ' +
                   ' set Image = NULL ' +
                   ',DosyaTip = NULL ' +
                   ' where ID = ' + QuotedStr(ADOQuery1.FieldByName('ID').AsString);
            datalar.QueryExec(sql);
            ADOQuery1.Requery();
  end;
  -27 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
            GozlemYazdir (ADO_SahaGozetim.FieldByName('ID').AsInteger);
        end;


  -50 : begin
           dof.SSGBolum := 0;
           dof.SSGTespit := ADOQuery1.FieldByName('Tespitler').AsString;
           dof.SSGFaliyetPlan := ADOQuery1.FieldByName('Oneriler').AsString;
           DOFOlustur(ADO_SahaGozetim.FieldByName('ID').AsString,dof);
        end;

  -51 : begin



        end;
  -60 : begin
          DurumGoster(True,False,'Dosya Y�kleniyor , L�tfen Bekleyiniz');
          dosya := TOpenDialog.Create(nil);
          try
              if not dosya.Execute then Exit;
              dosyaTip := ExtractFileExt(dosya.FileName);
              dosyaTip := UPPERCASE(StringReplace(dosyaTip,'.','',[rfReplaceAll]));
              DokumanYuklePDF(ADOQuery1,'Image',dosya.FileName);
          finally
            dosya.Free;
            dxStatusBar1.Panels[1].Text := '';
            DurumGoster(False,False);
          end;
        end;

   -70 : begin
            sql := 'update SahaGozlemRaporu ' +
                   ' set image = NULL ' +
                   ',DosyaTip = NULL ' +
                   ' where ID = ' + QuotedStr(ADOQuery1.FieldByName('ID').AsString);
            datalar.QueryExec(sql);
            ADOQuery1.Requery();
        end;
   -80 : begin
            DokumanAc(ADOQuery1,'image',
                      ADOQuery1.FieldByName('ID').AsString +'_S',True,
                      ADOQuery1.FieldByName('DosyaTip').AsString);
         end;
  -90  : begin
              F := FormINIT(TagfrmSahaSaglikGozetimTanim,GirisRecord,ikHayir,'');
              if F <> nil then F.ShowModal;
         end;


  end;
end;

procedure TfrmSahaSaglikGozetim.DOFOlustur(GozlemId: string; _DOF_: TDOF);
var
 sql : string;
 s,s1 : integer;
begin
   s:= datalar.QuerySelect('exec sp_DOF_FormKontrolETOlustur ' + GozlemId + ',' +
                       QuotedStr(datalar.AktifSirket) + ',' + '00' + ',' +
                       QuotedStr(datalar.username) + ',' +
                       QuotedStr(_DOF_.SSGTespit) + ',' +
                       QuotedStr(inttostr(_DOF_.SSGBolum)) + ',' +
                       QuotedStr(_DOF_.SSGKokNeden)).Fields[0].AsVariant;
  s1 := s;

end;

procedure TfrmSahaSaglikGozetim.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
  SetLength (FImages, 0);
  SetLength (FImageIds, 0);
 // Olustur(self,_TableName_,'Kimlik Do�rula',71,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmSahaSaglikGozetim.Gozlem(islem: Integer);
var
  F : TForm;
  bBasarili: Boolean;
  aSahaDenetimVeri : TSahaDenetimler;
begin
    Self._firmaKod_ := datalar.AktifSirket;

    F := Self;
    if (islem in [yeniGozlem, GozlemDuzenle])
    then begin
      if islem = yeniGozlem then
      begin
        aSahaDenetimVeri.KullaniciAdi := DATALAR.username;
        aSahaDenetimVeri.FirmaKod := datalar.AktifSirket;
       // aSahaDenetimVeri.SubeKod := HakikiAktifSube;
        aSahaDenetimVeri.DenetimTarihi := DateToStr (date);
        aSahaDenetimVeri.DenetimDefterNo := '';
        aSahaDenetimVeri.GozlemGrubu := '';
        aSahaDenetimVeri.BirSonrakiDenetimTarihi := '';
        aSahaDenetimVeri.DenetimiPlanlayan := '';
        aSahaDenetimVeri.DenetimOnaylamaTarihi := '';
        aSahaDenetimVeri.DenetimiOnaylayan := '';
      end
      else begin
        aSahaDenetimVeri.KullaniciAdi := ADO_SahaGozetim.FieldByName('DenetimiYapanKullanici').AsString;
        aSahaDenetimVeri.FirmaKod := ADO_SahaGozetim.FieldByName('FirmaKodu').AsString;
      //  aSahaDenetimVeri.SubeKod := ADO_SahaGozetim.FieldByName('SubeKod').AsString;
        aSahaDenetimVeri.DenetimTarihi := ADO_SahaGozetim.FieldByName('DenetimTarihi').AsString;
        aSahaDenetimVeri.BirSonrakiDenetimTarihi := ADO_SahaGozetim.FieldByName('BirSonrakiGozetimTarihi').AsString;
        aSahaDenetimVeri.DenetimiPlanlayan := ADO_SahaGozetim.FieldByName('DenetimiPlanlayan').AsString;
        aSahaDenetimVeri.DenetimOnaylamaTarihi := ADO_SahaGozetim.FieldByName('DenetimOnaylamaTarihi').AsString;
        aSahaDenetimVeri.DenetimiOnaylayan := ADO_SahaGozetim.FieldByName('DenetimOnaylayan').AsString;

        aSahaDenetimVeri.DenetimDefterNo := ADO_SahaGozetim.FieldByName('GozetimDefterNo').AsString;
        aSahaDenetimVeri.GozlemGrubu := ADO_SahaGozetim.FieldByName('GozlemGrup').AsString;
      end;
      _SahaDenetimVeri_ := aSahaDenetimVeri;
      if mrYes = ShowPopupForm(IfThen (islem = yeniGozlem, 'Yeni G�zlem', 'G�zlem D�zenle'),islem,F)
      then begin
        bBasarili := False;
        ADO_SahaGozetim.DisableControls;
        try
          if islem = yeniGozlem then
            ADO_SahaGozetim.Append
           else
            ADO_SahaGozetim.Edit;
          try
            ADO_SahaGozetim.FieldByName('DenetimiYapanKullanici').AsString := _SahaDenetimVeri_.KullaniciAdi;
            ADO_SahaGozetim.FieldByName('FirmaKodu').AsString := _SahaDenetimVeri_.FirmaKod;
          //  ADO_SahaGozetim.FieldByName('SubeKod').AsString := _SahaDenetimVeri_.SubeKod;
            ADO_SahaGozetim.FieldByName('DenetimTarihi').AsString := _SahaDenetimVeri_.DenetimTarihi;
            ADO_SahaGozetim.FieldByName('BirSonrakiGozetimTarihi').AsString := _SahaDenetimVeri_.BirSonrakiDenetimTarihi;
            ADO_SahaGozetim.FieldByName('GozetimDefterNo').AsString := _SahaDenetimVeri_.DenetimDefterNo;
            ADO_SahaGozetim.FieldByName('GozlemGrup').AsString := _SahaDenetimVeri_.GozlemGrubu;
            ADO_SahaGozetim.FieldByName('DenetimiPlanlayan').AsString := _SahaDenetimVeri_.DenetimiPlanlayan;
            ADO_SahaGozetim.FieldByName('DenetimOnaylamaTarihi').AsString := _SahaDenetimVeri_.DenetimOnaylamaTarihi;
            ADO_SahaGozetim.FieldByName('DenetimOnaylayan').AsString := _SahaDenetimVeri_.DenetimiOnaylayan;

            ADO_SahaGozetim.Post;
            bBasarili := True;
          finally
            if not bBasarili then ADO_SahaGozetim.Cancel;
          end;
          RefreshSahaGozetimler (True);
        finally
          ADO_SahaGozetim.EnableControls;
        end;
      end;
    end;
end;

procedure TfrmSahaSaglikGozetim.GozlemYazdir(const GozlemID: integer);
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
    TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
    TopluDataset.Dataset2 := datalar.ADO_aktifSirketLogo;

    TopluDataset.Dataset0.Name := 'SahaSaglikGozetimRaporu';

    PrintYap('007','Saha Sa�l�k G�zetim Raporu','',TopluDataset,pTNone)
  finally
    ado.free;
  end;
end;

procedure TfrmSahaSaglikGozetim.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

procedure TfrmSahaSaglikGozetim.gridRaporlarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'exec dbo.sp_SahaGozlemRaporDetayGetir ' + IntToStr (ADO_SahaGozetim.FieldByName('ID').AsInteger);
  tmr1.Enabled := False;
  tmr1.Enabled := True;
  AdjustMasterControls;
end;

end.

