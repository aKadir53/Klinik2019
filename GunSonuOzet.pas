unit GunSonuOzet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,kadir, cxGraphics, cxControls,strUtils,System.DateUtils,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,ClipBrd,
  cxGroupBox, Menus, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
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
  private
    { Private declarations }
  public
       function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;

var
  frmGunSonuOzet: TfrmGunSonuOzet;
  msj,sorgu,_Tip_ : string;
implementation
    uses data_modul,saglikNetOnline;
{$R *.dfm}

procedure TfrmGunSonuOzet.btnGonderClick(Sender: TObject);
var
 s : integer;
 sonuc : PWideChar;
begin
//  SNetUserTotxtFile;
//  txtToTxtFile(msj,'C:\NoktaV3\sysOnlineMesaj.xml');
  try
    try
     DurumGoster(True,False,'Özet Veri Gönderiminiz Yapýlýyor , Lütfen Bekleyiniz...');
     Application.ProcessMessages;

     if pos('Gün Sonu Veri Seti',Clipboard.AsText) > 0
     then
      msj := Clipboard.AsText;
     Clipboard.Clear;


     if TcxButton(sender).Tag = 0
     then
       s := SendMesajGonder(pwideChar(msj),'GunSonu',sonuc,pwideChar(''))
     else
       s := SendMesajGonder(pwideChar(sorgu),'GunSonuSorgu',sonuc,pwideChar(''));


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
         sql := 'select * from GunSonuTable where sayi >= ' + inttostr(sifir) + ' order by tarih';
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
        sql := 'exec sp_SaglikNetOnlineGunSonu ' + txtTarih.GetSQLValue + ',' +  QuotedStr(datalar.AktifSirket) + ',' + inttostr(sifir) + ',' + intTostr(ayKacCekiyor);
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
       XMLDocument2.XML.Clear;
       XMLDocument2.XML.Add(sorgu);
       XMLDocument2.Active := true;
       XMLDocument2.SaveToFile('c:\NoktaV3\GunSonuOzetMesajSorgu.xml');
       WebBrowser2.Navigate('c:\NoktaV3\GunSonuOzetMesajSorgu.xml');

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
    btnList.Click;
  end;

  if (key = VK_F11) //and (Shift = [ssShift]) and (Shift = [ssCtrl])
  then begin
    _Tip_ := '';
    lblMesaj.Visible := False;
    btnList.Click;
  //  btnGonder.Caption := 'Gönder';
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
