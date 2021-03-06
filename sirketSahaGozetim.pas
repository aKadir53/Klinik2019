unit sirketSahaGozetim;

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
  cxImageComboBox, cxButtonEdit, cxColorComboBox, Vcl.ImgList, cxTimeEdit;

type
  TfrmSirketSahaGozetim = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_RiskDetay: TADOQuery;
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
    E3: TMenuItem;
    List: TListeAc;
    cxStyle9: TcxStyle;
    cxImageList1: TcxImageList;
    SahaGozetimGrid: TcxGridKadir;
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
    SahaGozetimGridLevel1: TcxGridLevel;
    SatirlarsirketSahaGozetimId: TcxGridDBBandedColumn;
    Satirlarid: TcxGridDBBandedColumn;
    SatirlarTespitler: TcxGridDBBandedColumn;
    SatirlarImage: TcxGridDBBandedColumn;
    SatirlarBolumTanimi: TcxGridDBBandedColumn;
    SatirlarFaaliyetTanimi: TcxGridDBBandedColumn;
    SatirlarKokNeden: TcxGridDBBandedColumn;
    SatirlarFaliyetPlan: TcxGridDBBandedColumn;
    SatirlarUygulanacakFaliyetTarihi: TcxGridDBBandedColumn;
    SatirlarBolumYetkilisi: TcxGridDBBandedColumn;
    SatirlarSonucTanimi: TcxGridDBBandedColumn;
    SatirlarYapilanFaliyet: TcxGridDBBandedColumn;
    B1: TMenuItem;
    SatirlarKapamaTarihi: TcxGridDBBandedColumn;
    SatirlarTakipSuresi: TcxGridDBBandedColumn;
    SatirlarKapamaOnayi: TcxGridDBBandedColumn;
    i1: TMenuItem;
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
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    D1: TMenuItem;
    D2: TMenuItem;
    DofListesiColumn1: TcxGridDBBandedColumn;
    DofListesiColumn2: TcxGridDBBandedColumn;
    DofListesiColumn3: TcxGridDBBandedColumn;
    DofListesiColumn4: TcxGridDBBandedColumn;
    F1: TMenuItem;
    K1: TMenuItem;
    K2: TMenuItem;
    K3: TMenuItem;
    D3: TMenuItem;
    N1: TMenuItem;
    SatirlarColumn1: TcxGridDBBandedColumn;
    SatirlarColumn2: TcxGridDBBandedColumn;
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
    procedure BeforePost(DataSet: TDataSet);
    procedure BeforeEdit(DataSet: TDataSet);
    procedure BeforeDelete(DataSet: TDataSet);
    procedure ButtonClick(Sender: TObject);
    procedure FaturaSatirTutarCustomDrawFooterCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure RDSSatirlarOlasilikPropertiesEditValueChanged(Sender: TObject);
    procedure PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure AfterScroll(DataSet: TDataSet);
    function CreateRotatedFont: HFONT;
    procedure SatirlarRDSCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure SayfalarChange(Sender: TObject);

    procedure SirketlerPropertiesChange(Sender: TObject);
    procedure SatirSil(rowid : string);
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
//LIB_DLL = 'NoktaDLL.dll';
  LIB_DLL = 'D:\Projeler\VS\c#\EFatura\EFaturaDLL\ClassLibrary1\bin\Debug\EFaturaDLL.dll';
  test = 'https://efatura-test.uyumsoft.com.tr/Services/Integration';
  gercek = 'https://efatura.uyumsoft.com.tr/Services/Integration';
var
  frmSirketSahaGozetim: TfrmSirketSahaGozetim;

implementation

uses data_modul, StrUtils, Jpeg;

{$R *.dfm}

function TfrmSirketSahaGozetim.CreateRotatedFont: HFONT;
  var
    ALogFont: TLogFont;
begin
    FillChar(ALogFont, SizeOf(ALogFont), 0);
   // GetObject(ANFont.Handle, SizeOf(ALogFont), @ALogFont);
    ALogFont.lfEscapement := 900;
    Result := CreateFontIndirect(ALogFont);
end;

