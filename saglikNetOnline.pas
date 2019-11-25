unit saglikNetOnline;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,data_modul, DB, ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxContainer,
  Menus, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,ShellAPI,
  cxCalendar, cxGroupBox, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinsForm, cxPC,kadir,cxMemo, cxRadioGroup, cxCheckBox, acPNG,
  cxImage, cxLabel, cxHyperLinkEdit, cxRichEdit, cxDBRichEdit, AdvMemo, Advmxml,
  DBAdvMemo, xmldom, XMLIntf, msxmldom, XMLDoc, cxImageComboBox, ExtCtrls,
  cxDBEdit, OleCtrls, SHDocVw, Soap.InvokeRegistry, Soap.Rio,
  Soap.SOAPHTTPClient,GirisUnit,KadirType,GetFormClass,kadirLabel;

type
  TfrmSaglikNetOnline = class(TGirisForm)
    cxPageControl1: TcxPageControl;
    page_list: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    gridListe: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGridKadir;
    ilkTarih: TcxDateEditKadir;
    sonTarih: TcxDateEditKadir;
    btnList: TcxButton;
    btnSend: TcxButton;
    txtLog: TcxMemo;
    chkHastaKayit: TcxCheckBox;
    gridListeTCKIMLIKNO: TcxGridDBColumn;
    gridListeHASTAADI: TcxGridDBColumn;
    gridListeHASTASOYADI: TcxGridDBColumn;
    gridListeSYSTakipNo: TcxGridDBColumn;
    gridListeCOLUMN1: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    gridListeColumn2: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    gridListeColumn3: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    gridListeColumn4: TcxGridDBColumn;
    gridListeColumn5: TcxGridDBColumn;
    Panel1: TPanel;
    cxButton6: TcxButton;
    txtMesaj: TcxDBMemo;
    XMLDocument1: TXMLDocument;
    WebBrowser1: TWebBrowser;
    gridListeColumn6: TcxGridDBColumn;
    gridListeColumn7: TcxGridDBColumn;
    HTTPRIO1: THTTPRIO;
    G1: TMenuItem;
    H1: TMenuItem;
    T1: TMenuItem;
    chkMuayene: TcxCheckBox;
    N1: TMenuItem;
    H3: TMenuItem;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    cxDateEdit3: TcxDateEdit;
    btnSysTakipNoGetir: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton14: TcxButton;
    Button3: TButton;
    Button4: TButton;
    btnKayitSorgulaList: TcxButton;
    btnSil: TcxButton;
    btnHastaKayitSorgula: TcxButton;
    cxGrid2: TcxGridKadir;
    GridTakipList: TcxGridDBTableView;
    GridTakipListSIRANO: TcxGridDBColumn;
    GridTakipListsysTakipNo: TcxGridDBColumn;
    GridTakipListislemTarihi: TcxGridDBColumn;
    GridTakipListdate_create: TcxGridDBColumn;
    GridTakipListsorguCvp: TcxGridDBColumn;
    GridTakipListsilCvp: TcxGridDBColumn;
    GridTakipListColumn1: TcxGridDBColumn;
    GridTakipListColumn2: TcxGridDBColumn;
    GridTakipListColumn3: TcxGridDBColumn;
    GridTakipListColumn4: TcxGridDBColumn;
    GridTakipListColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    N2: TMenuItem;
    G2: TMenuItem;
    K1: TMenuItem;
    msjTip: TcxRadioGroup;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    S2: TMenuItem;
    S3: TMenuItem;
    gridListeColumn8: TcxGridDBColumn;
    T2: TMenuItem;
    M1: TMenuItem;
    M2: TMenuItem;
    S4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure btnVazgecClick(Sender: TObject);

    function SYSOnlineCvpDBDurumYaz(SiraNo,SysTakipNo,MesajTipi,SONUCKODU,SONUCMESAJ,user : string) : integer;
    procedure MesajGonder(mesaj , islemTipi , HastaneRefNo: string);
    function SendMesajGonder(m,t : PWideChar ; var sonuc : PWideChar ; HastaneRefNo : string) : integer;
    procedure cxButton6Click(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure msjTipClick(Sender: TObject);
    procedure HTTPRIO1BeforeExecute(const MethodName: string;
      SOAPRequest: TStream);
    procedure HTTPRIO1AfterExecute(const MethodName: string;
      SOAPResponse: TStream);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxListeleClick(Sender : TObject);
    procedure VeriSil;
    procedure Gonder;
    procedure Listele;
    procedure TopPanelButonClick(Sender: TObject);
    procedure chkMuayeneClick(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure KararDestekBrowser;
    procedure btnSysTakipNoGetirClick(Sender: TObject);
    procedure sysTakipNoSilSorgula(Tip : String);
    procedure btnSilClick(Sender: TObject);
    procedure btnKayitSorgulaListClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmSaglikNetOnline: TfrmSaglikNetOnline;
  stop : integer;
  eNabizGonder,Mesaj : string;
  mesajTipi,msg : string;

implementation
    uses anaUnit,MedEczane;
{$R *.dfm}

function TfrmSaglikNetOnline.Init(Sender: TObject) : Boolean;
begin
 Result := True;
end;

procedure TfrmSaglikNetOnline.KararDestekBrowser;
var
  d,u,s : string;
begin
  u := datalar._userSaglikNet2_;
  s := datalar._passSaglikNet2_;
  Application.CreateForm(TfrmMedEczane, frmMedEczane);
  frmMedEczane.yukle(u,s,'','ENabiz');
  frmMedEczane.ShowModal;
  frmMedEczane := nil;
end;

procedure TfrmSaglikNetOnline.cxListeleClick(Sender : TObject);
begin
 inherited;
 if datalar.ZorunluAlanVar = true then exit;

 case TControl(sender).Tag of

       ClckListele   : begin
                         Listele;
                       end;
 end;

end;


procedure TfrmSaglikNetOnline.cxKaydetClick(Sender: TObject);
var
  Form : TGirisForm;
  r : integer;
  dosyaNo,ad,soyad,sysTakipNo,HastaneRefNo : string;
  GirisFormRecord : TGirisFormRecord;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  r := gridListe.DataController.DataControllerInfo.FocusedRecordIndex;
  dosyaNo := cxGrid1.Dataset.FieldByName('dosyaNo').AsString; //TCtoDosyaNo(gridListe.DataController.Values[r, 0]);
  sysTakipNo := cxGrid1.Dataset.FieldByName('sysTakipNo').AsString; //TCtoDosyaNo(gridListe.DataController.Values[r, 0]);

  GirisFormRecord.F_dosyaNo_ := dosyaNo;
  GirisFormRecord.F_gelisNo_ := cxGrid1.Dataset.FieldByName('gelisNo').AsString;
  GirisFormRecord.F_TC_ := cxGrid1.Dataset.FieldByName('TCKIMLIKNO').AsString;


  GirisFormRecord.F_HastaAdSoyad_ :=
     cxGrid1.Dataset.FieldByName('HASTAADI').AsString + ' ' +
     cxGrid1.Dataset.FieldByName('HASTASOYADI').AsString;;

    case TControl(sender).Tag of
    -1 : begin
           VeriSil;
         end;
    -2 : begin
           Gonder;
         end;
    -3 : begin
             if FindTab(AnaForm.sayfalar,'TabfrmHastaKart')
             Then begin
               Form := TGirisForm(FormClassType(TagfrmHastaKart));
               TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := dosyaNo;
               TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
             end
             Else begin
              Form := FormINIT(TagfrmHastaKart,self,dosyaNo,NewTab(AnaForm.sayfalar,'TabfrmHastaKart'),ikEvet,'Giriþ');
              if Form <> nil then Form.show;
           end;
         end;

     -4 : begin
              Form := FormINIT(TagfrmHastaDiyalizIzlem,GirisFormRecord,ikHayir);
              if Form <> nil then Form.ShowModal;
           end;

   -19 : begin
              GirisFormRecord.F_HastaAdSoyad_ := Datalar.AktifSirketAdi;
              Form := FormINIT(TagfrmGunSonuOzet,GirisFormRecord,ikHayir);
              if Form <> nil then Form.ShowModal;
         end;


   -20 : begin
            KararDestekBrowser;
         end;
   -21 : begin
             datalar.Login;
             ShowMessageSkin(
               SGKHizmetSorgulama(datalar._userSaglikNet2_,DATALAR._passSaglikNet2_,sysTakipNo,'',ktsHbysKodu),
             '','','info');
         end;

  -22 : begin
          msg := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[0].RecordIndex,gridListe.GetColumnByFieldName('SYSTakipNoSorgu').Index);
          sysTakipNo := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[0].RecordIndex,gridListe.GetColumnByFieldName('SysTakipNo').Index);
          HastaneRefNo := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[0].RecordIndex,gridListe.GetColumnByFieldName('SIRANO').Index);
          MesajGonder(msg,'SysTakipNoSorgula',HastaneRefNo);
          Application.ProcessMessages;
        end;

    end;

