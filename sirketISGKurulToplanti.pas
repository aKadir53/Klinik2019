unit sirketISGKurulToplanti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,ShellApi,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir,  KadirType,GetFormClass,GirisUnit,dxLayoutContainer,
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
  cxImageComboBox, cxButtonEdit, cxColorComboBox, Vcl.ImgList;

type
  TfrmISGKurulToplanti = class(TGirisForm)
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
    List: TListeAc;
    cxStyle9: TcxStyle;
    T1: TMenuItem;
    Y1: TMenuItem;
    M1: TMenuItem;
    KurulEkipGrid: TcxGridKadir;
    KurulEkipGridList: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    KurulEkipGridListAdiSoyadi: TcxGridDBBandedColumn;
    KurulEkipGridListGorevTanim: TcxGridDBBandedColumn;
    KurulEkipGridListeMail: TcxGridDBBandedColumn;
    KurulEkipGridListTelefon: TcxGridDBBandedColumn;
    KurulMaddeler: TcxGridKadir;
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
    Satirlar: TcxGridDBBandedTableView;
    KurulMaddelerLevel1: TcxGridLevel;
    SatirlarColumn1: TcxGridDBBandedColumn;
    SatirlarColumn2: TcxGridDBBandedColumn;
    SatirlarColumn3: TcxGridDBBandedColumn;
    M2: TMenuItem;
    T2: TMenuItem;
    E2: TMenuItem;
    DofList: TcxGridKadir;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    DofListesi: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    DofListesiColumn1: TcxGridDBBandedColumn;
    DofListesiColumn2: TcxGridDBBandedColumn;
    DofListesiColumn3: TcxGridDBBandedColumn;
    DofListesiColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    W1: TMenuItem;
    KurulEkipGridListColumn1: TcxGridDBBandedColumn;
    PopupMenu2: TPopupMenu;
    K1: TMenuItem;
    K2: TMenuItem;
    KurulEkipGridListColumn2: TcxGridDBBandedColumn;
    procedure NewRecord(DataSet: TDataSet);
    procedure Fatura(islem: Integer);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridRaporCustomDrawGroupCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo;
      var ADone: Boolean);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
                AButtonIndex: Integer); override;

    procedure ButtonClick(Sender: TObject);
    procedure FaturaSatirTutarCustomDrawFooterCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    function CreateRotatedFont: HFONT;
    procedure SirketlerPropertiesChange(Sender: TObject);
    function Ekip(EkipId : string = '') : TDataset;
    function Maddeler : TDataset;
    procedure SatirlarNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure E2Click(Sender: TObject);
    procedure K2Click(Sender: TObject);
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



const
  LIB_DLL = 'EFaturaDLL.dll';
 // LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';
  test = 'https://efatura-test.uyumsoft.com.tr/Services/Integration';
  gercek = 'https://efatura.uyumsoft.com.tr/Services/Integration';
var
  frmISGKurulToplanti: TfrmISGKurulToplanti;
  ilkYukleme : integer;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

