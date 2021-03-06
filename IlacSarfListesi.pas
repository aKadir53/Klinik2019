unit IlacSarfListesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, adodb,
  Dialogs, Grids, DBGridEh, Mask, StdCtrls, clisted, Buttons,KadirType,
  sBitBtn, ExtCtrls, DB, RxMemDS, data_modul, strUtils,GirisUnit,
  sComboBox,kadir, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters, DBCtrls,dxmdaset, cxContainer, cxCheckBox,
  cxTextEdit, cxMemo, cxDBLookupComboBox, Menus, cxButtons, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxDropDownEdit, cxButtonEdit,
  KadirLabel, cxImageComboBox, cxSplitter;

type
  TfrmIlacSarf = class(TGirisForm)
    pnlToolBar: TPanel;
    PanelSource: TPanel;
    pnlTitle: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    GroupBox2: TGroupBox;
    txtarama: TcxTextEdit;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    txtGruplar: TsComboBox;
    gridIlacSarf: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    gridIlacSarfColumn1: TcxGridDBColumn;
    gridIlacSarfColumn2: TcxGridDBColumn;
    DBNavigator1: TDBNavigator;
    gridIlacSarfColumn3: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    Eklenen: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    EklenenColumn1: TcxGridDBColumn;
    Eklenenler: TdxMemData;
    EklenenlerETKENMADDE: TStringField;
    EklenenlerFormu: TStringField;
    Eklenenlerdoz: TStringField;
    EklenenlerKyolu: TStringField;
    chkDoz: TcxCheckBox;
    txtDetay: TcxMemo;
    chkSIK: TcxCheckBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    K: TcxStyle;
    Y: TcxStyle;
    T: TcxStyle;
    gridIlacSarfColumn4: TcxGridDBColumn;
    Eklenenleradet: TStringField;
    EklenenColumn2: TcxGridDBColumn;
    EklenenColumn3: TcxGridDBColumn;
    gridIlacSarfColumn5: TcxGridDBColumn;
    gridIlacSarfColumn6: TcxGridDBColumn;
    gridIlacSarfColumn7: TcxGridDBColumn;
    gridIlacSarfColumn8: TcxGridDBColumn;
    Eklenenlertani: TStringField;
    EklenenColumn4: TcxGridDBColumn;
    btnVazgec: TcxButton;
    btnSend: TcxButton;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    TaniListe: TListeAc;
    Eklenenlerperyot: TIntegerField;
    EklenenColumn5: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    btnSIKcikar: TcxButton;
    btnSIKEkle: TcxButton;
    gridIlacSarfColumn9: TcxGridDBColumn;
    EklenenlerEtkenMaddeKodu: TStringField;
    gridIlacSarfColumn10: TcxGridDBColumn;
    chkDozAsimiDikkateAlma: TcxCheckBox;
    procedure txtHizmetGruplariCheckListItemToText(sender: TObject;
      var aText: String);
    procedure btnSendClick(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);
    procedure Tanilar (const bReset: Boolean);
    procedure gridIlacSarfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridIlacSarfDblClick(Sender: TObject);
    procedure gridIlacSarfKeyPress(Sender: TObject; var Key: Char);
    procedure chkDozClick(Sender: TObject);
    procedure chkSIKClick(Sender: TObject);
    procedure gridIlacSarfStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EklenenColumn4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure SIKKullanimaEkle(count : integer = 0);
    procedure SIKKulanimdanCikar;
    procedure btnSIKcikarClick(Sender: TObject);
    procedure btnSIKEkleClick(Sender: TObject);


  private
    { Private declarations }
    { Private declarations }
    Fislem_ : integer;
    Fcaption_ : string;
    Fvalue_ : string;
    FFormName_ : string;

  protected
    procedure FADO_ILACSARFAfterScroll(DataSet: TDataSet);
  public
    { Public declarations }
    _islem_ :integer;
    _caption_ : string;
    _value_ : string;
    FGirisForm : TGirisForm;
    { Public declarations }

    property islem_ : integer read Fislem_ write Fislem_;
    property caption_ : string read Fcaption_ write Fcaption_;
    property value_ : string read Fvalue_ write Fvalue_;
    property FormName_ : string read FFormName_ write FFormName_;

    destructor Destroy; override;
  end;


