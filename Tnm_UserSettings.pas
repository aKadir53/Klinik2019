unit Tnm_UserSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,
  GirisUnit,Data_Modul, cxDropDownEdit, cxImageComboBox, cxStyles,kadir,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,MAth,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  cxPCdxBarPopupMenu, cxRadioGroup, cxPC, cxListBox, Vcl.ExtCtrls, Vcl.Buttons,
  cxLabel, cxCheckBox, cxSplitter,dxLayoutContainer, dxLayoutControl;



type
  TfrmUsers = class(TGirisForm)
    UserSettings: TADOTable;
    UserSettings_DataSource: TDataSource;
    cxKullaniciAdi: TcxButtonEditKadir;
    User_Menu_Settings_DataSource: TDataSource;
    User_Menu_Settings_: TADOTable;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridUserSet: TcxGridDBTableView;
    cxGridUserSetModul: TcxGridDBColumn;
    cxGridUserSetIslem: TcxGridDBColumn;
    cxGridUserSetIzin: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridMenuSet: TcxGridDBTableView;
    cxGridMenuSetCOLUMN1: TcxGridDBColumn;
    cxGridMenuSetMainMenu: TcxGridDBColumn;
    cxGridMenuSetKAYITID: TcxGridDBColumn;
    cxGridMenuSetCOLUMN2: TcxGridDBColumn;
    cxGridMenuSetColumn3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    MenucxYeni: TMenuItem;
    MenucxKaydet: TMenuItem;
    MenucxIptal: TMenuItem;
    N1: TMenuItem;
    Kapat1: TMenuItem;
    txtSifreTekrar: TcxTextEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    SpeedButton1: TSpeedButton;
    userSkin: TcxComboBox;
    UserGroup_Menu_Settings_DataSource: TDataSource;
    UserGroupSettings_DataSource: TDataSource;
    pnlUserGrup: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridUserGrup: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridUserGrupKODU: TcxGridDBColumn;
    cxGridUserGrupADI: TcxGridDBColumn;
    UserGroup: TADOTable;
    UserGroup_DataSource: TDataSource;
    txtYeniGrup: TcxTextEditKadir;
    cxLabel1: TcxLabel;
    btnGrupEkle: TcxButtonKadir;
    UserGroup_Menu_Settings: TADOQuery;
    UserGroupSettings: TADOQuery;
    cxGridUserGrupSifreDegistirmePeryod: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    PopupMenu2: TPopupMenu;
    S1: TMenuItem;
    T1: TMenuItem;
    User_Menu_Settings: TADOQuery;
    cxTabSheet3: TcxTabSheet;
    List: TListeAc;
    cxGroupBox1: TcxGroupBox;
    cxButtonKadirTaniSil: TcxButtonKadir;
    cxButtonKadirTaniEkle: TcxButtonKadir;
    User_Spliter: TcxSplitter;
    procedure FormCreate(Sender: TObject);

    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure UserSettingsBeforePost(DataSet: TDataSet);
    procedure cxTextEditBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxKaydetClick(Sender: TObject);override;
    function IslemveMenuGorunumSetEkle(Tip : userGroup): boolean;
    procedure formlarClick(Sender: TObject);
    procedure userSkinPropertiesChange(Sender: TObject);
    procedure SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure cxGridUserGrupFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure UserGroupAfterPost(DataSet: TDataSet);
    procedure btnGrupEkleClick(Sender: TObject);
    procedure UserGroupBeforeDelete(DataSet: TDataSet);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure UserGroupDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure UserGroupAfterDelete(DataSet: TDataSet);
    procedure sqlRunLoad;override;
    procedure cxGridUserSetDataControllerFilterRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var Accept: Boolean);
    procedure S1Click(Sender: TObject);
    procedure cxGridUserSetIzinPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridMenuSetCOLUMN2PropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonKadirTaniEkleClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SayfalarChange(Sender: TObject);

  private
    { Private declarations }
    FEskiSifre : StrinG;
  protected
    procedure YetkiAyarButtonsClick(Sender: TObject);
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmUsers: TfrmUsers;


implementation
uses  cxCalendar, StrUtils, AnaUnit, TransUtils;
{$R *.dfm}
const _TableName_ = 'Users';
      formGenislik = 900;
      formYukseklik = 550;
      dr = 1;
      ig = 2;
      sirket = 3;
      dsp = 4;
      ug = 5;

procedure TfrmUsers.SayfalarChange(Sender: TObject);
begin
  //
end;



