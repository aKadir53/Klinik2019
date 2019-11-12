unit UzmanMuayene;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,TedaviKart,GetFormClass,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,Adodb,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxPC, cxGroupBox, Vcl.Menus, cxImageComboBox,
  cxDBLookupComboBox, cxLabel, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, Vcl.StdCtrls, Vcl.Buttons, cxCheckBox,strUtils,
  Vcl.ExtCtrls, cxSplitter, cxCheckListBox;

type
  TfrmUzmanMuayene = class(TfrmTedaviBilgisi)
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    T1: TMenuItem;
    ADO_UzmanMuayene: TADOQuery;
    DataSource7: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    K: TcxStyle;
    Yesil_siyah: TcxStyle;
    Sari_Siyah: TcxStyle;
    K1: TMenuItem;
    y1: TMenuItem;
    N3: TMenuItem;
    cxSplitter1: TcxSplitter;
    chkSistemSorgu: TcxCheckListBox;
    T2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure gelisSikayetSec(cL : TcxCheckListBox ; c : string);
    function gelisSikayetSecili(c : TcxCheckListBox) : string;
    procedure ItemClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure Yukle;override;
    procedure cxKaydetClick(Sender: TObject);override;

  private
    { Private declarations }
  public
  function Init(Sender : TObject) : Boolean; override;
    { Public declarations }
  end;

const _TableName_ = 'UzmanGozlem';
      formGenislik = 1000;
      formYukseklik = 600;
var
  frmUzmanMuayene: TfrmUzmanMuayene;
  _islem_ : integer;

implementation
      uses Data_Modul,AnaUnit,HastaRecete,IlacSarfListesi;
{$R *.dfm}

function TfrmUzmanMuayene.gelisSikayetSecili(c : TcxCheckListBox) : string;
var
  r : integer;
  cs : string;
begin
    for r := 0 to c.Items.Count - 1 do
    begin
       if c.Items[r].Checked then cs := cs + inttostr(r) + ',';
    end;

    result := ';'+cs;

end;

procedure TfrmUzmanMuayene.gelisSikayetSec(cL : TcxCheckListBox ; c : string);
var
  r : integer;
  T : TStringList;
begin
    for r := 0 to cL.Items.Count - 1 do
    begin
       cL.Items[r].Checked := False;
    end;

    T := TStringList.Create;

    c := StringReplace(c,';','',[rfReplaceAll]);
    Split(',',c,T);

    for r := 0 to T.Count - 1 do
    begin
       if T[r] <> ''
       Then cL.Items[strtoint(T[r])].Checked := True;
    end;

    T.Free;

end;


procedure TfrmUzmanMuayene.Yukle;
begin
 // inherited;
   sql := 'select * from uzmanGozlem ug left join DoktorlarT d on d.kod = substring(ug.doktor,1,4) ' +
          ' where dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + QuotedStr(_gelisNo_);
   datalar.QuerySelect(ADO_UzmanMuayene,sql);


   TcxTextEdit(FindComponent('Tarih')).EditValue := ADO_UzmanMuayene.fieldbyname('Tarih').AsString;
   TcxTextEdit(FindComponent('id')).Text := ADO_UzmanMuayene.fieldbyname('id').AsString;
   gelisSikayetSec(chkSistemSorgu,ADO_UzmanMuayene.fieldbyname('sistemSorgusu').AsString);
   TcxMemo(FindComponent('basboyun')).EditValue := ADO_UzmanMuayene.fieldbyname('basboyun').AsString;
   TcxMemo(FindComponent('akciger')).EditValue := ADO_UzmanMuayene.fieldbyname('akciger').AsString;
   TcxMemo(FindComponent('kalp')).EditValue := ADO_UzmanMuayene.fieldbyname('kalp').AsString;
   TcxMemo(FindComponent('abdomen')).EditValue := ADO_UzmanMuayene.fieldbyname('abdomen').AsString;
   TcxMemo(FindComponent('Ekst')).EditValue := ADO_UzmanMuayene.fieldbyname('Ekst').AsString;
   TcxMemo(FindComponent('digerNot')).EditValue := ADO_UzmanMuayene.fieldbyname('digerNot').AsString;
   TcxMemo(FindComponent('psiko')).EditValue := ADO_UzmanMuayene.fieldbyname('psiko').AsString;

   TcxCurrencyEdit(FindComponent('kurukilo')).EditValue :=
     ifThen(ADO_UzmanMuayene.fieldbyname('kurukilo').AsString = '','0',ADO_UzmanMuayene.fieldbyname('kurukilo').AsString);

 //  txtKanAkimHizi.Text := ifThen(ADO_UzmanMuayene.fieldbyname('kanah').AsString='','0',ADO_UzmanMuayene.fieldbyname('kanah').AsString);
 //  txtAntiko.Text := ADO_UzmanMuayene.fieldbyname('antikoa').AsString;
  // txtDializorTip.Text := Ado_Uzman.fieldbyname('Diyalizor').AsString;

   TcxImageComboKadir(FindComponent('DiyalizorTipi')).EditValue := ADO_UzmanMuayene.fieldbyname('DiyalizorTipi').AsString;
   TcxImageComboKadir(FindComponent('DiyalizorCinsi')).EditValue  := ADO_UzmanMuayene.fieldbyname('DiyalizorCinsi').AsString;
   TcxImageComboKadir(FindComponent('D')).EditValue  := ADO_UzmanMuayene.fieldbyname('D').AsString;
   TcxImageComboKadir(FindComponent('GIRISYOLU')).EditValue  := ADO_UzmanMuayene.fieldbyname('GIRISYOLU').AsString;
   TcxImageComboKadir(FindComponent('doktor')).EditValue  := ADO_UzmanMuayene.fieldbyname('doktor').AsString;