var
  frmIlacSarf: TfrmIlacSarf;

implementation
   uses HastaRecete,Recetesablonlari;

var
  FADO_ILACSARF : TADOQuery;
  FLastSikKull : Integer;


{$R *.dfm}

procedure TfrmIlacSarf.Tanilar (const bReset: Boolean);
var
  sql : string;
  iTmp : Integer;
  aNtfEvt: TNotifyEvent;
  AHandled : Boolean;
begin

  if Tag = TagfrmIlacEtkenMadde then
  begin
            sql := 'select I.*,D.*,D.ICD TANI,D.kulYOL YOL,ATC.Tanimi EtkenMaddeAdi,isnull(D.adet,I.adet) SIKAdet from OSGB_MASTER.DBO.ilacListesi I ' +
                   ' join OSGB_MASTER.DBO.doktorSIKKullanim D on D.barkod = I.barkod' +
                   ' left join OSGB_MASTER.DBO.ATC_Kodlari ATC on ATC.kod = I.EtkenMadde ' +
                   ' where drTC = ' + QuotedStr(datalar.doktorTC) +
                   ' and D.tip = ''ILAC''' +
                   ' order by ilacAdi ';


          datalar.QuerySelect(FADO_ILACSARF, sql);

  end
  else
  begin
        if not bReset then
        begin
          aNtfEvt := chkSIK.OnClick;
          chkSIK.OnClick := nil;
          try
            chkSIK.Checked := FLastSikKull in [1, 2];
          finally
            chkSIK.OnClick := aNtfEvt;
          end;
        end;
        if chkSIK.Checked then iTmp := 1 else iTmp := 0;
        if not Assigned (FADO_ILACSARF) then
        begin
          FADO_ILACSARF := TADOQuery.Create (nil);
          FADO_ILACSARF.Connection := DATALAR.ADOConnection2;
          FADO_ILACSARF.CursorType := ctStatic;
        end;
        FADO_ILACSARF.AfterScroll := FADO_ILACSARFAfterScroll;
        DataSource1.DataSet := FADO_ILACSARF;
        if (FLastSikKull <> iTmp) or (not FADO_ILACSARF.Active) or bReset then
        begin
          FADO_ILACSARF.Close;
          FADO_ILACSARF.SQL.Clear;

          DurumGoster(True,False,'�la� Listesi Y�kleniyor...L�tfen Bekleyiniz...',0);
          if not chkSIK.Checked
          then begin
             sql := 'select I.*,ICD TANI,kulYOL YOL,ATC.Tanimi EtkenMaddeAdi,''1x1'' SIKDoz,''3'' SIKPeryot, ''1'' SIKAdet ,'  +
                    'case when ITU.dosyaNO is null then 0 else 1 end AlerjiVar' +
                    ' from OSGB_MASTER.DBO.ilacListesi I' +
                    ' left join OSGB_MASTER.DBO.ATC_Kodlari ATC on ATC.kod = I.EtkenMadde ' +
                    ' left join Hasta_Ilac_Uyari ITU on ITU.atc_kodu = I.EtkenMAdde and ITU.dosyano = ' + QuotedStr(_dosyaNO_) +
                    ' order by ilacAdi';
          end
          else
          begin
            sql := 'select I.*,D.*,D.ICD TANI,D.kulYOL YOL,ATC.Tanimi EtkenMaddeAdi,D.Doz SIKDoz,D.peryot SIKPeryot, isnull(D.adet,I.adet) SIKAdet,' +
                   'case when ITU.dosyaNO is null then 0 else 1 end AlerjiVar' +
                   ' from OSGB_MASTER.DBO.ilacListesi I ' +
                   ' join OSGB_MASTER.DBO.doktorSIKKullanim D on D.barkod = I.barkod' +
                   ' left join OSGB_MASTER.DBO.ATC_Kodlari ATC on ATC.kod = I.EtkenMadde ' +
                   ' left join Hasta_Ilac_Uyari ITU on ITU.atc_kodu = I.EtkenMAdde and ITU.dosyano = ' + QuotedStr(_dosyaNO_) +
                   ' where drTC = ' + QuotedStr(datalar.doktorTC) +
                   ' and D.tip = ''ILAC''' +
                   ' order by ilacAdi ';
          end;

          datalar.QuerySelect(FADO_ILACSARF, sql);
          FLastSikKull := iTmp;
        end;
        FADO_ILACSARF.First;
  end;
  DurumGoster(False,False,'');

