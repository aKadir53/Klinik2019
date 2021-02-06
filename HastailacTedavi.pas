unit HastailacTedavi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,GetFormClass,TedaviKart,
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
  Vcl.ExtCtrls, cxSplitter;

type
  TfrmHastaIlacTedavi = class(TfrmTedaviBilgisi)
    PopupMenu1: TPopupMenu;
    cxIlacTedaviPanel: TcxGroupBox;
    N1: TMenuItem;
    T1: TMenuItem;
    N2: TMenuItem;
    S1: TMenuItem;
    ADO_GecmisIlacTedavi: TADOQuery;
    DataSource8: TDataSource;
    frmHastaIlacTedavi_cxGroupBox1: TcxGroupBox;
    frmHastaIlacTedavi_cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid15: TcxGrid;
    cxGridIlacTedaviPlani: TcxGridDBTableView;
    cxGridIlacTedaviPlanigk: TcxGridDBColumn;
    cxGridIlacTedaviPlaniust: TcxGridDBColumn;
    cxGridIlacTedaviPlaniilac: TcxGridDBColumn;
    cxGridIlacTedaviPlaniname1: TcxGridDBColumn;
    cxGridIlacTedaviPlanigrup: TcxGridDBColumn;
    cxGridIlacTedaviPlaniname2: TcxGridDBColumn;
    cxGridIlacTedaviPlanidoz: TcxGridDBColumn;
    cxGridIlacTedaviPlaniperyot: TcxGridDBColumn;
    cxGridIlacTedaviPlanimiktar: TcxGridDBColumn;
    cxGridIlacTedaviPlanidozperyotmiktar: TcxGridDBColumn;
    cxGridIlacTedaviPlanidonem: TcxGridDBColumn;
    cxGridIlacTedaviPlaniid: TcxGridDBColumn;
    cxGridIlacTedaviPlanigelisNo: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn1: TcxGridDBColumn;
    cxGridLevel15: TcxGridLevel;
    ADO_IlacTedavi: TADOQuery;
    DataSource7: TDataSource;
    DataSource15: TDataSource;
    ADO_IlacGelis: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    K: TcxStyle;
    Yesil_siyah: TcxStyle;
    Sari_Siyah: TcxStyle;
    R1: TMenuItem;
    cxGridIlacTedaviPlaniColumn2: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn3: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn4: TcxGridDBColumn;
    K1: TMenuItem;
    cxGridIlacTedaviPlaniColumn5: TcxGridDBColumn;
    y1: TMenuItem;
    E1: TMenuItem;
    N3: TMenuItem;
    D1: TMenuItem;
    S2: TMenuItem;
    cxSplitter1: TcxSplitter;
    cxGridIlacTedaviPlaniColumn6: TcxGridDBColumn;
    cxGridIlacTedaviPlaniColumn7: TcxGridDBColumn;
    Son6AylikTetkikSonu1: TMenuItem;
    Tetkik: TcxTabSheet;
    DataSource6: TDataSource;
    ADO_Tetkikler: TADOQuery;
    cxGrid3: TcxGrid;
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
    cxSplitter2: TcxSplitter;
    A1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure IlacTedavi(_dosyaNo , gelisNo,_Tarih : string ; islem : integer = 99999);
    procedure ItemClick(Sender: TObject);
    procedure cxGridIlacTedaviPlaniStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxButtonCClick(Sender: TObject);
    procedure ReceteyeEkle;
    procedure ilacTedaviPlaniYazdir(_Tarih_ : string);
    procedure TetkikIlacTedaviYazdir(_Tarih_ : string);
    procedure ilacEkle(islem : integer);
    procedure Yukle;override;
    procedure SmsGonder;
    procedure TetkikSonucGridKolonGizle;
    procedure Listele;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
      receteForm : TGirisForm;
  function Init(Sender : TObject) : Boolean; override;
    { Public declarations }
  end;

const _TableName_ = 'IlacTedavi';
      formGenislik = 1200;
      formYukseklik = 600;
var
  frmHastaIlacTedavi: TfrmHastaIlacTedavi;
  _islem_ : integer;

implementation
      uses Data_Modul,AnaUnit,HastaRecete,IlacSarfListesi;
{$R *.dfm}


procedure TfrmHastaIlacTedavi.TetkikSonucGridKolonGizle;
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


procedure TfrmHastaIlacTedavi.Listele;
var
  sql ,_Tarih: string;
  i : integer;
  ado : TADOQuery;
