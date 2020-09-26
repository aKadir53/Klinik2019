unit GunSonuOzet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,kadir, cxGraphics, cxControls,strUtils,System.DateUtils,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,ClipBrd,
  cxGroupBox, Menus, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,superobject,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,KadirType,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCheckBox, Data.Win.ADODB, cxPCdxBarPopupMenu, Xml.xmldom, Xml.XMLIntf,GirisUnit,
  Xml.Win.msxmldom, Xml.XMLDoc, Vcl.OleCtrls, SHDocVw, cxPC, KadirLabel,ShellAPI,
  cxMemo, cxLabel, acPNG, cxImage, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters;

type
  TfrmGunSonuOzet = class(TGirisForm)
    cxGroupBox1: TcxGroupBox;
    btnList: TcxButton;
    btnGonder: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGrid1: TcxGridKadir;
    gridListe: TcxGridDBTableView;
    gridListeAdi: TcxGridDBColumn;
    gridListesayi: TcxGridDBColumn;
    gridListekodu: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    WebBrowser1: TWebBrowser;
    XMLDocument1: TXMLDocument;
    txtTarih: TcxDateEditKadir;
    SifirGoster: TcxCheckBox;
    txtTarih2: TcxDateEditKadir;
    DataSource2: TDataSource;
    cxGrid2: TcxGridKadir;
    cxGridGonderimLog: TcxGridDBTableView;
    cxGridGonderimLogtarih1: TcxGridDBColumn;
    cxGridGonderimLogtarih2: TcxGridDBColumn;
    cxGridGonderimLogsonucMesaj: TcxGridDBColumn;
    cxGridGonderimLogColumn1: TcxGridDBColumn;
    cxGridGonderimLogColumn2: TcxGridDBColumn;
    cxGridGonderimLogid: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gridListeColumn1: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    WebBrowser2: TWebBrowser;
    XMLDocument2: TXMLDocument;
    btnSorgula: TcxButton;
    cxTabSheet5: TcxTabSheet;
    WebBrowser3: TWebBrowser;
    XMLDocument3: TXMLDocument;
    chkTumAy: TcxCheckBox;
    ADO_SQL: TADOQuery;
    DataSource1: TDataSource;
    Ado_GunSonuOzetLog: TADOQuery;
    lblMesaj: TcxLabel;
    procedure btnListClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtTarihPropertiesChange(Sender: TObject);
    procedure btnGonderClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxPageControl1Change(Sender: TObject);
    procedure GunSonuListelemeGetir(kullaniciAdi,sifre,sksrs,Tanim,Tarih,uygulamaKodu : string);
  private
    { Private declarations }
  public
       function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

const
//  NoktaDll = 'D:\Projeler\VS\c#\ListeDLL_Cades\ListeDLL\bin\x86\Debug\NoktaDLL.dll';
  NoktaDll = 'NoktaDLL.dll';
var
  frmGunSonuOzet: TfrmGunSonuOzet;
  msj,sorgu,_Tip_ : string;
  stop : integer;

implementation
    uses data_modul,saglikNetOnline;
{$R *.dfm}



procedure TfrmGunSonuOzet.GunSonuListelemeGetir(kullaniciAdi,sifre,sksrs,Tanim,Tarih,uygulamaKodu : string);
var
  SendMesaj : TGunSonuList;
  dllHandle: Cardinal;
  msj,Basarili : integer;
  TS : TStringList;
  _sonuc_ : pwideChar;
  r,_durum_ : integer;
  Json,SutSon,sonuc : ISuperObject;
  JArr: TSuperArray;
  sql : string;
begin
  try
    Basarili := 1;
    dllHandle := LoadLibrary(NoktaDll);
    if dllHandle = 0 then
      exit;
    @SendMesaj := findMethod(dllHandle, 'GunSonuListeleme');
     if addr(SendMesaj) <> nil then
     SendMesaj(pwideChar(kullaniciAdi),pwideChar(sifre),pwideChar(sksrs),pwideChar(Tanim),pwideChar(Tarih),_sonuc_,_durum_,pwideChar(uygulamaKodu));

    if not Assigned(SendMesaj) then
      raise Exception.Create(NoktaDll + ' içersinde GunSonuListeleme bulunamadý!');
    FreeLibrary(dllHandle);
  except on e : exception do
    begin
       ShowMessageSkin(e.Message,'','','info');
    end;
  end;


    try
      Json := SO(_sonuc_);
    except on e : exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
        exit;
      end;
    end;


    if Json.I['durum'] = 1
    then begin
            sonuc := Json.O['sonuc'];
            if _Tip_ = 'M'
            Then begin

              datalar.QueryExec('update GunSonuTable set sayi = ' + intToStr(sonuc.I['toplamKayit']) +
                                ' where sirketKodu = ' + QuotedStr(datalar.AktifSirket) +
                                ' and kodu = ' + QuotedStr(Tanim) +
                                ' and dbo.fn_FormattedTarih(''YYYYMMDDHHMM'',tarih) = ' + QuotedStr(Tarih));

          //    ADO_SQL.Edit;
           //   ADO_SQL.FieldByName('sayi').AsInteger := sonuc.I['toplamKayit'];
           //   ADO_SQL.Post;
            end;
    end
    else
    ShowMessageSkin(Json.S['mesaj'],'','','info');

