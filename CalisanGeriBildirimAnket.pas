unit CalisanGeriBildirimAnket;

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
  TfrmCalisanGeriBildirimAnket = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_Anket: TADOQuery;
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
    cxGridKadir2: TcxGridKadir;
    cxGridLevel1: TcxGridLevel;
    gridAnketler: TcxGridDBTableView;
    gridAnketlerID: TcxGridDBColumn;
    gridAnketlerDenetimTarihi: TcxGridDBColumn;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    tmr1: TTimer;
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
    cxGridKadir1Level2: TcxGridLevel;
    gridAnketDetay: TcxGridDBBandedTableView;
    gridAnketDetayColumn1: TcxGridDBBandedColumn;
    gridAnketDetayColumn2: TcxGridDBBandedColumn;
    gridAnketDetayColumn3: TcxGridDBBandedColumn;
    gridAnketDetayColumn4: TcxGridDBBandedColumn;
    gridAnketDetayColumn5: TcxGridDBBandedColumn;
    gridAnketDetayColumn6: TcxGridDBBandedColumn;
    gridAnketDetayColumn7: TcxGridDBBandedColumn;
    gridAnketDetayColumn8: TcxGridDBBandedColumn;
    gridAnketDetayColumn9: TcxGridDBBandedColumn;
    gridAnketDetayColumn10: TcxGridDBBandedColumn;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    gridAnketDetayColumn11: TcxGridDBBandedColumn;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    gridAnketlerColumn1: TcxGridDBColumn;
    gridAnketDetayColumn12: TcxGridDBBandedColumn;
    cxStyle13: TcxStyle;
    gridAnketDetayColumn13: TcxGridDBBandedColumn;
    cxStyle14: TcxStyle;
    gridAnketDetayColumn14: TcxGridDBBandedColumn;
    Y1: TMenuItem;
    N3: TMenuItem;
    gridAnketlerColumn2: TcxGridDBColumn;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Anket(islem: Integer);
    procedure gridAnketlerFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gridAnketDetayCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure ADOQuery1AfterPost(DataSet: TDataSet);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);

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
    procedure RefreshAnketler (const bUseBookmark: Boolean);
    function SahaSaglikGozetimFormFotografYukle (const iSahaGozetimID : Integer): Boolean;
    function SahaSaglikGozetimFormFotografSil (const iSahaGozetimID : Integer): Boolean;
    procedure SahaSaglikGozetimFormFotografGoruntule (const iSahaGozetimID : Integer);
    procedure DOFOlustur(GozlemId : string; _DOF_ : TDOF);
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmCalisanGeriBildirimAnket: TfrmCalisanGeriBildirimAnket;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