procedure TfrmUsers.PropertiesEditValueChanged(Sender: TObject);
begin

    MenucxYeni.Enabled := False;
    MenucxKaydet.Enabled := True;
    MenucxIptal.Enabled := False;
   // PopupMenuEnabled(Self,PopupMenu1,True);
    PopupMenuToToolBarEnabled(self,ToolBar1,PopupMenu1);

   case TcxImageComboKadir(Sender).tag of
     ug : begin
              TdxLayoutGroup(Self.findcomponent('dxLaB'+'btnYetkileriGruptanAl')).Enabled := False;

          end;
     dr : begin
            if TcxImageComboKadir(FindComponent('doktor')).EditingText <> ''
            Then begin
             TcxImageComboKadir(FindComponent('SirketKodu')).EditValue := null;
             TcxImageComboKadir(FindComponent('IGU')).EditValue := null;
             TcxImageComboKadir(FindComponent('DigerSaglikPers')).EditValue := null;
            end;
          end;
     ig : begin
            if TcxImageComboKadir(FindComponent('IGU')).EditingText <> ''
            Then begin
             TcxImageComboKadir(FindComponent('SirketKodu')).EditValue := null;
             TcxImageComboKadir(FindComponent('doktor')).EditValue := null;
             TcxImageComboKadir(FindComponent('DigerSaglikPers')).EditValue := null;
            end;
          end;
     dsp : begin
            if TcxImageComboKadir(FindComponent('DigerSaglikPers')).EditingText <> ''
            Then begin
             TcxImageComboKadir(FindComponent('SirketKodu')).EditValue := null;
             TcxImageComboKadir(FindComponent('doktor')).EditValue := null;
             TcxImageComboKadir(FindComponent('IGU')).EditValue := null;
            end;
          end;
     sirket : begin
            if TcxImageComboKadir(FindComponent('SirketKodu')).EditingText <> ''
            Then begin
             TcxImageComboKadir(FindComponent('doktor')).EditValue := null;
             TcxImageComboKadir(FindComponent('IGU')).EditValue := null;
             TcxImageComboKadir(FindComponent('DigerSaglikPers')).EditValue := null;
            end;
          end;

   end;


end;

function TfrmUsers.Init(Sender: TObject) : Boolean;
begin
  inherited;
  cxPanel.Visible := false;

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  indexFieldName := 'kullanici';
  TableName := _TableName_;

  cxTab.Tabs[0].ImageIndex := 22;
  cxTab.Tabs[0].Caption := 'Kullan�c� ��lemleri';
//  Menu := PopupMenu1;
  Result := True;
end;


procedure TfrmUsers.S1Click(Sender: TObject);
begin
  inherited;

  if TMenuItem(sender).Tag = 1 then
    cxGridUserSet.DataController.Groups.FullExpand
  else
   cxGridUserSet.DataController.Groups.FullCollapse;



end;

procedure TfrmUsers.SayfalarPageChanging(Sender: TObject; NewPage: TcxTabSheet;
  var AllowChange: Boolean);
begin
  if NewPage.PageIndex = 0
  then begin
      cxGridUserSet.DataController.DataSource := UserSettings_DataSource;
      cxGridMenuSet.DataController.DataSource := User_Menu_Settings_DataSource;
      ToolBar1.Visible := True;
  end
  else
  begin
      cxGridUserSet.DataController.DataSource := UserGroupSettings_DataSource;
      cxGridMenuSet.DataController.DataSource := UserGroup_Menu_Settings_DataSource;

      ToolBar1.Visible := False;


  end;
end;

procedure TfrmUsers.sqlRunLoad;
begin
  inherited;
  FEskiSifre := TcxTextEditKadir (FindComponent ('password')).Text;
end;

procedure TfrmUsers.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
    //�� 20180104 Art�k �ifre g�z�kmedi�i i�in tekrar�n� data y�klenince biz atamayla dolduruyoruz.
    TcxTextEdit (FindComponent ('txtSifreTekrar')).Text := TcxTextEditKadir (FindComponent ('password')).Text;


    IslemveMenuGorunumSetEkle(ugUser);

    UserSettings.Active := true;
    UserSettings.Filter := 'kullanici = ' + QuotedStr(TcxButtonEditKadir(sender).Text);

    User_Menu_Settings.Active := true;
    User_Menu_Settings .Filter := 'kullanici = ' + QuotedStr(TcxButtonEditKadir(sender).Text) +
                                  ' and LisansTip <= ' + datalar.LisansTipDeger;


     datalar.QuerySelect(TcxGridKadir(FindComponent('cxGridUserFirma')).Dataset,
     'select US.Kullanici,US.SirketKod,S.Tanimi,US.id from Users U ' +
     'join UserSirketSettings US on US.kullanici = U.kullanici ' +
     'join SIRKETLER_TNM S on S.sirketKod = US.sirketKod ' +
     ' where U.kullanici = ' + QuotedStr(TcxButtonEditKadir (FindComponent('Kullanici')).Text));


    cxGridUserSet.DataController.Groups.FullExpand;

    TdxLayoutGroup(Self.findcomponent('dxLaB'+'btnYetkileriGruptanAl')).Enabled := False;
    MenucxYeni.Enabled := True;
    MenucxKaydet.Enabled := False;
    MenucxIptal.Enabled := True;
   // PopupMenuEnabled(Self,PopupMenu1,True);
    PopupMenuToToolBarEnabled(self,ToolBar1,PopupMenu1);
  end;
