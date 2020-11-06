unit ElHijyenGozlem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir,  KadirType,GetFormClass,GirisUnit,dxLayoutControl,dxLayoutContainer,
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
  TfrmElHijyen = class(TGirisForm)
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
    cxStyle8: TcxStyle;
    miGozetimSil: TMenuItem;
    miGozetimYazdir: TMenuItem;
    cxGridKadir2: TcxGridKadir;
    cxGridLevel1: TcxGridLevel;
    gridRaporlar: TcxGridDBTableView;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    miGozetimDuzenle: TMenuItem;
    cxSplitter1: TcxSplitter;
    PopupMenu2: TPopupMenu;
    D1: TMenuItem;
    N1: TMenuItem;
    B1: TMenuItem;
    D2: TMenuItem;
    D3: TMenuItem;
    N2: TMenuItem;
    T1: TMenuItem;
    cxStyle9: TcxStyle;
    cxImageList1: TcxImageList;
    gridRaporlarTarih: TcxGridDBColumn;
    gridRaporlarsirketKod: TcxGridDBColumn;
    gridRaporlarid: TcxGridDBColumn;
    gridRaporlargozlemci: TcxGridDBColumn;
    cxGridKadir1: TcxGridKadir;
    cxGridKadir1Level1: TcxGridLevel;
    Satirlar: TcxGridDBBandedTableView;
    SatirlarTarih: TcxGridDBBandedColumn;
    SatirlarsirketKod: TcxGridDBBandedColumn;
    Satirlarid: TcxGridDBBandedColumn;
    Satirlargozlemci: TcxGridDBBandedColumn;
    Satirlarspid: TcxGridDBBandedColumn;
    Satirlardate_create: TcxGridDBBandedColumn;
    Satirlargozlem_id: TcxGridDBBandedColumn;
    Satirlarid_1: TcxGridDBBandedColumn;
    Satirlarsalon: TcxGridDBBandedColumn;
    Satirlarvardiya: TcxGridDBBandedColumn;
    Satirlarmeslek: TcxGridDBBandedColumn;
    Satirlarcinsiyet: TcxGridDBBandedColumn;
    SatirlarTO_Firsat: TcxGridDBBandedColumn;
    SatirlarTO_Yikama_Ovma_Yok: TcxGridDBBandedColumn;
    SatirlarTO_Ovma: TcxGridDBBandedColumn;
    SatirlarTO_Yok: TcxGridDBBandedColumn;
    SatirlarTS_Firsat: TcxGridDBBandedColumn;
    SatirlarTS_Yikama_Ovma_Yok: TcxGridDBBandedColumn;
    SatirlarTS_Ovma: TcxGridDBBandedColumn;
    SatirlarTS_Yok: TcxGridDBBandedColumn;
    SatirlarAIO_Firsat: TcxGridDBBandedColumn;
    SatirlarAIO_Yikama_Ovma_Yok: TcxGridDBBandedColumn;
    SatirlarAIO_Ovma: TcxGridDBBandedColumn;
    SatirlarAIO_Yok: TcxGridDBBandedColumn;
    SatirlarVS_Firsat: TcxGridDBBandedColumn;
    SatirlarVS_Yikama_Ovma_Yok: TcxGridDBBandedColumn;
    SatirlarVS_Ovma: TcxGridDBBandedColumn;
    SatirlarVS_Yok: TcxGridDBBandedColumn;
    SatirlarHCTS_Firsat: TcxGridDBBandedColumn;
    SatirlarHCTS_Yikama_Ovma_Yok: TcxGridDBBandedColumn;
    SatirlarHCTS_Ovma: TcxGridDBBandedColumn;
    SatirlarHCTS_Yok: TcxGridDBBandedColumn;
    SatirlarTO_uygun: TcxGridDBBandedColumn;
    SatirlarTO_uygunsuz: TcxGridDBBandedColumn;
    SatirlarTS_uygun: TcxGridDBBandedColumn;
    SatirlarTS_uygunsuz: TcxGridDBBandedColumn;
    SatirlarAIO_uygun: TcxGridDBBandedColumn;
    SatirlarAIO_uygunsuz: TcxGridDBBandedColumn;
    SatirlarVS_uygun: TcxGridDBBandedColumn;
    SatirlarVS_uygunsuz: TcxGridDBBandedColumn;
    SatirlarHCTS_uygun: TcxGridDBBandedColumn;
    SatirlarHCTS_uygunsuz: TcxGridDBBandedColumn;
    E1: TMenuItem;
    E2: TMenuItem;
    procedure TopPanelButonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Gozlem(islem: Integer);
    procedure gridRaporlarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxGridKadir1DBBandedTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);

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
  frmElHijyen: TfrmElHijyen;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}




