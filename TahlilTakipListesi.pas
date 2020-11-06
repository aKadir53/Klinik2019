unit TahlilTakipListesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, ADODB, cxGridLevel, cxClasses, cxGridCustomView,strUtils,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  kadir, kadirMedula3, KadirType,GetFormClass,GirisUnit,
  StdCtrls, Buttons, sBitBtn, ExtCtrls, cxContainer, cxLabel, cxTextEdit, cxGridExportLink,
  cxMaskEdit, cxDropDownEdit, cxCalendar, sCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxGroupBox, cxRadioGroup, sGauge,
  cxPCdxBarPopupMenu, cxMemo, cxPC, cxCheckBox, rxAnimate, rxGIFCtrl,
  JvExControls, JvAnimatedImage, JvGIFCtrl, cxButtons, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, KadirLabel, cxCheckGroup,
  cxSplitter, cxImageComboBox;

type
  TfrmTahliltakip = class(TGirisForm)
    DataSource1: TDataSource;
    ADO_TetkiklerHastaList: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    SaveDialog1: TSaveDialog;
    cxStyle7: TcxStyle;
    PopupMenu1: TPopupMenu;
    T1: TMenuItem;
    N1: TMenuItem;
    T2: TMenuItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    txtHatalar: TcxMemo;
    N2: TMenuItem;
    T3: TMenuItem;
    T4: TMenuItem;
    ADO_Tele: TADOQuery;
    ADO_Tet: TADOQuery;
    N3: TMenuItem;
    L1: TMenuItem;
    K1: TMenuItem;
    PnltetkikDegerlendir: TcxGroupBox;
    ado_tetkikDegerlendir: TADOQuery;
    DataSource3: TDataSource;
    ADO_Uyar: TADOTable;
    DataSource17: TDataSource;
    cxPageControlTetkikDegerlendir: TcxPageControl;
    TetkikDegerlendirSayfa1: TcxTabSheet;
    cxGrid1: TcxGrid;
    gridTetkikDegerlendir: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    gridTetkikDegerlendirColumn1: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    TetkikDegerlendirSayfa2: TcxTabSheet;
    cxGrid13: TcxGrid;
    gridUyar: TcxGridDBTableView;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    gridUyarColumn1: TcxGridDBColumn;
    cxGridLevel13: TcxGridLevel;
    K2: TMenuItem;
    S1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    T5: TMenuItem;
    pnlTitle: TcxGroupBox;
    tarih2: TcxDateEditKadir;
    tarih1: TcxDateEditKadir;
    DiyalizTip: TcxRadioGroup;
    chkMisafir: TcxCheckBox;
    btnList: TcxButton;
    btnTetkikDegerlendir: TcxButton;
    cxGridKadir1Level1: TcxGridLevel;
    cxGridKadir1: TcxGridKadir;
    Liste: TcxGridDBBandedTableView;
    ListedosyaNo: TcxGridDBBandedColumn;
    Listeg: TcxGridDBBandedColumn;
    Listeh: TcxGridDBBandedColumn;
    Listeia: TcxGridDBBandedColumn;
    ListekabulNo: TcxGridDBBandedColumn;
    Listektv: TcxGridDBBandedColumn;
    ListetakpNo: TcxGridDBBandedColumn;
    ListebasvuruNo: TcxGridDBBandedColumn;
    Listetarih: TcxGridDBBandedColumn;
    Listetc: TcxGridDBBandedColumn;
    Listets: TcxGridDBBandedColumn;
    Listeurr: TcxGridDBBandedColumn;
    ListeduzCa: TcxGridDBBandedColumn;
    ListeCaxp: TcxGridDBBandedColumn;
    ListeDBBandedColumn530100: TcxGridDBBandedColumn;
    ListeDBBandedColumn705140: TcxGridDBBandedColumn;
    ListeDBBandedColumn801840: TcxGridDBBandedColumn;
    ListeDBBandedColumn900200: TcxGridDBBandedColumn;
    ListeDBBandedColumn900210: TcxGridDBBandedColumn;
    ListeDBBandedColumn900340: TcxGridDBBandedColumn;
    ListeDBBandedColumn900681: TcxGridDBBandedColumn;
    ListeDBBandedColumn900900: TcxGridDBBandedColumn;
    ListeDBBandedColumn901020: TcxGridDBBandedColumn;
    ListeDBBandedColumn901040: TcxGridDBBandedColumn;
    ListeDBBandedColumn901220: TcxGridDBBandedColumn;
    ListeDBBandedColumn901910: TcxGridDBBandedColumn;
    ListeDBBandedColumn901940: TcxGridDBBandedColumn;
    ListeDBBandedColumn902110: TcxGridDBBandedColumn;
    ListeDBBandedColumn902210: TcxGridDBBandedColumn;
    ListeDBBandedColumn902290: TcxGridDBBandedColumn;
    ListeDBBandedColumn902980: TcxGridDBBandedColumn;
    ListeDBBandedColumn903130: TcxGridDBBandedColumn;
    ListeDBBandedColumn903240: TcxGridDBBandedColumn;
    ListeDBBandedColumn903670: TcxGridDBBandedColumn;
    ListeDBBandedColumn903990: TcxGridDBBandedColumn;
    ListeDBBandedColumn904120: TcxGridDBBandedColumn;
    ListeDBBandedColumn906610: TcxGridDBBandedColumn;
    ListeDBBandedColumn906630: TcxGridDBBandedColumn;
    ListeDBBandedColumn906660: TcxGridDBBandedColumn;
    ListeDBBandedColumn907440: TcxGridDBBandedColumn;
    ListeDBBandedColumn901260: TcxGridDBBandedColumn;
    ListeDBBandedColumn901500: TcxGridDBBandedColumn;
    ListeDBBandedColumn901460: TcxGridDBBandedColumn;
    ListeDBBandedColumn9016201: TcxGridDBBandedColumn;
    ListeDBBandedColumn9016202: TcxGridDBBandedColumn;
    ListeDBBandedColumn9016203: TcxGridDBBandedColumn;
    ListeDBBandedColumn9016204: TcxGridDBBandedColumn;
    ListeDBBandedColumn9016205: TcxGridDBBandedColumn;
    ListeDBBandedColumn9016206: TcxGridDBBandedColumn;
    ListeDBBandedColumn9016207: TcxGridDBBandedColumn;
    ListeDBBandedColumn9016208: TcxGridDBBandedColumn;
    ListeDBBandedColumn901940C: TcxGridDBBandedColumn;
    ListeDBBandedColumn902210C: TcxGridDBBandedColumn;
    ListeDBBandedColumn903130C: TcxGridDBBandedColumn;
    cxStyle8: TcxStyle;
    ListeColumn1: TcxGridDBBandedColumn;
    ListeColumn2: TcxGridDBBandedColumn;
    ListeColumn3: TcxGridDBBandedColumn;
    T6: TMenuItem;
    cxStyle9: TcxStyle;
    T7: TMenuItem;
    ListeColumn4: TcxGridDBBandedColumn;
    ListeColumn5: TcxGridDBBandedColumn;
    cxStyle10: TcxStyle;
    chkBand: TcxCheckGroup;
    cxSplitter1: TcxSplitter;
    E1: TMenuItem;
    chkDegerlendirme: TcxCheckBox;
    ListeColumn6: TcxGridDBBandedColumn;
    T8: TMenuItem;
    procedure cxButtonCClick(Sender: TObject);
    procedure Tarih;
    procedure T1Click(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure T3Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ADO_TetkiklerHastaListAfterScroll(DataSet: TDataSet);
    procedure btnSendClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTetkikDegerlendirClick(Sender: TObject);
    procedure ListeCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ListeDblClick(Sender: TObject);
    procedure btnListClick(Sender: TObject);
    procedure K2Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure BandVisible(band2 : Boolean = True ; band3 : Boolean = True ; band4 : Boolean = True ; band5 : Boolean = True);
    procedure ListeCustomization(Sender: TObject);
    procedure ListeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private

    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmTahliltakip: TfrmTahliltakip;

implementation
    uses data_modul , TahlilsonucGir, rapor , ktv_urrListesi, TedaviKart;

   // TedaviBilgisi ,
   // LabOrnekNo,
   // KiloOrder;
{$R *.dfm}


function TfrmTahliltakip.Init(Sender : TObject) : Boolean;
var
  c : integer;
  kolonBaslik : string;
begin
  ADO_Uyar.Active := true;
  tarih2.Date := ayliktarih(date,tarih1);

  Liste.RestoreFromRegistry('Klinik2019_TahlilTakipListesi');

  // Hemogramlarýn kolon baþlýklarýný labtestlerden alýp yazýyor. Dinamik olarak.
  for c := 0 to Liste.ColumnCount - 1 do
  begin
       if pos('901620',Liste.Columns[c].DataBinding.FieldName) > 0
       Then begin
         kolonBaslik :=
         datalar.QuerySelect('select tanimi from LabTestler where butKodu = '
                    + QuotedStr(Liste.Columns[c].DataBinding.FieldName) ).FieldByName('tanimi').AsString;

         if kolonBaslik <> '' then Liste.Columns[c].Caption := kolonBaslik;
       end;
  end;


  Result := True;
end;

procedure TfrmTahliltakip.cxButtonCClick(Sender: TObject);
var
  GirisRecord : TGirisFormRecord;
  F : TGirisForm;
begin
inherited;

  if Liste.Controller.SelectedRowCount > 0
  Then begin
      GirisRecord.F_dosyaNO_ := ADO_TetkiklerHastaList.fieldbyname('dosyaNo').AsString;
      GirisRecord.F_gelisNO_ := ADO_TetkiklerHastaList.fieldbyname('g').AsString;
      GirisRecord.F_HastaAdSoyad_ := ADO_TetkiklerHastaList.fieldbyname('h').AsString;
      GirisRecord.F_TakipNo_ := ADO_TetkiklerHastaList.fieldbyname('takýpNo').AsString;
      GirisRecord.F_BasvuruNo_ := ADO_TetkiklerHastaList.fieldbyname('basvuruNo').AsString;

      case Tcontrol(sender).Tag of
      -1 : begin
      (*
             if PnltetkikDegerlendir.Visible = True
              Then begin
                PnltetkikDegerlendir.Visible := False;
                cxSplitter1.Visible := False;
                cxGridKadir1.Align := alClient;
              end
              Else
              begin
               PnltetkikDegerlendir.Visible := True;
               cxSplitter1.Visible := True;
               cxGridKadir1.Align := alLeft;
               PnltetkikDegerlendir.Align := alClient;
              end;
              *)
           end;
      -2 : begin
              F := FormINIT(TagfrmHastaTetkikEkle,GirisRecord);
              if F <> nil then F.ShowModal;
           //   F := FormINIT(TagfrmTahlilsonucGir,GirisRecord,ikHayir,'');
          //    if F <> nil then F.show;
           end;
      -18 : begin
             S3.Click;
            end;
     -32 : begin
              F := FormINIT(TagfrmHastaTetkikEkle,GirisRecord);
            //  F._Foto_ := foto;
              if F <> nil then F.ShowModal;
             // TetkikEkle(dosyaNo.Text,_gelisNo_,datalar.HastaBil.Tarih);
           end;

      end;
  end;


end;

procedure TfrmTahliltakip.T1Click(Sender: TObject);
var
  sql , t ,hasta ,takipNo , basvuruNo : string;
  ado : TADOQuery;

begin
  (*
   if UserRight('Hasta Kartý', 'Tedavi Kartý') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
       exit;
   end;


       dosyaNo := ADO_TetkiklerHastaList.fieldbyname('dosyaNo').AsString;
       gelisNo := ADO_TetkiklerHastaList.fieldbyname('g').AsString;
       hasta := ADO_TetkiklerHastaList.fieldbyname('h').AsString;
       takipNo := ADO_TetkiklerHastaList.fieldbyname('takýpNo').AsString;
       basvuruNo := ADO_TetkiklerHastaList.fieldbyname('basvuruNo').AsString;

       Application.CreateForm(TfrmTedaviBilgisi, frmTedaviBilgisi);
       frmTedaviBilgisi.TedaviFormDosyaNo := dosyaNo;
       frmTedaviBilgisi.TedaviFormGelisNo := gelisNo;
       GorselAyar(frmTedaviBilgisi,datalar.global_img_list4);
       t := ' - GeliþNo : ' + gelisNo + ' - TakipNo : ' + '';


       frmTedaviBilgisi.TedaviBilgi(gelisNo,dosyaNo,
                                        (datetostr(date)),
                                        '',hasta,'');
       frmTedaviBilgisi.ShowModal;
       frmTedaviBilgisi := nil;
       *)

end;

procedure TfrmTahliltakip.T2Click(Sender: TObject);
var
  fark : double;
  hatali : TStringList;
  ado : TADOQuery;
  tedavi , sonuc , takip, basvuruNo , sql ,dosyaNo,gelisNo: string;
  satir : integer;
begin

    if UserRight('MEDULA ÝÞLEMLERÝ', 'Ödeme Yolla') = False
    then begin
         ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','','','info');
         exit;
    end;

    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;

  //  progres.MaxValue := Liste.Controller.SelectedRowCount - 1;
  //  Progres.Progress := 0;
  //  Progres.Visible := true;
 //   txtinfo.Caption := 'Hizmetler Okunuyor...';

    if mrYes = ShowMessageSkin('Seçili Takipler Ýçin Okuma Ýþlemi Baþlayacak','Onaylýyormusunuz ?','','msg')
    then begin
       for satir := 0 to Liste.Controller.SelectedRowCount - 1 do
       begin
            Application.ProcessMessages;
            takip := Liste.DataController.GetValue(
                                Liste.Controller.SelectedRows[satir].RecordIndex,50);
            dosyaNo := Liste.DataController.GetValue(
                                Liste.Controller.SelectedRows[satir].RecordIndex,0);
            gelisNo := Liste.DataController.GetValue(
                                Liste.Controller.SelectedRows[satir].RecordIndex,1);
         //  hasta := ADO_Tetkikler.fieldbyname('h').AsString;
            basvuruNo := Liste.DataController.GetValue(
                                Liste.Controller.SelectedRows[satir].RecordIndex,51);

            if LisansKontrol(fark) = True
            Then Begin
            //  txtinfo.Caption := 'Ödeme Bilgisi Yollanýyor....';

              hatali := TStringList.Create;
            //  txtinfo.Caption := 'Ödeme Bilgisi Yollanýyor....';
            {
              verisetleriyenile(takip,'D','G');

              sonuc := HizmetKayit_3(basvuruNo,takip,datalar.HizmetKayit,nil,
                            nil,nil,nil,
                            nil,nil,nil,
                            datalar.VeriSeti.Tahlil,datalar.VeriSeti.Tani,datalar.VeriSeti.Rad,
                            nil,
                            //datalar.veriSeti.KayitliIslem,
                            hatali,1,'');

               if sonuc = '0000'
               Then Begin
          //                                gridGelisler.Cells[8,x] := KayitliIslem[0].islemSiraNo;
                    datalar.RxKayitliIslem.First;
                     while not datalar.RxKayitliIslem.Eof do
                     Begin
                         ado.close;
                         ado.sql.clear;

                         if copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,1,1) = 'Y'
                         Then Begin
                              (*
                               gridYatak.Cells[8,gridYatak.row] := datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString;
                               sql := 'update gelisDetay set islemSiraNoYatak = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString) +
                                      ' where siraNoYatis = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString);
                               datalar.QueryExec(ado,sql);
                               *)
                         End
                         Else
                         if copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,1,1) = 'T'
                         Then Begin
                             sql := 'update Anamnez_Icd set islemSiraNo = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString) +
                                    ' where ID = ' + copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,2,15);
                             datalar.QueryExec(ado,sql);
                         End
                         Else
                         if copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,1,1) = 'L'
                         Then Begin
                            sql := 'update hareketler set islemSiraNo = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString) +
                                   ' where SIRANO = ' + copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,2,15);
                            datalar.QueryExec(ado,sql);
                         End
                         Else
                         if copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,1,1) = 'M'
                         Then Begin
                            sql := 'update hareketlerIS set islemSiraNo = ' + QuotedStr(datalar.RxKayitliIslem.fieldbyname('islemSiraNo').AsString) +
                                   ' where SIRANO = ' + copy(datalar.RxKayitliIslem.fieldbyname('hizmetSunucuRefNo').AsString,2,15);
                            datalar.QueryExec(ado,sql);
                         End;
                         datalar.RxKayitliIslem.Next;
                     End;
               End
               Else
               Begin
                //   txtHatalar1.Lines.Add(sonuc + ' ' +
                //   HataliIslem.Text);
                 txtHatalar.lines.Add(sonuc+' - '+hatali.Text);
               End;
               sleep(2000);
               }
            End;
         //   Progres.Progress := Progres.Progress + 1;
       end;
    end;
    ado.Free;