end;

procedure TfrmUsers.cxButtonKadirTaniEkleClick(Sender: TObject);
var
  sql : string;
 _List_ : ArrayListeSecimler;
 _L_ : ListeSecimler;
begin
  inherited;
   case TcxButton(sender).Tag of
     0 : Begin
           datalar.QueryExec('delete from UserSirketSettings where id = ' + TcxGridKadir(FindComponent('cxGridUserFirma')).Dataset.FieldByName('id').AsString);
           TcxGridKadir(FindComponent('cxGridUserFirma')).Dataset.Requery();
           TcxGridKadir(FindComponent('cxGridUserFirma')).Dataset.Cancel;
         End;

     1 : begin
            List.Kolonlar.Clear;
            List.KolonBasliklari.Clear;
            List.Table := 'SIRKETLER_TNM';
            List.Kolonlar.Add('SirketKod');
            List.Kolonlar.Add('tanimi');
            List.KolonBasliklari.Add('�irket Kodu');
            List.KolonBasliklari.Add('�irket Ad�');
            List.TColcount := 2;
            List.TColsW := '60,200';
            List.ListeBaslik := '�irketler';
            List.Where := ' FirmaTip = 1';
            _List_ := List.ListeGetir;
            if length(_List_) > 0
            Then BEgin
               for _L_ in _List_ do
                 begin
                     sql := 'insert into UserSirketSettings(Kullanici,sirketKod) ' +
                                       'values( ' + QuotedStr(TcxButtonEditKadir (FindComponent('Kullanici')).Text) + ',' +
                                                    QuotedStr(_L_.kolon1) + ')';
                     datalar.QueryExec(sql);

                 end;
               TcxGridKadir(FindComponent('cxGridUserFirma')).Dataset.Requery();

            End;
         end;

   end;
end;

procedure TfrmUsers.btnGrupEkleClick(Sender: TObject);
begin
  inherited;
  if txtYeniGrup.Text <> '' then
  begin
     if UserGroup.Locate('ADI',txtYeniGrup.Text,[loCaseInsensitive]) = False
     then begin
       UserGroup.Append;
       UserGroup.FieldByName('ADI').AsString := txtYeniGrup.EditingValue;
       UserGroup.Post;
     end
     else
      ShowMessageSkin('Grup Mevcut','','','info');

  end;
end;

procedure TfrmUsers.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmUsers.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;



procedure TfrmUsers.cxGridMenuSetCOLUMN2PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxGridMenuSet.DataController.Post;
end;

procedure TfrmUsers.cxGridUserGrupFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
 sql : string;
begin
  IslemveMenuGorunumSetEkle(ugGroup);
  sql := 'select * from UserGroupMenuSettings where kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
  datalar.QuerySelect(UserGroup_Menu_Settings,sql);

  sql := 'select * from UserGroupSettings where kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
  datalar.QuerySelect(UserGroupSettings,sql);



 // UserGroup_Menu_Settings.Filter := 'Kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
 // UserGroupSettings.Filter := 'Kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);

end;

procedure TfrmUsers.cxGridUserSetDataControllerFilterRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var Accept: Boolean);
begin
  inherited;
  //  cxGridUserSet.DataController.Groups.FullExpand;
end;

procedure TfrmUsers.cxGridUserSetIzinPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   cxGridUserSet.DataController.Post;
end;

procedure TfrmUsers.cxTextEditBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//
end;

procedure TfrmUsers.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmUsers.FormCreate(Sender: TObject);
var
  List : TListeAc;
  Grup,ustUser,doktor,sirketler,IGU, DSPers : TcxImageComboKadir;
  dateEdit:TcxDateEditKadir;