end;

procedure TfrmIlacSarf.txtHizmetGruplariCheckListItemToText(
  sender: TObject; var aText: String);
begin
  atext :=  copy(atext,1,2);
end;

procedure TfrmIlacSarf.FADO_ILACSARFAfterScroll(DataSet: TDataSet);
begin
  if chkDoz.Checked
  then
    try
     txtDetay.Lines :=
     IlacReceteAciklama(_dosyaNo_,_gelisNo_,
                    FADO_ILACSARF.FieldByName('barkod').AsString,
                    inttostr(FADO_ILACSARF.FieldByName('UNITE').AsInteger),
                    ifThen(chkDozAsimiDikkateAlma.Checked,'1','0')

                    );
    except
    end
  else
     pnlToolBar.Caption := '';
end;

procedure TfrmIlacSarf.btnSendClick(Sender: TObject);
var
   i,x,j: integer;
   s , _tani_, sql , keys , doz1,doz2 , peryot,peryotAdet : string;
   ado : TADOQuery;
   unite : real;
   ack : TStringList;
begin
DurumGoster(True,False,'�la� Ekleme ��leminiz Yap�l�yor...');
try
  if _islem_= receteilacekle then
  begin
  try
    if Tag = TagfrmIlacSarf
    Then Begin
       try
         frmHastaRecete.ADO_RECETE_DETAY.Active := false;
         frmHastaRecete.ADO_RECETE_DETAY.Active := True;

         Eklenenler.First;
         for i := 1 to Eklenenler.RecordCount do
         begin
           if (Eklenenler.fieldbyname('doz').AsString <> '') and
              (Eklenenler.fieldbyname('adet').AsString <> '') and
              (Eklenenler.fieldbyname('adet').AsString <> '0')
           Then Begin
             if frmHastaRecete.ADO_RECETE_DETAY.Locate('ilacKodu;receteId',VarArrayOf([Eklenenler.fieldbyname('ETKENMADDE').AsString,
                                                                                      frmHastaRecete.ADO_Recete.fieldbyname('id').AsString]),[]) = True
             Then begin
               ShowMessageSkin(Eklenenler.fieldbyname('ETKENMADDE').AsString + ' ila� re�eteye eklenmi�','','','info');
               exit;
             End;

              frmHastaRecete.ADO_RECETE_DETAY.Append;
              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('ReceteID').AsInteger := frmHastaRecete.ADO_Recete.FieldByName('id').AsInteger;
              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := Eklenenler.fieldbyname('ETKENMADDE').AsString;
              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := Eklenenler.fieldbyname('Formu').AsString;

              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('adet').AsString := Eklenenler.fieldbyname('adet').AsString;
              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString :=
              ifThen(Eklenenler.fieldbyname('Kyolu').AsString = '' ,'1',Eklenenler.fieldbyname('Kyolu').AsString);
              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := '1';

              doz1 := copy(Eklenenler.fieldbyname('doz').AsString,1,pos('x',Eklenenler.fieldbyname('doz').AsString)-1);
              doz2 := copy(Eklenenler.fieldbyname('doz').AsString,pos('x',Eklenenler.fieldbyname('doz').AsString)+1,5);

              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsString := doz1;


              unite :=  strtofloat(doz2) *
                      IlacKoduToUnite(Eklenenler.fieldbyname('ETKENMADDE').AsString,_dosyaNo_,_gelisNo_,peryot,peryotAdet);

              try
                peryot := Eklenenler.fieldbyname('peryot').AsString;
                frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := peryot;
                frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := peryotAdet;
              except
              end;

              frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString := floattostr(unite);
              //Eklenenler.fieldbyname('doz').AsString[3];

              frmHastaRecete.ADO_RECETE_DETAY.Post;

              ado := TADOQuery.Create(nil);
              try

                 SIKKullanimaEkle(0);

                 ack := IlacReceteAciklama(_dosyaNo_,_gelisNo_,Eklenenler.fieldbyname('ETKENMADDE').AsString,
                                            inttostr(frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger *
                                                     frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsInteger) ,
                                                     ifThen(chkDozAsimiDikkateAlma.Checked,'1','0')

                                            );
                 sql := 'delete from ReceteIlacAciklama where receteDetayId = ' + frmHastaRecete.ADO_RECETE_DETAY.fieldbyname('id').AsString;
                 datalar.QueryExec(ado,sql);
              finally
                 ado.Free;
              end;
              frmHastaRecete.ADO_ReceteIlacAciklama.Active := false;
              frmHastaRecete.ADO_ReceteIlacAciklama.Active := true;


              for j := 0 to ack.Count-1 do
              begin
                  frmHastaRecete.ADO_ReceteIlacAciklama.Append;
                  frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := copy(ack[j],3,500);
                  frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := trim(copy(ack[j],1,2));
                  frmHastaRecete.ADO_ReceteIlacAciklama.Post;
                  if copy(frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString,1,4) = 'Hata'
                  Then ShowMessageSkin('Dikkat , Doz Bilgisini Kontrol Ediniz','','','info');
              end;


              frmHastaRecete.ADO_receteTani.Active := false;
              frmHastaRecete.ADO_receteTani.Active := True;

              _tani_ := IlacReceteTaniEkle(Eklenenler.fieldbyname('ETKENMADDE').AsString);
              x := pos(';',_tani_)-1;
              keys := copy(_tani_,1,x);
              if copy(_tani_,1,x) <> ''
              Then Begin
               if frmHastaRecete.ADO_receteTani.Locate('taniKodu;receteId',VarArrayOf([keys,frmHastaRecete.ADO_Recete.fieldbyname('id').AsString]) ,[]) = False
               Then Begin
                 frmHastaRecete.ADO_receteTani.Append;
                 frmHastaRecete.ADO_receteTani.fieldbyname('taniKodu').AsString := copy(_tani_,1,pos(';',_tani_)-1);
                 frmHastaRecete.ADO_receteTani.fieldbyname('tani').AsString := copy(_tani_,pos(';',_tani_)+1,100);
                 frmHastaRecete.ADO_receteTani.Post;
               End;
              End;
              if Eklenenler.fieldbyname('Tani').AsString <> ''
              Then Begin
              keys := Eklenenler.fieldbyname('Tani').AsString;
               if frmHastaRecete.ADO_receteTani.Locate('taniKodu;receteId',VarArrayOf([keys,frmHastaRecete.ADO_Recete.fieldbyname('id').AsString]) ,[]) = False
               Then Begin
                 frmHastaRecete.ADO_receteTani.Append;
                 frmHastaRecete.ADO_receteTani.fieldbyname('taniKodu').AsString := keys;
                 frmHastaRecete.ADO_receteTani.fieldbyname('tani').AsString := TaniKodToTaniAd(keys);
                 frmHastaRecete.ADO_receteTani.Post;
               End;
              End;
              Eklenenler.Next;
           End // if end
           Else
           Begin
              ShowMessageSkin(Eklenenler.fieldbyname('Formu').AsString + ' i�in doz veya adet bilgisi girilmemi�','','','info');
              exit;
           End;
         end; // for end
         s := copy(s,1,Length(s)-1);
      except on e : Exception do
       begin
           ShowMessageSkin(e.Message,'','','info');
       end;
      end;
    End;
     close;
  except
  end;
  end
  else
  if _islem_ = recetesablonilacekle then
  begin

   try
    if Tag = TagfrmIlacSarf
    Then Begin
       try
         frmReceteSablon.SABLONDETAY.Active := false;
         frmReceteSablon.SABLONDETAY.Active := True;

         Eklenenler.First;
         for i := 1 to Eklenenler.RecordCount do
         begin
           if Eklenenler.fieldbyname('doz').AsString <> ''
           Then Begin
             if frmReceteSablon.SABLONDETAY.Locate('ilacKodu;recetesablonId',VarArrayOf([Eklenenler.fieldbyname('ETKENMADDE').AsString,
                                                                                      frmReceteSablon.SABLOnLAR.fieldbyname('id').AsString]),[]) = True
             Then begin
               ShowMessageSkin(Eklenenler.fieldbyname('ETKENMADDE').AsString + ' ila� re�eteye eklenmi�','','','info');
               exit;
             End;

              frmReceteSablon.SABLONDETAY.Append;
              frmReceteSablon.SABLONDETAY.FieldByName('ilacKodu').AsString := Eklenenler.fieldbyname('ETKENMADDE').AsString;
              frmReceteSablon.SABLONDETAY.FieldByName('ilacAdi').AsString := Eklenenler.fieldbyname('Formu').AsString;

              frmReceteSablon.SABLONDETAY.FieldByName('adet').AsString := Eklenenler.fieldbyname('adet').AsString;
              frmReceteSablon.SABLONDETAY.FieldByName('kullanimYolu').AsString :=
              ifThen(Eklenenler.fieldbyname('Kyolu').AsString = '' ,'1',Eklenenler.fieldbyname('Kyolu').AsString);
              frmReceteSablon.SABLONDETAY.FieldByName('kullanimZaman').AsString := '1';

              doz1 := copy(Eklenenler.fieldbyname('doz').AsString,1,pos('x',Eklenenler.fieldbyname('doz').AsString)-1);
              doz2 := copy(Eklenenler.fieldbyname('doz').AsString,pos('x',Eklenenler.fieldbyname('doz').AsString)+1,5);

              frmReceteSablon.SABLONDETAY.FieldByName('kullanimAdet2').AsString := doz1;

              unite := 1 * strtofloat(doz2);//IlacKoduToUnite(Eklenenler.fieldbyname('ETKENMADDE').AsString,_dosyaNo_,_gelisNo_,peryot,peryotAdet)
              try

                frmReceteSablon.SABLONDETAY.FieldByName('kullanZamanUnit').AsString := '3';
                frmReceteSablon.SABLONDETAY.FieldByName('kullanimZaman').AsString := '1';

              except
              end;

              frmReceteSablon.SABLONDETAY.FieldByName('kullanimAdet').AsString := floattostr(unite);
              //Eklenenler.fieldbyname('doz').AsString[3];

              frmReceteSablon.SABLONDETAY.Post;

              ado := TADOQuery.Create(nil);
              try

                sql := 'if not Exists(select * from OSGB_MASTER.dbo.doktorSIKKullanim where drTC = ' + QuotedStr(datalar.doktorTC) +
                        ' and  ' +
                        ' barkod = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString)+ ')' +
                        ' begin ' +
                          'insert into OSGB_MASTER.dbo.doktorSIKKullanim (drTC,barkod,drKod,tip,ICD,adet) ' +
                          'values(' + QuotedStr(datalar.doktorTC) + ',' +
                                      QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString) + ',' +
                                      QuotedStr(datalar.doktorKodu) + ',' +
                                      QuotedStr('ILAC') + ',' +
                                      QuotedStr(Eklenenler.fieldbyname('tani').AsString) + ',' +
                                      QuotedStr(Eklenenler.fieldbyname('adet').AsString) +
                                 ')' +
                        ' end ' +
                        ' else ' +
                        ' begin ' +
                         ' update OSGB_MASTER.dbo.doktorSIKKullanim ' +
                         ' set ICD = ' + QuotedStr(Eklenenler.fieldbyname('tani').AsString) + ',' +
                         ' kulYol = ' + QuotedStr(Eklenenler.fieldbyname('Kyolu').AsString) + ',' +
                         ' adet = ' + QuotedStr(Eklenenler.fieldbyname('adet').AsString) +
                         ' where drTC = ' + QuotedStr(datalar.doktorTC) +
                         ' and barkod = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString) +
                        ' end';
              (*
                sql := 'update ilacListesi set sikKullan = 1 where barkod = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString);
                datalar.QueryExec(ado,sql);

                sql := 'IF EXISTS (SELECT * FROM ilacListesi WHERE barkod = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString) + ')' +
                        ' BEGIN ' +
                        '  UPDATE ilacListesi ' +
                        '  SET kulYol = ' + SQLValue(Eklenenler.fieldbyname('Kyolu').AsString) + ',' +
                        '  ICD = ' + SQLValue(Eklenenler.fieldbyname('tani').AsString) +
                        '  where barkod = ' + SQLValue (Eklenenler.fieldbyname('ETKENMADDE').AsString) +
                        ' END';
                *)
                datalar.QueryExec(ado,sql);

                (*
                ack := IlacReceteAciklama(_dosyaNo_,_gelisNo_,Eklenenler.fieldbyname('ETKENMADDE').AsString,
                                            inttostr(frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger *
                                                     frmHastaRecete.ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsInteger)
                                            );
                  *)

                 sql := 'delete from ReceteIlacAciklamasablon where recetedetaysablonId = ' + frmReceteSablon.SABLONDETAY.fieldbyname('id').AsString;
                 datalar.QueryExec(ado,sql);
              finally
                 ado.Free;
              end;
              frmReceteSablon.IlacAciklama.Active := false;
              frmReceteSablon.IlacAciklama.Active := true;

            (*
              for j := 0 to ack.Count-1 do
              begin
                  frmHastaRecete.ADO_ReceteIlacAciklama.Append;
                  frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := copy(ack[j],3,500);
                  frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := trim(copy(ack[j],1,2));
                  frmHastaRecete.ADO_ReceteIlacAciklama.Post;
                  if copy(frmHastaRecete.ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString,1,4) = 'Hata'
                  Then ShowMessageSkin('Dikkat , Doz Bilgisini Kontrol Ediniz','','','info');
              end;
               *)

              frmReceteSablon.Tani.Active := false;
              frmReceteSablon.Tani.Active := True;

              _tani_ := IlacReceteTaniEkle(Eklenenler.fieldbyname('ETKENMADDE').AsString);
              x := pos(';',_tani_)-1;
              keys := copy(_tani_,1,x);
              if copy(_tani_,1,x) <> ''
              Then Begin
               if frmReceteSablon.Tani.Locate('taniKodu;recetesablonId',VarArrayOf([keys,frmReceteSablon.Sablonlar.fieldbyname('id').AsString]) ,[]) = False
               Then Begin
                 frmReceteSablon.Tani.Append;
                 frmReceteSablon.Tani.fieldbyname('taniKodu').AsString := copy(_tani_,1,pos(';',_tani_)-1);
                 frmReceteSablon.Tani.fieldbyname('tani').AsString := copy(_tani_,pos(';',_tani_)+1,100);
                 frmReceteSablon.Tani.Post;
               End;
              End;
              if Eklenenler.fieldbyname('Tani').AsString <> ''
              Then Begin
              keys := Eklenenler.fieldbyname('Tani').AsString;
               if frmReceteSablon.Tani.Locate('taniKodu;recetesablonId',VarArrayOf([keys,frmReceteSablon.Sablonlar.fieldbyname('id').AsString]) ,[]) = False
               Then Begin
                 frmReceteSablon.Tani.Append;
                 frmReceteSablon.Tani.fieldbyname('taniKodu').AsString := keys;
                 frmReceteSablon.Tani.fieldbyname('tani').AsString := TaniKodToTaniAd(keys);
                 frmReceteSablon.Tani.Post;
               End;
              End;
              Eklenenler.Next;
           End // if end
           Else
           Begin
              ShowMessageSkin(Eklenenler.fieldbyname('Formu').AsString + ' i�in doz girilmemi�','','','info');
              exit;
           End;
         end; // for end
         s := copy(s,1,Length(s)-1);
      except on e : Exception do
       begin
           ShowMessageSkin(e.Message,'','','info');
       end;
      end;
    End;
     close;
  except
  end;

  end
  else
  if _islem_ = ilacTedaviIlacEkle then
  begin

     Eklenenler.First;
     for i := 1 to Eklenenler.RecordCount do
     begin
         doz1 := copy(Eklenenler.fieldbyname('doz').AsString,1,pos('x',Eklenenler.fieldbyname('doz').AsString)-1);
         doz2 := copy(Eklenenler.fieldbyname('doz').AsString,pos('x',Eklenenler.fieldbyname('doz').AsString)+1,5);

         case Eklenenler.fieldbyname('peryot').AsInteger of
          3 : peryot := '1';
          4 : peryot := '7';
          5 : peryot := '30';
          else
          peryot := '1';
         end;


         sql := 'insert into HastaIlacTedavi (dosyaNo,gelisNo,ilac,ilacname,doz,miktar,peryot,kyol) ' +
                ' values (' + QuotedStr(_dosyaNo_) + ','
                            + _gelisNo_ + ','
                            + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString) + ','
                            + QuotedStr(Eklenenler.fieldbyname('Formu').AsString) + ','
                            + doz2 + ','
                            + doz1 + ','
                            + peryot + ','
                            + QuotedStr(Eklenenler.fieldbyname('KYolu').AsString) +
                            ')';

         datalar.QueryExec(sql);






         Eklenenler.Next;
     end;

     datalar.ADO_ILACSARF.Close;
     close;



  end;