procedure TfrmSirketSahaGozetim.SatirSil(rowid : string);
var
  sql : string;
begin
  sql := 'delete from SirketSahaGozetimDetay where id = ' + QuotedStr(rowid);
  datalar.QueryExec(sql);
end;

procedure TfrmSirketSahaGozetim.SayfalarChange(Sender: TObject);
begin
//
    if Sayfalar.ActivePageIndex = 1
    then begin
      cxPanel.Visible := False;
      e3.Visible := False;
      i1.Visible := False;
      B1.Visible := False;
      D2.Visible := False;
      F1.Visible := True;
    end
    else
    begin
      cxPanel.Visible := True;
      e3.Visible := True;
      i1.Visible := True;
      B1.Visible := True;
      D2.Visible := True;
      F1.Visible := False;
    end;
    Menu := PopupMenu1;
    PopupMenuToToolBar(self,ToolBar1,Menu);


end;

procedure TfrmSirketSahaGozetim.SirketlerPropertiesChange(Sender: TObject);
var
  sube : string;
begin
(*
 sube := ' and IGU = ' + QuotedStr(datalar.IGU);


 if Assigned(TcxImageComboKadir(FindComponent('subeKod')))
 Then
  TcxImageComboKadir(FindComponent('subeKod')).Filter := ' sirketKod = ' +
  QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditingValue)) + sube;

 TcxImageComboKadir(FindComponent('hazirlayan')).TableName := SirketIGUToSQLStr(TcxImageComboKadir(FindComponent('sirketKod')).EditingValue);
 TcxImageComboKadir(FindComponent('hazirlayan')).Filter := '';

  *)
end;

procedure TfrmSirketSahaGozetim.FaturaDetay;
var
 sql : string;
begin

    sql :=
    'SELECT sgd.sirketSahaGozetimId, sgd.id, sgd.Tespitler, sgd.TespitTarihi, sgd.Image, sgd.DokumanTip, sgd.Bolum,sgd.Birim,'+
                  ' rb.tanimi AS BolumTanimi,Br.tanimi AS BirimTanimi,sgd.FaliyetKapamaTarihi,sgd.TakipS�resi,sgd.KapamaOnayi ,'+
                  ' sgd.YapilacakFaliyetTuru, sft.tanimi AS FaaliyetTanimi, sgd.KokNeden, sgd.FaliyetPlan,'+
                  ' sgd.UygulanacakFaliyetTarihi, sgd.BolumYetkilisi, sgd.Sonuc, sts.tanimi AS SonucTanimi, sgd.YapilanFaliyet ,' +
                  ' sgd.DogrulamaYapan, sgd.KaliteSorumlusu, sgd.idd '+
    ' FROM dbo.SirketSahaGozetimDetay AS sgd LEFT OUTER JOIN '+
                    'dbo.RDS_RiskBolum AS rb ON rb.kod = sgd.Bolum LEFT OUTER JOIN  '+
                    'dbo.Birimler as Br on Br.Kod = sgd.Birim LEFT OUTER JOIN ' +
                    'dbo.SahaGozetimFaaliyetTuru AS sft ON sft.kod = sgd.YapilacakFaliyetTuru LEFT OUTER JOIN '+
                    'dbo.SahaGozetimTakipTetkikSonuc AS sts ON sts.kod = sgd.Sonuc ' +
         ' where sgd.sirketSahaGozetimId = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text) +

         ' order by TespitTarihi';

         SahaGozetimGrid.Dataset.Active := False;
         SahaGozetimGrid.Dataset.SQL.Text := sql;
         SahaGozetimGrid.Dataset.Active := True;

end;

procedure TfrmSirketSahaGozetim.FaturaSatirTutarCustomDrawFooterCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
//  FaturaToplamlari;
end;

procedure TfrmSirketSahaGozetim.cxKaydetClick(Sender: TObject);
begin
  //SirketKodx.Text := datalar.AktifSirket; giri� formuna eklendi.

  case TControl(sender).Tag  of
    Sil : begin
