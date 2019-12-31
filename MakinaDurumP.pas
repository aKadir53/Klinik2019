unit MakinaDurumP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  cxStyles, cxVGrid, cxDBVGrid, cxInplaceContainer,dxLayoutContainer,cxDropDownEdit,
  cxCheckGroup, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;



type
  TfrmMakinaDurumP = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    Stoklar: TListeAc;
    cxGrid1: TcxGrid;
    Liste: TcxGridDBTableView;
    Listemn: TcxGridDBColumn;
    ListeSeans: TcxGridDBColumn;
    ListeDBColumn01: TcxGridDBColumn;
    ListeDBColumn02: TcxGridDBColumn;
    ListeDBColumn03: TcxGridDBColumn;
    ListeDBColumn04: TcxGridDBColumn;
    ListeDBColumn05: TcxGridDBColumn;
    ListeDBColumn06: TcxGridDBColumn;
    ListeDBColumn07: TcxGridDBColumn;
    ListeDBColumn08: TcxGridDBColumn;
    ListeDBColumn09: TcxGridDBColumn;
    ListeDBColumn10: TcxGridDBColumn;
    ListeDBColumn11: TcxGridDBColumn;
    ListeDBColumn12: TcxGridDBColumn;
    ListeDBColumn13: TcxGridDBColumn;
    ListeDBColumn14: TcxGridDBColumn;
    ListeDBColumn15: TcxGridDBColumn;
    ListeDBColumn16: TcxGridDBColumn;
    ListeDBColumn17: TcxGridDBColumn;
    ListeDBColumn18: TcxGridDBColumn;
    ListeDBColumn19: TcxGridDBColumn;
    ListeDBColumn20: TcxGridDBColumn;
    ListeDBColumn21: TcxGridDBColumn;
    ListeDBColumn22: TcxGridDBColumn;
    ListeDBColumn23: TcxGridDBColumn;
    ListeDBColumn24: TcxGridDBColumn;
    ListeDBColumn25: TcxGridDBColumn;
    ListeDBColumn26: TcxGridDBColumn;
    ListeDBColumn27: TcxGridDBColumn;
    ListeDBColumn28: TcxGridDBColumn;
    ListeDBColumn29: TcxGridDBColumn;
    ListeDBColumn30: TcxGridDBColumn;
    ListeDBColumn31: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DataSource1: TDataSource;
    ADO_List: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure cxKaydetClick(Sender: TObject);override;
    procedure cxTextEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);override;
    procedure cxEditEnter(Sender: TObject);
    procedure cxEditExit(Sender: TObject);
    procedure ButtonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure PropertiesEditValueChanged(Sender: TObject);override;
    procedure Yazdir;
    procedure TopPanelButonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'Null';
      formGenislik = 500;
      formYukseklik = 500;

var
  frmMakinaDurumP: TfrmMakinaDurumP;


implementation


{$R *.dfm}
procedure TfrmMakinaDurumP.cxButtonCClick(Sender: TObject);
var
  Ado : TADOQuery;
  sql : string;
  TopluDataset : TDataSetKadir;
begin
  inherited;
    case TMenuItem(sender).Tag  of
      -1 : begin
             Yazdir;
           end;


    end;
end;

procedure TfrmMakinaDurumP.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
end;

procedure TfrmMakinaDurumP.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmMakinaDurumP.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmMakinaDurumP.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmMakinaDurumP.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmMakinaDurumP.FormCreate(Sender: TObject);
var
 chk : TcxCheckGroupItem;
begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;
     cxPanel.Visible := false;
  Menu := PopupMenu1;

   TopPanel.Visible := True;
   TapPanelElemanVisible(True,True,True,False,False,False,False,False,False,False,False,False,True);

   chkList.Properties.Items.Clear;
   Chk := chkList.Properties.Items.Add;
   Chk.Caption := 'Hastalarý Göster';
   Chk.Tag := 0;
   chkList.Width := 300;


 //  setDataStringKontrol(self,cxGrid1,'cxGrid1','',kolon1,'',1,0,alClient);



  Kolon2.Visible := False;
  Kolon3.Visible := False;
  Kolon4.Visible := False;

  SayfaCaption('Makina Durumlarý','','','','');


 end;





function TfrmMakinaDurumP.Init(Sender: TObject): Boolean;
begin


 Result := True;
end;

procedure TfrmMakinaDurumP.PropertiesEditValueChanged(Sender: TObject);
var
  ado : TADOQuery;
  IC_Params : TstringList;
  field,caption,_params_ ,_ICParams_, TableName,kod,tanimi,filter,tt : string;
  grp : integer;
begin
  inherited;



end;

procedure TfrmMakinaDurumP.TopPanelButonClick(Sender: TObject);
var
 x ,cw : integer;
 sql : string;
begin
  ADO_List.Close;
  ADO_List.Parameters[0].Value := txtTopPanelTarih1.GetValue;
  ADO_List.Parameters[1].Value := txtTopPanelTarih2.GetValue;;
  ADO_List.Parameters[2].Value := chkList.EditValue;
  ADO_List.Parameters[3].Value := datalar.AktifSirket;

  ADO_List.Open;

  if chkList.EditValue = '1'
  then cw := 100 else cw := 35;

  for x := 2 to 32 do
  begin
   try
    Liste.Columns[x].Width := cw;
   except
   end;
  end;


   Liste.ViewData.Expand(True);
end;

procedure TfrmMakinaDurumP.Yazdir;
var
  Data : TDataSetKadir;
begin
//
  //  Data.Dataset0 := sqlrun;

   // PrintYap('OBF','Olay Bildirim','0',Data);


end;

procedure TfrmMakinaDurumP.cxKaydetClick(Sender: TObject);
begin
  inherited;
  case TcxButton(sender).Tag  of
    0 : begin
        // ShowMessage('Kaydet');
        // ButonClick(self,'k');
      //   Olustur(self,'Users');
      //   setDataString(self,'ADISOYADI',100,10);

        end;
    1 : begin
         // post;
         //ShowMessage('Ýptal');
    end;
  end;
end;

end.