begin
  _Tarih := NoktasizTarih(_provizyonTarihi_);
  try
    sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih) + ',' + '1,''H'',' + QuotedStr(datalar.AktifSirket);
    datalar.QuerySelect(ADO_Tetkikler,sql);

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
  except
  end;
end;


procedure TfrmHastaIlacTedavi.ReceteyeEkle;
var
 x ,j,y : integer;
 barkod ,ilac, ilacadi,peryot,adet,peryotadet,doz,kyol,kutuAdet,miktar : string;
 gelisNo,id ,sql,_tani_,keys: string;
 unite : real;
 ack : TStringList;
 ado : TADOQuery;
begin
   for x := 0 to cxGridIlacTedaviPlani.Controller.SelectedRowCount - 1 do
   begin
             Application.ProcessMessages;
             ilac := cxGridIlacTedaviPlani.DataController.GetValue(
                                            cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('ilac').Index);

             ilacadi := trimleft(cxGridIlacTedaviPlani.DataController.GetValue(
                                            cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('ilacname').Index));

             doz := cxGridIlacTedaviPlani.DataController.GetValue(
                                            cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('doz').Index);

             miktar := cxGridIlacTedaviPlani.DataController.GetValue(
                                            cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('miktar').Index);

             peryot := cxGridIlacTedaviPlani.DataController.GetValue(
                                            cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('peryot').Index);

             gelisno := cxGridIlacTedaviPlani.DataController.GetValue(cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                                            cxGridIlacTedaviPlani.DataController.GetItemByFieldName('gelisNo').Index);

             kyol := cxGridIlacTedaviPlani.DataController.GetValue(cxGridIlacTedaviPlani.Controller.SelectedRows[x].RecordIndex,
                           cxGridIlacTedaviPlani.DataController.GetItemByFieldName('kyol').Index);

             kutuAdet := '1';



           if Assigned(receteForm)
           then begin
             if TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.Locate('ilacKodu;receteId',VarArrayOf([ilac,TfrmHastaRecete(receteForm).ADO_Recete.fieldbyname('id').AsString]),[]) = false
             Then Begin
                TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.Append;
                TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := ilac;
                TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := ilacadi;
                TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := peryot;
                TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := '1';
                TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('adet').AsString := kutuadet;
                TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanimAdet2').ASstring := miktar;
                TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString := doz;
                TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := ifThen(kyol = '' ,'1',kyol);

                try
                   unite := IlacKoduToUnite(ilac,_dosyaNo_,_gelisNo_,peryot,miktar) * strtofloat(kutuadet);
                   TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := peryot;
                //   ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := miktar;
                except
                end;
                  TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString := floattostr(unite);
                  TfrmHastaRecete(receteForm).ADO_RECETE_DETAY.Post;


                ack := IlacReceteAciklama(_dosyaNo_,_gelisNo_,ilac,
                                        floattostr(unite*strtofloat(kutuadet)));


                 sql := 'delete from ReceteIlacAciklama where receteDetayId = ' + frmHastaRecete.ADO_RECETE_DETAY.fieldbyname('id').AsString;
                 datalar.QueryExec(sql);

                 TfrmHastaRecete(receteForm).ADO_ReceteIlacAciklama.Active := false;
                 TfrmHastaRecete(receteForm).ADO_ReceteIlacAciklama.Active := true;

                 for j := 0 to ack.Count-1 do
                 begin
                    TfrmHastaRecete(receteForm).ADO_ReceteIlacAciklama.Append;
                    TfrmHastaRecete(receteForm).ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := copy(ack[j],3,500);
                    TfrmHastaRecete(receteForm).ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := trim(copy(ack[j],1,2));
                    TfrmHastaRecete(receteForm).ADO_ReceteIlacAciklama.Post;
                    if copy(TfrmHastaRecete(receteForm).ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString,1,4) = 'Hata'
                    Then ShowMessageSkin('Dikkat , Doz Bilgisini Kontrol Ediniz','','','info');
                 end;

                 _tani_ := IlacReceteTaniEkle(ilac);
                 y := pos(';',_tani_)-1;
                 keys := copy(_tani_,1,y);
                 if copy(_tani_,1,y) <> ''
                 Then Begin
                   if TfrmHastaRecete(receteForm).ADO_receteTani.Locate('taniKodu;receteId',VarArrayOf([keys,TfrmHastaRecete(receteForm).ADO_Recete.fieldbyname('id').AsString]) ,[]) = False
                   Then Begin
                     TfrmHastaRecete(receteForm).ADO_receteTani.Append;
                     TfrmHastaRecete(receteForm).ADO_receteTani.fieldbyname('taniKodu').AsString := copy(_tani_,1,pos(';',_tani_)-1);
                     TfrmHastaRecete(receteForm).ADO_receteTani.fieldbyname('tani').AsString := copy(_tani_,pos(';',_tani_)+1,100);
                     TfrmHastaRecete(receteForm).ADO_receteTani.Post;
                   End;
                 End;
             End; //locate end
           End; // Assigned end
   End; // for end