finally
  DurumGoster(False);
end;
end;

destructor TfrmIlacSarf.Destroy;
begin
  FADO_ILACSARF.AfterScroll := nil;
  inherited;
end;

procedure TfrmIlacSarf.EklenenColumn4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  List : ArrayListeSecimler;
  I : integer;
  sql, id : string;
  ado : TADOQuery;
begin
   TaniListe.Where := '';
 //  TaniListe.SkinName := AnaForm.dxSkinController1.SkinName;
   TaniListe.SiralamaKolonu := 'TANI';
   List := TaniListe.ListeGetir;
   eklenenler.edit;
   eklenenler.fieldbyname('Tani').asstring:=List[0].kolon1;
   eklenenler.post;

end;

procedure TfrmIlacSarf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmIlacSarf.FormCreate(Sender: TObject);
begin
  inherited;
  Tag := TagfrmIlacSarf;

  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('','','','','');
  Olustur(self,_TableName_,'�la� Listesi',97);

end;

procedure TfrmIlacSarf.FormShow(Sender: TObject);
var
 AHandled : Boolean;
begin
  inherited;
  cxGrid1.SetFocus;
  gridIlacSarf.Focused := True;

  //gridIlacSarf.OnCellClick(gridIlacSarf,nil,mbLeft,[],AHandled);