//   txtseansSure.Text := ADO_UzmanMuayene.fieldbyname('ss').AsString;
//   txtDigerNot.Text := ADO_UzmanMuayene.fieldbyname('digerNot').AsString;
//   txtPsiko.Text := ADO_UzmanMuayene.fieldbyname('psiko').AsString;

    TcxComboBox(FindComponent('YA')).EditValue := ADO_UzmanMuayene.fieldbyname('YA').AsString;

    TcxComboBox(FindComponent('HEPARIN')).EditValue:= ADO_UzmanMuayene.fieldbyname('HEPARIN').AsString;
    TcxComboBox(FindComponent('HEPARINUYG')).EditValue:=  ADO_UzmanMuayene.fieldbyname('HEPARINUYG').AsString;
    TcxComboBox(FindComponent('HEPARINTIP')).EditValue := ADO_UzmanMuayene.fieldbyname('HEPARINTIP').AsString;
    TcxComboBox(FindComponent('HCOOO')).EditValue := ADO_UzmanMuayene.fieldbyname('HCOOO').AsString;
    TcxComboBox(FindComponent('APH')).EditValue := ADO_UzmanMuayene.fieldbyname('APH').AsString;
    TcxComboBox(FindComponent('Na')).EditValue := ADO_UzmanMuayene.fieldbyname('Na').AsString;
    TcxComboBox(FindComponent('Igne')).EditValue := ADO_UzmanMuayene.fieldbyname('Igne').AsString;
    TcxComboBox(FindComponent('IgneV')).EditValue:= ADO_UzmanMuayene.fieldbyname('IgneV').AsString;


 //  txtMalzemeSablon.Text := ADO_UzmanMuayene.fieldbyname('malzemeSablon').AsString;
 //  txtISI.Text := ADO_UzmanMuayene.fieldbyname('ISI').AsString;




   if not ADO_UzmanMuayene.Eof
   then begin
       cxKaydet.Enabled := True;
      cxIptal.Enabled := True;
   end
   else begin
    cxIptal.Enabled := False;
   end;


end;






procedure TfrmUzmanMuayene.ItemClick(Sender: TObject);
begin

    case TMenuItem(sender).Tag of
    -1 : begin


         end;
    -2 : begin

         end;
    end;
end;