end;

procedure TfrmSaglikNetOnline.Listele;
var
 sql , _systakipNovar_ : string;
begin
  DurumGoster;
  try
    if chkHastaKayit.Checked = True
    then _systakipNovar_ := '1'
    else _systakipNovar_ := '100';

    case (msjTip.ItemIndex) of
     0 : mesajTipi := 'Hasta Kayýt';
     1 : mesajTipi := 'Diyaliz Bildirim';
     2 : mesajTipi := 'Diyaliz Ýzlem';
     3 : mesajTipi := 'Muayene';
     4 : mesajTipi := 'Hizmet';
     5 : mesajTipi := 'TetkikSonuc';
     6 : mesajTipi := 'RadyolojiSonuc';
     7 : mesajTipi := 'Tümü';
    end;

    btnSend.Caption := mesajTipi + ' Gönder';

    sql := 'EXEC ' + msjTip.EditingValue + ' @tarih1 = '  + ilkTarih.GetSQLValue + ',' +
                                           ' @tarih2 = ' +  sonTarih.GetSQLValue + ',' +
                                           ' @sirketKod = ' +  QuotedStr(datalar.AktifSirket) + ',' +
                                           ' @sysTakipNoVar = ' + _systakipNovar_ + ',' +
                                           ' @enabizGonder = ' + eNabizGonder;

    datalar.QuerySelect(cxGrid1.Dataset,sql);
    msg := cxGrid1.Dataset.FieldByName('SYSMessage').AsString;


  finally
    DurumGoster(False);
  end;
