unit PopupDBGridForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, jpeg, kadir,kadirType,kadirLabel,
  dxGDIPlusClasses, cxGraphics, cxControls,GirisUnit,StrUtils,Variants,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Menus, cxButtons, cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxCurrencyEdit, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLabel, cxCheckBox,
  cxImageComboBox, cxMemo,adoDb,cxDBLookupComboBox,cxButtonEdit, cxRichEdit,
  Vcl.DBCtrls, cxDBRichEdit, cxCheckListBox;

type
  TfrmPopupDBGridForm = class(TGirisForm)
    cxPanelBottom: TcxGroupBox;
    btnYes: TcxButton;
    btnIptal: TcxButton;
    cxGroupDoktorlar: TcxGroupBox;
    cxGrid3: TcxGridKadir;
    DBGrid: TcxGridDBTableView;
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
    PopupMenu1: TPopupMenu;
    K1: TMenuItem;
    txtTable: TcxImageComboKadir;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    DataSource1: TDataSource;
    GrpAciklama: TcxGroupBox;
    txtAciklama: TcxDBRichEdit;
    cxStyle2: TcxStyle;
    E1: TMenuItem;
    R1: TMenuItem;
    N1: TMenuItem;
    E2: TMenuItem;
    D1: TMenuItem;
    S1: TMenuItem;
    GrpAciklamaText: TcxGroupBox;
    txtAciklamaText: TcxMemo;
    pnlEpikrizAyar: TcxGroupBox;
    txtSeansSikayet: TcxCheckListBox;
    btnMedulaEpikrizAyarKaydet: TcxButton;
    txtAltTable: TcxImageComboKadir;
    procedure FormCreate(Sender: TObject);
    procedure txtMsgEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Yukle;
    procedure RaporDizyanYukle;
    procedure SetGrid;
    procedure txtTablePropertiesChange(Sender: TObject);
    procedure ADOBeforePost(DataSet: TDataSet);
    procedure NaceKodPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure PropertiesEditValueChanged(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxButtonCClick(Sender: TObject);
    procedure DBGridNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure DataWrite(_record_ : Pointer);
    procedure DataRead(_record_ : Pointer);
    procedure GridColumnAllReadOnly;
    procedure DBGridDblClick(Sender: TObject);
    procedure BeforePost(DataSet: TDataSet);
    procedure NewRecord(DataSet: TDataSet);
    procedure btnMedulaEpikrizAyarKaydetClick(Sender: TObject);
    function gelisSikayetSecili(c : TcxCheckListBox) : string;
    procedure gelisSikayetSec(cL : TcxCheckListBox ; c : string);
    procedure txtAltTablePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    _islem_ :integer;
    _caption_  : string;

    function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

const
      formGenislik = 400;
      formYukseklik = 580;

var
  frmPopupDBGridForm: TfrmPopupDBGridForm;
  frmTop_ :word = 0;
  frmLeft_ :word = 0;

implementation

uses message, data_modul , anaUnit;

{$R *.DFM}

procedure TfrmPopupDBGridForm.gelisSikayetSec(cL : TcxCheckListBox ; c : string);
var
  r : integer;
  _r_ : string;
begin
    for r := 0 to cL.Items.Count - 1 do
    begin
       cL.Items[r].Checked := False;
    end;

    for r := 1 to length(c) do
    begin
       _r_ := c[r];
       _r_ := StringReplace(_r_,'A','10',[rfReplaceAll]);
       _r_ := StringReplace(_r_,'B','11',[rfReplaceAll]);
       _r_ := StringReplace(_r_,'C','12',[rfReplaceAll]);
       cL.Items[strtoint(_r_)].Checked := True;
    end;

end;


function TfrmPopupDBGridForm.gelisSikayetSecili(c : TcxCheckListBox) : string;
const
   A = 10; B = 11;
var
  r : integer;
  cs ,_r_: string;
begin
    for r := 0 to c.Items.Count - 1 do
    begin
       case r of
          0..9 : begin _r_ := inttostr(r); end;
          10 : begin _r_ := 'A'; end;
          11 : begin _r_ := 'B'; end;
          12 : begin _r_ := 'C'; end;
          else _r_ := '';
       end;

       if c.Items[r].Checked then cs := cs + _r_;
    end;

    result := cs;

end;

procedure TfrmPopupDBGridForm.GridColumnAllReadOnly;
var
  col : TcxGridDBColumn;
  i : integer;
begin
   DBGrid.NewItemRow.Visible := False;
   for i := 0 to DBGrid.ColumnCount - 1 do
     begin
        DBGrid.Columns[i].Options.Editing := False;
     end;
end;



procedure TfrmPopupDBGridForm.RaporDizyanYukle;
var
  AdoTable : TADOQuery;
  RaporKodu : string;
begin
   AdoTable := TADOQuery.Create(nil);
   if Datalar.MasterBaglan
   Then Begin
       AdoTable.Connection := Datalar.Master;
       raporKodu := sqlRun.FieldByName('raporKodu').AsString;
       try
          datalar.QuerySelect(AdoTable,'select * from RaporlarDizayn where raporKodu = ' + QuotedStr(RaporKodu));

         if AdoTable.RecordCount > 0
          Then begin
             SqlRun.Edit;
             sqlRun.FieldByName('rapor').AsVariant := AdoTable.FieldByName('rapor').AsVariant;
             sqlRun.Post;
          end;


       finally
        AdoTable.Free;
        Datalar.Master.Connected := False;
       end;
   end;



end;

procedure TfrmPopupDBGridForm.btnMedulaEpikrizAyarKaydetClick(Sender: TObject);
var
  sql : string;
begin
  sql := 'update parametreler set SLVV = ' + QuotedStr(gelisSikayetSecili(txtSeansSikayet)) +
         ' where SLK = ''EA'' and SLB = ''00''';
  datalar.QueryExec(sql);


end;

procedure TfrmPopupDBGridForm.cxButtonCClick(Sender: TObject);
var
  TopluDataset : TDataSetKadir;
begin
   //inherited;
   //

  case TmenuItem(sender).Tag of
   -1 : begin
          GrpAciklamaText.Visible := True;
          txtAciklamaText.Text := EgitimKodlari;
        end;

   -2 : begin
          RaporDizyanYukle;

        end;

   -9 : begin

        end;

  end;

   case Tag of
     TagfrmFirmaISGEkip : begin
                            TopluDataset.Dataset0 := datalar.QuerySelect('exec	sp_ISGFirmaEkip  ' + DBGrid.DataController.DataSet.FieldByName('ISGEkipId').AsString  +
                                                                         ',' + QuotedStr(_firmaKod_));
                            PrintYap('GAT','Atama Tutanaðý','',TopluDataset,pTNone,self);
                          end;

   end;






end;

procedure TfrmPopupDBGridForm.DataWrite(_record_ : Pointer);
var
 s : string;
 P :  ^TFirmaBilgi;
 PP : Pointer;
begin
  // P := _record_;    böylede kullanabilirdin
  // s := P.SubeKodu;
   s := TFirmaBilgi(_record_^).SubeKodu;

   cxGrid3.Dataset.fieldbyname('sirketKod').asstring := TFirmaBilgi(_record_^).SirketKodu;
   cxGrid3.Dataset.fieldbyname('subeKod').asstring := TFirmaBilgi(_record_^).SubeKodu;
   cxGrid3.Dataset.fieldbyname('subeTanim').asstring := TFirmaBilgi(_record_^).SirketAdi;
   cxGrid3.Dataset.fieldbyname('subeSiciNo').asstring := TFirmaBilgi(_record_^).subeSiciNo;
   cxGrid3.Dataset.fieldbyname('subeDoktor').Value := TFirmaBilgi(_record_^).doktor;
   cxGrid3.Dataset.fieldbyname('BolgeMudurlukSicilNo').asstring := TFirmaBilgi(_record_^).BolgeMudurlukSicilNo;
   cxGrid3.Dataset.fieldbyname('MuayeneProtokolNo').asstring := TFirmaBilgi(_record_^).MuayeneProtokolNo;
   cxGrid3.Dataset.fieldbyname('IGU').Value := TFirmaBilgi(_record_^).IGU;
   cxGrid3.Dataset.fieldbyname('DoktorCalismaDakika').asstring := TFirmaBilgi(_record_^).DoktorCalismaDakika;
   cxGrid3.Dataset.fieldbyname('IGUCalismaDakika').asstring := TFirmaBilgi(_record_^).IGUCalismaDakika;
   cxGrid3.Dataset.fieldbyname('NaceKod').asstring := TFirmaBilgi(_record_^).NaceKod;
   cxGrid3.Dataset.fieldbyname('tehlikeSinifi').asstring := TFirmaBilgi(_record_^).tehlikeSinifi;
   cxGrid3.Dataset.fieldbyname('DigerSaglikPers').Value :=  TFirmaBilgi(_record_^).DigerSaglikPers;
   cxGrid3.Dataset.fieldbyname('DigerSaglikPersCalismaDakika').asstring := TFirmaBilgi(_record_^).DigerSaglikPersCalismaDakika;
   cxGrid3.Dataset.fieldbyname('Pasif').asstring := TFirmaBilgi(_record_^).Pasif;
   cxGrid3.Dataset.fieldbyname('SemtLokasyon').asstring := TFirmaBilgi(_record_^).SemtLokasyon;
   cxGrid3.Dataset.fieldbyname('calisanSayi').asstring := TFirmaBilgi(_record_^).calisanSayi;
   cxGrid3.Dataset.fieldbyname('Adres').asstring := TFirmaBilgi(_record_^).Adres;
   cxGrid3.Dataset.fieldbyname('KapaliAlan').asstring := TFirmaBilgi(_record_^).KapaliAlan;
   cxGrid3.Dataset.fieldbyname('AcikAlan').asstring := TFirmaBilgi(_record_^).AcikAlan;

end;


procedure TfrmPopupDBGridForm.DataRead(_record_ : Pointer);
var
 s : string;
 P :  ^TFirmaBilgi;
 PP : Pointer;
begin
  // P := _record_;    böylede kullanabilirdin
  // s := P.SubeKodu;
   s := TFirmaBilgi(_record_^).SubeKodu;

    TFirmaBilgi(_record_^).SirketKodu :=   cxGrid3.Dataset.fieldbyname('sirketKod').asstring;
    TFirmaBilgi(_record_^).SubeKodu :=   cxGrid3.Dataset.fieldbyname('subeKod').asstring;
    TFirmaBilgi(_record_^).SirketAdi :=   cxGrid3.Dataset.fieldbyname('subeTanim').asstring;
    TFirmaBilgi(_record_^).subeSiciNo :=   cxGrid3.Dataset.fieldbyname('subeSiciNo').asstring;
    TFirmaBilgi(_record_^).doktor :=   cxGrid3.Dataset.fieldbyname('subeDoktor').value;
    TFirmaBilgi(_record_^).BolgeMudurlukSicilNo :=   cxGrid3.Dataset.fieldbyname('BolgeMudurlukSicilNo').asstring;
    TFirmaBilgi(_record_^).MuayeneProtokolNo :=   cxGrid3.Dataset.fieldbyname('MuayeneProtokolNo').asstring;
    TFirmaBilgi(_record_^).IGU :=   cxGrid3.Dataset.fieldbyname('IGU').value;
    TFirmaBilgi(_record_^).DoktorCalismaDakika :=   cxGrid3.Dataset.fieldbyname('DoktorCalismaDakika').asstring;
    TFirmaBilgi(_record_^).IGUCalismaDakika :=   cxGrid3.Dataset.fieldbyname('IGUCalismaDakika').asstring;
    TFirmaBilgi(_record_^).NaceKod :=   cxGrid3.Dataset.fieldbyname('NaceKod').asstring;
    TFirmaBilgi(_record_^).tehlikeSinifi :=   cxGrid3.Dataset.fieldbyname('tehlikeSinifi').asstring;
    TFirmaBilgi(_record_^).DigerSaglikPers :=   cxGrid3.Dataset.fieldbyname('DigerSaglikPers').value;
    TFirmaBilgi(_record_^).DigerSaglikPersCalismaDakika :=   cxGrid3.Dataset.fieldbyname('DigerSaglikPersCalismaDakika').asstring;
    TFirmaBilgi(_record_^).Pasif :=   cxGrid3.Dataset.fieldbyname('Pasif').asstring;
    TFirmaBilgi(_record_^).SemtLokasyon :=   cxGrid3.Dataset.fieldbyname('SemtLokasyon').asstring;
    TFirmaBilgi(_record_^).calisanSayi :=   cxGrid3.Dataset.fieldbyname('calisanSayi').asstring;
    TFirmaBilgi(_record_^).Adres :=   cxGrid3.Dataset.fieldbyname('Adres').asstring;
    TFirmaBilgi(_record_^).KapaliAlan :=   cxGrid3.Dataset.fieldbyname('KapaliAlan').asstring;
    TFirmaBilgi(_record_^).AcikAlan :=   cxGrid3.Dataset.fieldbyname('AcikAlan').asstring;

end;

procedure TfrmPopupDBGridForm.DBGridDblClick(Sender: TObject);
var
  ADone : Boolean;
begin
  inherited;
   DBGridNavigatorButtonsButtonClick(self,9,ADone);
end;

procedure TfrmPopupDBGridForm.DBGridNavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  case Tag of
   TagfrmSube :
       begin
           case AButtonIndex of
             6 ,9: begin
                    FirmaBilgiRecordToNull;
                   end;
             end;

           case AButtonIndex of
             6 : begin
                   if mrYes = ShowPopupForm('Yeni Þube Ekle',yeniSube,'',16)
                   then begin
                        datalar.FirmaSubeBilgi.SirketKodu := _firmaKod_;
                        cxGrid3.Dataset.Append;
                        datawrite(@datalar.FirmaSubeBilgi);
                        cxGrid3.Dataset.post;
                   end;
                 end;
             9 : begin
                   dataRead(@datalar.FirmaSubeBilgi);
                   if mrYes = ShowPopupForm('Þube Düzenle',SubeDuzenle,'',15)
                   then begin
                        datalar.FirmaSubeBilgi.SirketKodu := _firmaKod_;
                        cxGrid3.Dataset.Edit;
                        datawrite(@datalar.FirmaSubeBilgi);
                        cxGrid3.Dataset.post;
                   end;
                 end;


             end;
       end;


  end;

end;

procedure TfrmPopupDBGridForm.PropertiesEditValueChanged(Sender: TObject);
var
  subeler : TcxImageComboKadir;
  _v_ : Variant;
begin
  inherited;
  DBGrid.DataController.DataSet.Post;
  if (DBGrid.Controller.FocusedColumnIndex = 5) and
     (Tag = 9013)
  then begin
    DBgrid.Columns[8].PropertiesClassName := 'TcxImageComboBoxProperties';
    _v_ := DBgrid.GetColumnByFieldName('ISGEkipId').EditValue;
    if _v_ = 1
    Then begin
       subeler := TcxImageComboKadir.Create(self);
       subeler.Tag := -100;
       subeler.Name := 'subeler';
       subeler.Conn := datalar.ADOConnection2;
       subeler.Conn := Datalar.ADOConnection2;
       subeler.TableName := 'FirmaISGEkipGorevTnm';
       subeler.ValueField := 'Kod';
       subeler.DisplayField := 'Tanimi';
       subeler.Filter := '';

       TcxImageComboBoxProperties(DBGrid.Columns[8].Properties).Items :=
         TcxImageComboBoxProperties(TcxImageComboKadir(FindComponent('subeler')).Properties).Items;
       subeler.Free;
    end
    else begin
     DBgrid.GetColumnByFieldName('ISGEkipGorevID').EditValue := null;
     DBGrid.DataController.DataSet.Post;
    end;
  end;

    if DBGrid.Controller.FocusedColumnIndex = 6
    then begin
    // 5 . colon editvalue deðerine göre doldurulacak
     (*
        _v_ := DBgrid.GetColumnByFieldName('ISGEkipId').EditValue;
        if _v_ <> 1
        then begin
          DBgrid.GetColumnByFieldName('ISGEkipGorevID').EditValue := null;
          DBGrid.DataController.DataSet.Post;
        end;
        *)
    end;

 //
end;





procedure TfrmPopupDBGridForm.NaceKodPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
begin
   List := ListeNaceKodlari.ListeGetir;
   if High (List) < 0 then Exit;
   cxGrid3.Dataset.edit;
   cxGrid3.Dataset.FieldByName('NaceKod').AsString := List[0].kolon1;
   cxGrid3.Dataset.FieldByName('tehlikeSinifi').AsString := List[0].kolon4;



 //  TcxImageComboBoxProperties(DBgrid.Columns[0].Properties).
end;

procedure TfrmPopupDBGridForm.ADOBeforePost(DataSet: TDataSet);
begin
  inherited;
  case Tag of
  TagfrmSube, TagfrmFirmaISGEkip ,TagfrmFirmaYetkili,TagFirmaCalismalari:
        begin
           cxGrid3.Dataset.FieldByName('SirketKod').AsString := _firmaKod_;
        end;
  end;
end;

function TfrmPopupDBGridForm.Init(Sender: TObject) : Boolean;
var
  itm : TMenuItem;
begin
  inherited;
  Result := False;
  case abs(Tag) of
    TagfrmBolum,TagfrmBirim :
    begin
      txtTable.Visible := True;
      txtTable.Conn := Datalar.ADOConnection2;
      txtTable.TableName := 'PopupDBGridFormTabloTanim';
      txtTable.ValueField := 'id';
      txtTable.DisplayField := 'tanimi';
      txtTable.Filter := ' aktif = 1';
      txtTable.BosOlamaz := True;
      OrtakEventAta(txtTable);
      indexFieldName := '1=1';
      cxPanel.Visible := false;
      SayfaCaption('','','','','');

      case Tag of
      -1*TagfrmBolum :
                 begin
                   txtTable.EditValue := 1;
                   txtTable.Enabled := False;
                 end;
      -1*TagfrmBirim :
                 begin
                   txtTable.EditValue := 2;
                   txtTable.Enabled := False;
                 end;

      end;
      Result := True;
    end;

    TagfrmMadulaEpiktizTanim
                     :
                 begin
                    ClientWidth := 400;
                    txtTable.Conn := Datalar.ADOConnection2;
                    txtTable.TableName := 'PopupDBGridFormTabloTanim';
                    txtTable.ValueField := 'id';
                    txtTable.DisplayField := 'tanimi';
                    OrtakEventAta(txtTable);
                    indexFieldName := '1=1';
                    cxPanel.Visible := false;
                    cxPanelBottom.Visible := False;
                    txtTable.Enabled := True;
                    txtTable.Visible := True;
                    txtTable.Filter := ' aktif = 1 and id in (38)';
                    SayfaCaption('','','','','');
                    Result := True;

                 end;

TagfrmCalisanGeriBildirimAnketSoruTanim
                     :
                 begin
                    ClientWidth := 400;
                    txtTable.Conn := Datalar.ADOConnection2;
                    txtTable.TableName := 'PopupDBGridFormTabloTanim';
                    txtTable.ValueField := 'id';
                    txtTable.DisplayField := 'tanimi';
                    OrtakEventAta(txtTable);
                    indexFieldName := '1=1';
                    cxPanel.Visible := false;
                    txtTable.Enabled := True;
                    txtTable.Visible := True;
                    txtTable.Filter := ' aktif = 1 and id in (37)';
                    SayfaCaption('','','','','');
                    Result := True;
                 end;

TagfrmSahaSaglikGozetimTanim
                     :
                 begin
                    txtTable.Conn := Datalar.ADOConnection2;
                    txtTable.TableName := 'PopupDBGridFormTabloTanim';
                    txtTable.ValueField := 'id';
                    txtTable.DisplayField := 'tanimi';
                    OrtakEventAta(txtTable);
                    indexFieldName := '1=1';
                    cxPanel.Visible := false;
                    txtTable.Enabled := True;
                    txtTable.Visible := True;
                    txtTable.Filter := ' aktif = 1 and id in (9,10,11)';
                    SayfaCaption('','','','','');
                    Result := True;
                 end;
TagfrmISGKurulToplantiTanim
                     :
                 begin
                    ClientWidth := 400;
                    txtTable.Conn := Datalar.ADOConnection2;
                    txtTable.TableName := 'PopupDBGridFormTabloTanim';
                    txtTable.ValueField := 'id';
                    txtTable.DisplayField := 'tanimi';
                    OrtakEventAta(txtTable);
                    indexFieldName := '1=1';
                    cxPanel.Visible := false;
                    txtTable.Enabled := True;
                    txtTable.Visible := True;
                    txtTable.Filter := ' aktif = 1 and id in (35,36)';
                    SayfaCaption('','','','','');
                    Result := True;
                 end;
  TagfrmEkipmanTuru  :
                 begin
                   cxPanel.Visible := false;
                   indexFieldName := ' Kod is not null';
                   txtTable.EditValue := 27;
                   txtTable.Enabled := False;
                   Result := True;
                 end;
  TagfrmEkipmanTuruOzellik  :
                 begin
                   cxPanel.Visible := false;
                   indexFieldName := ' Kod is not null';
                   txtTable.EditValue := 29;
                   txtTable.Enabled := False;
                   Result := True;
                 end;

    TagfrmSube :
    begin
        ClientHeight := 300;
        ClientWidth := 1200;
        TableName := 'SIRKETLER_TNM';
        _fields_ := 'TesisKodu,HastaKabulSifre,DonemSonlandirmaSifre,LabFirmaKodu,MesulMudur';
        _fieldBaslik_ := 'Tesis Kodu,Hasta Kabul Þifre,D.Sonlandýrma Þifre,Lab Firma,Mesul Müdür';
        _fieldTips_ := 'string,string,string,IC,IC';


        _ICParams_ := '0;0;0;OSGB_MASTER.dbo.LabFirmalar,kod,tanimi;DoktorlarT,kod,tanimi';


        //indexFieldName := 'sirketKod = ' + QuotedStr(_firmaKod_);
        cxPanel.Visible := false;
        cxGroupDoktorlar.Caption := 'Servis Eriþim Bilgileri';
       // cxGrid3.Dataset.BeforePost := ADOBeforePost;
        cxGrid3.Dataset.Connection := datalar.ADOConnection2;
        cxGrid3.Dataset.SQL.Text := 'Select TesisKodu,HastaKabulSifre,DonemSonlandirmaSifre,LabFirmaKodu,MesulMudur ' +
                                    ' from SIRKETLER_TNM where sirketKod = ' + QuotedStr(_firmaKod_);
        cxGrid3.Dataset.Open;
        DBGrid.ClearItems;
        DBGrid.DataController.CreateAllItems(True);
        DBGrid.Navigator.Visible := False;
        DBGrid.NewItemRow.Visible := False;
        DBGrid.OptionsData.Deleting := False;
        DBGrid.OptionsData.Inserting := False;

        SetGrid;
//        GridColumnAllReadOnly;


        SayfaCaption('','','','','');
        Result := True;
    end;

    TagfrmFirmaISGEkip :
    begin
        ClientHeight := 500;
        ClientWidth := 900;

        itm := TMenuItem.Create(PopupMenu1);
        itm.Caption := 'Atama Tutanaðý';
        itm.Tag := -20;
        itm.OnClick := cxButtonCClick;
        itm.ImageIndex := 98;
        PopupMenu1.Items.Add(itm);

        TableName := 'SIRKET_SUBE_EKIP';
        _fields_ := 'id,SirketKod,SubeKod,TCKimlikNo,AdiSoyadi,Telefon,eMail,ISGEkipId,ISGEkipGorevID,Aktif,AtamaTarihi';
        _fieldBaslik_ := ',,Þube,TC Kimlik No,Adý Soyadý,Telefon,eMail,ISG Ekip,ISG Ekip Görev,Aktif,Atama Tarihi';
        _fieldTips_ := 'int,string,IC,string,string,string,string,IC,IC,IC,saat';

        _ICParams_ := '0;0;' +
                         '(select subeKod|subeTanim from SIRKET_SUBE_TNM where sirketKod = ' + QuotedStr(_firmaKod_) + ') subeler'+
                         ',subeKod,subeTanim;0;0;0;0;FirmaISGEkipTnm,kod,tanimi;FirmaISGEkipGorevTnm,kod,tanimi;AktifPasifTanim_View,kod,tanimi;0';

        indexFieldName := 'sirketKod = ' + QuotedStr(_firmaKod_);
        cxPanel.Visible := false;
        cxGroupDoktorlar.Caption := 'Ekip Bilgileri';

        cxGrid3.Dataset.BeforePost := ADOBeforePost;
        cxGrid3.Dataset.Connection := datalar.ADOConnection2;
        cxGrid3.Dataset.SQL.Text := 'Select id,SirketKod,SubeKod,TCKimlikNo,AdiSoyadi,Telefon,eMail,ISGEkipId,ISGEkipGorevID,Aktif,AtamaTarihi ' +
                                    ' from SIRKET_SUBE_EKIP where sirketKod = ' + QuotedStr(_firmaKod_);
        cxGrid3.Dataset.Open;
        DBGrid.ClearItems;
        DBGrid.DataController.CreateAllItems(True);



        SetGrid;


        SayfaCaption('','','','','');
        Result := True;
    end;

    TagfrmFirmaYetkili :
    begin
        ClientHeight := 500;
        ClientWidth := 500;
        TableName := 'ISGFirmaYetkilileri';
        _fields_ := 'id,SirketKod,AdiSoyadi,Tc,eMail,mobil,Bolum,Aciklama';
        _fieldBaslik_ := ',,Adý Soyadý,TC,eMail,Telefon,Bölüm,Açýklama';
        _fieldTips_ := 'int,string,string,string,string,string,string,string';

        _ICParams_ := '';
        indexFieldName := 'sirketKod = ' + QuotedStr(_firmaKod_);
        cxPanel.Visible := false;
        cxGroupDoktorlar.Caption := 'Yetkili Bilgileri';

        cxGrid3.Dataset.BeforePost := ADOBeforePost;
        cxGrid3.Dataset.Connection := datalar.ADOConnection2;
        cxGrid3.Dataset.SQL.Text := 'Select id,SirketKod,AdiSoyadi,Tc,eMail,mobil,Bolum,Aciklama ' +
                                    ' from ISGFirmaYetkilileri where sirketKod = ' + QuotedStr(_firmaKod_);
        cxGrid3.Dataset.Open;
        DBGrid.ClearItems;
        DBGrid.DataController.CreateAllItems(True);
        SetGrid;

        SayfaCaption('','','','','');
        Result := True;
    end;

    TagFirmaCalismalari :
    begin
        ClientHeight := 600;
        ClientWidth := 600;
    //    TableName := 'SIRKET_SUBE_TNM';
        _fields_ := 'id,grup,konu,gorevli,grupTanimi,Sec';
        _fieldsEdit_ := '0,0,0,0,0,1';
        _fieldBaslik_ := ',GrupKodu,Konu,Görevli,Grup,Seç';
        _fieldTips_ := 'string,string,string,string,string,Check';
      //  indexFieldName := 'sirketKod = ' + QuotedStr(_firmaKod_);
        cxPanel.Visible := false;
        cxGroupDoktorlar.Caption := 'Çalýþma Bilgileri';
        cxGrid3.Dataset.BeforePost := ADOBeforePost;
        cxGrid3.Dataset.Connection := datalar.ADOConnection2;
        cxGrid3.Dataset.SQL.Text := 'select id,grup,konu,gorevli,CKG.tanimi grupTanimi,Sec from CalismaKonulari CK ' +
                                    ' join CalismaKonuGruplari CKG on CKG.kod = CK.grup ' +
                                    ' order by CKG.kod ';
        //DBGrid.OptionsView.gro

        cxGrid3.Dataset.Open;
        DBGrid.ClearItems;
        DBGrid.DataController.CreateAllItems(True);
        SetGrid;

       // DBGrid.OptionsView.GroupByBox := True;
        DbGrid.OptionsCustomize.ColumnGrouping := True;
        DBGrid.Columns[1].Caption := '';
     //   DBGrid.Columns[0].Visible := False;
        DBGrid.Columns[1].Visible := False;
        DBGrid.Columns[2].Options.Editing := False;
        DBGrid.Columns[3].Options.Editing := False;
        DBGrid.Columns[4].Properties.ReadOnly := True;
        DBGrid.Columns[4].Caption := '';
        DBGrid.Columns[4].Visible := False;
        DBGrid.Columns[4].GroupIndex := 0;

        SayfaCaption('','','','','');
        Result := True;
    end;

  end;


end;


procedure TfrmPopupDBGridForm.SetGrid;
var
 i,colswidth : integer;
 Columns,Baslik,Tips,Edits,IC_Params,IC_Param,ReadOnly : TstringList;
 FItem : TcxImageComboBoxItem;
 ado : TADOQuery;
 field1,field2,table,MaskEdit,filter : string;
begin
  Columns := TStringList.Create;
  ReadOnly := TStringList.Create;
  try
    Baslik := TStringList.Create;
    try
      Tips := TStringList.Create;
      IC_Params := TStringList.Create;
      IC_Param := TStringList.Create;
      try
        Edits := TStringList.Create;
        try
          Split(',',_fields_,Columns);
          Split(',',StringReplace (_fieldBaslik_, ' ', '<bozluk>', [rfReplaceAll]),Baslik);
          for i := 0 to Baslik.Count -1 do
            Baslik [i] := StringReplace (Baslik [i], '<bozluk>', ' ', [rfReplaceAll]);

          Split(',',_fieldTips_,Tips);
          Split(',',_fieldsEdit_,Edits);
          Split(',',_fieldReadOnly_,ReadOnly);

          ExtractStrings([';'],[],PChar(_ICParams_),IC_Params);


          for i := 0 to Columns.Count - 1 do
          begin
            DBGrid.Columns[i].Caption := Baslik[i];
            if ReadOnly.Count = 0
            then
              DBGrid.Columns[i].Options.Editing := True
            else
              DBGrid.Columns[i].Options.Editing := StrToBool(ifThen(ReadOnly[i]='','0',ReadOnly[i]));

            if IsNull (Baslik[i]) then
            begin
              DBgrid.Columns[i].Editing := False;
              DBgrid.Columns[i].Visible := False;
            end;
            DBgrid.Columns[i].HeaderAlignmentHorz := taCenter;
            if SameText (Tips[i], 'int') then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxCurrencyEditProperties';
              DBgrid.Columns[i].Properties.Alignment.Horz := taRightJustify;
              TcxCurrencyEditProperties(DBgrid.Columns[i].Properties).DisplayFormat := '#';
             // DBgrid.Columns[i].Width := DBgrid.Columns[i].BestFitMaxWidth;
             DBgrid.Columns[i].Width := 40;
             end;
            if SameText (Tips[i], 'intF') then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxCurrencyEditProperties';
              DBgrid.Columns[i].Properties.Alignment.Horz := taRightJustify;
              TcxCurrencyEditProperties(DBgrid.Columns[i].Properties).DisplayFormat := '#,###.##';
             // DBgrid.Columns[i].Width := DBgrid.Columns[i].BestFitMaxWidth;
             DBgrid.Columns[i].Width := 40;
             end;
             if SameText (Tips[i], 'tarih') then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxDateEditProperties';
              DBgrid.Columns[i].Properties.Alignment.Horz := taCenter;
              DBgrid.Columns[i].Width := 80;
             end;

            if SameText (Tips[i], 'string') then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxTextEditProperties';
              TcxTextEditProperties(DBgrid.Columns[i].Properties).Alignment.Vert := taVCenter;
           //   TcxTextEditProperties(DBgrid.Columns[i].Properties).Alignment.Horz := taCenter;
            //  DBgrid.Columns[i].Width := DBgrid.Columns[i].BestFitMaxWidth;
             DBgrid.Columns[i].Width := 100;
             end;
            if Pos('maskEdit',Tips[i]) > 0 then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxMaskEditProperties';
              TcxMaskEditProperties(DBgrid.Columns[i].Properties).Alignment.Vert := taVCenter;
             // MaskEdit := StringReplace(Tips[i],'maskEdit','',[rfReplaceAll]);
              MaskEdit := Copy(Tips[i],9,100);
              MaskEdit := StringReplace(MaskEdit,'-',' ',[rfReplaceAll]);

              TcxMaskEditProperties(DBgrid.Columns[i].Properties).EditMask := MaskEdit;
              DBgrid.Columns[i].Width := 100;
           //   TcxTextEditProperties(DBgrid.Columns[i].Properties).Alignment.Horz := taCenter;
            //  DBgrid.Columns[i].Width := DBgrid.Columns[i].BestFitMaxWidth;
             end;
            if SameText (Tips[i], 'memo') then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxRichEditProperties';
          //    TcxRichEditProperties(DBgrid.Columns[i].Properties).PlainText := True;
        //      TcxRichEditProperties(DBgrid.Columns[i].Properties).StreamModes := [resmPlainRtf];
              DBgrid.Columns[i].Width := 350;
              TcxRichEditProperties(DBgrid.Columns[i].Properties).VisibleLineCount := 4;
              TcxRichEditProperties(DBgrid.Columns[i].Properties).ScrollBars := ssBoth;
              //TcxTextEditProperties(DBgrid.Columns[i].Properties).Alignment.Vert := taVCenter;
           //   TcxTextEditProperties(DBgrid.Columns[i].Properties).Alignment.Horz := taCenter;
           //   DBgrid.Columns[i].BestFitMaxWidth := 400;
             end;
            if SameText (Tips[i], 'Check') then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxCheckBoxProperties';
              TcxCheckBoxProperties(DBgrid.Columns[i].Properties).ValueChecked := 1;
              TcxCheckBoxProperties(DBgrid.Columns[i].Properties).ValueUnchecked := 0;
              DBgrid.Columns[i].Width := 70;
             end;

            if SameText (Tips[i], 'CheckBit') then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxCheckBoxProperties';
              TcxCheckBoxProperties(DBgrid.Columns[i].Properties).ValueChecked := 'True';
              TcxCheckBoxProperties(DBgrid.Columns[i].Properties).ValueUnchecked := 'False';
             end;

            if SameText (Tips[i], 'saat') then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxDateEditProperties';
              DBgrid.Columns[i].Width := 70;
             end;

            if SameText (Tips[i], 'ButtonEdit') then
             begin
              DBgrid.Columns[i].PropertiesClassName := 'TcxButtonEditProperties';
              TcxButtonEditProperties(DBgrid.Columns[i].Properties).OnButtonClick := NaceKodPropertiesButtonClick;
             end;


            if SameText (Tips[i], 'IC')
            then begin
                DBgrid.Columns[i].PropertiesClassName := 'TcxImageComboBoxProperties';
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Alignment.Vert := taVCenter;
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.Clear;
                DBgrid.Columns[i].Properties.Alignment.Horz := taLeftJustify;
                DBgrid.Columns[i].Properties.OnEditValueChanged := PropertiesEditValueChanged;
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).ClearKey := VK_DELETE;
                DBgrid.Columns[i].Width := 150;
                ado := TADOQuery.Create(nil);
                ado.Connection := datalar.ADOConnection2;
                try
                   IC_Param.Clear;
                   ExtractStrings([','],[],pchar(IC_Params[i]),IC_Param);
                   if IC_Params.Count > 0 then
                   begin
                     table := StringReplace(IC_Param[0],'|',',', [rfReplaceAll]);
                     field1 := IC_Param[1];
                     field2 := IC_Param[2];

                     if IC_Param.Count = 4
                     then
                      filter := ' where ' + IC_Param[3]
                     else
                      filter := '';

                     datalar.QuerySelect(ado,'select * from ' + table + filter);
                     ado.First;
                     while not ado.Eof do
                     begin
                       FItem := TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.add;
                       FItem.Value := ado.FieldByName(field1).AsString;
                       FItem.Description := ado.FieldByName(field2).AsString;
                       ado.Next;
                     end;
                   end;
                finally
                  ado.free;
                end;
            end;



            if SameText (Tips[i], 'ImageDoktorCombo') then
             begin
              if SameText (Columns[i], 'subeDoktor') then
              begin
                DBgrid.Columns[i].PropertiesClassName := 'TcxImageComboBoxProperties';
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).ClearKey := 46;
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.Clear;

                datalar.Ado_Doktorlar.First;
                while not datalar.Ado_Doktorlar.Eof do
                begin
                  FItem := TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.add;
                  FItem.Value := datalar.Ado_Doktorlar.FieldByName('kod').AsString;
                  FItem.Description := datalar.Ado_Doktorlar.FieldByName('tanimi').AsString;
                  datalar.Ado_Doktorlar.Next;
                end;
              end;

              if SameText (Columns[i], 'IGU') then
              begin
                DBgrid.Columns[i].PropertiesClassName := 'TcxImageComboBoxProperties';
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).ClearKey := 46;
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.Clear;

                datalar.Ado_IGU.First;
                while not datalar.Ado_IGU.Eof do
                begin
                  FItem := TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.add;
                  FItem.Value := datalar.Ado_IGU.FieldByName('kod').AsString;
                  FItem.Description := datalar.Ado_IGU.FieldByName('tanimi').AsString;
                  datalar.Ado_IGU.Next;
                end;
              end;

              if SameText (Columns[i], 'DigerSaglikPers') then
              begin
                DBgrid.Columns[i].PropertiesClassName := 'TcxImageComboBoxProperties';
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).ClearKey := 46;
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.Clear;

                datalar.Ado_DSP.First;
                while not datalar.Ado_DSP.Eof do
                begin
                  FItem := TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.add;
                  FItem.Value := datalar.Ado_DSP.FieldByName('kod').AsString;
                  FItem.Description := datalar.Ado_DSP.FieldByName('tanimi').AsString;
                  datalar.Ado_DSP.Next;
                end;
              end;

              if SameText (Columns[i], 'tehlikeSinifi') then
              begin
                DBgrid.Columns[i].PropertiesClassName := 'TcxImageComboBoxProperties';
                TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.Clear;

                datalar.ADO_TehlikeSiniflari.First;
                while not datalar.ADO_TehlikeSiniflari.Eof do
                begin
                  FItem := TcxImageComboBoxProperties(DBgrid.Columns[i].Properties).Items.add;
                  FItem.Value := datalar.ADO_TehlikeSiniflari.FieldByName('TehlikeSinifi').AsString;
                  FItem.Description := datalar.ADO_TehlikeSiniflari.FieldByName('tanimi').AsString;
                  datalar.ADO_TehlikeSiniflari.Next;
                end;
              end;

             end;

           (*
            if SameText (Tips[i], 'memo')
            then
              DBgrid.Columns[i].Width := 200
             else
              DBgrid.Columns[i].Width := 100;
             *)

          end;
         // DBGrid.Columns[0].Visible := false;
        finally
          Edits.Free;
        end;
      finally
        Tips.Free;
        IC_Params.Free;
        IC_Param.Free;
      end;
    finally
      Baslik.Free;
    end;
  finally
    Columns.Free;
    ReadOnly.Free;
  end;

 // DBgrid.ApplyBestFit;
  colswidth := 0;

  for i := 0 to DBgrid.ColumnCount - 1 do
  begin
    colswidth := colswidth + DBgrid.Columns[i].Width;
  end;

  if (colswidth > 600) then colswidth := 600;
  if (colswidth >= 170) and (colswidth <= 600)
  then ClientWidth := colswidth + 50 else ClientWidth := 170;


