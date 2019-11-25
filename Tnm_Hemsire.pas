unit Tnm_Hemsire;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, Menus, Vcl.StdCtrls, cxButtons,
  cxImage, cxGroupBox;

type
  TfrmHemsireler = class(TGirisForm)
    cxFotoPanel: TcxGroupBox;
    Foto: TcxImage;
    cxGroupBox1: TcxGroupBox;
    cxFotoEkleButton: TcxButton;
    cxFotoTemizle: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxFotoEkleButtonClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const _TableName_ = 'HemsirelerT';
      formGenislik = 500;
      formYukseklik = 300;
var
  frmHemsireler: TfrmHemsireler;

implementation

{$R *.dfm}

uses data_modul;

procedure TfrmHemsireler.cxFotoEkleButtonClick(Sender: TObject);
var
 Fo : TFileOpenDialog;
 filename,dosyaNo : string;
 //jp : TJPEGImage;
begin
  inherited;
  case TcxButton(Sender).tag of
  -50 : begin
          Fo := TFileOpenDialog.Create(nil);
          try
            if not fo.Execute then Exit;
            filename := fo.FileName;
          finally
            fo.Free;
          end;
          Foto.Picture.LoadFromFile(filename);
        end;
  -51 : begin
          Foto.Clear;
          Foto.EditValue := Null;
        end;

  end;

end;

procedure TfrmHemsireler.cxKaydetClick(Sender: TObject);
begin
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
    2 : begin
          TcxButtonEditKadir(FindComponent('Kod')).EditValue := dosyaNoYeniNumaraAl('HE');
        end;
  end;
end;

procedure TfrmHemsireler.FormCreate(Sender: TObject);
var
  index,i : integer;
  List,List1 : TListeAc;
  bransKodu : TcxImageComboKadir;
  Sirketlerx : TcxImageComboKadir;
begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'kod';
  TableName := _TableName_;

  Olustur(self,_TableName_,'Hemþire Taným',21);

  List := TListeAc.Create(nil);
  List.Table := 'HemsirelerT';
  List.kolonlar.Add('kod');
  List.kolonlar.Add('tanimi');
  List.KolonBasliklari.Add('Hemþire Kodu');
  List.KolonBasliklari.Add('Hemþire Adi');
  List.TColcount := 2;
  List.TColsW := '50,200';
  List.ListeBaslik := 'Hemþireler';
  List.Name := 'kod';
  List.Conn := Datalar.ADOConnection2;;
  List.SkinName := 'coffee';


  setDataStringB(self,'kod','Hemþire Kodu',Kolon1,'',70,List,True,nil,'','',True,True);
  setDataString(self,'tanimi','Adý Soyadý',Kolon1,'',200);
  setDataString(self,'tcKimlikNo','TC Kimlik No',Kolon1,'',120,True);
  setDataString(self,'tescilNo','Tescil No',Kolon1,'',100);

  (*
  bransKodu := TcxImageComboKadir.Create(self);
  bransKodu.Conn := Datalar.ADOConnection2;
  bransKodu.TableName := 'SERVISLER';
  bransKodu.ValueField := 'kodu';
  bransKodu.DisplayField := 'bransAdi';
  bransKodu.BosOlamaz := True;
  bransKodu.Filter := '';
  OrtakEventAta(bransKodu);
  setDataStringKontrol(self,bransKodu,'bransKodu','Branþ Kodu',kolon1,'',120);
    *)
        setDataStringKontrol(self,cxFotoPanel , 'cxFotoPanel','',Kolon2,'',121);
        Foto.Properties.OnEditValueChanged := PropertiesEditValueChanged;

  setDataStringC(self,'durum','Durum',Kolon1,'',80,'Aktif,Pasif');

  Sirketlerx := TcxImageComboKadir.Create(self);
  Sirketlerx.Conn := Datalar.ADOConnection2;
  Sirketlerx.TableName := 'SIRKETLER_TNM';
  Sirketlerx.ValueField := 'SirketKod';
  Sirketlerx.DisplayField := 'Tanimi';
  Sirketlerx.BosOlamaz := False;
  Sirketlerx.Filter := '';
  Sirketlerx.EditValue := datalar.AktifSirket;
  Sirketlerx.ItemIndex := -1;
  setDataStringKontrol(self,Sirketlerx,'SirketKod','Þirket',kolon1,'',120);


  SayfaCaption('Taným Bilgileri','','','','');

end;

end.