End;



procedure TfrmHastaIlacTedavi.SmsGonder;
var
 tel , gelis , ilaclar , msj : string;
 ado : TADOQuery;
begin
  if mrYes = ShowMessageSkin('Ýlaç Kullanýmýnýz SMS ile Bildirilecek','','','msg')
  then begin
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      try
        gelis := ADO_GecmisIlacTedavi.FieldByName('gelisNo').AsString;
        sql := 'select ilacname ,' +
               'case when peryot = 1 THEN ''Günde '' ELSE CASE WHEN peryot = 7 THEN ''Haftada '' ELSE CASE WHEN peryot = 15 THEN ''2 Haftada '' ELSE ''Ayda '' END END END '+
               ' + cast(doz AS VARCHAR)  + '' kere '' + cast(miktar AS VARCHAR) + '' Adet'' dozperyotmiktar' +
               ' from HastaIlacTedavi H ' +
               ' left join ILACLAR I on I.code = H.ilac ' +
               ' where dosyaNo = ' + QuotedStr(_dosyaNo_) +
               ' and gelisNo = ' + gelis + ' and isnull(I.tip,1) = 1';
        datalar.QuerySelect(ado,sql);

        while not ado.eof do
        begin
          ilaclar := ilaclar + ' ' + copy(ado.FieldByName('ilacname').AsString,1,10)+ '[' +
                       ado.FieldByName('dozperyotmiktar').AsString+']' + #13;
           ado.next;
        end;

      finally
        ado.Free;
      end;

      tel := dosyaNoHastaTel(_dosyaNO_,_mobilTel_);
      msj := 'Ýlaç Bilgileriniz : ' + ilaclar + #13 +
             ' Saðlýklý Günler Dileriz';

      if tel = ''
      then begin
        ShowMessageSkin('Mobil Telefon boþ olmamalýdýr','','','info');
        exit;
      end;
      SMSSend(tel,msj,_HastaAdSoyad_);


  end;
end;

procedure TfrmHastaIlacTedavi.Yukle;
begin
  inherited;
    sql :=  ' exec sp_GecmisDonemIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' +QuotedStr(NoktasizTarih(_provizyonTarihi_));
   datalar.QuerySelect(ADO_GecmisIlacTedavi,sql);
  // GecmisIlacTree.FullExpand;

   Listele;

 //  sql :=  ' exec sp_GecmisDonemIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' +QuotedStr(NoktasizTarih(_provizyonTarihi_)) + ',0';
 //  datalar.QuerySelect(ADO_IlacGelis,sql);
end;

procedure TfrmHastaIlacTedavi.IlacTedavi(_dosyaNo , gelisNo,_Tarih : string ; islem : integer  = 99999);
var
  sql : string;
begin
(*
   _islem_ := islem;
   if islem = ReceteIlacEkleIlacTedavi then R1.Visible := True else R1.Visible := false;

   sql :=  'exec sp_IlacTedaviFormuOlustur ' + QuotedStr(_dosyaNo) + ',' + gelisNo;
   datalar.QuerySelect(ADO_IlacTedavi,sql);

   sql :=  ' exec sp_GecmisDonemIlacTedavi ' + QuotedStr(_dosyaNo) + ',' +QuotedStr(_Tarih);
   datalar.QuerySelect(ADO_GecmisIlacTedavi,sql);
  // GecmisIlacTree.FullExpand;

   sql :=  ' exec sp_GecmisDonemIlacTedavi ' + QuotedStr(_dosyaNo) + ',' +QuotedStr(_Tarih) + ',0';
   datalar.QuerySelect(ADO_IlacGelis,sql);
   *)
end;




procedure TfrmHastaIlacTedavi.TetkikIlacTedaviYazdir(_Tarih_ : string);
var
  sql : string;
 // ado,ado0,ado00,ado1,ado2,ado3,ado4,ado5,ado6,ado7,ado8,ado9,ado10,ado11,ado12 : TADOQuery;
  Datasets : TDataSetKadir;