//            datalar.ADOConnection2.BeginTrans;
            if not datalar.QuerySelect('select * from SirketSahaGozetimDetay where sirketSahaGozetimId = ' + TcxTextEdit(FindComponent('id')).Text).Eof
            then begin
              ShowMessageSkin('D�f Sat�rlar�n� �ptal Etmeden , Silme i�lemi yap�lamaz','','','info');
              exit;
            end;
          end;
  end;


  if varToStr(TcxImageComboBox(FindComponent('sirketKod')).EditValue) = ''
  Then begin
    TcxImageComboBox(FindComponent('sirketKod')).EditValue := datalar.AktifSirket;
  //  TcxImageComboBox(FindComponent('sirketKod')).SetFocus;
 //   exit;
  end;

  inherited;

  case TControl(sender).Tag  of
    0 : begin
         SahaGozetimGrid.Enabled := True;
        end;
    2 : begin
          // TcxImageComboKadir(FindComponent('hazirlayan')).Enabled := True;
           TcxDateEditKadir(FindComponent('date_create')).EditValue := date;
           TcxImageComboBox(FindComponent('sirketKod')).EditValue := datalar.AktifSirket;
           TcxTextEdit(FindComponent('isveren')).Text := datalar.username;
           SahaGozetimGrid.Enabled := False;
           FaturaDetay;
        end;

 sil :  begin
           (*
           try
               datalar.QueryExec('delete from SirketSahaGozetim where sirketSahaGozetimId = ' + TcxTextEdit(FindComponent('id')).Text);
               datalar.ADOConnection2.CommitTrans;
           except on e : exception do
              begin
                datalar.ADOConnection2.RollbackTrans;
                ShowMessageSkin(e.Message,'','','info');
              end;
           end;
             *)
        end;

  end;
end;


procedure TfrmSirketSahaGozetim.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
    if AButtonIndex > -1 then inherited;
    if vartoStr(TcxButtonEditKadir(FindComponent('id')).EditingValue) = ''
    then begin
     SahaGozetimGrid.Dataset.Active := False;
     exit;
    end;

    Enabled;
    FaturaDetay;


    (*
    if (TcxImageComboKadir(FindComponent('hazirlayan')).EditValue <>
       datalar.IGU) and
       TcxImageComboKadir(FindComponent('Onay')).EditValue = 1
    then begin
       Satirlar.OptionsData.Editing := False;
       Satirlar.OptionsData.Inserting := False;
       Satirlar.OptionsData.Deleting := False;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := False;
     //  TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := False;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := False;
       TcxImageComboKadir(FindComponent('isveren')).Enabled := False;
       TcxImageComboKadir(FindComponent('Onay')).Enabled := False;

    end
    else
    begin
       Satirlar.OptionsData.Editing := True;
       Satirlar.OptionsData.Inserting := True;
       Satirlar.OptionsData.Deleting := True;

       TcxImageComboKadir(FindComponent('SirketKod')).Enabled := True;
     //  TcxTextEditKadir(FindComponent('hazirlayan')).Enabled := True;
       TcxImageComboKadir(FindComponent('date_create')).Enabled := True;
       TcxImageComboKadir(FindComponent('isveren')).Enabled := True;
       TcxImageComboKadir(FindComponent('Onay')).Enabled := True;
    end;
      *)

end;

function TfrmSirketSahaGozetim.Init(Sender : TObject) : Boolean;
begin
  Result := True;
    TcxButtonEditKadir(FindComponent('id')).EditValue := DATALAR.QuerySelect('select id from SirketSahaGozetim where RDS_ID = ' + QuotedStr(_kod_)).Fields[0].AsString;
    indexFieldValue := TcxButtonEditKadir(FindComponent('id')).EditingValue;
    indexKaydiBul(_kod_,'RDS_ID');
    cxButtonEditPropertiesButtonClick(TcxButtonEditKadir(FindComponent('id')),-1);
end;


procedure TfrmSirketSahaGozetim.Fatura(islem: Integer);

begin
  //
end;

procedure TfrmSirketSahaGozetim.NewRecord(DataSet: TDataSet);
begin
   SahaGozetimGrid.Dataset.FieldByName('sirketSahaGozetimId').AsInteger := TcxButtonEditKadir(FindComponent('id')).EditingValue;
