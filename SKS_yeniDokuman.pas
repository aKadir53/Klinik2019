unit SKS_yeniDokuman;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,GirisUnit,KadirLabel,KadirType,Kadir, Vcl.Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,StrUtils,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,cxCurrencyEdit,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxDropDownEdit, cxCalendar, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,adodb,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls, cxImageComboBox, cxGroupBox;

type
  TfrmSKS_YeniDokuman = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    dokumanID: TcxButtonEditKadir;
    yayinTarihi: TcxDateEditKadir;
    sonrakiGGTarihi: TcxDateEditKadir;
    cxGrid3: TcxGridKadir;
    gridGG: TcxGridDBTableView;
    gridGGdokumanid: TcxGridDBColumn;
    gridGGrev: TcxGridDBColumn;
    gridGGid: TcxGridDBColumn;
    gridGGdate_create: TcxGridDBColumn;
    gridGGColumn1: TcxGridDBColumn;
    gridGGSggTarihi: TcxGridDBColumn;
    gridGGggUser: TcxGridDBColumn;
    cxGridDBBandedTableView9: TcxGridDBBandedTableView;
    cxGridDBBandedColumn27: TcxGridDBBandedColumn;
    cxGridDBBandedColumn28: TcxGridDBBandedColumn;
    cxGridDBBandedColumn29: TcxGridDBBandedColumn;
    cxGridDBBandedColumn30: TcxGridDBBandedColumn;
    cxGridDBBandedColumn31: TcxGridDBBandedColumn;
    cxGridDBBandedTableView10: TcxGridDBBandedTableView;
    cxGridDBBandedColumn32: TcxGridDBBandedColumn;
    cxGridDBBandedColumn33: TcxGridDBBandedColumn;
    cxGridDBBandedTableView11: TcxGridDBBandedTableView;
    cxGridDBBandedTableView12: TcxGridDBBandedTableView;
    cxGridDBBandedColumn34: TcxGridDBBandedColumn;
    cxGridDBBandedColumn35: TcxGridDBBandedColumn;
    cxGridDBBandedColumn36: TcxGridDBBandedColumn;
    cxGridDBBandedColumn37: TcxGridDBBandedColumn;
    cxGridDBBandedColumn38: TcxGridDBBandedColumn;
    cxGridDBBandedColumn39: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    G1: TMenuItem;
    G2: TMenuItem;
    Splitter_GG: TSplitter;
    cxGrid1: TcxGridKadir;
    gridRev: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    gridRevColumn1: TcxGridDBColumn;
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
    N1: TMenuItem;
    R1: TMenuItem;
    R2: TMenuItem;
    onayDurum: TMenuItem;
    kontrolDurum: TMenuItem;
    N2: TMenuItem;
    D1: TMenuItem;
    D2: TMenuItem;
    cxGrid2: TcxGridKadir;
    gridDokumanlarRevOku: TcxGridDBTableView;
    gridDokumanlarRevOkudokumanid: TcxGridDBColumn;
    gridDokumanlarRevOkurev: TcxGridDBColumn;
    gridDokumanlarRevOkukullanici: TcxGridDBColumn;
    gridDokumanlarRevOkuOkundu: TcxGridDBColumn;
    gridDokumanlarRevOkudate_create: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    GrupRevizyonlar: TcxGroupBox;
    GrupGG: TcxGroupBox;
    GrupOkuma: TcxGroupBox;
    N3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxButtonCClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;

    procedure ilkRev;
    procedure RevEkle;
    procedure RevSil;
    procedure RevOnay(item : string);
    procedure RevDokumanYukle;
    procedure RevDokumanAc;

    procedure RevAfterScroll(DataSet: TDataSet);

    procedure ButtonClick(Sender: TObject);
    procedure SayfalarChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;


const _TableName_ = 'SKS_Dokumanlar';
      formGenislik = 800;
      formYukseklik = 550;

var
  frmSKS_YeniDokuman: TfrmSKS_YeniDokuman;

implementation

{$R *.dfm}