begin

  Menu := PopupMenu1;



  //Olustur(self,_TableName_,'User ��lemleri',22,'','','','kullanici');

  List := ListeAcCreate('Users','kullanici,ADISOYADI','Kullan�c�,Tan�m�','100,200','kullaniciList',
                        'Kullan�c�lar','',2,false);


  setDataStringB(self,'kullanici','Kullanici Ad�',Kolon1,'',150,List,True,cxKullaniciAdi,'');
  setDataString(self,'ADISOYADI','Kullan�c� Tan�m�',Kolon1,'',250);
  setDataString(self,'donem','Kullan�c� TC',Kolon1,'',150);
  setDataString(self,'password','�ifre',Kolon1,'pass',150);
  TcxTextEditKadir (FindComponent ('password')).Properties.EchoMode := eemPassword;
  TcxTextEditKadir (FindComponent ('password')).Properties.PasswordChar := '*';
  setDataStringKontrol(self,txtSifreTekrar, 'txtSifreTekrar','�ifre Tekrar�',Kolon1,'',150);
  TcxTextEdit (FindComponent ('txtSifreTekrar')).Properties.EchoMode := eemPassword;
  TcxTextEdit (FindComponent ('txtSifreTekrar')).Properties.PasswordChar := '*';

  setDataStringChk(Self, 'Dogrulama', '�ifre Do�ruland�', Kolon1, '', 150);
  TcxCheckBox(FindComponent('Dogrulama')).Properties.Alignment := taRightJustify;
  TcxCheckBox(FindComponent('Dogrulama')).Properties.ReadOnly := True;

  dateEdit := TcxDateEditKadir.Create(self);
  dateEdit.ValueTip := tvDate;
  dateEdit.Properties.Kind := ckdatetime;
  setDataStringKontrol(self,dateEdit, 'SifreDegisiklikTarihi','�ifre De�i�iklik Tarihi',Kolon1,'',145);
  dateEdit.Properties.ReadOnly := True;

  setDataStringBLabel(self,'bosSatir1',kolon1,'',50);

  Grup := TcxImageComboKadir.Create(self);
  Grup.Conn := Datalar.ADOConnection2;
  Grup.Tag := ug;
  Grup.TableName := 'UserGroups';
  Grup.ValueField := 'KODU';
  Grup.DisplayField := 'ADI';
  Grup.BosOlamaz := False;
  Grup.Filter := '';
  setDataStringKontrol(self,Grup,'Grup','Grup',kolon1,'',120);
  OrtakEventAta(Grup);
  Grup.Properties.OnChange := PropertiesEditValueChanged;


  sirketler := TcxImageComboKadir.Create(self);
  sirketler.Conn := Datalar.ADOConnection2;
  sirketler.Tag := sirket;
  sirketler.TableName := 'SIRKETLER_TNM';
  sirketler.ValueField := 'SirketKod';
  sirketler.DisplayField := 'Tanimi';
  sirketler.BosOlamaz := False;
  sirketler.Filter := ' FirmaTip = 1';
  setDataStringKontrol(self,sirketler,'SirketKodu','�irket',kolon1,'',120);
  OrtakEventAta(sirketler);
  sirketler.Properties.OnChange := PropertiesEditValueChanged;

  ustUser := TcxImageComboKadir.Create(self);
  ustUser.Conn := Datalar.ADOConnection2;
  ustUser.TableName := 'Users';
  ustUser.ValueField := 'kullanici';
  ustUser.DisplayField := 'ADISOYADI';
  ustUser.BosOlamaz := False;
  ustUser.Filter := '';
  setDataStringKontrol(self,ustUser,'ustUser','�st Kullan�c�',kolon1,'',120);
  OrtakEventAta(ustUser);

  doktor := TcxImageComboKadir.Create(self);
  doktor.Conn := Datalar.ADOConnection2;
  doktor.tag := dr;
  doktor.TableName := 'DoktorlarT';
  doktor.ValueField := 'KOD';
  doktor.DisplayField := 'Tanimi';
  doktor.BosOlamaz := False;
  doktor.Filter := ' durum = ''Aktif''';
  setDataStringKontrol(self,doktor,'doktor','Doktor',kolon1,'',120);
  OrtakEventAta(doktor);
  doktor.Properties.OnChange := PropertiesEditValueChanged;


  IGU := TcxImageComboKadir.Create(self);
  IGU.Conn := Datalar.ADOConnection2;
  IGU.Tag := ig;
  IGU.TableName := 'IGU';
  IGU.ValueField := 'KOD';
  IGU.DisplayField := 'Tanimi';
  IGU.BosOlamaz := False;
  IGU.Filter := ' durum = ''Aktif''';
  setDataStringKontrol(self,IGU,'IGU','�� G�venlik Uzman',kolon1,'',120);
  OrtakEventAta(IGU);
  IGU.Properties.OnChange := PropertiesEditValueChanged;


  DSPers := TcxImageComboKadir.Create(self);
  DSPers.Conn := Datalar.ADOConnection2;
  DSPers.Tag := dsp;
  DSPers.TableName := 'HemsirelerT';
  DSPers.ValueField := 'KOD';
  DSPers.DisplayField := 'Tanimi';
  DSPers.BosOlamaz := False;
  DSPers.Filter := '';

  setDataStringKontrol(self,DSPers,'DigerSaglikPers','Di�er Sa�l�k Personeli',kolon1,'',120);
  OrtakEventAta(DSPers);
  DSPers.Properties.OnChange := PropertiesEditValueChanged;

  DSPers := TcxImageComboKadir.Create(self);
  DSPers.Conn := Datalar.ADOConnection2;
  DSPers.Tag := dsp;
  DSPers.TableName := 'PersonelKartView';
  DSPers.ValueField := 'DosyaNo';
  DSPers.DisplayField := 'Adi';
  DSPers.BosOlamaz := False;
  DSPers.Filter := '';

  setDataStringKontrol(self,DSPers,'Personel','Personel',kolon1,'',120);
  OrtakEventAta(DSPers);
  DSPers.Properties.OnChange := PropertiesEditValueChanged;


  setDataString(self,'email','e-mail',Kolon1,'',250);



  setDataStringKontrol(self,userSkin, 'userSkin','Kullan�c� Skin',Kolon1,'',150);
  pnlUserGrup.Parent := sayfa2;
  pnlUserGrup.Align := alClient;