end;

procedure TfrmSirketSahaGozetim.RDSSatirlarNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);

var
  Book : TBookmark;

procedure datawrite;
begin
   Satirlar.DataController.DataSet.FieldByName('Tespitler').AsString := datalar.Risk.Onlemler;

   if datalar.Risk.SSGBolum <= 0 then
     Satirlar.DataController.DataSet.FieldByName('Bolum').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('Bolum').AsInteger := datalar.Risk.SSGBolum;

   if datalar.Risk.SSGBirim <= 0 then
     Satirlar.DataController.DataSet.FieldByName('Birim').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('Birim').AsInteger := datalar.Risk.SSGBirim;



   if datalar.Risk.SSGYapilacakFaliyetTuru <= 0 then
     Satirlar.DataController.DataSet.FieldByName('YapilacakFaliyetTuru').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('YapilacakFaliyetTuru').AsInteger := datalar.Risk.SSGYapilacakFaliyetTuru;
   Satirlar.DataController.DataSet.FieldByName('KokNeden').AsString := datalar.Risk.SSGKokNeden;
   Satirlar.DataController.DataSet.FieldByName('FaliyetPlan').AsString := datalar.Risk.SSGFaliyetPlan;

   if IsNull (datalar.Risk.SSGUygulanacakFaliyetTarihi) then
     Satirlar.DataController.DataSet.FieldByName('UygulanacakFaliyetTarihi').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('UygulanacakFaliyetTarihi').AsDateTime := StrToDate (datalar.Risk.SSGUygulanacakFaliyetTarihi);

   Satirlar.DataController.DataSet.FieldByName('BolumYetkilisi').AsString := datalar.Risk.SSGBolumYetkilisi;

   if datalar.Risk.SSGSonuc <= 0 then
     Satirlar.DataController.DataSet.FieldByName('Sonuc').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('Sonuc').AsVariant := datalar.Risk.SSGSonuc;

   Satirlar.DataController.DataSet.FieldByName('YapilanFaliyet').AsString := datalar.Risk.SSGYapilanFaliyet;


   if IsNull (datalar.Risk.SSGFaliyetKapamaTarihi) then
     Satirlar.DataController.DataSet.FieldByName('FaliyetKapamaTarihi').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('FaliyetKapamaTarihi').AsDateTime := StrToDate (datalar.Risk.SSGFaliyetKapamaTarihi);


   if IsNull (datalar.Risk.SSGTakipS�resi) then
     Satirlar.DataController.DataSet.FieldByName('TakipS�resi').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('TakipS�resi').AsDateTime := StrToDate (datalar.Risk.SSGTakipS�resi);

   if datalar.Risk.SSGKapamaOnayi <= 0 then
     Satirlar.DataController.DataSet.FieldByName('KapamaOnayi').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('KapamaOnayi').AsVariant := datalar.Risk.SSGKapamaOnayi;

   if IsNull (datalar.Risk.SSGTespitTarihi) then
     Satirlar.DataController.DataSet.FieldByName('TespitTarihi').Clear
    else
     Satirlar.DataController.DataSet.FieldByName('TespitTarihi').AsDateTime := StrToDate (datalar.Risk.SSGTespitTarihi);


   Satirlar.DataController.DataSet.FieldByName('DogrulamaYapan').AsString := datalar.Risk.SSGDogrulamaYapan;
   Satirlar.DataController.DataSet.FieldByName('KaliteSorumlusu').AsString := datalar.Risk.SSGKaliteSorumlusu;


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
   datalar.Risk.Onlemler := Satirlar.DataController.DataSet.FieldByName('Tespitler').AsString;

   if Satirlar.DataController.DataSet.FieldByName('TespitTarihi').IsNull then
     datalar.Risk.SSGTespitTarihi := ''
    else
     datalar.Risk.SSGTespitTarihi := DateToStr (Satirlar.DataController.DataSet.FieldByName('TespitTarihi').AsDateTime);


   datalar.Risk.SSGBolum := Satirlar.DataController.DataSet.FieldByName('Bolum').AsInteger;
   datalar.Risk.SSGBirim := Satirlar.DataController.DataSet.FieldByName('Birim').AsInteger;

   datalar.Risk.SSGYapilacakFaliyetTuru := Satirlar.DataController.DataSet.FieldByName('YapilacakFaliyetTuru').AsInteger;
   datalar.Risk.SSGKokNeden := Satirlar.DataController.DataSet.FieldByName('KokNeden').AsString;
   datalar.Risk.SSGFaliyetPlan := Satirlar.DataController.DataSet.FieldByName('FaliyetPlan').AsString;

   if Satirlar.DataController.DataSet.FieldByName('UygulanacakFaliyetTarihi').IsNull then
     datalar.Risk.SSGUygulanacakFaliyetTarihi := ''
    else
     datalar.Risk.SSGUygulanacakFaliyetTarihi := DateToStr (Satirlar.DataController.DataSet.FieldByName('UygulanacakFaliyetTarihi').AsDateTime);

   datalar.Risk.SSGBolumYetkilisi := Satirlar.DataController.DataSet.FieldByName('BolumYetkilisi').AsString;
   datalar.Risk.SSGSonuc := Satirlar.DataController.DataSet.FieldByName('Sonuc').AsInteger;
   datalar.Risk.SSGYapilanFaliyet := Satirlar.DataController.DataSet.FieldByName('YapilanFaliyet').AsString;

  if Satirlar.DataController.DataSet.FieldByName('FaliyetKapamaTarihi').IsNull then
     datalar.Risk.SSGUygulanacakFaliyetTarihi := ''
    else
     datalar.Risk.SSGUygulanacakFaliyetTarihi := DateToStr (Satirlar.DataController.DataSet.FieldByName('FaliyetKapamaTarihi').AsDateTime);

  if Satirlar.DataController.DataSet.FieldByName('TakipS�resi').IsNull then
     datalar.Risk.SSGUygulanacakFaliyetTarihi := ''
    else
     datalar.Risk.SSGUygulanacakFaliyetTarihi := DateToStr (Satirlar.DataController.DataSet.FieldByName('TakipS�resi').AsDateTime);
  datalar.Risk.SSGKapamaOnayi := Satirlar.DataController.DataSet.FieldByName('KapamaOnayi').AsInteger;

   datalar.Risk.SSGDogrulamaYapan := Satirlar.DataController.DataSet.FieldByName('DogrulamaYapan').AsString;
   datalar.Risk.SSGKaliteSorumlusu := Satirlar.DataController.DataSet.FieldByName('KaliteSorumlusu').AsString;


