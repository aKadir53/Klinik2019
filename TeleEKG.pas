unit TeleEKG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinMcSkin, DB, dxmdaset, cxGroupBox,
  cxRadioGroup, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, Buttons, sBitBtn, ExtCtrls,adodb,kadir,data_modul, cxStyles,GirisUnit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,KadirType,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,cxGridExportLink,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMemo, dxSkinMoneyTwins, Menus,
  cxButtons, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinsDefaultPainters,
  KadirLabel, dxSkinscxPCPainter;

type
  TfrmTeleEKG = class(TGirisForm)
    tarih1: TcxDateEditKadir;
    tarih2: TcxDateEditKadir;
    DiyalizTip: TcxRadioGroup;
    memData: TdxMemData;
    memDatadosyaNo: TStringField;
    memDatagelisNo: TIntegerField;
    memData530100: TStringField;
    memData801840: TStringField;
    DataSource1: TDataSource;
    cxGrid2: TcxGridKadir;
    Liste: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    memDataHasta: TStringField;
    ListedosyaNo: TcxGridDBColumn;
    ListegelisNo: TcxGridDBColumn;
    ListeHasta: TcxGridDBColumn;
    ListeDBColumn530100: TcxGridDBColumn;
    ListeColumn1: TcxGridDBColumn;
    memDataTarih: TStringField;
    ListeColumn2: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    T1: TMenuItem;
    memDataTarihD: TDateTimeField;
    ADO_SQL: TADOQuery;
    PopupMenu2: TPopupMenu;
    Y1: TMenuItem;
    E1: TMenuItem;
    btnListele: TcxButtonKadir;
    D1: TMenuItem;
    K1: TMenuItem;
    T2: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure ADO_SQLBeforePost(DataSet: TDataSet);
    procedure ListeDblClick(Sender: TObject);
    procedure btnListeleClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure Yazdir;
    procedure Duzenle(Tag : integer ; gridAktif : TcxGridDBTableView);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   function Init(Sender: TObject) : Boolean; override;
  end;


const _TableName_ = 'HastaKart';
      formGenislik = 780;
      formYukseklik = 480;

var
  frmTeleEKG: TfrmTeleEKG;
  KayitDegis : boolean;
  dosyaNo,gelisNo,code,sonuc : string;
implementation

uses rapor;

{$R *.dfm}

function TfrmTeleEKG.Init(Sender: TObject) : Boolean;
begin
 inherited;
  Result := True;
end;


procedure TfrmTeleEKG.Duzenle(Tag : integer  ; gridAktif : TcxGridDBTableView);
var
  ado : TADOQuery;
  sql,dosyaNo,gelisNo : string;
  x : integer;
begin
    if ADO_SQL.Eof then exit;


    datalar.TeleEkg.Tarih := ADO_SQL.FieldByName('TARIH').AsDateTime;
    datalar.TeleEkg.ack := ADO_SQL.FieldByName('sonuc').AsString;
    datalar.TeleEkg.code := ADO_SQL.FieldByName('code').AsString;
    _dosyaNO_ := ADO_SQL.FieldByName('dosyaNo').AsString;
    _gelisNo_ := ADO_SQL.FieldByName('gelisNo').AsString;
    _HastaAdSoyad_ := ADO_SQL.FieldByName('Hasta').AsString + ' ('+ADO_SQL.FieldByName('Name1').AsString + ')';

    if mrYes = ShowPopupForm(_HastaAdSoyad_,TeleEkgDuzenle)
    Then Begin
      if Tag = -5 then
      begin
          sql := 'update hareketler set islemAciklamasi = ' + QuotedStr(datalar.TeleEkg.ack) +
                ',TARiH = ' + QuotedStr(FormatDateTime('YYYYMMDD',datalar.TeleEkg.Tarih)) +
                ' where dosyaNo = ' + QuotedStr(_dosyaNo_) + ' and gelisNo = ' + _gelisNo_ +
                ' and code = ' + QuotedStr(datalar.TeleEkg.code);
          datalar.QueryExec(sql);
          ADO_SQL.Requery();
      end
      else
      begin
         DurumGoster(True,True);
         PBar.Properties.Max := gridAktif.Controller.SelectedRowCount;
         pBar.Position := 0;
         try
             for x := 0 to gridAktif.Controller.SelectedRowCount - 1 do
             begin
                 sleep(1000);
                 Application.ProcessMessages;
                 dosyaNo := gridAktif.DataController.GetValue(
                                                gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('dosyaNo').Index);
                 gelisNo := gridAktif.DataController.GetValue(
                                                gridAktif.Controller.SelectedRows[x].RecordIndex,gridAktif.DataController.GetItemByFieldName('gelisNo').Index);
                 sql := 'update hareketler set islemAciklamasi = ' + QuotedStr(datalar.TeleEkg.ack) +
                          ',TARiH = ' + QuotedStr(FormatDateTime('YYYYMMDD',datalar.TeleEkg.Tarih)) +
                          ' where dosyaNo = ' + QuotedStr(dosyaNo) + ' and gelisNo = ' + gelisNo +
                          ' and code = ' + QuotedStr(datalar.TeleEkg.code);
                 datalar.QueryExec(sql);
                 pBar.Position := pBar.Position + 1;
             end;
         finally
           DurumGoster(False);
           ADO_SQL.Requery();
         end;
      end;
    End;