procedure TfrmISGKurulToplanti.E2Click(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
  inherited;
  F := FormINIT(TagfrmISGKurulToplantiTanim,GirisRecord,ikHayir,'');
  if F <> nil then F.ShowModal;
end;

function TfrmISGKurulToplanti.Ekip(EkipId : string = '') : TDataset;
var
  ado : TADOQuery;
begin
  Ekip := nil;
  KurulEkipGrid.Dataset.Connection := Datalar.ADOConnection2;
  KurulEkipGrid.Dataset.Active := False;
  KurulEkipGrid.Dataset.SQL.Text :=
  'select id,AdiSoyadi,GT.tanimi Gorevi,eMail,Telefon,katilim from SirketISGKurulToplantiEkibi E ' +
  ' join SIRKET_SUBE_EKIP_View SE on SE.kod = E.EkipID ' +
  ' join FirmaISGEkipGorevTnm Gt on GT.kod = SE.Gorevi ' +
  ' where SirketKod = ' +
  QuotedStr(datalar.AktifSirket) +
  ' and E.ISGKurulToplantiID = ' + QuotedStr(vartoStr(TcxButtonEditKadir(FindComponent('id')).EditValue));
  KurulEkipGrid.Dataset.Active := True;

  Ekip := datalar.QuerySelect(
  'select id,AdiSoyadi,GT.tanimi Gorevi,eMail,Telefon,katilim from SirketISGKurulToplantiEkibi E ' +
  ' join SIRKET_SUBE_EKIP_View SE on SE.kod = E.EkipID ' +
  ' join FirmaISGEkipGorevTnm Gt on GT.kod = SE.Gorevi ' +
  ' where SirketKod = ' +
  QuotedStr(datalar.AktifSirket) +
  ' and E.ISGKurulToplantiID = ' + QuotedStr(vartoStr(TcxButtonEditKadir(FindComponent('id')).EditValue)) +
  ifThen(EkipId <> '',' and katilim = ' + EkipId,''));

end;

function TfrmISGKurulToplanti.Maddeler : TDataset;
begin
  Maddeler := nil;
  KurulMaddeler.Dataset.Connection := Datalar.ADOConnection2;
  KurulMaddeler.Dataset.Active := False;
  KurulMaddeler.Dataset.SQL.Text :=
  'select * from KurulToplantiMaddeler  ' +
  ' where kurulId = ' + QuotedStr(vartoStr(TcxButtonEditKadir(FindComponent('id')).EditValue));
  KurulMaddeler.Dataset.Active := True;
  Maddeler := KurulMaddeler.Dataset;
  KurulMaddeler.Dataset.OnNewRecord := NewRecord;

end;



function TfrmISGKurulToplanti.CreateRotatedFont: HFONT;
  var
    ALogFont: TLogFont;
begin
    FillChar(ALogFont, SizeOf(ALogFont), 0);
   // GetObject(ANFont.Handle, SizeOf(ALogFont), @ALogFont);
    ALogFont.lfEscapement := 900;
    Result := CreateFontIndirect(ALogFont);
end;


procedure TfrmISGKurulToplanti.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
//  FaturaToplamlari;
end;


procedure TfrmISGKurulToplanti.NewRecord(DataSet: TDataSet);
begin
   KurulMaddeler.Dataset.FieldByName('kurulId').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;


procedure TfrmISGKurulToplanti.SatirlarNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);

var
  Book : TBookmark;
  siraNo : integer;
procedure datawrite;
begin
   Satirlar.DataController.DataSet.FieldByName('siraNo').AsInteger := datalar.KurulToplantiMadde.SiraNo;
   Satirlar.DataController.DataSet.FieldByName('Madde').AsString := datalar.KurulToplantiMadde.Madde;
   Satirlar.DataController.DataSet.FieldByName('Karar').AsString := datalar.KurulToplantiMadde.Karar;
   Satirlar.DataController.DataSet.FieldByName('GorusmeNotlari').AsString := datalar.KurulToplantiMadde.GorusmeNotlari;
   Satirlar.DataController.DataSet.FieldByName('Aksiyon').AsString := datalar.KurulToplantiMadde.Aksiyon;
   Satirlar.DataController.DataSet.FieldByName('Gorevli').AsString := datalar.KurulToplantiMadde.Gorevli;
//   Satirlar.DataController.DataSet.FieldByName('GorevTarihi').AsDateTime := datalar.KurulToplantiMadde.GorevTarihi;
   if datalar.KurulToplantiMadde.GorevTarihi = Null then
     Satirlar.DataController.DataSet.FieldByName('GorevTarihi').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('GorevTarihi').AsDateTime := datalar.KurulToplantiMadde.GorevTarihi;


   //   Satirlar.DataController.DataSet.FieldByName('HedefTarih').AsDateTime := datalar.KurulToplantiMadde.HedafTarih;
   if datalar.KurulToplantiMadde.HedafTarih = Null then
     Satirlar.DataController.DataSet.FieldByName('HedefTarih').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('HedefTarih').AsDateTime := datalar.KurulToplantiMadde.HedafTarih;

   Satirlar.DataController.DataSet.FieldByName('YapilanIslem').AsString := datalar.KurulToplantiMadde.YapilanIslem;

