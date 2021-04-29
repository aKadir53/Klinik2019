unit StokZayi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  xsBuiltIns,
  HastaneSarfBildirimi,MalAlimBildirimi, cxDropDownEdit, cxCalendar,
  cxImageComboBox ;



type
  TfrmStokZayi = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    E1: TMenuItem;
    S1: TMenuItem;
    D1: TMenuItem;
    UrunlerGrid: TcxGridKadir;
    GridIts: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    GridItssirketKod: TcxGridDBColumn;
    GridItssira: TcxGridDBColumn;
    GridItscode: TcxGridDBColumn;
    GridItsTarih: TcxGridDBColumn;
    GridItsadet: TcxGridDBColumn;
    GridItsbirim: TcxGridDBColumn;
    GridItslot: TcxGridDBColumn;
    GridItsLotsira: TcxGridDBColumn;
    GridItstip: TcxGridDBColumn;
    GridItsaciklama: TcxGridDBColumn;
    GridItsislemiYapan: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure QRKodKeyPress(Sender: TObject; var Key: Char);
    procedure Yazdir;
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'itsBildirim';
      formGenislik = 500;
      formYukseklik = 500;
const
  GS = #29;

var
  frmStokZayi: TfrmStokZayi;
  Gsindex : integer = 0;
  _index_ : integer = 0;
  karebarkod : TKareBarkod;

implementation
{$R *.dfm}




procedure TfrmStokZayi.QRKodKeyPress(Sender: TObject; var Key: Char);
  var
  birim  : string;
  kdv : integer;
begin
   if (key = GS)
   Then Begin
         Gsindex := Length(TcxTextEdit(FindComponent('QRKod')).EditingValue)+1;
        // label5.Caption := inttostr(Gsindex);
   End;

  if key = #13
  Then Begin
     karebarkod := kareBarkodOku(TcxTextEdit(FindComponent('QRKod')).EditingValue,Gsindex);

     TcxTextEdit(FindComponent('Barkod')).EditValue := karebarkod.barkodNo;
     TcxTextEdit(FindComponent('PartiNo')).EditValue := karebarkod.partiNo;
     TcxTextEdit(FindComponent('SiraNo')).EditValue := karebarkod.seriNo;
     TcxTextEdit(FindComponent('SonKulTarih')).EditValue :=   FormattedTarihYYMMGG('20'+ karebarkod.SKT,'-');

     if TcxCheckBox(FindComponent('chkEkle')).Checked
     then begin
       TcxButton(FindComponentButtonName('btnUrunEkle',Self)).SetFocus;
     //  TcxButton(FindComponent('btnUrunEkle')).SetFocus;
         TcxButton(FindComponentButtonName('btnUrunEkle',Self)).Click;
      // TcxButton(FindComponent('btnUrunEkle')).Click;

     end
     else
       TcxButton(FindComponentButtonName('btnUrunEkle',Self)).SetFocus;
//       TcxButton(FindComponent('btnUrunEkle')).SetFocus;

     TcxTextEdit(FindComponent('QRKod')).EditValue := #0;
     key := #0;
     Gsindex := 0;
  End;
end;