begin
    DurumGoster(True);
    try
      sql := 'select * from hastakart where dosyaNo = ' + QuotedStr(_dosyaNo_);
      Datasets.Dataset0 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih_) + ',@f=-1,@sirketKod = ' + QuotedStr(datalar.AktifSirket) ;
      Datasets.Dataset1 := datalar.QuerySelect(sql);


      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('OCAK');
      Datasets.Dataset00 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('SUBAT');
      Datasets.Dataset2 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('MART');
      Datasets.Dataset3 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('NISAN');
      Datasets.Dataset4 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('MAYIS');
      Datasets.Dataset5 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('HAZIRAN');
      Datasets.Dataset6 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('TEMMUZ');
      Datasets.Dataset7 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('AGUSTOS');
      Datasets.Dataset8 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('EYLUL');
      Datasets.Dataset9 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('EKIM');
      Datasets.Dataset10 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('KASIM');
      Datasets.Dataset11 := datalar.QuerySelect(sql);

      sql := 'exec sp_HastaIlacTedavi ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_tarih_) + ',@f=1,@ay=' + QuotedStr('ARALIK');
      Datasets.Dataset12 := datalar.QuerySelect(sql);

      PrintYap('202','Hasta Tetkik Ýlaç Formu',inttostr(TagfrmHastaIlacTedavi),Datasets);

    finally
      DurumGoster(False);
    end;

end;
procedure TfrmHastaIlacTedavi.ilacTedaviPlaniYazdir(_Tarih_ : string);
var
 // ado , ado00, ado1,ado2,ado3,ado4,ado5,ado6,ado7,ado8,ado9,ado10,ado11,ado12 : TADOQuery;
  sql : string;
  Datasets : TDataSetKadir;
begin

   sql := 'select * from HastaKart where dosyaNo = ' + QuotedStr(_dosyaNo_);
   Datasets.Dataset0 := datalar.QuerySelect(sql);

 //  sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr('');
 //  Datasets.Dataset00 := datalar.QuerySelect(sql);

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'01');
   Datasets.Dataset1 := datalar.QuerySelect(sql);;

   Datasets.Dataset2 := datalar.ADO_AktifSirket;

   Datasets.Dataset3 := datalar.ADO_aktifSirketLogo  ;



(*
   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'02');
   Datasets.Dataset2 := datalar.QuerySelect(sql);;

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'03');
   Datasets.Dataset3 := datalar.QuerySelect(sql);

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'04');
   Datasets.Dataset4 := datalar.QuerySelect(sql);

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'05');
   Datasets.Dataset5 := datalar.QuerySelect(sql);

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'06');
   Datasets.Dataset6 := datalar.QuerySelect(sql);

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'07');
   Datasets.Dataset7 :=  datalar.QuerySelect(sql);

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'08');
   Datasets.Dataset8 := datalar.QuerySelect(sql);

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'09');
   Datasets.Dataset9 := datalar.QuerySelect(sql);;

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'10');
   Datasets.Dataset10 := datalar.QuerySelect(sql);;

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'11');
   Datasets.Dataset11 := datalar.QuerySelect(sql);;

   sql := 'exec sp_IlacTedaviFormuYazdir ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(copy(_Tarih_,1,4)+'12');
   Datasets.Dataset12 :=  datalar.QuerySelect(sql);;
    *)

   PrintYap('051','IlacTedavi',inttostr(TagfrmHastaIlacTedavi),Datasets);


end;

procedure TfrmHastaIlacTedavi.ItemClick(Sender: TObject);
begin

    case TMenuItem(sender).Tag of
    -1 : begin


         end;
    -2 : begin

         end;
    end;
end;

