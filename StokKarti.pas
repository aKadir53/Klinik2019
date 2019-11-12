unit StokKarti;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxGroupBox, DB, ADODB,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,kadirType,KadirLabel,Kadir,
  GirisUnit,Data_Modul, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, cxCheckBox, cxLabel,
  cxStyles, cxVGrid, cxDBVGrid, cxInplaceContainer,dxLayoutContainer,cxDropDownEdit;



type
  TfrmStokKarti = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    Y1: TMenuItem;
    Stoklar: TListeAc;
    K1: TMenuItem;
    S1: TMenuItem;
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
  private
    { Private declarations }
  public
    { Public declarations }
     function Init(Sender: TObject) : Boolean; override;
  end;

const _TableName_ = 'ILACSARF';
      formGenislik = 500;
      formYukseklik = 500;

var
  frmStokKarti: TfrmStokKarti;


implementation


{$R *.dfm}
procedure TfrmStokKarti.cxButtonCClick(Sender: TObject);
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

procedure TfrmStokKarti.cxButtonEditPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
begin
  inherited;
  if length(datalar.ButtonEditSecimlist) > 0 then
  begin
    enabled;
  end;
end;

procedure TfrmStokKarti.ButtonClick(Sender: TObject);
begin
//
end;

procedure TfrmStokKarti.cxEditEnter(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmStokKarti.cxEditExit(Sender: TObject);
begin
  inherited;
  //

end;

procedure TfrmStokKarti.cxTextEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
  // if key  then


end;

procedure TfrmStokKarti.FormCreate(Sender: TObject);
var
  IC : TcxImageComboKadir;
  Tarih,KTarih,TaniTarih : TcxDateEditKadir;

begin
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'id';
  TableName := _TableName_;
  Menu := PopupMenu1;

  setDataStringB(self,'id','ID',Kolon1,'',70,Stoklar,True,nil,'','',False,True,-100);

  setDataString(self,'CODE','Stok Kodu',Kolon1,'',120,True);
  setDataString(self,'NAME1','Stok Tanimi',Kolon1,'',250,True);
  setDataString(self,'NAME2','Stok Tanimi 2',Kolon1,'',250,True);

  IC := TcxImageComboKadir.Create(self);
  IC.Conn := Datalar.ADOConnection2;
  IC.TableName := 'Stok_Ana_Grup';
  IC.ValueField := 'Kod';
  IC.DisplayField := 'Tanimi';
  IC.BosOlamaz := False;
  IC.Filter := '';
  setDataStringKontrol(self,IC,'Grup','Stok Grubu',Kolon1,'',120,0,alNone,'');
  TcxImageComboKadir(FindComponent('Grup')).Properties.OnEditValueChanged := PropertiesEditValueChanged;//SirketlerPropertiesChange;


  setDataString(self,'firmaTanimliyiciDef','Firma Tanimliyici Kod',Kolon1,'',120,True);
  Tarih := TcxDateEditKadir.Create(nil);
  Tarih.ValueTip := tvString;
  setDataStringKontrol(self,Tarih,'enSonAlisTarihi','En Son Aliþ Tarihi',Kolon1,'',120,0,alNone,'');

  setDataStringCurr(self,'MinMiktar','Min Miktar',Kolon1,'',120,'0',1);



  (*

  setDataStringKontrol(self,DiyalizorGrid ,'DiyalizorGrid','Özellikleri',Kolon1,'',250,80,alNone,'');
  setDataStringKontrol(self,IgneGrid ,'IgneGrid','Özellikleri',Kolon1,'',250,80,alNone,'');
  TdxLayoutGroup(FindComponent('dxLaDiyalizorGrid')).Visible := False;
  TdxLayoutGroup(FindComponent('dxLaIgneGrid')).Visible := False;
    *)

  Kolon2.Visible := False;
  Kolon3.Visible := False;
  Kolon4.Visible := False;

  SayfaCaption('Stok Kart','','','','');


  Disabled(self,True);


 end;





function TfrmStokKarti.Init(Sender: TObject): Boolean;
begin


 Result := True;
end;

procedure TfrmStokKarti.PropertiesEditValueChanged(Sender: TObject);
var
  ado : TADOQuery;
  IC_Params : TstringList;
  field,caption,_params_ ,_ICParams_, TableName,kod,tanimi,filter,tt : string;
  grp : integer;
begin
  inherited;

  if TcxImageComboKadir(sender).Name = 'Grup'
  then begin
   IC_Params := TStringList.Create;
   ado := TADOQuery.Create(nil);
   ado.Connection := datalar.ADOConnection2;
   try

       datalar.QuerySelect(ado,'select * from stok_ana_grup_Ozellikleri');
       while not ado.Eof do
       begin
           field := ado.FieldByName('tanimi').AsString;
           if Assigned(TdxLayoutGroup(FindComponent('dxLa'+field)))
            then begin
             TdxLayoutGroup(FindComponent('dxLa'+field)).Visible := False;
             TcxCustomEdit(FindComponent(field)).Tag := -100;
             TcxCustomEdit(FindComponent(field)).EditValue := null;
            end;
            ado.next;
       end;

       grp := TcxImageComboKadir(FindComponent('Grup')).EditValue;
       datalar.QuerySelect(ado,'select * from stok_ana_grup_Ozellikleri  ' +
                               'where Stok_ana_grup = ' + intToStr(grp) +
                               ' order by sira ');

       while not ado.Eof do
       begin
         IC_Params.Clear;
         field := ado.FieldByName('tanimi').AsString;
         caption :=  ado.FieldByName('Caption').AsString;
         _params_ := copy(ado.FieldByName('IC_Params').AsString,1,
                           pos(',',ado.FieldByName('IC_Params').AsString)-1);

         _ICParams_ := copy(ado.FieldByName('IC_Params').AsString,
                             pos(',',ado.FieldByName('IC_Params').AsString)+1,100);

         ExtractStrings([';'],[],PChar(_ICParams_),IC_Params);

         if _params_ = 'IC'
         then begin
            if not Assigned(TcxImageComboKadir(FindComponent(field)))
            then begin
              TableName := IC_Params[0];
              kod := IC_Params[1];
              tanimi := IC_Params[2];
              setDataStringIC(self,field,caption,kolon1,'',120,TableName,kod,tanimi,'',100);
              TcxImageComboKadir(FindComponent(field)).Filter := '';
              TcxImageComboKadir(FindComponent(field)).EditValue := sqlRun.FieldByName(field).Value;
            end
            else begin
             TdxLayoutGroup(FindComponent('dxLa'+field)).Visible := True;
             TcxCustomEdit(FindComponent(field)).Tag := 1;
            end;
         end
         else
         if _params_ = 'C'
         then begin
            if not Assigned(TcxComboBox(FindComponent(field)))
            then begin
               setDataStringC(self,field,caption,kolon1,'',120,IC_Params);
               TcxCustomEdit(FindComponent(field)).EditValue := sqlRun.FieldByName(field).Value;
            end
            else begin
              TdxLayoutGroup(FindComponent('dxLa'+field)).Visible := True;
              TcxCustomEdit(FindComponent(field)).Tag := 1;
            end;
         end
         else
          if not Assigned(TcxTextEdit(FindComponent(field)))
            then begin
              setDataString(self,field,caption,kolon1,'',120);
              TcxCustomEdit(FindComponent(field)).EditValue := sqlRun.FieldByName(field).Value;
            end
              else begin
                TdxLayoutGroup(FindComponent('dxLa'+field)).Visible := True;
                TcxCustomEdit(FindComponent(field)).Tag := 1;
              end;
          ado.Next;
       end;

   finally
      ado.free;
      IC_Params.free;
   end;

  end;


end;

procedure TfrmStokKarti.Yazdir;
var
  Data : TDataSetKadir;
begin
//
  //  Data.Dataset0 := sqlrun;

   // PrintYap('OBF','Olay Bildirim','0',Data);


end;

procedure TfrmStokKarti.cxKaydetClick(Sender: TObject);
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