end;

procedure TfrmTahliltakip.T3Click(Sender: TObject);
var
  sql , _dosyaNo_ ,_dosyaNos_, _gelisNo_ , _Tarih , m ,ay1,ay2 : string;
  ado,ado0,ado1,ado2,ado3,ado4,ado5,ado6,ado7,ado8,ado9,ado10,ado11,ado12 : TADOQuery;
  DatasetKadir ,topluset : TDataSetKadir;
  x , satir : integer;
begin

   if ADO_TetkiklerHastaList.Eof then exit;
   
  _dosyaNo_ := ADO_TetkiklerHastaList.FieldByName('dosyaNo').AsString;
  _gelisNo_ := ADO_TetkiklerHastaList.FieldByName('g').AsString;
  _Tarih := copy(tarihal(tarih1.Date),1,4);

  ay1 := tarih1.GetValue; //tarihal(ayaditoay(txtAy.Text));
  ay2 := tarih2.GetValue; //tarihal(ayliktarih2(txtAy.Text));

   case TMenuItem(sender).Tag of
    10 : m := 'E';
    9 : m := 'H';
   end;


   for x := 0 to Liste.Controller.SelectedRowCount - 1 do
   begin
       satir := Liste.Controller.SelectedRows[x].RecordIndex;
       _dosyaNos_ := ifThen(_dosyaNos_='',_dosyaNos_+'',_dosyaNos_+',') +
         varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
   end;


  (*
   if TMenuItem(sender).Tag in [12]
   then begin
    topluset.Dataset1 := cxGrid2.Dataset;
    PrintYap('203T','Hasta Tetkik Takip Hepatit Toplu',inttostr(TagfrmHastaListe),topluset);
   end
   else begin
    *)
    DurumGoster(True);
    try
      ado := TADOQuery.Create(nil);
      sql := 'exec  sp_HastaTetkikTakipPIVOTToplu @dosyaNO = ' + QuotedStr(_dosyaNos_) + ' , @yil = ' + QuotedStr(ay1) +
                    ',@marker = ' + QuotedStr(m) + ',@f= -1 , @sirketKod = ' + QuotedStr(datalar.AktifSirket);
      datalar.QuerySelect(ado,sql);

      topluset.Dataset0 := ado;
      topluset.Dataset1 := Datalar.ADO_AktifSirket;
      PrintYap('205','Toplu Tetkik Takip',inttostr(TagfrmHastaListe),topluset);
    finally
      DurumGoster(False);
      ado.Free;
    end;

  // end;