end;


procedure TfrmGunSonuOzet.btnGonderClick(Sender: TObject);
var
 s , x : integer;
 sonuc : PWideChar;
 ado : TADOQuery;
 sql , Tanim , Tarih : string;
begin
//  SNetUserTotxtFile;
//  txtToTxtFile(msj,'C:\NoktaV3\sysOnlineMesaj.xml');
  try
    try
    // DurumGoster(True,False,'Özet Veri Gönderiminiz Yapýlýyor , Lütfen Bekleyiniz...');
     Application.ProcessMessages;

     if pos('Gün Sonu Veri Seti',Clipboard.AsText) > 0
     then
      msj := Clipboard.AsText;
      Clipboard.Clear;


     if TcxButton(sender).Tag = 0
     then begin
       DurumGoster(True,False,'Özet Veri Gönderiminiz Yapýlýyor , Lütfen Bekleyiniz...');
       s := SendMesajGonder(pwideChar(msj),'GunSonu',sonuc,pwideChar(''))

     end
     else begin
       stop := 0;
       DurumGoster(True,False,'Sorgulama Yapýlýyor , Lütfen Bekleyiniz...');
       try
           for x := 0 to gridListe.Controller.SelectedRowCount - 1 do
           begin
               //Application.ProcessMessages;
               Tanim := gridListe.DataController.GetValue(
                                        gridListe.Controller.SelectedRows[x].RecordIndex,gridListe.DataController.GetItemByFieldName('kodu').Index);

               Tarih := FormatDateTime('YYYYMMDD0000', gridListe.DataController.GetValue(
                                        gridListe.Controller.SelectedRows[x].RecordIndex,gridListe.DataController.GetItemByFieldName('tarih').Index));

               GunSonuListelemeGetir(datalar._userSaglikNet2_,DATALAR._passSaglikNet2_,datalar._KurumSKRS_,
                                      Tanim,Tarih,ktsHbysKodu);
           end;
           ADO_SQL.Requery();
       finally
         DurumGoster(false);
       end;

     end;

     Ado_GunSonuOzetLog.Append;
     Ado_GunSonuOzetLog.FieldByName('tarih1').AsDateTime := txtTarih.Date;
     Ado_GunSonuOzetLog.FieldByName('tarih2').AsDateTime := txtTarih2.Date;
     Ado_GunSonuOzetLog.FieldByName('SonucMesaj').AsString := sonuc;
     Ado_GunSonuOzetLog.FieldByName('SendUser').AsString := datalar.username;
     Ado_GunSonuOzetLog.FieldByName('sirketKod').AsString := datalar.AktifSirket;
     Ado_GunSonuOzetLog.Post;


    WebBrowser3.Navigate('c:\NoktaV3\Cvp.xml');


    except on e : Exception do
     begin
      ShowMessageSkin(e.Message,'','','info');
     end;
    end;

  finally
    DurumGoster(False);
  end;

end;

procedure TfrmGunSonuOzet.btnListClick(Sender: TObject);
var
  sql : string;
  sifir : integer;
  ado : TADOQuery;
  ayKacCekiyor : integer;
  tarih2 : TDate;