function TfrmElHijyen.ImageAdd(const iID: Integer;
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

procedure TfrmElHijyen.ImageDelete(const iIndex: Integer);
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

function TfrmElHijyen.ImageIndexOfID(const iID: Integer): Integer;
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

function TfrmElHijyen.Init(Sender : TObject) : Boolean;
begin

 // gridRaporDBColumn02.Properties := gridRaporDBColumn01.Properties;

//  ADO_SahaGozetim .Active := true;
  Result := True;
end;

procedure TfrmElHijyen.RefreshSahaGozetimler(
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

procedure TfrmElHijyen.SahaSaglikGozetimFormFotografGoruntule(
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

function TfrmElHijyen.SahaSaglikGozetimFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;

begin

end;

function TfrmElHijyen.SahaSaglikGozetimFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
end;

procedure TfrmElHijyen.TopPanelButonClick(Sender: TObject);
var
  sql : string;
begin
  inherited;

               sql := 'select S.tanimi, E.* from EL_HijyenGozlem E ' +
                      ' join SIRKETLER_TNM S on S.sirketKod = E.sirketKod ' +
                      ' where E.Tarih between ' + txtTopPanelTarih1.GetSQLValue +
                      ' and ' + txtTopPanelTarih2.GetSQLValue +
                      ' and E.sirketKod = ' + QuotedStr(datalar.AktifSirket);
               datalar.QuerySelect(ADO_SahaGozetim,sql);
  //
end;

procedure TfrmElHijyen.AdjustMasterControls;
begin
//  miFotografGoruntule.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('DosyaTip').AsString <> '';
//  miFotografiSil.Enabled := ADO_SahaGozetim.Active and ADO_SahaGozetim.FieldByName('DosyaTip').AsString <> '';
  miGozetimSil.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimYazdir.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  miGozetimDuzenle.Enabled := ADO_SahaGozetim.Active and (ADO_SahaGozetim.RecordCount > 0);
  PopupMenuToToolBar(self,ToolBar1,Menu);
end;

procedure TfrmElHijyen.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
  dof : TDOF;
  dosya : TOpenDialog;
  dosyaTip , sql : string;
  F : TGirisForm;
  TopluDataset : TDataSetKadir;
begin
  inherited;

  GirisRecord.F_firmaKod_ := ADO_SahaGozetim.fieldbyname('sirketKod').AsString;

  case Tcontrol(sender).Tag of
  -9 : begin
         Gozlem(ElHijyenYeni);
       end;
  -11 : begin
         Gozlem(ElHijyenDuzenle);
       end;
  -18 : begin
          if ADO_SahaGozetim.RecordCount > 0 then
          begin
            aModalResult := ShowMessageSkin('Gözetimi silmek istediðinizden emin misiniz ?', '', '', 'conf');
            if aModalResult <> mrYes then Exit;
            if not KaliteYonetimPlanSil (ADO_SahaGozetim.FieldByName('id').AsInteger) then Exit;
            RefreshSahaGozetimler (False);
          end;
        end;
  -20:begin
          TopluDataset.Dataset3 := ADO_SahaGozetim;

          TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
          TopluDataset.Dataset2 := datalar.ADO_aktifSirketLogo;

          PrintYap('EHGF','El Hijyeni Gözlem Formu','',TopluDataset,pTNone)

      end;
  -21:begin
          TopluDataset.Dataset3 := datalar.QuerySelect('exec sp_ElHijyeniUyumRaporu ' + txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih2.GetSQLValue);
          TopluDataset.Dataset4 := datalar.QuerySelect('sp_ElHijyeniUyumRaporuGrafikDeger ' + txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih2.GetSQLValue);
          TopluDataset.Dataset5 := datalar.QuerySelect('sp_ElHijyeniUyumRaporuGrafikDeger ' + txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih2.GetSQLValue + ',' + QuotedStr('E'));
          TopluDataset.Dataset6 := datalar.QuerySelect('sp_ElHijyeniUyumRaporuGrafikDeger ' + txtTopPanelTarih1.GetSQLValue + ',' + txtTopPanelTarih2.GetSQLValue + ',' + QuotedStr('G'));

          TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
          TopluDataset.Dataset2 := datalar.ADO_aktifSirketLogo;

          PrintYap('EHUR','El Hijyeni Uyum Raporu','',TopluDataset,pTNone)


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

         end;


  end;
end;

procedure TfrmElHijyen.cxGridKadir1DBBandedTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
var
  Book : TBookmark;

procedure datawrite;
begin
   Satirlar.DataController.DataSet.FieldByName('gozlem_id').AsString := ADO_SahaGozetim.FieldByName('id').AsString;
   Satirlar.DataController.DataSet.FieldByName('salon').AsString := datalar.ElHijyenDetay.salon;
   Satirlar.DataController.DataSet.FieldByName('vardiya').AsString := datalar.ElHijyenDetay.vardiya;
   Satirlar.DataController.DataSet.FieldByName('meslek').AsInteger := datalar.ElHijyenDetay.meslek;
   Satirlar.DataController.DataSet.FieldByName('cinsiyet').AsInteger := datalar.ElHijyenDetay.cinsiyet;
   Satirlar.DataController.DataSet.FieldByName('TO_Firsat').AsInteger := datalar.ElHijyenDetay.TO_Firsat;
   Satirlar.DataController.DataSet.FieldByName('TO_Yikama').AsInteger := datalar.ElHijyenDetay.TO_Yikama;
   Satirlar.DataController.DataSet.FieldByName('TO_Ovma').AsInteger := datalar.ElHijyenDetay.TO_Ovma;
   Satirlar.DataController.DataSet.FieldByName('TO_Yok').AsInteger := datalar.ElHijyenDetay.TO_Yok;
   Satirlar.DataController.DataSet.FieldByName('TS_Firsat').AsInteger := datalar.ElHijyenDetay.TS_Firsat;
   Satirlar.DataController.DataSet.FieldByName('TS_Yikama').AsInteger := datalar.ElHijyenDetay.TS_Yikama;
   Satirlar.DataController.DataSet.FieldByName('TS_Ovma').AsInteger := datalar.ElHijyenDetay.TS_Ovma;
   Satirlar.DataController.DataSet.FieldByName('TS_Yok').AsInteger := datalar.ElHijyenDetay.TS_Yok;
   Satirlar.DataController.DataSet.FieldByName('AIO_Firsat').AsInteger := datalar.ElHijyenDetay.AIO_Firsat;
   Satirlar.DataController.DataSet.FieldByName('AIO_Yikama').AsInteger := datalar.ElHijyenDetay.AIO_Yikama;
   Satirlar.DataController.DataSet.FieldByName('AIO_Ovma').AsInteger := datalar.ElHijyenDetay.AIO_Ovma;
   Satirlar.DataController.DataSet.FieldByName('AIO_Yok').AsInteger := datalar.ElHijyenDetay.AIO_Yok;
   Satirlar.DataController.DataSet.FieldByName('VS_Firsat').AsInteger := datalar.ElHijyenDetay.VS_Firsat;
   Satirlar.DataController.DataSet.FieldByName('VS_Yikama').AsInteger := datalar.ElHijyenDetay.VS_Yikama;
   Satirlar.DataController.DataSet.FieldByName('VS_Ovma').AsInteger := datalar.ElHijyenDetay.VS_Ovma;
   Satirlar.DataController.DataSet.FieldByName('VS_Yok').AsInteger := datalar.ElHijyenDetay.VS_Yok;
   Satirlar.DataController.DataSet.FieldByName('HCTS_Firsat').AsInteger := datalar.ElHijyenDetay.HCTS_Firsat;
   Satirlar.DataController.DataSet.FieldByName('HCTS_Yikama').AsInteger := datalar.ElHijyenDetay.HCTS_Yikama;
   Satirlar.DataController.DataSet.FieldByName('HCTS_Ovma').AsInteger := datalar.ElHijyenDetay.HCTS_Ovma;
   Satirlar.DataController.DataSet.FieldByName('HCTS_Yok').AsInteger := datalar.ElHijyenDetay.HCTS_Yok;

end;

procedure dataRead;
begin
   datalar.ElHijyenDetay.salon := Satirlar.DataController.DataSet.FieldByName('salon').AsString;
   datalar.ElHijyenDetay.vardiya := Satirlar.DataController.DataSet.FieldByName('vardiya').AsString;
   datalar.ElHijyenDetay.meslek := Satirlar.DataController.DataSet.FieldByName('meslek').AsInteger;
   datalar.ElHijyenDetay.cinsiyet := Satirlar.DataController.DataSet.FieldByName('cinsiyet').AsInteger;
   datalar.ElHijyenDetay.TO_Firsat := Satirlar.DataController.DataSet.FieldByName('TO_Firsat').AsInteger;
   datalar.ElHijyenDetay.TO_Yikama := Satirlar.DataController.DataSet.FieldByName('TO_Yikama').AsInteger;
   datalar.ElHijyenDetay.TO_Ovma := Satirlar.DataController.DataSet.FieldByName('TO_Ovma').AsInteger;
   datalar.ElHijyenDetay.TO_Yok := Satirlar.DataController.DataSet.FieldByName('TO_Yok').AsInteger;
   datalar.ElHijyenDetay.TS_Firsat := Satirlar.DataController.DataSet.FieldByName('TS_Firsat').AsInteger;
   datalar.ElHijyenDetay.TS_Yikama := Satirlar.DataController.DataSet.FieldByName('TS_Yikama').AsInteger;
   datalar.ElHijyenDetay.TS_Ovma := Satirlar.DataController.DataSet.FieldByName('TS_Ovma').AsInteger;
   datalar.ElHijyenDetay.TS_Yok := Satirlar.DataController.DataSet.FieldByName('TS_Yok').AsInteger;
   datalar.ElHijyenDetay.AIO_Firsat := Satirlar.DataController.DataSet.FieldByName('AIO_Firsat').AsInteger;
   datalar.ElHijyenDetay.AIO_Yikama := Satirlar.DataController.DataSet.FieldByName('AIO_Yikama').AsInteger;
   datalar.ElHijyenDetay.AIO_Ovma := Satirlar.DataController.DataSet.FieldByName('AIO_Ovma').AsInteger;
   datalar.ElHijyenDetay.AIO_Yok := Satirlar.DataController.DataSet.FieldByName('AIO_Yok').AsInteger;
   datalar.ElHijyenDetay.VS_Firsat := Satirlar.DataController.DataSet.FieldByName('VS_Firsat').AsInteger;
   datalar.ElHijyenDetay.VS_Yikama := Satirlar.DataController.DataSet.FieldByName('VS_Yikama').AsInteger;
   datalar.ElHijyenDetay.VS_Ovma := Satirlar.DataController.DataSet.FieldByName('VS_Ovma').AsInteger;
   datalar.ElHijyenDetay.VS_Yok := Satirlar.DataController.DataSet.FieldByName('VS_Yok').AsInteger;
   datalar.ElHijyenDetay.HCTS_Firsat := Satirlar.DataController.DataSet.FieldByName('HCTS_Firsat').AsInteger;
   datalar.ElHijyenDetay.HCTS_Yikama := Satirlar.DataController.DataSet.FieldByName('HCTS_Yikama').AsInteger;
   datalar.ElHijyenDetay.HCTS_Ovma := Satirlar.DataController.DataSet.FieldByName('HCTS_Ovma').AsInteger;
   datalar.ElHijyenDetay.HCTS_Yok := Satirlar.DataController.DataSet.FieldByName('HCTS_Yok').AsInteger;

end;

begin



  case AButtonIndex of
   6 : begin
        datalar.ElHijyenDetay.salon := '';
        datalar.ElHijyenDetay.vardiya := '';
        datalar.ElHijyenDetay.meslek := -1;
        datalar.ElHijyenDetay.cinsiyet := -1;
        datalar.ElHijyenDetay.TO_Firsat := 1;
        datalar.ElHijyenDetay.TO_Yikama := 1;
        datalar.ElHijyenDetay.TO_Ovma := 0;
        datalar.ElHijyenDetay.TO_Yok := 0;
        datalar.ElHijyenDetay.TS_Firsat := 1;
        datalar.ElHijyenDetay.TS_Yikama := 1;
        datalar.ElHijyenDetay.TS_Ovma := 0;
        datalar.ElHijyenDetay.TS_Yok := 0;
        datalar.ElHijyenDetay.AIO_Firsat := 1;
        datalar.ElHijyenDetay.AIO_Yikama := 1;
        datalar.ElHijyenDetay.AIO_Ovma := 0;
        datalar.ElHijyenDetay.AIO_Yok := 0;
        datalar.ElHijyenDetay.VS_Firsat := 1;
        datalar.ElHijyenDetay.VS_Yikama := 1;
        datalar.ElHijyenDetay.VS_Ovma := 0;
        datalar.ElHijyenDetay.VS_Yok := 0;
        datalar.ElHijyenDetay.HCTS_Firsat := 1;
        datalar.ElHijyenDetay.HCTS_Yikama := 1;
        datalar.ElHijyenDetay.HCTS_Ovma := 0;
        datalar.ElHijyenDetay.HCTS_Yok := 0;


        if mrYes = ShowPopupForm('Ekle',ElHijyenDetayYeni)
        then begin
         try
          Satirlar.DataController.DataSet.Append;
          datawrite;
          Satirlar.DataController.DataSet.post;
          Satirlar.DataController.DataSet.Active := False;
          Satirlar.DataController.DataSet.Active := True;
          ADone := True;
        except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           Satirlar.DataController.DataSet.Cancel;
          end;
        end;
        end;
    end;
   8 : begin

       end;

   9 : begin
        dataRead;
        if mrYes = ShowPopupForm('Düzenle',ElHijyenDetayDuzenle)
        then begin
         try
          Book := Satirlar.DataController.DataSet.Bookmark;
          Satirlar.DataController.DataSet.Edit;
          datawrite;
          Satirlar.DataController.DataSet.Post;
          Satirlar.DataController.DataSet.Active := False;
          Satirlar.DataController.DataSet.Active := True;
          Satirlar.DataController.DataSet.GotoBookmark(Book);
          //Satirlar.DataController.DataSet.Refresh;
         except on e : Exception do
          begin
           ShowMessageSkin(e.Message,'','','info');
           Satirlar.DataController.DataSet.Cancel;
          end;
         end;
        end;
    end;

  end;




end;

procedure TfrmElHijyen.DOFOlustur(GozlemId: string; _DOF_: TDOF);

begin

end;

procedure TfrmElHijyen.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
  SetLength (FImages, 0);
  SetLength (FImageIds, 0);
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,false,false,false,false,false,False,false,False,false,False,false,false);


  setDataStringIC(self,'meslek_','Meslek',kolon1,'',100,'','','','',1,'1;Hekim,2;Hemþire,3;Diðer Saðlýk,4;Diðer');
  setDataStringIC(self,'cinsiyet_','Cinsiyet',kolon1,'',100,'','','','',1,'0;Bay,1;Bayan');

  TdxLayoutItem(FindComponent('dxLameslek_')).Visible := False;
  TdxLayoutItem(FindComponent('dxLacinsiyet_')).Visible := False;


  TcxImageComboBoxProperties(Satirlarmeslek.Properties).Items := TcxImageComboBox(FindComponent('meslek_')).Properties.Items;
  TcxImageComboBoxProperties(Satirlarcinsiyet.Properties).Items := TcxImageComboBox(FindComponent('cinsiyet_')).Properties.Items;

  TcxImageComboBoxProperties(SatirlarTO_Yikama_Ovma_Yok.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarTO_Ovma.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarTO_Yok.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;

  TcxImageComboBoxProperties(SatirlarTS_Firsat.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarTS_Yikama_Ovma_Yok.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarTS_Ovma.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarTS_Yok.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;

  TcxImageComboBoxProperties(SatirlarAIO_Firsat.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarAIO_Yikama_Ovma_Yok.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarAIO_Ovma.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarAIO_Yok.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;

  TcxImageComboBoxProperties(SatirlarVS_Firsat.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarVS_Yikama_Ovma_Yok.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarVS_Ovma.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarVS_Yok.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;

  TcxImageComboBoxProperties(SatirlarHCTS_Firsat.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarHCTS_Yikama_Ovma_Yok.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarHCTS_Ovma.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;
  TcxImageComboBoxProperties(SatirlarHCTS_Yok.Properties).Items := TcxImageComboBoxProperties(SatirlarTO_Firsat.Properties).Items;



  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmElHijyen.Gozlem(islem: Integer);
var
  F : TForm;
  bBasarili: Boolean;
begin
    Self._firmaKod_ := datalar.AktifSirket;

    F := Self;
    if (islem in [ElHijyenYeni, ElHijyenDuzenle])
    then begin
      if islem = ElHijyenYeni then
      begin
        datalar.ElHijyen.sirketKod := datalar.AktifSirket;
        datalar.ElHijyen.Tarih := date;
        datalar.ElHijyen.gozlemci := '';
      end
      else begin
        datalar.ElHijyen.sirketKod := ADO_SahaGozetim.FieldByName('sirketKod').AsString;
        datalar.ElHijyen.Tarih := ADO_SahaGozetim.FieldByName('Tarih').AsDateTime;
        datalar.ElHijyen.gozlemci := ADO_SahaGozetim.FieldByName('gozlemci').AsString;
      end;

      if mrYes = ShowPopupForm(IfThen (islem = ElHijyenYeni, 'Yeni', 'Düzenle'),islem,F)
      then begin
        bBasarili := False;
        ADO_SahaGozetim.DisableControls;
        try
          if islem = ElHijyenYeni then
            ADO_SahaGozetim.Append
           else
            ADO_SahaGozetim.Edit;
          try
            ADO_SahaGozetim.FieldByName('sirketKod').AsString := datalar.ElHijyen.sirketKod;
            ADO_SahaGozetim.FieldByName('Tarih').AsDateTime := datalar.ElHijyen.Tarih;
            ADO_SahaGozetim.FieldByName('gozlemci').AsString := datalar.ElHijyen.gozlemci;


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

procedure TfrmElHijyen.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmElHijyen.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

procedure TfrmElHijyen.gridRaporlarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ADOQuery1.Close;
  ADOQuery1.Parameters[0].Value := ADO_SahaGozetim.FieldByName('id').AsInteger;
  ADOQuery1.Open;

  AdjustMasterControls;
end;

end.