function TfrmCalisanGeriBildirimAnket.ImageAdd(const iID: Integer;
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

procedure TfrmCalisanGeriBildirimAnket.ImageDelete(const iIndex: Integer);
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

function TfrmCalisanGeriBildirimAnket.ImageIndexOfID(const iID: Integer): Integer;
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

function TfrmCalisanGeriBildirimAnket.Init(Sender : TObject) : Boolean;
begin
  //þube kodu ekle
  ADO_Anket.SQL.Text :=
    'select * from CalisanGeriBildirimAnket ' +
    'where sirketKodu = ' + QuotedStr (DATALAR.AktifSirket) +
    'order by tarih';
  ADO_Anket .Active := true;
  Result := True;
end;

procedure TfrmCalisanGeriBildirimAnket.RefreshAnketler(
  const bUseBookmark: Boolean);
var
  aBM: TBookmark;
begin

 //   ADO_Anket.Requery();

end;

procedure TfrmCalisanGeriBildirimAnket.SahaSaglikGozetimFormFotografGoruntule(
  const iSahaGozetimID: Integer);

begin

end;

function TfrmCalisanGeriBildirimAnket.SahaSaglikGozetimFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;

begin

end;

function TfrmCalisanGeriBildirimAnket.SahaSaglikGozetimFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
end;

procedure TfrmCalisanGeriBildirimAnket.AdjustMasterControls;
begin

end;

procedure TfrmCalisanGeriBildirimAnket.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  aModalResult : TModalResult;
  dosya : TOpenDialog;
  dosyaTip , sql : string;
  F : TGirisForm;
  TopluDataset : TDataSetKadir;

begin
  inherited;

  GirisRecord.F_firmaKod_ := ADO_Anket.fieldbyname('sirketKodu').AsString;

  case Tcontrol(sender).Tag of
  -9 : begin
         Anket(yeniAnket);
       end;
  -11 : begin
         Anket(AnketDuzenle);
       end;
  -18 : begin
          if ADO_Anket.RecordCount > 0 then
          begin
            aModalResult := ShowMessageSkin('Anket silmek istediðinizden emin misiniz ?', '', '', 'conf');
            if aModalResult <> mrYes then Exit;
            if not AnketSil (ADO_Anket.FieldByName('id').AsInteger) then Exit;
            RefreshAnketler(False);
          end;
        end;
  -21:begin

  end;
  -22:begin

  end;
  -23:begin

  end;
  -27 : begin
           TopluDataset.Dataset0 := datalar.ADO_AktifSirket;
           TopluDataset.Dataset1 := datalar.ADO_aktifSirketLogo;
           TopluDataset.Dataset2 := ADOQuery1;
           PrintYap('CGBA','Çalýþan Geri Bildirim Anket','',TopluDataset);
        end;

  -28 : begin
           TopluDataset.Dataset0 := datalar.ADO_AktifSirket;
           TopluDataset.Dataset1 := datalar.ADO_aktifSirketLogo;
           TopluDataset.Dataset2 := ADOQuery1;
           PrintYap('AF0','Çalýþan Geri Bildirim Anket Form','',TopluDataset);
        end;

  -50 : begin

        end;
  -60 : begin

        end;

   -70 : begin

        end;
   -80 : begin

         end;
  -90  : begin
            F := FormINIT(TagfrmCalisanGeriBildirimAnketSoruTanim,GirisRecord,ikHayir,'');
            if F <> nil then F.ShowModal;
         end;


  end;
end;

procedure TfrmCalisanGeriBildirimAnket.DOFOlustur(GozlemId: string; _DOF_: TDOF);
var
 sql : string;
 s,s1 : integer;
begin

end;

procedure TfrmCalisanGeriBildirimAnket.FormCreate(Sender: TObject);
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

procedure TfrmCalisanGeriBildirimAnket.ADOQuery1AfterPost(DataSet: TDataSet);
var
  bm : TBookmark;
begin
  inherited;
  bm := ADOQuery1.Bookmark;
  ADOQuery1.Requery();
  ADOQuery1.GotoBookmark(bm);
end;

procedure TfrmCalisanGeriBildirimAnket.ADOQuery1BeforePost(DataSet: TDataSet);
begin
   if ADO_Anket.FieldByName('anketSayisi').AsInteger <
      (ADOQuery1.FieldByName('TKatiliyorum').AsInteger  +
      ADOQuery1.FieldByName('Katiliyorum').AsInteger  +
      ADOQuery1.FieldByName('Kararsizim').AsInteger  +
      ADOQuery1.FieldByName('Katilmiyorum').AsInteger  +
      ADOQuery1.FieldByName('KKatilmiyorum').AsInteger)
   Then begin
     ShowMessageSkin('Anket Sayisi Hatasý','','','info');
     ADOQuery1.Cancel;
     ADOQuery1.Requery();
   end;



end;

procedure TfrmCalisanGeriBildirimAnket.Anket(islem: Integer);
var
  F : TForm;
  bBasarili: Boolean;
begin
    Self._firmaKod_ := datalar.AktifSirket;

    F := Self;
    if (islem in [yeniAnket, AnketDuzenle])
    then begin
      if islem = yeniAnket then
      begin
        datalar.Anket.sirketKod := datalar.AktifSirket;
        datalar.Anket.tarih := date;
      end
      else begin
        datalar.Anket.sirketKod := datalar.AktifSirket;
        datalar.Anket.tarih := ADO_Anket.FieldByName('tarih').AsDateTime;
        datalar.Anket.anketTip := ADO_Anket.FieldByName('anketTip').AsInteger;
      end;

   //   _SahaDenetimVeri_ := aSahaDenetimVeri;

      if mrYes = ShowPopupForm(IfThen (islem = yeniAnket, 'Yeni Anket', 'Anket Düzenle'),islem,F)
      then begin
        bBasarili := False;
        ADO_Anket.DisableControls;
        try
          if islem = yeniAnket then
            ADO_Anket.Append
           else
            ADO_Anket.Edit;
          try
            ADO_Anket.FieldByName('tarih').AsDateTime := datalar.Anket.tarih;
            ADO_Anket.FieldByName('sirketKodu').AsString := datalar.AktifSirket;
            ADO_Anket.FieldByName('anketSayisi').AsInteger:= datalar.Anket.anketSayi;
            ADO_Anket.FieldByName('anketTip').AsInteger:= datalar.Anket.anketTip;
            ADO_Anket.Post;
            bBasarili := True;
          finally
            if not bBasarili then ADO_Anket.Cancel;
          end;
          RefreshAnketler (True);
        finally
          ADO_Anket.EnableControls;
        end;
      end;
    end;
end;

procedure TfrmCalisanGeriBildirimAnket.GozlemYazdir(const GozlemID: integer);

begin

end;

procedure TfrmCalisanGeriBildirimAnket.gridAnketDetayCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

procedure TfrmCalisanGeriBildirimAnket.gridAnketlerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := ' exec sp_AnketDetayGetir @AnketID =' + ADO_Anket.FieldByName('id').AsString +
                        ',@anketTip = ' + ADO_Anket.FieldByName('anketTip').AsString ;
  ADOQuery1.Open;

//  tmr1.Enabled := False;
 // tmr1.Enabled := True;
  AdjustMasterControls;
end;

end.

