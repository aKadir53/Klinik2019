unit SKSKriterTanim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinscxPCPainter,GirisUnit,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,kadir,kadirType,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Data.Win.ADODB,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, cxDropDownEdit,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters,
  KadirLabel,data_modul, cxTextEdit, Vcl.Menus;

type
  TfrmSKSKriter = class(TGirisForm)
    Grid_Sks_Tanim: TcxGridKadir;
    Grid_Sks_TanimDBTableView1: TcxGridDBTableView;
    Grid_Sks_TanimLevel1: TcxGridLevel;
    Grid_Sks_TanimDBTableView1sira: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1TetkikKod: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1TetkikAdi: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Ref1: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Ref2: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Ref3: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Ref4: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Tip: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1RefTip: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Column1: TcxGridDBColumn;
    Grid_Sks_TanimDBTableView1Column2: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    G1: TMenuItem;
    S1: TMenuItem;
    Grid_Sks_TanimDBTableView1Column3: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grid_Sks_TanimDBTableView1NavigatorButtonsButtonClick(
      Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure G1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);virtual;
    procedure S1Click(Sender: TObject);
  //  procedure AfterDelete(DataSet: TDataSet);
    procedure BeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

const formGenislik = 700;
      formYukseklik = 600;

var
  frmSKSKriter: TfrmSKSKriter;

implementation

{$R *.dfm}

procedure TfrmSKSKriter.BeforeDelete(DataSet: TDataSet);
begin
  (*
   datalar.QueryExec(
   'delete SKS_istatistik_Tanim_Tablosu_Hedef ' +
   'where TetkikKod =' + QuotedStr(Grid_Sks_Tanim.Dataset.FieldByName('TetkikKod').AsString) +
   ' and sira = ' + Grid_Sks_Tanim.Dataset.FieldByName('sira').AsString);
   *)
end;

procedure TfrmSKSKriter.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Grid_Sks_Tanim.Dataset.Active := False;
end;


procedure TfrmSKSKriter.FormCreate(Sender: TObject);
var
 i , yil : integer;
begin

  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
  Menu := PopupMenu1;

  SayfaCaption('Kartlar','','','','');

  setDataStringC(self,'txtYil','Hedef Deðer Yil',Kolon1,'',70,'');
  setDataStringKontrol(self,Grid_Sks_Tanim ,'Grid_Sks_Tanim','',Kolon1,'',sayfa1.Width-20,sayfa1.Height-20);


  TcxComboBox(FindComponent('txtYil')).Properties.Items.Clear;
  yil := CurrentYear;
  for i := 0 to 5 do
  begin
     TcxComboBox(FindComponent('txtYil')).properties.Items.Add(intToStr(yil-i));
  end;
  TcxComboBox(FindComponent('txtYil')).Text :=  copy(FormatDateTime('YYYYMMDD',date),1,4);

  TcxComboBox(FindComponent('txtYil')).Properties.OnEditValueChanged := PropertiesEditValueChanged;

  Grid_Sks_Tanim.Dataset.BeforeDelete := BeforeDelete;


  Grid_Sks_Tanim.Dataset.Active := False;
  Grid_Sks_Tanim.Dataset.Connection := datalar.ADOConnection2;
  Grid_Sks_Tanim.Dataset.SQL.Text := 'select T.sira,T.TetkikKod,h.TetkikAdi,Tip,RefTip,h.Operator,Operator2,h.Hedef,  ' +
    ' h.gostergeKodu,h.tanimi,h.amac,h.formul,h.altGosterge,h.HedefTanimi,peryot,sorumlular,paylasilacakKisiler,dikkatedilecekhususlar,veriKaynak ' +
    ' from SKS_istatistik_Tanim_Tablosu T' +
    ' join SKS_istatistik_Tanim_Tablosu_Hedef H on T.TetkikKod = H.TetkikKod and H.yil = ' +  TcxComboBox(FindComponent('txtYil')).Text + ' and T.sira = H.sira' +
    ' where yil = ' + TcxComboBox(FindComponent('txtYil')).Text + ' and H.sirketKod = ' + QuotedStr(datalar.AktifSirket) +
    ' order by T.sira ';

  datalar.QuerySelect(Grid_Sks_Tanim.Dataset,Grid_Sks_Tanim.Dataset.SQL.Text);
  //Grid_Sks_Tanim.Dataset.Active := True;

  if Grid_Sks_Tanim.Dataset.Eof
  then begin
     datalar.QueryExec(
     'insert into SKS_istatistik_Tanim_Tablosu_Hedef (sira,TetkikKod,TetkikAdi,Operator,hedef,yil,gostergeKodu,formul,sirketKod)' +
     'select T.sira,T.TetkikKod,h.TetkikAdi,H.Operator,H.Hedef,' + TcxComboBox(FindComponent('txtYil')).Text + ',h.gostergeKodu,h.formul ,' + QuotedStr(datalar.AktifSirket) +
        ' from SKS_istatistik_Tanim_Tablosu T' +
        ' join SKS_istatistik_Tanim_Tablosu_Hedef H on T.TetkikKod = H.TetkikKod and H.yil = ' + TcxComboBox(FindComponent('txtYil')).Text + ' and T.sira = H.sira' +
        ' where h.yil = ' + intTostr(strToint(TcxComboBox(FindComponent('txtYil')).Text)-1) + ' and H.sirketKod = ' + QuotedStr(datalar.AktifSirket));

      Grid_Sks_Tanim.Dataset.SQL.Text := 'select T.sira,T.TetkikKod,h.TetkikAdi,Tip,RefTip,h.Operator,Operator2,h.Hedef,  ' +
        ' h.gostergeKodu,h.tanimi,h.amac,h.formul,h.altGosterge,h.HedefTanimi,peryot,sorumlular,paylasilacakKisiler,dikkatedilecekhususlar,veriKaynak ' +
        ' from SKS_istatistik_Tanim_Tablosu T' +
        ' join SKS_istatistik_Tanim_Tablosu_Hedef H on T.TetkikKod = H.TetkikKod and H.yil = ' +  TcxComboBox(FindComponent('txtYil')).Text + ' and T.sira = H.sira' +
        ' where yil = ' + TcxComboBox(FindComponent('txtYil')).Text + ' and H.sirketKod = ' + QuotedStr(datalar.AktifSirket) +
        ' order by T.sira ';
     datalar.QuerySelect(Grid_Sks_Tanim.Dataset,Grid_Sks_Tanim.Dataset.SQL.Text);
     //Grid_Sks_Tanim.Dataset.Active := True;

  end;

  Kolon2.Visible := False;
  Kolon3.Visible := False;
  Kolon4.Visible := False;

  cxPanel.Visible := False;