//   Satirlar.DataController.DataSet.FieldByName('TamamlanmaTarihi').AsDateTime := datalar.KurulToplantiMadde.TamamlanmaTarihi;
   if datalar.KurulToplantiMadde.TamamlanmaTarihi = Null then
     Satirlar.DataController.DataSet.FieldByName('TamamlanmaTarihi').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('TamamlanmaTarihi').AsDateTime := datalar.KurulToplantiMadde.TamamlanmaTarihi;

   Satirlar.DataController.DataSet.FieldByName('Tamam').AsInteger := datalar.KurulToplantiMadde.Tamam;


 //  Satirlar.DataController.DataSet.FieldByName('Image').AsVariant := datalar.Risk.Image;

 (*
    Blob := TADOBlobStream.Create(TBlobField(Satirlar.DataController.DataSet.FieldByName('Image')),bmwrite);
    try
    //  datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
      datalar.Risk.Image.Picture.Graphic.SaveToStream(Blob);
     // Blob.LoadFromStream(datalar.Risk.Stream);
      Blob.Position := 0;
      TBlobField(Satirlar.DataController.DataSet.FieldByName('Image')).LoadFromStream(Blob);
    finally
      Blob.Free;
    end;
   *)
end;

procedure dataRead;
begin
   (*
   g := TJpegimage.Create;
   try
      g.Assign(Satirlar.DataController.DataSet.FieldByName('Image'));
      datalar.Risk.Image := TcxImage.Create(nil);
      datalar.Risk.Image.Picture.Assign(g);
  //    datalar.Risk.Image.Picture.SaveToFile('dd.jpg');
   finally
     g.free;
   end;
     *)
   datalar.KurulToplantiMadde.SiraNo := Satirlar.DataController.DataSet.FieldByName('siraNo').AsInteger;
   datalar.KurulToplantiMadde.Madde := Satirlar.DataController.DataSet.FieldByName('Madde').AsString;
   datalar.KurulToplantiMadde.Karar := Satirlar.DataController.DataSet.FieldByName('Karar').AsString;
   datalar.KurulToplantiMadde.GorusmeNotlari := Satirlar.DataController.DataSet.FieldByName('GorusmeNotlari').AsString;
   datalar.KurulToplantiMadde.Aksiyon := Satirlar.DataController.DataSet.FieldByName('Aksiyon').AsString;
   datalar.KurulToplantiMadde.Gorevli := Satirlar.DataController.DataSet.FieldByName('Gorevli').AsString;

   //datalar.KurulToplantiMadde.GorevTarihi := Satirlar.DataController.DataSet.FieldByName('GorevTarihi').AsDateTime;

   if Satirlar.DataController.DataSet.FieldByName('GorevTarihi').IsNull then
     datalar.KurulToplantiMadde.GorevTarihi := Null
    else
     datalar.KurulToplantiMadde.GorevTarihi := Satirlar.DataController.DataSet.FieldByName('GorevTarihi').AsDateTime;

  // datalar.KurulToplantiMadde.HedafTarih := Satirlar.DataController.DataSet.FieldByName('HedefTarih').AsDateTime;
   if Satirlar.DataController.DataSet.FieldByName('HedefTarih').IsNull then
     datalar.KurulToplantiMadde.HedafTarih := Null
    else
     datalar.KurulToplantiMadde.HedafTarih := Satirlar.DataController.DataSet.FieldByName('HedefTarih').AsDateTime;


   datalar.KurulToplantiMadde.YapilanIslem := Satirlar.DataController.DataSet.FieldByName('YapilanIslem').AsString;

   //datalar.KurulToplantiMadde.TamamlanmaTarihi := Satirlar.DataController.DataSet.FieldByName('TamamlanmaTarihi').AsDateTime;


   if Satirlar.DataController.DataSet.FieldByName('TamamlanmaTarihi').IsNull then
     datalar.KurulToplantiMadde.TamamlanmaTarihi := Null
    else
     datalar.KurulToplantiMadde.TamamlanmaTarihi := Satirlar.DataController.DataSet.FieldByName('TamamlanmaTarihi').AsDateTime;

   datalar.KurulToplantiMadde.Tamam := Satirlar.DataController.DataSet.FieldByName('Tamam').AsInteger;

end;

