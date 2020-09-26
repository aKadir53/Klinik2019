unit HastaIzlemListesi;

interface

uses
  Windows, Messages, SysUtils, strUtils,Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, DB, ADODB, AdvMemo, cxGroupBox, ExtCtrls, StdCtrls, Mask,
  sMaskEdit, sCustomComboEdit, sTooledit, sButton, cxStyles, DISWS,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,XSBuiltIns,
  cxClasses, cxGridCustomView, cxGrid, AdvmPS, cxDropDownEdit, cxCheckComboBox,
  cxRadioGroup, Buttons, sBitBtn,cxGridExportLink, cxImageComboBox,
  Menus, cxCheckGroup, cxCheckBox, cxGridDBBandedTableView,
  cxGridBandedTableView, cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxCalendar,
  cxCurrencyEdit,GirisUnit,kadir,KadirLabel,KadirType,GetFormClass,Data_modul, cxMemo,
  cxGridCardView, cxGridDBCardView, dxLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView, cxImage;

type
  TfrmIzlem = class(TGirisForm)
    Panel2: TPanel;
    Splitter1: TSplitter;
    cxGroupBox2: TcxGroupBox;
    Hastalar: TADOQuery;
    DataSource1: TDataSource;
    DyobKodlar: TADOTable;
    Panel4: TPanel;
    txtLog: TMemo;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    O1: TMenuItem;
    O2: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ADO_Tetkikler: TADOQuery;
    DataSource2: TDataSource;
    cxGrid2: TcxGrid;
    Liste: TcxGridDBTableView;
    ListedosyaNo: TcxGridDBColumn;
    ListeColumn1: TcxGridDBColumn;
    ListeColumn10: TcxGridDBColumn;
    Listeh: TcxGridDBColumn;
    ListeColumn9: TcxGridDBColumn;
    ListeDBColumn901940: TcxGridDBColumn;
    ListeColumn2: TcxGridDBColumn;
    ListeDBColumn902210: TcxGridDBColumn;
    ListeColumn3: TcxGridDBColumn;
    ListeDBColumn903130: TcxGridDBColumn;
    ListeColumn4: TcxGridDBColumn;
    ListeColumn5: TcxGridDBColumn;
    ListeColumn6: TcxGridDBColumn;
    ListeDBColumn903670: TcxGridDBColumn;
    ListeDBColumn901910: TcxGridDBColumn;
    DuzCa: TcxGridDBColumn;
    ListeDBColumn901260: TcxGridDBColumn;
    Caxp: TcxGridDBColumn;
    ListeDBColumn900200: TcxGridDBColumn;
    ListeDBColumn901500: TcxGridDBColumn;
    ListeDBColumn903240: TcxGridDBColumn;
    ListeDBColumn900210: TcxGridDBColumn;
    ListeDBColumn901620: TcxGridDBColumn;
    ListeDBColumn9016201: TcxGridDBColumn;
    ListeDBColumn9016202: TcxGridDBColumn;
    ListeDBColumn9016203: TcxGridDBColumn;
    ListeDBColumn9016204: TcxGridDBColumn;
    ListeDBColumn9016205: TcxGridDBColumn;
    ListeDBColumn9016206: TcxGridDBColumn;
    ListeDBColumn9016207: TcxGridDBColumn;
    ListeDBColumn9016208: TcxGridDBColumn;
    ListeDBColumn901020: TcxGridDBColumn;
    ListeDBColumn901040: TcxGridDBColumn;
    ListeDBColumn901220: TcxGridDBColumn;
    Ts: TcxGridDBColumn;
    ListeDBColumn904120: TcxGridDBColumn;
    ListeDBColumn900900: TcxGridDBColumn;
    ListeDBColumn900681: TcxGridDBColumn;
    ListeDBColumn900340: TcxGridDBColumn;
    ListeDBColumn902980: TcxGridDBColumn;
    ListeDBColumn901450: TcxGridDBColumn;
    ListeDBColumn907440: TcxGridDBColumn;
    ListeDBColumn906610: TcxGridDBColumn;
    ListeDBColumn906630: TcxGridDBColumn;
    ListeDBColumn906660: TcxGridDBColumn;
    ListeColumn11: TcxGridDBColumn;
    ListeColumn12: TcxGridDBColumn;
    ListeColumn13: TcxGridDBColumn;
    ListeColumn14: TcxGridDBColumn;
    ListeDBColumn902110: TcxGridDBColumn;
    ListeDBColumn902290: TcxGridDBColumn;
    ListeDBColumn901580: TcxGridDBColumn;
    ListeDBColumn903990: TcxGridDBColumn;
    ListeDBColumn530100: TcxGridDBColumn;
    ListeDBColumn801840: TcxGridDBColumn;
    ListeDBColumn705140: TcxGridDBColumn;
    ListeColumn7: TcxGridDBColumn;
    ListeColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    N1: TMenuItem;
    T1: TMenuItem;
    K1: TMenuItem;
    H1: TMenuItem;
    cxStyle2: TcxStyle;
    cxGrid1: TcxGridKadir;
    cxGrid1Level1: TcxGridLevel;
    gridHastalar: TcxGridDBBandedTableView;
    gridHastalarTCKIMLIKNO: TcxGridDBBandedColumn;
    gridHastalarkod: TcxGridDBBandedColumn;
    gridHastalarADI: TcxGridDBBandedColumn;
    gridHastalarTescilNo: TcxGridDBBandedColumn;
    gridHastalarBrans: TcxGridDBBandedColumn;
    gridHastalardurum: TcxGridDBBandedColumn;
    gridHastalarsertifika: TcxGridDBBandedColumn;
    gridHastalarTCKimlik: TcxGridDBBandedColumn;
    gridHastalarReceteBrans: TcxGridDBBandedColumn;
    gridHastalarSertifikaNo: TcxGridDBBandedColumn;
    gridHastalarTip: TcxGridDBBandedColumn;
    gridHastalarTdisID: TcxGridDBBandedColumn;
    gridHastalarUzman: TcxGridDBBandedColumn;
    gridHastalarAnemi: TcxGridDBBandedColumn;
    gridHastalartedaviSeyri: TcxGridDBBandedColumn;
    gridHastalarDVitamin: TcxGridDBBandedColumn;
    gridHastalarDVaciklama: TcxGridDBBandedColumn;
    gridHastalarSinekalset: TcxGridDBBandedColumn;
    gridHastalarAntihipertansif: TcxGridDBBandedColumn;
    gridHastalarFosforBagAjan: TcxGridDBBandedColumn;
    gridHastalardiyalizTedaviYontemi: TcxGridDBBandedColumn;
    gridHastalarbhdat: TcxGridDBBandedColumn;
    gridHastalarDYOBID: TcxGridDBBandedColumn;
    gridHastalardosyaNo: TcxGridDBBandedColumn;
    gridHastalargelisNo: TcxGridDBBandedColumn;
    gridHastalardoktor: TcxGridDBBandedColumn;
    gridHastalarTarih: TcxGridDBBandedColumn;
    gridHastalarsistemSorgusu: TcxGridDBBandedColumn;
    gridHastalarbasboyun: TcxGridDBBandedColumn;
    gridHastalarakciger: TcxGridDBBandedColumn;
    gridHastalarkalp: TcxGridDBBandedColumn;
    gridHastalarabdomen: TcxGridDBBandedColumn;
    gridHastalarEkst: TcxGridDBBandedColumn;
    gridHastalarkurukilo: TcxGridDBBandedColumn;
    gridHastalarkanah: TcxGridDBBandedColumn;
    gridHastalarantikoa: TcxGridDBBandedColumn;
    gridHastalardiyalizor: TcxGridDBBandedColumn;
    gridHastalardiyalizat: TcxGridDBBandedColumn;
    gridHastalarss: TcxGridDBBandedColumn;
    gridHastalardigerNot: TcxGridDBBandedColumn;
    gridHastalarpsiko: TcxGridDBBandedColumn;
    gridHastalarHCOOO: TcxGridDBBandedColumn;
    gridHastalarK: TcxGridDBBandedColumn;
    gridHastalarGU: TcxGridDBBandedColumn;
    gridHastalarHEPARIN: TcxGridDBBandedColumn;
    gridHastalarGIRISYOLU: TcxGridDBBandedColumn;
    gridHastalarCA: TcxGridDBBandedColumn;
    gridHastalarNa: TcxGridDBBandedColumn;
    gridHastalarDS: TcxGridDBBandedColumn;
    gridHastalarDC: TcxGridDBBandedColumn;
    gridHastalarYA: TcxGridDBBandedColumn;
    gridHastalarmalzemeSablon: TcxGridDBBandedColumn;
    gridHastalarIgne: TcxGridDBBandedColumn;
    gridHastalarIgneV: TcxGridDBBandedColumn;
    gridHastalarISI: TcxGridDBBandedColumn;
    gridHastalarDiyalizorBarkod: TcxGridDBBandedColumn;
    gridHastalarHEPARINUYG: TcxGridDBBandedColumn;
    gridHastalarHEPARINTIP: TcxGridDBBandedColumn;
    gridHastalarid: TcxGridDBBandedColumn;
    gridHastalarruhsatNo: TcxGridDBBandedColumn;
    gridHastalarmerkezAd: TcxGridDBBandedColumn;
    gridHastalarGIRISKILO: TcxGridDBBandedColumn;
    gridHastalarCIKISKILO: TcxGridDBBandedColumn;
    gridHastalarik: TcxGridDBBandedColumn;
    gridHastalarKanAlimTarihi: TcxGridDBBandedColumn;
    gridHastalarHASTAADI: TcxGridDBBandedColumn;
    gridHastalarHASTASOYADI: TcxGridDBBandedColumn;
    gridHastalarAday: TcxGridDBBandedColumn;
    gridHastalarDiabet: TcxGridDBBandedColumn;
    gridHastalarsirano: TcxGridDBBandedColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle4: TcxStyle;
    gridHastalarColumn1: TcxGridDBBandedColumn;
    N2: TMenuItem;
    U1: TMenuItem;
    gridHastalarColumn2: TcxGridDBBandedColumn;
    DSVerileriniGnder1: TMenuItem;
    DSVerileriniGncelle1: TMenuItem;
    MuayeneTutanaklarnYazdr1: TMenuItem;
    ExceleGnder1: TMenuItem;
    gridHastalarColumn3: TcxGridDBBandedColumn;
    H2: TMenuItem;
    K2: TMenuItem;
    gridHastalarColumn4: TcxGridDBBandedColumn;
    U2: TMenuItem;

    procedure TopPanelButonClick(Sender: TObject);
    procedure HastalarAfterScroll(DataSet: TDataSet);
    procedure HastalarBeforePost(DataSet: TDataSet);
    procedure btnPostClick(Sender: TObject);
    procedure txtAciklamaChange(Sender: TObject);
    procedure KODSWSEKLE(kods : ArrayOfCODE);
    procedure KodlariYükle;
    procedure VeriSetiDoldur(var DiyalizTedavi : DISWS.DIYALIZTEDAVI ; dosyaNo,gelisNo,BHDAT : string);
    procedure gridHastalarInitEdit(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure gridHastalarDblClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure gridHastalarStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure ListeDblClick(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure btnUzmanMYazdirClick(Sender: TObject);
    procedure gridHastalarSelectionChanged(Sender: TcxCustomGridTableView);
    procedure btnIptalClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure U1Click(Sender: TObject);
    procedure gridHastalarkanahPropertiesEditValueChanged(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    Procedure TDISKaydet(islem : integer);
    procedure FormCreate(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure TopluDuzenle(Liste : TcxGridDBBandedTableView ; Doktor , Tarih : string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIzlem: TfrmIzlem;
  Tc : Int64;
  stop : integer;
  UDoktor : string;
implementation

{$R *.dfm}

uses rapor,AnaUnit;

procedure TfrmIzlem.K1Click(Sender: TObject);
begin
  inherited;
  KodlariYükle;
end;

procedure TfrmIzlem.KodlariYükle;
var
   kodlar : ArrayOfCODE;
begin
    datalar.DYOB.URL := DyopURL;
    DyobKodlar.Active := True;
    try
     kodlar := (datalar.DYOB as KRIZMA_DIS_TREATMENTSERVICESoap).LOADHEMODIYALIZKOD('8DCC2CC82FF34396A9859014E7350A3E','C7865A18D8244AF88122468808EE1397','4BC01A01CDA14EF2ABCD98728B05FB9A');
  //   KODSWSEKLE(kodlar);

     kodlar := (datalar.DYOB as KRIZMA_DIS_TREATMENTSERVICESoap).LOADPERITONDIYALIZKOD('8DCC2CC82FF34396A9859014E7350A3E','C7865A18D8244AF88122468808EE1397','4BC01A01CDA14EF2ABCD98728B05FB9A');
  //   KODSWSEKLE(kodlar);

    except on e : Exception do
     begin
       ShowMessageSkin(e.Message,'','','info') ;
     end;
    end;


    try
 //    kodlar := (datalar.DYOB as DIYALIZWSSoap).LOADHEMODIYALIZTESTSAYLIK('870545FBCBF14AD4B55A88E7EF623964','EDBC66526219455AA4C1FE6713645436');
 //    KODSWSEKLE(kodlar);
//     kodlar := (datalar.DYOB as DIYALIZWSSoap).LOADHEMODIYALIZDIYALIZTESTSUCAYLIK('870545FBCBF14AD4B55A88E7EF623964','EDBC66526219455AA4C1FE6713645436');
 //    KODSWSEKLE(kodlar);
//     kodlar := (datalar.DYOB as DIYALIZWSSoap).LOADHEMODIYALIZDIYALIZTESTSALTIAYLIK('870545FBCBF14AD4B55A88E7EF623964','EDBC66526219455AA4C1FE6713645436');
 //    KODSWSEKLE(kodlar);
//     kodlar := (datalar.DYOB as DIYALIZWSSoap).LOADHEMODIYALIZDIYALIZTESTSBIRYILLIK('870545FBCBF14AD4B55A88E7EF623964','EDBC66526219455AA4C1FE6713645436');
 //    KODSWSEKLE(kodlar);

    except on e : Exception do
     begin
       ShowMessageSkin(e.Message,'','','info') ;
     end;
    end;
end;

procedure TfrmIzlem.KODSWSEKLE(kods : ArrayOfCODE);
var
  r ,id : integer;
  kodset : string;
begin
     for r := 0 to length(kods) - 1 do
    begin
       id := kods[r].ID;
       kodset := kods[r].CODESET;
       if DyobKodlar.Locate('ID;KODSET',VarArrayOf([id,kodset]),[]) = False
       Then Begin
         DyobKodlar.Append;
         DyobKodlar.FieldByName('ID').AsInteger := kods[r].ID;
         DyobKodlar.FieldByName('ADI').AsString := kods[r].ADI;
       //  DyobKodlar.FieldByName('OLCUBIRIM').AsString := kods[r].OLCUBIRIM;
      //   DyobKodlar.FieldByName('TIPI').AsString := kods[r].TIPI;
      //   DyobKodlar.FieldByName('KODSET').AsString := kods[r].KODSET;
     //    DyobKodlar.FieldByName('TESTYAPILMAPERYODU').AsInteger := kods[r].TESTYAPILMAPERYODU;
     //    DyobKodlar.FieldByName('HDZORUNLU').AsInteger := kods[r].HDZORUNLU;
     //    DyobKodlar.FieldByName('PDZORUNLU').AsInteger := kods[r].PDZORUNLU;
         DyobKodlar.Post;
       End;
    end;
end;

procedure TfrmIzlem.ListeDblClick(Sender: TObject);
var
  dosyaNo,gelisNo,hasta : string;
begin
     dosyaNo := Hastalar.fieldbyname('dosyaNo').AsString;
     gelisNo := Hastalar.fieldbyname('gelisNo').AsString;
     hasta := Hastalar.fieldbyname('HASTAADI').AsString + ' ' + Hastalar.fieldbyname('HASTASOYADI').AsString;
    (*
     Application.CreateForm(TfrmTahlilsonucGir, frmTahlilsonucGir);
     frmTahlilsonucGir.HastaSonuc(dosyaNo,gelisNo,hasta);
     frmTahlilsonucGir.ShowModal;
     frmTahlilsonucGir := nil;
     *)
end;

procedure TfrmIzlem.O1Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin

  if gridHastalar.Controller.SelectedRowCount > 0
  Then begin
    ado := TADOQuery.Create(nil);
    ado.Connection := datalar.ADOConnection2;
    try
      sql := 'update Hasta_gelisler set HZLNO = ' + inttostr(TMenuItem(sender).Tag) +
             ' where SIRANO = ' + hastalar.FieldByName('SIRANO').AsString;

      datalar.QueryExec(ado,sql);
    finally
      ado.free;
    end;

  end;

end;

procedure TfrmIzlem.sBitBtn1Click(Sender: TObject);
begin
  stop := 1;
end;

procedure TfrmIzlem.T1Click(Sender: TObject);
var
  sql ,t2: string;
  t1 : tdate;
begin
  inherited;
  (*
   t2 := tarihal(ayliktarih(tarih1.Date,t1));
    cxGrid2.Visible := True;
    sql := 'exec sp_hastaTahlilSonuclari ' +
           QuotedStr(tarihal(t1)) + ',' + QuotedStr(t2) +
           ',@tip = ' + QuotedStr(DiyalizTip.EditValue) +
           ',@dosyaNo = ' + QuotedStr(hastalar.FieldByName('dosyaNo').AsString);

    datalar.QuerySelect(ADO_Tetkikler,sql);
    *)
end;


procedure TfrmIzlem.TDISKaydet(islem : integer);
var
    DiyalizTedavi : DISWS.DIYALIZTEDAVI;
    Cvp : DISWS.SONUC;
    UTarih , TTarih : TXSDateTime;
    r , islemTip , x : integer;
    DIYALIZTEDAVIKODS : DISWS.ArrayOfDIYALIZTEDAVI_KOD;
    DIYALIZTEDAVIKOD : DISWS.DIYALIZTEDAVI_KOD;
    HASTASEANS : DISWS.SEANS;
    HASTATESTLER : DISWS.ArrayOfHASTATEST;
    HASTATEST : DISWS.HASTATEST;
    Tarih,sql ,dosyaNo , gelisNo : string;
    ado : TADOQuery;
    XsDec : TXSDecimal;
    ApT : Variant;
begin

    DiyalizTedavi := DISWS.DIYALIZTEDAVI.Create;
    Cvp := SONUC.Create;

    datalar.DYOB.URL := DyopURL; //'https://dyob.saglik.gov.tr/DYOBWS/DIYALIZWS.asmx';
     //


   stop := 0;
   for x := 0 to gridHastalar.Controller.SelectedRowCount - 1 do
   begin
       Application.ProcessMessages;
       if stop = 1 then break;

       dosyaNo := gridHastalar.DataController.GetValue(
                                      gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('dosyaNo').Index);
       gelisNo := gridHastalar.DataController.GetValue(
                                      gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('gelisNo').Index);
       Tarih := gridHastalar.DataController.GetValue(
                                      gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('KanAlimTarihi').Index);


        VeriSetiDoldur(DiyalizTedavi,dosyaNo,gelisNo,Tarih);
        if not DirectoryExists('C:\NoktaV3\DYOB')
        then MkDir('C:\NoktaV3\DYOB');

        datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\DYOB\'+dosyaNo+'_'+gelisNo;
        try

          case islem of
            -11 :  Cvp := (datalar.DYOB as KRIZMA_DIS_TREATMENTSERVICESoap).INSERTDIYALIZTEDAVI(datalar._DyobKurumKodu_,datalar._DyobSifre_,datalar._DyobServiceKodu_,
                                                                      DiyalizTedavi);
            -10 :  Cvp := (datalar.DYOB as KRIZMA_DIS_TREATMENTSERVICESoap).UPDATEDIYALIZTEDAVI(datalar._DyobKurumKodu_,datalar._DyobSifre_,datalar._DyobServiceKodu_,
                                                                       DiyalizTedavi);
          end;


        except on e : Exception do
         begin
            ShowMessageSkin(e.Message,'','','info');
            txtLog.Lines.Add(e.Message);
            Cvp.HATAVAR := True;
         end;
        end;

        if Cvp.HATAVAR = true
        Then Begin
            txtLog.Lines.Add(Cvp.HATAMESAJI + ' - ' + Cvp.ACIKLAMA);
        End
        Else
        begin
            ado := TADOQuery.Create(nil);
            ado.Connection := datalar.ADOConnection2;
            sql := 'update hasta_gelisler set DYOBID = ' + QuotedStr(Cvp.KOD) +
                   ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo;
            datalar.QueryExec(ado,sql);
            ado.Free;
            txtLog.Lines.Add(Cvp.KOD + ' Gönderim Baþarýlý');
            gridHastalar.DataController.SetValue(
                                      gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('DYOBID').Index,Cvp.KOD);
        end;
   end; // for end

end;


procedure TfrmIzlem.TopluDuzenle(Liste: TcxGridDBBandedTableView ; Doktor , Tarih : string);
var
 x , satir : integer;
 dosyaNo , gelisNo : string;
begin
    DurumGoster(True);
    try

      for x := 0 to Liste.Controller.SelectedRowCount - 1 do
      begin
         Application.ProcessMessages;
         satir := Liste.Controller.SelectedRows[x].RecordIndex;
         dosyaNo := varToSTr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('dosyaNo').Index));
         gelisNo := varToSTr(Liste.DataController.GetValue(satir,Liste.DataController.GetItemByFieldName('gelisNo').Index));

         datalar.QueryExec('update UzmanGozlem set doktor = ' + QuotedStr(doktor) +
                           ',Tarih = ' + QuotedStr(Tarih) +
                           ' where dosyaNo = ' + QuotedStr(dosyaNo) +
                           ' and gelisNo = ' + gelisNo);

      end;
    finally
      DurumGoster(False);
    end;
end;

procedure TfrmIzlem.TopPanelButonClick(Sender: TObject);
var
  sql,tip,t2,islem : string;
  t1 : Tdate;
  st : Tstrings;
  ado : TADOQuery;
begin
 // sql := 'SELECT kod,Tanimi FROM DoktorlarT WHERE Uzman = ''Evet'' AND durum = ''Aktif''';
 // UDoktor := datalar.QuerySelect(sql).FieldByName('kod').AsString;


  tip := '0';//DiyalizTip.EditingValue;
  islem := '1';


  DurumGoster(True,False,KayitYukleMesaj);
  try
   sql := 'exec sp_IzlemList @tarih1 = ' + txtTopPanelTarih1.GetSQLValue + ',@tarih2 = ' + txtTopPanelTarih2.GetSQLValue +
          ',@tip = ' + QuotedStr(tip) + ',@islem = ' + QuotedStr(islem) + ',@sirketKod = ' + QuotedStr(datalar.AktifSirket) +
          ',@seans = ' + QuotedStr(txtSeansTopPanel.Text);

   datalar.QuerySelect(hastalar,sql);

  finally
    DurumGoster(False);
  end;
   (*
   st := TStringList.Create;
   ItemsDoldurName('txtDamarGiris',st);
   TcxComboBoxProperties(gridHastalarGIRISYOLU.Properties).Items.Clear;
   TcxComboBoxProperties(gridHastalarGIRISYOLU.Properties).Items.AddStrings(st);
   ItemsDoldurName('txtHipar',st);
   TcxComboBoxProperties(gridHastalarHEPARIN.Properties).Items.Clear;
   TcxComboBoxProperties(gridHastalarHEPARIN.Properties).Items.AddStrings(st);

   ItemsDoldurName('txtYA',st);
   TcxComboBoxProperties(gridHastalarYA.Properties).Items.Clear;
   TcxComboBoxProperties(gridHastalarYA.Properties).Items.AddStrings(st);
   ItemsDoldurName('txtDializat',st);
   TcxComboBoxProperties(gridHastalardiyalizat.Properties).Items.Clear;
   TcxComboBoxProperties(gridHastalardiyalizat.Properties).Items.AddStrings(st);
   ItemsDoldurName('txtDializorTipi',st);
   TcxComboBoxProperties(gridHastalarDS.Properties).Items.Clear;
   TcxComboBoxProperties(gridHastalarDS.Properties).Items.AddStrings(st);
   ItemsDoldurName('txtDializorCinsi',st);
   TcxComboBoxProperties(gridHastalarDC.Properties).Items.Clear;
   TcxComboBoxProperties(gridHastalarDC.Properties).Items.AddStrings(st);
   ItemsDoldurDoktorlar('',st);
   TcxComboBoxProperties(gridHastalardoktor.Properties).Items.Clear;
   TcxComboBoxProperties(gridHastalardoktor.Properties).Items.AddStrings(st);

   st.Free;
     *)
end;

procedure TfrmIzlem.btnIptalClick(Sender: TObject);
begin
  inherited;
 //pnlUzmanTarihUpdate.Visible := false;
end;

procedure TfrmIzlem.btnOkClick(Sender: TObject);
var
  sql,dosyaNo,gelisNo : string;
  ado : TADOQuery;
  x : integer;
begin
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;

   for x := 0 to gridHastalar.Controller.SelectedRowCount - 1 do
   begin
       Application.ProcessMessages;
       if stop = 1 then break;

       dosyaNo := gridHastalar.DataController.GetValue(
                                      gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('dosyaNo').Index);
       gelisNo := gridHastalar.DataController.GetValue(
                                      gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('gelisNo').Index);
       (*
       sql := 'update uzmanGozlem set ' +
               'Tarih = ' +  QuotedStr(tarihal(txtUzmanDate.Date)) +
               ' where dosyaNo = ' + QuotedStr(dosyaNo) +
               ' and gelisNo = ' + gelisNo;
        datalar.QueryExec(ado,sql);
         *)
   end;


  ado.Free;






end;

procedure TfrmIzlem.btnPostClick(Sender: TObject);
begin
  Hastalar.Post;
end;

procedure TfrmIzlem.btnUzmanMYazdirClick(Sender: TObject);
begin
    frmRapor.topluset.Dataset0 := Hastalar;
    frmRapor.raporData1(frmRapor.topluset ,'200T','\Uzman Muayene Tutanak(Toplu)');
    frmRapor.ShowModal;
end;

procedure TfrmIzlem.VeriSetiDoldur(var DiyalizTedavi : DISWS.DIYALIZTEDAVI ; dosyaNo,gelisNo,BHDAT : string);
var
    HastaKayit : DISWS.HASTAKAYIT;
    Hasta : DISWS.HASTA;
    Cvp : SONUC;
    Tarih , UTarih , TTarih : TXSDateTime;
    r , islemTip : integer;
    DIYALIZTEDAVIKODS : DISWS.ArrayOfDIYALIZTEDAVI_KOD;
    DIYALIZTEDAVIKOD : DISWS.DIYALIZTEDAVI_KOD;
    HASTASEANS : DISWS.SEANS;
    HASTATESTLER : DISWS.ArrayOfHASTATEST;
    HASTATEST : DISWS.HASTATEST;
    sql,tt : string;
    ado : TADOQuery;
    XsDec : TXSDecimal;
    ApT : Variant;

begin

  try

      HASTASEANS := SEANS.Create;
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      sql := 'exec sp_DYOBDataset @tip = ' + quotedstr('tedavi') +
             ',@protokolNo = ' + quotedstr('') +
             ',@dosyaNo = ' + quotedstr(dosyaNo) + ',@gelisNo = ' + gelisNo +
             ',@bunHesapla = ' + chkList.EditValue  +
             ',@izlemTarih = ' + QuotedStr('UZM');
      datalar.QuerySelect(ado,sql);


      Tc := StrToInt64(ado.FieldByName('TC').AsString);

      BHDAT := tarihal(ado.FieldByName('Tarih').AsDateTime);
      Tarih := TXSDateTime.Create;
      Tarih.Year := strtoint(copy(BHDAT,1,4));
      Tarih.Month := strtoint(copy(BHDAT,5,2));
      Tarih.Day := strtoint(copy(BHDAT,7,2));

      DiyalizTedavi.TARIH := Tarih;
      DiyalizTedavi.ID := ado.FieldByName('DYOBID').AsInteger;
      DiyalizTedavi.DIYALIZTEDAVIYONTEMI_ID := ado.FieldByName('DIYALIZTEDAVIYONTEMI_ID').AsInteger;


      HastaKayit := DISWS.HASTAKAYIT.Create;
      HastaKayit.KAYITTARIHI := Tarih;
      HastaKayit.ID := ado.FieldByName('hastaID').AsInteger;//77888;//strtoint(dosyaNo);
    //  HastaKayit.HASTA_ID := 1;

      Hasta := DISWS.HASTA.Create;
     // Hasta.ID := 77888;//1;  hastanýn dyob Id
    //  Hasta.ADI := ado.FieldByName('HASTAADI').AsString;
    //  Hasta.SOYADI := ado.FieldByName('HASTASOYADI').AsString;
      Hasta.TCKIMLIK := Tc;
    //  if ado.FieldByName('misafir').asinteger = 1 then Hasta.MISAFIR := True else Hasta.MISAFIR := False;
      if ado.FieldByName('EVHEMODIYALIZI').Asinteger = 1 then Hasta.EVHEMODIYALIZI := true else Hasta.EVHEMODIYALIZI := false;
//      Hasta.EVHEMODIYALIZI :=   ado.FieldByName('EVHEMODIYALIZI').AsBoolean;


      HastaKayit.HASTA := Hasta;
      DiyalizTedavi.HASTAKAYIT := HastaKayit;


      sql := 'exec sp_DYOBDataset ' + quotedstr('DIYALIZTEDAVIKODS') + ',' + quotedstr('') + ',' + quotedstr(dosyaNo) + ',' + gelisNo;
      datalar.QuerySelect(ado,sql);

      if not ado.Eof
      Then Begin
         SetLength(DIYALIZTEDAVIKODS,ado.RecordCount);
         r := 0;
         while not ado.eof  do
         begin
            if ado.FieldByName('ID').AsInteger > 0
            then begin
              DIYALIZTEDAVIKOD := DIYALIZTEDAVI_KOD.Create;
              DIYALIZTEDAVIKOD.KOD_ID := ado.FieldByName('ID').AsInteger;
              XsDec := TXSDecimal.Create;
              XsDec.DecimalString := ado.FieldByName('NUMERICVALUE').AsString;
              DIYALIZTEDAVIKOD.NUMERICVALUE := XsDec;
              DIYALIZTEDAVIKODS[r] := DIYALIZTEDAVIKOD;
            end;
            ado.Next;
            inc(r);
         end;
      End;

      DiyalizTedavi.DIYALIZTEDAVIKODLIST:= DIYALIZTEDAVIKODS;
  except on e : Exception do
      begin
         ShowMessageSkin(e.Message,'','','info');
      end;
  end;

  try
    sql := 'exec sp_DYOBDataset ' + quotedstr('seans') + ',' + quotedstr('') + ',' + quotedstr(dosyaNo) + ',' + gelisNo;

    datalar.QuerySelect(ado,sql);

    UTarih := TXSDateTime.Create;
    UTarih.Year := strtoint(copy(tarihal(ado.FieldByName('UTARIH').AsDateTime),1,4));
    UTarih.Month := strtoint(copy(tarihal(ado.FieldByName('UTARIH').AsDateTime),5,2));
    UTarih.Day := strtoint(copy(tarihal(ado.FieldByName('UTARIH').AsDateTime),7,2));

    HASTASEANS.TARIH := UTarih;
   // HASTASEANS.INSERTTARIHI := UTarih;
  //  HASTASEANS.UPDATETARIHI := UTarih;
    HASTASEANS.DOKTORACIKLAMA := ado.FieldByName('aciklama').AsString;
    HASTASEANS.PERSONEL_ID := ado.FieldByName('TDisID').AsInteger;


     XsDec := TXSDecimal.Create;
     XsDec.DecimalString := Format('%d', [StrToInt(ado.FieldByName('seansSure').AsString)]);
     HASTASEANS.SEANSSURESI := XsDec;

     XsDec := TXSDecimal.Create;
     XsDec.DecimalString := ado.FieldByName('GIRISKILO').AsString;
     HASTASEANS.DIYALIZONCESIVUCUTAGIRLIGI := XsDec;

     XsDec := TXSDecimal.Create;
     XsDec.DecimalString := ado.FieldByName('CIKISKILO').AsString;
     HASTASEANS.DIYALIZSONRASIVUCUTAGIRLIGI := XsDec;

  //   XsDec := TXSDecimal.Create;
  //   XsDec.DecimalString := '0';
 //    HASTASEANS.KLIRENSDEGERI := XsDec;

     XsDec := TXSDecimal.Create;
     XsDec.DecimalString := '0';
     HASTASEANS.DIYALIZATURE := XsDec;

     XsDec := TXSDecimal.Create;
     XsDec.DecimalString := '0';
     HASTASEANS.DIYALIZATDRENAJVOLUMU := XsDec;

     XsDec := TXSDecimal.Create;
     XsDec.DecimalString := '0';
     HASTASEANS.IDRARURE := XsDec;

     XsDec := TXSDecimal.Create;
     XsDec.DecimalString := '0';
     HASTASEANS.IDRARVOLUMU := XsDec;

     XsDec := TXSDecimal.Create;
     XsDec.DecimalString := '0';
     HASTASEANS.BOY := XsDec;

     DiyalizTedavi.SEANS := HASTASEANS;

    except on e : Exception do
      begin
         ShowMessageSkin(e.Message,'','','info');
      end;
    end;




  try
    sql := 'exec sp_DYOBDataset ' + quotedstr('test') + ',' + quotedstr('') + ',' +
                                   quotedstr(dosyaNo) + ',' + gelisNo + ',' + '0';
    datalar.QuerySelect(ado,sql);

    if not ado.Eof
    Then Begin
      SetLength(HASTATESTLER,ado.RecordCount);
      r := 0;
      while not ado.eof  do
      begin
         HASTATEST := DISWS.HASTATEST.Create;
         HASTATEST.TEST_ID := ado.FieldByName('ID').AsInteger;
         TTarih := TXSDateTime.Create;
         TTarih.Year := strtoint(copy(tarihal(ado.FieldByName('TARIH').AsDateTime),1,4));
         TTarih.Month := strtoint(copy(tarihal(ado.FieldByName('TARIH').AsDateTime),5,2));
         TTarih.Day := strtoint(copy(tarihal(ado.FieldByName('TARIH').AsDateTime),7,2));
         HASTATEST.TARIH := TTarih;
        // HASTATEST.INSERTTARIHI := TTarih;
       //  HASTATEST.UPDATETARIHI := TTarih;

         HASTATEST.OLCUBIRIMI := ado.FieldByName('OLCUBIRIM').AsString;

         if ado.FieldByName('sonucTip').AsString = 'N'
         Then Begin
           XsDec := TXSDecimal.Create;
           XsDec.DecimalString := ado.FieldByName('gd').AsString;
           HASTATEST.SONUC := XsDec;
         End;

         if ado.FieldByName('sonucTip').AsString = 'S'
         Then Begin
           XsDec := TXSDecimal.Create;
           XsDec.DecimalString := '0';
           HASTATEST.SONUC := XsDec;
           HASTATEST.SONUCSTR := ado.FieldByName('islemAciklamasi').AsString;
         End;

         if ado.FieldByName('sonucTip').AsString = 'B'
         Then Begin
           XsDec := TXSDecimal.Create;
           XsDec.DecimalString := '0';
           HASTATEST.SONUC :=  XsDec;//ado.FieldByName('islemAciklamasi').AsString;

           if ado.FieldByName('gd').AsInteger = 1
           Then
             HASTATEST.ISPOZITIF := True;

           if ado.FieldByName('gd').AsInteger = -1
           Then
             HASTATEST.ISPOZITIF := False;

         End;
         HASTATESTLER[r] := HASTATEST;
         ado.Next;
         inc(r);
      end;
    End;

    DiyalizTedavi.HASTATESTLER := HASTATESTLER;
 except on e : exception do
  begin
    ShowMessageSkin(e.Message,'','','info');
  end;
 end;



end;


procedure TfrmIzlem.cxButtonCClick(Sender: TObject);
var
 TopluDataset : TDataSetKadir;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
 x : integer;
 dosyaNo,gelisNo,sql , SIRANOS : string;
 satir : integer;
 _Tarih_ : TDate;
 ado : TADOQuery;
begin
  inherited;

  if Hastalar.Eof then exit;


  GirisFormRecord.F_dosyaNo_ := Hastalar.FieldByName('dosyaNo').AsString;;
  GirisFormRecord.F_gelisNo_ := Hastalar.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_HastaAdSoyad_ := Hastalar.FieldByName('HASTAADI').AsString + ' ' +
                                     Hastalar.FieldByName('HASTASOYADI').AsString;

  DurumGoster;
  try
    case Tcontrol(sender).tag of
   -10,-11 : begin
              TDISKaydet(Tcontrol(sender).tag);
            end;

   -20 : begin
           for x := 0 to gridHastalar.Controller.SelectedRowCount - 1 do
           begin
               satir := gridHastalar.Controller.SelectedRows[x].RecordIndex;
               SIRANOS := ifThen(SIRANOS='',SIRANOS+'',SIRANOS+',') +
                 varToStr(gridHastalar.DataController.GetValue(satir,gridHastalar.DataController.GetItemByFieldName('gelisSIRANO').Index));
           end;

           sql := 'exec sp_IzlemList @tarih1 = ' + txtTopPanelTarih1.GetSQLValue + ',@tarih2 = ' + txtTopPanelTarih2.GetSQLValue +
                  ',@tip = ' + QuotedStr('0') + ',@islem = ' + QuotedStr('1') + ',@sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                  ',@seans = ' + QuotedStr(txtSeansTopPanel.Text) +
                  ',@gelisSIRANO = ' + QuotedStr(SIRANOS);

           ado := TADOQuery.Create(nil);
           try
             datalar.QuerySelect(ado,sql);
             TopluDataset.Dataset0 := ado;
             PrintYap('200T','Uzman Muayene Tutanak(Toplu',intToStr(TagfrmHastaDiyalizIzlemListesi), TopluDataset);
           finally
              ado.free;
           end;
         end;

   -38 : begin
            F := FormINIT(TagfrmUzmanMuayene,GirisFormRecord,ikEvet);
            //  F._Foto_ := foto;
            if F <> nil then F.ShowModal;
         end;
   -55 : begin
               DurumGoster;
               try
                   for x := 0 to gridHastalar.Controller.SelectedRowCount - 1 do
                   begin
                       Application.ProcessMessages;
                       if stop = 1 then break;

                       dosyaNo := gridHastalar.DataController.GetValue(
                                                      gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('dosyaNo').Index);
                       gelisNo := gridHastalar.DataController.GetValue(
                                                      gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('gelisNo').Index);
                       _Tarih_ := gridHastalar.DataController.GetValue(
                                                      gridHastalar.Controller.SelectedRows[x].RecordIndex,gridHastalar.DataController.GetItemByFieldName('KanAlimTarihi').Index);

                       datalar.QueryExec('update UzmanGozlem set Tarih = ' + QuotedStr(FormatDateTime('YYYYMMDD',_Tarih_)) +
                                         ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + QuotedStr(gelisNo)
                                        );
                   end;

               finally
                 DurumGoster(false);
               end;
         end;

  -100 : begin

            if mrYes = ShowPopupForm('Uzman Muayene Duzenle',UzmanMuayeneDoktorTarihDuzenle,'')
            Then Begin
              TopluDuzenle(gridHastalar,datalar.UzmanMuayeneUpdate.Doktor,datalar.UzmanMuayeneUpdate.MuayeneTarihi);
            End;
         end;
    end;
  finally
    DurumGoster(False);
  end;

end;

procedure TfrmIzlem.FormCreate(Sender: TObject);
var
 IC : TcxImageComboKadir;
 C : TcxComboBox;
 chk : TcxCheckGroupItem;
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;
  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,False,True,False,False,False,False,False,False,False,True);


  IC := TcxImageComboKadir.Create(nil);
  IC.Conn := datalar.ADOConnection2;
  IC.TableName := 'DoktorlarT';
  IC.DisplayField := 'Tanimi';
  IC.ValueField := 'kod';
  IC.Filter := ' sirketKod = ' + QuotedStr(datalar.AktifSirket);

  TcxImageComboBoxProperties(gridHastalardoktor.Properties).Items := IC.Properties.Items;

  IC := TcxImageComboKadir.Create(nil);
  IC.Conn := datalar.ADOConnection2;
  IC.TableName := 'Diyalizor_Cinsleri';
  IC.DisplayField := 'Tanimi';
  IC.ValueField := 'kod';
  IC.Filter := '';

  TcxImageComboBoxProperties(gridHastalarDC.Properties).Items := IC.Properties.Items;


  IC := TcxImageComboKadir.Create(nil);
  IC.Conn := datalar.ADOConnection2;
  IC.TableName := 'Diyalizor_Tipleri';
  IC.DisplayField := 'Tanimi';
  IC.ValueField := 'kod';
  IC.Filter := '';

  TcxImageComboBoxProperties(gridHastalarDS.Properties).Items := IC.Properties.Items;

  IC := TcxImageComboKadir.Create(nil);
  IC.Conn := datalar.ADOConnection2;
  IC.TableName := 'Diyaliz_Diyalizat';
  IC.DisplayField := 'Tanimi';
  IC.ValueField := 'kod';
  IC.Filter := '';

  TcxImageComboBoxProperties(gridHastalardiyalizat.Properties).Items := IC.Properties.Items;


  IC := TcxImageComboKadir.Create(nil);
  IC.Conn := datalar.ADOConnection2;
  IC.TableName := 'Diyaliz_DamarGiris';
  IC.DisplayField := 'Tanimi';
  IC.ValueField := 'kod';
  IC.Filter := '';

  TcxImageComboBoxProperties(gridHastalarGIRISYOLU.Properties).Items := IC.Properties.Items;


  C := TcxComboBox.Create(nil);
  ComboDoldur3('select tanimi from Diyaliz_APH',C,0,-1);
  TcxComboBoxProperties(gridHastalarkanah.Properties).Items := C.Properties.Items;

  C := TcxComboBox.Create(nil);
  ComboDoldur3('select tanimi from Diyaliz_Heparin',C,0,-1);
  TcxComboBoxProperties(gridHastalarHEPARIN.Properties).Items := C.Properties.Items;

  C := TcxComboBox.Create(nil);
  ComboDoldur3('select tanimi from Diyaliz_YA',C,0,-1);
  TcxComboBoxProperties(gridHastalarYA.Properties).Items := C.Properties.Items;

  C := TcxComboBox.Create(nil);
  ComboDoldur3('select tanimi from Diyaliz_Igne',C,0,-1);
  TcxComboBoxProperties(gridHastalarIgne.Properties).Items := C.Properties.Items;
  TcxComboBoxProperties(gridHastalarIgneV.Properties).Items := C.Properties.Items;


   chkList.Properties.Items.Clear;
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Bun Gönder';
   Chk.Tag := 0;
   chkList.EditValue := '0';
   chkList.Width := 150;

end;

procedure TfrmIzlem.gridHastalarDblClick(Sender: TObject);
begin
  U1.Click;
end;

procedure TfrmIzlem.gridHastalarInitEdit(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
var
  st : TStrings;
begin
 (*
  st := TStringList.Create;
  if (AEdit is TcxComboBox) and (AItem.Index = 15)
  then begin
   ItemsDoldurName('txtDamarGiris',st);
   TcxComboBox(AEdit).Properties.Items.Clear;
   TcxComboBox(AEdit).Properties.Items.AddStrings(st);
  end;

  if (AEdit is TcxComboBox) and (AItem.Index = 14)
  then begin
   ItemsDoldurName('txtYA',st);
   TcxComboBox(AEdit).Properties.Items.Clear;
   TcxComboBox(AEdit).Properties.Items.AddStrings(st);
  end;

  st.Free;
  *)
end;

procedure TfrmIzlem.gridHastalarkanahPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
    gridHastalar.DataController.post;

end;

procedure TfrmIzlem.gridHastalarSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  inherited;


 // cxGridDBTableView1.DataController.SelectRows(gridHastalar.Controller.SelectedRecords[0].R,
end;                                  //         gridHastalar.Controller.SelectedRecords[0].



procedure TfrmIzlem.gridHastalarStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
   if ARecord.Values[20] = '1'
   Then AStyle := cxStyle1;
end;

procedure TfrmIzlem.H1Click(Sender: TObject);
var
 List : ArrayOfHASTAKAYIT;
 H : HASTAKAYIT;
 sql : string;
 ado : TADOQuery;
begin
    datalar.DYOB.URL := DyopURL;
    DyobKodlar.Active := True;


    if not DirectoryExists('C:\NoktaV3\DYOB')
    then MkDir('C:\NoktaV3\DYOB');


    datalar.HTTP_XMLDosya_Name := 'C:\NoktaV3\DYOB\LOADHASTALIST';

    try
     List := (datalar.DYOB as KRIZMA_DIS_TREATMENTSERVICESoap).LOADHASTALIST(datalar._DyobKurumKodu_,datalar._DyobSifre_,datalar._DyobServiceKodu_);
     //'8DCC2CC82FF34396A9859014E7350A3E','C7865A18D8244AF88122468808EE1397','4BC01A01CDA14EF2ABCD98728B05FB9A');
    except on e : Exception do
     begin
       ShowMessageSkin(e.Message,'','','info') ;
     end;
    end;

    if length(list) > 0
    then begin
       Cursor := crSQLWait;
       for H in List do
       begin
          Application.ProcessMessages;
          sql := 'update hastakart set YKARTNO = ' + inttostr(H.ID) +
                 ' where TCKIMLIKNO = ' + QuotedStr(inttostr(H.HASTA.TCKIMLIK));
          datalar.QueryExec(sql);
       end;
       Cursor := crDefault;
    end;

end;

procedure TfrmIzlem.H2Click(Sender: TObject);
var
 r ,satir : integer;
 Form : TGirisForm;
 dosyaNo : string;
begin
   satir := gridHastalar.Controller.SelectedRows[0].RecordIndex;
   dosyaNo := varTostr(gridHastalar.DataController.GetValue(satir,gridHastalar.DataController.GetItemByFieldName('dosyaNo').Index));

   if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
   Then begin
     Form := TGirisForm(FormClassType(TagfrmHastaKart));
     TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := dosyaNo;
     TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
     TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
   end
   Else begin
    Form := FormINIT(TagfrmHastaKart,self,dosyaNo,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
    if Form <> nil then Form.show;
   end;
end;

procedure TfrmIzlem.HastalarAfterScroll(DataSet: TDataSet);
var
  sql : string;
begin
  //labelAd.Caption := hastalar.FieldByName('HASTAADI').AsString + ' ' + hastalar.FieldByName('HASTASOYADI').AsString;


 // ADO_Tetkikler.Active := false;
 // cxGrid2.Visible := False;

end;

procedure TfrmIzlem.HastalarBeforePost(DataSet: TDataSet);
begin

  if (copy(hastalar.FieldByName('tedaviSeyri').AsString,1,1) = '8') or
     (copy(hastalar.FieldByName('tedaviSeyri').AsString,1,1) = '3')
  then begin
    ShowMessageSkin('Tedavi Seyrini Deðiþtirdiniz','','','info');
  end;


 // hastalar.FieldByName('digerNot').AsString := txtAciklama.Lines.Text;

 (*
  if chkIzlemTarih.Checked = True
  then
   hastalar.FieldByName('Tarih').AsDateTime := hastalar.FieldByName('KanAlimTarihi').AsDateTime
  else
    hastalar.FieldByName('Tarih').AsDateTime := tarih1.Date;
   *)

  if hastalar.FieldByName('doktor').AsString = ''
  Then hastalar.FieldByName('doktor').AsString := Udoktor;

end;

procedure TfrmIzlem.txtAciklamaChange(Sender: TObject);
begin
  Hastalar.Edit;
end;

procedure TfrmIzlem.U1Click(Sender: TObject);
begin
  inherited;
 //  pnlUzmanTarihUpdate.Visible := true;
  // txtUzmanDate.EditValue := hastalar.FieldByName('UzmanGozlemTarihi').AsDateTime;
  // txtUzmanDate.PostEditValue;
end;

end.