//  setDataStringKontrol(self,pnlUserGrup,'pnlUserGrup','',sayfa2_kolon1,'',350,350);



  Grup := TcxImageComboKadir.Create(self);
  Grup.Conn := nil;
  Grup.ItemList := '0;Pasif,1;Aktif';
  Grup.Filter := '';
  setDataStringKontrol(self,Grup,'Aktif','Durum',kolon1,'',70);
  OrtakEventAta(Grup);



  SetGrid(CreateGrid('cxGridUserFirma',self,False),'kullanici,sirketKod,Tanimi',
               'TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties',
               'Kullan�c� Ad�,�irket Kodu,�irket Ad�',
               '80,80,150',
               '0,0,0',
               'True,True,True'
               );

  TcxGridKadir(FindComponent('cxGridUserFirma')).Parent := cxTabSheet3;
  TcxGridKadir(FindComponent('cxGridUserFirma')).Align := alClient;
//  datalar.QuerySelect(TcxGridKadir(FindComponent('cxGridUserFirma')).Dataset,'select * from UserSirketSettings where kullanici = ' + QuotedStr(TcxButtonEditKadir (FindComponent('Kullanici')).Text));
//  TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridUserFirma')).Levels[0].GridView).NavigatorButtons.OnButtonClick := NavigatorButtonsButtonClick;


  addButton(self,nil,'btnYetkileriSil','','Yetkileri Sil',Kolon1,'gr1',120,YetkiAyarButtonsClick);
  addButton(self,nil,'btnYetkileriGruptanAl','','Yetkileri Gruptan Getir',Kolon1,'gr1',120,YetkiAyarButtonsClick);
  addButton(self,nil,'btnSifreOlustur','','�ifreyi S�f�rla ',Kolon1,'pass',120,cxKaydetClick,9);





  UserSettings.Filtered := True;
  User_Menu_Settings.Filtered := True;
  UserGroup.Active := True;


  SayfaCaption('Kullan�c� ��lemleri','Grup ��lemleri','','','');

  Disabled(self,True);


  MenucxYeni.Enabled := True;
  MenucxKaydet.Enabled := False;
  MenucxIptal.Enabled := False;
 // PopupMenuEnabled(Self,PopupMenu1,True);
  PopupMenuToToolBarEnabled(self,ToolBar1,PopupMenu1);


 end;





procedure TfrmUsers.UserGroupAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CommitTrans(DATALAR.ADOConnection2);
end;

procedure TfrmUsers.UserGroupAfterPost(DataSet: TDataSet);
begin
  IslemveMenuGorunumSetEkle(ugGroup);
end;

procedure TfrmUsers.UserGroupBeforeDelete(DataSet: TDataSet);
var
 sql : string;
 ado : TADOQuery;
begin
  inherited;
  BeginTrans(DATALAR.ADOConnection2);
  try
    ado := nil;
    sql := 'delete from UserGroupSettings where kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
    datalar.QueryExec(ado,sql);
    sql := 'delete from UserGroupMenuSettings where kullanici = ' + QuotedStr(UserGroup.FieldByName('KODU').AsString);
    datalar.QueryExec(ado,sql);
  except
    RollBackTrans(DATALAR.ADOConnection2);
    raise;
  end;
end;

procedure TfrmUsers.UserGroupDeleteError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  inherited;
  RollBackTrans(DATALAR.ADOConnection2);
end;

procedure TfrmUsers.UserSettingsBeforePost(DataSet: TDataSet);
begin
  inherited;
 // NormalDeger.FieldByName('testKodu').AsString :=
 // TcxButtonEditKadir(FindComponent('butKodu')).Text;
