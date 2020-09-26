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
  cxDropDownEdit, cxPC, cxGroupBox, Vcl.Menus, cxImageComboBox,dxLayoutContainer,
  cxDBLookupComboBox, cxLabel, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, Vcl.StdCtrls, Vcl.Buttons, cxCheckBox,strUtils,
  Vcl.ExtCtrls, cxSplitter, cxCheckListBox, AdvMemo;

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
    izlemPanel: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGroupBoxAnemi: TcxGroupBox;
    txtAnemi: TcxCheckListBox;
    cxGroupBoxAciklama: TcxGroupBox;
    txtDAciklama: TcxMemo;
    cxGroupBoxSinekalset: TcxGroupBox;
    txtSinekalset: TcxComboBox;
    cxGroupBoxAntihiper: TcxGroupBox;
    txtAntihipertansif: TcxComboBox;
    cxGroupBoxAktifD: TcxGroupBox;
    txtDVitaminKul: TcxComboBox;
    cxGroupBoxTedaviSeyri: TcxGroupBox;
    txtedaviSeyri: TcxComboBox;
    cxGroupBoxFosfor: TcxGroupBox;
    txtFosfor: TcxCheckListBox;
    cxTabSheet1: TcxTabSheet;
    cxGroupBoxEpikrizAck: TcxGroupBox;
    txtAciklama: TAdvMemo;
    GridTetkikler: TcxGridKadir;
    gridTetkikList: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    ARALIK: TcxGridDBColumn;
    KASIM: TcxGridDBColumn;
    EKIM: TcxGridDBColumn;
    EYLUL: TcxGridDBColumn;
    AGUSTOS: TcxGridDBColumn;
    TEMMUZ: TcxGridDBColumn;
    HAZIRAN: TcxGridDBColumn;
    MAYIS: TcxGridDBColumn;
    NISAN: TcxGridDBColumn;
    MART: TcxGridDBColumn;
    SUBAT: TcxGridDBColumn;
    OCAK: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    GridIlaclar: TcxGridKadir;
    cxGridIlacTedaviPlani: TcxGridDBTableView;
    cxGridIlacTedaviPlanigk: TcxGridDBColumn;
    cxGridIlacTedaviPlaniust: TcxGridDBColumn;
    cxGridIlacTedaviPlaniilac: TcxGridDBColumn;
    cxGridIlacTedaviPlaniname1: TcxGridDBColumn;
    cxGridIlacTedaviPlanigrup: TcxGridDBColumn;
    cxGridIlacTedaviPlaniname2: TcxGridDBColumn;
    cxGridIlacTedaviPlaniperyot: TcxGridDBColumn;
    cxGridIlacTedaviPlanimiktar: TcxGridDBColumn;
    cxGridIlacTedaviPlanidoz: TcxGridDBColumn;
    cxGridIlacTedaviPlanidozperyotmiktar: TcxGridDBColumn;
    cxGridIlacTedaviPlanidonem: TcxGridDBColumn;
    cxGridIlacTedaviPlaniid: TcxGridDBColumn;
    cxGridIlacTedaviPlanigelisNo: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn1: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn2: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn3: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn4: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn5: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    N2: TMenuItem;
    PopupIlac: TPopupMenu;
    E1: TMenuItem;
    S1: TMenuItem;
    M1: TMenuItem;
    K2: TMenuItem;
    cxGridIlacTedaviPlaniColumn6: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn7: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure gelisSikayetSec(cL : TcxCheckListBox ; c : string);
    function gelisSikayetSecili(c : TcxCheckListBox) : string;
    procedure ItemClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure Yukle;override;
    procedure TetkikSonucGridKolonGizle;
    procedure cxKaydetClick(Sender: TObject);override;
    procedure E1Click(Sender: TObject);
    procedure ilacEkle(islem: integer);
    procedure M1Click(Sender: TObject);
    procedure TedaviIzlemDoldur;

  private
    { Private declarations }
  public
  function Init(Sender : TObject) : Boolean; override;
    { Public declarations }
  end;

const _TableName_ = 'UzmanGozlem';
      formGenislik = 1300;
      formYukseklik = 700;
var
  frmUzmanMuayene: TfrmUzmanMuayene;
  _islem_ : integer;