end;

begin



  case AButtonIndex of
   6 : begin
        datalar.Risk.RiskID := '';
        datalar.Risk.Onlemler := '';
        datalar.Risk.SSGBolum := -1;
        datalar.Risk.SSGBirim := -1;
        datalar.Risk.SSGYapilacakFaliyetTuru := -1;
        datalar.Risk.SSGKokNeden := '';
        datalar.Risk.SSGFaliyetPlan := '';
        datalar.Risk.SSGUygulanacakFaliyetTarihi := '';
        datalar.Risk.SSGBolumYetkilisi := '';
        datalar.Risk.SSGSonuc := -1;
        datalar.Risk.SSGYapilanFaliyet := '';
        datalar.Risk.Image := TcxImage.Create(nil);

        if mrYes = ShowPopupForm('D�f Ekle',yeniGozetim)
        then begin
         try
          Satirlar.DataController.DataSet.Append;
          datawrite;
          Satirlar.DataController.DataSet.post;
          Satirlar.DataController.DataSet.Active := False;
          Satirlar.DataController.DataSet.Active := True;
          datalar.Risk.Image := nil;
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
       //  SatirSil(SahaGozetimGrid.Dataset.FieldByName('id').AsString);
       //  FaturaDetay;
       end;

   9 : begin
        dataRead;
        if mrYes = ShowPopupForm('D�f D�zenle',gozetimDuzenle)
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

procedure TfrmSirketSahaGozetim.RDSSatirlarOlasilikPropertiesEditValueChanged(
  Sender: TObject);