end;


procedure TfrmUsers.userSkinPropertiesChange(Sender: TObject);
begin
  inherited;
  AnaForm.dxSkinController1.SkinName := userSkin.EditingValue;
end;

procedure TfrmUsers.YetkiAyarButtonsClick(Sender: TObject);
var
  iTip : Integer;
  bBasari : Boolean;
  xQuery : TADOQuery;
  sKullanici : String;
begin
  iTip := -1;
  sKullanici := TcxButtonEditKadir (FindComponent('Kullanici')).Text;
  if IsNull (sKullanici) then
  begin
    ShowMessageSkin('Kullan�c� se�meden bu i�lem kullan�lamaz', '', '', 'info');
    Exit;
  end;
  if TcxButtonKadir(sender).ButtonName = 'btnYetkileriSil' then
  begin
    if ShowMessageSkin (
        'Bu i�lem, Kullan�c� kart�na ba�l� men� ve i�lem yetki tan�mlar�n� silecektir.'#13#10+
        'Kullan�c� yetki tan�mlar� silinen kullan�c�, yetkileri ba�l� oldu�u gruptan al�r'#13#10#13#10 +
        'Devam etmek istiyor musunuz ?',
        '', '', 'conf') <> mrYes then Exit;
    iTip := 1;
  end
  else if TcxButtonKadir(sender).ButtonName = 'btnYetkileriGruptanAl' then
  begin
    if ShowMessageSkin (
        'Bu i�lem, Kullan�c� kart�na ba�l� men� ve i�lem yetki tan�mlar�n� silecek ve grup yetkilerinden yeniden dolduracakt�r.'#13#10+
        'Kullan�c�n�n ba�l� oldu�u grubunu de�i�tirdi�inizde veya gruptan bir yetki kald�rd���n�zda bu i�lemi yapman�z� tavsiye ederiz'#13#10#13#10 +
        'Devam etmek istiyor musunuz ?',
        '', '', 'conf') <> mrYes then Exit;
    iTip := 2;
  end;

  if iTip <= 0 then Exit;
  bBasari := False;
  BeginTrans (DATALAR.ADOConnection2);
  try
    xQuery := TADOQuery.Create (Self);
    try
      xQuery.Connection := DATALAR.ADOConnection2;
      if not DATALAR.QueryExec(xQuery, 'delete from UserMenuSettings where Kullanici = ' + QuotedStr(sKullanici)) then Exit;
      if not DATALAR.QueryExec(xQuery, 'delete from UserSettings where Kullanici = ' + QuotedStr(sKullanici)) then Exit;
      if iTip = 2 then
        if not IslemveMenuGorunumSetEkle (ugUser) then Exit
        else
      else begin
        User_Menu_Settings.Active := false;
        User_Menu_Settings.Active := True;
        UserSettings.Active := false;
        UserSettings.Active := true;
      end;
      bBasari := True;
    finally
      xQuery.Free;
    end;
  finally
    if bBasari then
    begin
      CommitTrans(DATALAR.ADOConnection2);
      ShowMessageSkin('��lem Tamamland�', '', '', 'info');
    end
    else begin
      RollbackTrans(DATALAR.ADOConnection2);
      ShowMessageSkin('Hata Olu�tu', '', '', 'info');
    end;
  end;

end;

function TfrmUsers.IslemveMenuGorunumSetEkle(Tip : userGroup) : Boolean;
var
  ado : TADOQuery;
  sql,kullanici,sqlUserGroup,sqlUserGroupMenu : string;