implementation
      uses Data_Modul,AnaUnit,HastaRecete,IlacSarfListesi;
{$R *.dfm}


procedure TfrmUzmanMuayene.ilacEkle(islem: integer);
begin
   if islem = ilacTedaviIlacEkle
   then Begin
     try
      Application.CreateForm(TfrmIlacSarf, frmIlacSarf);
      try
        frmIlacSarf._dosyaNO_ := _dosyaNo_;//ADO_GecmisIlacTedavi.FieldByName('dosyaNo').AsString; //_dosyaNo_;
        frmIlacSarf._gelisNO_ := _gelisNo_;//ADO_GecmisIlacTedavi.FieldByName('gelisNo').AsString;//_gelisNo_;
        frmilacsarf._islem_ := islem;
        frmIlacSarf.Tanilar (False);
        frmIlacSarf.Tag := TagfrmIlacSarf;
        frmIlacSarf.cxTab.Tabs[0].Caption := 'Ýlaçlar';
        frmIlacSarf.cxTab.Tabs[0].ImageIndex := 50;
        frmIlacSarf.ShowModal;
      finally
        FreeAndNil(frmIlacSarf);
      end;
     except
     end;
   End;


   if islem = ilacTedaviIlacDuzenle
   then
    if mrYes = ShowPopupForm('Tedavi Ýlaç Duzenle',islem)
    then begin

    end;

   if islem = ilacTedaviIlacSil
   then begin
     if mrYes = ShowMessageSkin('Ýlaç Tedaviden Çýkartýlacak , Emin misiniz?','','','msg')
     then begin
       sql := 'delete from HastaIlacTedavi where id = ' +  GridIlaclar.Dataset.FieldByName('id').AsString;
       datalar.QueryExec(sql);
     end;
   end;



end;

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


procedure TfrmUzmanMuayene.TedaviIzlemDoldur;
begin
    txtDVitaminKul.text  := ADO_UzmanMuayene.fieldbyname('Dvitamin').AsString;
    txtSinekalset.Text := ADO_UzmanMuayene.fieldbyname('Sinekalset').AsString;
    txtAntihipertansif.EditValue := ADO_UzmanMuayene.fieldbyname('Antihipertansif').AsString;

    try
      gelisSikayetSec(txtFosfor,ADO_UzmanMuayene.fieldbyname('FosforBagAjan').AsString);

      gelisSikayetSec(txtAnemi,ADO_UzmanMuayene.fieldbyname('Anemi').AsString);
    //  txtAnemi.Text := datalar.ADO_SQL.fieldbyname('Anemi').AsString;
    except
    end;

    if txtDVitaminKul.Text = '1 - Ihtiyacý Yok'
    Then txtDVitaminKul.Style.Color := clWhite
    Else txtDVitaminKul.Style.Color := clYellow;

   (*
    if txtAnemi.Text = '1 - Tedaviye ihtiyacý yok'
    Then txtAnemi.Style.Color := clWhite
    Else txtAnemi.Style.Color := clYellow;
     *)

    if txtAntihipertansif.Text = '1 - Kullanmýyor'
    Then txtAntihipertansif.Style.Color := clWhite
    Else txtAntihipertansif.Style.Color := clYellow;


    if txtSinekalset.Text = '2 - Kullanmýyor'
    Then txtSinekalset.Style.Color := clWhite
    Else txtSinekalset.Style.Color := clYellow;
end;

procedure TfrmUzmanMuayene.TetkikSonucGridKolonGizle;
begin
  OCAK.Visible := False;
  SUBAt.Visible := False;
  MART.Visible := False;
  NISAN.Visible := False;
  MAYIS.Visible := False;
  HAZIRAN.Visible := False;
  TEMMUZ.Visible := False;
  AGUSTOS.Visible := False;
  EYLUL.Visible := False;
  EKIM.Visible := False;
  KASIM.Visible := False;
  ARALIK.Visible := False;
end;


procedure TfrmUzmanMuayene.Yukle;
var
 _Tarih : String;
 i : integer;
 ado : TADOQuery;