procedure TfrmUzmanMuayene.cxButtonCClick(Sender: TObject);
var
  sql : string;
  Datasets : TDataSetKadir;
  Form : TGirisForm;
  GirisFormRecord : TGirisFormRecord;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

    case TMenuItem(sender).Tag of

       -1 : begin
              DurumGoster(True,False,'Uzman Muayene Tutanaðý Hazýrlanýyor...');
              try
                sql := 'select ug.Tarih,h.*, ' + QuotedStr(datalar.AktifSirketAdi) + ' merkezAd' +
                       ' from Hastakart h ' +
                       ' left JOIN UzmanGozlem ug ON ug.dosyaNo = h.dosyaNo AND ug.gelisNo = ' + _gelisNo_ +
                       ' where h.dosyaNo = ' + QuotedStr(_dosyaNo_);

                Datasets.Dataset0 := ADO_UzmanMuayene;
                Datasets.Dataset1 := datalar.QuerySelect(sql);

                PrintYap('200','Uzman Muayene Tutanak','',Datasets,pTNone,frmUzmanMuayene);

              finally
                DurumGoster(False);
              end;
            end;

       -2 : begin
                DurumGoster(True,False,'Uzman Muayene Formu Hazýrlanýyor...');
                sql := 'SELECT ug.*,k.*,dr.*,' +
                       ' DC.tanimi DiyalizorCinsiTanimi,D.tanimi Diyalizat,DT.tanimi DiyalizorTipiTanimi,DG.tanimi GIRISYOLUTanimi' +
                       ' FROM UzmanGozlem ug ' +
                       'join hastakart k on k.dosyaNo = ug.dosyaNo ' +
                       'join DoktorlarT dr on dr.kod = ug.doktor ' +
                       'left join Diyalizor_Cinsleri DC on DC.kod = ug.DiyalizorCinsi ' +
                       'left join Diyalizor_Tipleri DT on DT.kod = ug.DiyalizorTipi ' +
                       'left join Diyaliz_Diyalizat D on D.kod = ug.D ' +
                       'left join Diyaliz_DamarGiris DG on DG.kod = ug.GIRISYOLU ' +
                       ' WHERE ug.dosyaNo = ' + QuotedStr(_dosyaNo_) + ' AND gelisNo = ' + _gelisNo_;
                Datasets.Dataset0 := datalar.QuerySelect(sql);



                sql := ' DECLARE @s VARCHAR(200) ' +
                       ' SELECT @s = sistemSorgusu FROM uzmangozlem  ' +
                       ' WHERE dosyaNo = ' + QuotedStr(_dosyaNo_) + ' AND gelisNo = ' + _gelisNo_ +

                       ' SELECT datavalue , s.tanim from dbo.strtotable(@s,'','') ' +
                       ' JOIN Sistemsorgulari s ON cast(s.kod AS VARCHAR) = DataValue ' +
                       ' WHERE isnull(DataValue,'''') <> '''' ';
                Datasets.Dataset1 := datalar.QuerySelect(sql);

                PrintYap('210','Uzman Muayene Form','',Datasets,pTNone,frmUzmanMuayene);

            end;
       -5 : begin
                GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
                GirisFormRecord.F_dosyaNO_ := _dosyaNO_;
                GirisFormRecord.F_provizyonTarihi_ := _provizyonTarihi_;

                Form := FormINIT(TagfrmSon6AylikTetkikSonuc,GirisFormRecord);
                if Form <> nil then Form.showModal;
              //  Son6AylikTetkikSonuc(_dosyaNO_,_provizyonTarihi_);

            end;

    end;



end;

procedure TfrmUzmanMuayene.cxKaydetClick(Sender: TObject);
var
  sql : string;
begin