begin

  case AButtonIndex of
   6 : begin
        datalar.KurulToplantiMadde.SiraNo := 0;
        datalar.KurulToplantiMadde.Madde := '';
        datalar.KurulToplantiMadde.Karar := '';
        datalar.KurulToplantiMadde.GorusmeNotlari := '';
        datalar.KurulToplantiMadde.Aksiyon := '';
        datalar.KurulToplantiMadde.Gorevli := '';
        datalar.KurulToplantiMadde.GorevTarihi := date;
        datalar.KurulToplantiMadde.HedafTarih := date;
        datalar.KurulToplantiMadde.YapilanIslem := '';
        datalar.KurulToplantiMadde.TamamlanmaTarihi := date;
        datalar.KurulToplantiMadde.Tamam := 0;

        Satirlar.DataController.DataSet.Last;
        siraNo := Satirlar.DataController.DataSet.FieldByName('siraNo').AsInteger + 1;
        datalar.KurulToplantiMadde.SiraNo := siraNo;
        if mrYes = ShowPopupForm('Madde Ekle',yeniMadde)
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
        end
        else Satirlar.DataController.DataSet.Cancel;

    end;
   8 : begin
       //  SatirSil(SahaGozetimGrid.Dataset.FieldByName('id').AsString);
       //  FaturaDetay;
       end;

   9 : begin
        dataRead;
        if mrYes = ShowPopupForm('Madde D�zenle',MaddeDuzenle)
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
        end
        else Satirlar.DataController.DataSet.Cancel;

    end;

  end;


end;



procedure TfrmISGKurulToplanti.SirketlerPropertiesChange(Sender: TObject);
var
  sql : string;
  dataset : Tdataset;
begin

   if varToStr(TcxImageComboKadir(FindComponent('id')).EditValue) = '' then exit;
   if ilkYukleme = 0
   then begin
      datalar.QueryExec('delete from SirketISGKurulToplantiEkibi where ISGKurulToplantiID = ' + varToStr(TcxImageComboKadir(FindComponent('id')).EditValue) );
     sql :=
     'insert into SirketISGKurulToplantiEkibi(ISGKurulToplantiID,EkipId) ' +
     'select ' + varToStr(TcxImageComboKadir(FindComponent('id')).EditValue) +
        ',id from SIRKET_SUBE_EKIP where ISGEkipId = ' + varToStr(TcxImageComboKadir(FindComponent('IsgEkipID')).EditValue);
     datalar.QueryExec(sql);
     Ekip;

   end;
end;

procedure TfrmISGKurulToplanti.cxKaydetClick(Sender: TObject);
var
 sql : string;
begin
  //SirketKodx.Text := datalar.AktifSirket; giri� formuna eklendi.

  case TControl(sender).Tag  of
    Sil : begin
           if MrYes = ShowMessageSkin('Silmek �stedi�inizden Emin misiniz ?','','','msg')
           then begin
              datalar.QueryExec('delete from SirketISGKurulToplantiEkibi where ISGKurulToplantiID = ' + varToStr(TcxButtonEdit(FindComponent('id')).EditValue));
              datalar.QueryExec('delete from KurulToplantiMaddeler where kurulId = ' + varToStr(TcxButtonEdit(FindComponent('id')).EditValue));
              datalar.QueryExec('delete from SirketISGKurulToplanti where id = ' + varToStr(TcxButtonEdit(FindComponent('id')).EditValue));
              indexKaydiBul('');
              ShowMessageSkin('Toplant� Silindi','','','info');
              exit;
           end;
          end;
  end;

  inherited;

  case TControl(sender).Tag  of
Kaydet : begin
          if varToStr(TcxImageComboKadir(FindComponent('IsgEkipID')).EditValue) <> ''
          then
            Ekip(varToStr(TcxImageComboKadir(FindComponent('IsgEkipID')).EditValue));
            TcxImageComboKadir(FindComponent('IsgEkipID')).Enabled := True;
            Ekip('');
            Maddeler;
        end;
  Yeni : begin
          TcxDateEditKadir(FindComponent('kararTarihi')).EditValue := date;
          TcxDateEditKadir(FindComponent('ToplantiZamani')).EditValue := date;
          TcxImageComboKadir(FindComponent('IsgEkipID')).Enabled := False;
          TcxImageComboKadir(FindComponent('SirketKod')).EditValue := datalar.AktifSirket;
          TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
          KurulEkipGrid.Dataset.Active := False;
          KurulMaddeler.Dataset.Active := False;
        end;
  end;
