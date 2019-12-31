unit raporSablonlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,strutils,
  Dialogs, Grids, DBGridEh, StdCtrls, Buttons, sBitBtn, ExtCtrls, DB, ADODB,
  DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,kadir,
  cxContainer, cxEdit, cxGroupBox, GirisUnit,KadirType,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, GridsEh, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxButtons, KadirLabel, Menus,
  cxImageComboBox, cxTextEdit, cxMemo, cxDBEdit;

type
  TfrmRaporSablon = class(TGirisForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh3: TDBGridEh;
    Sablonlar: TADOTable;
    SablonDetay: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    Tani: TADOTable;
    DataSource5: TDataSource;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    K1: TMenuItem;
    cxGrid1: TcxGrid;
    cxGridHastaGelis: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGridHastaGelissablonAdi: TcxGridDBColumn;
    cxGridHastaGelisdoktor: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ilacKodu: TcxGridDBColumn;
    cxGridDBTableView1ilacAdi: TcxGridDBColumn;
    cxGridDBTableView1kullanimZaman: TcxGridDBColumn;
    cxGridDBTableView1kullanimAdet: TcxGridDBColumn;
    cxGridDBTableView1kullanZamanUnit: TcxGridDBColumn;
    cxGridDBTableView1kullanimAdet2: TcxGridDBColumn;
    cxGridDBTableView1adet: TcxGridDBColumn;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView4taniKodu: TcxGridDBColumn;
    cxGridDBTableView4tani: TcxGridDBColumn;
    BtnIlacEkle: TcxButtonKadir;
    cxButtonKadirTaniSil: TcxButtonKadir;
    cxButtonKadirTaniEkle: TcxButtonKadir;
    cxButtonKadirTanisil1: TcxButtonKadir;
    E1: TMenuItem;
    cxDBMemo1: TcxDBMemo;
    List: TListeAc;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    DataSource3: TDataSource;
    SablonAciklama: TADOTable;
    cxGroupBox6: TcxGroupBox;
    btnAckKaydet: TcxButton;
    R1: TMenuItem;
    procedure btnSendClick(Sender: TObject);
    procedure TabloAc(doktor : string);
    procedure FormCreate(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure BtnIlacEkleClick(Sender: TObject);
    procedure cxButtonKadirTaniEkleClick(Sender: TObject);
    procedure cxButtonKadirTaniSilClick(Sender: TObject);
    procedure Sablontaniekle;
    procedure btnAckKaydetClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRaporSablon: TfrmRaporSablon;

implementation
  uses data_modul, IlacSarfListesi,hastarecete, AnaUnit;

{$R *.dfm}

procedure TfrmRaporSablon.TabloAc(doktor : string);
begin
 // Sablonlar.Filter := 'doktor = ' + QuotedStr(doktor);
  Sablonlar.Active := true;
  SablonDetay.Active := true;
  Tani.Active := true;
  SablonAciklama.Active := True;

end;

procedure TfrmRaporSablon.BtnIlacEkleClick(Sender: TObject);
var
  sql : string;
 _List_ : ArrayListeSecimler;
begin
  inherited;

  if TcxButton(sender).Tag = 3
  then begin
    List.Kolonlar.Clear;
    List.KolonBasliklari.Clear;
    List.Table := 'ilac_Teshis_Kodlarý';
    List.Kolonlar.Add('teshiskodu');
    List.Kolonlar.Add('adi');
    List.Kolonlar.Add('taniKodu');
    List.Kolonlar.Add('taniAdi');
    List.KolonBasliklari.Add('T.Kodu');
    List.KolonBasliklari.Add('T.Adý');
    List.KolonBasliklari.Add('Taný.Kodu');
    List.KolonBasliklari.Add('Tani Adi');
    List.TColcount := 4;
    List.TColsW := '60,200,60,200';
    List.ListeBaslik := 'Teþhis Kodlarý';
    List.Grup := True;
    List.GrupCol := 1;
    _List_ := List.ListeGetir;
    if length(_List_) > 0
    Then BEgin
       sql := 'insert into IlacRaporTeshislerSablon(SablonId,teshisKodu,ICD10Kodu) ' +
                         'values( ' + Sablonlar.FieldByName('id').AsString + ',' +
                                      QuotedStr(_List_[0].kolon1) + ',' +
                                      QuotedStr(_List_[0].kolon3) + ')';
       datalar.QueryExec(sql);

       Tani.Active := False;
       Tani.Active := True;

    End;

  end;


  if TcxButton(sender).Tag = 1
  then begin
    List.Kolonlar.Clear;
    List.KolonBasliklari.Clear;
    List.Table := 'EtkinMaddeler';
    List.Kolonlar.Add('ETKIN_MADDE_KODU');
    List.Kolonlar.Add('ETKIN_MADDE_ADI');
    List.Kolonlar.Add('FORM');

    List.KolonBasliklari.Add('E.Madde Kodu');
    List.KolonBasliklari.Add('E.Madde Adý');
    List.KolonBasliklari.Add('Form');

    List.TColcount := 3;
    List.TColsW := '60,200,100';
    List.ListeBaslik := 'Etkin Madde Kodlarý';

    _List_ := List.ListeGetir;
    if length(_List_) > 0
    Then BEgin
       sql := 'insert into IlacRaporEtkenMaddelerSablon(SablonId,etkenMaddeKodu,etkenMaddeAdi) ' +
                         'values( ' + Sablonlar.FieldByName('id').AsString + ',' +
                                      QuotedStr(_List_[0].kolon1) + ',' +
                                      QuotedStr(_List_[0].kolon2) + ')';
       datalar.QueryExec(sql);

       SablonDetay.Active := False;
       SablonDetay.Active := True;

    End;
  end;
end;

procedure TfrmRaporSablon.btnSendClick(Sender: TObject);
begin
  Sablonlar.Active := false;
  SablonDetay.Active := false;
  Tani.Active := false;
  close;
end;

procedure TfrmRaporSablon.btnAckKaydetClick(Sender: TObject);
begin
  inherited;
  SablonAciklama.Post;
end;

procedure TfrmRaporSablon.cxButtonKadirTaniEkleClick(Sender: TObject);
begin
  inherited;
  case TcxButtonKadir(Sender).Tag of
   0 : begin
   sablonTaniEkle;
   end;
   4 :if MrYes = ShowMessageSkin('Teþhis Þablondan Çýkartýlýyor Emin misiniz ?','','','msg')
     Then Begin
       Tani.Delete;
     End;
  end;
 Tani.Active := False;
 Tani.Active := True;
end;

procedure TfrmRaporSablon.cxButtonKadirTaniSilClick(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin
  inherited;

   if MrYes = ShowMessageSkin('Etken Madde Þablondan Çýkartýlýyor Emin misiniz ?','','','msg')
     Then Begin
        ado := TADOQuery.Create(nil);
        try
          sql := 'delete from IlacRaporEtkenMaddelerSablon where id = ' + SABLONDETAY.fieldbyname('id').AsString;
          datalar.QueryExec(ado,sql);
          SABLONDETAY.Active := false;
          SABLONDETAY.Active := True;
        finally
          ado.Free;
        end;
     End;

end;



procedure TfrmRaporSablon.FormCreate(Sender: TObject);
var
doktorlar , pBirim :TcxImageComboKadir;
begin
  inherited;
  cxPanel.Visible := false;
  SayfaCaption('','','','','');
  Olustur(self,'','Rapor Þablonlarý',23);
  Menu := PopupMenu1;

    pBirim := TcxImageComboKadir.Create(nil);
    pBirim.Conn := Datalar.ADOConnection2;
    pBirim.TableName := 'Medula_PeryotBirimleri';
    pBirim.ValueField := 'Kod';
    pBirim.DisplayField := 'Tanimi';
    pBirim.BosOlamaz := False;
    pBirim.Filter := '';


    doktorlar := TcxImageComboKadir.Create(nil);
    doktorlar.Conn := Datalar.ADOConnection2;
    doktorlar.TableName := 'doktorlarT';
    doktorlar.ValueField := 'Kod';
    doktorlar.DisplayField := 'Tanimi';
    doktorlar.BosOlamaz := False;
    doktorlar.Filter := ' durum = ''Aktif''';

  Sablonlar.Active := true;
  SablonDetay.Active := true;
  Tani.Active := true;
  SablonAciklama.Active := True;
  cxGridHastaGelisdoktor.Properties := doktorlar.Properties;
  cxGridDBTableView1kullanZamanUnit.Properties := pBirim.Properties;

end;

procedure TfrmRaporSablon.S1Click(Sender: TObject);
var
  sql : string;
  ado : TADOQuery;
begin

  case TMenuItem(sender).Tag of
   -1 : begin
          if MrYes = ShowMessageSkin('Þablon Ýptal Ediliyor Emin misiniz ?','','','msg')
          Then Begin
            try
              datalar.ADOConnection2.BeginTrans;
              ado := TADOQuery.Create(nil);
              try
                sql := 'delete from IlacRaporTeshislerSablon where SablonId = ' + Sablonlar.fieldbyname('Id').AsString;
                datalar.QueryExec(ado,sql);
                sql := 'delete from IlacRaporAciklamaSablon where SablonId = ' + Sablonlar.fieldbyname('Id').AsString;
                datalar.QueryExec(ado,sql);
                sql := 'delete from IlacRaporEtkenMaddelerSablon where sablonId = ' + Sablonlar.fieldbyname('Id').AsString;
                datalar.QueryExec(ado,sql);
                Sablonlar.Delete;
                datalar.ADOConnection2.CommitTrans;
                ShowMessageSkin('Þablon Ýptal Edildi','','','info');
              finally
                    ado.Free;
              end;
            except on e : exception do
              begin
                datalar.ADOConnection2.RollbackTrans;
                ShowMessageSkin('Hata',e.Message,'','info');
              end;
            end;
          End;
   end;
  -2 : begin
           if _ResourceID <> ''
           then begin
                 datalar.ADOConnection2.BeginTrans;
                 try
                     Tani.First;
                     while not Tani.Eof do
                     Begin
                       datalar.QueryExec('insert into IlacRaporTeshisler(RaporSira,teshiskodu,ICD10Kodu) ' +
                                         'values(' + _ResourceID + ','
                                                   + QuotedStr(Tani.FieldByName('teshisKodu').AsString) + ','
                                                   + QuotedStr(Tani.FieldByName('ICD10Kodu').AsString) + ')');

                       Tani.Next;
                     End;

                     SablonDetay.First;
                     while not SablonDetay.Eof do
                     Begin

                       datalar.QueryExec('insert into IlacRaporEtkenMaddeler(RaporSira,etkenMaddeKodu,etkenMaddeAdi,kullanimDoz1,kullanimDoz2,kullanimDozBirim,kullanimPeriyot,kullanimPeriyotBirim) ' +
                                         'values(' + _ResourceID + ','
                                                   + QuotedStr(SablonDetay.FieldByName('etkenMaddeKodu').AsString) + ','
                                                   + QuotedStr(SablonDetay.FieldByName('etkenMaddeAdi').AsString) + ','
                                                   + QuotedStr(SablonDetay.FieldByName('kullanimDoz1').AsString) + ','
                                                   + QuotedStr(SablonDetay.FieldByName('kullanimDoz2').AsString) + ','
                                                   + QuotedStr(SablonDetay.FieldByName('kullanimDozBirim').AsString) + ','
                                                   + QuotedStr(SablonDetay.FieldByName('kullanimPeriyot').AsString) + ','
                                                   + QuotedStr(SablonDetay.FieldByName('kullanimPeriyotBirim').AsString) + ')'
                                                   );

                       SablonDetay.Next;
                     End;

                     SablonAciklama.First;
                     datalar.QueryExec('Update Raporlar set Aciklama = ' + QuotedStr(SablonAciklama.FieldByName('aciklama').AsString) +
                                       ' where sira = ' + _ResourceID);
                     datalar.ADOConnection2.CommitTrans;
                 except on e : Exception do
                   begin
                    datalar.ADOConnection2.RollbackTrans;
                    ShowMessageSkin(e.Message,'','','info');
                   end;
                 end;
           end;

       end;

  end;



end;

 procedure TfrmRaporSablon.Sablontaniekle;
var
  List : ArrayListeSecimler;
  I : integer;
  sql, id : string;
  ado : TADOQuery;
begin
   frmHastarecete.TaniListe.Where := ifThen(frmHastarecete.cxChkSIK.Checked,'Sikkullan > 0','');
   frmHastarecete.TaniListe.SkinName := AnaForm.dxSkinController1.SkinName;
   frmHastarecete.TaniListe.SiralamaKolonu := ifThen(frmHastarecete.cxChkSIK.Checked,'Sikkullan Desc,TANI','TANI');
   List := frmHastarecete.TaniListe.ListeGetir;

 id := SABLONLAR.FieldByName('id').AsString;

//   if frmhastarecete.sender is TcxButtonKadir.tag=1515 then ShowMessageSkin('Þablon Kayýt Edildi','','','info');

   for I := 0 to length(List) - 1 do
   begin
    try
       if not Tani.Locate('recetesablonId;taniKodu',VarArrayOf([id, List[I].kolon1]),[])
       then begin
         Tani.Append;
         Tani.FieldByName('taniKodu').AsString := List[I].kolon1;
         Tani.FieldByName('tani').AsString := List[I].kolon2;
         Tani.post;
       end;
    except
     exit;
    end;
   end;
end;

end.