end;

procedure TfrmTeleEKG.Yazdir;
var
  sql , tarih1_ , tarih2_ : string;
  ado : TADOQuery;
   DatasetKadir : TDataSetKadir;
begin
   KayitDegis := False;
   memData.Active := false;
   memData.Active := True;

   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
     tarih1_ := tarihal(tarih1.date);
     tarih2_ := tarihal(tarih2.date);

     sql := 'sp_TeleEKGPIVOT @tarih1 = ' + QuotedStr(tarih1_) + ',@tarih2 = ' + QuotedStr(tarih2_) +
                             ',@tip = ' + inttostr(DiyalizTip.ItemIndex) +
                             ',@Hasta = ' + QuotedStr('') +
                             ',@sirketKod = ' + QuotedStr(datalar.AktifSirket);
     datalar.QuerySelect(ado,sql);
     memData.LoadFromDataSet(ado);

     DatasetKadir.Dataset1 := ado;
     DatasetKadir.Dataset0 := datalar.ADO_AktifSirket;

     PrintYap('EKG01','\Ekg Sonuç Takip Formu',intTostr(TagfrmTeleEkg),DatasetKadir);
   finally
       ado.Free;
       memData.Active := false;
   end;


end;
procedure TfrmTeleEKG.cxKaydetClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmTeleEKG.cxButtonCClick(Sender: TObject);
begin
inherited;
  case Tcontrol(sender).Tag of
  -1 : begin
         yazdir;
       end;
-5,-6 : begin
         Duzenle(Tcontrol(sender).Tag , Liste);
       end;




  end;


end;

procedure TfrmTeleEKG.ADO_SQLBeforePost(DataSet: TDataSet);
begin
  inherited;
//  ado_sql.FieldByName('TARIH').AsString := tarihal(ado_sql.FieldByName('TARIHD').AsDateTime);
end;

procedure TfrmTeleEKG.btnListeleClick(Sender: TObject);
var
  sql , tarih1_ , tarih2_ : string;
  ado : TADOQuery;
begin

   tarih1_ := tarih1.GetValue;
   tarih2_ := tarih2.GetValue;

   sql := 'select code,hk.HASTAADI+'' ''+hk.HASTASOYADI Hasta,hk.dosyaNo,gelisno, NAME1,Tarih TARIH,islemAciklamasi sonuc from hareketler h' +
          ' join hastakart hk on hk.dosyaNo = h.dosyaNo ' +
          ' where code in (''530100'',''801840'') and convert(varchar,h.Tarih,112) between ' + QuotedStr(tarih1_) +
          ' and ' + QuotedStr(tarih2_) + ' and hk.HASTAADI like ' + QuotedStr(''+'%') +
          ' and h.Tip = ''L''' +
          ' and hk.sirketKod = ' + QuotedStr(datalar.AktifSirket) +
          ' order by hk.HASTAADI,hk.HASTASOYADI,dosyano,gelisNo';

   datalar.QuerySelect(ado_sql,sql);
end;

procedure TfrmTeleEKG.FormCreate(Sender: TObject);
begin
//  tag := TagfrmTeleEkg;

  cxPanel.Visible := false;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  TableName := _TableName_;
  Olustur(self,_TableName_,'Tele Ekg Listesi',26);
  Menu := PopupMenu2;

  setDataStringKontrol(self,tarih1, 'Tarih1','Tarih Aralýðý',Kolon1,'trh',110);
  setDataStringKontrol(self,tarih2, 'Tarih2','',Kolon1,'trh',110);
 // setDataStringKontrol(self,DiyalizTip, 'DiyalizTip','',Kolon1,'',290);
  addButton(self,btnListele,'btnListele', '','Liste',Kolon1,'trh',60);
  TcxButton(FindComponent('btnListele')).OnClick := btnListeleClick;
  setDataStringKontrol(self,cxGrid2, 'cxGrid2','',Kolon1,'',1,1,alClient);

  Kolon2.Visible := False;
  Kolon3.Visible := False;
  Kolon4.Visible := False;
  SayfaCaption('Tele/EKG','','','','');

end;

procedure TfrmTeleEKG.FormShow(Sender: TObject);
begin
   inherited;
   tarih1.Date := date;
   tarih2.Date := tarih1.Date;
end;

procedure TfrmTeleEKG.ListeDblClick(Sender: TObject);
begin
  inherited;
  Duzenle(-5,Nil);
end;

end.
