unit KanTetkikleriTakip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, cxGraphics, cxControls,kadir,kadirType,TedaviKart,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDropDownEdit, cxCalendar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ADODB , cxGridExportLink, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Vcl.Menus,
  GirisUnit, cxContainer, cxCheckBox, KadirLabel, cxTextEdit;

type
  TfrmKanTetkikTakip = class(TfrmTedaviBilgisi)
    GridKanTetkikleri: TcxGridKadir;
    GridTetkikler: TcxGridDBTableView;
    DataSource1: TDataSource;
    cxGridTetkikLevel: TcxGridLevel;
    ADO_Tetkikler: TADOQuery;
    GridTetkiklerColumn1: TcxGridDBColumn;
    GridTetkiklerColumn2: TcxGridDBColumn;
    GridTetkiklerColumn3: TcxGridDBColumn;
    GridTetkiklerColumn4: TcxGridDBColumn;
    GridTetkiklerColumn5: TcxGridDBColumn;
    GridTetkiklerColumn6: TcxGridDBColumn;
    GridTetkiklerColumn7: TcxGridDBColumn;
    GridTetkiklerColumn8: TcxGridDBColumn;
    GridTetkiklerColumn9: TcxGridDBColumn;
    GridTetkiklerColumn10: TcxGridDBColumn;
    GridTetkiklerColumn11: TcxGridDBColumn;
    GridTetkiklerColumn12: TcxGridDBColumn;
    GridTetkiklerColumn13: TcxGridDBColumn;
    GridTetkiklerColumn14: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    SaveDialog1: TSaveDialog;
    GridTetkiklerColumn15: TcxGridDBColumn;
    cxStyle6: TcxStyle;
    ADO_Tele: TADOQuery;
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    E1: TMenuItem;
    K1: TMenuItem;
    H1: TMenuItem;
    T1: TMenuItem;
    chkHepatit: TcxCheckBox;
    procedure KanTetkikleri(dosyaNo,Tarih : string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkHepatitClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure Yazdir(tag : integer);
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure Yukle;override;


  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmKanTetkikTakip: TfrmKanTetkikTakip;
  //_dosyaNo_ ,
  _tarih_ , marker : string;

implementation
   uses data_modul;
{$R *.dfm}

procedure TfrmKanTetkikTakip.Yazdir(tag : integer);
var
  sql : string;
  ado,ado0,ado1,ado2,ado3,ado4,ado5,ado6,ado7,ado8,ado9,ado10,ado11,ado12 : TADOQuery;
  topluset : TDataSetKadir;
begin
    ado := TADOQuery.Create(nil);
    try
      sql := 'select * from hastakart where dosyaNo = ' + QuotedStr(_dosyaNo_);
      datalar.QuerySelect(ado,sql);
      topluset.Dataset0 := ado;


       sql := 'exec sp_HastaTetkikTakipPIVOT @dosyaNo = ' + QuotedStr(_dosyaNo_)  +
                                           ',@yil = ' + QuotedStr(_provizyonTarihi_) + ',@f=-1,@marker=''T''' +
                                           ',@sirketKod = ' + QuotedStr(datalar.AktifSirket);
       datalar.QuerySelect(ADO_Tele,sql);


      if tag = -2
      Then Begin
        KanTetkikleri(_dosyaNo_,_tarih_);
        topluset.Dataset1 := ADO_Tetkikler;
        topluset.Dataset2 := ADO_Tele;

        topluset.Dataset3 := datalar.ADO_AktifSirket;
        topluset.Dataset4 := datalar.ADO_aktifSirketLogo;

        PrintYap('201','\Hasta Tetkik Takip Hepatit',inttostr(TagfrmKanTetkikTakip),topluset,ptNone);

      End
      Else
      Begin
        topluset.Dataset1 := ADO_Tetkikler;
        topluset.Dataset2 := ADO_Tele;
        topluset.Dataset3 := datalar.ADO_AktifSirket;
        topluset.Dataset4 := datalar.ADO_aktifSirketLogo;
        PrintYap('203','\Hasta Tetkik Takip Hepatit',inttostr(TagfrmKanTetkikTakip),topluset,ptNone);

      End;

    finally
      ado.Free;
    end;

end;

procedure TfrmKanTetkikTakip.Yukle;
begin
  inherited;
  KanTetkikleri('','');
end;

procedure TfrmKanTetkikTakip.KanTetkikleri(dosyaNo,Tarih : String);
var
  sql : string;
  ado : TADOQuery;
begin
   marker := 'H';
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try
     sql := 'select SLX from parametreler where SLK = ''30'' and SLB = ''03''';
     datalar.QuerySelect(ado,sql);

     if not ado.eof
     then begin
       marker := 'H'+StringReplace(ado.Fields[0].AsString,'0','',[rfReplaceAll]);
     end;


     sql := 'exec sp_HastaTetkikTakipPIVOT @dosyaNo = ' + QuotedStr(_dosyaNo_)  +
                                          ',@yil = ' + QuotedStr(_provizyonTarihi_) +
                                          ',@f=-1 , @marker = ' + QuotedStr(marker) +
                                          ',@sirketKod = ' + QuotedStr(datalar.AktifSirket);
     datalar.QuerySelect(ADO_Tetkikler,sql);

     Caption  := ADO_Tetkikler.FieldByName('ay1').AsString + ' - ' + ADO_Tetkikler.FieldByName('ay2').AsString;

   finally
     ado.free;
   end;

end;


procedure TfrmKanTetkikTakip.chkHepatitClick(Sender: TObject);
var
 sql : string;
begin
    if chkHepatit.Checked
    Then begin
       sql := 'exec sp_HastaTetkikTakipPIVOT @dosyaNo = ' + QuotedStr(_dosyaNo_)  +
                                           ',@yil = ' + QuotedStr(_provizyonTarihi_) + ',@f=1,@marker=''E''' +
                                           ',@sirketKod = ' + QuotedStr(datalar.AktifSirket);
    end
    Else begin

       sql := 'exec sp_HastaTetkikTakipPIVOT @dosyaNo = ' + QuotedStr(_dosyaNo_)  +
                                           ',@yil = ' + QuotedStr(_provizyonTarihi_) + ',@f=-1,@marker=' + QuotedStr('H')+
                                           ',@sirketKod = ' + QuotedStr(datalar.AktifSirket);

    end;

    datalar.QuerySelect(ADO_Tetkikler,sql);

end;

procedure TfrmKanTetkikTakip.cxButtonCClick(Sender: TObject);
var
   Dosya : string;
begin
  inherited;
  case Tcontrol(sender).tag of
  -1,-2 : begin
           Yazdir(Tcontrol(sender).tag);
          end;
  (*
  ExceleGonder : begin

          SaveDialog1.Execute;
          Dosya := SaveDialog1.FileName;
          try
              ExportGridToExcel(dosya,cxGrid2,False,True);
          except on e : Exception do
             begin
                  ShowMessageSkin('Hata Olu�tu : ' + e.Message,'','','info');
                  exit;
             end;
          end;
             ShowMessageSkin(Dosya + ' ',' Ba�ar� ile Kaydedildi','','info');
           end;
            *)
       end;
end;

procedure TfrmKanTetkikTakip.cxKaydetClick(Sender: TObject);
begin
 inherited;
//
end;

procedure TfrmKanTetkikTakip.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ADO_Tetkikler.Close;
  
end;

procedure TfrmKanTetkikTakip.FormCreate(Sender: TObject);
begin
  Tag := TagfrmKanTetkikTakip;
 // ClientHeight := formYukseklik;
  //ClientWidth := formGenislik;

  TableName := '';
  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('Y�ll�k Tetkik Takip Cetveli','','','','');
  Olustur(self,'','Hasta Tetkikleri',23);
  Menu := PopupMenu1;
end;

function TfrmKanTetkikTakip.Init(Sender: TObject): Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;
  KanTetkikleri('','');
  Result := True;

end;

end.