end;

procedure TfrmIlacSarf.btnSIKcikarClick(Sender: TObject);
begin
  inherited;
  SIKKulanimdanCikar;
end;

procedure TfrmIlacSarf.btnSIKEkleClick(Sender: TObject);
begin
  inherited;
  SIKKullanimaEkle(0);
end;

procedure TfrmIlacSarf.btnVazgecClick(Sender: TObject);
begin
     kadir.AramaText := '';
     gridIlacSarf.DataController.Filter.Root.Clear;
     datalar.ADO_ILACSARF.Close;

     close;
end;

procedure TfrmIlacSarf.chkDozClick(Sender: TObject);
begin
  if chkDoz.Checked
  Then pnlToolBar.Visible := True
  Else pnlToolBar.Visible := False;

end;

procedure TfrmIlacSarf.chkSIKClick(Sender: TObject);
var
  c : boolean;
begin
  c := chkDoz.Checked;
  chkDoz.Checked := False;
  frmIlacSarf.Tanilar (True);
  chkDoz.Checked := c;
end;

procedure TfrmIlacSarf.gridIlacSarfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 s : string;
 _key_ : char;
begin
    if key = vk_return
    then begin

              if FADO_ILACSARF.fieldbyname('AlerjiVar').AsInteger = 1
              Then begin
                ShowMessageSkin('Hastan�n ','['+FADO_ILACSARF.fieldbyname('EtkenMaddeAdi').AsString+']',
                                'Tan�ml� Etken Maddeye Alerji Kayd� Vard�r','info');
              end;

              Eklenenler.Append;
              Eklenenler.FieldByName('ETKENMADDE').AsString := FADO_ILACSARF.fieldbyname('barkod').AsString;
              Eklenenler.FieldByName('formu').AsString := FADO_ILACSARF.fieldbyname('ilacAdi').AsString;
              Eklenenler.FieldByName('KYolu').AsString := FADO_ILACSARF.fieldbyname('YOL').AsString;
              Eklenenler.FieldByName('tani').AsString := FADO_ILACSARF.fieldbyname('TANI').AsString;
              Eklenenler.FieldByName('doz').AsString := FADO_ILACSARF.fieldbyname('SIKdoz').AsString;
              Eklenenler.FieldByName('adet').AsString := FADO_ILACSARF.fieldbyname('SIKAdet').AsString;
              Eklenenler.FieldByName('peryot').AsString := FADO_ILACSARF.fieldbyname('SIKperyot').AsString;
              Eklenenler.FieldByName('EtkenMaddeKodu').AsString := FADO_ILACSARF.fieldbyname('EtkenMadde').AsString;

              if StrToIntDef (Eklenenler.FieldByName('adet').AsString, -1) <= 0 then
                Eklenenler.FieldByName('adet').AsInteger := 1;

           //   Eklenenler.FieldByName('tani').AsString := ADO_ILACSARF.fieldbyname('taniKodu').AsString;

              Eklenenler.Post;
              _key_ := #27;
              txtarama.Text := '';
              s := '';

              KeyPressGridf(gridIlacSarf,_key_,s,1,True);
    end;