procedure TfrmStokZayi.TopPanelButonClick(Sender: TObject);
begin
  inherited;
  datalar.QuerySelect(UrunlerGrid.Dataset,
                      'select * from StokZayiFisHareket where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                      ' and convert(varchar,Tarih,112) between ' + txtTopPanelTarih1.GetSQLValue + ' and ' + txtTopPanelTarih2.GetSQLValue);

end;

procedure TfrmStokZayi.cxButtonCClick(Sender: TObject);
var
  Ado : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;
    case TMenuItem(sender).Tag  of
      -1 : begin
             Yazdir;
           end;

      -2 : begin
              datalar.Zayi.sirketKod := datalar.AktifSirket;
              datalar.Zayi.code := '';
              datalar.Zayi.Tarih := FormatDateTime('YYYYMMDD',date);
              datalar.Zayi.adet := '1';
              datalar.Zayi.birim := '';
              datalar.Zayi.lot := '';
              datalar.Zayi.LotSira := '';
              datalar.Zayi.tip := '-1';
              datalar.Zayi.aciklama := '';
              datalar.Zayi.islemiYapan := '';
              if mrYes = ShowPopupForm('Çýkýþ Ekle',ZayiYeni)
              Then Begin
                  UrunlerGrid.Dataset.Append;
                  UrunlerGrid.Dataset.FieldByName('code').AsString := datalar.Zayi.code;
                  UrunlerGrid.Dataset.FieldByName('lot').AsString := datalar.Zayi.lot;
                  UrunlerGrid.Dataset.FieldByName('LotSira').AsString := datalar.Zayi.LotSira;
                  UrunlerGrid.Dataset.FieldByName('Tarih').AsString := datalar.Zayi.Tarih;
                  UrunlerGrid.Dataset.FieldByName('sirketKod').AsString := datalar.AktifSirket;
                  UrunlerGrid.Dataset.FieldByName('tip').AsString := datalar.zayi.tip;
                  UrunlerGrid.Dataset.FieldByName('adet').AsString := datalar.zayi.adet;
                  UrunlerGrid.Dataset.FieldByName('aciklama').AsString := datalar.zayi.aciklama;
                  UrunlerGrid.Dataset.FieldByName('islemiYapan').AsString := datalar.zayi.islemiYapan;
                  UrunlerGrid.Dataset.Post;
              End;
           end;
      -3 : begin
              if mrYes = ShowMessageSkin('Zayi Bilgisi Ýptal Edilecek','','','msg')
              then begin
                UrunlerGrid.Dataset.Delete;
              end;


           end;
      -4 : begin
              datalar.Zayi.sirketKod := datalar.AktifSirket;
              datalar.Zayi.code := UrunlerGrid.Dataset.FieldByName('code').AsString;
              datalar.Zayi.Tarih := UrunlerGrid.Dataset.FieldByName('Tarih').AsString;
              datalar.Zayi.adet := '1';
              datalar.Zayi.birim := '';
              datalar.Zayi.lot := UrunlerGrid.Dataset.FieldByName('lot').AsString;
              datalar.Zayi.LotSira := UrunlerGrid.Dataset.FieldByName('LotSira').AsString;
              datalar.Zayi.tip := UrunlerGrid.Dataset.FieldByName('tip').AsString;
              datalar.Zayi.aciklama := UrunlerGrid.Dataset.FieldByName('aciklama').AsString;
              datalar.Zayi.islemiYapan := UrunlerGrid.Dataset.FieldByName('islemiYapan').AsString;
              if mrYes = ShowPopupForm('Çýkýþ Duzenle',ZayiDuzenle)
              Then Begin
                  UrunlerGrid.Dataset.Edit;
                  UrunlerGrid.Dataset.FieldByName('code').AsString := datalar.Zayi.code;
                  UrunlerGrid.Dataset.FieldByName('lot').AsString := datalar.Zayi.lot;
                  UrunlerGrid.Dataset.FieldByName('LotSira').AsString := datalar.Zayi.LotSira;
                  UrunlerGrid.Dataset.FieldByName('Tarih').AsString := datalar.Zayi.Tarih;
                  UrunlerGrid.Dataset.FieldByName('sirketKod').AsString := datalar.AktifSirket;
                  UrunlerGrid.Dataset.FieldByName('tip').AsString := datalar.zayi.tip;
                  UrunlerGrid.Dataset.FieldByName('adet').AsString := datalar.zayi.adet;
                  UrunlerGrid.Dataset.FieldByName('aciklama').AsString := datalar.zayi.aciklama;
                  UrunlerGrid.Dataset.FieldByName('islemiYapan').AsString := datalar.zayi.islemiYapan;
                  UrunlerGrid.Dataset.Post;
              End;
           end;

    end;
end;


procedure TfrmStokZayi.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
end;

procedure TfrmStokZayi.ButtonClick(Sender: TObject);
var
  h : string;
begin
 try
  if UrunlerGrid.Dataset.Active = False
  then
   TopPanelButonClick(self);

  UrunlerGrid.Dataset.Append;
  UrunlerGrid.Dataset.FieldByName('code').AsString := TcxTextEdit(FindComponent('Barkod')).EditValue;
  UrunlerGrid.Dataset.FieldByName('lot').AsString := TcxTextEdit(FindComponent('PartiNo')).EditValue;
  UrunlerGrid.Dataset.FieldByName('LotSira').AsString := TcxTextEdit(FindComponent('SiraNo')).EditValue;
  UrunlerGrid.Dataset.FieldByName('Tarih').AsString := TcxTextEdit(FindComponent('SonKulTarih')).EditValue;
  UrunlerGrid.Dataset.FieldByName('sirketKod').AsString := datalar.AktifSirket;

  UrunlerGrid.Dataset.Post;
 except on e : Exception do
   begin
      if pos('Cannot insert duplicate key in',e.Message) > 0
      Then h := 'Okuttuðunuz Barkod Daha Önceden Eklenmiþ'
      Else h := '';

      ShowMessageSkin(e.Message,h,'','info');
      UrunlerGrid.Dataset.Cancel;
   end;
 end;
  UrunlerGrid.Dataset.Requery;
  TcxTextEdit(FindComponent('QRKod')).SetFocus;
  TcxTextEdit(FindComponent('Barkod')).EditValue := '';
  TcxTextEdit(FindComponent('PartiNo')).EditValue := '';
  TcxTextEdit(FindComponent('SiraNo')).EditValue := '';
  TcxTextEdit(FindComponent('SonKulTarih')).EditValue := '';

end;

procedure TfrmStokZayi.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmStokZayi.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;



procedure TfrmStokZayi.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmStokZayi.FormCreate(Sender: TObject);
var
  IC : TcxImageComboKadir;
  Tarih,KTarih,TaniTarih : TcxDateEditKadir;

begin
    ClientHeight := 600;
    ClientWidth := 700;
    cxPanel.Visible := False;
    Menu := PopupMenu1;
    TopPanel.Visible := True;

    Kolon2.Visible := False;
    Kolon3.Visible := False;
    Kolon4.Visible := False;


    IC := TcxImageComboKadir.Create(self);
    IC.Visible := False;
    IC.Conn := datalar.ADOConnection2;
    IC.TableName := 'OSGB_MASTER.dbo.StokZayiTipleri';
    IC.ValueField := 'Kod';
    IC.DisplayField := 'tanimi';
    IC.Filter := '';

    TcxImageComboBoxProperties(GridItstip.Properties).Items := IC.Properties.Items;

    IC := TcxImageComboKadir.Create(self);
    IC.Visible := False;
    IC.Conn := datalar.ADOConnection2;
    IC.TableName := 'StokKart_View';
    IC.ValueField := 'code';
    IC.DisplayField := 'name1';
    IC.Filter := '';

    TcxImageComboBoxProperties(GridItscode.Properties).Items := IC.Properties.Items;


    SayfaCaption('Hasta Harici Çýkýþ','','','','');


 end;

function TfrmStokZayi.Init(Sender: TObject): Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;

  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,false,false,false,false,false,False,false,False,false,False,false,false);

  txtTopPanelTarih1.EditValue := date;
  txtTopPanelTarih2.EditValue := date;

  Result := True;

end;

procedure TfrmStokZayi.PropertiesEditValueChanged(Sender: TObject);

begin
  inherited;
///
///
///
end;

procedure TfrmStokZayi.Yazdir;
var
  TopluDataset : TDataSetKadir;
  sql : string;
begin
//
end;

procedure TfrmStokZayi.cxKaydetClick(Sender: TObject);
begin
  inherited;
  case TcxButton(sender).Tag  of
    Kaydet : begin
//

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
          end;
    yeni: begin

      end;
    end;






end;

end.
