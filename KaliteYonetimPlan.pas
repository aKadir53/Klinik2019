unit KaliteYonetimPlan;

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
  cxSplitter, cxImageComboBox, Vcl.ImgList;

type
  TfrmKaliteYonetimPlan = class(TGirisForm)
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
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    tmr1: TTimer;
    miGozetimDuzenle: TMenuItem;
    gridRaporlarGozlemGrupTanim: TcxGridDBColumn;
    gridRaporlarSubeTanimi: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    PopupMenu2: TPopupMenu;
    D1: TMenuItem;
    N1: TMenuItem;
    B1: TMenuItem;
    D2: TMenuItem;
    D3: TMenuItem;
    N2: TMenuItem;
    T1: TMenuItem;
    gridRaporlarColumn1: TcxGridDBColumn;
    cxStyle9: TcxStyle;
    gridRaporlarColumn2: TcxGridDBColumn;
    gridRaporYil: TcxGridDBColumn;
    gridRaporid: TcxGridDBColumn;
    gridRaporhazirlayan: TcxGridDBColumn;
    gridRaporKontrolEden: TcxGridDBColumn;
    gridRaporOnaylayan: TcxGridDBColumn;
    gridRaporhazirlamaTarihi: TcxGridDBColumn;
    gridRaporonaylamaTarihi: TcxGridDBColumn;
    gridRaporsirketKod: TcxGridDBColumn;
    gridRaporplanid: TcxGridDBColumn;
    gridRaporfaaliyetid: TcxGridDBColumn;
    gridRaporid_1: TcxGridDBColumn;
    gridRaporDBColumn01: TcxGridDBColumn;
    gridRaporDBColumn02: TcxGridDBColumn;
    gridRaporDBColumn03: TcxGridDBColumn;
    gridRaporDBColumn04: TcxGridDBColumn;
    gridRaporDBColumn05: TcxGridDBColumn;
    gridRaporDBColumn06: TcxGridDBColumn;
    gridRaporDBColumn07: TcxGridDBColumn;
    gridRaporDBColumn08: TcxGridDBColumn;
    gridRaporDBColumn09: TcxGridDBColumn;
    gridRaporDBColumn10: TcxGridDBColumn;
    gridRaporDBColumn11: TcxGridDBColumn;
    gridRaporDBColumn12: TcxGridDBColumn;
    gridRaporkod: TcxGridDBColumn;
    gridRaportanimi: TcxGridDBColumn;
    gridRaporperyot: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Gozlem(islem: Integer);
    procedure gridRaporlarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tmr1Timer(Sender: TObject);
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
  frmKaliteYonetimPlan: TfrmKaliteYonetimPlan;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}