begin
 // inherited;
         sql := 'select ug.*,g.*,d.*,h.*,s.tanimi merkezAd,s.ruhsatNo from uzmanGozlem ug ' +
                ' left join Hasta_gelisler g on g.dosyaNo = ug.dosyaNo and g.gelisNo = ug.gelisNo ' +
                ' left join DoktorlarT d on d.kod = substring(ug.doktor,1,4) ' +
                ' join HastaKart h on h.dosyaNo = ug.dosyaNo ' +
                ' left join SIRKETLER_TNM S on S.sirketKod = h.sirketKod ' +
                ' where ug.dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and ug.gelisNo = ' + QuotedStr(_gelisNo_);
   datalar.QuerySelect(ADO_UzmanMuayene,sql);


   TcxTextEdit(FindComponent('Tarih')).EditValue := ADO_UzmanMuayene.fieldbyname('Tarih').AsString;
   TcxTextEdit(FindComponent('id')).Text := ADO_UzmanMuayene.fieldbyname('id').AsString;

  // gelisSikayetSec(chkSistemSorgu,ADO_UzmanMuayene.fieldbyname('sistemSorgusu').AsString);
 //  TcxMemo(FindComponent('basboyun')).EditValue := ADO_UzmanMuayene.fieldbyname('basboyun').AsString;
 //  TcxMemo(FindComponent('akciger')).EditValue := ADO_UzmanMuayene.fieldbyname('akciger').AsString;
  // TcxMemo(FindComponent('kalp')).EditValue := ADO_UzmanMuayene.fieldbyname('kalp').AsString;
   //TcxMemo(FindComponent('abdomen')).EditValue := ADO_UzmanMuayene.fieldbyname('abdomen').AsString;
  // TcxMemo(FindComponent('Ekst')).EditValue := ADO_UzmanMuayene.fieldbyname('Ekst').AsString;
   TcxMemo(FindComponent('digerNot')).EditValue := ADO_UzmanMuayene.fieldbyname('digerNot').AsString;
  // TcxMemo(FindComponent('psiko')).EditValue := ADO_UzmanMuayene.fieldbyname('psiko').AsString;


   TcxCheckBox(FindComponent('FizikiMuayene')).EditValue := ADO_UzmanMuayene.fieldbyname('FizikiMuayene').AsString;
   TcxMemo(FindComponent('FizikiMuayeneDiger')).EditValue := ADO_UzmanMuayene.fieldbyname('FizikiMuayeneDiger').AsString;
   TcxCheckBox(FindComponent('DamarYolu')).EditValue := ADO_UzmanMuayene.fieldbyname('DamarYolu').AsString;
   TcxMemo(FindComponent('DamarYoluDiger')).EditValue := ADO_UzmanMuayene.fieldbyname('DamarYoluDiger').AsString;
   TcxCheckBox(FindComponent('Komp')).EditValue := ADO_UzmanMuayene.fieldbyname('Komp').AsString;
   TcxMemo(FindComponent('KompDiger')).EditValue := ADO_UzmanMuayene.fieldbyname('KompDiger').AsString;
   TcxCheckBox(FindComponent('Nutrisyon')).EditValue := ADO_UzmanMuayene.fieldbyname('Nutrisyon').AsString;
   TcxMemo(FindComponent('NutrisyonDiger')).EditValue := ADO_UzmanMuayene.fieldbyname('NutrisyonDiger').AsString;
   TcxImageComboKadir(FindComponent('sonuc')).EditValue := ADO_UzmanMuayene.fieldbyname('sonuc').AsString;


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
   TcxImageComboKadir(FindComponent('Diyalizor')).EditValue  := ADO_UzmanMuayene.fieldbyname('Diyalizor').AsString;

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
    TcxCustomEdit(FindComponent('ISI')).EditValue:= ADO_UzmanMuayene.fieldbyname('ISI').AsString;


    TcxImageComboKadir(FindComponent('HbsAg')).EditValue  := ADO_UzmanMuayene.fieldbyname('HbsAg').AsString;
    TcxImageComboKadir(FindComponent('AntiHbs')).EditValue  := ADO_UzmanMuayene.fieldbyname('AntiHbs').AsString;
    TcxImageComboKadir(FindComponent('AntiHCV')).EditValue  := ADO_UzmanMuayene.fieldbyname('AntiHCV').AsString;
    TcxImageComboKadir(FindComponent('HIV')).EditValue  := ADO_UzmanMuayene.fieldbyname('HIV').AsString;


 //  txtMalzemeSablon.Text := ADO_UzmanMuayene.fieldbyname('malzemeSablon').AsString;
 //  txtISI.Text := ADO_UzmanMuayene.fieldbyname('ISI').AsString;


    txtAciklama.Lines.Text := ADO_UzmanMuayene.fieldbyname('aciklama').AsString;

    TedaviIzlemDoldur;

    txtedaviSeyri.Text := ADO_UzmanMuayene.fieldbyname('tedaviSeyri').AsString;
    txtDAciklama.Text := ADO_UzmanMuayene.fieldbyname('DVaciklama').AsString;

 //   _Tarih_ := datalar.ADO_SQL.fieldbyname('bhdat').AsString;

   // txtCa.Text := datalar.ADO_SQL.fieldbyname('Ca').AsString;

   if not ADO_UzmanMuayene.Eof
   then begin
       cxKaydet.Enabled := True;
      cxIptal.Enabled := True;
   end
   else begin
    cxIptal.Enabled := False;
   end;


   _Tarih := NoktasizTarih(_provizyonTarihi_);
   sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih) + ',' + '1,''H'',' + QuotedStr(datalar.AktifSirket);
   datalar.QuerySelect(GridTetkikler.Dataset,sql);

    TetkikSonucGridKolonGizle;

    sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih) + ',' + '0,''H'',' + QuotedStr(datalar.AktifSirket);
    ado := TADOQuery.Create(nil);
    try
      datalar.QuerySelect(ado,sql);
      while not ado.Eof do
      begin
        i := gridTetkikList.GetColumnByFieldName(ado.fieldbyname('ad').AsString).Index;
        gridTetkikList.Columns[i].Visible := True;
        gridTetkikList.Columns[i].Width := 50;
        gridTetkikList.Columns[i].Index := ado.RecNo + 2;
        ado.Next;
      end;
    finally
      ado.Free;
    end;

    sql :=  ' exec sp_GecmisDonemIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' +QuotedStr(NoktasizTarih(_provizyonTarihi_));
    datalar.QuerySelect(GridIlaclar.Dataset,sql);
    cxGridIlacTedaviPlani.DataController.Groups.FullExpand;



  sql := 'select S.Tarih, H.* from HemsireTakip H  join hareketlerSeans S on S.sirano = H.siraNo ' +
         ' where dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + QuotedStr(_gelisNO_) +
         ' order by Tarih desc,saat';
  datalar.QuerySelect(TcxGridKadir(FindComponent('cxGridHemsireTakip')).Dataset,sql);

  datalar.QuerySelect(TcxGridKadir(FindComponent('cxGridKons')).Dataset,
  'select top 10 KF.Tarih,K.ADI,KF.BulguSonuc from KonsultasyonForm KF ' +
  'join OSGB_MASTER.dbo.SNKlinikler K on KF.bolum = K.KODU ' +
  ' where dosyaNo = ' + QuotedStr(_dosyaNO_) +
  ' order by Tarih Desc ');

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