end;


procedure TfrmISGKurulToplanti.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    ilkYukleme := 1;
    inherited;
    Enabled;
    Ekip('');
    Maddeler;
    ilkYukleme := 0;
    TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;

end;

function TfrmISGKurulToplanti.Init(Sender : TObject) : Boolean;
begin
  Result := True;
end;


procedure TfrmISGKurulToplanti.K2Click(Sender: TObject);
var
  sql : string;
begin
  inherited;

  sql := 'update SirketISGKurulToplantiEkibi set katilim = ' + intTostr(TMenuItem(sender).Tag) +
                    ' where id = ' + KurulEkipGrid.Dataset.FieldByName('id').AsString;
  datalar.QueryExec(sql);
                    KurulEkipGrid.Dataset.Requery();


end;

procedure TfrmISGKurulToplanti.Fatura(islem: Integer);

begin
  //
end;

procedure TfrmISGKurulToplanti.PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
(*
  if RDSSatirlar.Controller.FocusedColumn.Name = 'RDSSatirlarRisk_tanim'
  Then begin
    List.Table := 'RDS_Risk';
    L := List.ListeGetir;
    RDSSatirlar.DataController.DataSet.Edit;
    RDSSatirlar.DataController.DataSet.FieldByName('Risk_tanim').AsString := L[0].Kolon2;
    RDSSatirlar.DataController.DataSet.Post;
  end;

  if RDSSatirlar.Controller.FocusedColumn.Name = 'RDSSatirlarTehlike'
  Then begin
    List.Table := 'RDS_Tehlike';
    L := List.ListeGetir;
    RDSSatirlar.DataController.DataSet.Edit;
    RDSSatirlar.DataController.DataSet.FieldByName('Tehlike').AsString := L[0].Kolon2;
    RDSSatirlar.DataController.DataSet.Post;
  end;
  *)
end;

procedure TfrmISGKurulToplanti.cxButtonCClick(Sender: TObject);
var
  dosya : TOpenDialog;
  TopluDataset : TDataSetKadir;
  FB : TFirmaBilgi;
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
  Tels , sonuc : string;
  SS : TStringList;
  DataSet,katilan,katilmayan : TADOQuery;
  mesaj : PWideChar;