end;

procedure TfrmSaglikNetOnline.Gonder;
var
  msg,sonuc,sql : string;
  SS : TStringList;
  ado : TADOQuery;
  c : char;
  i : integer;
  takip ,HastaneRefNo : string;
  _row_ : integer;
  sysTakipNo,ad,soyad,id : string;
  SNetLogin,SNetMsg : TStringList;
begin
   txtLog.Lines.Clear;

   Application.ProcessMessages;

 //  SNetUserTotxtFile;

   stop := 0;
  try
   try
     for _row_ := 0 to gridListe.Controller.SelectedRowCount - 1 do
     begin
       if stop = 1 then Break;
       HastaneRefNo := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,0);
       sysTakipNo := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,4);
       ad := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,2);
       soyad := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,3);
       msg := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,8);
    //   mesajTipi := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,12);

       DurumGoster(True,True,ad + ' ' + soyad,0,gridListe.Controller.SelectedRowCount);
       pBar.Position := pBar.Position + 1;

       Application.ProcessMessages;

    //   txtToTxtFile(msg,'C:\NoktaV3\sysOnlineMesaj.xml');

       if (mesajTipi = 'Hasta Kayýt') and (sysTakipNo = '')
       then begin
          //       ShowMessageSkin(msg,'','','info');
          MesajGonder(msg,mesajTipi,HastaneRefNo);
         Application.ProcessMessages;
       end;
       if (mesajTipi <> 'Hasta Kayýt') and (sysTakipNo <> '')
       then begin
         // ShowMessageSkin(msg,'','','info');
         MesajGonder(msg,mesajTipi,HastaneRefNo);
         Application.ProcessMessages;
       end;

     end;
   except on e : Exception do
    begin
      ShowMessageSkin(e.Message,'','','info');
    end;
   end;


  finally
    DurumGoster(false);
  end;

end;



procedure TfrmSaglikNetOnline.veriSil;
var
  msg,sonuc,sql : string;
  SS : TStringList;
  ado : TADOQuery;
  c : char;
  i , _row_ : integer;
  takip ,HastaneRefNo , sysTakipNo ,ad,soyad: string;