begin
     DurumGoster(True);
     try
       //Ado_GunSonuOzetLog.Active := False;
       datalar.QuerySelect(Ado_GunSonuOzetLog,
                           'select * from GunSonuOzetGonderimLog where sirketKod = ' + QuotedStr(datalar.AktifSirket));

       sifir := strtoint(ifThen(SifirGoster.EditValue=True,'1','0'));

       if chkTumAy.Checked
       then begin
         ayKacCekiyor := DaysInMonth(txtTarih.date) - 1;
         ayliktarih(txtTarih.Date,tarih2);
         txtTarih2.Date := tarih2;
       end
       else begin
         ayKacCekiyor := 9;
         txtTarih2.Date := txttarih.Date - ayKacCekiyor;
       end;
     //  txtTarih2.Date := txtTarih.Date - 9;

       sql := 'sp_SaglikNetOnlineGunSonuTable ' + txtTarih.GetSQLValue + ',' + QuotedStr(datalar.AktifSirket) + ','
                                                + inttostr(sifir) + ',' + intTostr(ayKacCekiyor) + ',' + QuotedStr(_Tip_);
       cxGrid1.Dataset.CommandTimeout := 0;
       datalar.QuerySelect(ADO_SQL,sql);

       if _Tip_ = 'M'
       then  begin
         sql := 'select * from GunSonuTable where sirketKodu = ' + QuotedStr(datalar.AktifSirket) + ' and sayi >= ' + inttostr(sifir) + ' order by tarih';
         datalar.QuerySelect(ADO_SQL,sql);
         gridListesayi.Options.Editing := True;
       end
       else
       begin
         gridListesayi.Options.Editing := False;
       end;

       try
        ado := TADOQuery.Create(nil);
        ado.Connection := datalar.ADOConnection2;
        ado.CommandTimeout := 0;
        sql := 'exec sp_SaglikNetOnlineGunSonu ' + txtTarih.GetSQLValue + ',' +
                                                   QuotedStr(datalar.AktifSirket) + ',' +
                                                   inttostr(sifir) + ',' +
                                                   intTostr(ayKacCekiyor) + ',' +
                                                   QuotedStr(_Tip_) + ',' +
                                                   QuotedStr('');
        datalar.QuerySelect(ado,sql);
        msj := ado.Fields[0].AsString;
        sorgu := ado.Fields[1].AsString;
        ado.Close;
        ado.Free;
       except
         ado.Free;
         exit;
       end;

       XMLDocument1.XML.Clear;
       XMLDocument1.XML.Add(msj);
       XMLDocument1.Active := true;
       XMLDocument1.SaveToFile('c:\NoktaV3\GunSonuOzetMesaj.xml');
       WebBrowser1.Navigate('c:\NoktaV3\GunSonuOzetMesaj.xml');
      (*
       XMLDocument2.XML.Clear;
       XMLDocument2.XML.Add(sorgu);
       XMLDocument2.Active := true;
       XMLDocument2.SaveToFile('c:\NoktaV3\GunSonuOzetMesajSorgu.xml');
       WebBrowser2.Navigate('c:\NoktaV3\GunSonuOzetMesajSorgu.xml');
        *)
     finally
       DurumGoster(False);
     end;
end;

procedure TfrmGunSonuOzet.cxPageControl1Change(Sender: TObject);
var
  ado : TADOQuery;
  sql : string;
  sifir,ayKacCekiyor : integer;
  tarih2 : TDate;
begin

  if cxPageControl1.ActivePage = cxTabSheet2
  Then BEgin

     sifir := strtoint(ifThen(SifirGoster.EditValue=True,'1','0'));

     if chkTumAy.Checked
     then begin
       ayKacCekiyor := DaysInMonth(txtTarih.date) - 1;
       ayliktarih(txtTarih.Date,tarih2);
       txtTarih2.Date := tarih2;
     end
     else begin
       ayKacCekiyor := 9;
       txtTarih2.Date := txttarih.Date - ayKacCekiyor;
     end;
   //  txtTarih2.Date := txtTarih.Date - 9;

     try
      ado := TADOQuery.Create(nil);
      ado.Connection := datalar.ADOConnection2;
      sql := 'exec sp_SaglikNetOnlineGunSonu ' + txtTarih.GetSQLValue + ',' +  QuotedStr(datalar.AktifSirket) + ',' +
                      inttostr(sifir) + ',' + intTostr(ayKacCekiyor) + ',' + QuotedStr(_Tip_);
      datalar.QuerySelect(ado,sql);
      msj := ado.Fields[0].AsString;
      sorgu := ado.Fields[1].AsString;
      ado.Close;
      ado.Free;
     except
       ado.Free;
       exit;
     end;

     XMLDocument1.XML.Clear;
     XMLDocument1.XML.Add(msj);
     XMLDocument1.Active := true;
     XMLDocument1.SaveToFile('c:\NoktaV3\GunSonuOzetMesaj.xml');
     WebBrowser1.Navigate('c:\NoktaV3\GunSonuOzetMesaj.xml');

     btnGonder.Enabled := True;

  End
  else
     btnGonder.Enabled := False;


end;

procedure TfrmGunSonuOzet.FormCreate(Sender: TObject);
begin
  txtTarih.Date := date;
  txtTarih2.Date := txttarih.Date - 9;
  cxPanel.Visible := false;
end;

procedure TfrmGunSonuOzet.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (key = VK_F12)// and (Shift = [ssShift]) and (Shift = [ssCtrl])
  then begin
    _Tip_ := 'M';
//    btnGonder.Caption := 'Gönderm';
    lblMesaj.Visible := True;
    btnSorgula.Visible := True;
    btnList.Click;
  end;

  if (key = VK_F11) //and (Shift = [ssShift]) and (Shift = [ssCtrl])
  then begin
    _Tip_ := '';
    lblMesaj.Visible := False;
    btnSorgula.Visible := False;
    btnList.Click;
  //  btnGonder.Caption := 'Gönder';
  end;

  if (key = VK_ESCAPE) //and (Shift = [ssShift]) and (Shift = [ssCtrl])
  then begin
    stop := 1;
  end;
end;

function TfrmGunSonuOzet.Init(Sender: TObject): Boolean;
begin
  inherited;
  cxTab.Tabs[0].Caption := Datalar.AktifSirketAdi;
  Result := True;
end;

procedure TfrmGunSonuOzet.txtTarihPropertiesChange(Sender: TObject);
begin
  txtTarih2.Date := txttarih.Date - 9;
end;

end.