begin
  inherited;

  if TcxButtonEditKadir(FindComponent('id')).text = '' then exit;

  TopluDataset.Dataset1 := datalar.QuerySelect('select * from SirketISGKurulToplanti_view where id = ' +
                                                        varTostr(TcxButtonEditKadir(FindComponent('id')).EditValue));





  TopluDataset.Dataset2 := KurulEkipGrid.Dataset;




  TopluDataset.Dataset3 := KurulMaddeler.Dataset;
  TopluDataset.Dataset4 := datalar.ADO_aktifSirketLogo;

  case Tcontrol(sender).Tag of
  -20 : begin
          PrintYap('TCF','Toplant� �a�r� Formu','',TopluDataset);
        end;

  -21 : begin
          TopluDataset.Dataset2 := Ekip('1');
          TopluDataset.Dataset5 := Ekip('0');
          PrintYap('KTT','Kurul Toplant� Tutana��','',TopluDataset);

        end;
  -30 : begin
          PrintYap('TCF','Toplant� �a�r� Formu','',TopluDataset,pTPDF,self);

          FB.isgKurulEkibiMailBilgileri := isgKurulEkibiMailBilgileri(vartostr(TcxButtonEditKadir(FindComponent('id')).EditValue));
          //:= FirmaBilgileri(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue),'00');
          if (mailGonder(FB.isgKurulEkibiMailBilgileri,
                        'Toplant� �a�r� Formu',
                        'Toplant� �a�r� Formu , ekteki dosyada bilginize sunulmu�tur',
                        'C:\NoktaV3\Temp\Toplant� �a�r� Formu.PDF',
                        'Toplant� �a�r�')
               = '0000')
             Then ShowMessageSkin('Email Bilgilendirmesi Yap�ld�','','','info')
              else ShowMessageSkin('Email Bilgilendirmesi Yap�lamad�','','','info')

        end;
   -40 : begin
          PrintYap('KTT','Kurul Toplant� Tutana��','',TopluDataset,pTPDF,self);
          FB.isgKurulEkibiMailBilgileri := isgKurulEkibiMailBilgileri(vartostr(TcxButtonEditKadir(FindComponent('id')).EditValue));

          //:= FirmaBilgileri(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue),'00');
          if (mailGonder(FB.isgKurulEkibiMailBilgileri,
                        'Kurul Toplant� Tutana��',
                        'Kurul Toplant� Tutana�� , ekteki dosyada bilginize sunulmu�tur',
                        'C:\NoktaV3\Temp\Kurul Toplant� Tutana��.PDF',
                        'Kurul Toplant� Tutana��')
               = '0000')
             Then ShowMessageSkin('Email Bilgilendirmesi Yap�ld�','','','info')
              else ShowMessageSkin('Email Bilgilendirmesi Yap�lamad�','','','info')
        end;

   -50 : begin

          DurumGoster(True);
          try
            DataSet := datalar.QuerySelect('sp_isgKurulEkibiWhatsappBilgileri ' +
            vartostr(TcxButtonEditKadir(FindComponent('id')).EditValue));

            while not Dataset.Eof do
            begin
              mesaj := PwideChar(Dataset.FieldByName('mesaj').AsString);
              sonuc := SendMesajGonderWhatsapp(datalar.WhatsappTelefonToken,Dataset.FieldByName('Telefon').AsString,
                                               mesaj);
              SS := TStringList.Create;
              try
                ExtractStrings(['|'], [], PChar(sonuc),SS);
                if (SS[1] = '200') or (SS[1] = 'OK')
                then begin
                   Tels := Tels + Dataset.FieldByName('Telefon').AsString + ',';
                  //ShowMessageSkin('Mesaj G�nderildi','','','info');
                  (*
                  datalar.QueryExec('insert into SmsGonderimLog (dosyaNO,tel,msj)' +
                                    ' values(' + QuotedStr(dosyaNo) + ',' +
                                    QuotedStr(tel) + ',' +
                                    QuotedStr(txtmsg.Text) + ')');
                  *)
                end ;

              finally
                SS.Free;
              end;
              Dataset.Next;
              Sleep(2000);
              Application.ProcessMessages;
            end;
            ShowMessageSkin('Mesaj G�nderildi',Tels,'','info');
          finally
            DurumGoster(False);
          end;
         end;


  end;
end;

procedure TfrmISGKurulToplanti.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
  sql : string;
  dataset : Tdataset;
begin

    if TcxButtonKadir(sender).tag = -21
    Then begin
      datalar.QuerySelect(DofList.Dataset,
                          'select * from SirketISGKurulToplanti_view  ' +
                          ' where sirketKod = ' + QuotedStr(datalar.aktifSirket) +
                          ' and ToplantiZamani between ' + TcxDateEditKadir(FindComponent('Tarih1')).GetSQLValue  +
                          ' and ' + TcxDateEditKadir(FindComponent('Tarih2')).GetSQLValue
                          );

    end;

 //   F := FormINIT(9010,GirisRecord,ikHayir,'');
  //  if F <> nil then F.ShowModal;





  if TcxButtonEditKadir(FindComponent('id')).Text <> ''
  Then
    if TcxButtonKadir (Sender).ButtonName = 'btnEkipYukle' then
    begin
     if varToStr(TcxImageComboKadir(FindComponent('IsgEkipID')).EditValue) = '' then exit;
        datalar.QueryExec('delete from SirketISGKurulToplantiEkibi where ISGKurulToplantiID = ' + varToStr(TcxImageComboKadir(FindComponent('id')).EditValue) );
       sql :=
       'insert into SirketISGKurulToplantiEkibi(ISGKurulToplantiID,EkipId) ' +
       'select ' + varToStr(TcxImageComboKadir(FindComponent('id')).EditValue) +
          ',id from SIRKET_SUBE_EKIP where ISGEkipId = ' + varToStr(TcxImageComboKadir(FindComponent('IsgEkipID')).EditValue);
       datalar.QueryExec(sql);
       Ekip;
    end;

    //F := FormINIT(9010,GirisRecord,ikHayir,'');
    //if F <> nil then F.ShowModal;
