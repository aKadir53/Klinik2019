unit IlacEtkenMadde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, BaseGrid, AdvGrid, DBAdvGrd, sPanel, StdCtrls,
  Buttons, sBitBtn, ExtCtrls,Kadir, Mask,GirisUnit,
  EditType, DBGridEh, ImgList, ComCtrls, JvExComCtrls, JvComponent,
  JvDBTreeView, Menus, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, DBCtrls,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, GridsEh, dxtree, dxdbtree,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmIlacEtkenMaddeSutKural = class(TGirisForm)
    pnlOnay: TPanel;
    txtinfo: TLabel;
    btnSend: TsBitBtn;
    btnVazgec: TsBitBtn;
    ado_BransKodlari: TADOQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    YeniAnaKurum1: TMenuItem;
    N1: TMenuItem;
    KurumEkle1: TMenuItem;
    KurumSil1: TMenuItem;
    AnaKurumSil1: TMenuItem;
    KurumDzenle1: TMenuItem;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    DataSource3: TDataSource;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    DBMemo2: TDBMemo;
    Label4: TLabel;
    DBMemo3: TDBMemo;
    cxGroupBox3: TcxGroupBox;
    DBGridEh1: TDBGridEh;
    DataSource4: TDataSource;
    DBGridEh2: TDBGridEh;
    Label5: TLabel;
    N2: TMenuItem;
    T1: TMenuItem;
    T2: TMenuItem;
    Edit1: TEdit;
    cxGrid1: TcxGrid;
    gridIlacSarf: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    gridIlacSarfkod: TcxGridDBColumn;
    gridIlacSarftanimi: TcxGridDBColumn;
    ADO_EtkenMaddeSUT: TADOQuery;
    ADO_EtkenMaddeTetkik: TADOQuery;
    procedure btnVazgecClick(Sender: TObject);
    procedure btnAraClick(Sender: TObject);
    procedure btnGuncelleClick(Sender: TObject);
    procedure Bilgiler;
    procedure ado_BransKodlariAfterPost(DataSet: TDataSet);
    procedure btnKaydetClick(Sender: TObject);
    procedure gridDoktorlarDblClick(Sender: TObject);
    procedure YeniAnaKurum1Click(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure KurumSil1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ado_BransKodlariAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIlacEtkenMaddeSutKural: TfrmIlacEtkenMaddeSutKural;

implementation
  uses Data_modul;// yeniKurum, yeniIlac;
{$R *.dfm}

procedure TfrmIlacEtkenMaddeSutKural.ado_BransKodlariAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
      ADO_EtkenMaddeSUT.Active := False;
      ADO_EtkenMaddeSUT.Parameters[0] := ado_BransKodlari.FieldByName('kod');
      ADO_EtkenMaddeSUT.Active := True;

      ADO_EtkenMaddeTetkik.Active := False;
      ADO_EtkenMaddeTetkik.Parameters[0] := ado_BransKodlari.FieldByName('kod');
      ADO_EtkenMaddeTetkik.Active := True;
end;

procedure TfrmIlacEtkenMaddeSutKural.Bilgiler;
begin
  //  ado_BransKodlari.Active := True;
 //   ADO_EtkenMaddeSUT.Active := True;
  //  ADO_EtkenMaddeTetkik.Active := True;

end;

procedure TfrmIlacEtkenMaddeSutKural.btnVazgecClick(Sender: TObject);
begin
    ado_BransKodlari.Active := false;
    ADO_EtkenMaddeSUT.Active := false;
    ADO_EtkenMaddeTetkik.Active := false;
    close;
end;

procedure TfrmIlacEtkenMaddeSutKural.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if (key in ['A'..'Z','a'..'z',#13]) and (Length(Edit1.Text) >= 3)
   then begin
      ado_BransKodlari.active := False;
      ado_BransKodlari.Parameters[0] := edit1.Text + '%';
      ado_BransKodlari.Active := True;

      ADO_EtkenMaddeSUT.Parameters[0] := ado_BransKodlari.FieldByName('kod');
      ADO_EtkenMaddeSUT.Active := True;

      ADO_EtkenMaddeTetkik.Parameters[0] := ado_BransKodlari.FieldByName('kod');
      ADO_EtkenMaddeTetkik.Active := True;
   end;
end;

procedure TfrmIlacEtkenMaddeSutKural.FormCreate(Sender: TObject);
begin
    FormStyle := fsNormal;
    TopPanel.Visible := False;
    cxPanel.Visible := False;

end;

procedure TfrmIlacEtkenMaddeSutKural.btnAraClick(Sender: TObject);
begin

//   ado_BransKodlari.Append;
//   gridDoktorlar.Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing];

   if TsBitBtn(sender).Tag = 18
   then begin
        KurumEkle1.Click;
   end;

   if TsBitBtn(sender).Tag = 5
   then begin
     (*
      Application.CreateForm(TfrmYeniKurum, frmYeniKurum);
      frmYeniKurum.Durum(1,txtIL.Text,txtKurum.Text,txtKurumTipi.Text,ado_BransKodlari.Fields[0].asstring);
      GorselAyar(frmYeniKurum,frmAna.global_img_list4);
      frmYeniKurum.ShowModal;
      *)
   end;



end;

procedure TfrmIlacEtkenMaddeSutKural.btnGuncelleClick(Sender: TObject);
begin

  if mrYes = ShowMessageSkin('Satýr Silmek Ýstediðinize Eminmisiniz ?','','','msg')
  then begin
       ado_BransKodlari.Delete;
  end;


end;

procedure TfrmIlacEtkenMaddeSutKural.ado_BransKodlariAfterPost(DataSet: TDataSet);
begin

//   gridDoktorlar.Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing , goRowSelect];


end;

procedure TfrmIlacEtkenMaddeSutKural.btnKaydetClick(Sender: TObject);
var
  sql : string;
begin


     


(*
   sql := 'select * from Kurumlar ' +
          ' where KURUMTIPI like ' + #39 + copy(txtKurumTipi.Text,1,1) + '%' + #39 +
          ' and IlIlce like ' + #39 + txtIL.Text + '%' + #39 +
          ' and ADI1 like ' + #39 + txtKurum.Text + '%' + #39;
   datalar.QuerySelect(ado_BransKodlari,sql);

   if ado_BransKodlari.Eof
   then begin
       if mrYes = ShowMessageSkin('Kurum Kartý Yok Tanýmlamak Ýstermisiniz ?','','','msg')
       then begin
            btnAra.Click;
       end;

   end;

  *)

end;

procedure TfrmIlacEtkenMaddeSutKural.gridDoktorlarDblClick(Sender: TObject);
begin
    // btnPol.Click;
end;

procedure TfrmIlacEtkenMaddeSutKural.YeniAnaKurum1Click(Sender: TObject);
var
  _kad_id , _ust_id , code , grup ,etken,tipi ,name, unite , tani , farkod : string;
  tetkik,aktif : boolean;
begin
    (*

    case TPopupMenu(sender).Tag of
      0 : begin
              grup := '';//ado_BransKodlari.fieldbyname('Grup').AsString;
              Application.CreateForm(TfrmYeniIlac, frmYeniIlac);

              frmYeniIlac.Durum('0','0',0,'',grup,etken,tipi,name,unite,tani,farkod,tetkik,aktif);
              GorselAyar(frmYeniIlac,datalar.global_img_list4);
              frmYeniIlac.ShowModal;
          end;

      2 : begin
              //_kad_id := ado_BransKodlari.fieldbyname('Kat_id').AsString;
              _ust_id := ado_BransKodlari.fieldbyname('Kat_id').AsString;
              grup := ado_BransKodlari.fieldbyname('Grup').AsString;
              etken := ado_BransKodlari.fieldbyname('EtkenMadde').AsString;
              Application.CreateForm(TfrmYeniIlac, frmYeniIlac);
              frmYeniIlac.Durum(_kad_id,_ust_id,0,'',grup,etken,tipi,name,unite,tani,farkod,tetkik,aktif);
              GorselAyar(frmYeniIlac,datalar.global_img_list4);
              frmYeniIlac.ShowModal;
          end;

      4 : begin
              _kad_id := ado_BransKodlari.fieldbyname('Kat_id').AsString;
              _ust_id := ado_BransKodlari.fieldbyname('ust_id').AsString;
              code := ado_BransKodlari.fieldbyname('code').AsString;
              grup := ado_BransKodlari.fieldbyname('Grup').AsString;
              etken := ado_BransKodlari.fieldbyname('EtkenMadde').AsString;
              tipi := ado_BransKodlari.fieldbyname('tip').AsString;
              tetkik := ado_BransKodlari.fieldbyname('tetkikSonuc').AsBoolean;
              aktif := ado_BransKodlari.fieldbyname('aktif').AsBoolean;
              name := ado_BransKodlari.fieldbyname('name1').AsString;
              unite := ado_BransKodlari.fieldbyname('UNITE').AsString;
              tani := ado_BransKodlari.fieldbyname('Tani').AsString;
              farkod := ado_BransKodlari.fieldbyname('FAR_KOD').AsString;
              Application.CreateForm(TfrmYeniIlac, frmYeniIlac);
              frmYeniIlac.Durum(_kad_id,_ust_id,1,code,grup,etken,tipi,name,unite,tani,farkod,tetkik,aktif);
              GorselAyar(frmYeniIlac,datalar.global_img_list4);
              frmYeniIlac.ShowModal;
          end;





    end;

         *)


end;

procedure TfrmIlacEtkenMaddeSutKural.btnSendClick(Sender: TObject);
begin

   ADO_EtkenMaddeSUT.Post;

end;

procedure TfrmIlacEtkenMaddeSutKural.PopupMenu1Popup(Sender: TObject);
begin

     if ado_BransKodlari.FieldByName('code').AsString = '0'
     Then Begin
       PopupMenu1.Items[3].Enabled := True;
     //  PopupMenu1.Items[4].Enabled := True;
     //  PopupMenu1.Items[5].Enabled := True;
     End
     Else Begin
       PopupMenu1.Items[3].Enabled := False;
     //  PopupMenu1.Items[4].Enabled := False;
     //  PopupMenu1.Items[5].Enabled := False;


     End;





end;

procedure TfrmIlacEtkenMaddeSutKural.T1Click(Sender: TObject);
begin
  //dxDBTreeView1.FullExpand;
end;

procedure TfrmIlacEtkenMaddeSutKural.T2Click(Sender: TObject);
begin
 // dxDBTreeView1.FullCollapse;
end;

procedure TfrmIlacEtkenMaddeSutKural.KurumSil1Click(Sender: TObject);
var
  sql , katid , ustid : string;
  ado : TADOQuery;
begin

  if ado_BransKodlari.fieldbyname('ust_id').AsString = '0'
  Then Exit;


  katid := ado_BransKodlari.fieldbyname('kat_id').AsString;

  ado := TADOQuery.Create(nil);
  ado.Connection := datalar.ADOConnection2;

  sql := 'select count(*) from Ilaclar where ust_id = ' + katid;
  datalar.QuerySelect(ado,sql);


  if ado.Fields[0].AsInteger = 0
  Then begin
     if mrYes = ShowMessageSkin('Ýlaç Silinecek Eminmisiniz ?','','','msg')
     Then ado_BransKodlari.Delete;

  End
  Else
    ShowMessageSkin('Grup Boþaltýlmadan Silinemez','','','info');

  ado.Free;

end;

end.
