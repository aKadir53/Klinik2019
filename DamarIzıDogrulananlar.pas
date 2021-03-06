unit DamarIzıDogrulananlar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, BaseGrid, AdvGrid, Buttons, sBitBtn,
  AdvToolBtn, ExtCtrls,kadir,StrUtils , asprev,ComObj,kadirmedula3,
  ComCtrls, InvokeRegistry, Rio, SOAPHTTPClient,adodb, HizmetKayitIslemleriws,
  sComboBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxCheckBox, cxCalendar, cxGridCustomTableView,
  cxGridTableView, cxControls, cxGridCustomView, cxClasses, cxGridLevel,
  cxGrid, cxLookAndFeels, cxLookAndFeelPainters, Menus, AdvObj, cxContainer,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, rxAnimate, rxGIFCtrl, cxGroupBox, DBGridEhGrouping,data_modul,
  ToolCtrlsEh, DBGridEhToolCtrls, GridsEh, DBGridEh, DB, dxSkinscxPCPainter,
  cxDBData, cxCurrencyEdit, cxGridDBTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxPCdxBarPopupMenu, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, KadirLabel, cxPC,GirisUnit,GetFormClass,KadirType;

type
  TfrmDamarIzi = class(TGirisForm)
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    K1: TMenuItem;
    H1: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    txtDonem: TcxDateEditKadir;
    cxGrid4: TcxGridKadir;
    gridHastalar: TcxGridDBTableView;
    gridHastalarTc: TcxGridDBColumn;
    gridHastalarHasta: TcxGridDBColumn;
    gridHastalarTarih: TcxGridDBColumn;
    gridHastalarbrans: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView2Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView2Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView3: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView4: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView4Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Column3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Column4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Column5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView4Column6: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    gridHastalarColumn1: TcxGridDBColumn;
    N1: TMenuItem;
    H2: TMenuItem;
    HastalarnSeanslarnOnayla1: TMenuItem;
    E1: TMenuItem;
    procedure cxButtonCClick(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sBitBtn9Click(Sender: TObject);
    procedure KimlikDogrulananHastalar;
    procedure KimlikDogrulananHastaSeansOnaylaListe;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmDamarIzi: TfrmDamarIzi;
implementation

uses HastaKart,AnaUnit;

{$R *.dfm}

procedure TfrmDamarIzi.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doğrula',71,sqlInsert);
  cxPanel.Visible := false;


//  setDataStringKontrol(self,cxGroupBox1,'cxGroupBox1','',kolon1,'',750,0,alClient,'');
  kolon2.Visible := false;
  kolon3.Visible := false;
  kolon4.Visible := false;

  SayfaCaption('Kimlik Doğrulama Listesi','','','','');
end;

function TfrmDamarIzi.Init(Sender : TObject) : Boolean;
begin
   txtDonem.Date := date;
   Result := True;
end;

procedure TfrmDamarIzi.cxButtonCClick(Sender: TObject);
var
  Form : TGirisForm;
  r : integer;
  dosyaNo,Tc : string;
begin
inherited;
  case Tcontrol(sender).Tag of
  -1 : begin
          KimlikDogrulananHastalar;
       end;
  -2 : begin
           r := gridHastalar.DataController.DataControllerInfo.FocusedRecordIndex;
           Tc := vartoStr(gridHastalar.DataController.Values[r, 0]);
           if FindTab(AnaForm.sayfalar,'TabfrmHastaKart')
           Then begin
             Form := TGirisForm(FormClassType(TagfrmHastaKart));
             TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := dosyaNo;
             TGirisForm(FormClassType(TagfrmHastaKart)).Init(Form);
           end
           Else begin
            Form := FormINIT(TagfrmHastaKart,self,dosyaNo,NewTab(AnaForm.sayfalar,'TabfrmHastaKart'),ikEvet,'Giriş');
            if Form <> nil then Form.show;
           end;
        end;
   -3 : begin

         //onayla

        end;

  end;


end;

procedure TfrmDamarIzi.KimlikDogrulananHastalar;
var
  tc , tarih , tesis , cvp ,msj , yas ,ad : string;
  satir : integer;
begin
  DurumGoster;
  try
    tesis := inttostr(datalar._kurumKod);
    tarih := datetostr(txtDonem.Date);
    tc := '';
    cvp := DamarIziDogrulamaSorgula(tc,tarih,tesis,yas,msj,ad);
    ShowMessageSkin(msj,'','','info');
  finally
    DurumGoster(false);
  end;
end;

procedure TfrmDamarIzi.KimlikDogrulananHastaSeansOnaylaListe;
var
  Tc : string;
begin
    while not datalar.memData_DamarIzi.Eof do
    begin
      Tc := Tc + datalar.memData_DamarIzi.FieldByName('tc').AsString + ',';
      datalar.memData_DamarIzi.Next;
    end;

    datalar.QuerySelect('exec sp_DamariziKontrolSeansOnayi ' + QuotedStr(tc) + ',' + txtDonem.GetSQLValue());




end;

procedure TfrmDamarIzi.sBitBtn2Click(Sender: TObject);
var
   satir : integer;
   oncekiTalepBilgisi : string;
begin

  (*
    if mrYes = ShowMessageSkin('İşaretlenen Seanslar İçin Talep İşlemi Başlayacak','Onaylıyormusunuz ?','','msg')
    then begin

             for satir := 1 to gridHastalar.RowCount - 1 do
             begin
                  Application.ProcessMessages;
                  if gridHastalar.Cells[25,satir] = 'T'
                  then begin
                      if gridHastalar.Cells[5,satir] = ''
                      Then begin
                              gridHastalar.Row := satir;
                              digerIslemTalepdoldur(satir);
                              gridHastalar.Cells[5,satir] := digerIslemTalepYap(datalar.DigerIslemTalebi,oncekiTalepBilgisi);
                              if copy(gridHastalar.Cells[5,satir],1,4) = 'Hata'
                              then begin
                                       txtLog.Lines.Add(gridHastalar.Cells[1,satir]+' - '+gridHastalar.Cells[5,satir]);
                                       gridHastalar.Cells[5,satir] := '';
                              end;
                      end;
                  end;
             end;
    end;

    btnSend.Click;
    *)
end;

procedure TfrmDamarIzi.sBitBtn9Click(Sender: TObject);
begin

           //  frmHastaKarti.KartGetir(gridHastalar.Cells[1,gridHastalar.Row]);
           //  frmHastaKarti.Gelisler(gridHastalar.Cells[1,gridHastalar.Row],'0');
            // frmHastaKarti.Durum(1);
            // frmHastaKarti.btnGuncelle.Enabled := True;
            // Disabled(frmHastaKarti);
             close;


end;

end.