function TfrmKaliteYonetimPlan.ImageAdd(const iID: Integer;
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

procedure TfrmKaliteYonetimPlan.ImageDelete(const iIndex: Integer);
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

function TfrmKaliteYonetimPlan.ImageIndexOfID(const iID: Integer): Integer;
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

function TfrmKaliteYonetimPlan.Init(Sender : TObject) : Boolean;
begin
  //þube kodu ekle
  ADO_SahaGozetim.SQL.Text := 'select * from KaliteYonetimPlan where sirketKod = ' + QuotedStr(datalar.AktifSirket);


  gridRaporDBColumn02.Properties := gridRaporDBColumn01.Properties;
  gridRaporDBColumn03.Properties := gridRaporDBColumn01.Properties;
  gridRaporDBColumn04.Properties := gridRaporDBColumn01.Properties;
  gridRaporDBColumn05.Properties := gridRaporDBColumn01.Properties;
  gridRaporDBColumn06.Properties := gridRaporDBColumn01.Properties;
  gridRaporDBColumn07.Properties := gridRaporDBColumn01.Properties;
  gridRaporDBColumn08.Properties := gridRaporDBColumn01.Properties;
  gridRaporDBColumn09.Properties := gridRaporDBColumn01.Properties;
  gridRaporDBColumn10.Properties := gridRaporDBColumn01.Properties;
  gridRaporDBColumn11.Properties := gridRaporDBColumn01.Properties;
  gridRaporDBColumn12.Properties := gridRaporDBColumn01.Properties;


  ADO_SahaGozetim .Active := true;
  Result := True;
end;

procedure TfrmKaliteYonetimPlan.RefreshSahaGozetimler(
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

procedure TfrmKaliteYonetimPlan.SahaSaglikGozetimFormFotografGoruntule(
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

function TfrmKaliteYonetimPlan.SahaSaglikGozetimFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;
var
  sql : String;
begin
  SQL := 'update SahaGozlemRaporlari set Image = NULL where ID = ' + IntToStr (iSahaGozetimID);
  DATALAR.QueryExec(SQL);
  Result := True;
end;

function TfrmKaliteYonetimPlan.SahaSaglikGozetimFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
  Result := VeritabaniAlaninaFotografYukle ('SahaGozlemRaporlari', 'ID', 'Image', IntToStr (iSahaGozetimID));
end;

procedure TfrmKaliteYonetimPlan.tmr1Timer(Sender: TObject);
begin
  inherited;
  TTimer (Sender).Enabled := False;
  ADOQuery1.Open;
  gridRapor.ViewData.Expand(true);
end;

procedure TfrmKaliteYonetimPlan.AdjustMasterControls;
begin
//  miFotografGoruntule.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('DosyaTip').AsString <> '';
//  miFotografiSil.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('DosyaTip').AsString <> '';
  miGozetimSil.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimYazdir.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimDuzenle.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  PopupMenuToToolBar(self,ToolBar1,Menu);
end;

procedure TfrmKaliteYonetimPlan.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
  dof : TDOF;
  dosya : TOpenDialog;
  dosyaTip , sql : string;
  F : TGirisForm;
begin
  inherited;

  GirisRecord.F_firmaKod_ := ADO_SahaGozetim.fieldbyname('sirketKod').AsString;

  case Tcontrol(sender).Tag of
  -9 : begin
         Gozlem(KaliteYonetimPlanYeni);
       end;
  -11 : begin
         Gozlem(KaliteYonetimPlanDuzenle);
       end;
  -18 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
          begin
            aModalResult := ShowMessageSkin('Planý silmek istediðinizden emin misiniz ?', '', '', 'conf');
            if aModalResult <> mrYes then Exit;
            if not KaliteYonetimPlanSil (ADO_SahaGozetim.FieldByName('ID').AsInteger) then Exit;
            RefreshSahaGozetimler (False);
          end;
        end;
  -21:begin

  end;
  -22:begin

  end;
  -23:begin

  end;
  -27 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
            GozlemYazdir (ADO_SahaGozetim.FieldByName('ID').AsInteger);
        end;


  -50 : begin

        end;

  -51 : begin



        end;
  -60 : begin
        end;

   -70 : begin

        end;
   -80 : begin

         end;
  -90  : begin

         end;


  end;
end;

procedure TfrmKaliteYonetimPlan.DOFOlustur(GozlemId: string; _DOF_: TDOF);
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

procedure TfrmKaliteYonetimPlan.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
  SetLength (FImages, 0);
  SetLength (FImageIds, 0);
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmKaliteYonetimPlan.Gozlem(islem: Integer);
var
  F : TForm;
  bBasarili: Boolean;
  KalitePlani : TKaliteYonetimPlan;
begin
    Self._firmaKod_ := datalar.AktifSirket;

    F := Self;
    if (islem in [KaliteYonetimPlanYeni, KaliteYonetimPlanDuzenle])
    then begin
      if islem = KaliteYonetimPlanYeni then
      begin
        datalar.KaliteYonetimPlan.sirketKod := datalar.AktifSirket;
        datalar.KaliteYonetimPlan.hazirlamaTarihi := DateToStr (date);
        datalar.KaliteYonetimPlan.hazirlayan := '';
        datalar.KaliteYonetimPlan.kontrolEden := '';
        datalar.KaliteYonetimPlan.Yil := '';
        datalar.KaliteYonetimPlan.Onaylayan := '';
        datalar.KaliteYonetimPlan.onaylamaTarihi := '';
      end
      else begin
        datalar.KaliteYonetimPlan.sirketKod := ADO_SahaGozetim.FieldByName('sirketKod').AsString;
      //  aSahaDenetimVeri.SubeKod := ADO_SahaGozetim.FieldByName('SubeKod').AsString;
        datalar.KaliteYonetimPlan.hazirlamaTarihi := ADO_SahaGozetim.FieldByName('hazirlamaTarihi').AsString;
        datalar.KaliteYonetimPlan.hazirlayan := ADO_SahaGozetim.FieldByName('hazirlayan').AsString;
        datalar.KaliteYonetimPlan.Onaylayan := ADO_SahaGozetim.FieldByName('onaylayan').AsString;
        datalar.KaliteYonetimPlan.onaylamaTarihi := ADO_SahaGozetim.FieldByName('onaylamaTarihi').AsString;
        datalar.KaliteYonetimPlan.kontrolEden := ADO_SahaGozetim.FieldByName('kontrolEden').AsString;
        datalar.KaliteYonetimPlan.Yil := ADO_SahaGozetim.FieldByName('Yil').AsString;

      end;
      _KaliteYonetimPlan_ := KalitePlani;
      if mrYes = ShowPopupForm(IfThen (islem = KaliteYonetimPlanYeni, 'Yeni', 'Düzenle'),islem,F)
      then begin
        bBasarili := False;
        ADO_SahaGozetim.DisableControls;
        try
          if islem = KaliteYonetimPlanYeni then
            ADO_SahaGozetim.Append
           else
            ADO_SahaGozetim.Edit;
          try
            ADO_SahaGozetim.FieldByName('sirketKod').AsString := datalar.KaliteYonetimPlan.sirketKod;
            ADO_SahaGozetim.FieldByName('hazirlamaTarihi').AsString := datalar.KaliteYonetimPlan.hazirlamaTarihi;
            ADO_SahaGozetim.FieldByName('onaylamaTarihi').AsString := datalar.KaliteYonetimPlan.onaylamaTarihi;
            ADO_SahaGozetim.FieldByName('hazirlayan').AsString := datalar.KaliteYonetimPlan.hazirlayan;
            ADO_SahaGozetim.FieldByName('onaylayan').AsString := datalar.KaliteYonetimPlan.Onaylayan;
            ADO_SahaGozetim.FieldByName('kontrolEden').AsString := datalar.KaliteYonetimPlan.kontrolEden;
            ADO_SahaGozetim.FieldByName('yil').AsString := datalar.KaliteYonetimPlan.Yil;

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

procedure TfrmKaliteYonetimPlan.GozlemYazdir(const GozlemID: integer);
var
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
begin

  try
    TopluDataset.Dataset0 := ADOQuery1;
    TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
    TopluDataset.Dataset2 := datalar.ADO_aktifSirketLogo;

    PrintYap('KYP','Kalite Yönetim Plan','',TopluDataset,pTNone)
  finally

  end;
end;

procedure TfrmKaliteYonetimPlan.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

procedure TfrmKaliteYonetimPlan.gridRaporlarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'exec dbo.sp_KalitePlanDetayGetir ' + IntToStr (ADO_SahaGozetim.FieldByName('ID').AsInteger);
  tmr1.Enabled := False;
  tmr1.Enabled := True;
  AdjustMasterControls;
end;

end.

