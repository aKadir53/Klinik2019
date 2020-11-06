unit FirmaTatbikat;

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
  TfrmTatbikat = class(TGirisForm)
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
    cxStyle8: TcxStyle;
    miGozetimSil: TMenuItem;
    miGozetimYazdir: TMenuItem;
    cxGridKadir2: TcxGridKadir;
    cxGridLevel1: TcxGridLevel;
    gridRaporlar: TcxGridDBTableView;
    gridRaporlarID: TcxGridDBColumn;
    gridRaporlarDenetimiYapanKullanici: TcxGridDBColumn;
    gridRaporlarDate_Create: TcxGridDBColumn;
    tmr1: TTimer;
    miGozetimDuzenle: TMenuItem;
    gridRaporlarGozlemGrupTanim: TcxGridDBColumn;
    gridRaporlarSubeTanimi: TcxGridDBColumn;
    N2: TMenuItem;
    T1: TMenuItem;
    gridRaporlarColumn1: TcxGridDBColumn;
    cxStyle9: TcxStyle;
    cxImageList1: TcxImageList;
    gridRaporlarColumn2: TcxGridDBColumn;
    DataSource1: TDataSource;
    ADO_SahaGozetim: TADOQuery;
    R1: TMenuItem;
    R2: TMenuItem;
    R3: TMenuItem;
    e1: TMenuItem;
    e2: TMenuItem;
    e3: TMenuItem;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Gozlem(islem: Integer);
    procedure tmr1Timer(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure ADO_SahaGozetimAfterScroll(DataSet: TDataSet);

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
  frmTatbikat: TfrmTatbikat;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}




