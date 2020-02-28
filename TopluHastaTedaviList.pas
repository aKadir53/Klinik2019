unit TopluHastaTedaviList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, adodb,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,strutils,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Grids, AdvObj, BaseGrid, AdvGrid, cxTextEdit, kadir,
  cxDropDownEdit, cxCalendar, cxMaskEdit, StdCtrls, sComboBox, Buttons, sBitBtn,
  ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,GirisUnit,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, cxImageComboBox, Menus, cxCurrencyEdit, cxLabel, dxGDIPlusClasses,
  cxGroupBox,cxCheckGroup,KadirLabel,KadirType,GetFormClass,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmTopluHastaTedaviListesi = class(TGirisForm)
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    H1: TMenuItem;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    cxGrid1: TcxGridKadir;
    GridTopluTedaviListesi: TcxGridDBTableView;
    GridTopluTedaviListesia: TcxGridDBColumn;
    GridTopluTedaviListesi_dg_: TcxGridDBColumn;
    GridTopluTedaviListesisira: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn1: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn2: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn3: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn4: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn5: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn6: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn7: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn8: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn9: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn10: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn11: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn12: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn13: TcxGridDBColumn;
    GridTopluTedaviListesiDBColumn14: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    S1: TMenuItem;
    SARIBANT: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure GridTopluTedaviListesiCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GridTopluTedaviListesiStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmTopluHastaTedaviListesi : TfrmTopluHastaTedaviListesi;
  siraNo : string;

implementation
   uses data_modul,AnaUnit;
{$R *.dfm}

procedure TfrmTopluHastaTedaviListesi.cxButtonCClick(Sender: TObject);
var
 GirisFormRecord : TGirisFormRecord;
 F : TGirisForm;
 dosyaNo,sirketKod,sube : string;
 i : integer;
 DosyaNos , sql : string;
 ado : TADOQuery;
 topluset : TDataSetKadir;
  row , col : integer;
begin
  datalar.KontrolUserSet := False;

  case Tcontrol(sender).tag of
 -2 : begin
        if GridTopluTedaviListesi.Controller.SelectedRowCount > 0
        Then begin
           dosyaNo := ADOQuery1.FieldByName('dosyaNo').AsString;
           if FindTab(AnaForm.sayfalar,TagfrmHastaKart)
           Then begin
             F := TGirisForm(FormClassType(TagfrmHastaKart));
             TGirisForm(FormClassType(TagfrmHastaKart))._dosyaNO_ := dosyaNo;
             TGirisForm(FormClassType(TagfrmHastaKart))._TC_ := '';
             TGirisForm(FormClassType(TagfrmHastaKart)).Init(F);
           end
           Else begin
            F := FormINIT(TagfrmHastaKart,self,dosyaNo,NewTab(AnaForm.sayfalar,TagfrmHastaKart),ikEvet,'Giriþ');
            if F <> nil then F.show;
           end;
        end;
       end;
 -3 : begin

          if  varToStr(GridTopluTedaviListesi.DataController.GetValue(
                   GridTopluTedaviListesi.Controller.SelectedRows[0].RecordIndex,
                   GridTopluTedaviListesi.DataController.GetItemByFieldName('_dg_').Index)) = 'ID'
          then begin
                 col := GridTopluTedaviListesi.Controller.FocusedColumn.Index;
                 siraNo := varToStr(GridTopluTedaviListesi.DataController.GetValue(
                   GridTopluTedaviListesi.Controller.SelectedRows[0].RecordIndex,
                   col));

                 DurumGoster(True,False,'Seans Gözlem Yükleniyor');
                 try
                   SeansDuzenle(strToint(siraNo));
                 finally
                   DurumGoster(False);
                 end;
          end;
      end;

  end;

  inherited;
end;




procedure TfrmTopluHastaTedaviListesi.FormCreate(Sender: TObject);
begin
  Menu := PopupMenu1;
 // Olustur(self,_TableName_,'Kimlik Doðrula',71,sqlInsert);
  cxPanel.Visible := false;

  TopPanel.Visible := True;
  TapPanelElemanVisible(True,True,True,False,False,False,False,False,False,False,False,False,False);


end;

procedure TfrmTopluHastaTedaviListesi.GridTopluTedaviListesiCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  row , col : integer;
begin
(*
  if  varToStr(GridTopluTedaviListesi.DataController.GetValue(
           GridTopluTedaviListesi.Controller.SelectedRows[0].RecordIndex,
           GridTopluTedaviListesi.DataController.GetItemByFieldName('_dg_').Index)) = 'ID'
  then begin
         col := ACellViewInfo.Item.Index;

         siraNo := varToStr(GridTopluTedaviListesi.DataController.GetValue(
           GridTopluTedaviListesi.Controller.SelectedRows[0].RecordIndex,
           col));

         SeansDuzenle(strToint(siraNo));

  end;
  *)
end;

procedure TfrmTopluHastaTedaviListesi.GridTopluTedaviListesiStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin

  GridTopluTedaviListesi.Styles.Group := cxStyle2;

  if  varToStr(GridTopluTedaviListesi.DataController.GetValue(
               ARecord.RecordIndex,
               GridTopluTedaviListesi.DataController.GetItemByFieldName('_dg_').Index)) = 'ID'
  then begin
      AStyle := SARIBANT;
  end;

end;

function TfrmTopluHastaTedaviListesi.init(Sender: TObject): Boolean;
begin
  Result := True;
end;

procedure TfrmTopluHastaTedaviListesi.TopPanelButonClick(Sender: TObject);
var
  sql : string;
begin

  DurumGoster(True);
  try
    ADOQuery1.Close;
    ADOQuery1.Parameters[0].Value := txtTopPanelTarih1.GetValue;
    ADOQuery1.Parameters[1].Value := txtTopPanelTarih2.GetValue;
    ADOQuery1.Open;

    GridTopluTedaviListesi.ViewData.Expand(True);

  finally
    DurumGoster(False);
  end;

end;



end.