case TControl(sender).Tag  of
 Kaydet : begin
               try
                if TcxTextEdit(FindComponent('id')).Text <> ''
                then begin
                  sql := 'update UzmanGozlem ' +
                          'set Tarih =  ' + TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue +
                          ',doktor =  ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('doktor')).EditValue)) +
                          ',basboyun = ' + QuotedStr(varTostr(TcxMemo(FindComponent('basboyun')).EditValue)) +
                          ',akciger = ' + QuotedStr(varTostr(TcxMemo(FindComponent('akciger')).EditValue)) +
                          ',kalp = ' +  QuotedStr(varTostr(TcxMemo(FindComponent('kalp')).EditValue)) +
                          ',abdomen = ' + QuotedStr(varTostr(TcxMemo(FindComponent('abdomen')).EditValue)) +
                          ',Ekst = ' + QuotedStr(varTostr(TcxMemo(FindComponent('Ekst')).EditValue)) +
                          ',sistemSorgusu = ' + QuotedStr(gelisSikayetSecili(chkSistemSorgu)) +
                          ',psiko = ' + QuotedStr(varTostr(TcxMemo(FindComponent('psiko')).EditValue)) +
                          ',digerNot = ' + QuotedStr(varTostr(TcxMemo(FindComponent('digerNot')).EditValue)) +
                          ',kurukilo = ' + QuotedStr(TcxCurrencyEdit(FindComponent('kurukilo')).Text) +
                          ',D = ' + QuotedStr(varTostr(TcxImageComboKadir(FindComponent('D')).EditValue)) +
                          ',Diyalizor = ' + QuotedStr(varTostr(TcxImageComboKadir(FindComponent('Diyalizor')).EditValue)) +
                          ',GIRISYOLU = ' + QuotedStr(varTostr(TcxImageComboKadir(FindComponent('GIRISYOLU')).EditValue)) +
                          ',HEPARIN = ' + QuotedStr(varTostr(TcxTextEdit(FindComponent('HEPARIN')).Text)) +
                          ',HEPARINUYG = ' + QuotedStr(varTostr(TcxTextEdit(FindComponent('HEPARINUYG')).Text)) +
                          ',HEPARINTIP = ' + QuotedStr(varTostr(TcxTextEdit(FindComponent('HEPARINTIP')).Text)) +
                          ',YA = ' + QuotedStr(varTostr(TcxTextEdit(FindComponent('YA')).Text)) +
                          ',DiyalizorCinsi = ' +  QuotedStr(varTostr(TcxImageComboKadir(FindComponent('DiyalizorCinsi')).EditValue)) +
                          ',DiyalizorTipi = ' + QuotedStr(varTostr(TcxImageComboKadir(FindComponent('DiyalizorTipi')).EditValue)) +
                          ',HCOOO = ' + QuotedStr(varTostr(TcxTextEdit(FindComponent('HCOOO')).Text)) +
                          ',APH = ' + QuotedStr(varTostr(TcxTextEdit(FindComponent('APH')).Text)) +
                          ',Na = ' +  QuotedStr(varTostr(TcxTextEdit(FindComponent('Na')).Text)) +
                          ',Igne = ' +  QuotedStr(varTostr(TcxTextEdit(FindComponent('Igne')).Text)) +
                          ',IgneV = ' + QuotedStr(varTostr(TcxTextEdit(FindComponent('IgneV')).Text)) +

                          ' where id = ' + TcxTextEdit(FindComponent('id')).Text;


                  datalar.QueryExec(sql);
                end
                else
                begin
                  sql := 'insert into UzmanGozlem (dosyaNo,gelisNo,gelisSIRANO,Tarih,doktor,basboyun,sistemSorgusu,psiko,digerNot, ' +
                           'kurukilo,D,Diyalizor,GIRISYOLU,HEPARIN,HEPARINUYG,HEPARINTIP,YA,DiyalizorCinsi,DiyalizorTipi,HCOOO,APH,Na,Igne,IgneV  ) ' +
                         'values(' + QuotedStr(_dosyaNo_) + ','
                                   + QuotedStr(_gelisNo_) + ','
                                   + QuotedStr(_gelisSiraNo_) + ','
                                   + TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue + ','
                                   + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('doktor')).EditValue)) + ','
                                   + QuotedStr(varTostr(TcxMemo(FindComponent('basboyun')).EditValue)) + ','
                                   + QuotedStr(gelisSikayetSecili(chkSistemSorgu)) + ','
                                   + QuotedStr(varTostr(TcxMemo(FindComponent('psiko')).EditValue)) + ','
                                   + QuotedStr(varTostr(TcxMemo(FindComponent('digerNot')).EditValue)) + ','
                                   + QuotedStr(TcxCurrencyEdit(FindComponent('kurukilo')).Text) + ','
                                   + QuotedStr(varTostr(TcxImageComboKadir(FindComponent('D')).EditValue)) + ','
                                   + QuotedStr(varTostr(TcxImageComboKadir(FindComponent('Diyalizor')).EditValue)) + ','
                                   + QuotedStr(varTostr(TcxImageComboKadir(FindComponent('GIRISYOLU')).EditValue)) + ','
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('HEPARIN')).Text)) + ','
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('HEPARINUYG')).Text)) + ','
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('HEPARINTIP')).Text)) + ','
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('YA')).Text)) + ','
                                   + QuotedStr(varTostr(TcxImageComboKadir(FindComponent('DiyalizorCinsi')).EditValue)) + ','
                                   + QuotedStr(varTostr(TcxImageComboKadir(FindComponent('DiyalizorTipi')).EditValue)) + ','
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('HCOOO')).Text)) + ','
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('APH')).Text)) + ','
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('Na')).Text)) + ','
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('Igne')).Text)) + ','
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('IgneV')).Text)) +

                                    ') select SCOPE_IDENTITY() id';
                  TcxTextEdit(FindComponent('id')).Text := datalar.QuerySelect(sql).FieldByName('id').AsString;
                end;

                ShowMessageskin('Kayýt Yapýldý','','','info');
               except on e : exception do
                begin
                    ShowMessageSkin('Kayýt Ýþleminde Hata : ' + e.Message,'','','info');
                end;
               end;
          end;
    Sil : begin
            if MrYes = ShowMessageSkin('Uzman Muayene Silinecek Emin misiniz?','','','msg')
            then
                if TcxTextEdit(FindComponent('id')).Text <> ''
                then begin
                  datalar.QueryExec('delete from UzmanGozlem where id = ' + TcxTextEdit(FindComponent('id')).Text);
                end;
          end;
  end;

  ADO_UzmanMuayene.Requery();