(*
  if TMenuItem(sender).Tag = 9
  Then Begin
       sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih) + ',@f=-1,@marker=''H'' ';
  End
  Else
  Begin
    sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih) + ',@f=-1,@marker=''T''';
    datalar.QuerySelect(ADO_Tele,sql);

    sql := 'exec sp_HastaTetkikTakipPIVOT ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr(_Tarih) + ',@f=-1,@marker=''E''';
  end;

  datalar.QuerySelect(ADO_Tet,sql+ ' , @sirketKod = ' + QuotedStr(datalar.AktifSirket));

  try
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;
    sql := 'select * from hastakart where dosyaNo = ' + QuotedStr(_dosyaNo_);
    datalar.QuerySelect(ado,sql);
    DatasetKadir.Dataset0 := ado;
    DatasetKadir.Dataset1 := ADO_Tet;
    DatasetKadir.Dataset2 := ADO_Tele;


    if TMenuItem(sender).Tag = 9
    Then Begin
      PrintYap('205','\Hasta Tetkik Takip',intTostr(TagfrmTahliltakip),DatasetKadir);
    End
    Else
    Begin
      PrintYap('203','\Hasta Tetkik Takip Hepatit',intTostr(TagfrmTahliltakip),DatasetKadir);
    End;


  finally
    ado.Free;
  end;
  *)

end;





procedure TfrmTahliltakip.Tarih;
begin
    tarih1.Date := date;
    tarih2.Date := date;

end;

procedure TfrmTahliltakip.ADO_TetkiklerHastaListAfterScroll(DataSet: TDataSet);
var
  sql , d,g : string;
begin
  try
    d := ADO_TetkiklerHastaList.FieldByName('dosyaNo').AsString;
    g := ADO_TetkiklerHastaList.FieldByName('g').AsString;

    if PnltetkikDegerlendir.Visible = True
    Then Begin
      ado_tetkikDegerlendir.SQL.Clear;
      sql := 'select dosyaNo,gelisNo,Uyarý as uyari,Onay from HastaTedaviUyari ' +
             ' where dosyaNo = ' + QuotedStr(d) + ' and gelisNo = ' + g;
      datalar.QuerySelect(ado_tetkikDegerlendir,sql);
    End;

  except

  end;
end;

procedure TfrmTahliltakip.BandVisible(band2 : Boolean = True ; band3 : Boolean = True ; band4 : Boolean = True ; band5 : Boolean = True);
var
  c : integer;
begin
    Liste.Bands[2].Visible := band2;
    Liste.Bands[3].Visible := band3;
    Liste.Bands[4].Visible := band4;
    Liste.Bands[5].Visible := band5;





end;

procedure TfrmTahliltakip.btnListClick(Sender: TObject);
var
  sql ,apm : string;
  band : string;
begin

    DurumGoster;
    try
      if chkMisafir.Checked
      Then apm := '0,1'
      Else apm := '0,1,2';

      band := chkBand.EditValue;

      BandVisible((copy(band,1,1) = '1'), (copy(band,2,1) = '1') ,
                  (copy(band,3,1) = '1') ,(copy(band,4,1) = '1'));

     // exec sp_dbcmptlevel DIALIZ,90

      sql := 'exec sp_hastaTahlilSonuclari ' +
             QuotedStr(tarihal(tarih1.Date)) + ',' + QuotedStr(tarihal(tarih2.Date)) +
             ',@tip = ' + QuotedStr(DiyalizTip.EditValue) +
             ',@apm = ' + QuotedStr(apm) +
             ',@sirketKod = ' + QuotedStr(datalar.AktifSirket) +
             ',@tedaviUyariVar = ' + ifThen(chkDegerlendirme.Checked,'1','0');
      datalar.QuerySelect(ADO_TetkiklerHastaList,sql);
    finally
      DurumGoster(False);
    end;
end;

procedure TfrmTahliltakip.btnSendClick(Sender: TObject);
begin
  ListeDblClick(Liste);
end;

procedure TfrmTahliltakip.btnTetkikDegerlendirClick(Sender: TObject);
var
  sql , d,g,ad : string;
  i ,r , c : integer;
begin

    if MrYes = ShowMessageSkin('Deðerlendirme Yapýlacak ,Var Olan Deðerlendirme Ýptal Edilecek','','','msg')
    Then Begin
       DurumGoster(True,True);
       try
         c := Liste.Controller.SelectedRowCount;
         r := Liste.ViewData.DataController.GetFocusedRecordIndex;
         for i := 0 to c - 1 do
         begin
           Application.ProcessMessages;
           try
             d := Liste.DataController.GetValue(Liste.Controller.SelectedRows[i].RecordIndex,Liste.DataController.GetItemByFieldName('dosyaNo').Index);
             g := Liste.DataController.GetValue(Liste.Controller.SelectedRows[i].RecordIndex,Liste.DataController.GetItemByFieldName('g').Index);
             ad := Liste.DataController.GetValue(Liste.Controller.SelectedRows[i].RecordIndex,Liste.DataController.GetItemByFieldName('h').Index);
             //label3.Caption := ad;

             ado_tetkikDegerlendir.SQL.Clear;
             sql := 'exec sp_TetkikSonucDegerlandir ' + QuotedStr(d) + ',' + g;
             datalar.QuerySelect(ado_tetkikDegerlendir,sql);
           except
           end;


         end;
       finally
         DurumGoster(False);
       end;

    End;


end;

procedure TfrmTahliltakip.L1Click(Sender: TObject);
begin
(*
   Application.CreateForm(TfrmLabOrnekNoGiris, frmLabOrnekNoGiris);
   GorselAyar(frmLabOrnekNoGiris,datalar.global_img_list4);
   frmLabOrnekNoGiris.txtTarih.Date := tarih1.Date;
   frmLabOrnekNoGiris.txttarih1.Date := tarih2.Date;
   frmLabOrnekNoGiris.DiyalizTip.ItemIndex := DiyalizTip.ItemIndex;
   frmLabOrnekNoGiris.btnList.Click;
   frmLabOrnekNoGiris.ShowModal;
   frmLabOrnekNoGiris := nil;
   *)
end;



procedure TfrmTahliltakip.ListeCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin

 try
    if AViewInfo.Item.Index in [1..55]
    Then Begin
      if VarToStr(AViewInfo.GridRecord.Values[AViewInfo.Item.Index]) = '0'
      then begin
        ACanvas.Brush.Color := $008080FF;
        ACanvas.Font.Color := clWhite;
      end;
      (*
      else
      if chk.Checked
       then
         if TestKodToNormalDeger(inttostr(AViewInfo.Item.Tag),'','',AViewInfo.GridRecord.Values[AViewInfo.Item.Index]) = False
          then ACanvas.Brush.Color := $0080FFFF;
          *)
    End;
  except
  end;

end;

procedure TfrmTahliltakip.ListeCustomization(Sender: TObject);
begin
  inherited;
   Liste.StoreToRegistry('Klinik2019_TahlilTakipListesi');
end;

procedure TfrmTahliltakip.ListeDblClick(Sender: TObject);
var
  dosyaNo,gelisNo,hasta : string;
begin
(*

   if UserRight('TEDAVI KARTI', 'Tetkik Duzenle') = True
   Then Begin

     dosyaNo := ADO_TetkiklerHastaList.fieldbyname('dosyaNo').AsString;
     gelisNo := ADO_TetkiklerHastaList.fieldbyname('g').AsString;
     hasta := ADO_TetkiklerHastaList.fieldbyname('h').AsString;


     //if FindComponent('frmTahlilsonucGir') = nil
     //Then
     Application.CreateForm(TfrmTahlilsonucGir, frmTahlilsonucGir);
     frmTahlilsonucGir.HastaSonuc(dosyaNo,gelisNo,hasta);
     frmTahlilsonucGir.ShowModal;
     FreeAndNil(frmTahlilsonucGir);
//     frmTahlilsonucGir := nil;

   End
   Else ShowMessageSkin('Tekik Düzenleme Yetkiniz Yok','','','info');
   *)
end;

procedure TfrmTahliltakip.ListeMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   Liste.StoreToRegistry('Klinik2019_TahlilTakipListesi');
end;

procedure TfrmTahliltakip.S1Click(Sender: TObject);
var
 ado : TADOQuery;
 sql , dosyaNo,dosyaNos : string;
 satir , x : integer;
 TopluDataset : TDataSetKadir;
begin
  DurumGoster;
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;
  try
    if mrYes = ShowMessageSkin('Seçili Kayýtlar Ýçin Sonuç Yazdýrýlacak','','','msg')
    then begin
       for x := 0 to Liste.Controller.SelectedRowCount - 1 do
       begin
            Application.ProcessMessages;
            satir := Liste.Controller.SelectedRows[x].RecordIndex;
            dosyaNo := varToStr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
            dosyaNos :=
            ifThen(dosyaNos <> '',dosyaNos + ',' + dosyaNo, dosyaNo);
       end;
    end;

    if dosyaNos = '' then exit;
    
    sql := 'exec sp_HastaLabSonucToplu ' + QuotedStr(tarihal(tarih1.Date)) + ',' +
                                           QuotedStr(tarihal(tarih2.Date)) + ',' +
                                           QuotedStr(dosyaNos) + ',' +
                                           QuotedStr(datalar.AktifSirket);

    datalar.QuerySelect(ado,sql);
    TopluDataset.Dataset0 := ado;
    TopluDataset.Dataset1 := Datalar.ADO_AktifSirket;
    PrintYap('112','\Lab Sonuç Yazdýr (Toplu)',intToStr(TagfrmTahliltakip),TopluDataset);
  finally
      ado.Free;
      DurumGoster(False);
  end;
end;

procedure TfrmTahliltakip.cxCheckBox1Click(Sender: TObject);
begin
(*
  if cxCheckBox1.Checked
  Then
   PnltetkikDegerlendir.Visible := True
  Else
   PnltetkikDegerlendir.Visible := False;
                *)

end;

procedure TfrmTahliltakip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //frmTahlilsonucGir.Free;
end;

procedure TfrmTahliltakip.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;
  Sayfa3_Kolon3.Width := 0;
  Sayfa3_Kolon2.Width := 0;
  SayfaCaption('','','','','');
end;

procedure TfrmTahliltakip.K1Click(Sender: TObject);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
begin

    F := FormINIT(TagfrmKiloOrder,GirisRecord,ikHayir,'');
    if F <> nil then F.ShowModal


(*
  Application.CreateForm(TfrmKiloOrder, frmKiloOrder);
  frmKiloOrder.txtDonem.Date := tarih1.Date;
  frmKiloOrder.txtDonem2.Date := tarih2.Date;
  frmKiloOrder.sBitBtn1.Click;
  frmKiloOrder.ShowModal;
  frmKiloOrder := nil;
  *)
end;


procedure TfrmTahliltakip.K2Click(Sender: TObject);
var
  F : TGirisForm;
  GirisRecord : TGirisFormRecord;
begin

    F := FormINIT(TagfrmKtvListesi,GirisRecord,ikHayir,'');
    if F <> nil then F.ShowModal;

end;



end.
