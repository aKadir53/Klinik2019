unit HastaTetkikEkle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,KadirLabel,GirisUnit,KadirType,Kadir,TedaviKart,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,Adodb,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxPC, cxGroupBox, cxImageComboBox,GetFormClass,
  cxDBLookupComboBox, cxLabel, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, Vcl.StdCtrls, Vcl.Buttons, cxCheckBox,
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
    procedure FormCreate(Sender: TObject);
    procedure ItemClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);
    procedure cxGridIlacTedaviPlaniStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure GrupTetkikEkle(grup : integer);
    procedure TetkikEkle;
    procedure TetkikSil;
    procedure Sonuclar;
    procedure DegerlendirmeGetir;
    procedure cxTabTetkikChange(Sender: TObject);
    procedure ktvClick(Sender: TObject);
    procedure spKtvClick(Sender: TObject);
    procedure cxBtnHesapKaydetClick(Sender: TObject);
    procedure cxBtnDegerlendirClick(Sender: TObject);
    procedure gridTetkikDegerlendirDblClick(Sender: TObject);
  private
    { Private declarations }
  public
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
         SonucGiris.Visible := false;
         Aciklama.Width := 230;
      end;
  0 : begin
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


procedure TfrmHastaTetkikEkle.Sonuclar;
begin
  (*
   sql := 'select h.tip ,h.tip1,h.onay,h.gd ,h.islemAciklamasi,h.kabulNo,h.Adet,h.doktor,' +
          ' h.code,h.NAME1,h.dosyaNo,h.gelisNo,h.siraNo,h.gelisSIRANO,h.Tarih,h.ICODE,h.ISLENDIMI ' +
          ' from hareketlerLab h ' +
          ' join HastaKart HK on HK.dosyaNo = h.dosyaNo ' +
          ' join labtestler t on t.butKodu = h.code and t.uygulamaAdet = h.tip1 and t.sirketKod = HK.sirketKod ' +
          ' where h.dosyaNo = ' + #39 + _dosyaNo_ + #39 +
          ' and gelisNo = ' + _gelisNo_ + ' and abs(t.tip) = ' + inttostr(ABS(cxTabTetkik.TabIndex+2)) + // sql1 +
          ' order by t.sira asc,h.tip1 desc ';
   *)

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

procedure TfrmHastaTetkikEkle.TetkikSil;
var
  sql : string;
begin
  try
   sql := 'delete from hareketler ' +
          ' where substring(code,1,6) = ' + copy(ADO_Tetkikler.FieldByName('code').AsString,1,6) +
          ' and dosyaNO = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNO_ + ' and Tip = ''L''';
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
  sql : string;
  ado : TADOQuery;
  List : ArrayListeSecimler;
begin
   if cxTabTetkik.TabIndex = 0
    then
       Tetkikler.Filter := '%2%'
    else
       Tetkikler.Filter := '%3%';

   Tetkikler.SkinName := AnaForm.dxSkinController1.SkinName;
   Tetkikler.where := ' sirketKod = ' + QuotedStr(datalar.AktifSirket) + ' and charindex(''.'',butKodu) = 0  and uygulamaAdet = ''G''';
   List := Tetkikler.ListeGetir;

   try
     if length(List) > 0 then
     begin
       ado := datalar.QuerySelect('select butKodu,tanimi,uygulamaAdet from labtestler where sirketKod = ' + QuotedStr(datalar.AktifSirket) + ' and substring(butKodu,1,6) = ' + QuotedStr(List[0].kolon1));
       while not ado.Eof do
       begin
           sql := 'insert into hareketler (dosyaNo,gelisNo,gelisSIRANO,Tarih,Doktor,adet,code,name1,tip,tip1) ' +
                  'values(' + QuotedStr(_dosyaNO_) + ',' +
                              _gelisNo_ + ',' +
                             _gelisSiraNo_ + ',' +
                             QuotedStr(NoktasizTarih(_provizyonTarihi_))  + ',' +
                             QuotedStr(_Doktor_) + ',' +
                             '1' + ',' +
                             QuotedStr(ado.FieldByName('butKodu').AsString) + ',' +
                             QuotedStr(ado.FieldByName('tanimi').AsString) + ',' +
                             QuotedStr('L') + ',' +
                             QuotedStr(ado.FieldByName('uygulamaAdet').AsString) + ')';
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
begin
   ado := TADOQuery.Create(nil);
   if mrYES = ShowMessageSkin('Var Olan Tablo Silinip Yeniden Oluþturulacak , Girilmiþ Sonuçlar Varsa , Bu Ýþlem Yapýlmaz','','','msg')
   Then Begin
     try
       sql := 'exec sp_hastaLabIsle ' + QuotedStr(_dosyaNo_) + ',' +
               _gelisNo_ + ',' + QuotedStr(tarihal(date())) + ',' + inttostr(-1*grup);
       datalar.QueryExec(ado,sql);
       AdoQueryActiveYenile(ADO_Tetkikler);
     except on e : Exception do
        begin
            ShowMessageSkin('Hata :' + e.Message,'','','info');
            exit;
        end;
     end;
     ShowMessageSkin('Hizmetler Eklendi','','','info');
     ado.Free;
   End;
end;


procedure TfrmHastaTetkikEkle.ItemClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
    case TMenuItem(sender).Tag of
   -1,-3,-6,-12 : begin
                    GrupTetkikEkle(TMenuItem(sender).Tag);
                  end;
    -2 : begin
          TetkikSil;
         end;
    -4 : begin
           Kantetkikleri(_dosyaNO_,datalar.HastaBil.Tarih);
         end;
    -5 : begin

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
            datalar.QueryExec('update hareketler set Tarih = ' +
    '(select Tarih from hareketler where Tip = ''S'' and dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNO_ + ' and KanAlindimi = 1 ) ' +
                              ' where  dosyaNo = ' + QuotedStr(_dosyaNO_) + ' and gelisNo = ' + _gelisNO_

            );
            ADO_Tetkikler.Requery;
          end;


    end;
end;

procedure TfrmHastaTetkikEkle.ktvClick(Sender: TObject);
var
   CaxP , G_ure , C_ure, demir , demirbaglama ,Dca,alb : double;
   ca , p , URR , Kt_VB , Kt_vj , Ts : double;
   x : integer;

begin

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

end;

procedure TfrmHastaTetkikEkle.spKtvClick(Sender: TObject);
var
   CaxP , G_ure , C_ure , iKilo , kilofark , g,c ,Dca  ,alb ,demirbaglama,Ts : double;
   x : integer;
   ca , p , URR , Kt_VB , Kt_vj,demir: double;
begin

    iKilo := idealKilo(_dosyaNo_);
    kilofark := SonSeansGCKilo(_dosyaNo_,_gelisNo_ , g,c);

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

procedure TfrmHastaTetkikEkle.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1 : TListeAc;
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

  cxTabTetkik.Tabs[0].ImageIndex := 47;
  cxTabTetkik.Tabs[1].ImageIndex := 95;


end;

procedure TfrmHastaTetkikEkle.gridTetkikDegerlendirDblClick(Sender: TObject);
begin
  inherited;
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
