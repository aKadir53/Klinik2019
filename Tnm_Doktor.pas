unit Tnm_Doktor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,strutils,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  cxImage, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, cxCheckGroup, cxDropDownEdit,
  cxImageComboBox,dxLayoutControl,dxLayoutContainer;



type
  TfrmDoktorlar = class(TGirisForm)
    cxFotoPanel: TcxGroupBox;
    Foto: TcxImage;
    cxFotoEkleButton: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxFotoTemizle: TcxButton;
    GridFirmalar: TcxGridKadir;
    DBGrid: TcxGridDBTableView;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    DBGridSirketKod: TcxGridDBColumn;
    DBGridtanimi: TcxGridDBColumn;
    DBGridsubeKod: TcxGridDBColumn;
    DBGridsubeTanim: TcxGridDBColumn;
    DBGridtehlikeSinifi: TcxGridDBColumn;
    DBGridcalisanSayi: TcxGridDBColumn;
    DBGridSEHIR: TcxGridDBColumn;
    DBGridILCE: TcxGridDBColumn;
    DBGridIGU: TcxGridDBColumn;
    DBGridIguAdi: TcxGridDBColumn;
    DBGridsubeDoktor: TcxGridDBColumn;
    DBGriddoktorAdi: TcxGridDBColumn;
    DBGridDoktorCalismaDakika: TcxGridDBColumn;
    DBGridIGUCalismaDakika: TcxGridDBColumn;
    chkSirketler: TcxCheckGroupKadir;
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxFotoEkleButtonClick(Sender: TObject);
    function CalismaBilgileri(kod , tip : string) : TADOQuery;
    function CalismaBilgileriSQL(kod , tip : string ; opr : string = '=') : String;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'DoktorlarT';
      formGenislik = 600;
      formYukseklik = 550;

var
  frmDoktorlar: TfrmDoktorlar;
  PersonelTip : String;

implementation

{$R *.dfm}

function TfrmDoktorlar.Init(Sender: TObject) : Boolean;
 var
  List : TListeAc;
  bransKodu,calismaTipi,cardType,medulaGonderimTipi,Sirketlerx : TcxImageComboKadir;
  chk : TcxCheckGroupItem;
  i : integer;
