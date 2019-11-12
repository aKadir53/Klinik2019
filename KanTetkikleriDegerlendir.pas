unit KanTetkikleriDegerlendir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, cxGraphics, cxControls,kadir,kadirType,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDropDownEdit, cxCalendar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ADODB , cxGridExportLink, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, dxSkinscxPCPainter,cxCheckGroup,
  GirisUnit, cxContainer, cxCheckBox, cxPCdxBarPopupMenu, cxTextEdit, cxPC,
  cxButtons, KadirLabel, Menus, cxMaskEdit, cxCheckListBox, cxGroupBox;

type
  TfrmKanTetkikTakipDegerlendir = class(TGirisForm)
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    SaveDialog1: TSaveDialog;
    cxStyle6: TcxStyle;
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    K1: TMenuItem;
    ado_tetkikDegerlendir: TADOQuery;
    DataSource3: TDataSource;
    DataSource17: TDataSource;
    ADO_Uyar: TADOTable;
    cxPageControlDegerlendir: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Panel5: TPanel;
    cxGrid1: TcxGridKadir;
    gridTetkikDegerlendir: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    gridTetkikDegerlendirColumn1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    cxGrid13: TcxGrid;
    gridUyar: TcxGridDBTableView;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    gridUyarColumn1: TcxGridDBColumn;
    cxGridLevel13: TcxGridLevel;
    cxBtnDegerlendir: TcxButtonKadir;
    TedaviKolon: TcxGridDBColumn;
    gridTetkikDegerlendirColumn2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure Getir;
    procedure cxBtnDegerlendirClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure ado_tetkikDegerlendirAfterScroll(DataSet: TDataSet);
    procedure gridTetkikDegerlendirDblClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

Const
  formGenislik = 630;
  formYukseklik = 550;

var
  frmKanTetkikTakipDegerlendir: TfrmKanTetkikTakipDegerlendir;
  //_dosyaNo_ ,
  _tarih_ , marker : string;

implementation
   uses data_modul;
{$R *.dfm}

function TfrmKanTetkikTakipDegerlendir.Init(Sender: TObject) : Boolean;
begin
  Getir;
  Result := True;
end;

procedure TfrmKanTetkikTakipDegerlendir.ado_tetkikDegerlendirAfterScroll(
  DataSet: TDataSet);
var
  ValuesCombo : TStringList;
begin
 (*
  if DataSet.FieldByName('tip').AsString = '1'
  then begin
      TedaviKolon.PropertiesClassName := 'TcxComboBoxProperties';
      TcxComboBoxProperties(TedaviKolon.Properties).Items.Clear;
      TcxComboBoxProperties(TedaviKolon.Properties).Items := txtDVitaminKul.Properties.Items;
  end
  else
  if DataSet.FieldByName('tip').AsString = '3'
  then begin
        TedaviKolon.PropertiesClassName := 'TcxCheckGroupProperties';
        TcxCheckGroupProperties(TedaviKolon.Properties).EditValueFormat := cvfIndices;
        TcxCheckGroupProperties(TedaviKolon.Properties).Items := txtAnemi.Properties.Items;
  end
  else
  if DataSet.FieldByName('tip').AsString = '15'
  then begin
      TedaviKolon.PropertiesClassName := 'TcxComboBoxProperties';
      TcxComboBoxProperties(TedaviKolon.Properties).Items.Clear;
      TcxComboBoxProperties(TedaviKolon.Properties).Items := txtSinekalset.Properties.Items;
  end

  else
    TedaviKolon.PropertiesClassName := 'TcxTextEditProperties';

  TedaviKolon.Options.Editing := True;
   *)
end;

procedure TfrmKanTetkikTakipDegerlendir.cxBtnDegerlendirClick(Sender: TObject);
var
  sql : string;
begin
    if MrYes = ShowMessageSkin('Deðerlendirme Yapýlacak ,Var Olan Deðerlendirme Ýptal Edilecek','','','msg')
    Then Begin
      sql := 'exec sp_TetkikSonucDegerlandir ' + QuotedStr(_dosyaNo_) + ',' + _gelisNo_;
      datalar.QuerySelect(sql);
      ado_tetkikDegerlendir.Requery();

    End;
end;

procedure TfrmKanTetkikTakipDegerlendir.cxButtonCClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmKanTetkikTakipDegerlendir.cxKaydetClick(Sender: TObject);
begin
 inherited;
//
end;

procedure TfrmKanTetkikTakipDegerlendir.Getir;
var
 sql : string;
begin
    sql := 'select dosyaNo,gelisNo,tipname+Uyarý  as uyari,Onay,U.tip,U.tedavi from HastaTedaviUyari U ' +
           ' JOIN TedaviUyariAyar tua ON u.tip = tua.tip ' +
           ' where dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNo_;
    datalar.QuerySelect(ado_tetkikDegerlendir,sql);

    ADO_Uyar.Active := True;




end;
procedure TfrmKanTetkikTakipDegerlendir.gridTetkikDegerlendirDblClick(
  Sender: TObject);
begin
  inherited;
   _value_ := ado_tetkikDegerlendir.FieldByName('tedavi').AsString;
   ShowPopupForm('Diyaliz Ýzlem',ado_tetkikDegerlendir.FieldByName('tip').AsInteger,Self);
   ado_tetkikDegerlendir.Edit;
   ado_tetkikDegerlendir.FieldByName('tedavi').Value := _value_;
   ado_tetkikDegerlendir.Post;
   ado_tetkikDegerlendir.Requery();

end;

procedure TfrmKanTetkikTakipDegerlendir.FormCreate(Sender: TObject);
begin
  Tag := TagfrmKanTetkikTakipDegerlendir;
 // ClientHeight := formYukseklik;
  //ClientWidth := formGenislik;

  TableName := '';
  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('','','','','');
  Olustur(self,'','Tetkik Deðerlendirme',23);
  Menu := PopupMenu1;
end;

end.