uses data_modul,Rapor,AnaUnit;

procedure TfrmSKS_YeniDokuman.RevAfterScroll(DataSet: TDataSet);
var
  sql : string;
begin
 try
  sql := 'select * from SKS_DokumanlarRevStatuDurum where dokumanid = ' + QuotedStr(cxGrid1.Dataset.FieldByName('dokumanid').AsString)
         + ' and rev = ' + QuotedStr(cxGrid1.Dataset.FieldByName('rev').AsString);
  datalar.QuerySelect(cxGrid2.Dataset,sql);
 except
 end;
end;



procedure TfrmSKS_YeniDokuman.ilkRev;
var
 sql : string;
 sonRev : integer;
begin
    sql := 'Select * from SKS_DokumanlarRev ' +
           'where dokumanid = ' + TcxButtonEdit(FindComponent('id')).Text;
    datalar.QuerySelect(cxGrid1.Dataset,sql);

    (*
    if cxGrid1.Dataset.RecordCount = 0
    Then begin
      cxGrid1.Dataset.Append;
      cxGrid1.Dataset.FieldByName('dokumanid').AsString := TcxButtonEdit(FindComponent('id')).Text;
      cxGrid1.Dataset.FieldByName('rev').AsInteger := 1;
      cxGrid1.Dataset.FieldByName('Aktif').AsInteger := 0;
      cxGrid1.Dataset.FieldByName('kontrolDurum').AsInteger := 0;
      cxGrid1.Dataset.FieldByName('onayDurum').AsInteger := 0;
      cxGrid1.Dataset.FieldByName('revUser').AsString := datalar.username;
      cxGrid1.Dataset.FieldByName('revTarihi').AsDateTime := date;
      cxGrid1.Dataset.Post;
    end;
    *)
end;


procedure TfrmSKS_YeniDokuman.ButtonClick(Sender: TObject);
var
 sql : string;
begin
  case TcxButtonKadir(sender).Tag of

    -50 : begin
            sql := 'exec sp_DokumanRevOkunduDurum ' + cxGrid1.Dataset.FieldByName('dokumanid').AsString
                 + ',' + cxGrid1.Dataset.FieldByName('rev').AsString
                 + ',' + vartostr(TcxImageComboKadir(FindComponent('grup')).EditValue);

            datalar.QueryExec(sql);
           DatasetRefresh(cxGrid2.Dataset);
          end;
  end;

end;

procedure TfrmSKS_YeniDokuman.cxButtonCClick(Sender: TObject);
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case TControl(sender).Tag  of
    -1 : begin

            if mrYes = ShowPopupForm('Gözden Geçirme Ekle',GGEkle)
             then begin
                  cxGrid3.Dataset.Append;
                  cxGrid3.Dataset.FieldByName('dokumanid').AsString := TcxButtonEdit(FindComponent('id')).Text;
                  cxGrid3.Dataset.FieldByName('date_Create').AsDateTime := date;
                  cxGrid3.Dataset.FieldByName('ggUser').AsString := datalar.username;
                  cxGrid3.Dataset.FieldByName('ggTarihi').AsDateTime := datalar.DokumanGG.ggTarihi;
                  cxGrid3.Dataset.FieldByName('SggTarihi').AsDateTime := IncMonth(datalar.DokumanGG.ggTarihi,TcxImageComboKadir(FindComponent('gozdenGecirmePeryot')).EditValue);
                  cxGrid3.Dataset.Post;


                  TcxDateEdit(FindComponent('sonrakiGGTarihi')).EditValue := IncMonth(datalar.DokumanGG.ggTarihi,TcxImageComboKadir(FindComponent('gozdenGecirmePeryot')).EditValue);

                  datalar.QueryExec('update SKS_Dokumanlar set sonrakiGGTarihi = ' + TcxDateEditKadir(FindComponent('sonrakiGGTarihi')).GetSQLValue +
                                    ' where id = ' + QuotedStr(TcxButtonEdit(FindComponent('id')).Text));


             end;
         end;

    -3 : begin
            RevEkle;
         end;

    -4 : begin
            RevSil;
         end;

  -5,-6 : begin
            RevOnay(TMenuItem(sender).name);
          end;

   -10 : begin
            RevDokumanYukle;
         end;

   -11 : begin
           RevDokumanAc;
         end;


     end;