begin

  Result := False;

  case self.Tag of
    TagfrmDoktorlar : begin
        Tag := TagfrmDoktorlar;
        ClientHeight := formYukseklik;
        ClientWidth := formGenislik;
        PersonelTip := 'D';
        indexFieldName := 'kod';
        TableName := _TableName_;
        Olustur(self,_TableName_,'Doktor Tan�m',22);


        List := TListeAc.Create(nil);
        List.Table := 'DoktorlarT';
        List.kolonlar.Add('kod');// := Ts;
        List.kolonlar.Add('tanimi'); // := Ts;


        List.KolonBasliklari.Add('Doktor Kodu');// := Ts1;
        List.KolonBasliklari.Add('Doktor Adi');// := Ts1;
        List.TColcount := 2;
        List.TColsW := '50,200';
        List.ListeBaslik := 'Doktorlar';
        List.Name := 'kod';
        List.Conn := Datalar.ADOConnection2;
        list.Where := GetUserDoktorFilter;//login olan kullan�c� admin grubunda de�ilse onun doktor kodu;
        List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

        setDataStringB(self,'kod','Doktor Kodu',Kolon1,'',70,List,True,nil,'','',True,True);


        setDataString(self,'tanimi','Ad� Soyad�',Kolon1,'',200,True);
        setDataString(self,'tcKimlikNo','TC Kimlik No',Kolon1,'',100,True);

        _CINSIYET_.Visible := True;
        _CINSIYET_.tag := 0;
        _CINSIYET_.FilterSet := fsCinsiyet;
        OrtakEventAta(_CINSIYET_);
        setDataStringKontrol(self,_CINSIYET_,'cinsiyet','Cinsiyeti',kolon1,'',200);


        bransKodu := TcxImageComboKadir.Create(self);
        bransKodu.Conn := Datalar.ADOConnection2;
        bransKodu.TableName := 'SERVIS_TNM';
        bransKodu.ValueField := 'kod';
        bransKodu.DisplayField := 'tanimi';
        bransKodu.BosOlamaz := True;
        bransKodu.Filter := '';
        OrtakEventAta(bransKodu);
        setDataStringKontrol(self,bransKodu,'bransKodu','Bran� Kodu',kolon1,'',200);



        setDataString(self,'tescilNo','Tescil No',Kolon1,'',80,True);
        setDataString(self,'eReceteKullanici','Re�ete Kullan�c� Ad�',Kolon1,'cc',100,True);
        TcxTextEditKadir (FindComponent ('eReceteKullanici')).Properties.EchoMode := eemPassword;
        TcxTextEditKadir (FindComponent ('eReceteKullanici')).Properties.PasswordChar := '*';
        setDataString(self,'eReceteSifre','Re�ete �ifresi',Kolon1,'',100,True);
        TcxTextEditKadir (FindComponent ('eReceteSifre')).Properties.EchoMode := eemPassword;
        TcxTextEditKadir (FindComponent ('eReceteSifre')).Properties.PasswordChar := '*';

        setDataString(self,'pin','�mza Token Pin',Kolon1,'',50);
        TcxTextEditKadir (FindComponent ('pin')).Properties.EchoMode := eemPassword;
        TcxTextEditKadir (FindComponent ('pin')).Properties.PasswordChar := '*';

        cardType := TcxImageComboKadir.Create(self);
        cardType.Conn := Datalar.ADOConnection2;
        cardType.TableName := 'cardTypes';
        cardType.ValueField := 'cardType';
        cardType.DisplayField := 'tanimi';
        cardType.BosOlamaz := True;
        cardType.Filter := '';
        OrtakEventAta(cardType);
        setDataStringKontrol(self,cardType,'cardType','Card Type',kolon1,'',150);

        medulaGonderimTipi := TcxImageComboKadir.Create(self);
        medulaGonderimTipi.Conn := nil;
        medulaGonderimTipi.BosOlamaz := True;
        medulaGonderimTipi.ItemList := '0;�mzal�,1;�mzas�z';
        medulaGonderimTipi.Filter := '';
        OrtakEventAta(medulaGonderimTipi);
        setDataStringKontrol(self,medulaGonderimTipi,'medulaGonderimTipi','Medula G�nderim',kolon1,'',100);

        setDataString(self,'TesisKodu','��yeri Hek.TesisKodu',Kolon1,'',100);
        setDataString(self,'GSM','GSM',Kolon1,'',100);
        setDataString(self,'EPosta','E-Posta',Kolon1,'',200);
       // setDataString(self,'TDisID','TDis ID',Kolon1,'TDIS',80);
       // addButton(self,nil,'btnTDis','','TDIS ID Getir',Kolon1,'TDIS',120,ButtonClick);
        setDataString(self,'sertifika','Sertifika',Kolon1,'',80);


        calismaTipi := TcxImageComboKadir.Create(self);
        calismaTipi.Conn := nil;
        calismaTipi.BosOlamaz := True;
        calismaTipi.ItemList := '0;Tam Zamanl�,1;Yar� Zamanl�';
        calismaTipi.Filter := '';
        OrtakEventAta(calismaTipi);
        setDataStringKontrol(self,calismaTipi,'calismaTipi','�al��ma Tipi',kolon1,'',120);

        setDataStringC(self,'uzman','Uzman m�?',Kolon1,'',80,'Evet,Hay�r');
        setDataStringC(self,'durum','Durum',Kolon1,'',80,'Aktif,Pasif');

        medulaGonderimTipi := TcxImageComboKadir.Create(self);
        medulaGonderimTipi.Conn := nil;
        medulaGonderimTipi.BosOlamaz := True;
        medulaGonderimTipi.ItemList := '0;Hay�r,1;Evet';
        medulaGonderimTipi.Filter := '';
        OrtakEventAta(medulaGonderimTipi);
        setDataStringKontrol(self,medulaGonderimTipi,'MesulMudur','Ba�Hekim mi?',kolon1,'',100);


        Sirketlerx := TcxImageComboKadir.Create(self);
        Sirketlerx.Conn := Datalar.ADOConnection2;
        Sirketlerx.TableName := 'SIRKETLER_TNM';
        Sirketlerx.ValueField := 'SirketKod';
        Sirketlerx.DisplayField := 'Tanimi';
        Sirketlerx.BosOlamaz := False;
        Sirketlerx.Filter := ' FirmaTip = 1';
        Sirketlerx.EditValue := datalar.AktifSirket;
        Sirketlerx.ItemIndex := -1;
        setDataStringKontrol(self,Sirketlerx,'SirketKod','Default Merkez',kolon1,'',120);


        setDataString(self,'TDisID','TDisID',Kolon1,'TDis',80);
        addButton(self,nil,'btnTDisID','','TDisID Getir',Kolon1,'TDis',120,ButtonClick,10);


        chkSirketler.Conn := datalar.ADOConnection2;
        chkSirketler.TableName := 'SIRKETLER_TNM';
        chkSirketler.ValueField := 'SirketKod';
        chkSirketler.DisplayField := 'Tanimi';
        chkSirketler.Filter := ' FirmaTip = 1';
        chkSirketler.Caption := '�al��t��� Merkezler';


        setDataStringKontrol(self,chkSirketler,'SirketKods','Merkezler',kolon1,'',250);