end;

procedure TfrmSKSKriter.FormShow(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmSKSKriter.G1Click(Sender: TObject);
var
  TopluDataset : TDataSetKadir;
begin
  try
    TopluDataset.Dataset1 := Grid_Sks_Tanim.Dataset;
    TopluDataset.Dataset2 := datalar.ADO_AktifSirket;
    TopluDataset.Dataset3 := datalar.ADO_aktifSirketLogo;
    PrintYap('IGK','Ýndikatör Taným Kartý','',TopluDataset,pTNone)
  finally
  end;
end;

procedure TfrmSKSKriter.Grid_Sks_TanimDBTableView1NavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  //inherited;

  case AButtonIndex of
   6 : begin
          datalar.SKSKriter.TetkikKod := '';
          datalar.SKSKriter.Tanimi := '';
          datalar.SKSKriter.Sira := '';
          if mrYes = ShowPopupForm('Kriter Ekle',yeniSKSKriter)
          then begin
             datalar.ADOConnection2.BeginTrans;
             Try
               datalar.QueryExec(
               'insert into SKS_istatistik_Tanim_Tablosu (TetkikKod,TetkikAdi,sira,Operator,Tip,refTip)' +
               'values(' + QuotedStr(datalar.SKSKriter.TetkikKod) + ',' +
                           QuotedStr(datalar.SKSKriter.Tanimi) + ',' +
                           datalar.SKSKriter.sira + ',' +
                           QuotedStr(datalar.SKSKriter.KriterOperator) + ',' +
                           QuotedStr(datalar.SKSKriter.Tip) + ',' +
                           QuotedStr(datalar.SKSKriter.refTip)  +
                           ')' );


               datalar.QueryExec(
               'insert into SKS_istatistik_Tanim_Tablosu_Hedef (TetkikKod,Yil,sira,TetkikAdi,sirketKod,Operator)' +
               'values(' + QuotedStr(datalar.SKSKriter.TetkikKod) + ',' +
                           TcxComboBox(FindComponent('txtYil')).Text + ',' +
                           datalar.SKSKriter.sira + ',' +
                           QuotedStr(datalar.SKSKriter.Tanimi) + ',' +
                           QuotedStr(datalar.AktifSirket) + ',' +
                           QuotedStr(datalar.SKSKriter.KriterOperator) +
                           ')');


               datalar.ADOConnection2.CommitTrans;

              Grid_Sks_Tanim.Dataset.SQL.Text := 'select T.sira,T.TetkikKod,h.TetkikAdi,Tip,RefTip,h.Operator,Operator2,h.Hedef,  ' +
                ' h.gostergeKodu,h.tanimi,h.amac,h.formul,h.altGosterge,h.HedefTanimi,peryot,sorumlular,paylasilacakKisiler,dikkatedilecekhususlar,veriKaynak ' +
                ' from SKS_istatistik_Tanim_Tablosu T' +
                ' join SKS_istatistik_Tanim_Tablosu_Hedef H on T.TetkikKod = H.TetkikKod and H.yil = ' +  TcxComboBox(FindComponent('txtYil')).Text + ' and T.sira = H.sira' +
                ' where yil = ' + TcxComboBox(FindComponent('txtYil')).Text +  ' and H.sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                ' order by T.sira ';
                datalar.QuerySelect(Grid_Sks_Tanim.Dataset,Grid_Sks_Tanim.Dataset.SQL.Text);
                //Grid_Sks_Tanim.Dataset.Active := True;


             except on e:exception do
               begin
                datalar.ADOConnection2.RollbackTrans;
                ShowMessage(e.Message,'','','info');
               end;
             End;

          end;

       end;

   8 : begin
               ADone := True;
               if mrYES = ShowMessageSkin('Kart Silinecek Eminmisiniz','','','msg')  then
               begin
                 datalar.QueryExec(
                 'delete SKS_istatistik_Tanim_Tablosu_Hedef ' +
                 'where TetkikKod =' + QuotedStr(Grid_Sks_Tanim.Dataset.FieldByName('TetkikKod').AsString) +
                 ' and sira = ' + Grid_Sks_Tanim.Dataset.FieldByName('sira').AsString +
                 ' and Yil = ' + TcxComboBox(FindComponent('txtYil')).Text);

                 datalar.QueryExec(
                 'delete SKS_istatistik_Tanim_Tablosu ' +
                 'where TetkikKod =' + QuotedStr(Grid_Sks_Tanim.Dataset.FieldByName('TetkikKod').AsString) +
                 ' and sira = ' + Grid_Sks_Tanim.Dataset.FieldByName('sira').AsString);

                 Grid_Sks_Tanim.Dataset.Requery();

               end;

       end;

   9 : begin
       datalar.IndikatorTanim.gostergeKodu := Grid_Sks_Tanim.Dataset.FieldByName('gostergeKodu').AsString;
       datalar.IndikatorTanim.tanimi := Grid_Sks_Tanim.Dataset.FieldByName('tanimi').AsString;
       datalar.IndikatorTanim.amac := Grid_Sks_Tanim.Dataset.FieldByName('amac').AsString;
       datalar.IndikatorTanim.formul := Grid_Sks_Tanim.Dataset.FieldByName('formul').AsString;
       datalar.IndikatorTanim.altGosterge := Grid_Sks_Tanim.Dataset.FieldByName('altGosterge').AsString;
       datalar.IndikatorTanim.peryot := Grid_Sks_Tanim.Dataset.FieldByName('peryot').AsString;
       datalar.IndikatorTanim.veriKaynak := Grid_Sks_Tanim.Dataset.FieldByName('veriKaynak').AsString;
       datalar.IndikatorTanim.sorumlular := Grid_Sks_Tanim.Dataset.FieldByName('sorumlular').AsString;
       datalar.IndikatorTanim.paylasilacakKisiler := Grid_Sks_Tanim.Dataset.FieldByName('paylasilacakKisiler').AsString;
       datalar.IndikatorTanim.dikkatedilecekhususlar := Grid_Sks_Tanim.Dataset.FieldByName('dikkatedilecekhususlar').AsString;
       datalar.IndikatorTanim.HedefTanimi := Grid_Sks_Tanim.Dataset.FieldByName('HedefTanimi').AsString;
       datalar.IndikatorTanim.sira := Grid_Sks_Tanim.Dataset.FieldByName('sira').AsString;
       datalar.IndikatorTanim.tip := Grid_Sks_Tanim.Dataset.FieldByName('tip').AsString;
       datalar.IndikatorTanim.refTip := Grid_Sks_Tanim.Dataset.FieldByName('refTip').AsString;
       datalar.SKSKriter.Tanimi := Grid_Sks_Tanim.Dataset.FieldByName('TetkikAdi').AsString;
       datalar.IndikatorTanim.KriterOperator := Grid_Sks_Tanim.Dataset.FieldByName('Operator').AsString;
       datalar.IndikatorTanim.Hedef := Grid_Sks_Tanim.Dataset.FieldByName('Hedef').AsString;


       if mrYEs = ShowPopupForm('Ýndikator Taným Kartý('+Grid_Sks_Tanim.Dataset.FieldByName('TetkikAdi').AsString+')',indikatorKart,'','')
       then begin
           datalar.QueryExec('update SKS_istatistik_Tanim_Tablosu set ' +
                           //  'gostergeKodu = ' + QuotedStr(datalar.IndikatorTanim.gostergeKodu) +
                          //   ',tanimi = ' + QuotedStr(datalar.IndikatorTanim.tanimi) +
                          //   ',amac = ' +  QuotedStr(datalar.IndikatorTanim.amac) +
                          //   ',formul = ' + QuotedStr(datalar.IndikatorTanim.formul) +
                         //    ',altGosterge = ' +  QuotedStr(datalar.IndikatorTanim.altGosterge) +
                        //     ',HedefTanimi = ' +  QuotedStr(datalar.IndikatorTanim.HedefTanimi) +
                             'peryot = ' +  QuotedStr(datalar.IndikatorTanim.peryot) +
                             ',sorumlular = ' +  QuotedStr(datalar.IndikatorTanim.sorumlular) +
                             ',paylasilacakKisiler = ' + QuotedStr(datalar.IndikatorTanim.paylasilacakKisiler) +
                             ',dikkatedilecekhususlar = ' + QuotedStr(datalar.IndikatorTanim.dikkatedilecekhususlar) +
                             ',veriKaynak = ' + QuotedStr(datalar.IndikatorTanim.veriKaynak) +
                             ',sira = ' + QuotedStr(datalar.IndikatorTanim.sira) +
                             ',tip = ' + QuotedStr(datalar.IndikatorTanim.tip) +
                             ',refTip = ' + QuotedStr(datalar.IndikatorTanim.refTip) +
                             ',TetkikAdi = ' + QuotedStr(datalar.SKSKriter.Tanimi) +
                             ' where sira = ' + Grid_Sks_Tanim.Dataset.FieldByName('sira').AsString);


            datalar.QueryExec('update SKS_istatistik_Tanim_Tablosu_Hedef set ' +
                              ' sira = ' + QuotedStr(datalar.IndikatorTanim.sira) +
                              ' where sira = ' + Grid_Sks_Tanim.Dataset.FieldByName('sira').AsString);

            datalar.QueryExec('update SKS_istatistik_Tanim_Tablosu_Hedef set ' +
                             'gostergeKodu = ' + QuotedStr(datalar.IndikatorTanim.gostergeKodu) +
                             ',tanimi = ' + QuotedStr(datalar.IndikatorTanim.tanimi) +
                             ',amac = ' +  QuotedStr(datalar.IndikatorTanim.amac) +
                             ',formul = ' + QuotedStr(datalar.IndikatorTanim.formul) +
                             ',altGosterge = ' +  QuotedStr(datalar.IndikatorTanim.altGosterge) +
                             ',HedefTanimi = ' +  QuotedStr(datalar.IndikatorTanim.HedefTanimi) +
                          //   ',peryot = ' +  QuotedStr(datalar.IndikatorTanim.peryot) +
                          //   ',sorumlular = ' +  QuotedStr(datalar.IndikatorTanim.sorumlular) +
                          //   ',paylasilacakKisiler = ' + QuotedStr(datalar.IndikatorTanim.paylasilacakKisiler) +
                          //   ',dikkatedilecekhususlar = ' + QuotedStr(datalar.IndikatorTanim.dikkatedilecekhususlar) +
                         //    ',veriKaynak = ' + QuotedStr(datalar.IndikatorTanim.veriKaynak) +
                         //    ',sira = ' + QuotedStr(datalar.IndikatorTanim.sira) +
                              ',Hedef = ' + QuotedStr(datalar.IndikatorTanim.Hedef) +
                              ',Operator = ' +  QuotedStr(datalar.IndikatorTanim.KriterOperator) +
                              ',TetkikAdi = ' + QuotedStr(datalar.SKSKriter.Tanimi) +
                              ' where sira = ' + Grid_Sks_Tanim.Dataset.FieldByName('sira').AsString +
                              ' and yil = ' + TcxComboBox(FindComponent('txtYil')).Text +
                              ' and sirketKod = ' + QuotedStr(datalar.AktifSirket));



          Grid_Sks_Tanim.Dataset.Requery();


       end;
   end;


   end;







end;

function TfrmSKSKriter.Init(Sender: TObject): Boolean;
begin
  Result := True;
  if not inherited Init(Sender) then exit;

end;

procedure TfrmSKSKriter.PropertiesEditValueChanged(Sender: TObject);
begin
 //
  Grid_Sks_Tanim.Dataset.Active := False;
  Grid_Sks_Tanim.Dataset.Connection := datalar.ADOConnection2;
  Grid_Sks_Tanim.Dataset.SQL.Text := 'select T.sira,T.TetkikKod,h.TetkikAdi,Tip,RefTip,h.Operator,Operator2,h.Hedef,  ' +
    ' h.gostergeKodu,h.tanimi,h.amac,h.formul,h.altGosterge,h.HedefTanimi,peryot,sorumlular,paylasilacakKisiler,dikkatedilecekhususlar,veriKaynak ' +
    ' from SKS_istatistik_Tanim_Tablosu T' +
    ' join SKS_istatistik_Tanim_Tablosu_Hedef H on T.TetkikKod = H.TetkikKod and H.yil = ' +  TcxComboBox(FindComponent('txtYil')).Text + ' and T.sira = H.sira' +
    ' where yil = ' + TcxComboBox(FindComponent('txtYil')).Text + ' and H.sirketKod = ' + QuotedStr(datalar.AktifSirket) +
    ' order by T.sira ';
  datalar.QuerySelect(Grid_Sks_Tanim.Dataset,Grid_Sks_Tanim.Dataset.SQL.Text);
  //Grid_Sks_Tanim.Dataset.Active := True;


  if Grid_Sks_Tanim.Dataset.Eof
  then begin
     datalar.QueryExec(
     'insert into SKS_istatistik_Tanim_Tablosu_Hedef (sira,TetkikKod,TetkikAdi,Operator,hedef,yil,gostergeKodu,formul,sirketKod)' +
     'select T.sira,T.TetkikKod,h.TetkikAdi,H.Operator,H.Hedef,' + TcxComboBox(FindComponent('txtYil')).Text + ',h.gostergeKodu,h.formul, ' +  QuotedStr(datalar.AktifSirket) +
        ' from SKS_istatistik_Tanim_Tablosu T' +
        ' join SKS_istatistik_Tanim_Tablosu_Hedef H on T.TetkikKod = H.TetkikKod and H.yil = ' +TcxComboBox(FindComponent('txtYil')).Text + '  and T.sira = H.sira' +
        ' where h.yil = ' + intTostr(strToint(TcxComboBox(FindComponent('txtYil')).Text)-1) + ' and H.sirketKod = ' + QuotedStr(datalar.AktifSirket) );


      Grid_Sks_Tanim.Dataset.SQL.Text := 'select T.sira,T.TetkikKod,h.TetkikAdi,Tip,RefTip,h.Operator,Operator2,h.Hedef,  ' +
        ' h.gostergeKodu,h.tanimi,h.amac,h.formul,h.altGosterge,h.HedefTanimi,peryot,sorumlular,paylasilacakKisiler,dikkatedilecekhususlar,veriKaynak ' +
        ' from SKS_istatistik_Tanim_Tablosu T' +
        ' join SKS_istatistik_Tanim_Tablosu_Hedef H on T.TetkikKod = H.TetkikKod and H.yil = ' +  TcxComboBox(FindComponent('txtYil')).Text + ' and T.sira = H.sira' +
        ' where yil = ' + TcxComboBox(FindComponent('txtYil')).Text + ' and H.sirketKod = ' + QuotedStr(datalar.AktifSirket) +
        ' order by T.sira ';
       datalar.QuerySelect(Grid_Sks_Tanim.Dataset,Grid_Sks_Tanim.Dataset.SQL.Text);
    // Grid_Sks_Tanim.Dataset.Active := True;

  end;

end;

procedure TfrmSKSKriter.S1Click(Sender: TObject);
var
  TopluDataset : TDataSetKadir;
begin

    if mrYes = ShowPopupForm('Hedef Tablo',SKSKriterHedefTablo)
    then begin

    end;

 (*
  try
    TopluDataset.Dataset1 := datalar.QuerySelect('exec sp_SKSKriterHedefTablo');
    TopluDataset.Dataset2 := datalar.ADO_AktifSirket;
    TopluDataset.Dataset3 := datalar.ADO_aktifSirketLogo;
    PrintYap('SKSHT','SKS Kriter Hedef Tablo','',TopluDataset,pTNone)
  finally
  end;
  *)


end;

end.