begin
   DurumGoster(True);
   pBar.Properties.Max := gridListe.Controller.SelectedRowCount;
   cxGrid1.Enabled := false;
   stop := 0;
   try
     for _row_ := 0 to gridListe.Controller.SelectedRowCount - 1 do
     begin
       if stop = 1 then Break;
       HastaneRefNo := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,0);
       sysTakipNo := varToStr(gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,4));
       ad := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,2);
       soyad := gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,3);
       msg := varTostr(gridListe.DataController.GetValue(gridListe.Controller.SelectedRows[_row_].RecordIndex,10));

       pBar.Position := pBar.Position + 1;
       pnlDurumDurum.Caption := ad + ' ' + soyad;

       if (sysTakipNo <> '') and (msg <> '')
       then begin
         MesajGonder(msg,'Hasta Kayýt Silme',HastaneRefNo);
       end;
       Application.ProcessMessages;

     end;
   finally
    DurumGoster(false);
    cxGrid1.Enabled := true;
   end;



end;



procedure TfrmSaglikNetOnline.MesajGonder(mesaj , islemTipi , HastaneRefNo: string);
var
  msg,sql : string;
  sonuc : pwidechar;
  SS : TStringList;
  ado : TADOQuery;
  c : char;
  i,s : integer;
  takip : string;
  TSonuc : TStringList;

  procedure sonucYaz(Basarili : integer);
  begin
   (*
   TSonuc := TStringList.Create;
   TSonuc.LoadFromFile('C:\NoktaV3\Cvp.txt');
   sonuc := TSonuc.Text;
   TSonuc.Free;
     *)

   if Basarili = -1
   then
    txtLog.Lines.Add(sonuc);

   if Basarili >= 0
   then
      if Length(sonuc) > 0
      then begin
         SS := TStringList.Create;
         ExtractStrings(['|'], [], PChar(sonuc), SS);

         if pos('Hasta Kayýt',islemTipi) > 0
         Then Begin
             if pos('Sorgula TakipNoListeleme',islemTipi) > 0 then
             begin
               sql := 'update KurumsysTakipNoList set sorguCvp = ' + QuotedStr(sonuc) +
                      ' where SIRANO = ' + HastaneRefNo;
               datalar.QueryExec(sql);
               exit;
             end;
             if pos('Sil TakipNoListeleme',islemTipi) > 0 then
             begin
               sql := 'update KurumsysTakipNoList set silCvp = ' + QuotedStr(sonuc) +
                      ' where SIRANO = ' + HastaneRefNo;
               datalar.QueryExec(sql);
               //exit;
             end;

             if SS[0] = 'S0000'
             then begin
                if pos('Sil',islemTipi) > 0 then
                takip := '' else takip := SS[2];

                sql := 'update Hasta_gelisler set SYSTakipNo = ' + QuotedStr(takip) +
                       ' where SIRANO = ' + HastaneRefNo;
                datalar.QueryExec(sql);
                txtLog.Lines.Add(SS[1] + ' - ' + SS[2]);

                SYSOnlineCvpDBDurumYaz(HastaneRefNo,SS[2],islemTipi,SS[0],SS[1],datalar.username);
             end
             else
             begin
               txtLog.Lines.Add(SS[1]);
               SYSOnlineCvpDBDurumYaz(HastaneRefNo,'',islemTipi,SS[0],SS[1],datalar.username);
               if SS[0] = 'E2033'
               then begin
                takip := copy(SS[1],pos('=',SS[1])+1,50);
                sql := 'update Hasta_gelisler set SYSTakipNo = ' + QuotedStr(takip) +
                       ' where SIRANO = ' + HastaneRefNo;
                datalar.QueryExec(sql);
               end
               else
               if SS[0] = 'E2003'
               then begin
                takip := '';
                sql := 'update Hasta_gelisler set SYSTakipNo = ' + QuotedStr('') +
                       ' where SIRANO = ' + HastaneRefNo;
                datalar.QueryExec(sql);
               end;

             end;

         End
         else
         begin
            if SS[0] = 'S0000'
            then begin
               txtLog.Lines.Add(SS[0] + ' - ' + SS[1]);
               SYSOnlineCvpDBDurumYaz(HastaneRefNo,SS[2],islemTipi,SS[0],SS[1],datalar.username);

               if islemTipi = 'TetkikSonuc'
               then
                 sql := 'update Hasta_gelisler set eNabizTetkikGonder = 0 where SIRANO = ' + HastaneRefNo
               else
               if islemTipi = 'Hizmet'
               then
                 sql := 'update Hasta_gelisler set eNabizHizmetGonder = 0 where SIRANO = ' + HastaneRefNo
               else
               if islemTipi = 'Muayene'
               then
                 sql := 'update Hasta_gelisler set eNabizGonder = 0 where SIRANO = ' + HastaneRefNo
               else
               if islemTipi = 'RadyolojiSonuc'
               then
                 sql := 'update Hasta_gelisler set eNabizTetkikGonder = 0 where SIRANO = ' + HastaneRefNo;

                datalar.QueryExec(sql);


            end
            else begin
               txtLog.Lines.Add(SS[0] + ' - ' + SS[1]);
               SYSOnlineCvpDBDurumYaz(HastaneRefNo,'',islemTipi,SS[0],SS[1],datalar.username);
            end;
         end;
         SS.Free;

      end;
  end;