end;

procedure TfrmPopupDBGridForm.BeforePost(DataSet: TDataSet);
begin
  inherited;

   if (txtTable.EditValue = '10') or
      (txtTable.EditValue = '11')
   then begin
      Dataset.FieldByName('GozlemGrup').AsString := varToStr(txtAltTable.EditValue);
   end;

   if txtTable.Text = 'Makinalar'
   then begin
      Dataset.FieldByName('sirketKod').AsString := datalar.AktifSirket;
   end;




end;

procedure TfrmPopupDBGridForm.NewRecord(DataSet: TDataSet);
begin
  inherited;
//


end;


procedure TfrmPopupDBGridForm.Yukle;
begin
  inherited;
  DBGrid.DataController.DataSource.DataSet := sqlRun;
  DBGrid.DataController.DataSource.DataSet.BeforePost := BeforePost;
  DBGrid.DataController.DataSource.DataSet.OnNewRecord := NewRecord;
  DBGrid.DataController.GridView.ClearItems;
  DBGrid.DataController.CreateAllItems(True);
  SetGrid;
end;

procedure TfrmPopupDBGridForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if Assigned(DBGrid.DataController.DataSource.DataSet)
  then
  if (DBGrid.DataController.DataSource.DataSet.State in [dsEdit, dsInsert]) then
    if ModalResult = mrYes then
      DBGrid.DataController.DataSource.DataSet.Post
     else
      DBGrid.DataController.DataSource.DataSet.Cancel;
