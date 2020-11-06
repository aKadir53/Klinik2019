unit FaaliyetDurumBildirim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir,  KadirType,GetFormClass,GirisUnit, dateUtils,
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
  TfrmFaaliyetDurumBildirim = class(TGirisForm)
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
    miGozetimYazdir: TMenuItem;
    cxGridKadir2: TcxGridKadir;
    cxGridLevel1: TcxGridLevel;
    gridRapor: TcxGridDBTableView;
    tmr1: TTimer;
    N2: TMenuItem;
    cxStyle9: TcxStyle;
    cxImageList1: TcxImageList;
    DataSource1: TDataSource;
    ADO_SahaGozetim: TADOQuery;
    gridRapordurum: TcxGridDBColumn;
    gridRaporgozlemGrup: TcxGridDBColumn;
    gridRaportanim: TcxGridDBColumn;
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
  procedure TopPanelButonClick(Sender: TObject);
  private
    { Private declarations }
    FImages : array of TcxImage;
    FImageIds : array of Integer;
    function ImageIndexOfID (const iID : Integer): Integer;
    function ImageAdd (const iID : Integer; const aImage : TCxImage): Integer;
    procedure ImageDelete (const iIndex: Integer);
  protected
    procedure GozlemYazdir;
    procedure AdjustMasterControls;
    procedure RefreshSahaGozetimler (const bUseBookmark: Boolean);
    function SahaSaglikGozetimFormFotografYukle (const iSahaGozetimID : Integer): Boolean;
    function SahaSaglikGozetimFormFotografSil (const iSahaGozetimID : Integer): Boolean;
    procedure SahaSaglikGozetimFormFotografGoruntule (const iSahaGozetimID : Integer);

  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmFaaliyetDurumBildirim: TfrmFaaliyetDurumBildirim;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}




function TfrmFaaliyetDurumBildirim.ImageAdd(const iID: Integer;
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

procedure TfrmFaaliyetDurumBildirim.ImageDelete(const iIndex: Integer);
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

function TfrmFaaliyetDurumBildirim.ImageIndexOfID(const iID: Integer): Integer;
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

function TfrmFaaliyetDurumBildirim.Init(Sender : TObject) : Boolean;
begin
  Result := True;
end;

procedure TfrmFaaliyetDurumBildirim.RefreshSahaGozetimler(
  const bUseBookmark: Boolean);

begin

end;

procedure TfrmFaaliyetDurumBildirim.SahaSaglikGozetimFormFotografGoruntule(
  const iSahaGozetimID: Integer);

begin

end;

function TfrmFaaliyetDurumBildirim.SahaSaglikGozetimFormFotografSil(
  const iSahaGozetimID: Integer): Boolean;

begin

end;

function TfrmFaaliyetDurumBildirim.SahaSaglikGozetimFormFotografYukle(
  const iSahaGozetimID: Integer): Boolean;
begin
end;

procedure TfrmFaaliyetDurumBildirim.AdjustMasterControls;
begin

end;

procedure TfrmFaaliyetDurumBildirim.cxButtonCClick(Sender: TObject);
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

       end;
  -11 : begin

       end;
  -18 : begin

        end;
  -21:begin

  end;
  -22:begin

  end;
  -23:begin

  end;
  -27 : begin
          GozlemYazdir;
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
 -91 : begin

       end;

 -92 : begin

       end;

  end;
end;

procedure TfrmFaaliyetDurumBildirim.TopPanelButonClick(Sender: TObject);
var
  sql : string;
begin

       sql := 'exec sp_SKS_Faaliyet_Durum_Raporu  ' + txtkodTopPanel.Text + ','
       + QuotedStr(datalar.AktifSirket);


       datalar.QuerySelect(ADO_SahaGozetim,sql);
       gridRapor.ViewData.Expand(True);


end;

procedure TfrmFaaliyetDurumBildirim.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
  SetLength (FImages, 0);
  SetLength (FImageIds, 0);
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);

  TopPanel.Visible := True;
  TapPanelElemanVisible(True,false,false,false,False,True,false,false,False,false,False,false,False,false,false);

  txtkodTopPanel.Width := 60;

  txtkodTopPanel.Properties.Items := ComboYil(YearOf(date()));

  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmFaaliyetDurumBildirim.GozlemYazdir;
var
  ado : TADOQuery;
  sql : String;
  TopluDataset : TDataSetKadir;
begin

  try
    TopluDataset.Dataset0 := ADO_SahaGozetim;

    TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
    TopluDataset.Dataset2 := datalar.ADO_aktifSirketLogo;

    PrintYap('FDB','Faaliyet Durum Bildirim','',TopluDataset,pTNone);


  finally

  end;
end;

procedure TfrmFaaliyetDurumBildirim.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