begin
  try
   sonuc := '';

   if FileExists('C:\NoktaV3\Message\SysTakipNoSorgulaCvp.xml')
   then
     DeleteFile('C:\NoktaV3\Message\SysTakipNoSorgulaCvp.xml');

   s := SendMesajGonder(pwidechar(mesaj),pwidechar(islemTipi),sonuc,HastaneRefNo);

   if islemTipi = 'SysTakipNoSorgula'
   then begin
     xmlGoster('C:\NoktaV3\Message\' +  islemTipi + 'Cvp');
   end
   else
   sonucYaz(s);
  except on e : Exception do
   begin
    ShowMessageSkin(e.Message,'','','info');
   end;
  end;

end;


function TfrmSaglikNetOnline.SendMesajGonder(m,t : PWideChar ; var sonuc : PWideChar ; HastaneRefNo : string) : integer;
var
  SendMesaj : TENabizSendMesaj;
  dllHandle: Cardinal;
  msj,Basarili : integer;
  TS : TStringList;
  _sonuc_ : PWideChar;
begin
  Basarili := 1;
  dllHandle := LoadLibrary(NoktaDll);
  if dllHandle = 0 then
    exit;
  @SendMesaj := findMethod(dllHandle, 'SendMesajMethod');
   if addr(SendMesaj) <> nil then
   SendMesaj(m,t,Basarili,_sonuc_,pwideChar(datalar._userSaglikNet2_),pwidechar(datalar._passSaglikNet2_),
             pwidechar('https://sys.sagliknet.saglik.gov.tr/SYS/SYSWS.svc'),pwidechar('Hayýr'),pwidechar(HastaneRefNo));
   sonuc := _sonuc_;
   SendMesajGonder := Basarili;

  if not Assigned(SendMesaj) then
    raise Exception.Create(LIB_DLL + ' içersinde SendMesajMethod bulunamadý!');
  FreeLibrary(dllHandle);

end;


procedure TfrmSaglikNetOnline.msjTipClick(Sender: TObject);
begin
  btnList.Click;
end;

procedure TfrmSaglikNetOnline.PopupMenu1Popup(Sender: TObject);
begin
  H3.Enabled := (msjTip.ItemIndex = 0);
  S1.Enabled := (msjTip.ItemIndex = 4);
end;

function TfrmSaglikNetOnline.SYSOnlineCvpDBDurumYaz(SiraNo,SysTakipNo,MesajTipi,SONUCKODU,SONUCMESAJ,user : string) : integer;
var
  ado : TADOQuery;
  sql : string;
begin
  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  try
    sql := 'insert into SaglikNetGonderimSonuc (siraNo,SYSTakipNo,MESAJTIPI,SONUCKODU,SONUCMESAJ,USER_ID,DATE_CREATE) ' +
           ' values(' + SiraNo + ',' +
                        QuotedStr(SysTakipNo) + ',' +
                        QuotedStr(MesajTipi) + ',' +
                        QuotedStr(SONUCKODU) + ',' +
                        QuotedStr(SONUCMESAJ) + ',' +
                        QuotedStr(user) + ',' +
                        QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm',now())) + ')';

    datalar.QueryExec(ado,sql);
    SYSOnlineCvpDBDurumYaz := 0;
  except
    SYSOnlineCvpDBDurumYaz := 1;
  end;

  ado.Free;

end;


