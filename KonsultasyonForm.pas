unit KonsultasyonForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  cxStyles, cxVGrid, cxDBVGrid, cxInplaceContainer,dxLayoutContainer,cxDropDownEdit,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxImageComboBox, cxCalendar;



type
  TfrmHastaKonsultasyon = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    K1: TMenuItem;
    S1: TMenuItem;
    Y2: TMenuItem;
    KonsList: TcxGridKadir;
    gridKons: TcxGridDBTableView;
    gridKonsTarih: TcxGridDBColumn;
    gridKonsbolum: TcxGridDBColumn;
    gridKonsBulguSonuc: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure Yazdir;
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'KonsultasyonForm';
      formGenislik = 750;
      formYukseklik = 500;

var
  frmHastaKonsultasyon: TfrmHastaKonsultasyon;


implementation


{$R *.dfm}
procedure TfrmHastaKonsultasyon.cxButtonCClick(Sender: TObject);
var
  Ado : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;
    case TMenuItem(sender).Tag  of

      -3 : begin
            if mrYes = ShowMessageSkin('Konsultasyon Ýptal Edilecek , ','','','msg') then
            begin
              datalar.QueryExec('delete from KonsultasyonForm where id = ' + KonsList.Dataset.FieldByName('id').AsString);
              KonsList.Dataset.Requery();
            end;
           end;
      -1 : begin
              TopluDataset.Dataset0 := KonsList.dataset;
              TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
              PrintYap('053','Konsultasyon Form',intToStr(TagfrmHastaKonsultasyon),TopluDataset);
           end;

yeniKonsultasyon
                    : begin

                            if mrYes = ShowPopupForm('Konsultasyon',yeniKonsultasyon)
                             Then Begin
                               KonsList.Dataset.Append;
                               KonsList.Dataset.FieldByName('Tarih').AsString := datalar.Konsultasyon.tarih;
                               KonsList.Dataset.FieldByName('bolum').AsString := datalar.Konsultasyon.bolum;
                               KonsList.Dataset.FieldByName('BulguSonuc').AsString := datalar.Konsultasyon.BulguSonuc;
                               KonsList.Dataset.FieldByName('dosyano').AsString := _dosyaNO_;
                               KonsList.Dataset.FieldByName('gelisNo').AsString := _gelisNO_;
                               KonsList.Dataset.Post;
                             End;


                       end;


konsultasyonDuzenle : begin

                             datalar.Konsultasyon.id := KonsList.Dataset.FieldByName('id').AsString;
                             datalar.Konsultasyon.tarih := KonsList.Dataset.FieldByName('Tarih').AsString;
                             datalar.Konsultasyon.bolum := KonsList.Dataset.FieldByName('bolum').AsString;
                             datalar.Konsultasyon.BulguSonuc := KonsList.Dataset.FieldByName('BulguSonuc').AsString;


                             if mrYes = ShowPopupForm('Konsultasyon',konsultasyonDuzenle)
                             Then Begin
                               KonsList.Dataset.Edit;
                               KonsList.Dataset.FieldByName('Tarih').AsString := datalar.Konsultasyon.tarih;
                               KonsList.Dataset.FieldByName('bolum').AsString := datalar.Konsultasyon.bolum;
                               KonsList.Dataset.FieldByName('BulguSonuc').AsString := datalar.Konsultasyon.BulguSonuc;
                               KonsList.Dataset.Post;
                             End;


                       end;
    end;
end;

procedure TfrmHastaKonsultasyon.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmHastaKonsultasyon.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmHastaKonsultasyon.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmHastaKonsultasyon.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmHastaKonsultasyon.FormCreate(Sender: TObject);

begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;
  Menu := PopupMenu1;

  cxPanel.Visible := false;
  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,False,False,False,False,False,False,False,False,False);

  setDataStringIC(self,'Bolum','Bölüm',Kolon1,'',100,'OSGB_MASTER.dbo.SNKlinikler','kodu','ADI','',1,'');
  TcxImageComboKadir(FindComponent('Bolum')).Visible := False;


  TcxImageComboBoxProperties(gridKonsbolum.Properties).Items :=
   TcxImageComboKadir(FindComponent('Bolum')).Properties .Items;

  Kolon2.Visible := False;
  Kolon3.Visible := False;
  Kolon4.Visible := False;

  SayfaCaption('Konsultasyon Ýþlemleri','','','','');


  //Disabled(self,True);


 end;





function TfrmHastaKonsultasyon.Init(Sender: TObject): Boolean;
var
 sql : string;
begin
   Result := True;
   cxTab.Tabs[0].Caption := _HastaAdSoyad_;
   sql := 'select top 10 * from KonsultasyonForm Kf ' +
          ' join hastakart h on h.dosyaNo = Kf.dosyaNo ' +
          ' join OSGB_MASTER.dbo.SNKlinikler K on K.Kodu = Kf.bolum ' +
          ' where h.dosyano = ' + QuotedStr(_dosyaNo_);

   datalar.QuerySelect(KonsList.Dataset,sql);
end;

procedure TfrmHastaKonsultasyon.TopPanelButonClick(Sender: TObject);
var
 sql : string;
begin
  inherited;
//
   sql := 'select * from KonsultasyonForm Kf ' +
          ' join hastakart h on h.dosyaNo = Kf.dosyaNo ' +
          ' left join OSGB_MASTER.dbo.SNKlinikler K on K.Kodu = Kf.bolum ' +
          ' where h.dosyano = ' + QuotedStr(_dosyaNo_) +
          ' and Tarih between ' + txtTopPanelTarih1.GetSQLValue + ' and ' + txtTopPanelTarih2.GetSQLValue;
   datalar.QuerySelect(KonsList.Dataset,sql);


end;

procedure TfrmHastaKonsultasyon.Yazdir;
var
  Data : TDataSetKadir;
begin
//
  //  Data.Dataset0 := sqlrun;

   // PrintYap('OBF','Olay Bildirim','0',Data);


end;

procedure TfrmHastaKonsultasyon.cxKaydetClick(Sender: TObject);
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
  end;
end;

end.