begin
  Result := False;
  try
    ado := TADOQuery.Create(nil);
    try
      if Tip = ugUser then
      begin
        kullanici := TcxButtonEditKadir(FindComponent('kullanici')).Text;
        sqlUserGroup := 'UserSettings';
        sqlUserGroupMenu := 'UserMenuSettings';
      end
      else
      begin
        kullanici := UserGroup.FieldByName('KODU').AsString;
        sqlUserGroup := 'UserGroupSettings';
        sqlUserGroupMenu := 'UserGroupMenuSettings';
      end;
      //user ise defaultu group'tan insert et
      sql := 'INSERT INTO '+ sqlUserGroupMenu +'(Kullanici,Menu,ID,Izin) ' +
              'select ' + QuotedStr(kullanici) + ',M.MainMenu,M.KAYITID,'+ifthen (Tip <> ugUser, '0', 'case when not ugs.ID is null then ugs.Izin else 0 end')+' '+
              'from  MenuIslem M ' +
              IfThen (Tip = ugUser, 'inner join Users UU on UU.kullanici = ' + QuotedStr(kullanici) + ' '+
                      'left outer join UserGroupMenuSettings ugs on ugs.Kullanici = uu.grup '+
                      'and ugs.ID = M.KAYITID ')+
              '  left join '+sqlUserGroupMenu +' U on U.ID = M.KAYITID AND U.Kullanici = ' + QuotedStr(kullanici) +
              ' WHERE U.ID IS null ';
      datalar.QueryExec(ado,sql);

      sql := 'INSERT INTO '+ sqlUserGroup +'(Kullanici,Modul,Islem,Izin) ' +
              'select ' + QuotedStr(kullanici) + ',M.Modul,M.Islem,'+ifthen (Tip <> ugUser, '0', 'case when not ugs.Modul is null then ugs.Izin else 0 end')+' '+
              'from  ModulIslem M ' +
              IfThen (Tip = ugUser, 'inner join Users UU on UU.kullanici = ' + QuotedStr(kullanici) + ' '+
                      'left outer join UserGroupSettings ugs on ugs.Kullanici = uu.grup'+
                      '  and ugs.Modul = M.Modul'+
                      '  and ugs.Islem = M.Islem ')+
              'left join '+sqlUserGroup +' U on U.Modul = M.Modul AND U.Islem = M.Islem AND U.Kullanici = ' + QuotedStr(kullanici) +
              'WHERE U.Modul IS null ';

      datalar.QueryExec(ado,sql);
      Result := True;

      User_Menu_Settings.Active := false;
      User_Menu_Settings.Active := True;
      UserSettings.Active := false;
      UserSettings.Active := true;
    finally
      ado.Free;
    end;

   except on e : exception do
    begin
      ShowMessageSkin(e.Message,'','','info');
    end;
   end;
end;

procedure TfrmUsers.cxKaydetClick(Sender: TObject);
var
  sql , p ,b: string;
  c : char;