procedure TfrmUzmanMuayene.M1Click(Sender: TObject);
begin
  inherited;
   cxIptal.Click;
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
                       ' WHERE ug.dosyaNo = ' + QuotedStr(_dosyaNo_) + ' AND gelisNo = ' + _gelisNo_ +
                       ' order by Tarih desc ';
                Datasets.Dataset2 := datalar.QuerySelect(sql);



                sql := ' DECLARE @s VARCHAR(200) ' +
                       ' SELECT @s = sistemSorgusu FROM uzmangozlem  ' +
                       ' WHERE dosyaNo = ' + QuotedStr(_dosyaNo_) + ' AND gelisNo = ' + _gelisNo_ +

                       ' SELECT datavalue , s.tanim from dbo.strtotable(@s,'','') ' +
                       ' JOIN Sistemsorgulari s ON cast(s.kod AS VARCHAR) = DataValue ' +
                       ' WHERE isnull(DataValue,'''') <> '''' ';
                Datasets.Dataset1 := datalar.QuerySelect(sql);
                Datasets.Dataset3 := datalar.ADO_AktifSirket;
                Datasets.Dataset4 := datalar.ADO_aktifSirketLogo;

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
    -10  : begin
               sql := 'exec  sp_IlacTedaviTakipPIVOT @dosyaNo = ' + QuotedStr(_dosyaNo_) +
                                                   ',@yil = ' + QuotedStr(NoktasizTarih(_provizyonTarihi_)) +
                                                   ',@sirketKod = ' + QuotedStr(datalar.AktifSirket);
                Datasets.Dataset1 := datalar.QuerySelect(sql);

                PrintYap('051','Ýlaç Tedavi Form','',Datasets,pTNone);

           end;


    end;