begin
  if TcxImageComboKadir(sender).Name = 'Method'
  then
   FaturaDetay;

//  RDSSatirlar.DataController.post;
end;

procedure TfrmSirketSahaGozetim.SatirlarRDSCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
 (*
  if AViewInfo.Value = 'TOLERANS G�STER�LEMEZ R�SK'
  Then
    ACanvas.Brush.Color := clRed
  else
  if AViewInfo.Value = 'ESASLI R�SK'
  Then ACanvas.Brush.Color := clCream
  else
  if AViewInfo.Value = '�NEML� R�SK'
  Then ACanvas.Brush.Color := clYellow
  else
  if AViewInfo.Value = 'OLASI R�SK'
  then ACanvas.Brush.Color := clActiveCaption
  else
  if AViewInfo.Value = '�NEMS�Z R�SK'
  then ACanvas.Brush.Color := clFuchsia;


(*
  ACanvas.Brush.Style := bsClear; // set the brush style to transparent
  FillChar(lf, SizeOf(lf), Byte(0));
  lf.lfHeight := 20;
  lf.lfEscapement := 10 * 90; // degrees to rotate
  lf.lfOrientation := -10 * 90;
  lf.lfCharSet := DEFAULT_CHARSET;
  lf.lfWidth := 150;

  StrCopy(lf.lfFaceName, 'Tahoma');

  ACanvas.Font.Handle := CreateFontIndirect(lf);
 // ACanvas. TextOut(10, 100, 'Rotated text');
 *)
end;

procedure TfrmSirketSahaGozetim.PropertiesButtonClick(Sender: TObject;
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

procedure TfrmSirketSahaGozetim.AfterScroll(DataSet: TDataSet);
begin
//
end;

procedure TfrmSirketSahaGozetim.AfterPost(DataSet: TDataSet);
begin
     cxPanelButtonEnabled(false,True,false);
   //  Satirlar.DataController.Dataset.Refresh;
   //  FaturaToplamlari;

end;

procedure TfrmSirketSahaGozetim.BeforeEdit(DataSet: TDataSet);
begin
  // Satirlar.DataController.Dataset.DataSource.DataSet.Properties['Unique Table'].Value := 'SirketSahaGozetimDetay';
end;

procedure TfrmSirketSahaGozetim.BeforeDelete(DataSet: TDataSet);
begin
   SahaGozetimGrid.DataSet.Properties['Unique Table'].Value := 'SirketSahaGozetimDetay';
end;

procedure TfrmSirketSahaGozetim.BeforePost(DataSet: TDataSet);
begin

//  RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat :=
 // RDSSatirlar.DataController.DataSet.FieldByName('Olasilik').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Frekans').AsFloat *
 // RDSSatirlar.DataController.DataSet.FieldByName('Siddet').AsFloat;

  //Satirlar.DataController.DataSet.FieldByName('RDS').AsInteger :=
 //   Skor(RDSSatirlar.DataController.DataSet.FieldByName('Risk').AsFloat);
end;

procedure TfrmSirketSahaGozetim.cxButtonCClick(Sender: TObject);
var
  dosya : TOpenDialog;
  TopluDataset : TDataSetKadir;
  FB : TFirmaBilgi;
  sql : string;
begin
  inherited;


  case Tcontrol(sender).Tag of

  1,2,-98,-99,-100
        : begin
           sql := 'exec sp_Dof_Filters ' +
                          ' @sirketKod = ' + QuotedStr(datalar.aktifSirket) +
                          ',@tarih1 = ' + TcxDateEditKadir(FindComponent('Tarih1')).GetSQLValue  +
                          ',@tarih2 = '  + TcxDateEditKadir(FindComponent('Tarih2')).GetSQLValue +
                          ',@tip = ' + intTostr(Tcontrol(sender).Tag);
           datalar.QuerySelect(DofList.Dataset,sql);
          end;






  -20 : begin
          TopluDataset.Dataset2 := datalar.QuerySelect('select * from SirketSahaGozetim_view where id = ' +
                                                        varTostr(TcxButtonEditKadir(FindComponent('id')).EditValue));
          TopluDataset.Dataset1 := SahaGozetimGrid.Dataset;
          TopluDataset.Dataset3 := datalar.ADO_aktifSirketLogo;
          TopluDataset.Dataset4 := datalar.ADO_aktifSirket;

          PrintYap('DOF','Duzeltici �nleyici Faliyet','',TopluDataset);
        end;
  -21 : begin
          TopluDataset.Dataset3 := datalar.ADO_aktifSirketLogo;
           TopluDataset.Dataset1 := datalar.ADO_aktifSirket;
          TopluDataset.Dataset2 := DofList.Dataset;


          PrintYap('DTL','Duzeltici Takip List','',TopluDataset);
        end;
  -30 : begin
          FB := FirmaBilgileri(vartostr(TcxImageComboKadir(FindComponent('sirketKod')).EditValue));
          cxExceleGonder(SahaGozetimGrid,'DOF.xls');
          if (mailGonder(FB.YetkiliMail,'D�F',
                        'D�zenlenen D�F ler , ekteki dosyada bilginize sunulmu�tur',
                        'DOF.xls')
               = '0000')
             Then ShowMessageSkin('Email Bilgilendirmesi Yap�ld�','','','info')
              else ShowMessageSkin('Email Bilgilendirmesi Yap�lamad�','','','info')


        end;
  -24:begin
       dosya := TOpenDialog.Create(nil);
       DurumGoster;
       try
         if not dosya.Execute then Exit;
         DokumanYukle(Satirlar.DataController.Dataset,'Image',dosya.FileName);
       finally
         dosya.free;
         DurumGoster(False);
       end;

      end;
  -25 : begin
          DokumanAc(Satirlar.DataController.Dataset,'Image','DOFBelge_'+Satirlar.DataController.Dataset.FieldByName('id').AsString,True,'');
        end;
  end;
end;

procedure TfrmSirketSahaGozetim.ButtonClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin

    if TcxButtonKadir(sender).tag = -21
    Then begin
      datalar.QuerySelect(DofList.Dataset,
                          'select * from DOF_Takip_Listesi_View  ' +
                          ' where sirketKod = ' + QuotedStr(datalar.aktifSirket) +
                          ' and TespitTarihi between ' + TcxDateEditKadir(FindComponent('Tarih1')).GetSQLValue  +
                          ' and ' + TcxDateEditKadir(FindComponent('Tarih2')).GetSQLValue +
                          ' order by TespitTarihi '
                          );

    end;

 //   F := FormINIT(9010,GirisRecord,ikHayir,'');
  //  if F <> nil then F.ShowModal;


end;



procedure TfrmSirketSahaGozetim.FormCreate(Sender: TObject);
var
  Faturalar : TListeAc;
  sirketlerx,subeler ,Onay,IGU : TcxImageComboKadir;
  FaturaTarihi : TcxDateEditKadir;
  where , sube : string;
begin
  inherited;


  cxPanel.Visible := True;
  Menu := PopupMenu1;
  indexFieldName := 'id';
  TableName := 'SirketSahaGozetim';
 // TopPanel.Visible := true;


(*
  if datalar.UserGroup = '1'
  then
    where := ''
  else
  if datalar.UserGroup = '10'
  then
    where := ' sirketKod = ' + QuotedStr(datalar.sirketKodu)
  else
    where := ' hazirlayan = ' + QuotedStr(datalar.IGU);
  *)


  where := ' sirketKod = ' + QuotedStr(datalar.AktifSirket);

  Faturalar := ListeAcCreate('SirketSahaGozetim_view','id,sirketKod,sirketAdi,date_create,paylasilan,RDS_ID',
                       'ID,�irketKodu,�irketAd�,Tarihi,Tan�m,GozlemID',
                       '40,60,250,80,100,50','ID','Saha G�zetimleri',where,6,True);

  setDataStringB(self,'id','ID',Kolon1,'trh',50,Faturalar,True,nil,'','',True,True,-100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  FaturaTarihi := TcxDateEditKadir.Create(Self);
  FaturaTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,FaturaTarihi,'date_create','Haz�r Tarihi',Kolon1,'trh',80);


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'KullaniciSirketleri_View';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := ' kullanici = ' + QuotedStr(datalar.username);
  setDataStringKontrol(self,sirketlerx,'SirketKod','�irket',Kolon1,'trh',230,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := SirketlerPropertiesChange;

  //sube := ' and IGU = ' + QuotedStr(datalar.IGU);

  (*
  Subeler := TcxImageComboKadir.Create(self);
  Subeler.Conn := Datalar.ADOConnection2;
  Subeler.TableName := 'SIRKET_SUBE_TNM';
  Subeler.ValueField := 'subeKod';
  Subeler.DisplayField := 'subeTanim';
  Subeler.Filter := ' SirketKod = ' + QuotedStr(vartostr(TcxImageComboKadir(FindComponent('SirketKod')).EditValue)) + sube + ' and (Pasif = 0 or Pasif is Null)';
  setDataStringKontrol(self,Subeler,'SubeKod','�ube',Kolon1,'trh',80,0,alNone,'');
    *)

  (*
  IGU := TcxImageComboKadir.Create(self);
  IGU.Conn := Datalar.ADOConnection2;
  IGU.TableName := 'IGU';
  IGU.ValueField := 'kod';
  IGU.DisplayField := 'Tanimi';
  IGU.BosOlamaz := False;
  IGU.Filter := ' durum = ''Aktif''';
  setDataStringKontrol(self,IGU,'hazirlayan','�� G�venlik Uzm',Kolon1,'trh',100,0,alNone,'');
  *)

//  setDataString(self,'hazirlayan','Haz�rlayan',Kolon1,'trh',80,false,'',True);
  setDataString(self,'isveren','Tespit Yapan',Kolon1,'trh',100,false,'',False);

  setDataString(self,'paylasilan','Tan�m',Kolon1,'trh',120,false,'',False);

  Onay := TcxImageComboKadir.Create(self);
  Onay.Conn := nil;
  Onay.ItemList := '1;Evet,0;Hay�r';
  Onay.Filter := '';
  setDataStringKontrol(self,Onay,'Onay','Onay',kolon4,'trh',50);
  OrtakEventAta(Onay);

  setDataStringCurr(self,'RDS_ID','G�zlem ID',Kolon1,'trh',50,'0',0);

(*
  try
     TcxImageComboBoxProperties(RDSSatirlarBolum.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('RiskBolum')).Properties).Items;
     TcxImageComboBoxProperties(RDSSatirlarTehlikeKaynagi.Properties).Items :=
     TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('TehlikeKaynak')).Properties).Items;
     RDSSatirlarTehlike.Properties.OnButtonClick := PropertiesButtonClick;
  finally
  end;
*)