end;

procedure TfrmSKS_YeniDokuman.cxButtonEditPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin

  inherited;

  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
      FormInputZorunluKontrolPaint(self,$00FCDDD1);
  end;

  cxGrid3.Dataset.SQL.text := 'select * from SKS_DokumanGGTarihleri where dokumanid = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);
  cxGrid3.Dataset.Connection := Datalar.ADOConnection2;
  cxGrid3.Dataset.open;

  cxGrid1.Dataset.AfterScroll := RevAfterScroll;
  cxGrid1.Dataset.SQL.text := 'select * from SKS_DokumanlarRev DR ' +
                              ' join SKS_DOkumanlar D on D.id = DR.dokumanid ' +
                              ' where dokumanid = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text);
  cxGrid1.Dataset.Connection := Datalar.ADOConnection2;
  cxGrid1.Dataset.open;




end;

procedure TfrmSKS_YeniDokuman.cxKaydetClick(Sender: TObject);
begin
    inherited;
    if datalar.KontrolUserSet = True then exit;
    if not cxKaydetResult then Exit;

    TcxImageComboKadir(FindComponent('id')).EditValue := F_IDENTITY;

    case TControl(sender).Tag  of
       Kaydet : begin
                  ilkRev;
                end;
    end;

end;

procedure TfrmSKS_YeniDokuman.FormCreate(Sender: TObject);
var
 _IC_ : TcxImageComboKadir;
   List : TListeAc;
begin
  USER_ID.Tag := -100;
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
                       '50,100,250','ListdosyaNo','Döküman Listesi',
                       ' sirketKod = ' + QuotedStr(datalar.AktifSirket),
                        5,True,Self);


  //List.Where := ' SirketKod = ' + QuotedStr(datalar.AktifSirket);

  setDataStringB(self,'id','&ID',Kolon1,'',80,List,True,dokumanID,'','',True,True,-100);


  _IC_ := TcxImageComboKadir.Create(self);
  _IC_.Conn := Datalar.ADOConnection2;
  _IC_.TableName := 'SKS_DokumanKapsamlari';
  _IC_.ValueField := 'kod';
  _IC_.DisplayField := 'tanimi';
  _IC_.BosOlamaz := True;
  _IC_.Filter := '';
  setDataStringKontrol(self,_IC_,'kapsam','Kapsam',kolon1,'kk',130);
  OrtakEventAta(_IC_);

  _IC_ := TcxImageComboKadir.Create(self);
  _IC_.Conn := Datalar.ADOConnection2;
  _IC_.TableName := 'SKS_DokumanTurleri';
  _IC_.ValueField := 'kod';
  _IC_.DisplayField := 'tanimi';
  _IC_.BosOlamaz := True;
  _IC_.Filter := '';
  setDataStringKontrol(self,_IC_,'tur','Tür',kolon1,'kk',100);
  OrtakEventAta(_IC_);

  setDataStringCurr(self,'sira','Sýra',kolon1,'kk',40,'0,',1);
  setDataString(self,'dokumanNo','Döküman No ',Kolon1,'kk',100,True,'',True);
  setDataString(self,'adi','Tanýmý',Kolon1,'',500);
  setDataString(self,'amaci','Amaç',Kolon1,'',500);

  yayinTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,yayinTarihi, 'yayinTarih','Yayýn Tarihi',Kolon1,'yt',100);


  _IC_ := TcxImageComboKadir.Create(self);
  _IC_.Conn := nil;
  _IC_.ItemList := '1;Aylýk,3;3 Ayda Bir,6;6 Ayda Bir,12;Yýlda Bir';
  _IC_.Filter := '';
  _IC_.BosOlamaz := True;
  setDataStringKontrol(self,_IC_,'gozdenGecirmePeryot','Peryot',kolon4,'yt',100);
  OrtakEventAta(_IC_);

  sonrakiGGTarihi.ValueTip := tvDate;
  setDataStringKontrol(self,sonrakiGGTarihi, 'sonrakiGGTarihi','Sonraki Gözden Geçirme Tarihi ',Kolon1,'yt',100);


  _IC_ := TcxImageComboKadir.Create(self);
  _IC_.Conn := Datalar.ADOConnection2;
  _IC_.TableName := 'Users';
  _IC_.ValueField := 'kullanici';
  _IC_.DisplayField := 'ADISOYADI';
  _IC_.BosOlamaz := True;
  _IC_.Filter := ' SKSPersonel = 1';
  setDataStringKontrol(self,_IC_,'denetci','Denetçi',kolon1,'',100);
  OrtakEventAta(_IC_);

  _IC_ := TcxImageComboKadir.Create(self);
  _IC_.Conn := Datalar.ADOConnection2;
  _IC_.TableName := 'SKS_DokumanTip';
  _IC_.ValueField := 'kod';
  _IC_.DisplayField := 'tanimi';
  _IC_.BosOlamaz := True;
  _IC_.Filter := '';
  setDataStringKontrol(self,_IC_,'dokumanTip','Döküman Tip',kolon1,'',100);
  OrtakEventAta(_IC_);


  _IC_ := TcxImageComboKadir.Create(self);
  _IC_.Properties.Items := AnaForm.Sirketler.Properties.Items;
  setDataStringKontrol(self,_IC_,'sirketKod','Þirket',kolon1,'',100);