end;

procedure TfrmIlacSarf.gridIlacSarfDblClick(Sender: TObject);
var
   key : word;
begin
     key := vk_return;
     gridIlacSarf.OnKeyDown(gridIlacSarf,key,[]);
end;

procedure TfrmIlacSarf.gridIlacSarfKeyPress(Sender: TObject;
  var Key: Char);
 var
   s:  string;
begin
   KeyPressGridf(gridIlacSarf,key,s,1,True);
   txtarama.Text := s;
end;

procedure TfrmIlacSarf.gridIlacSarfStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if (ARecord.Values[2] = 'K')
   Then AStyle := K;

   if (ARecord.Values[2] = 'Y')
   Then AStyle := Y;

   if (ARecord.Values[2] = 'T')
   Then AStyle := T;

end;

procedure TfrmIlacSarf.SIKKulanimdanCikar;
var
  sql : string;
begin
 sql := 'delete from OSGB_MASTER.dbo.doktorSIKKullanim where drTC = ' + QuotedStr(datalar.doktorTC) +
            ' and  ' +
            ' barkod = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString);

 datalar.QueryExec(sql);
end;

procedure TfrmIlacSarf.SIKKullanimaEkle(count : integer = 0);
var
  sql : string;
begin
    sql := 'if not Exists(select * from OSGB_MASTER.dbo.doktorSIKKullanim where drTC = ' + QuotedStr(datalar.doktorTC) +
            ' and  ' +
            ' barkod = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString)+ ')' +
            ' and  '  +
            ' (select count(*) from receteDetay where ilacKodu = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString)+ ')> ' + intToStr(count) +
            ' begin ' +
              'insert into OSGB_MASTER.dbo.doktorSIKKullanim (drTC,barkod,drKod,tip,ICD,doz,kulYol,peryot) ' +
              'values(' + QuotedStr(datalar.doktorTC) + ',' +
                          QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString) + ',' +
                          QuotedStr(datalar.doktorKodu) + ',' +
                          QuotedStr('ILAC') + ',' +
                          QuotedStr(Eklenenler.fieldbyname('tani').AsString) + ',' +
                          QuotedStr(Eklenenler.fieldbyname('doz').AsString) + ',' +
                          QuotedStr(Eklenenler.fieldbyname('KYolu').AsString) + ',' +
                          QuotedStr(Eklenenler.fieldbyname('peryot').AsString) +
                     ')' +
            ' end ' +
            ' else ' +
            ' begin ' +
             ' update OSGB_MASTER.dbo.doktorSIKKullanim ' +
             ' set ICD = ' + QuotedStr(Eklenenler.fieldbyname('tani').AsString) + ',' +
             ' kulYol = ' + QuotedStr(Eklenenler.fieldbyname('Kyolu').AsString) + ',' +
             ' doz = ' +  QuotedStr(Eklenenler.fieldbyname('doz').AsString) + ',' +
             ' peryot = ' +  QuotedStr(Eklenenler.fieldbyname('peryot').AsString) + ',' +
             ' adet = ' + QuotedStr(Eklenenler.fieldbyname('adet').AsString) +
             ' where drTC = ' + QuotedStr(datalar.doktorTC) +
             ' and barkod = ' + QuotedStr(Eklenenler.fieldbyname('ETKENMADDE').AsString) +
            ' end';
   datalar.QueryExec(sql);
end;

initialization
  FADO_ILACSARF := nil;
  FLastSikKull := 2;

finalization
  FreeAndNil(FADO_ILACSARF);
end.

