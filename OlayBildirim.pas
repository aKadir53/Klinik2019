unit OlayBildirim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel;



type
  TfrmOlayBildirim = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    Olaylar: TListeAc;
    g1: TMenuItem;
    procedure FormCreate(Sender: TObject);
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
    procedure Yazdir;
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'OlayBildirim';
      formGenislik = 500;
      formYukseklik = 570;

var
  frmOlayBildirim: TfrmOlayBildirim;


implementation


{$R *.dfm}
procedure TfrmOlayBildirim.cxButtonCClick(Sender: TObject);
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


    end;
end;

procedure TfrmOlayBildirim.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
end;

procedure TfrmOlayBildirim.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmOlayBildirim.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmOlayBildirim.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmOlayBildirim.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmOlayBildirim.FormCreate(Sender: TObject);
var
  IC : TcxImageComboKadir;
  Tarih,KTarih,TaniTarih : TcxDateEditKadir;

begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'id';
  TableName := _TableName_;
  Menu := PopupMenu1;

  setDataStringB(self,'id','Sýra No',Kolon1,'',70,Olaylar,True,nil,'','',False,True,-100);


  Tarih := TcxDateEditKadir.Create(self);
  Tarih.ValueTip := tvDate;
  setDataStringKontrol(self,Tarih,'Tarih','Tarih',kolon1,'',100);
  Tarih.Tag := 1;


  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'SIRKETLER_TNM_view';
  IC.ValueField := 'SirketKod';
  IC.DisplayField := 'Tanimi';
  IC.BosOlamaz := False;
  IC.Filter := '';
  setDataStringKontrol(self,IC,'SirketKod','Þirket',Kolon1,'',370,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := PropertiesEditValueChanged;//SirketlerPropertiesChange;

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'OlayBildirimKonu';
  IC.ValueField := 'kod';
  IC.DisplayField := 'tanimi';
  IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'konu','Bildirim Konusu',kolon1,'',120);
  OrtakEventAta(IC);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'OlayBildirimKonu_Alt_Modul';
  IC.ValueField := 'kod';
  IC.DisplayField := 'tanimi';
 // IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'anaParametre','Ana Parametresi',kolon1,'',200);
  OrtakEventAta(IC);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'OlayBildirimKonu_Alt_Modul_Detay';
  IC.ValueField := 'kod';
  IC.DisplayField := 'tanimi';
 // IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'altParametre','Alt PArametresi',kolon1,'',200);
  OrtakEventAta(IC);


  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'PersonelKartListeView';
  IC.ValueField := 'dosyaNO';
  IC.DisplayField := 'Personel';
  IC.Filter := ' aktif = 1';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'personelDosyaNo','Personel ',kolon1,'',200);
  OrtakEventAta(IC);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'HastaKartView';
  IC.ValueField := 'dosyaNO';
  IC.DisplayField := 'Hasta';
  IC.Filter := ' aktif = 1';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'hastaDosyaNo','Hasta ',kolon1,'',200);
  OrtakEventAta(IC);


  IC := TcxImageComboKadir.Create(self);
  IC.Conn := nil;
  IC.ItemList := '0;Gerçekleþen Olay,1;Ýstenmeyen Olay';
  IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'duzey','Bildirim Düzeyi',Kolon1,'',120);
  OrtakEventAta(IC);

  setDataString(self,'yer','Gerçekleþtiði Yer',Kolon1,'',380,True);

  setDataString(self,'kisi','Yapan',Kolon1,'',380,True);

  Tarih := TcxDateEditKadir.Create(self);
  Tarih.ValueTip := tvDate;
  setDataStringKontrol(self,Tarih,'zaman','Zamaný',kolon1,'',100);
  Tarih.Tag := 1;

  setDataStringMemo(self,'aciklama','Açýklama',Kolon1,'',380,50);
  setDataStringMemo(self,'gorusOneri','Görüþler',Kolon1,'',380,50);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := nil;
  IC.ItemList := '0;Hayýr,1;Evet';
  IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'hukakaYansidi','Hukuka Yansýdý',Kolon1,'',60);
  OrtakEventAta(IC);

  Kolon2.Visible := False;
  Kolon3.Visible := False;
  Kolon4.Visible := False;

  SayfaCaption('Olay','','','','');


  Disabled(self,True);


 end;





function TfrmOlayBildirim.Init(Sender: TObject): Boolean;
begin
 Result := True;
end;

procedure TfrmOlayBildirim.PropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if TcxImageComboKadir(sender).Name = 'konu'
  then
    TcxImageComboKadir(FindComponent('anaParametre')).Filter := ' BildirimKonuKod = ' + varTostr(TcxImageComboKadir(FindComponent('konu')).EditValue);

  if TcxImageComboKadir(sender).Name = 'anaParametre'
  then
    TcxImageComboKadir(FindComponent('altParametre')).Filter := ' AltModulKod = ' + varTostr(TcxImageComboKadir(FindComponent('anaParametre')).EditValue);


end;

procedure TfrmOlayBildirim.Yazdir;
var
  Data : TDataSetKadir;
begin
//
    Data.Dataset0 := sqlrun;

    PrintYap('OBF','Olay Bildirim','0',Data);


end;

procedure TfrmOlayBildirim.cxKaydetClick(Sender: TObject);
begin
  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    Yeni : begin
             TcxImageComboKadir(FindComponent('hastaDosyaNo')).Filter := ' Aktif = 1 ';
             TcxImageComboKadir(FindComponent('personelDosyaNo')).Filter := ' Aktif = 1 ';
           end;
  end;


  inherited;

  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
        end;
  end;
end;

end.