end;

procedure TfrmUzmanMuayene.cxKaydetClick(Sender: TObject);
var
  sql : string;
begin
  datalar.KontrolUserSet := False;
  if FormInputZorunluKontrol(self) Then Abort;
  if datalar.KontrolUserSet = True then exit;


case TControl(sender).Tag  of
 Kaydet : begin
               try
                if TcxTextEdit(FindComponent('id')).Text <> ''
                then begin
                  sql := 'update UzmanGozlem ' +
                          'set Tarih =  ' + TcxDateEditKadir(FindComponent('Tarih')).GetSQLValue +
                          ',doktor =  ' + QuotedStr(varToStr(TcxImageComboKadir(FindComponent('doktor')).EditValue)) +
                        //  ',basboyun = ' + QuotedStr(varTostr(TcxMemo(FindComponent('basboyun')).EditValue)) +
                       //   ',akciger = ' + QuotedStr(varTostr(TcxMemo(FindComponent('akciger')).EditValue)) +
                       //   ',kalp = ' +  QuotedStr(varTostr(TcxMemo(FindComponent('kalp')).EditValue)) +
                       //   ',abdomen = ' + QuotedStr(varTostr(TcxMemo(FindComponent('abdomen')).EditValue)) +
                       //   ',Ekst = ' + QuotedStr(varTostr(TcxMemo(FindComponent('Ekst')).EditValue)) +
                       //   ',sistemSorgusu = ' + QuotedStr(gelisSikayetSecili(chkSistemSorgu)) +
                      //    ',psiko = ' + QuotedStr(varTostr(TcxMemo(FindComponent('psiko')).EditValue)) +
                          ',digerNot = ' + QuotedStr(varTostr(TcxMemo(FindComponent('digerNot')).EditingValue)) +
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
                          ',ISI = ' + QuotedStr(varTostr(TcxTextEdit(FindComponent('ISI')).Text))+
                          ',sonuc = ' + QuotedStr(varTostr(TcxTextEdit(FindComponent('sonuc')).EditingValue)) +
                          ',FizikiMuayene = ' + QuotedStr(varTostr(TcxTextEdit(FindComponent('FizikiMuayene')).EditingValue)) +
                          ',FizikiMuayeneDiger = ' + QuotedStr(varTostr(TcxMemo(FindComponent('FizikiMuayeneDiger')).EditingValue))  +
                          ',DamarYolu = ' +  QuotedStr(varTostr(TcxCheckBox(FindComponent('DamarYolu')).EditingValue)) +
                          ',DamarYoluDiger = ' + QuotedStr(varTostr(TcxMemo(FindComponent('DamarYoluDiger')).EditingValue)) +
                          ',Komp = ' + QuotedStr(varTostr(TcxCheckBox(FindComponent('Komp')).EditingValue)) +
                          ',KompDiger = ' + QuotedStr(varTostr(TcxMemo(FindComponent('KompDiger')).EditingValue)) +
                          ',Nutrisyon = ' +  QuotedStr(varTostr(TcxCheckBox(FindComponent('Nutrisyon')).EditingValue)) +
                          ',NutrisyonDiger = ' +QuotedStr(varTostr(TcxMemo(FindComponent('NutrisyonDiger')).EditingValue)) +
                          ' where id = ' + TcxTextEdit(FindComponent('id')).Text;


                  datalar.QueryExec(sql);

                          sql := 'update Hasta_gelisler ' +
                                 ' set aciklama = ' + ifThen(trimleft(txtAciklama.lines.Text) = '' , 'NULL', QuotedStr(trimleft(txtAciklama.lines.Text))) +
                               //  ',OrnekNo = ' + QuotedStr(txtOrnekNo.Text) +
                               //  ',CikisOrnekNo = ' + QuotedStr(txtOrnekNoCikis.Text) +
                                 ',DVitamin = ' + QuotedStr(txtDVitaminKul.text) +
                                 ',Anemi = ' + QuotedStr(gelisSikayetSecili(txtAnemi)) +
                                 ',tedaviSeyri = ' + QuotedStr(txtedaviSeyri.Text) +
                                 ',DVaciklama = ' + QuotedStr(txtDAciklama.Text) +
                                 ',Sinekalset = ' + QuotedStr(txtSinekalset.Text) +
                                 ',Antihipertansif = ' + QuotedStr(txtAntihipertansif.Text) +
                                 ',FosforBagAjan = ' + QuotedStr(gelisSikayetSecili(txtFosfor)) +
                                 ' where dosyaNO = ' + QuotedStr(_dosyaNo_) + ' and gelisNO = ' + _gelisNo_;
                  datalar.QueryExec(sql);
                end
                else
                begin
                  sql := 'insert into UzmanGozlem (dosyaNo,gelisNo,gelisSIRANO,Tarih,doktor,basboyun,sistemSorgusu,psiko,digerNot, ' +
                           'kurukilo,D,Diyalizor,GIRISYOLU,HEPARIN,HEPARINUYG,HEPARINTIP,YA,DiyalizorCinsi,DiyalizorTipi,HCOOO,APH,Na,Igne,IgneV,ISI  ) ' +
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
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('IgneV')).Text)) + ','
                                   + QuotedStr(varTostr(TcxTextEdit(FindComponent('ISI')).Text)) +

                                    ') select SCOPE_IDENTITY() id';
                  TcxTextEdit(FindComponent('id')).Text := datalar.QuerySelect(sql).FieldByName('id').AsString;
                end;

                datalar.QueryExec('update hastaKart set ' +
                                  'HbsAg = ' + QuotedStr(VarToStr(TcxImageComboKadir(FindComponent('HbsAg')).EditValue)) +
                                  ',AntiHbs = ' + QuotedStr(VarToStr(TcxImageComboKadir(FindComponent('AntiHbs')).EditValue)) +
                                  ',AntiHCV = ' + QuotedStr(VarToStr(TcxImageComboKadir(FindComponent('AntiHCV')).EditValue)) +
                                  ',Hiv = ' + QuotedStr(VarToStr(TcxImageComboKadir(FindComponent('Hiv')).EditValue)) +
                                  ' where dosyaNO = ' + QuotedStr(_dosyaNo_));


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