end;

procedure TfrmPopupDBGridForm.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
  Tag := TagfrmPopupDBGridForm;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
end;

procedure TfrmPopupDBGridForm.txtAltTablePropertiesChange(Sender: TObject);
begin
  inherited;
  if txtTable.EditValue = '10'
  then begin
    TableName := 'SahaGozlemSoruAltGrup';
    indexFieldName := ' GozlemGrup = ' + QuotedStr(varToStr(txtAltTable.EditValue));
    _fields_ := 'GozlemGrup,GozlemAltGrup,Tanimi,Sira,aktif';
    _fieldBaslik_ := 'Grup,Alt Grup Kodu,Tanimi,Sira,Aktif';
    _fieldTips_ := 'IC,int,string,int,Check';
    _ICParams_ :=  'SahaGozlemSoruGrup,GozlemGrup,Tanimi;0;0;0';
    _fieldReadOnly_  := '0,1,1,1,1';
  end;

   if txtTable.EditValue = '11'
  then begin
    TableName := 'SahaGozlemSorular';
    indexFieldName := ' GozlemGrup = ' + QuotedStr(varTostr(txtAltTable.EditValue));
    _fields_ := 'GozlemGrup,GozlemAltGrup,Konu,Sira';
    _fieldBaslik_ := 'Grup,Alt Grup Kod,Gözlem Tanimi,Sira';
    _fieldTips_ := 'IC,IC,string,int';
    _ICParams_ :=  'SahaGozlemSoruGrup,GozlemGrup,Tanimi;SahaGozlemSoruAltGrup,GozlemAltGrup,Tanimi,GozlemGrup='+ QuotedStr(varTostr(txtAltTable.EditValue))  + ';0;0';
    _fieldReadOnly_  := '0,1,1,1';
  end;



  Yukle;