begin

  DurumGoster(True,False);



  try

    case TcxButton(sender).Tag  of
    Kaydet :  begin
                if not cxYeni.Enabled
                then
                    if not datalar.QuerySelect('select * from Users where Kullanici = ' + QuotedStr(TcxImageComboKadir(FindComponent('Kullanici')).Text)).Eof
                    then begin
                      ShowMessageSkin('Kullan�c� Ad� Sistemde Mevcut','','','info');
                      TcxImageComboKadir(FindComponent('Kullanici')).SetFocus;
                      exit;
                    end;
            end;
      Sil : begin
            end;

      end;


    if (TcxImageComboKadir(FindComponent('Grup')).EditValue = '2')
       and (TcxButton(sender).Tag = Kaydet)
       and (TcxImageComboKadir(FindComponent('Grup')).EditValue = Null)
       Then begin
          ShowMessageSkin('Doktor Grubu i�in Doktor Se�imi Yapmak Zorundas�n�z','','','info');
          TcxImageComboKadir(FindComponent('Doktor')).SetFocus;
          exit;
       end
       else
    if (TcxImageComboKadir(FindComponent('Grup')).EditValue = '11')
       and (TcxButton(sender).Tag = Kaydet)
       Then begin
          ShowMessageSkin('�GU Grubu i�in Uzman Se�imi Yapmak Zorundas�n�z','','','info');
          TcxImageComboKadir(FindComponent('IGU')).SetFocus;
          exit;
       end
       else
    if (TcxImageComboKadir(FindComponent('Grup')).EditValue = '10')
       and (TcxButton(sender).Tag = Kaydet)
       Then begin
          ShowMessageSkin('OSGB �irket Grubu i�in �irket Se�imi Yapmak Zorundas�n�z','','','info');
          TcxImageComboKadir(FindComponent('sirketKodu')).SetFocus;
          exit;
       end;


  if TcxButton(sender).Tag = 9
  then begin
   if mrYes  = ShowMessageSkin('�ifreniz s�f�rlan�p , yeni �ifreniz mail adresine g�nderilecek','Emin misiniz?','','msg')
   then begin
     c := chr(Random(65)+20);
     if c in ['A'..'Z'] then b := c else b := '1';

     p := b + inttostr(Random(15000));


     if mailGonder (TcxTextEditKadir(FindComponent('email')).Text , '�ifre Onaylama' , '�ifreniz : ' + p)
        = '0000'
      then begin
       sql := 'update Users set password = ' + SQLValue(p) +
              ', SifreDegisiklikTarihi = getdate () - 1000, Dogrulama = 0 where kullanici = ' +
              QuotedStr(TcxTextEditKadir(FindComponent('kullanici')).Text);
       datalar.QueryExec(sql);
       ShowMessageSkin('�ifre Mail adresini G�nderildi','','','info');
      end
      else ShowMessageSkin('�ifre S�f�rlanamad�','�ifre Mail adresine g�nderilemedi','Mail Bilgisini Kontrol Ediniz','info');
    end;
    exit;
  end;

  if TcxButton(sender).Tag = 0 then
  begin
    if TcxButtonEditKadir(FindComponent('password')).Text <> txtSifreTekrar.Text Then
    begin
      ShowMessageSkin('�ifre Tekrar� Hatal�','','','info');
      exit;
    end;
    if (FEskiSifre <> TcxTextEditKadir (FindComponent ('password')).Text)
      and not isNull (TcxTextEditKadir (FindComponent ('password')).Text) then
      if not SifreGecerliMi (TcxTextEditKadir (FindComponent ('password')).Text, 6, 1, 0, 0, 1) then Exit;
  end;

  BeginTrans (DATALAR.ADOConnection2);

  try
    if TcxButton(sender).Tag = 1 then
    begin
      DATALAR.QueryExec('delete from UserMenuSettings where Kullanici = ' + QuotedStr(TcxButtonEditKadir (FindComponent('Kullanici')).Text));
      DATALAR.QueryExec('delete from UserSettings where Kullanici = ' + QuotedStr(TcxButtonEditKadir (FindComponent('Kullanici')).Text));
      DATALAR.QueryExec('delete from UserPasswordHistory where Kullanici = ' + QuotedStr(TcxButtonEditKadir (FindComponent('Kullanici')).Text));
    end
    else
    if TcxButton(sender).Tag = 0 then
    begin



      //�ifre de�i�tirilmi�
      if FEskiSifre <> TcxTextEditKadir (FindComponent ('password')).Text then
      begin
        //kullan�c� kendi �ifresini de�i�tirmi�
        if AnsiSameText (TcxButtonEditKadir (FindComponent('Kullanici')).Text, DATALAR.UserName) then
        begin
          TcxCheckBox(FindComponent('Dogrulama')).Checked := True;
          TcxDateEditKadir (FindComponent('SifreDegisiklikTarihi')).Text := DateTimeToStr (Now);
        end
        //ba�kas�n�n �ifresini de�i�tirmi�
        else begin
          TcxCheckBox(FindComponent('Dogrulama')).Checked := False;
          TcxDateEditKadir (FindComponent('SifreDegisiklikTarihi')).Text := DateTimeToStr (Now - 1000);
        end;
      end;

    end;




    inherited;

    if not cxKaydetResult then Exit;

    case TcxButton(sender).Tag  of
      Kaydet : begin
                  TdxLayoutGroup(Self.findcomponent('dxLaB'+'btnYetkileriGruptanAl')).Enabled := True;
                  MenucxYeni.Enabled := True;
                  MenucxKaydet.Enabled := False;
                  MenucxIptal.Enabled := True;
                 // PopupMenuEnabled(Self,PopupMenu1,True);
                  PopupMenuToToolBarEnabled(self,ToolBar1,PopupMenu1);

               end;
      Yeni : begin
                 IslemveMenuGorunumSetEkle(ugUser);
                 // TcxButtonKadir(FindComponent('btnYetkileriGruptanAl')).Enabled := False;
                  MenucxYeni.Enabled := False;
                  MenucxKaydet.Enabled := True;
                  MenucxIptal.Enabled := False;
                  TcxImageComboBox(FindComponent('userSkin')).ItemIndex := 3;
                 // PopupMenuEnabled(Self,PopupMenu1,True);
                  PopupMenuToToolBarEnabled(self,ToolBar1,PopupMenu1);
              end;
        Sil : begin

               // post;
               //ShowMessage('�ptal');
              end;

    end;
  finally
    if cxKaydetResult then
    begin
      CommitTrans (DATALAR.ADOConnection2);
      FEskiSifre := TcxTextEditKadir (FindComponent ('password')).Text;
      if AnsiSameText (TcxButtonEditKadir (FindComponent('Kullanici')).Text, DATALAR.UserName) then
        DATALAR.usersifre := TcxTextEditKadir (FindComponent ('password')).Text;
    end
     else
      RollbackTrans (DATALAR.ADOConnection2);
  end;
  finally
   DurumGoster(False);
  end;
end;

procedure TfrmUsers.formlarClick(Sender: TObject);
begin
  //inherited;

end;

procedure TfrmUsers.FormResize(Sender: TObject);
var
 Fr : Double;
 W,H : Double;
begin
(*
 // W := ScreenWidth;
 // H := ScreenWidth;

  W := ClientWidth;
 H := ClientHeight;

  Fr := min(W/Sayfalar.Width,H/Sayfalar.Height);
 // pnlDurum.Left := round((Self.Width/2) - (pnlDurum.Width/2));
 // pnlDurum.Top := round((Self.ClientHeight/2) - (pnlDurum.Height/2));
  sayfalar.ScaleBy(Trunc(FR*100),100);
  *)
end;

end.