end;

function TfrmUzmanMuayene.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;
//  _HastaBilgileriniCaptionGoster_ := True;
  yukle;
  Result := True;
end;


procedure TfrmUzmanMuayene.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1 : TListeAc;
  _Tarih_ : TcxDateEditKadir;
begin
 //cxYeni.Visible := false;
  inherited;
  Tag := TagfrmHastaIlacTedavi;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'id';
  TableName := _TableName_;
  cxPanel.Visible := True;
  cxPanelButtonVisible(False,True,True,False);
  cxTab.Width := 200;
  Menu := PopupMenu1;


  _Tarih_ := TcxDateEditKadir.Create(self);
  Tarih.Name := '_Tarih_';
  setDataStringKontrol(self,_Tarih_, 'Tarih','Uzman Muayene Tarih',Kolon1,'bb',100);
 // TcxTextEdit(FindComponent('Tarih')).EditValue := date;

  setDataStringIC(self,'doktor','Doktor',Kolon1,'bb',120,'DoktorlarT','kod','tanimi',' sirketKod = ' + QuotedStr(datalar.AktifSirket));
  setDataString(self,'id','',Kolon1,'bb',40,False,'',True,-100);

  setDataStringKontrol(self,chkSistemSorgu, 'chkSistemSorgu','Sistem Sorgularý',Kolon1,'',660,250);
  setDataStringMemo(self,'digerNot','Uzman Not',Kolon1,'',550,50);
  setDataStringBLabel(self,'lblBostatir1',Kolon1,'',660,'Fiziki Muayene','','',True,255,taCenter);
  setDataStringMemo(self,'basboyun','Baþ Boyun',Kolon1,'',550,50);
  setDataStringMemo(self,'akciger','Akciðer',Kolon1,'',550,50);
  setDataStringMemo(self,'kalp','Kalp',Kolon1,'',550,50);
  setDataStringMemo(self,'abdomen','Abdomen',Kolon1,'',550,50);
  setDataStringMemo(self,'Ekst','Ekstremiteler',Kolon1,'',550,50);
  setDataStringMemo(self,'psiko','Diyatisten ',Kolon1,'',550,50);


  setDataStringBLabel(self,'tedaviOrder',Sayfa2_Kolon1,'',550,'Tedavi Order', '', '', True, clRed, taCenter);
  setDataStringCurr(self,'kurukilo','Kuru Kilo',Sayfa2_Kolon1,'',80,'0.00',1);
  DiyalizTedaviControlleriniFormaEkle(Sayfa2_Kolon1,False);


  SayfaCaption('Uzman Muayene','Tedavi Order','','','');


end;

end.