//  cxPanel.Visible := True;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;

  GrupGG.Parent := sayfa1;
  Splitter_GG.Parent := sayfa1;


  setDataStringKontrol(self,GrupRevizyonlar , 'GrupRevizyonlar','',sayfa2_Kolon1,'',560,400);


  setDataStringIC(self,'grup','Kullanýcý Gruplarý',sayfa2_Kolon2,'',150,'UserGroups','kodu','ADI');
  addButton(self,nil,'btnOku','','Kullanýcýlar Okusun',sayfa2_Kolon2,'',150,ButtonClick,-50);
  TcxImageComboKadir(FindComponent('grup')).Parent := GrupOkuma;
  TcxImageComboKadir(FindComponent('grup')).Align := alTop;

  TcxButtonKadir(FindComponentButtonName('btnOku',self)).Parent := GrupOkuma;
  TcxButtonKadir(FindComponentButtonName('btnOku',self)).Align := alTop;
  setDataStringKontrol(self,GrupOkuma , 'GrupOkuma','',sayfa2_Kolon2,'',192,400);



  SayfaCaption('Döküman Bilgileri','Revizyon Bilgileri','','','');
  Disabled(self,true);

end;

function TfrmSKS_YeniDokuman.Init(Sender: TObject): Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;
  if _kod_ <> '' then
  begin
    Caption := 'Dokuman Düzenle';
    cxTab.Tabs[0].Caption := 'Dokuman Deðiþiklik';
    TcxButtonEditKadir(FindComponent('id')).Text := _kod_;
    cxButtonEditPropertiesButtonClick(TcxButtonEditKadir(FindComponent('id')),-1);
    enabled;
  end;
  Result := True;
end;

procedure TfrmSKS_YeniDokuman.PropertiesEditValueChanged(Sender: TObject);
var
  kapsamV,turV,siraV : string;
begin
  inherited;

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
  end
  else
  if  TcxImageComboKadir(Sender).name = 'gozdenGecirmePeryot'
  then begin
     TcxDateEdit(FindComponent('sonrakiGGTarihi')).EditValue := IncMonth(TcxDateEdit(FindComponent('yayinTarih')).EditValue,
     TcxImageComboKadir(FindComponent('gozdenGecirmePeryot')).EditValue);
  end;


end;

procedure TfrmSKS_YeniDokuman.RevDokumanAc;
var
  Blob : TAdoBlobStream;
  filename : string;
  TopluDataset : TDataSetKadir;