end;

procedure TfrmPopupDBGridForm.txtMsgEnter(Sender: TObject);
begin
 //perform(wm_nextdlgctl,0,0);
 ActiveControl := btnYes;
end;

procedure TfrmPopupDBGridForm.txtTablePropertiesChange(Sender: TObject);
var
  ado : TADOQuery;
  sql : string;
begin
  inherited;

  if txtTable.EditValue = 38
  then begin
    pnlEpikrizAyar.Visible := True;
    cxGrid3.Visible := False;
    pnlEpikrizAyar.Visible := True;
    sql := 'select SLVV from parametreler where slk = ''EA'' and SLB = ''00''';
    datalar.QuerySelect(sql);
    gelisSikayetSec(txtSeansSikayet,datalar.QuerySelect(sql).Fields[0].asstring);
    exit;
  end
  else
  begin
    pnlEpikrizAyar.Visible := False;
    cxGrid3.Visible := True;
  end;



   GrpAciklamaText.Visible := False;
   ado := TADOQuery.Create(nil);
  try
    ado.Connection := datalar.ADOConnection2;
    sql := 'select * from PopupDBGridFormTabloTanim where id = ' + varToStr(txtTable.EditingValue) +
           ' and aktif = 1';
    datalar.QuerySelect(ado,sql);

    TableName := ado.FieldByName('tableName').AsString;
    indexFieldName := ' 1=1';
    _fields_ := ado.FieldByName('_fields_').AsString;
    _fieldBaslik_ := ado.FieldByName('_fieldBaslik_').AsString;
    _fieldTips_ := ado.FieldByName('_fieldTips_').AsString;
    _ICParams_ :=  ado.FieldByName('IC_Params').AsString;
    _fieldReadOnly_  := ado.FieldByName('_fieldReadOnly_').AsString;


    if (txtTable.EditValue = '10') or
       (txtTable.EditValue = '11')
    then begin
           txtAltTable.Visible := True;
           txtAltTable.Conn := datalar.ADOConnection2;
           txtAltTable.TableName := 'SahaGozlemSoruGrup';
           txtAltTable.ValueField := 'GozlemGrup';
           txtAltTable.DisplayField := 'Tanimi';
           txtAltTable.Filter := '';
           txtAltTable.Clear;
           sqlRun.Active := False;
           exit;
    end
    else
      txtAltTable.Visible := False;

    Yukle;

    if txtTable.Text = 'Rapor Dizaynlarý'
    then begin
        E1.Visible := False;
        R1.Visible := True;
        PopupMenuToToolBar(self,ToolBar1,PopupMenu1);
    end
    else
    if txtTable.Text = 'Eðitim Türleri'
    then begin
        E1.Visible := True;
        R1.Visible := False;
        PopupMenuToToolBar(self,ToolBar1,PopupMenu1);
    end
    else
    begin
        E1.Visible := False;
        R1.Visible := False;
        PopupMenuToToolBar(self,ToolBar1,PopupMenu1);
    end;



    if txtTable.Text = 'Ekip Görev Tanýmlarý'
    then begin
       GrpAciklama.Caption := 'Ekip Görev Tanýmlarý - Yasal Yükümlülükler';
       GrpAciklama.Visible := True;
       txtAciklama.DataBinding.DataSource := DataSource1;
    end
    else
    begin
       GrpAciklama.Visible := false;
       txtAciklama.DataBinding.DataSource := nil;
    end;

  finally
    ado.Free;
  end;


end;

procedure TfrmPopupDBGridForm.FormShow(Sender: TObject);
begin
  inherited;

  if cxPanelBottom.Visible = True
  then begin
    btnYes.Visible := True;
    btnYes.Caption := '&Tamam';
    btnIptal.Visible := True;
    btnIptal.Caption := '&Vazgeç';
    btnIptal.TabOrder := 0;
    btnYes.TabOrder := 1;
    btnIptal.SetFocus;
    end;
end;

procedure TfrmPopupDBGridForm.FormActivate(Sender: TObject);
begin
   if frmTop_ = 0
   Then frmTop_ := Trunc(TScreen(frmPopupDBGridForm).DesktopHeight/2);
   if frmLeft_ = 0
   Then frmLeft_ := Trunc(TScreen(frmPopupDBGridForm).DesktopWidth/2);

   Top := frmTop_ - Trunc(Height/2);
   Left := frmLeft_ - Trunc(Width/2);
end;

end.
