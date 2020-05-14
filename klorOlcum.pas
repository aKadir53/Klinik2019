unit klorOlcum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel ;



type
  TfrmKlorOlcum = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    olcumler: TListeAc;
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
    // function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'klorOlcum';
      formGenislik = 500;
      formYukseklik = 500;

var
  frmKlorOlcum: TfrmKlorOlcum;

implementation
{$R *.dfm}
procedure TfrmKlorOlcum.cxButtonCClick(Sender: TObject);
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


procedure TfrmKlorOlcum.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
end;

procedure TfrmKlorOlcum.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmKlorOlcum.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmKlorOlcum.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;



procedure TfrmKlorOlcum.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmKlorOlcum.FormCreate(Sender: TObject);
var
  IC : TcxImageComboKadir;
  Tarih,KTarih,TaniTarih : TcxDateEditKadir;

begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'id';
  TableName := _TableName_;
  Menu := PopupMenu1;
                      (*CREATE TABLE [dbo].[klorolcum](
                        [id] [bigint] IDENTITY(1,1) NOT NULL,
                        [Tarih] [datetime] NULL,
                        [SirketKod] [varchar](10) NULL,
                        [Hafta] [int] NULL,
                        [OlcumDegeri] [varchar](20) NULL,
                        [PHDegeri] [varchar](20) NULL,
                        [OlcumuYapanKisi] [varchar](50) NULL
                      ) ON [PRIMARY] GO	*)
  setDataStringB(self,'id','Sýra No',Kolon1,'',70,olcumler,True,nil,'','',False,True,-100);

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
  IC.Filter := ' FirmaTip = 1';
  setDataStringKontrol(self,IC,'SirketKod','Þirket',Kolon1,'',280,0,alNone,'');
  TcxImageComboKadir(FindComponent('SirketKod')).Properties.OnEditValueChanged := PropertiesEditValueChanged;//SirketlerPropertiesChange;

 (*   Haftalar :='';
  for  I := 1 to 52 do
      Begin
       Haftalar := Haftalar + IntToStr(I)+  ';'+  IntToStr(I) ;
      if I <52 then    Haftalar := Haftalar +','
      End;

  Haftalar := '1;1,2;2' ;

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := nil;
  IC.ItemList := Haftalar;
  IC.Filter := '';
  IC.BosOlamaz := True;
  setDataStringKontrol(self,IC,'Hafta','Hafta',Kolon1,'',100);
  OrtakEventAta(IC);
   *)



  setDataString(self,'OlcumDegeri','Ölçüm Deðeri',Kolon1,'',100,True);

  setDataString(self,'PHDegeri','PH Deðeri',Kolon1,'',100,True);

  setDataString(self,'OlcumuYapanKisi','Ölçümü Yapan',Kolon1,'',280,True);



  (*
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
              *)

  Kolon2.Visible := False;
  Kolon3.Visible := False;
  Kolon4.Visible := False;

  SayfaCaption('Klor Deðerleri','','','','');


  Disabled(self,True);

 end;

procedure TfrmKlorOlcum.PropertiesEditValueChanged(Sender: TObject);

begin
  inherited;
///
///
///
end;

procedure TfrmKlorOlcum.Yazdir;
var
  TopluDataset : TDataSetKadir;
  sql : string;
begin
//
           TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;
           TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
           sql := 'select *,DK.tanimi KapsamAdi,DT.tanimi TurAdi from SKS_Dokumanlar D' +
                ' join SKS_DokumanKapsamlari DK on DK.kod = D.Kapsam ' +
                ' join SKS_DokumanTurleri DT on DT.kod = D.tur ' +
                ' left join SKS_DokumanlarRev DR on DR.dokumanid = D.id'+ // and DR.aktif = 1' +
                ' where D.id = 638';
           TopluDataset.Dataset3 := datalar.QuerySelect(sql);

    TopluDataset.Dataset2 :=  datalar.QuerySelect('select * from klorOlcum where Yil = ' + copy(TcxDateEditKadir(FindComponent('Tarih')).GetValue,1,4));

    PrintYap('KOF','Klor Olcum','638',TopluDataset);


end;

procedure TfrmKlorOlcum.cxKaydetClick(Sender: TObject);
begin
  inherited;
  case TcxButton(sender).Tag  of
    Kaydet : begin
          TcxTextEditKadir(FindComponent('ID')).EditValue := InttoSTR(F_IDENTITY);

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