begin
        Cursor := crSQLWait;
        DurumGoster(True,False,'Döküman  Yükleniyor , Lütfen Bekleyiniz');
     try
        if TcxImageComboKadir(FindComponent('dokumanTip')).EditValue= 2 then
        begin
            try
              filename := TcxTextEdit(FindComponent('adi')).Text + '_rev_' +
                            cxGrid1.dataset.FieldByName('rev').AsString + '.' + cxGrid1.dataset.FieldByName('DosyaTuru').AsString;

              DokumanAc(cxGrid1.dataset,'dosya','C:\NoktaV3\'+filename);
            finally
              Cursor := crDefault;
            end;
        end
        else
        begin
              TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;
              TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
              TopluDataset.Dataset2 := cxGrid1.dataset;


        PrintYap(TcxTextEdit(FindComponent('dokumanNo')).Text +
                ifThen(cxGrid1.dataset.FieldByName('rev').AsString <> '',
                 '_'+cxGrid1.dataset.FieldByName('rev').AsString,''),
                 TcxTextEdit(FindComponent('adi')).Text,
                 inttoStr(TagfrmSKS_YeniDokuman) ,TopluDataset,pTDizayn);
        end;

     finally
        DurumGoster(False,False,'Döküman  Yükleniyor , Lütfen Bekleyiniz');
     end;
end;

procedure TfrmSKS_YeniDokuman.RevDokumanYukle;
var
  Blob : TADOBlobStream;
  dosya : TOpenDialog;
  dosyaTip : string;
  TopluDataset : TDataSetKadir;
begin

  if MrYes = MessageDlg(
      'Dokuman Eklenecek , Emin misiniz?',
    mtConfirmation, [mbYes, mbNo], 0, mbYes)
  then begin
      dxStatusBar1.Panels[1].Text := 'Dosya Yükleniyor , Lütfen Bekleyiniz...';

      DurumGoster(True,False,'Dokuman Tasarým Yükleniyor , Lütfen Bekleyiniz');

      try
        if TcxImageComboKadir(FindComponent('dokumanTip')).EditValue = 1 then
        begin
              TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;
              TopluDataset.Dataset1 := datalar.ADO_AktifSirket;


              if cxGrid1.dataset.RecordCount > 0
              then
                TopluDataset.Dataset2 := cxGrid1.dataset
              else
              TopluDataset.Dataset2 := datalar.QuerySelect('select *,'''' rev,'''' revTarihi, '''' aciklama from SKS_DOkumanlar where id = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text));


           (*
           //   frmRapor.raporData1(frmRapor.topluset ,'BOS','BoS');
              frmRapor.raporData2(frmRapor.topluset ,
                                  TcxTextEdit(FindComponent('dokumanNo')).Text +'_'+cxGrid1.dataset.FieldByName('rev').AsString
                                 ,TcxTextEdit(FindComponent('adi')).Text,stHayir,False);
              frmRapor.ShowModal;
              *)


 //       RTFToIcerik(TcxTextEdit(FindComponent('dokumanNo')).Text+'_'+cxGrid1.dataset.FieldByName('rev').AsString);

        PrintYap(TcxTextEdit(FindComponent('dokumanNo')).Text +
                 ifThen(cxGrid1.dataset.FieldByName('rev').AsString <> '',
                 '_'+cxGrid1.dataset.FieldByName('rev').AsString,''),
                 TcxTextEdit(FindComponent('adi')).Text,
                 inttoStr(TagfrmSKS_YeniDokuman) ,TopluDataset,pTNone);

        end
        else
        begin
           dosya := TOpenDialog.Create(nil);
           if not dosya.Execute then Exit;
           dosyaTip := ExtractFileExt(dosya.FileName);
           dosyaTip := StringReplace(dosyaTip,'.','',[rfReplaceAll]);
           DokumanYukle(cxGrid1.dataset,'dosya',dosya.FileName);
        end;

       // DokumanYukle(ADO_Rev,'dosya',dosya.FileName);
      //  RTFIcerikYukle(ADO_Rev,'icerik',dosya.FileName,icerik);
      finally
        dosya.Free;
        dxStatusBar1.Panels[1].Text := '';
        DurumGoster(False,False,'Dokuman Tasarým Yükleniyor , Lütfen Bekleyiniz');

      end;

  end;
end;

procedure TfrmSKS_YeniDokuman.RevEkle;
var
  sql : string;
  sonRev : integer;
begin
    sql := 'Select isnull(max(rev),0) + 1 sonRev from SKS_DokumanlarRev ' +
           'where dokumanid = ' + TcxButtonEditKadir(FindComponent('id')).Text;
    sonRev := datalar.QuerySelect(sql).FieldByName('sonRev').AsInteger;

    cxGrid1.Dataset.Append;
    cxGrid1.Dataset.FieldByName('dokumanid').AsString := TcxButtonEditKadir(FindComponent('id')).Text;
    cxGrid1.Dataset.FieldByName('rev').AsInteger := sonRev;
    cxGrid1.Dataset.FieldByName('revTarihi').AsDateTime := date;
    cxGrid1.Dataset.FieldByName('Aktif').AsInteger := 0;
    cxGrid1.Dataset.FieldByName('kontrolDurum').AsInteger := 0;
    cxGrid1.Dataset.FieldByName('onayDurum').AsInteger := 0;
    cxGrid1.Dataset.FieldByName('revUser').AsString := datalar.username;
    cxGrid1.Dataset.Post;
end;

procedure TfrmSKS_YeniDokuman.RevOnay(item : string);
var
  sql , userField,dateField : string;
begin
  inherited;


//  if UserRight('SKS', TControl(sender).Hint) = True
//  then begin

     userField :=
     StringReplace(StringReplace(item,'Durum','User',[rfReplaceAll]),'Onay','User',[rfReplaceAll]);
     dateField :=
     StringReplace(StringReplace(item,'Durum','Date',[rfReplaceAll]),'Onay','Date',[rfReplaceAll]);


     sql := 'update SKS_DokumanlarRev set ' + item + ' = 1 ,' +
            userField + ' = ' + QuotedStr(datalar.username) + ',' +
            dateField + ' = getdate() ' +
            ' where dokumanid = ' + cxGrid1.Dataset.FieldByName('dokumanid').AsString +
            ' and rev = ' + cxGrid1.Dataset.FieldByName('rev').AsString +
            ' and ' + item + ' = 0';
     datalar.QueryExec(sql);
     cxGrid1.Dataset.Requery();
     cxGrid1.Dataset.Next;
 // end
//  else
//    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !',TToolButton(sender).Hint,'','info');

end;

procedure TfrmSKS_YeniDokuman.RevSil;
var
 sql : string;
begin
 if MrYes = ShowMessageSkin('Revizyon Silmek Ýstediðinizden Eminmisiniz','','','msg') = True
 then begin
   sql := 'delete from SKS_DokumanlarRevStatuDurum ' +
          ' where dokumanid = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text) +
          ' and rev = ' + QuotedStr(cxGrid1.Dataset.FieldByName('rev').AsString);
   datalar.QueryExec(sql);


   sql := 'delete from SKS_DokumanlarRev ' +
          ' where dokumanid = ' + QuotedStr(TcxButtonEditKadir(FindComponent('id')).Text) +
          ' and rev = ' + QuotedStr(cxGrid1.Dataset.FieldByName('rev').AsString);
   datalar.QueryExec(sql);



   cxGrid1.Dataset.Requery();
   cxGrid1.Dataset.Next;
 end;
end;

procedure TfrmSKS_YeniDokuman.SayfalarChange(Sender: TObject);
begin
   if sayfalar.ActivePage = sayfa1
   Then
     cxPanel.Visible := True
   Else
   begin
     GrupRevizyonlar.Caption := 'Döküman Revizyonlarý - Döküman No : ' + TcxTextEdit(FindComponent('DokumanNo')).EditValue;
     cxPanel.Visible := False;
   end;
end;

end.