//  setDataStringBLabel(self,'bosSatir',kolon1,'',1000,'Risk Kaynaklar�');
  setDataStringKontrol(self,SahaGozetimGrid,'SahaGozetimGrid','',Kolon1,'',1,1,alClient);


  SahaGozetimGrid.Dataset.Connection := datalar.ADOConnection2;


  SahaGozetimGrid.Dataset.OnNewRecord := NewRecord;
  SahaGozetimGrid.Dataset.AfterPost := AfterPost;
  SahaGozetimGrid.Dataset.BeforePost := BeforePost;
  SahaGozetimGrid.Dataset.AfterScroll := AfterScroll;
  SahaGozetimGrid.Dataset.BeforeEdit := BeforeEdit;
  SahaGozetimGrid.Dataset.BeforeDelete := BeforeDelete;


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




  kolon2.Visible := false;
  kolon3.Visible := false;
  kolon4.Visible := false;


  //GridFaturalar.DataController.DataSource := DataSource;
  SayfaCaption('D�f','D�f Takip Listesi','','','');
  Disabled(self,True);
end;

procedure TfrmSirketSahaGozetim.GozlemYazdir(const GozlemID: integer);
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

procedure TfrmSirketSahaGozetim.gridRaporCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //AViewInfo.Text := AViewInfo.Text + ' - ' + ADOQuery1.FieldByName('GrupBaslik').AsString;
end;

end.