function TfrmTatbikat.ImageAdd(const iID: Integer;
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

procedure TfrmTatbikat.ImageDelete(const iIndex: Integer);
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

function TfrmTatbikat.ImageIndexOfID(const iID: Integer): Integer;
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

function TfrmTatbikat.Init(Sender : TObject) : Boolean;
begin
  //þube kodu ekle
  ADO_SahaGozetim.SQL.Text := 'select t.*,tt.*,case when E.dosya is null then 0 else 1 end dosyaVar from Tatbikatlar  t ' +
                              ' join Tatbikat_Tipleri tt on tt.kod = t.Tatbikatturu ' +
                              ' left join TaranmisEvraklar E on E.ReferansID = t.id and E.ReferansTip = ''TatbikatRapor'' ' +
                              ' where sirketKod = ' + QuotedStr(datalar.AktifSirket);

  ADO_SahaGozetim .Active := true;
  Result := True;
end;

procedure TfrmTatbikat.RefreshSahaGozetimler(
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

procedure TfrmTatbikat.SahaSaglikGozetimFormFotografGoruntule(
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
      if not VeritabaniAlanindanFotografYukle ('Tatbikatlar', 'id', 'rapor', IntToStr (iSahaGozetimID), aImage) then Exit;
      iIndex := ImageAdd(iSahaGozetimID, aImage);
    finally
      aImage.Free;
    end;
  end;
  FotografGoruntule (FImages [iIndex].Picture);
end;

function TfrmTatbikat.SahaSaglikGozetimFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;
var
  sql : String;
begin
  SQL := 'update Tatbikatlar set rapor = NULL where id = ' + IntToStr (iSahaGozetimID);
  DATALAR.QueryExec(SQL);
  Result := True;
end;

function TfrmTatbikat.SahaSaglikGozetimFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
  Result := VeritabaniAlaninaFotografYukle ('Tatbikatlar', 'id', 'rapor', IntToStr (iSahaGozetimID));
end;

procedure TfrmTatbikat.tmr1Timer(Sender: TObject);
begin
  inherited;
  TTimer (Sender).Enabled := False;

end;

procedure TfrmTatbikat.AdjustMasterControls;
begin
//  miFotografGoruntule.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('DosyaTip').AsString <> '';
//  miFotografiSil.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('DosyaTip').AsString <> '';
  miGozetimSil.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimYazdir.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimDuzenle.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  PopupMenuToToolBar(self,ToolBar1,Menu);
end;

procedure TfrmTatbikat.ADO_SahaGozetimAfterScroll(DataSet: TDataSet);
var
  sql , id : string;
begin
  inherited;

  if ADO_SahaGozetim.FieldByName('dosyaVar').AsInteger = 0
  Then begin
    TMenuItem(FindComponent('e2')).Enabled := False ;
    TMenuItem(FindComponent('e3')).Enabled := False ;

  end
  Else begin
    TMenuItem(FindComponent('e2')).Enabled := True;
    TMenuItem(FindComponent('e3')).Enabled := True;

  end;
  PopupMenuToToolBarEnabled(self,ToolBar1,PopupMenu1);

end;

procedure TfrmTatbikat.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
  dof : TDOF;
  dosya : TOpenDialog;
  dosyaTip , sql , id : string;
  F : TGirisForm;
  TaranmisEvrak : TADOQuery;
begin
  inherited;

  GirisRecord.F_firmaKod_ := ADO_SahaGozetim.fieldbyname('sirketKod').AsString;

  case Tcontrol(sender).Tag of
  -9 : begin
         Gozlem(TatbikatYeni);
       end;
  -11 : begin
         Gozlem(TatbikatDuzenle);
       end;
  -18 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
          begin
            aModalResult := ShowMessageSkin('Tatbikat silmek istediðinizden emin misiniz ?', '', '', 'conf');
            if aModalResult <> mrYes then Exit;

            SQL := 'delete from Tatbikatlar where id = ' + ADO_SahaGozetim.FieldByName('id').AsString;
            DATALAR.QueryExec(SQL);

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
            GozlemYazdir (ADO_SahaGozetim.FieldByName('id').AsInteger);
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
             dosya := TOpenDialog.Create(nil);
             DurumGoster(True);
             try
               if not dosya.Execute then Exit;
               dosyaTip := ExtractFileExt(dosya.FileName);
               dosyaTip := StringReplace(dosyaTip,'.','',[rfReplaceAll]);
               if uppercase(dosyaTip) = 'PDF'
               then
                DokumanYukle(ADO_SahaGozetim,'Image',dosya.FileName)
               else
                ShowMessageSkin('Sadece PDF dosya yükleyiniz','','','info');
             finally
               dosya.free;
               DurumGoster(False);
               ADO_SahaGozetim.Requery();
             end;
         end;
 -91 : begin
           DurumGoster(True);
           try
             DokumanAc(ADO_SahaGozetim,'Image','Tmp_Tatbikat_Raporu',True,ADO_SahaGozetim.FieldByName('DokumanTip').AsString);
           finally
            DurumGoster(False);
           end;
       end;

 -92 : begin
          SQL := 'update Tatbikatlar set Image = NULL,DokumanTip = NULL where id = ' + ADO_SahaGozetim.FieldByName('id').AsString;
          DATALAR.QueryExec(SQL);
          ADO_SahaGozetim.Requery();
       end;

-6666 : begin
          id := ADO_SahaGozetim.FieldByName('id').AsString;
          sql := 'if not exists(select * from TaranmisEvraklar where ReferansID = ' +  id + ' and ReferansTip = ''TatbikatRapor'') ' +
                 ' begin ' +
                    'insert into TaranmisEvraklar (ReferansID,ReferansTip) ' +
                    ' values(' + id + ',''TatbikatRapor'')' +
                 ' end ';
                datalar.QueryExec(sql);
                sql := ' select * from TaranmisEvraklar where ReferansID = ' + id  + ' and ReferansTip = ''TatbikatRapor''';

          dosya := TOpenDialog.Create(nil);
          Dosya.Filter := 'Sadece PDF|*.PDF';
          TaranmisEvrak := datalar.QuerySelect(sql);
          DurumGoster(True,False);
          try
            Dosya.Execute;
            DokumanYuklePDF(TaranmisEvrak,'dosya',dosya.FileName);
            ADO_SahaGozetim.Requery();
          finally
            DurumGoster(False,False);
            dosya.free;
            TaranmisEvrak.Free;
          end;
        end;

-6667 : begin
          id := ADO_SahaGozetim.FieldByName('id').AsString;
          sql := ' select * from TaranmisEvraklar where ReferansID = ' + id  + ' and ReferansTip = ''TatbikatRapor''';
          TaranmisEvrak := datalar.QuerySelect(sql);
          DurumGoster(True,False);
          try
            DokumanAc(TaranmisEvrak,'dosya','Temp_TatbikatRapor_' + id,True,'PDF');
          finally
            DurumGoster(False,False);
            TaranmisEvrak.Free;
          end;
        end;
-6668 : begin
          id := ADO_SahaGozetim.FieldByName('id').AsString;
          sql := 'update TaranmisEvraklar set Dosya = NULL' +
                 ' where ReferansID = ' + id  + ' and ReferansTip = ''TatbikatRapor''';
          datalar.QueryExec(sql);
           ADO_SahaGozetim.Requery();
        end;

  end;

end;

procedure TfrmTatbikat.DOFOlustur(GozlemId: string; _DOF_: TDOF);

begin

end;

procedure TfrmTatbikat.FormCreate(Sender: TObject);
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

procedure TfrmTatbikat.Gozlem(islem: Integer);
var
  F : TForm;
  bBasarili: Boolean;
  Tatbikat : TTatbikat;
begin
    Self._firmaKod_ := datalar.AktifSirket;

    F := Self;
    if (islem in [TatbikatYeni, TatbikatDuzenle])
    then begin
      if islem = TatbikatYeni then
      begin
        datalar.aTatbikat.sirketKod := datalar.AktifSirket;
        datalar.aTatbikat.Tarih := DateToStr (date);
        datalar.aTatbikat.hazirlayan := '';
        datalar.aTatbikat.Onaylayan := '';
        datalar.aTatbikat.turu := '0';
        datalar.aTatbikat.yer := '';
        datalar.aTatbikat.Aciklama := '';
        datalar.aTatbikat.Mataryel := '';
      end
      else begin
        datalar.aTatbikat.sirketKod := ADO_SahaGozetim.FieldByName('sirketKod').AsString;
      //  aSahaDenetimVeri.SubeKod := ADO_SahaGozetim.FieldByName('SubeKod').AsString;
        datalar.aTatbikat.Tarih := ADO_SahaGozetim.FieldByName('Tarih').AsString;
        datalar.aTatbikat.hazirlayan := ADO_SahaGozetim.FieldByName('hazirlayan').AsString;
        datalar.aTatbikat.Onaylayan := ADO_SahaGozetim.FieldByName('onaylayan').AsString;
        datalar.aTatbikat.turu := ADO_SahaGozetim.FieldByName('Tatbikatturu').AsString;
        datalar.aTatbikat.yer := ADO_SahaGozetim.FieldByName('yer').AsString;
        datalar.aTatbikat.Aciklama := ADO_SahaGozetim.FieldByName('Aciklama').AsString;
        datalar.aTatbikat.Mataryel := ADO_SahaGozetim.FieldByName('Mataryel').AsString;
      end;

      if mrYes = ShowPopupForm(IfThen (islem = TatbikatYeni, 'Yeni', 'Düzenle'),islem,F)
      then begin
        bBasarili := False;
        ADO_SahaGozetim.DisableControls;
        try
          if islem = TatbikatYeni then
            ADO_SahaGozetim.Append
           else
            ADO_SahaGozetim.Edit;
          try
            ADO_SahaGozetim.FieldByName('sirketKod').AsString := datalar.aTatbikat.sirketKod;
            ADO_SahaGozetim.FieldByName('Tarih').AsString := datalar.aTatbikat.Tarih;
            ADO_SahaGozetim.FieldByName('hazirlayan').AsString := datalar.aTatbikat.hazirlayan;
            ADO_SahaGozetim.FieldByName('onaylayan').AsString := datalar.aTatbikat.Onaylayan;
            ADO_SahaGozetim.FieldByName('Tatbikatturu').AsString := datalar.aTatbikat.turu;
            ADO_SahaGozetim.FieldByName('yer').AsString := datalar.aTatbikat.yer;
            ADO_SahaGozetim.FieldByName('Aciklama').AsString := datalar.aTatbikat.aciklama;
            ADO_SahaGozetim.FieldByName('Mataryel').AsString := datalar.aTatbikat.Mataryel;

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

procedure TfrmTatbikat.GozlemYazdir(const GozlemID: integer);
var
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
begin

  try
    TopluDataset.Dataset0 := datalar.QuerySelect('select * from Tatbikatlar  t ' +
                              ' join Tatbikat_Tipleri tt on tt.kod = t.Tatbikatturu ' +
                              ' where id = ' + intTostr(GozlemID));

    TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
    TopluDataset.Dataset2 := datalar.ADO_aktifSirketLogo;

    if ADO_SahaGozetim.FieldByName('Tatbikatturu').AsString = '1'
    then
      PrintYap('TRM','Tatbikat Raporu(MAVÝ KOD)','',TopluDataset,pTNone)
    else
      PrintYap('TRK','Tatbikat Raporu(KIRMIZI KOD)','',TopluDataset,pTNone)

  finally

  end;
end;

procedure TfrmTatbikat.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

