unit KurumLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  Mask, EditType, ExtCtrls, kadir,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, dxSkinsCore,
  cxButtons, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, Data.Win.ADODB, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxGridLevel, cxGrid, KadirLabel,data_modul,GirisUnit, cxTextEdit,
  cxDropDownEdit,GetFormClass,KadirType,cxImageComboBox;


type
  TfrmKurumBilgi = class(TGirisForm)
    cxGridKadir1Level1: TcxGridLevel;
    cxGridKadir1: TcxGridKadir;
    GridList: TcxGridDBBandedTableView;
    DataSource1: TDataSource;
    ADO_WebServisErisim: TADOQuery;
    GridListSLK: TcxGridDBBandedColumn;
    GridListid: TcxGridDBBandedColumn;
    GridListSLK_Tanimi: TcxGridDBBandedColumn;
    GridListSLB: TcxGridDBBandedColumn;
    GridListSLB_Tanimi: TcxGridDBBandedColumn;
    GridListValue: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    HastaKabulifreBilgileriniDeitir1: TMenuItem;
    DnemSonlandrmaifremiDei1: TMenuItem;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxGridKadir2: TcxGridKadir;
    GridListOratk: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    GridListOrtakSLB_Tanimi: TcxGridDBBandedColumn;
    GridListOrtakValue: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    DataSource2: TDataSource;
    ADO_WebServisErisim_Ortak: TADOQuery;
    procedure sBitBtn1Click(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
    procedure SifreBilgisiDegis(Tag : integer);
    procedure ADO_WebServisErisimAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     SLK : string;
    function Init(Sender: TObject) : Boolean; override;
  end;

const
      ServisSirket =
        'select WF.id,WF.Value,W.Erisim_Tanimi,W.SLK,W.SLB,W.Sira,W.SLB_Tanimi,W.ValueTip,W.ValueObje,W.ValueObjeValues '+
        'from WebServisErisimBilgileri_Firma WF ' +
        'join WebServisErisimBilgileri W on W.id = WF.id ' +
        'where WF.sirketKod =:@sirketKod and W.SLK like :@SLK ' +
        'order by Sira ';
      ServisOrtak =
        'select id,Value,Erisim_Tanimi,SLK,SLB,Sira,SLB_Tanimi,ValueTip,ValueObje,ValueObjeValues ' +
        ' from WebServisErisimBilgileri ' +
        ' where Ozel = ''O''';

var
  frmKurumBilgi: TfrmKurumBilgi;
  mevcutSifre,mevcutSifreD : string;

implementation
  uses MedulaKurumSifreDegis;
{$R *.dfm}

procedure TfrmKurumBilgi.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;


  cxGridKadir1.Parent := sayfa1;
  cxGridKadir1.Align := alClient;
  cxGridKadir2.Parent := sayfa2;
  cxGridKadir2.Align := alClient;
  SayfaCaption('Firma Parametreleri','Ortak Parametreler','','','');
end;

function TfrmKurumBilgi.Init(Sender : TObject) : Boolean;
var
  sql : string;
begin
  SLK := _kod_;


  case Tag of
    TagfrmKurumBilgi ,TagfrmParametreler
       : begin
            sql := 'insert into WebServisErisimBilgileri_Firma (id,sirketKod,value) ' +
                   ' select W.id,' + QuotedStr(datalar.AktifSirket) + ',W.value from WebServisErisimBilgileri W ' +
                   ' left join WebServisErisimBilgileri_Firma WF on W.id = WF.id and WF.sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                   ' where WF.id is null and Ozel is null';
            datalar.QueryExec(sql);

            ADO_WebServisErisim.close;
            ADO_WebServisErisim.SQL.Text := ServisSirket;
            ADO_WebServisErisim.Parameters[0].Value := datalar.AktifSirket;
            ADO_WebServisErisim.Parameters[1].Value := '%'+ SLK +'%';
            ADO_WebServisErisim.Active := True;

            ADO_WebServisErisim_Ortak.close;
            ADO_WebServisErisim_Ortak.SQL.Text := ServisOrtak;
            ADO_WebServisErisim_Ortak.Active := True;
            Datalar.ServisErisimBilgileriOrtak.LoadFromDataSet(ADO_WebServisErisim_Ortak);
       end;
     (*
    TagfrmParametreler
       : begin
            ADO_WebServisErisim.close;
            ADO_WebServisErisim.SQL.Text := ServisOrtak;
            ADO_WebServisErisim.Active := True;
            Datalar.ServisErisimBilgileriOrtak.LoadFromDataSet(ADO_WebServisErisim);
         end;*)
  end;

  GridList.ViewData.Expand(true);
  GridListOratk.ViewData.Expand(true);

  cxTab.Tabs[0].Caption := datalar.AktifSirketAdi;

  Result := True;
end;

procedure TfrmKurumBilgi.ADO_WebServisErisimAfterPost(DataSet: TDataSet);
begin
  inherited;
 // datalar.login;
end;

procedure TfrmKurumBilgi.ADO_WebServisErisimAfterScroll(DataSet: TDataSet);
var
  ValueCombo,ValueObjeValues : String;
  ValuesCombo : TStringList;
  i,colswidth : integer;
  Columns,Baslik,Tips,Edits,IC_Params,IC_Param : TstringList;
  FItem : TcxImageComboBoxItem;
  ado : TADOQuery;
  field1,field2,table,MaskEdit,filter , colName : string;
  Grid : TcxGridDBBandedTableView;
  Col : TcxGridDBBandedColumn;
begin
  if Dataset.Name  = 'ADO_WebServisErisim'
  then begin
   Grid := GridList;
   Col := GridListValue;
  end
  else
  begin
   Grid := GridListOratk;
   Col := GridListOrtakValue;
  end;

  if DataSet.FieldByName('ValueObje').AsString = 'C'
  then begin
    ValuesCombo := TStringList.Create;
    try
      ValueObjeValues := DataSet.FieldByName('ValueObjeValues').AsString;
      Col.PropertiesClassName := 'TcxComboBoxProperties';
      TcxComboBoxProperties(Col.Properties).Items.Clear;
      Split(',',ValueObjeValues,ValuesCombo);
      for ValueCombo in  ValuesCombo  do
      begin
        TcxComboBoxProperties(Col.Properties).Items.Add(ValueCombo);
      end;
    finally
      ValuesCombo.Free;
    end;
  end
  else
  if DataSet.FieldByName('ValueObje').AsString = 'IC'
  then begin
        ValueObjeValues := DataSet.FieldByName('ValueObjeValues').AsString;
        Col.PropertiesClassName := 'TcxImageComboBoxProperties';
        TcxImageComboBoxProperties(Col.Properties).Alignment.Vert := taVCenter;
        TcxImageComboBoxProperties(Col.Properties).Items.Clear;
        Col.Properties.Alignment.Horz := taLeftJustify;
        Col.Properties.OnEditValueChanged := PropertiesEditValueChanged;
        TcxImageComboBoxProperties(Col.Properties).ClearKey := VK_DELETE;

        ado := TADOQuery.Create(nil);
        ado.Connection := datalar.ADOConnection2;
    //    IC_Params := TStringList.Create;
        IC_Param := TStringList.Create;
        try
           IC_Param.Clear;
           ExtractStrings([','],[],pchar(ValueObjeValues),IC_Param);
           if IC_Param.Count > 0 then
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
               FItem := TcxImageComboBoxProperties(Col.Properties).Items.add;
               FItem.Value := ado.FieldByName(field1).AsString;
               FItem.Description := ado.FieldByName(field2).AsString;
               ado.Next;
             end;
           end;
        finally
          ado.free;
        //  IC_Params.free;
          IC_Param.free;
        end;

  end
  else
    Col.PropertiesClassName := 'TcxTextEditProperties';

end;

procedure TfrmKurumBilgi.cxButtonCClick(Sender: TObject);
begin
   inherited;
   SifreBilgisiDegis(Tcontrol(sender).Tag);
end;

procedure TfrmKurumBilgi.SifreBilgisiDegis(Tag : integer);
var
 F : TGirisForm;
 GirisRecord : TGirisFormRecord;
begin
   (*
   if TurkCharKontrol(txtSifre.Text) = True
   then begin
      ShowMessageSkin('Türkçe Karakter Ýçermeyen Harf veya Rakam Giriniz','','','info');
      txtSifre.SetFocus;
      exit;
   end;
   if TurkCharKontrol(txtDonemSonlandirmaSifre.Text) = True
   then begin
      ShowMessageSkin('Türkçe Karakter Ýçermeyen Harf veya Rakam Giriniz','','','info');
      txtDonemSonlandirmaSifre.SetFocus;
      exit;
   end;
   *)

   F := FormINIT(TagKurumSifreDegisForm,GirisRecord,ikHayir,'');

   if Tag = -1
   then begin
     mevcutSifre := WebErisimBilgi('99','01');
     ADO_WebServisErisim.Post;

   //  txtSifreLog.Lines.Add(datetimetostr(now) + ' : Yeni Hasta Kabul Þifre : ' + txtSifre.Text);
   //  txtSifreLog.Lines.SaveToFile('SifreLog.txt');


     KurumSifreDegisForm.kullaniciAdi := WebErisimBilgi('99','00');
     KurumSifreDegisForm.sifre := WebErisimBilgi('99','01');
     KurumSifreDegisForm.mevcutSifre := mevcutSifre;
   end
   else
   begin
     mevcutSifreD := WebErisimBilgi('991','01');
     ADO_WebServisErisim.Post;

  //   txtSifreLog.Lines.Add(datetimetostr(now) + ' : Yeni Dönem Son. Þifre : ' + txtDonemSonlandirmaSifre.Text);
  //   txtSifreLog.Lines.SaveToFile('SifreLog.txt');

     KurumSifreDegisForm.kullaniciAdi := WebErisimBilgi('991','00');
     KurumSifreDegisForm.sifre := WebErisimBilgi('991','01');
     KurumSifreDegisForm.mevcutSifre := mevcutSifreD;
   end;

   KurumSifreDegisForm.WebBrowser1.Navigate(datalar.DonemSonlandir);
   if F <> nil then F.show;

end;

procedure TfrmKurumBilgi.FormShow(Sender: TObject);
begin

  if SLK = 'LA' then
  begin
    HastaKabulifreBilgileriniDeitir1.Visible := False;
    DnemSonlandrmaifremiDei1.Visible := False;
  end;

 inherited;
 (*
  mevcutSifre := txtSifre.Text;
  mevcutSifreD := txtDonemSonlandirmaSifre.Text;

  try
   txtSifreLog.Lines.LoadFromFile('SifreLog.txt');
  except end;

  txtSifreLog.Lines.Add(datetimetostr(now) + ' : Mevcut Hasta Kabul Þifre : ' + txtSifre.Text);
  txtSifreLog.Lines.Add(datetimetostr(now) + ' : Mevcut Döenm Son. Þifre : ' + txtDonemSonlandirmaSifre.Text);

  txtSifreLog.Lines.SaveToFile('SifreLog.txt');
  *)
end;

procedure TfrmKurumBilgi.sBitBtn1Click(Sender: TObject);
begin
{
   if TurkCharKontrol(txtSifre.Text) = True
   then begin
      ShowMessageSkin('Türkçe Karakter Ýçermeyen Harf veya Rakam Giriniz','','','info');
      txtSifre.SetFocus;
      exit;
   end;
   if TurkCharKontrol(txtDonemSonlandirmaSifre.Text) = True
   then begin
      ShowMessageSkin('Türkçe Karakter Ýçermeyen Harf veya Rakam Giriniz','','','info');
      txtDonemSonlandirmaSifre.SetFocus;
      exit;
   end;

 if chkOtomatikGelsin.Checked
 then _durum := '1' else _durum := '0';

 try
    sql := 'update Parametreler set slb = ' + #39 + txtKurumKodu.Text + #39 +
           ',slt = ' + #39 + txtSifre.Text + #39 + ',SLVV = ' + #39 + txtDonemSonKullaniciAdi.Text + #39 +
           ',SLXX = ' + #39 + txtDonemSonlandirmaSifre.Text + #39 + ',SLZ = ' + _durum +
           ' where slk = ''99''';
    datalar.QueryExec(datalar.ADO_SQL2,sql);


    // Lab Entegrasyon

    sql := 'update Parametreler set ' +
           'slb = ' + #39 + txtLabKullanici.Text + #39 +
           ',SLt = ' + #39 + txtLAbSifre.Text + #39 +
           ',SLVV = ' + #39 + txtUrl.Text + #39 +
           ',SLXX = ' + QuotedStr(txtFirma.Text) +
           ',SLX = ' + txtLabKurumKod.Text +
           ',SLYY = ' + QuotedStr(txtLabKurumKodText.Text) +
           ',SLZZ = ' + QuotedStr(txtKontolKodu.Text) +
           ' where slk = ''LA''';
    datalar.QueryExec(datalar.ADO_SQL2,sql);


    // Saðlýk Net Bilgileri

    sql := 'update Parametreler set ' +
           'SLYY = ' + #39 + txtSaglikNetSKRS.Text + #39 + ',SLZZ = ' + #39 + txtSaglikNetUser.Text + #39 +
           ',SLXXX = ' + QuotedStr(txtsaglikNetpass.Text) +  ',SLXXv = ''1085''' +
           ' where slk = ''99''';
    datalar.QueryExec(datalar.ADO_SQL2,sql);

    sql := 'update Parametreler set ' +
           'SLYY = ' + #39 + txtDYOBKurumKodu.Text + #39 + ',SLZZ = ' + #39 + txtDYOBParola.Text + #39 +
           ',SLXX = ' + QuotedStr(txtDYOBServiceKod.Text) +
           ' where slk = ''DY''';
    datalar.QueryExec(datalar.ADO_SQL2,sql);

   (*
    sql := 'update Keydat set slt = ' + #39 + txtKullaniciAdi.Text + #39 +
           ' where slk = ''00'' and  slb = ''INT_GSADI''';
    datalar.QueryExec(datalar.ADO_SQL2,sql);

    sql := 'update Keydat set slt = ' + #39 + txtSifre.Text + #39 +
           ' where slk = ''00'' and  slb = ''INT_GSSSIF''';
     *)
   // datalar.QueryExec(datalar.ADO_SQL2,sql);

sql :=

            'if not exists(select SLB,SLT from parametreler where SLk = ''90'' and SLB = ''SNET2'') ' +
            'begin  ' +
            '  insert into parametreler(SLK,SLB,SLT,SLZZ,SLXXX) values(''90''' + ',' + QuotedStr('SNET2') + ',' + '1' + ',' + QuotedStr(txtSaglikNet2user.Text) + ',' + QuotedStr(txtSaglikNet2pass.Text) + ') ' +
            'end else begin ' +


           'update Parametreler set slzz = ' + #39 + txtSaglikNet2user.Text + #39 +
           ',slxxx = ' + #39 + txtSaglikNet2pass.Text + #39 +
           ' where slk = ''90'' and SLB = ''SNET2'' end';
    datalar.QueryExec(datalar.ADO_SQL2,sql);



sql :=

            'if not exists(select SLB,SLT from parametreler where SLk = ''97'') ' +
            'begin  ' +
            '  insert into parametreler(SLK,SLB,SLT) values(''97'',' + QuotedStr(txtmernisId.Text) + ',' + QuotedStr(txtmernisPasword.Text) + ') ' +
            'end else begin ' +


           'update Parametreler set slb = ' + #39 + txtmernisId.Text + #39 +
           ',slt = ' + #39 + txtmernisPasword.Text + #39 +
           ' where slk = ''97'' end';
    datalar.QueryExec(datalar.ADO_SQL2,sql);




sql :=

            'if not exists(select SLB,SLT from parametreler where SLk = ''IT'' and SLB = ''00'') ' +
            'begin  ' +
            '  insert into parametreler(SLK,SLB,SLT,SLVV,SLXX) values(''IT'',''00'',' + QuotedStr(txtGln.Text) + ',' + QuotedStr(txtitsuser.Text) + ',' + QuotedStr(txtitspass.Text) + ') ' +
            'end else begin ' +


           'update Parametreler set slt = ' + #39 + txtGln.Text + #39 +
           ',slvv = ' + #39 + txtitsuser.Text + #39 +
           ',slxx = ' + #39 + txtitspass.Text + #39 +
           ' where slk = ''IT'' and SLb = ''00'' end';
    datalar.QueryExec(datalar.ADO_SQL2,sql);



sql :=

            'if not exists(select SLB,SLT from parametreler where SLk = ''UD'' and SLB = ''00'') ' +
            'begin  ' +
            '  insert into parametreler(SLK,SLB,SLT,SLVV,SLXX) values(''UD'',''00'',''Online Destek Grup Paralo Bilgileri'',' + QuotedStr('DIYALIZLER') + ',' + QuotedStr('Diyaliz123') + ') ' +
            'end else begin ' +


           'update Parametreler ' +
           ' set slvv = ' + #39 + txtGrupAdi.Text + #39 +
           ',slxx = ' + #39 + txtGrupParola.Text + #39 +
           ' where slk = ''UD'' and SLb = ''00'' end';
    datalar.QueryExec(datalar.ADO_SQL2,sql);


 except

   exit;
 end;

    ShowMessage('Kullanýcý Bilgileri Güncellendi','','','info');
    close;

         }
end;

end.

