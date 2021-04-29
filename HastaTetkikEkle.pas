unit HastaTetkikEkle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,TedaviKart,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,Adodb,strUtils,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxPC, cxGroupBox, cxImageComboBox,GetFormClass,cxDataUtils,
  cxDBLookupComboBox, cxLabel, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, Vcl.StdCtrls, Vcl.Buttons, cxCheckBox, dxLayoutContainer,
  Vcl.ExtCtrls,  cxButtons, cxDBEdit, Menus, cxCalendar;

type
  TfrmHastaTetkikEkle = class(TfrmTedaviBilgisi)
    PopupMenu1: TPopupMenu;
    cxIlacTedaviPanel: TcxGroupBox;
    N1: TMenuItem;
    T1: TMenuItem;
    N2: TMenuItem;
    S1: TMenuItem;
    ADO_Tetkikler: TADOQuery;
    DataSource8: TDataSource;
    frmHastaIlacTedavi_cxGroupBox1: TcxGroupBox;
    frmHastaIlacTedavi_cxPageControl1: TcxPageControl;
    cxTabTetkikler: TcxTabSheet;
    cxGrid15: TcxGrid;
    cxGridTetkikler: TcxGridDBTableView;
    cxGridLevel15: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    K: TcxStyle;
    Yesil_siyah: TcxStyle;
    Sari_Siyah: TcxStyle;
    cxGridTetkiklerdosyaNo: TcxGridDBColumn;
    cxGridTetkiklergelisNo: TcxGridDBColumn;
    cxGridTetkiklerSIRANO: TcxGridDBColumn;
    cxGridTetkiklerCODE: TcxGridDBColumn;
    cxGridTetkikleryapanDoktor: TcxGridDBColumn;
    cxGridTetkikleristeyenDoktor: TcxGridDBColumn;
    cxGridTetkiklerADET: TcxGridDBColumn;
    cxGridTetkiklerNAME1: TcxGridDBColumn;
    cxGridTetkiklerTARIH: TcxGridDBColumn;
    cxGridTetkiklerKurum: TcxGridDBColumn;
    cxGridTetkiklertip: TcxGridDBColumn;
    cxGridTetkikleronay: TcxGridDBColumn;
    SonucGiris: TcxGridDBColumn;
    Tur: TcxGridDBColumn;
    cxGridTetkiklerislemSiraNo: TcxGridDBColumn;
    cxGridTetkiklerDate_Create: TcxGridDBColumn;
    cxGridTetkiklerislemSira: TcxGridDBColumn;
    cxGridTetkiklerKabulNo: TcxGridDBColumn;
    Aciklama: TcxGridDBColumn;
    cxGridTetkiklerISLENDIMI: TcxGridDBColumn;
    cxGridTetkiklerColumn1: TcxGridDBColumn;
    H1: TMenuItem;
    T2: TMenuItem;
    T3: TMenuItem;
    K1: TMenuItem;
    cxTabTetkik: TcxTabControl;
    ADO_TetkikDegerlendir: TADOQuery;
    cxPanelHesapla: TcxGroupBox;
    txtUrr: TcxDBTextEdit;
    Label2: TLabel;
    txtKtv: TcxDBTextEdit;
    Label1: TLabel;
    txtCaXP: TcxDBTextEdit;
    Label3: TLabel;
    txtDuzCa: TcxDBTextEdit;
    Label4: TLabel;
    ktv: TcxButtonKadir;
    spKtv: TcxButtonKadir;
    cxBtnHesapKaydet: TcxButtonKadir;
    K2: TMenuItem;
    T4: TMenuItem;
    T5: TMenuItem;
    Tetkikler: TListeAc;
    cxGridTetkiklerColumn2: TcxGridDBColumn;
    cxGridTetkiklerColumn3: TcxGridDBColumn;
    T6: TMenuItem;
    G1: TMenuItem;
    cxTabTetkikDegerlendir: TcxTabSheet;
    DataSource3: TDataSource;
    DataSource17: TDataSource;
    ADO_Uyar: TADOTable;
    cxPageControlDegerlendir: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    Panel5: TPanel;
    cxBtnDegerlendir: TcxButtonKadir;
    cxGridDegerlendir: TcxGridKadir;
    gridTetkikDegerlendir: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    gridTetkikDegerlendirColumn1: TcxGridDBColumn;
    TedaviKolon: TcxGridDBColumn;
    gridTetkikDegerlendirColumn2: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxTabSheet4: TcxTabSheet;
    cxGrid13: TcxGrid;
    gridUyar: TcxGridDBTableView;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    gridUyarColumn1: TcxGridDBColumn;
    cxGridLevel13: TcxGridLevel;
    txtTS: TcxDBTextEdit;
    Label5: TLabel;
    T7: TMenuItem;
    S2: TMenuItem;
    Y1: TMenuItem;
    O1: TMenuItem;
    O2: TMenuItem;
    T8: TMenuItem;
    D1: TMenuItem;
    MarkerMenu: TPopupMenu;
    P1: TMenuItem;
    N3: TMenuItem;
    KanGrubuMenu: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    ABRH1: TMenuItem;
    N0RH1: TMenuItem;
    N0RH2: TMenuItem;
    ARH1: TMenuItem;
    BRH1: TMenuItem;
    ABRH2: TMenuItem;
    N4: TMenuItem;
    t9: TMenuItem;
    Sonuc: TMenuItem;
    Negatif: TMenuItem;
    Pozitif: TMenuItem;
    APozitif: TMenuItem;
    ANegatif: TMenuItem;
    BPozitif: TMenuItem;
    BNegatif: TMenuItem;
    ABPozitif: TMenuItem;
    ABNegatif: TMenuItem;
    Pozitif0: TMenuItem;
    Negatif0: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure DoktorBilgisiDegis;
    procedure ItemClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxGridIlacTedaviPlaniStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure GrupTetkikEkle(grup : integer);
    procedure TetkikEkle;
    procedure TetkikSil(Tag : integer);
    procedure Sonuclar;
    procedure DegerlendirmeGetir;
    procedure cxTabTetkikChange(Sender: TObject);
    procedure ktvClick(Sender: TObject);
    procedure spKtvClick(Sender: TObject);
    procedure cxBtnHesapKaydetClick(Sender: TObject);
    procedure cxBtnDegerlendirClick(Sender: TObject);
    procedure gridTetkikDegerlendirDblClick(Sender: TObject);
    procedure cxGridTetkiklerFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ADO_TetkiklerAfterScroll(DataSet: TDataSet);
    procedure SonucGirisPropertiesEditValueChanged(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure MarkerMenuPopup(Sender: TObject);
    procedure ABRH2Click(Sender: TObject);
    procedure PopupMenuSonucEkleVisible(Grup : String);
  private
    { Private declarations }
  public
      function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

const _TableName_ = 'Hareketler';
      formGenislik = 980;
      formYukseklik = 720;
var
  frmHastaTetkikEkle: TfrmHastaTetkikEkle;


implementation
      uses Data_Modul,AnaUnit;
{$R *.dfm}

procedure TfrmHastaTetkikEkle.cxKaydetClick(Sender: TObject);
begin
  ADO_Tetkikler.Close;
  ADO_TetkikDegerlendir.Close;

  inherited;

end;

procedure TfrmHastaTetkikEkle.cxTabTetkikChange(Sender: TObject);
begin
  inherited;
  sonuclar;
  case cxTabTetkik.TabIndex of
  1 : begin
         Aciklama.PropertiesClassName := 'Memo';
         SonucGiris.Visible := false;
         Aciklama.Width := 230;
      end;
  0 : begin
         Aciklama.PropertiesClassName := 'TextEdit';
         SonucGiris.Visible := true;
         Aciklama.Width := 150;
      end;

  end;

end;

procedure TfrmHastaTetkikEkle.DegerlendirmeGetir;
var
 sql : string;
begin
   (*
    sql := 'select dosyaNo,gelisNo,tipname+Uyarý  as uyari,Onay,U.tip,U.tedavi from HastaTedaviUyari U ' +
           ' JOIN TedaviUyariAyar tua ON u.tip = tua.tip ' +
           ' where dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNo_;
    datalar.QuerySelect(ado_tetkikDegerlendir,sql);
     *)
    ADO_Uyar.Active := True;




end;


procedure TfrmHastaTetkikEkle.SonucGirisPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if ADO_Tetkikler.FieldByName('CODE').AsString = '705140'
  then begin
   ADO_Tetkikler.FieldByName('islemAciklamasi').Value :=
   TcxImageComboBox(Sender).Properties.Items[TcxImageComboBox(Sender).ItemIndex].Description;
  end;
end;

procedure TfrmHastaTetkikEkle.Sonuclar;
begin
   sql := 'exec sp_HastaGelisTetkik ' + QuotedStr(_dosyaNo_) + ',' + _gelisNO_ + ',' + inttostr(ABS(cxTabTetkik.TabIndex+2)) ;
   datalar.QuerySelect(ADO_Tetkikler,sql);

   cxGridTetkikler.ViewData.Expand(true);

   sql := 'select * from labsonucdegerlendirme where dosyaNo = ' + #39 + _dosyaNo_ + #39 +
          ' and gelisNo = ' + _gelisNo_;
   datalar.QuerySelect(ADO_TetkikDegerlendir,sql);
   if ADO_TetkikDegerlendir.eof
   then begin
     ADO_TetkikDegerlendir.Append;
     ADO_TetkikDegerlendir.FieldByName('dosyaNo').AsString := _dosyaNo_;
     ADO_TetkikDegerlendir.FieldByName('gelisNo').AsString := _gelisNo_;
     ADO_TetkikDegerlendir.Post;
   end;
end;

procedure TfrmHastaTetkikEkle.TetkikSil(tag : integer);
var
  sql : string;
begin
  try

  if tag = -1
  then
    sql := 'exec sp_TetkikSil @dosyaNo = ' + QuotedStr(_dosyaNo_) +
           ',@gelisNo = ' + _gelisNO_

//    sql := 'delete from hareketler ' +
//          ' where ' +
//         ' dosyaNO = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNO_ + ' and (Tip in (''L'',''R'')) and isnull(gd,0) = 0 and isnull(islemSiraNo,'''') = '''''
  else
  if tag = -31
  then
    sql := 'exec sp_TetkikSil @dosyaNo = ' + QuotedStr(_dosyaNo_) +
           ',@gelisNo = ' + _gelisNO_ +
           ',@onay = 0 '
//    sql := 'update hareketler ' +
//           ' set onay  = 0 ' +
//           ' where substring(code,1,6) = ' + copy(ADO_Tetkikler.FieldByName('code').AsString,1,6) +
//           ' and dosyaNO = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNO_ + ' and Tip = ''L'' and isnull(islemSiraNo,'''') = '''''

  else
  if tag = -32
  then
    sql := 'exec sp_TetkikSil @dosyaNo = ' + QuotedStr(_dosyaNo_) +
           ',@gelisNo = ' + _gelisNO_ +
           ',@onay = 1 '
//    sql := 'update hareketler ' +
//           ' set onay  = 1 ' +
//           ' where substring(code,1,6) = ' + copy(ADO_Tetkikler.FieldByName('code').AsString,1,6) +
//           ' and dosyaNO = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNO_ + ' and Tip = ''L'' and isnull(islemSiraNo,'''') = '''''

  else
    sql := 'exec sp_TetkikSil @dosyaNo = ' + QuotedStr(_dosyaNo_) +
           ',@gelisNo = ' + _gelisNO_ +
           ',@sirano =  ' + inttostr(tag);
//    sql := 'delete from hareketler ' +
//           'where sirano = ' + inttostr(tag) + ' and isnull(islemSiraNo,'''') = ''''';



   datalar.QueryExec(sql);

   ADO_Tetkikler.Requery;
  except on e : Exception do
   begin
      ShowMessageSkin(e.Message,'','','info');
   end;
  end;
end;

procedure TfrmHastaTetkikEkle.TetkikEkle;
var
  sql , uzmanDoktor , doktor : string;
  ado : TADOQuery;
  List : ArrayListeSecimler;
begin

   if cxTabTetkik.TabIndex = 0
    then
       Tetkikler.Filter := '%2%'
    else
       Tetkikler.Filter := '%3%';

   Tetkikler.SkinName := AnaForm.dxSkinController1.SkinName;
   Tetkikler.where := ' charindex(''.'',butKodu) = 0  and uygulamaAdet = ''G''';
   List := Tetkikler.ListeGetir;


   try
     if length(List) > 0 then
     begin
           sql := Format(sirketUzmanDoktor,[quotedStr(datalar.AktifSirket)]);
        //   sql := 'exec sp_UzmanDoktorBul ' + QuotedStr(datalar.AktifSirket);
           uzmanDoktor := datalar.QuerySelect(sql).FieldByName('kod').AsString;

       if List[0].kolon1 = '908170'
       then begin
           doktor := uzmanDoktor;
       end
         else
           doktor := ifThen(_Doktor_ = '',uzmanDoktor,_doktor_);

       ado := datalar.QuerySelect('select butKodu,tanimi,uygulamaAdet from labtestler where substring(butKodu,1,6) = ' + QuotedStr(List[0].kolon1));
       while not ado.Eof do
       begin

           sql := 'if not exists(select * from hareketlerLab where dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNo_ +
                  ' and code = ' + QuotedStr(ado.FieldByName('butKodu').AsString) +
                  ' and tip1 = ' + QuotedStr(ado.FieldByName('butKodu').AsString)  + ' ) ' +
                  ' begin ' +
                  ' insert into hareketler (dosyaNo,gelisNo,gelisSIRANO,Tarih,Doktor,adet,code,name1,tip,tip1) ' +
                  'values(' + QuotedStr(_dosyaNO_) + ',' +
                              _gelisNo_ + ',' +
                             _gelisSiraNo_ + ',' +
                             QuotedStr(NoktasizTarih(_provizyonTarihi_))  + ',' +
                             QuotedStr(doktor) + ',' +
                             '1' + ',' +
                             QuotedStr(ado.FieldByName('butKodu').AsString) + ',' +
                             QuotedStr(ado.FieldByName('tanimi').AsString) + ',' +
                             QuotedStr('L') + ',' +
                             QuotedStr(ado.FieldByName('uygulamaAdet').AsString) + ') ' +
                  ' end ';
           datalar.QueryExec(sql);
           ado.Next;
       end;
     end;
   finally
    ado.Free;
   end;

   ADO_Tetkikler.Requery;

end;


procedure TfrmHastaTetkikEkle.GrupTetkikEkle(grup : integer);
var
  sql : string;
  ado : TADOQuery;

procedure ekle(tip : string);
begin
     try
       sql := 'exec sp_hastaLabIsle @dosyaNo = ' + QuotedStr(_dosyaNo_) + ', @gelisNo = ' +
               _gelisNo_ + ', @tarih = ' + QuotedStr(tarihal(date())) + ', @tip = ' + QuotedStr(tip);
       datalar.QueryExec(sql);
       ADO_Tetkikler.Requery();
      ShowMessageSkin('Hizmetler Eklendi','','','info');
     except on e : Exception do
        begin
            ShowMessageSkin('Hata :' + e.Message,'','','info');
            exit;
        end;
     end;

end;

begin

   if grup = -5
   then begin
     ekle('Hepatit');
   end
   else
   if mrYES = ShowMessageSkin('Var Olan Tablo Silinip Yeniden Oluþturulacak , Girilmiþ Sonuçlar Varsa , Bu Ýþlem Yapýlmaz','','','msg')
   Then Begin
     ekle(inttostr(-1*grup));
   End;

end;


function TfrmHastaTetkikEkle.Init(Sender: TObject): Boolean;
begin
  Result := True;
  if not inherited Init(Sender) then exit;

  if _pasifSebeb_ = '5' then
  begin
    cxGridTetkikler.OptionsData.Editing := False;
    SonucGiris.Editing := False;
    cxPanelHesapla.Enabled := False;
    cxBtnDegerlendir.Enabled := False;
  end;


end;

procedure TfrmHastaTetkikEkle.ItemClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
  TopluDataset : TDataSetKadir;
  Tarih1,Tarih2,BHDAT : Tdate;
begin
    case TMenuItem(sender).Tag of
   -1,-3,-6,-12,-5 : begin
                    GrupTetkikEkle(TMenuItem(sender).Tag);
                  end;
    -30 : begin
             if mrYes = ShowMessageSkin('Tetkiki Silmek Ýstediðinizden Eminmisiniz?','','','msg') then
             begin
               if cxGridTetkikler.Controller.SelectedRowCount > 0
               Then begin
                 TetkikSil(ADO_Tetkikler.FieldByName('sirano').AsInteger);
               end;
             end;
         end;
    -31,-32 : begin
             if mrYes = ShowMessageSkin('Tetkiki Silmek Ýstediðinizden Eminmisiniz?','','','msg') then
             begin
               if cxGridTetkikler.Controller.SelectedRowCount > 0
               Then begin
                 TetkikSil(TMenuItem(sender).Tag);
               end;
             end;
         end;

    -2 : begin
          //  if cxGridTetkikler.Controller.SelectedRowCount > 0
         //   Then begin
             if mrYes = ShowMessageSkin('Tetkikler Silinecek','','','msg') then
             begin
                 TetkikSil(-1);
             end;
          //  end;
         end;
    -4 : begin
           Kantetkikleri(_dosyaNO_,datalar.HastaBil.Tarih);
         end;

    -20 : begin
           // KTVHesapListe;
          end;
    -21 : begin
            GirisRecord.F_dosyaNO_ := self._dosyaNO_;
            GirisRecord.F_gelisNO_ := self._gelisNO_;
            GirisRecord.F_HastaAdSoyad_ := self._HastaAdSoyad_;
            F := FormINIT(TagfrmKanTetkikTakipDegerlendir,GirisRecord,ikHayir,'Giriþ');
            if F <> nil then F.show;

            //KanTetkikleriDegerlendir(_dosyaNO_,_gelisNO_);
          end;
    -22 : begin
           TetkikEkle;
          end;

    -23 : begin
           //TetkikTarihDegistir;
            datalar.QueryExec('if exists(select Tarih from hareketler where Tip = ''S'' and dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNO_ + ' and KanAlindimi = 1 ) ' +
                              'begin ' +

                            //  'update hareketler set Tarih = ' +
                            //  '(select Tarih from hareketler where Tip = ''S'' and dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNO_ + ' and KanAlindimi = 1 ) ' +
                            //  ' where  dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNO_ + ' and tip = ''L''' +

                                  'exec sp_TetkikTarihDoktorDegistir ' +
                                          '@dosyaNo = ' + QuotedStr(_dosyaNO_) + ',' +
                                          '@gelisNo = ' + _gelisNO_ + ',' +
                                          '@tarih = ' + QuotedStr('KA') +
                              ' end '

                              );
            ADO_Tetkikler.Requery;
          end;

    -25 : begin
               if mrYes = ShowPopupForm('Tarihi Deðiþtir',TetkikTarihDuzenle,self)
               Then Begin

                  BHDAT := datalar.QuerySelect('select BHDAT from Hasta_gelisler ' +
                                    ' where  dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNO_).FieldByName('BHDAT').AsDateTime;


                  if copy(datalar.TetkikTarihi,5,2) <> copy(FormatDateTime('YYYYMMDD',BHDAT),5,2)
                  then begin
                     ShowMessageSkin('Tetkik Tarihleri Dönem Dýþý Olamaz','','','info');
                     exit;
                  end;

                  if FormatDateTime('YYYYMMDD',BHDAT) > datalar.TetkikTarihi
                  then begin
                     ShowMessageSkin('Tetkik Tarihleri Gelis Tarihinden Önce Olamaz','','','info');
                  end
                  else
                  begin
                    datalar.QueryExec('exec sp_TetkikTarihDoktorDegistir ' +
                                      '@dosyaNo = ' + QuotedStr(_dosyaNO_) + ',' +
                                      '@gelisNo = ' + _gelisNO_ + ',' +
                                      '@tarih = ' + QuotedStr(datalar.TetkikTarihi) );
                    ADO_Tetkikler.Requery;
                  end;
          end;
               End;
         (*
            datalar.QueryExec('update hareketler set Tarih = ' +
                  '(select Tarih from hareketler where Tip = ''S'' and dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNO_ + ' and KanAlindimi = 1 ) ' +
                              ' where  dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNO_ + ' and tip = ''L'''

            );
            ADO_Tetkikler.Requery;
          end;
           *)

    -26 : begin
            DoktorBilgisiDegis;
          end;
    -24 : begin
               Tarih1 := tarihyap(datalar.HastaBil.Tarih);
               Tarih2 := ayliktarih(Tarih1);

              try
                sql := 'exec sp_HastaLabSonucToplu ' + QuotedStr(tarihal(tarih1)) + ',' +
                                                       QuotedStr(tarihal(tarih2)) + ',' +
                                                       QuotedStr(_dosyaNO_) + ',' +
                                                       QuotedStr(datalar.AktifSirket);

                datalar.QuerySelect(sql);
                TopluDataset.Dataset0 := datalar.QuerySelect(sql);

                TopluDataset.Dataset1 := datalar.ADO_AktifSirket;

                PrintYap('112','\Lab Sonuç Yazdýr (Toplu)',intToStr(TagfrmHastaTetkikEkle),TopluDataset);

              finally

              end;


          end;


    end;
end;

procedure TfrmHastaTetkikEkle.ktvClick(Sender: TObject);
var
   CaxP , G_ure , C_ure, demir , demirbaglama ,Dca,alb : double;
   ca , p , URR , Kt_VB , Kt_vj , Ts : double;
   x : integer;
   Ado : TADOQuery;
begin


    sql := 'sp_KtvHesapla ' + QuotedStr(_dosyaNo_) + ',' + _gelisNo_ + ',' + QuotedStr('D') + ',' + QuotedStr(datalar._labID);;
    Ado := datalar.QuerySelect(sql);
    try
    txtTS.EditValue := ado.FieldByName('TS').AsString;
    txtktv.Text := ado.FieldByName('ktv').AsString;
    txtUrr.Text := ado.FieldByName('urr').AsString;
    txtDuzCa.Text := ado.FieldByName('duzca').AsString;

    finally
      ado.free;
    end;

  (*
    try

      if ADO_TetkikDegerlendir.Locate('dosyaNo;gelisNo',VarArrayOf([_gelisNO_,_gelisNO_]),[]) = True
      Then
        ADO_TetkikDegerlendir.Append
      Else
        ADO_TetkikDegerlendir.Edit;

      ADO_Tetkikler.Locate('CODE','901910',[]);
      Ca := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901260',[]);
      P := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901020',[]);
      demir := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901040',[]);
      demirbaglama := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE;tip1',VarArrayOf(['901940','G']),[]);
      G_ure := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE;tip1',VarArrayOf(['901940','C']),[]);
      C_ure := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','900210',[]);
      alb := ADO_Tetkikler.FieldByName('Gd').AsFloat;

      if (G_ure <= 0) or (C_ure <= 0)
      then begin
        ShowMessageSkin('Üre Deðerleri Girilmemiþ , Kt/v Hesaplama Yapýlmaz','','','info');
        exit;
      end
      else
      begin
        URR := strtofloat(FormatFloat('#.##',(1 - (C_ure/G_ure))));
        Kt_VB := strtofloat(FormatFloat('#.##',(0.031 * ((G_ure - C_ure)/G_ure*100) - 0.66)));
        txtktv.Text := FloatToStr(kt_vb);
        txtUrr.Text := FloatToStr(URR*100);
      end;

      CaxP := Ca * P;
      txtCaxP.Text := FloatToStr(CaxP);

      Dca := Ca + ((4 - alb) * 0.8);
      txtDuzCa.Text := FloatToStr(Dca);

      if (demirbaglama <= 0)
      then begin
        ShowMessageSkin('Demir Deðerleri Girilmemiþ , TS Hesaplama Yapýlmaz','','','info');
        exit;
      end
      else begin
       Ts := (demir / demirbaglama) * 100;
       txtTS.EditValue := TS;
      end;

    except  on e : Exception do
     begin
        ShowMessageSkin(e.Message,'','','info');
     end;
    end;
        *)
end;

procedure TfrmHastaTetkikEkle.MarkerMenuPopup(Sender: TObject);
begin
 (*
  if (ADO_Tetkikler.FieldByName('CODE').AsString = '906610') or
     (ADO_Tetkikler.FieldByName('CODE').AsString = '906630') or
     (ADO_Tetkikler.FieldByName('CODE').AsString = '906660') or
     (ADO_Tetkikler.FieldByName('CODE').AsString = '907440')
  then begin
  end
  else
  MarkerMenu.CloseMenu;
   *)

end;

procedure TfrmHastaTetkikEkle.N3Click(Sender: TObject);
var
  sql : string;
begin
  inherited;

  if TMenuItem(Sender).Tag = -2 then
  begin
    sql := 'update hareketler ' +
           'set gd = 0 , MarkerGD = Null ' +
           'where dosyano = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNo_ +
           ' and code in (''906610'',''906630'',''906660'',''907440'') ' +

           'update hareketler ' +
           'set gd = -1 , MarkerGD = Null ' +
           'where dosyano = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNo_ +
           ' and code in (''906610'',''906630'',''906660'',''907440'') ';
    datalar.QueryExec(sql);
    ADO_Tetkikler.Requery();
  end
  else
  begin

    ADO_Tetkikler.Edit;
    ADO_Tetkikler.FieldByName('gd').AsFloat := 0;
    ADO_Tetkikler.FieldByName('MarkerGD').AsVariant := Null;
    ADO_Tetkikler.Post;

    ADO_Tetkikler.Edit;
    ADO_Tetkikler.FieldByName('gd').AsFloat := TMenuItem(Sender).Tag;
    ADO_Tetkikler.FieldByName('MarkerGD').AsVariant := Null;
    ADO_Tetkikler.Post;

  end;



end;

procedure TfrmHastaTetkikEkle.PopupMenuSonucEkleVisible(Grup: String);
begin
  if Grup = 'Kan' then
  begin
   Sonuc.Visible := True;
   Negatif.Visible := False;
   Pozitif.Visible := False;
   APozitif.Visible := True;
   ANegatif.Visible := True;
   BPozitif.Visible := True;
   BNegatif.Visible := True;
   ABPozitif.Visible := True;
   ABNegatif.Visible := True;
   Pozitif0.Visible := True;
   Negatif0.Visible := True;
  end
  else
  if Grup = 'Marker' then
  begin
   Sonuc.Visible := True;
   Negatif.Visible := True;
   Pozitif.Visible := True;
   APozitif.Visible := False;
   ANegatif.Visible := False;
   BPozitif.Visible := False;
   BNegatif.Visible := False;
   ABPozitif.Visible := False;
   ABNegatif.Visible := False;
   Pozitif0.Visible := False;
   Negatif0.Visible := False;

  end
  else
  begin
    Sonuc.Visible := False;
  end;


end;

procedure TfrmHastaTetkikEkle.spKtvClick(Sender: TObject);
var
   CaxP , G_ure , C_ure , iKilo , kilofark , g,c ,Dca  ,alb ,demirbaglama,Ts : double;
   x : integer;
   ca , p , URR , Kt_VB , Kt_vj,demir: double;
   ado : TADOQuery;
begin

    iKilo := idealKilo(_dosyaNo_);
    kilofark := SonSeansGCKilo(_dosyaNo_,_gelisNo_ , g,c);


    sql := 'sp_KtvHesapla ' + QuotedStr(_dosyaNo_) + ',' + _gelisNo_ + ',' + QuotedStr('D2') + ',' + QuotedStr(datalar._labID);
    Ado := datalar.QuerySelect(sql);

    try
    txtTS.EditValue := ado.FieldByName('TS').AsString;
    txtktv.Text := ado.FieldByName('ktv').AsString;
    txtUrr.Text := ado.FieldByName('urr').AsString;
    txtDuzCa.Text := ado.FieldByName('duzca').AsString;
    finally
      ado.free;
    end;

  (*
    try

      if ADO_TetkikDegerlendir.Locate('dosyaNo;gelisNo',VarArrayOf([_gelisNO_,_gelisNO_]),[]) = True
      Then
        ADO_TetkikDegerlendir.Append
      Else
        ADO_TetkikDegerlendir.Edit;

      ADO_Tetkikler.Locate('CODE','901910',[]);
      Ca := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901260',[]);
      P := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','900210',[]);
      alb := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE;tip1',VarArrayOf(['901940','G']),[]);
      G_ure := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE;tip1',VarArrayOf(['901940','C']),[]);
      C_ure := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901020',[]);
      demir := ADO_Tetkikler.FieldByName('Gd').AsFloat;
      ADO_Tetkikler.Locate('CODE','901040',[]);
      demirbaglama := ADO_Tetkikler.FieldByName('Gd').AsFloat;

      if (G_ure <= 0) or (C_ure <= 0) or (iKilo <= 0)
      then begin
        ShowMessageSkin('Üre Deðerleri veya Kilo Girilmemiþ , Kt/v Hesaplama Yapýlmaz','','','info');
        exit;
      end
      else
      begin
        URR := strtofloat(FormatFloat('#.##',(1 - (C_ure/G_ure))));
        Kt_VB := strtofloat(FormatFloat('#.##',
        -ln((C_ure/G_ure) - (0.008 * 4)) + ((4 - (3.5 * C_ure/G_ure)) * kilofark / iKilo) ));

        txtktv.Text := FloatToStr(kt_vb);
        txtUrr.Text := FloatToStr(URR * 100);
      end;

      CaxP := Ca * P;
      txtCaxP.Text := FloatToStr(CaxP);

      Dca := Ca + ((4 - alb) * 0.8);
      txtDuzCa.Text := FloatToStr(Dca);

      if (demirbaglama <= 0)
      then begin
        ShowMessageSkin('Demir Deðerleri Girilmemiþ , TS Hesaplama Yapýlmaz','','','info');
        exit;
      end
      else begin
       Ts := (demir / demirbaglama) * 100;
       txtTS.EditValue := TS;
      end;
    except on e : Exception do
     begin
         ShowMessageSkin(e.Message,'','','info');
     end;

    end;
        *)
end;


procedure TfrmHastaTetkikEkle.ABRH2Click(Sender: TObject);
begin
  inherited;
  ADO_Tetkikler.Edit;
  ADO_Tetkikler.FieldByName('gd').AsFloat := TMenuItem(Sender).Tag;
  ADO_Tetkikler.FieldByName('islemAciklamasi').AsString :=
   StringReplace(TMenuItem(Sender).Caption,'&','',[rfReplaceAll]);
  ADO_Tetkikler.Post;
end;

procedure TfrmHastaTetkikEkle.ADO_TetkiklerAfterScroll(DataSet: TDataSet);
var
  FItem : TcxImageComboBoxItem;
  ado : TADOQuery;
  Items: TcxImageComboBoxItems;
  Item: TcxImageComboBoxItem;
     p : TPoint;
     x,y : integer;
begin
  inherited;
  {
  try
  if ADO_Tetkikler.FieldByName('CODE').AsString = '705140'
  then begin
       (*
        SonucGiris.PropertiesClassName := 'TcxImageComboBoxProperties';
        TcxImageComboBoxProperties(SonucGiris.Properties).Alignment.Vert :=  TcxEditVertAlignment.taVCenter;
        TcxImageComboBoxProperties(SonucGiris.Properties).Items.Clear;
        SonucGiris.Properties.Alignment.Horz := taLeftJustify;
        SonucGiris.Properties.OnEditValueChanged := SonucGirisPropertiesEditValueChanged;
        TcxImageComboBoxProperties(SonucGiris.Properties).ClearKey := VK_DELETE;

        TcxImageComboBoxProperties(SonucGiris.Properties).Items :=
        TcxImageComboKadir(FindComponent('KanGrupCombo')).Properties.Items;
         *)
     //  SonucGiris.PropertiesClassName := '';
       SonucGiris.Options.Editing := False;
     //  PopupMenuSonucEkleVisible('Kan');


  end
  else
  if (ADO_Tetkikler.FieldByName('CODE').AsString = '906610') or
     (ADO_Tetkikler.FieldByName('CODE').AsString = '906630') or
     (ADO_Tetkikler.FieldByName('CODE').AsString = '906660') or
     (ADO_Tetkikler.FieldByName('CODE').AsString = '907440')
     then begin
     //  SonucGiris.PropertiesClassName := '';
       SonucGiris.Options.Editing := False;
    //   PopupMenuSonucEkleVisible('Marker');

     end

  else
  begin
    //  SonucGiris.PropertiesClassName := '';
      SonucGiris.Options.Editing := True;
    //  PopupMenuSonucEkleVisible('');

  end;

  except

  end;

  }
end;

procedure TfrmHastaTetkikEkle.cxBtnDegerlendirClick(Sender: TObject);
var
  sql : string;
begin
    if MrYes = ShowMessageSkin('Deðerlendirme Yapýlacak ,Var Olan Deðerlendirme Ýptal Edilecek','','','msg')
    Then Begin
      sql := 'exec sp_TetkikSonucDegerlandir ' + QuotedStr(_dosyaNo_) + ',' + _gelisNo_;
      datalar.QuerySelect(sql);
      ado_tetkikDegerlendir.Requery();

    End;
end;

procedure TfrmHastaTetkikEkle.cxBtnHesapKaydetClick(Sender: TObject);
begin
  inherited;

  if ADO_TetkikDegerlendir.State = dsEdit
  then
   ADO_TetkikDegerlendir.Post;
end;

procedure TfrmHastaTetkikEkle.cxGridIlacTedaviPlaniStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  (*
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
    *)

end;


procedure TfrmHastaTetkikEkle.cxGridTetkiklerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
   if _pasifSebeb_ = '5'
   then begin
     Sender.OptionsData.Editing := False;
   end
   else
     if ADO_Tetkikler.FieldByName('islemSiraNo').AsString <> ''
       then Sender.OptionsData.Editing := False
         else Sender.OptionsData.Editing := True;


  try
  if ADO_Tetkikler.FieldByName('CODE').AsString = '705140'
  then begin
       (*
        SonucGiris.PropertiesClassName := 'TcxImageComboBoxProperties';
        TcxImageComboBoxProperties(SonucGiris.Properties).Alignment.Vert :=  TcxEditVertAlignment.taVCenter;
        TcxImageComboBoxProperties(SonucGiris.Properties).Items.Clear;
        SonucGiris.Properties.Alignment.Horz := taLeftJustify;
        SonucGiris.Properties.OnEditValueChanged := SonucGirisPropertiesEditValueChanged;
        TcxImageComboBoxProperties(SonucGiris.Properties).ClearKey := VK_DELETE;

        TcxImageComboBoxProperties(SonucGiris.Properties).Items :=
        TcxImageComboKadir(FindComponent('KanGrupCombo')).Properties.Items;
         *)
     //  SonucGiris.PropertiesClassName := '';
       SonucGiris.Options.Editing := False;
       cxGridTetkikler.PopupMenu := KanGrubuMenu;
     //  PopupMenuSonucEkleVisible('Kan');


  end
  else
  if (ADO_Tetkikler.FieldByName('CODE').AsString = '906610') or
     (ADO_Tetkikler.FieldByName('CODE').AsString = '906630') or
     (ADO_Tetkikler.FieldByName('CODE').AsString = '906660') or
     (ADO_Tetkikler.FieldByName('CODE').AsString = '907440')
     then begin
     //  SonucGiris.PropertiesClassName := '';
       SonucGiris.Options.Editing := False;
       cxGridTetkikler.PopupMenu := MarkerMenu;
     //  PopupMenuSonucEkleVisible('Marker');

     end

  else
  begin
    //  SonucGiris.PropertiesClassName := '';
      SonucGiris.Options.Editing := True;
      cxGridTetkikler.PopupMenu := Nil;
     // PopupMenuSonucEkleVisible('');

  end;

  except

  end;


end;

procedure TfrmHastaTetkikEkle.DoktorBilgisiDegis;
var
   x ,sirano , satir , durum : integer;
   secim : boolean;
   _secim ,sql , kod , talepSira: string;
begin
  inherited;


    if mrYes = ShowPopupForm('Tetkik Doktor Bilgisi Deðiþtir',SeansDoktorUpdate)
    Then Begin
                 (*
                    datalar.QueryExec('exec sp_TetkikTarihDoktorDegistir ' +
                                      '@dosyaNo = ' + QuotedStr(_dosyaNO_) + ',' +
                                      '@gelisNo = ' + _gelisNO_ + ',' +
                                      '@doktor = ' + QuotedStr(datalar.SeansBilgi.doktor) );

                    ADO_Tetkikler.Requery;
                   *)


        for x := 0 to cxGridTetkikler.Controller.SelectedRowCount - 1 do
        begin
           Application.ProcessMessages;
           satir := cxGridTetkikler.Controller.SelectedRows[x].RecordIndex;
           cxGridTetkikler.DataController.FocusedRecordIndex := satir;
         //  sirano := cxGridTetkikler.DataController.GetValue(satir,cxGridTetkikler.DataController.GetItemByFieldName('islemRefNo').Index);
           talepSira := varToStr(cxGridTetkikler.DataController.GetValue(satir,cxGridTetkikler.DataController.GetItemByFieldName('islemSiraNo').Index));

           if  talepSira = ''
           then begin
             cxGridTetkikler.DataController.SetEditValue(cxGridTetkikler.DataController.GetItemByFieldName('Doktor').Index,datalar.SeansBilgi.doktor,evsValue);
             cxGridTetkikler.DataController.post;
           end;

        end; // for end


    End;

end;


procedure TfrmHastaTetkikEkle.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1 : TListeAc;
  DoktorCombo , Kangrup : TcxImageComboKadir;
begin
 //cxYeni.Visible := false;
  inherited;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  TableName := _TableName_;
  cxPanel.Visible := false;
  SayfaCaption('Tetkikler','','','','');
  Olustur(self,_TableName_,'Hasta Tetkikleri',23);
  Menu := PopupMenu1;


  setDataStringIC(self,'DoktorCombo','DoktorCombo',Kolon1,'BB',150,'DoktorlarT','Kod','Tanimi','');
  TdxLayoutGroup(FindComponent('dxLaDoktorCombo')).Visible := false;

  TcxImageComboBoxProperties(cxGridTetkikleryapanDoktor.Properties).Items :=
  TcxImageComboKadir(FindComponent('DoktorCombo')).Properties.Items;

  //setDataStringIC(self,'KanGrupCombo','KanGrupCombo',Kolon1,'BB',150,'KanGruplari','Kod','Grup','');
  //TdxLayoutGroup(FindComponent('dxLaKanGrupCombo')).Visible := false;

  //setDataStringIC(self,'MarkerCombo','MarkerCombo',Kolon1,'BB',150,'','','','',-1,'1;Pozitif,-1;Negatif');
  //TdxLayoutGroup(FindComponent('dxLaMarkerCombo')).Visible := false;

  cxTabTetkik.Tabs[0].ImageIndex := 47;
  cxTabTetkik.Tabs[1].ImageIndex := 95;



end;

procedure TfrmHastaTetkikEkle.gridTetkikDegerlendirDblClick(Sender: TObject);
begin
  inherited;
   if ado_tetkikDegerlendir.Eof = False then exit;
   
   _value_ := ado_tetkikDegerlendir.FieldByName('tedavi').AsString;
   if mrYes = ShowPopupForm('Diyaliz Ýzlem',ado_tetkikDegerlendir.FieldByName('tip').AsInteger,Self)
   then begin
     ado_tetkikDegerlendir.Edit;
     ado_tetkikDegerlendir.FieldByName('tedavi').Value := _value_;
     ado_tetkikDegerlendir.Post;
     ado_tetkikDegerlendir.Requery();
   end;
end;

end.