procedure TfrmSaglikNetOnline.btnKayitSorgulaListClick(Sender: TObject);
var
  sql : string;
begin
   sql := 'exec sp_KurumSysTakipList ' + QuotedStr(tarihal(cxDateEdit3.Date)) + ',' + QuotedStr(datalar.AktifSirket);
   datalar.QuerySelect(cxGrid2.Dataset,sql);
end;

procedure TfrmSaglikNetOnline.btnSendClick(Sender: TObject);
begin
  Gonder;
end;

procedure TfrmSaglikNetOnline.btnSilClick(Sender: TObject);
begin
  sysTakipNoSilSorgula(TcxButton(sender).Caption + ' TakipNoListeleme');
end;

procedure TfrmSaglikNetOnline.btnSysTakipNoGetirClick(Sender: TObject);
var
  sql : string;
begin
   sql := 'delete from KurumsysTakipNoList ' +
          ' from KurumsysTakipNoList K ' +
          ' join Hasta_gelisler g on g.sysTakipNo = K.sysTakipNo ' +
          ' join HastaKart hk on hk.dosyaNO = g.dosyaNo ' +
          ' where islemTarihi = ' + QuotedStr(tarihal(cxDateEdit3.Date)) + ' and hk.sirketKod = ' + QuotedStr(datalar.AktifSirket);
   datalar.QueryExec(sql);

   TakipListGetir(datalar._userSaglikNet2_,DATALAR._passSaglikNet2_,datalar._KurumSKRS_,tarihal(cxDateEdit3.Date),ktsHbysKodu);

   btnKayitSorgulaList.Click;
end;


procedure TfrmSaglikNetOnline.sysTakipNoSilSorgula(Tip : String);
var
  msg,sonuc,sql : string;
  SS : TStringList;
  ado : TADOQuery;
  c : char;
  i : integer;
  takip ,HastaneRefNo : string;
  _row_ : integer;
  sysTakipNo,ad,soyad,id : string;
  SNetLogin,SNetMsg : TStringList;
begin
   txtLog.Lines.Clear;

   DurumGoster(True,True,'Ýþleminiz Yapýlýyor...',0,GridTakipList.Controller.SelectedRowCount);
 //  SNetUserTotxtFile;

   stop := 0;
   try
     for _row_ := 0 to GridTakipList.Controller.SelectedRowCount - 1 do
     begin
       if stop = 1 then Break;
       HastaneRefNo := GridTakipList.DataController.GetValue(GridTakipList.Controller.SelectedRows[_row_].RecordIndex,0);
       sysTakipNo := GridTakipList.DataController.GetValue(GridTakipList.Controller.SelectedRows[_row_].RecordIndex,1);

       if pos('Sil',Tip) > 0
       then
         msg := GridTakipList.DataController.GetValue(GridTakipList.Controller.SelectedRows[_row_].RecordIndex,9)
       else
         msg := GridTakipList.DataController.GetValue(GridTakipList.Controller.SelectedRows[_row_].RecordIndex,10);


       pnlDurumDurum.Caption := sysTakipNo + ' ' + Tip + ' Ýþlemi Yapýlýyor...';
       Application.ProcessMessages;

       MesajGonder(msg,Tip,HastaneRefNo);

     end;
   except on e : Exception do
    begin
      ShowMessageSkin(e.Message,'','','info');
    end;
   end;

   pnlDurum.Visible := false;

end;


procedure TfrmSaglikNetOnline.btnVazgecClick(Sender: TObject);
begin
  stop := 1;
end;

procedure TfrmSaglikNetOnline.chkMuayeneClick(Sender: TObject);
begin
  if chkMuayene.Checked
  then
   eNabizGonder := '0'
  else
   eNabizGonder := '1';

 //  msjTip.ItemIndex := 3;
   BtnList.Click;
end;

procedure TfrmSaglikNetOnline.cxButton6Click(Sender: TObject);
begin


     XMLDocument1.XML.Add(txtMesaj.Text);
     XMLDocument1.Active := true;
     XMLDocument1.SaveToFile('c:\NoktaV3\sysOnlineMesaj.xml');

     ShellExecute(Handle,'open', PChar('iexplore.exe'),
                  PChar ('c:\NoktaV3\sysOnlineMesaj.xml'), nil, SW_SHOWNORMAL);

end;

