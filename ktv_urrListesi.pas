unit ktv_urrListesi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, sBitBtn, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, adodb,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,kadir,KadirType,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridExportLink,
  cxClasses, cxGridCustomView, cxGrid, cxContainer, cxProgressBar, dxSkinsCore,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, Menus, cxButtons, cxLabel,
  cxTextEdit, cxGroupBox, cxRadioGroup,GirisUnit,
   KadirLabel;

type
  TfrmKtvListesi = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    K1: TMenuItem;
    GridListe: TcxGridKadir;
    GridList: TcxGridDBTableView;
    GridListColumn1: TcxGridDBColumn;
    GridListColumn2: TcxGridDBColumn;
    GridListColumn3: TcxGridDBColumn;
    GridListColumn4: TcxGridDBColumn;
    GridListColumn5: TcxGridDBColumn;
    GridListColumn6: TcxGridDBColumn;
    GridListColumn7: TcxGridDBColumn;
    GridListColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    H1: TMenuItem;
    E1: TMenuItem;
    Daugirdas21: TMenuItem;
    Jindal1: TMenuItem;
    Barth1: TMenuItem;
    GridListColumn9: TcxGridDBColumn;
    E2: TMenuItem;
    GridListColumn10: TcxGridDBColumn;
    GridListColumn11: TcxGridDBColumn;
    procedure DiyalizTipPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure TopPanelButonClick(Sender: TObject);
    procedure Hesaplat(HesapTipi : string = 'D2');

    procedure cxButtonCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmKtvListesi: TfrmKtvListesi;
  ado : TADOQuery;
  d,g,grup,kod : string;
implementation
     uses data_modul,AnaUnit;
{$R *.dfm}






procedure TfrmKtvListesi.TopPanelButonClick(Sender: TObject);
var
 sql : string;
begin
   sql := ' exec sp_KtvListesi ' + txtTopPanelTarih1.GetSQLValue() + ',' +
                                   txtTopPanelTarih2.GetSQLValue + ',' +
                                   QuotedStr(datalar.AktifSirket) +
                                   ',@tip = ' + QuotedStr('H');
   datalar.QuerySelect(GridListe.Dataset,sql);

end;

procedure TfrmKtvListesi.cxButtonCClick(Sender: TObject);
var
  formul : string;
  satir : integer;
begin
   inherited;

   satir := GridList.Controller.SelectedRows[0].RecordIndex;

   datalar.KtvUrr.dosyaNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('dosyaNo').Index);
   datalar.KtvUrr.gelisNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('gelisNo').Index);
   datalar.KtvUrr.hasta := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('ad').Index);
   datalar.KtvUrr.Ktv :=  GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('Kt_v').Index);
   datalar.KtvUrr.Urr := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('Urr').Index);
   datalar.KtvUrr.DuzCa := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('DuzCa').Index);
   datalar.KtvUrr.CaxP := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('CaxP').Index);
   datalar.KtvUrr.TS := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('TS').Index);

   case Tcontrol(sender).Tag of
   -10 : begin
            if mrYes = ShowPopupForm('Ktv/Urr',KtvUrrDuzenle)
            then begin
              datalar.QueryExec('update LabSonucDegerlendirme ' +
                                ' set kt_v = ' + FloatTostr(datalar.KtvUrr.Ktv) + ',' +
                                ' urr = ' + FloatTostr(datalar.KtvUrr.urr) + ',' +
                                ' DuzCa = ' + FloatTostr(datalar.KtvUrr.DuzCa) + ',' +
                                ' CaxP = ' + FloatTostr(datalar.KtvUrr.CaxP) + ',' +
                                ' TS = ' + FloatTostr(datalar.KtvUrr.TS) +
                                ' where dosyaNo = ' + QuotedStr(datalar.KtvUrr.dosyaNo)  +
                                ' and gelisNo = ' + datalar.KtvUrr.gelisNo
                               );

              TopPanelButonClick(self);
            end;
         end;
   -2,-3,-4 : begin
                case TMenuItem(Sender).Tag of
                -2 : formul := 'D2';
                -3 : formul := 'J';
                -4 : formul := 'D';
                end;

                Hesaplat(formul);
              end;
   end;

end;

procedure TfrmKtvListesi.cxKaydetClick(Sender: TObject);
var
   Dosya : string;
begin
inherited;
//
   case Tcontrol(sender).Tag of
   -3 : begin

        end;
   end;
end;

procedure TfrmKtvListesi.DiyalizTipPropertiesChange(Sender: TObject);
begin
(*   if DiyalizTip.EditValue = 'H'
   then
     btnKtv.Enabled := true
   else
     btnKtv.Enabled := false;
  *)
end;

procedure TfrmKtvListesi.FormCreate(Sender: TObject);
begin
  inherited;
  Tag := TagfrmKtvListesi;
//  ClientHeight := formYukseklik;
//  ClientWidth := formGenislik;

  TableName := '';
  cxPanel.Visible := False;
  TopPanel.Visible := true;
  cxTab.Width := 200;
  SayfaCaption('','','','','');
  Olustur(self,'','',23);
  Menu := PopupMenu1;
end;

procedure TfrmKtvListesi.Hesaplat(HesapTipi : string = 'D2');
var
  sql ,dosyaNo,gelisNo: string;
  ktvHesap : string;
  i ,satir : integer;
begin
  DurumGoster(True,True,'Hesaplamalar Yapýlýyor...',-1,GridList.Controller.SelectedRowCount);
  try
  if mrYes = ShowMessageSkin('Ktv,URR,CaxP,Düzenlenmiþ Ca deðerleri hesaplanacak','Test Sonuçlarýnýn ve giriþ çýkýþ kilolarýnýn girili olmasý gereklidir','Devam Edilsinmi','msg' )
  Then Begin
     for i := 0 to GridList.Controller.SelectedRowCount - 1 do
     begin
        satir := GridList.Controller.SelectedRows[i].RecordIndex;
        dosyaNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('dosyaNo').Index);
        gelisNo := GridList.DataController.GetValue(satir,GridList.DataController.GetItemByFieldName('gelisNo').Index);
        try
          sql := 'sp_KtvHesapla ' + QuotedStr(dosyaNo) + ',' + gelisNo + ',' + QuotedStr(HesapTipi) + ',' + QuotedStr(datalar._labID);
          datalar.QueryExec(sql);
        except
        end;
        pBar.Position := pBar.Position + 1;
     end;
     TopPanelButonClick(self);
  End;
  finally
    DurumGoster(False);
  end;

end;

function TfrmKtvListesi.Init(Sender: TObject): Boolean;
begin
//
 inherited;
 TapPanelElemanVisible(True,True,True,false,false,false,False,false,False,False,False,False,False);
 Result := True;
end;

end.