procedure TfrmHastaIlacTedavi.cxButtonCClick(Sender: TObject);
var
 Form : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
  Datasets : TDataSetKadir;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;


  GirisFormRecord.F_dosyaNO_ := _dosyaNO_;
  GirisFormRecord.F_gelisNo_ := _gelisNo_;

    case TMenuItem(sender).Tag of
    -3 : begin

               try
                 sql := 'select * from HastaKart where dosyaNo = ' + QuotedStr(_dosyaNO_);
                 datalar.QuerySelect(sql);
                 Datasets.Dataset0 := datalar.QuerySelect(sql);


                 sql := 'select ATC.kod,ATCTur.tanimi,it.*,ii.ilacAdi NAME1  '+
                        ' from hastaIlactedavi it '+
                       // ' LEFT JOIN GelisDetayTedaviler gdt ON gdt.stokKodu = it.ilac AND gdt.dosyaNo = it.dosyaNo AND gdt.gelisNo = it.gelisNo ' +
                        ' left join OSGB_MASTER.dbo.ilacListesi ii on ii.barkod = it.ilac ' +
                        ' left join OSGB_MASTER.dbo.ATC_Kodlari ATC on ATC.kod = ii.EtkenMadde ' +
                        ' left join OSGB_MASTER.dbo.ATC_Kodlari_Tur ATCTur on ATCTur.kod = ATC.TurKodu ' +
                        ' join Hasta_gelisler g on g.dosyaNO = it.dosyaNo and it.gelisno = g.gelisNo ' +
                        ' where  it.dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and it.gelisNo = ' + _gelisNo_ + ' and it.uygulamaYeri = ''0''';

                 Datasets.Dataset1 := datalar.QuerySelect(sql);



                 PrintYap('056','Hasta Ýlaç Kullaným',inttostr(TagfrmHastaIlacTedavi),Datasets);

              finally
                DurumGoster(False);
              end;

         end;
    -4 : begin
           SmsGonder;
         end;
    -5 : begin
           ReceteyeEkle;
           K1.Click;
         end;

   ilacTedaviIlacEkle,
   ilacTedaviIlacDuzenle,
   ilacTedaviIlacSil
       : begin
            ilacEkle(TMenuItem(sender).Tag);
            ADO_GecmisIlacTedavi.Requery();
         end;

   -1 : begin
          ilacTedaviPlaniYazdir(ADO_GecmisIlacTedavi.FieldByName('donem').AsString);
        end;

  -2 : begin
          TetkikIlacTedaviYazdir(FormatDateTime('YYYYMMDD', strTodate(_provizyonTarihi_)));

       end;
 -31 : begin
          GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
          GirisFormRecord.F_dosyaNO_ := _dosyaNO_;
          GirisFormRecord.F_provizyonTarihi_ := _provizyonTarihi_;

          Form := FormINIT(TagfrmSon6AylikTetkikSonuc,GirisFormRecord);
          if Form <> nil then Form.showModal;
        //  Son6AylikTetkikSonuc(_dosyaNO_,_provizyonTarihi_);

       end;

 -100 : begin
         DurumGoster(True);
         try
          datalar.QueryExec('exec sp_HastaIlacTedaviAktar @dosyaNO = ' + QuotedStr(_dosyaNO_) +
                            ',@gelisNo = ' + _gelisNo_);
          ADO_GecmisIlacTedavi.Requery();
          ShowMessageSkin('Tedavi Kartý Aktarýldý','','','info');
         finally
           DurumGoster(False);
         end;
        end;


    end;



end;

procedure TfrmHastaIlacTedavi.cxGridIlacTedaviPlaniStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
   if (ARecord.Values[1] = '0')
   Then begin
    AStyle := K;
   end;

   if (ARecord.Values[13] = '0')
   Then begin
    AStyle := Sari_Siyah;
   end;

   if (ARecord.Values[13] = '1')
   Then begin
    AStyle := Yesil_Siyah;
   end;
end;


function TfrmHastaIlacTedavi.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;
  _HastaBilgileriniCaptionGoster_ := True;


 // if Assigned(receteForm) then r1.Visible := true else r1.Visible := False;
  SayfaCaption('Tedavi','Tetkik Sonuc','','','');
  Olustur(self,_TableName_,'Ýlaç Tedavi',23);
  //Menu := PopupMenu1;


  yukle;
  Listele;

  if _pasifSebeb_ = '5' then
  begin
    cxGridIlacTedaviPlani.OptionsData.Editing := False;
  end;


  Result := True;
end;


procedure TfrmHastaIlacTedavi.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1 : TListeAc;
begin
 //cxYeni.Visible := false;
  inherited;
  Tag := TagfrmHastaIlacTedavi;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'id';
  TableName := _TableName_;
  cxPanel.Visible := false;
  cxTab.Width := 200;



 //setDataStringKontrol(self,cxGrid15,'cxGrid15','',Kolon1,'',150,100,alClient,'',clLeft);

  //if Assigned(receteForm) then r1.Visible := true else r1.Visible := False;
  //SayfaCaption('Tedavi','Tetkik Sonuc','','','');
  //Olustur(self,_TableName_,'Ýlaç Tedavi',23);
 // Menu := PopupMenu1;



end;

procedure TfrmHastaIlacTedavi.FormShow(Sender: TObject);
begin
  if Assigned(receteForm) then r1.Visible := true else r1.Visible := False;
  Menu := PopupMenu1;

  inherited;
end;

procedure TfrmHastaIlacTedavi.ilacEkle(islem: integer);
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
       sql := 'delete from HastaIlacTedavi where id = ' +  ADO_GecmisIlacTedavi.FieldByName('id').AsString;
       datalar.QueryExec(sql);
     end;
   end;



end;

end.