(*
        setDataStringBLabel(self,'CalismaBilgisi',sayfa2_Kolon1,'',290,'Seans �al��ma Bilgisi', '', '', True, clRed, taCenter);
        setDataStringC(self,'pazartesi','Pazatesi',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
        setDataStringC(self,'sali','Sal�',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
        setDataStringC(self,'carsamba','�ar�amba',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
        setDataStringC(self,'persembe','Per�embe',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
        setDataStringC(self,'cuma','Cuma',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
        setDataStringC(self,'cumartesi','Cumartesi',sayfa2_Kolon1,'',80,'0,1,1-2,1-3,2,2-3,3');
  *)
       // setDataImage(self,'foto','Foto',Kolon2,'',120,100);
       (*
        if Datalar.UserGroup = '1'
        then begin
          addButton(self,nil,'btnFirmalar','','Doktora Firma Ata',sayfa2_Kolon1,'btn',120,ButtonClick,0);
          addButton(self,nil,'btnFirmaIptal','','Firmay� Serbest B�rak',sayfa2_Kolon1,'btn',120,ButtonClick,1);
        end;
        setDataStringKontrol(self,GridFirmalar,'GridFirmalar','',sayfa2_Kolon1,'',1,1,alClient);
         *)

        setDataStringKontrol(self,cxFotoPanel , 'cxFotoPanel','',Kolon2,'',121);
        Foto.Properties.OnEditValueChanged := PropertiesEditValueChanged;

        SayfaCaption('Tan�m Bilgileri','','','','');
        sayfa2_Kolon2.Width := 0;
        sayfa2_Kolon3.Width := 0;
        sayfa2_kolon2.Visible := false;
        sayfa2_kolon3.Visible := false;

        Result := True;
        Disabled(self,True);
        if not IsNull (datalar.doktorkodu) then
        begin
          indexKaydiBul(datalar.DoktorKodu);
          Enabled;
          GridFirmalar.Dataset.Connection := Datalar.ADOConnection2;
          GridFirmalar.Dataset.SQL.Text := CalismaBilgileriSQL(TcxButtonEditKadir(FindComponent('kod')).EditValue,PersonelTip);
          GridFirmalar.Dataset.Active := True;
         // DBGrid.DataController.CreateAllItems(True);

        end;
        inherited;
    end;

  TagfrmIGU : begin
        Tag := TagfrmIGU;
        ClientHeight := formYukseklik;
        ClientWidth := formGenislik;
        PersonelTip := 'I';
        indexFieldName := 'kod';
        TableName := 'IGU';
     //   Olustur(self,_TableName_,'Doktor Tan�m',22);


        List := TListeAc.Create(nil);
        List.Table := 'IGU';
        List.kolonlar.Add('kod');// := Ts;
        List.kolonlar.Add('tanimi'); // := Ts;


        List.KolonBasliklari.Add('Uzman Kodu');// := Ts1;
        List.KolonBasliklari.Add('Uzman Adi');// := Ts1;
        List.TColcount := 2;
        List.TColsW := '50,200';
        List.ListeBaslik := '�� G�venlik Uzmanlar�';
        List.Name := 'kod';
        List.Conn := Datalar.ADOConnection2;
        list.Where := GetUserIGUFilter;//login olan kullan�c� admin grubunda de�ilse onun doktor kodu;
        List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

        setDataStringB(self,'kod','Uzman Kodu',Kolon1,'',70,List,True,nil,'','',True,True);

        setDataString(self,'tanimi','Ad� Soyad�',Kolon1,'',200,True);
        setDataString(self,'tcKimlikNo','TC Kimlik No',Kolon1,'',150,True);

        _CINSIYET_.Visible := True;
        _CINSIYET_.tag := 0;
        OrtakEventAta(_CINSIYET_);
        setDataStringKontrol(self,_CINSIYET_,'cinsiyet','Cinsiyeti',kolon1,'',200);

        setDataString(self,'Sinifi','S�n�f�',Kolon1,'', 20, True);

        setDataString(self,'pin','�mza Token Pin',Kolon1,'',50);

        cardType := TcxImageComboKadir.Create(self);
        cardType.Conn := Datalar.ADOConnection2;
        cardType.TableName := 'cardTypes';
        cardType.ValueField := 'cardType';
        cardType.DisplayField := 'tanimi';
        cardType.BosOlamaz := True;
        cardType.Filter := '';
        OrtakEventAta(cardType);
        setDataStringKontrol(self,cardType,'cardType','Card Type',kolon1,'',150);

      //  setDataString(self,'TesisKodu','Tesis Kodu',Kolon1,'',100);
        setDataString(self,'GSM','GSM',Kolon1,'',100);
        setDataString(self,'EPosta','E-Posta',Kolon1,'',200);
        setDataString(self,'sertifika','Sertifika',Kolon1,'',80);

     //   setDataStringC(self,'uzman','Uzman m�?',Kolon1,'',80,'Evet,Hay�r');
        setDataStringC(self,'durum','Durum',Kolon1,'',80,'Aktif,Pasif');

        setDataStringKontrol(self,cxFotoPanel , 'cxFotoPanel','',Kolon2,'',121);
        Foto.Properties.OnEditValueChanged := PropertiesEditValueChanged;

        if Datalar.UserGroup = '1'
        then begin
         addButton(self,nil,'btnFirmalar','','�gu Firma Ata',sayfa2_Kolon1,'btn',120,ButtonClick,0);
         addButton(self,nil,'btnFirmaIptal','','Firmay� Serbest B�rak',sayfa2_Kolon1,'btn',120,ButtonClick,1);
        end;
        setDataStringKontrol(self,GridFirmalar,'GridFirmalar','',sayfa2_Kolon1,'',1,1,alClient);

        SayfaCaption('Tan�m Bilgileri','�al��ma Bilgileri','','','');
        sayfa2_Kolon2.Width := 0;
        sayfa2_Kolon3.Width := 0;
        sayfa2_kolon2.Visible := false;
        sayfa2_kolon3.Visible := false;

        Result := True;
        Disabled(self,True);
        if not IsNull (datalar.IGU) then
        begin
          indexKaydiBul(datalar.IGU);
          Enabled;
          GridFirmalar.Dataset.Connection := Datalar.ADOConnection2;
          GridFirmalar.Dataset.SQL.Text := CalismaBilgileriSQL(TcxButtonEditKadir(FindComponent('kod')).EditValue,PersonelTip);
          GridFirmalar.Dataset.Active := True;
        end;
    end;
  TagfrmDigerSaglikPers : begin
        Tag := TagfrmDigerSaglikPers;
        ClientHeight := formYukseklik;
        ClientWidth := formGenislik;

        indexFieldName := 'kod';
        TableName := 'DigerSaglikPersonel';
     //   Olustur(self,_TableName_,'Doktor Tan�m',22);


        List := TListeAc.Create(nil);
        List.Table := 'DigerSaglikPersonel';
        List.kolonlar.Add('kod');// := Ts;
        List.kolonlar.Add('tanimi'); // := Ts;


        List.KolonBasliklari.Add('Uzman Kodu');// := Ts1;
        List.KolonBasliklari.Add('Uzman Adi');// := Ts1;
        List.TColcount := 2;
        List.TColsW := '50,200';
        List.ListeBaslik := '�� G�venlik Uzmanlar�';
        List.Name := 'kod';
        List.Conn := Datalar.ADOConnection2;
        list.Where := GetUserDSPFilter;//login olan kullan�c� admin grubunda de�ilse onun doktor kodu;
        List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

        setDataStringB(self,'kod','Uzman Kodu',Kolon1,'',70,List,True,nil,'','',True,True);

        setDataString(self,'tanimi','Ad� Soyad�',Kolon1,'',200,True);
        setDataString(self,'tcKimlikNo','TC Kimlik No',Kolon1,'',150,True);

        setDataString(self,'Sinifi','S�n�f�',Kolon1,'', 20, True);

        setDataString(self,'pin','�mza Token Pin',Kolon1,'',50);

        cardType := TcxImageComboKadir.Create(self);
        cardType.Conn := Datalar.ADOConnection2;
        cardType.TableName := 'cardTypes';
        cardType.ValueField := 'cardType';
        cardType.DisplayField := 'tanimi';
        cardType.BosOlamaz := True;
        cardType.Filter := '';
        OrtakEventAta(cardType);
        setDataStringKontrol(self,cardType,'cardType','Card Type',kolon1,'',150);

      //  setDataString(self,'TesisKodu','Tesis Kodu',Kolon1,'',100);
        setDataString(self,'GSM','GSM',Kolon1,'',100);
        setDataString(self,'EPosta','E-Posta',Kolon1,'',200);
        setDataString(self,'sertifika','Sertifika',Kolon1,'',80);

     //   setDataStringC(self,'uzman','Uzman m�?',Kolon1,'',80,'Evet,Hay�r');
        setDataStringC(self,'durum','Durum',Kolon1,'',80,'Aktif,Pasif');

        setDataStringKontrol(self,cxFotoPanel , 'cxFotoPanel','',Kolon2,'',121);
        Foto.Properties.OnEditValueChanged := PropertiesEditValueChanged;

        SayfaCaption('Tan�m Bilgileri','','','','');
        Result := True;
        Disabled(self,True);
        if not IsNull (datalar.DSPers) then
        begin
          indexKaydiBul(datalar.DSPers);
          Enabled;
        end;
    end;
  end;

end;



function TfrmDoktorlar.CalismaBilgileri(kod , tip : string) : TADOQuery;
 var
  sql : string;
begin
  Result := nil;
  sql := 'select SirketKod,S.tanimi,subeKod,subeTanim,tehlikeSinifi,calisanSayi,SEHIR,ILCE,'+
         'IGU,I.tanimi IguAdi, subeDoktor,d.tanimi doktorAdi,DoktorCalismaDakika,IGUCalismaDakika ' +
         ' from SIRKETLER_TNM_view S ' +
         'left join DoktorlarT D on D.kod = S.subeDoktor  ' +
         'left join IGU I on I.kod = S.IGU ' +
         ' where ' + ifThen(tip = 'D', ' subedoktor = ',' IGU = ') + QuotedStr(kod);

  CalismaBilgileri := datalar.QuerySelect(sql);

end;

function TfrmDoktorlar.CalismaBilgileriSQL(kod, tip: string ; opr : string = '='): String;
 var
  sql : string;
begin
  Result := '';
  CalismaBilgileriSQL :=
         'select S.SirketKod,Srkt.tanimi,subeKod,subeTanim,S.tehlikeSinifi,S.calisanSayi,Il.ADI SEHIR,ilce.ADI ILCE,'+
         'IGU,I.tanimi IguAdi, subeDoktor,d.tanimi doktorAdi,DoktorCalismaDakika,IGUCalismaDakika ' +
         ' from SIRKET_SUBE_TNM S ' +
         ' join SIRKETLER_TNM Srkt on Srkt.SirketKod = S.SirketKod ' +
         'left join DoktorlarT D on D.kod = S.subeDoktor  ' +
         'left join IGU I on I.kod = S.IGU ' +
         'left join SKRS_IL_KODLARI Il on Il.kodu = Srkt.SEHIR ' +
         'left join SKRS_ILCE_KODLARI ilce on ilce.KODU = Srkt.ILCE ' +
         ' where ' + ifThen(tip = 'D', ' isnull(subedoktor,'''') ' + opr,' isnull(IGU,'''') ' + opr ) + QuotedStr(kod);
end;

procedure TfrmDoktorlar.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
var
  sirketKods , kod : string;
  Dataset : TDataset;
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
      FormInputZorunluKontrolPaint(self,$00FCDDD1);
          GridFirmalar.Dataset.Connection := Datalar.ADOConnection2;
          GridFirmalar.Dataset.SQL.Text := CalismaBilgileriSQL(TcxButtonEditKadir(FindComponent('kod')).EditValue,PersonelTip);
          GridFirmalar.Dataset.Active := True;
        //  DBGrid.DataController.CreateAllItems(True);

        sirketKods := '';
        kod := '';
        Dataset:= datalar.QuerySelect('select kod,sirketKods from DoktorlarT where tcKimlikNo = ' + QuotedStr(TcxTextEdit(FindComponent('tcKimlikNo')).Text) + ' and sirketKods <> ''''');
        if not Dataset.Eof
        then begin
          sirketKods := Dataset.FieldByName('sirketKods').AsString;
          kod := Dataset.FieldByName('kod').AsString;
        end
        else
        begin
          Dataset := datalar.QuerySelect('select kod,sirketKods from DoktorlarT where tescilNo = ' + QuotedStr(TcxTextEdit(FindComponent('tescilNo')).Text) + ' and sirketKods <> ''''');
          if not Dataset.Eof
          then begin
            sirketKods := Dataset.FieldByName('sirketKods').AsString;
            kod := Dataset.FieldByName('kod').AsString;
          end;

        end;

        if (sirketKods <> '') and (kod <> TcxButtonEditKadir(FindComponent('kod')).EditValue)
        then
          TdxLayoutGroup(FindComponent('dxLasirketKods')).Visible := False
        else
          TdxLayoutGroup(FindComponent('dxLasirketKods')).Visible := True;

  end;
end;

procedure TfrmDoktorlar.ButtonClick(Sender: TObject);
var
  ID : integer;
  List : TListeAc;
  L : ArrayListeSecimler;
  Lst : ListeSecimler;
  doktorTc : string;
begin
  //TcxTextEditKadir(FindComponent('TDisID')).EditValue := ID;

     case TcxButton(sender).Tag of
     0 :
     begin
         List := TListeAc.Create(nil);
        List.Table := '(' + CalismaBilgileriSQL(TcxButtonEditKadir(FindComponent('kod')).EditValue,PersonelTip,'<>') + ') Tmp' ;
        List.kolonlar.Add('SirketKod');// := Ts;
        List.kolonlar.Add('tanimi'); // := Ts;
        List.kolonlar.Add('SubeKod');// := Ts;
        List.kolonlar.Add('subeTanim');// := Ts;
        List.kolonlar.Add('calisanSayi');// := Ts;
        List.kolonlar.Add('ILCE');// := Ts;
        List.kolonlar.Add('DoktorCalismaDakika');// := Ts;
        List.kolonlar.Add('IGUCalismaDakika');// := Ts;

        List.KolonBasliklari.Add('�irket Kodu');// := Ts1;
        List.KolonBasliklari.Add('�irket Adi');// := Ts1;
        List.KolonBasliklari.Add('�ube Kodu');// := Ts1;
        List.KolonBasliklari.Add('�ube Adi');// := Ts1;
        List.KolonBasliklari.Add('�al.Say�');// := Ts1;
        List.KolonBasliklari.Add('�l�e');// := Ts1;
        List.KolonBasliklari.Add('Dr.�al.Saat');// := Ts1;
        List.KolonBasliklari.Add('�gu.�al.Saat');// := Ts1;

        List.TColcount := 8;
        List.TColsW := '50,150,50,80,50,80,50,50';
        case Self.tag  of
         TagfrmDoktorlar : List.ListeBaslik := 'Doktorlara Atanabilecek Firmalar';
         TagfrmIGU : List.ListeBaslik := 'Uzmana Atanabilecek Firmalar';
        end;
 //       List.Name := 'kod';
        List.Conn := Datalar.ADOConnection2;
   //     list.Where := GetUserDoktorFilter;//login olan kullan�c� admin grubunda de�ilse onun doktor kodu;
        List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;

         L := List.ListeGetir;
         if High (L) >= 0 then
         begin
           for Lst in L do
             begin
               datalar.QueryExec('update SIRKET_SUBE_TNM ' +
                                 ' set ' + ifThen(Self.Tag = TagfrmDoktorlar,'subeDoktor','IGU') + ' = ' + QuotedStr(TcxButtonEditKadir(FindComponent('kod')).EditValue) +
                                 ' where sirketKod = ' + QuotedStr(Lst.kolon1) +
                                 ' and subeKod = ' + QuotedStr(Lst.kolon3)
                                 );
             end;
         end;


     end;

     1 :
     begin
       if MRYes = ShowMessageSkin('Firman�n ' + ifThen(Self.Tag = TagfrmDoktorlar,'Doktor','Uzman') + ' Bilgisi Kald�r�l�yor Emin misiniz?','','','msg')
       then
        datalar.QueryExec('update SIRKET_SUBE_TNM ' +
                   ' set ' + ifThen(Self.Tag = TagfrmDoktorlar,'subeDoktor','IGU') + ' = Null' +
                   ' where sirketKod = ' + QuotedStr(GridFirmalar.Dataset.FieldByName('sirketKod').AsString) +
                   ' and subeKod = ' + QuotedStr(GridFirmalar.Dataset.FieldByName('subeKod').AsString)
                   );
     end;

    10 : begin
            ID := 0;
            doktorTc := TcxTextEdit(FindComponent('tcKimlikNo')).EditValue;
            TDISDoktorIDGetir(doktorTc,ID);
            TcxTextEdit(FindComponent('TDisID')).EditValue := ID;

            datalar.QueryExec('update DoktorlarT set ' +
                              'TDisID = ' + QuotedStr(intTostr(ID)) +
                              ' where tcKimlikNo = ' + QuotedStr(doktorTc));

         end;

     end;

end;

procedure TfrmDoktorlar.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmDoktorlar.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmDoktorlar.cxFotoEkleButtonClick(Sender: TObject);
var
 Fo : TFileOpenDialog;
 filename,dosyaNo ,dosyaTip : string;
 image : TcxImage;
begin
  inherited;
  case TcxButton(Sender).tag of
  -50 : begin
            Fo := TFileOpenDialog.Create(nil);
            try
              if not fo.Execute then Exit;
              filename := fo.FileName;
              dosyaTip := ExtractFileExt(filename);
              dosyaTip := StringReplace(dosyaTip,'.','',[rfReplaceAll]);
            finally
              fo.Free;
            end;

            if (dosyaTip = 'JPG') or
               (dosyaTip = 'jpg') or
               (dosyaTip = 'jpeg') or
               (dosyaTip = 'JPEG')
            then begin
                image := TcxImage.Create(nil);
                try
                  image.Picture.LoadFromFile(filename);
                  StretchImage(image,stHerDurumdaStretch,160,240);
                  Foto.Picture := image.Picture;
                finally
                  image.free;
                end;
            end
            else begin
             ShowMessageSkin('Sadece JPG formatlar� Y�klenebilir','','','info');
            end;
        end;
  -51 : begin
          Foto.Clear;
          Foto.EditValue := Null;
        end;

  end;

end;

procedure TfrmDoktorlar.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmDoktorlar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  sqlRun.Close;
  

end;

procedure TfrmDoktorlar.FormCreate(Sender: TObject);
begin
   _SaveKontrol := True;

//
end;

procedure TfrmDoktorlar.cxKaydetClick(Sender: TObject);
var
  SK : string;
begin

      //         SK := TcxCheckGroupKadir(FindComponent('SirketKod')).getItemCheckString;

  case TcxButton(sender).Tag  of
    sil : begin
          end;
    Kaydet : begin
               if TcxImageComboKadir(FindComponent('MesulMudur')).EditValue = 1
               then begin
                  datalar.QueryExec(' set nocount on ' +
                                    ' update DoktorlarT set MesulMudur = 0 where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                                    ' set nocount off');
               end;
             end;
  end;

  inherited;



  case TcxButton(sender).Tag  of
    sil : begin
          end;
    Kaydet : begin




             end;
    yeni : begin
            case self.Tag of
             TagfrmDoktorlar : TcxButtonEditKadir(FindComponent('Kod')).EditValue := dosyaNoYeniNumaraAl('DR');
             TagfrmIGU : TcxButtonEditKadir(FindComponent('Kod')).EditValue := dosyaNoYeniNumaraAl('IG');
             TagfrmDigerSaglikPers : TcxButtonEditKadir(FindComponent('Kod')).EditValue := dosyaNoYeniNumaraAl('DS');

            end;
           end;
  end;






end;

end.