procedure TfrmUzmanMuayene.E1Click(Sender: TObject);
begin
    case TMenuItem(sender).Tag of
       ilacTedaviIlacEkle,
       ilacTedaviIlacDuzenle,
       ilacTedaviIlacSil
       : begin
            ilacEkle(TMenuItem(sender).Tag);
            GridIlaclar.Dataset.Requery();

            ADO_UzmanMuayene.Requery();
            TedaviIzlemDoldur;

         end;
    end;
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
  sql : string;
begin
 //cxYeni.Visible := false;
  inherited;
  Tag := TagfrmHastaIlacTedavi;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'id';
  TableName := _TableName_;
  cxPanel.Visible := False;
 // cxPanelButtonVisible(False,True,False,False);
  cxTab.Width := 200;
  Menu := PopupMenu1;


  _Tarih_ := TcxDateEditKadir.Create(self);
  Tarih.Name := '_Tarih_';
  setDataStringKontrol(self,_Tarih_, 'Tarih','Muayene Tarih',Kolon1,'bb',125);
 // TcxTextEdit(FindComponent('Tarih')).EditValue := date;

  setDataStringIC(self,'doktor','Doktor',Kolon1,'bb1',125,'DoktorlarT','kod','tanimi',' Durum = ''Aktif'' and sirketKod = ' + QuotedStr(datalar.AktifSirket));
  TcxImageComboKadir(FindComponent('doktor')).Filter := DoktorlarFilter('E');
  setDataString(self,'id','',Kolon1,'',40,False,'',True,-100);
  TdxLayoutGroup(FindComponent('dxLaid')).Visible := False;

  setDataStringBLabel(self,'lblBostatirMarker',Kolon1,'',250,'Marker','','',True,255,taCenter);
  setDataStringIC(self,'HbsAg','HbsAg',Kolon1,'',80,'','','','',1,'1;Pozitif,-1;Negatif');
  setDataStringIC(self,'AntiHbs','AntiHbs',Kolon1,'',80,'','','','',1,'1;Pozitif,-1;Negatif');
  setDataStringIC(self,'AntiHCV','AntiHCV',Kolon1,'',80,'','','','',1,'1;Pozitif,-1;Negatif');
  setDataStringIC(self,'HIV','AntiHIV',Kolon1,'',80,'','','','',1,'1;Pozitif,-1;Negatif');


  setDataStringBLabel(self,'lblBostatir1',Kolon1,'',250,'DOKTOR GÖZLEMÝ','','',True,255,taCenter);

  setDataStringChk(self,'FizikiMuayene','',Kolon1,'',150,ctint,'Fiziki Muayene : Normal ');
  setDataStringMemo(self,'FizikiMuayeneDiger','',Kolon1,'',250,40);

  setDataStringChk(self,'DamarYolu','',Kolon1,'',150,ctint,'DamarYolu : Sorun Yok ');
  setDataStringMemo(self,'DamarYoluDiger','',Kolon1,'',250,40);

  setDataStringChk(self,'Komp','',Kolon1,'',150,ctint,'Komplikasyon : Yok ');
  setDataStringMemo(self,'KompDiger','',Kolon1,'',250,40);

  setDataStringChk(self,'Nutrisyon','',Kolon1,'',150,ctint,'Nütrisyon Dur. : Ýyi ');
  setDataStringMemo(self,'NutrisyonDiger','',Kolon1,'',250,40);

  setDataStringBLabel(self,'lblBostatir6',Kolon1,'',250,'Uzman Not','','',True,255,taCenter);
  setDataStringMemo(self,'digerNot','',Kolon1,'u',250,40);

  setDataStringIC(self,'sonuc','SONUÇ',Kolon1,'',125,'UzmanGozlemDegerlendirmeTip','Kod','tanimi','',1);


 // setDataStringBLabel(self,'GridTetkiklerBaslik1',Kolon2,'',450,'Son 6 Aylýk Tetkik Sonuç', '', '', True, clRed, taCenter);
 // setDataStringKontrol(self,GridTetkikler, 'GridTetkikler1','',Kolon2,'',450,250);