procedure TfrmSaglikNetOnline.cxPageControl1Change(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex =  1
  then begin
     msg := cxGrid1.Dataset.FieldByName('SYSMessage').AsString;
     XMLDocument1.XML.Clear;
     XMLDocument1.XML.Add(msg);
     XMLDocument1.Active := true;
     XMLDocument1.SaveToFile('c:\NoktaV3\sysOnlineMesaj.xml');

     WebBrowser1.Navigate('c:\NoktaV3\sysOnlineMesaj.xml');

  end;

end;

procedure TfrmSaglikNetOnline.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;

end;

procedure TfrmSaglikNetOnline.TopPanelButonClick(Sender: TObject);
begin
    case TcxButtonKadir(sender).Tag of
     ClckListele : begin
                     Listele;
                   end;
    end;

end;

procedure TfrmSaglikNetOnline.FormCreate(Sender: TObject);
begin
  inherited;
   ilkTarih.Date := date;
   sonTarih.Date := date;
   eNabizGonder := '1';
   btnList.Tag := ClckListele;
   top := 1;
   left := 1;
   cxPanel.Visible := false;
   dxStatusBar1.Visible := false;
   cxTab.Tabs[0].Caption := 'Saðlýk Net Online';
   Menu:= PopupMenu1;

   cxPageControl1.ActivePage := page_list;

//   TopPanel.Visible := True;
   TapPanelElemanVisible(True,True,True,True,False,False,False,True);
   btnListTopPanel.OnClick := TopPanelButonClick;
  // addButtonTopPanel(self,'btnSendTopPanel','Listele',50,-2,TopPanelButonClick);


//  pnlToolBar.Parent := cxTabSheet1; //cxTopPanelAltOrta;



end;

procedure TfrmSaglikNetOnline.HTTPRIO1AfterExecute(const MethodName: string;
  SOAPResponse: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  Response: UTF8String;
  StrList1: TStringList;
begin
   StrList1 := TStringList.Create;
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   StrList1.add(R);
   StrList1.SaveToFile('sysOnlineKayitCvp.XML');
   StrList1.Free;
end;
procedure TfrmSaglikNetOnline.HTTPRIO1BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  memo : Tmemo;
  m : TStringList;
  R: UTF8String;
  Response: UTF8String;
  StrList1: TStringList;
   Header ,Footer : Widestring;
begin
   StrList1 := TStringList.Create;
   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));

   R := msg;
   Header := '<soap:Envelope '+
    'xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" '+
    'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '+
    'xmlns:xsd="http://www.w3.org/2001/XMLSchema" '+
    'xmlns:xs="http://www.w3.org/2001/XMLSchema" '+
    'xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" '+
    'xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" '+
    'xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">'+
    '<soap:Header>'+
        '<wsse:Security>'+
            '<wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
                '<wsse:Username>534327</wsse:Username>'+
                '<wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">dd123456</wsse:Password>'+
            '</wsse:UsernameToken>'+
        '</wsse:Security>'+
    '</soap:Header>' +
        '<soap:Body>'+
        '<SYSSendMessage>'+
            '<input>';

   Footer :=   '</input>'+
            '</SYSSendMessage>'+
          '</soap:Body>';
  //  '</soap:Envelope>';

   StrList1.add(Header + msg + Footer);

   (*
   StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Body>','<soap:Body>',[RfReplaceAll]);
   StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Body>','</soap:Body>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',Header,[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Envelope>','</soap:Envelope>',[RfReplaceAll]);

  StrList1.text := StringReplace(StrList1.text,'<SYSSendMessage xmlns="https://sys.sagliknet.saglik.gov.tr/SYS/">','<SYSSendMessage>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'&gt;','>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'&lt;','<',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Body>','</soap:Body>',[RfReplaceAll]);
  StrList1.text := StringReplace(StrList1.text,'</SOAP-ENV:Envelope>','</soap:Envelope>',[RfReplaceAll]);
  *)
  StrList1.text := UTF8Encode(StrList1.text);

   SOAPRequest.Position := 0;
   StrList1.SaveToStream(SOAPRequest);

   SetLength(R, SOAPRequest.Size);
   SOAPRequest.Position := 0;
   SOAPRequest.Read(R[1], Length(R));

   StrList1.SaveToFile('sysOnlineKayit.XML');
   StrList1.Free;
end;
end.
