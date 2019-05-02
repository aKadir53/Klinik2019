unit yeniDokuman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,GirisUnit,KadirLabel,KadirType,Kadir, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,StrUtils,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,cxCurrencyEdit,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxButtonEdit;

type
  TfrmSKS_YeniDokuman = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    dokumanID: TcxButtonEditKadir;
    procedure FormCreate(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);virtual;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;

  end;


const _TableName_ = 'SKS_Dokumanlar';
      formGenislik = 750;
      formYukseklik = 580;

var
  frmSKS_YeniDokuman: TfrmSKS_YeniDokuman;

implementation

{$R *.dfm}

uses data_modul;

procedure TfrmSKS_YeniDokuman.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;

  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
      FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end;

end;

procedure TfrmSKS_YeniDokuman.FormCreate(Sender: TObject);
var
 _IC_ : TcxImageComboKadir;
   List : TListeAc;
begin
  USER_ID.Tag := 0;
  //sirketKod.Tag := 0;
  PopupMenu1.Images := datalar.imag24png;
  Menu := PopupMenu1;

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  USER_ID.Text := datalar.username;

  indexFieldName := 'id';
  TableName := _TableName_;
  //Olustur(self,_TableName_,'Personel Taným Kartý',22,sqlInsert);


  List := ListeAcCreate('SKS_Dokumanlar','id,dokumanNo,adi',
                       'ID,DökümanNo,DökümanAdý',
                       '50,100,250','ListID','Döküman Listesi',
                       '',
                        5,True,Self);


  //List.Where := ' SirketKod = ' + QuotedStr(datalar.AktifSirket);

  setDataStringB(self,'id','&ID',Kolon1,'',80,List,True,dokumanID,'','',True,True,1);


  _IC_ := TcxImageComboKadir.Create(self);
  _IC_.Conn := Datalar.ADOConnection2;
  _IC_.TableName := 'SKS_DokumanKapsamlari';
  _IC_.ValueField := 'kod';
  _IC_.DisplayField := 'tanimi';
  _IC_.BosOlamaz := True;
  _IC_.Filter := '';
  OrtakEventAta(_IC_);
  setDataStringKontrol(self,_IC_,'kapsam','Kapsam',kolon1,'kk',130);

  _IC_ := TcxImageComboKadir.Create(self);
  _IC_.Conn := Datalar.ADOConnection2;
  _IC_.TableName := 'SKS_DokumanTurleri';
  _IC_.ValueField := 'kod';
  _IC_.DisplayField := 'tanimi';
  _IC_.BosOlamaz := True;
  _IC_.Filter := '';
  OrtakEventAta(_IC_);
  setDataStringKontrol(self,_IC_,'tur','Tür',kolon1,'kk',100);

  setDataStringCurr(self,'sira','Sýra',kolon1,'kk',40,'0,',1);
  setDataString(self,'dokumanNo','Döküman No ',Kolon1,'kk',100);


  cxPanel.Visible := true;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;




end;

function TfrmSKS_YeniDokuman.Init(Sender: TObject): Boolean;
begin
  Result := True;
end;

procedure TfrmSKS_YeniDokuman.PropertiesEditValueChanged(Sender: TObject);
var
  kapsamV,turV,siraV : string;
begin
  if (TcxImageComboKadir(Sender).name = 'kapsam') or
     (TcxImageComboKadir(Sender).name = 'tur') or
     (TcxCurrencyEdit(Sender).name = 'sira')
  then begin
      try
        kapsamV :=  VarToStr(TcxImageComboKadir(FindComponent('kapsam')).EditValue);
        turV := VarToStr(TcxImageComboKadir(FindComponent('tur')).EditValue);
        siraV := TcxCurrencyEdit(FindComponent('sira')).Text;
        siraV := DupeString('0' ,3 - length(siraV)) + siraV;
        TcxTextEdit(FindComponent('DokumanNo')).EditValue := kapsamV+'.'+turV+'.'+siraV;
      except
      end;
  end;


end;

end.