end;


procedure TfrmISGKurulToplanti.FormCreate(Sender: TObject);
var
  Faturalar : TListeAc;
  sirketlerx,igu,hekim : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
   where : string;
begin
  inherited;


  cxPanel.Visible := True;
  Menu := PopupMenu1;
  indexFieldName := 'id';
  TableName := 'SirketISGKurulToplanti';
 // TopPanel.Visible := true;

  where := '';

  Faturalar := ListeAcCreate('SirketISGKurulToplanti_view','id,sirketKod,sirketAdi,kararTarihi,kararNo',
                       'ID,�irketKodu,�irketAd�,Kara Tarihi,Karar No',
                       '40,60,250,80,50','ID','Kurul Toplant�lar�',where,5,True);

  setDataStringB(self,'id','Toplant� ID',Kolon1,'',50,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  setDataString(self,'ToplantiNo','Toplant� No',Kolon1,'',80,false,'');
  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  FaturaTarihi.Properties.Kind := ckDateTime;

  setDataString(self,'ToplantiTanimi','Toplant� Tanimi',Kolon1,'',150,false,'');
  setDataStringKontrol(self,FaturaTarihi,'ToplantiZamani','Toplant� Tarihi',Kolon1,'',150);
  setDataString(self,'ToplantiYeri','Toplant� Yeri',Kolon1,'',150,false,'');
  setDataString(self,'ToplantiBaskani','Toplant� Ba�kan�',Kolon1,'',150,false,'');
  setDataString(self,'Sekreter','Sekreter',Kolon1,'',150,false,'');

  setDataStringMemo(self,'GundemMaddeleri','G�ndem',Kolon1,'',410,30);



 // setDataStringBLabel(self,'bosSatir1',kolon1,'',300);

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  FaturaTarihi.Properties.Kind := ckDateTime;
  setDataStringKontrol(self,FaturaTarihi,'kararTarihi','Karar Tarihi',Kolon2,'',150);
  setDataStringCurr(self,'defterSayfaNo','Defter Sayfa No',Kolon2,'',80,'0',0);
  setDataStringCurr(self,'kararNo','Karar No',Kolon2,'',80,'0',0);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := '';//datalar.sirketlerUserFilter;
  setDataStringKontrol(self,sirketlerx,'SirketKod','�irket',Kolon1,'',150,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).EditValue := datalar.AktifSirket;
    TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
  TcxImageComboKadir(FindComponent('dxLaSirketKod')).Visible := False;



  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'FirmaISGEkipTnm';
  sirketlerx.ValueField := 'kod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := '';//datalar.sirketlerUserFilter;
  setDataStringKontrol(self,sirketlerx,'IsgEkipID','Komite',Kolon1,'ekip',150,0,alNone,'');
  //TcxImageComboKadir(FindComponent('IsgEkipID')).Properties.OnEditValueChanged := SirketlerPropertiesChange;
  addButton(self,nil,'btnEkipYukle','','Komite Ekip Getir',kolon1,'ekip',100,ButtonClick,50);

  setDataStringKontrol(self,KurulEkipGrid,'KurulEkipGrid',' ',Kolon1,'',410,200,alNone,'',clLeft);

  setDataStringKontrol(self,KurulMaddeler,'KurulMaddeler',' ',Kolon2,'',540,360,alNone,'',clLeft);



  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  FaturaTarihi.Tag := -1;
  setDataStringKontrol(self,FaturaTarihi,'Tarih1','Tarih Aral���',sayfa2_Kolon1,'trh2',100);
  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  FaturaTarihi.Tag := -1;
  setDataStringKontrol(self,FaturaTarihi,'Tarih2','',sayfa2_Kolon1,'trh2',100);
  addButton(self,nil,'btnList','','Listele',sayfa2_Kolon1,'trh2',100,ButtonClick,-21);


  setDataStringKontrol(self,DofList,'DofList','',sayfa2_Kolon1,'',1,1,alClient);

  kolon2.Width := 0;
  Kolon3.Width := 0;
  Kolon4.Width := 0;

  SayfaCaption('Toplant�','Toplant� Listesi','','','');
  Disabled(self,True);
end;

procedure TfrmISGKurulToplanti.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmISGKurulToplanti.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