(*
  setDataStringKontrol(self,chkSistemSorgu, 'chkSistemSorgu','Sistem Sorgularý',Kolon1,'pnl',400,250);
  setDataStringBLabel(self,'lblBostatir1',Kolon2,'',465,'Fiziki Muayene','','',True,255,taCenter);
  setDataStringMemo(self,'basboyun','Baþ Boyun',Kolon2,'',400,60);
  setDataStringMemo(self,'akciger','Akciðer',Kolon2,'',400,60);
  setDataStringMemo(self,'kalp','Kalp',Kolon2,'',400,60);
  setDataStringMemo(self,'abdomen','Abdomen',Kolon2,'',400,60);
  setDataStringMemo(self,'Ekst','Ekstremiteler',Kolon2,'',400,60);
  setDataStringMemo(self,'psiko','Diyatisten ',Kolon2,'',400,60);
  *)

  setDataStringBLabel(self,'tedaviOrder',Kolon2,'',250,'Diyaliz Order', '', '', True, clRed, taCenter);
  setDataStringCurr(self,'kurukilo','Kuru Kilo',Kolon2,'',80,'0.00',1);
  DiyalizTedaviControlleriniFormaEkle(Kolon2,False);

  sql := 'select S.Tarih, H.* from HemsireTakip H  join hareketlerSeans S on S.sirano = H.siraNo ' +
         ' where dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + QuotedStr(_gelisNO_) +
         ' order by Tarih desc,saat';

  SetGrid(CreateGrid('cxGridHemsireTakip',self),'Tarih,Saat,TA_NABIZ,TA_NABIZ_K,NABIZ,ARTPON,VENBAS,ARTBAS,UF,Na,ISI,gozlem',
               'TcxTextEditProperties,TcxTimeEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,'+
               'TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties,TcxTextEditProperties',
               'Tarih,Saat,TANS.,TANSK.,NABIZ,ARTPON,VENBAS,ARTBAS,UF,Na,ISI,HemþireNot',
               '80,80,50,50,50,50,50,50,50,50,50,200',
               '0,0,0,0,0,0,0,0,0,0,0,0',
               'True,True,True,True,True,True,True,True,True,True,True,True',
               '0,0,0,0,0,0,0,0,0,0,0,0'
               );
               //  '!999-00#;1; ';


  setDataStringBLabel(self,'cxGridHemsireTakip',Kolon2,'',300,'Hemþire Gözlem', '', '', True, clRed, taCenter);
  setDataStringKontrol(self,TcxGridKadir(FindComponent('cxGridHemsireTakip')) ,'cxGridHemsireTakip','',Kolon2,'',300,250);
  datalar.QuerySelect(TcxGridKadir(FindComponent('cxGridHemsireTakip')).Dataset,sql);
  TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridHemsireTakip')).Levels[0].GridView).Navigator.Visible := False;
  TcxGridKadir(FindComponent('cxGridHemsireTakip')).Dataset.Name := 'cxGridHemsireTakipDS';
  TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridHemsireTakip')).Levels[0].GridView).Columns[0].GroupBy(0);


 // TcxImageComboKadir(FindComponent('HbsAg')).Properties.Buttons[0].Enabled := False;
 // TcxImageComboKadir(FindComponent('AntiHbs')).Properties.Buttons[0].Enabled  := False;
 // TcxImageComboKadir(FindComponent('AntiHCV')).Properties.Buttons[0].Enabled  := False;
 // TcxImageComboKadir(FindComponent('HIV')).Properties.Buttons[0].Enabled  := False;

  setDataStringBLabel(self,'GridTetkiklerBaslik',Kolon3,'',450,'Son 6 Aylýk Tetkik Sonuç', '', '', True, clRed, taCenter);
  setDataStringKontrol(self,GridTetkikler, 'GridTetkikler','',Kolon3,'',450,250);
  setDataStringBLabel(self,'GridIlaclarBaslik',Kolon3,'',450,'Ýlaç Tedavi Order', '', '', True, clRed, taCenter);
  setDataStringKontrol(self,GridIlaclar, 'GridIlaclar','',Kolon3,'', 450,250);


  setDataStringBLabel(self,'izlemOrder',Kolon4,'ipb',250,'Tedavi Ýzlem', '', '', True, clRed, taCenter);
  setDataStringKontrol(self,izlemPanel, 'izlemPanel','',Kolon4,'ip',250,450);

  SetGrid(CreateGrid('cxGridKons',self),'Tarih,ADI,BulguSonuc',
               'TcxTextEditProperties,TcxTextEditProperties,TcxMemoProperties',
               'Tarih,Bolum,BulguSonuc',
               '80,80,400',
               '0,0,0',
               'True,True,True',
               '0,0,0'
               );
               //  '!999-00#;1; ';


  setDataStringBLabel(self,'cxGridKons',Kolon4,'ipb',350,'Hasta Konsultasyonlarý', '', '', True, clRed, taCenter);
  setDataStringKontrol(self,TcxGridKadir(FindComponent('cxGridKons')) ,'cxGridKons','',Kolon4,'ip',350,450);
  TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridKons')).Levels[0].GridView).Navigator.Visible := False;
  TcxGridKadir(FindComponent('cxGridKons')).Dataset.Name := 'cxGridKonsDS';

  TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridKons')).Levels[0].GridView).OptionsView.DataRowHeight := 0;
  TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridKons')).Levels[0].GridView).OptionsView.CellAutoHeight := True;
  TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridKons')).Levels[0].GridView).OptionsData.Editing := True;
  TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridKons')).Levels[0].GridView).Columns[0].Editing := False;
  TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridKons')).Levels[0].GridView).Columns[1].Editing := False;
  TcxGridDBTableView(TcxGridKadir(FindComponent('cxGridKons')).Levels[0].GridView).Columns[2].Editing := False;

 // Kolon4.Visible := false;

  SayfaCaption('Uzman Muayene','','','','');


end;

end.
