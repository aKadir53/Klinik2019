unit CariHareketGiris;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,cxCurrencyEdit,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel, cxcalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxPC,dxLayoutContainer;



type
  TfrmCariHareket = class(TGirisForm)
    PersonelList: TListeAc;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
       var AllowChange: Boolean);
    procedure SayfalarChange(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
  private
    { Private declarations }
  protected
    function GetEgitimPersonelSQL : String;
    procedure ResetDetayDataset;
    procedure EditClear;
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'cariHareketler';
      formGenislik = 600;
      formYukseklik = 600;

var
  frmCariHareket: TfrmCariHareket;


implementation

uses StrUtils;

{$R *.dfm}

procedure TfrmCariHareket.PropertiesEditValueChanged(Sender: TObject);
var
  xDeger : String;
begin
  inherited;
  if TcxImageComboKadir(sender).Name = 'islem'
  Then begin
     if (TcxImageComboKadir(FindComponent('islem')).EditValue = 'T') or
        (TcxImageComboKadir(FindComponent('islem')).EditValue = 'A')
     Then begin
        TdxLayoutGroup(FindComponent('dxLaBorc')).Visible := False;
        TdxLayoutGroup(FindComponent('dxLaAlacak')).Visible := True;
     end
     else
     begin
        TdxLayoutGroup (FindComponent('dxLaBorc')).Visible := True;
        TdxLayoutGroup(FindComponent('dxLaAlacak')).Visible := False;
     end;

     if (TcxImageComboKadir(FindComponent('islem')).EditValue = 'S') or
        (TcxImageComboKadir(FindComponent('islem')).EditValue = 'A')
     Then begin
        TdxLayoutGroup(FindComponent('dxLaKasaBanka')).Visible := False;
     end
     else
     begin
        TdxLayoutGroup (FindComponent('dxLaKasaBanka')).Visible := True;
     end;



  end;



end;

procedure TfrmCariHareket.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmCariHareket.cxButtonCClick(Sender: TObject);
begin
  inherited;
  case TcxButton(Sender).tag of
  -20 : begin
          //
          if MrYes = ShowMessageSkin('Hareket �ptal Edilecek Emin misiniz?','','','msg') then
          begin
            datalar.QueryExec('update cariHareketler set iptal = 1 where id = ' + TcxButtonEditKadir(FindComponent('id')).EditText);
            EditClear;
            Disabled(Self,False);
            cxPanelButtonEnabled(False,False,False);
          end;
        end;
  end;
end;

procedure TfrmCariHareket.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin

  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
     enabled;
     FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end
  else
  begin
   // CustomEditClear;
    Disabled(Self,False);
    cxPanelButtonVisible(False,True,False);
    cxPanelButtonEnabled(False,False,False);
  end;
  //if TcxButtonEditKadir(FindComponent('id')).Text = '' then exit;
 // ResetDetayDataset;
end;

procedure TfrmCariHareket.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmCariHareket.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmCariHareket.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmCariHareket.EditClear;
begin
  TcxButtonEditKadir(FindComponent('id')).Clear;
  TcxDateEditKadir(FindComponent('tarih')).Clear;
  TcxImageComboKadir(FindComponent('cariKod')).Clear;
  TcxTextEdit(FindComponent('evrakNo')).Clear;
  TcxImageComboKadir(FindComponent('evrakTipi')).Clear;
  TcxTextEdit(FindComponent('aciklama')).Clear;
  TcxCurrencyEdit(FindComponent('Borc')).Clear;
  TcxCurrencyEdit(FindComponent('Alacak')).Clear;
end;

procedure TfrmCariHareket.FormCreate(Sender: TObject);
var
  List : TListeAc;
  sirketlerx ,EvrakTip: TcxImageComboKadir;
  dateEdit: TcxDateEditKadir;
begin
  cxPanel.Visible := True;
  cxPanelButtonVisible(False,True,False);
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'id';
  TableName := _TableName_;

  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Personel E�itimleri',22);


  List := TListeAc.Create(nil);
  List.KaynakTableTip := tpSp;
  List.Table := 'select ch.id,ch.cariKod,s.tanimi,ch.tarih,ch.evrakNo,ch.borc,ch.alacak,ch.islem '+
                ' from carihareketler ch ' +
                ' join SIRKETLER_TNM s on s.sirketKod = ch.carikod ' +
                ' where isnull(ch.iptal,0) = 0 ';


  List.kolonlar.Add('id');// := Ts;
  List.kolonlar.Add('cariKod');// := Ts;
  List.kolonlar.Add('Tanimi'); // := Ts;
  List.kolonlar.Add('tarih'); // := Ts;
  List.kolonlar.Add('evrakNo');// := Ts;
  List.kolonlar.Add('borc');// := Ts;
  List.kolonlar.Add('alacak');// := Ts;
  List.kolonlar.Add('islem');// := Ts;

  List.KolonBasliklari.Add('ID');// := Ts1;
  List.KolonBasliklari.Add('Cari Kod');// := Ts1;
  List.KolonBasliklari.Add('Cari Tan�m�');// := Ts1;
  List.KolonBasliklari.Add('Tarih'); // := Ts;
  List.KolonBasliklari.Add('Evrak No');// := Ts1;
  List.KolonBasliklari.Add('Bor�');// := Ts1;
  List.KolonBasliklari.Add('Alacak');// := Ts1;
  List.KolonBasliklari.Add('��lem');// := Ts1;

  List.TColcount := 7;
  List.TColsW := '30,80,150,80,40,70,70,70';
  List.ListeBaslik := 'Cari Hareketler';
  List.Name := 'id';
  List.Conn := Datalar.ADOConnection2;
  List.SkinName := 'coffee';//AnaForm.dxSkinController1.SkinName;
  List.Where := '1=1';//'SirketKod = ' + QuotedStr (DATALAR.AktifSirket);

  setDataStringB(self,'id','Cari ID',Kolon1,'',70,List,True,nil, 'tanimi', '', False, True, -100);
  TcxButtonEditKadir(FindComponent('id')).Identity := True;

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Properties.Kind := ckdatetime;
  setDataStringKontrol(self,dateEdit, 'tarih','��lem Zaman�',Kolon1,'',145);


  EvrakTip := TcxImageComboKadir.Create(self);
  EvrakTip.Conn := nil;
  EvrakTip.ItemList := 'O;�deme,T;Tahsilat,A;Ali� Fatura,S;Sat�� Fatura';
  EvrakTip.Filter := '';
  setDataStringKontrol(self,EvrakTip,'islem','��lem',Kolon1,'',100);
  TcxImageComboKadir(FindComponent('islem')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

  EvrakTip := TcxImageComboKadir.Create(self);
  EvrakTip.Conn := Datalar.ADOConnection2;
  EvrakTip.TableName := 'cari_Hesaplar';
  EvrakTip.ValueField := 'kod';
  EvrakTip.DisplayField := 'tanimi';
  EvrakTip.BosOlamaz := True;
  EvrakTip.Filter := '';
  setDataStringKontrol(self,EvrakTip,'KasaBanka','Hesap',Kolon1,'',150);


 // setDataStringB(self,'SirketKod','�irket Kodu',Kolon1,'',100,nil, True, SirketKod);
 // SirketKod.Properties.ReadOnly := True;

  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := '';
  setDataStringKontrol(self,sirketlerx,'cariKod','Tedarik�i/M��teri',Kolon1,'',250,0,alNone,'');


  sirketlerx := TcxImageComboKadir.Create(self);
  sirketlerx.Conn := Datalar.ADOConnection2;
  sirketlerx.TableName := 'SIRKETLER_TNM_view';
  sirketlerx.ValueField := 'SirketKod';
  sirketlerx.DisplayField := 'Tanimi';
  sirketlerx.BosOlamaz := False;
  sirketlerx.Filter := ' firmaTip = 1';
  setDataStringKontrol(self,sirketlerx,'DiyalizSirketKod','Merkez',Kolon1,'',250,0,alNone,'');
  TcxImageComboKadir(FindComponent('DiyalizSirketKod')).EditValue := datalar.AktifSirket;
  TcxImageComboKadir(FindComponent('dxLaDiyalizSirketKod')).Visible := False;


  setDataString(self,'evrakNo','Evrak No',Kolon1,'',100);

  EvrakTip := TcxImageComboKadir.Create(self);
  EvrakTip.Conn := datalar.ADOConnection2;
  EvrakTip.TableName := 'EvrakTipleri';
  EvrakTip.ValueField := 'Kod';
  EvrakTip.DisplayField := 'tanimi';
  EvrakTip.Filter := '';
  EvrakTip.BosOlamaz := True;
  setDataStringKontrol(self,EvrakTip,'EvrakTipi','Evrak Tipi',Kolon1,'',100);
  OrtakEventAta(EvrakTip);


  setDataStringCurr(self,'Borc','Mebla�',Kolon1,'',100,'',1);
  setDataStringCurr(self,'Alacak','Mebla�',Kolon1,'',100,'',1);

  setDataString(self,'aciklama','A��klama',Kolon1,'',250);

  Disabled(self,True);

    cxYeni.Visible := False;
  SayfaCaption('Cari Hareket', '', '', '', '');
end;

function TfrmCariHareket.GetEgitimPersonelSQL: String;

begin

end;

function TfrmCariHareket.Init(Sender: TObject): Boolean;
begin
  result := inherited Init (Sender);
end;

procedure TfrmCariHareket.ResetDetayDataset;
begin

end;

procedure TfrmCariHareket.SayfalarChange(Sender: TObject);
begin
  //d
end;

procedure TfrmCariHareket.SayfalarPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  cxPanel.Visible := (newPage <> sayfa2);

end;

procedure TfrmCariHareket.cxKaydetClick(Sender: TObject);
var
  xObj : TcxButtonEditKadir;
begin
  //SirketKodx.Text := datalar.AktifSirket; giri� formuna eklendi.
  inherited;
  //post ettikten sonra veritaban�ndan Identity de�eri al�p edit kutusuna yazmas� i�in....
  case TControl(sender).Tag  of
    0 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      if IsNull (xObj.EditingValue) then
      begin
        xObj.Text := IntToStr (F_IDENTITY);

      end;
    end;
    2 : begin
      xObj := TcxButtonEditKadir (FindComponent('id'));
      xObj.Text := '';

    end;
  end;
end;

end.
