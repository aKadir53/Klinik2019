unit SKS_Dokumanlar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,GirisUnit, cxGraphics, cxControls,cxCheckGroup,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter,StrUtils,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxTextEdit, cxCurrencyEdit, cxGridLevel,KadirLabel,KadirType,GetFormClass,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ComCtrls, Vcl.ToolWin, sToolBar, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  RxToolEdit, cxPC,data_modul, kadir,cxImageComboBox, Data.Win.ADODB,
  cxContainer, cxMaskEdit, cxDropDownEdit, Vcl.Menus, dxSkinsdxStatusBarPainter,
  dxStatusBar, cxCalendar, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinsDefaultPainters, ekbasereport, ekrtf,
  ekfunc, Vcl.Imaging.jpeg, cxImage;

type
  TfrmSKS_Dokumanlar = class(TGirisForm)
    Ado_Dokumanlar: TADOQuery;
    DS_Dokumanlar: TDataSource;
    ADO_Kapsam: TADOTable;
    DS_Kapsam: TDataSource;
    kapsam: TcxImageComboBox;
    DS_Tur: TDataSource;
    ADO_Tur: TADOTable;
    tur: TcxImageComboBox;
    DS_User: TDataSource;
    ADO_User: TADOQuery;
    PopupMenu1: TPopupMenu;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    T1: TMenuItem;
    T2: TMenuItem;
    N1: TMenuItem;
    D1: TMenuItem;
    E1: TMenuItem;
    S1: TMenuItem;
    N2: TMenuItem;
    onayDurum: TMenuItem;
    kontrolDurum: TMenuItem;
    cxGrid2: TcxGridKadir;
    gridDokumanlar: TcxGridDBTableView;
    gridDokumanlarid: TcxGridDBColumn;
    gridDokumanlardokumanNo: TcxGridDBColumn;
    gridDokumanlarColumn1: TcxGridDBColumn;
    gridDokumanlaradi: TcxGridDBColumn;
    KapsamAdi: TcxGridDBColumn;
    gridDokumanlarkapsam: TcxGridDBColumn;
    gridDokumanlartur: TcxGridDBColumn;
    gridDokumanlarsira: TcxGridDBColumn;
    gridDokumanlardurum: TcxGridDBColumn;
    gridDokumanlaramaci: TcxGridDBColumn;
    gridDokumanlarkaynak: TcxGridDBColumn;
    gridDokumanlarkullanan: TcxGridDBColumn;
    gridDokumanlarraporlayan: TcxGridDBColumn;
    gridDokumanlarkullanmaPeryot: TcxGridDBColumn;
    gridDokumanlarraporlamaPeryot: TcxGridDBColumn;
    gridDokumanlaryaynTarih: TcxGridDBColumn;
    gridDokumanlarraporlamaKime: TcxGridDBColumn;
    gridDokumanlargozdenGecirmePeryot: TcxGridDBColumn;
    gridDokumanlarsonrakiGGTarihi: TcxGridDBColumn;
    gridDokumanlardenetci: TcxGridDBColumn;
    gridDokumanlardepartman: TcxGridDBColumn;
    gridDokumanlarmeslek: TcxGridDBColumn;
    turAdi: TcxGridDBColumn;
    gridDokumanlarKontrol: TcxGridDBColumn;
    gridDokumanlarOnay: TcxGridDBColumn;
    gridDokumanlarRev: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    N3: TMenuItem;
    D2: TMenuItem;
    N4: TMenuItem;
    R1: TMenuItem;
    N5: TMenuItem;
    gridDokumanlarColumn2: TcxGridDBColumn;
    N6: TMenuItem;
    L1: TMenuItem;
    cxStyle2: TcxStyle;
    gridDokumanlarColumn3: TcxGridDBColumn;
    EkRTF1: TEkRTF;
    EkUDFList1: TEkUDFList;
    cxImage1: TcxImage;
    Y1: TMenuItem;
    B1: TMenuItem;
    D3: TMenuItem;
    Y2: TMenuItem;
    R2: TMenuItem;
    R3: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnListClick(Sender: TObject);
    procedure btnEkleClick(Sender: TObject);
    procedure btnDuzenleClick(Sender: TObject);
    procedure btnSilClick(Sender: TObject);
    procedure kontrolDurumClick(Sender: TObject);
    procedure btnOkuClick(Sender: TObject);
    procedure T2Click(Sender: TObject);
    procedure gridDokumanlarFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure btnSKSDokumanSablonClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure gridDokumanlarDblClick(Sender: TObject);
    procedure TopPanelPropertiesChange(Sender: TObject);
    procedure TopPanelButonClick(Sender: TObject);
    procedure EkUDFList1Functions0Calculate(Sender: TObject; Args: TEkUDFArgs;
      ArgCount: Integer; UDFResult: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmSKS_Dokumanlar: TfrmSKS_Dokumanlar;
  KirilimStatus : integer;
implementation
     uses yeniDokuman,
          rapor;
          //DokumanDurumListesi;
{$R *.dfm}

procedure TfrmSKS_Dokumanlar.TopPanelButonClick(Sender: TObject);
var
  sql : string;
begin

       sql := 'exec sp_DokumanListesi ' + QuotedStr(datalar.AktifSirket);
       datalar.QuerySelect(Ado_Dokumanlar,sql);
       gridDokumanlar.ViewData.Expand(True);


end;

procedure TfrmSKS_Dokumanlar.TopPanelPropertiesChange(Sender: TObject);
begin
  inherited;

  if copy(varToStr(chkList.EditValue),1,1) = '1' then
  begin
     gridDokumanlarColumn1.GroupIndex := -1;
     KapsamAdi.GroupIndex := -1;
     turAdi.GroupIndex := -1;
  end
  else
  begin
     gridDokumanlarColumn1.GroupIndex := 0;
     KapsamAdi.GroupIndex := 1;
     turAdi.GroupIndex := 2;
  end;


end;

procedure TfrmSKS_Dokumanlar.btnEkleClick(Sender: TObject);
begin

  if UserRight('SKS', 'Döküman Yükle') = False
  then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','SKS Ýþlemleri','','info');
       exit;
  end;
 // Application.CreateForm(TfrmYeniDokuman, frmYeniDokuman);
//  frmYeniDokuman.YeniDokuman;
//  DatasetRefresh(Ado_Dokumanlar);
  if KirilimStatus = 1
 then
  gridDokumanlar.ViewData.Expand(True)
 else
  gridDokumanlar.ViewData.Collapse(True);

end;

procedure TfrmSKS_Dokumanlar.btnDuzenleClick(Sender: TObject);
begin
  if UserRight('SKS', 'Döküman Yükle') = False
  then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','SKS Ýþlemleri','','info');
       exit;
  end;
//  Application.CreateForm(TfrmYeniDokuman, frmYeniDokuman);
//  frmYeniDokuman.EditDokuman(Datalar.DokumanID);
//  DatasetRefresh(Ado_Dokumanlar,True);
  if KirilimStatus = 1
  then
    gridDokumanlar.ViewData.Expand(True)
  else
  gridDokumanlar.ViewData.Collapse(True);


end;

procedure TfrmSKS_Dokumanlar.btnListClick(Sender: TObject);
var
  sql : string;
begin
(*
   sql := 'select *,DK.tanimi KapsamAdi,DT.tanimi TurAdi from Dokumanlar D' +
          ' join DokumanKapsamlari DK on DK.kod = D.Kapsam ' +
          ' join DokumanTurleri DT on DT.kod = D.tur ' +
          ' left join DokumanlarRev DR on DR.dokumanid = D.id and DR.aktif = 1' +
          ' where convert(varchar,yayinTarih,112) between ' + tarihal(txtTarih1.date) + ' and ' + tarihal(txtTarih2.Date);
   datalar.QuerySelect(Ado_Dokumanlar,sql);


   if Ado_Dokumanlar. Active = True
   Then Begin
     btnDuzenle.Enabled := True;
     btnEkle.Enabled := True;
     btnSil.Enabled := True;
     onayDurum.Enabled := True;
     kontrolDurum.Enabled := True;
     btnOku.Enabled := True;
   End;

  *)
end;

procedure TfrmSKS_Dokumanlar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADO_Kapsam.Active := False;
  ADO_Tur.Active := False;
  Ado_Dokumanlar.Close;
end;

procedure TfrmSKS_Dokumanlar.FormCreate(Sender: TObject);
var
 t2 : Tdate;
 ii : TcxCheckGroupItem;
begin
  inherited;
  cxPanel.Visible := false;
 // ToolBar1.Visible := false;

 // ClientHeight := AnaForm.ClientHeight - (AnaForm.ToolBar1.Height + AnaForm.dxStatusBar1.Height+50);
 // ClientWidth := formGenislik;
 // Olustur(self,TableName,'Personel Listesi',23);
  Menu := PopupMenu1;

  TopPanel.Visible := true;



  chkList.Properties.Items.Clear;
  ii := chkList.Properties.Items.Add;
  ii.Caption := 'Liste Görünüm';

  ii := chkList.Properties.Items.Add;
  ii.Caption := 'Revizyon Sayfasýný Gizle';

  chkList.Width := 400;

  chkList.EditValue := '01';

  //gridDokumanlar.DataController.DataSource := DataSource;
  cxGrid2.Dataset.Connection := Datalar.ADOConnection2;


  SayfaCaption('','','','','');

  (*

  Ado_Kapsam.Active := True;
  ADO_Tur.Active := True;

  if UserRight('SKS', 'Döküman Yükle') = True
  then begin
    btnDuzenle.Visible := True;
    btnEkle.Visible := True;
    btnSil.Visible := True;
  end
  else
  begin
    btnDuzenle.Visible := False;
    btnEkle.Visible := False;
    btnSil.Visible := False;
  end;

    *)

end;

procedure TfrmSKS_Dokumanlar.gridDokumanlarDblClick(Sender: TObject);
var
 Form : TGirisForm;
 aTabSheet : TcxTabSheet;
 bTamam : Boolean;
begin
    bTamam := False;
    try
     Form := FormINIT(TagfrmSKS_YeniDokuman,self,Ado_Dokumanlar.FieldByName('id').AsString,nil);
     bTamam := Form <> nil;
     if bTamam then Form.ShowModal;
     Ado_Dokumanlar.Requery;
    finally
      FreeAndNil(Form);
    end;
end;

procedure TfrmSKS_Dokumanlar.gridDokumanlarFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  // Datalar.DokumanId := varToStr(Ado_Dokumanlar.FieldByName('id').AsString);
  // Datalar.DokumanNo := varToStr(Ado_Dokumanlar.FieldByName('dokumanNo').AsString);
  // Datalar.DokumanAdi := varToStr(Ado_Dokumanlar.FieldByName('adi').AsString);

end;

function TfrmSKS_Dokumanlar.Init(Sender: TObject): Boolean;
begin
  TapPanelElemanVisible(True,True,True,false,false,false,False,false,False,False,False,False,True);

//  txtTopPanelTarih2.Date := ayliktarih(date,t2);
//  txtTopPanelTarih1.Date := t2;

  Result := True;
end;

procedure TfrmSKS_Dokumanlar.kontrolDurumClick(Sender: TObject);
var
  sql , userField,dateField : string;
begin
  inherited;


  if UserRight('SKS', TToolButton(sender).Hint) = True
  then begin

     userField :=
     StringReplace(StringReplace(TToolButton(sender).Name,'Durum','User',[rfReplaceAll]),'Onay','User',[rfReplaceAll]);
     dateField :=
     StringReplace(StringReplace(TToolButton(sender).Name,'Durum','Date',[rfReplaceAll]),'Onay','Date',[rfReplaceAll]);


     sql := 'update DokumanlarRev set ' + TToolButton(sender).Name + ' = 1 ,' +
            userField + ' = ' + QuotedStr(datalar.username) + ',' +
            dateField + ' = getdate() ' +
            ' where dokumanid = ' + QuotedStr(Ado_Dokumanlar.FieldByName('id').AsString) +
            ' and rev = ' + QuotedStr(Ado_Dokumanlar.FieldByName('rev').AsString) +
            ' and ' + TToolButton(sender).Name + ' = 0';
     datalar.QueryExec(sql);
     //DatasetRefresh(Ado_Dokumanlar);
     if KirilimStatus = 1
      then
        gridDokumanlar.ViewData.Expand(True)
      else
      gridDokumanlar.ViewData.Collapse(True);
  end
  else
    ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !',TToolButton(sender).Hint,'','info');



end;

procedure TfrmSKS_Dokumanlar.T2Click(Sender: TObject);
begin
  inherited;

  if TMenuItem(Sender).Tag = 1
  then
    gridDokumanlar.ViewData.Expand(True)
  else
  gridDokumanlar.ViewData.Collapse(True);

  KirilimStatus := TMenuItem(Sender).Tag;

end;

procedure TfrmSKS_Dokumanlar.ToolButton1Click(Sender: TObject);
begin
  inherited;
   close;
end;

procedure TfrmSKS_Dokumanlar.ToolButton2Click(Sender: TObject);
begin
  inherited;
  (*
  Application.CreateForm(TfrmDokumanDurumList, frmDokumanDurumList);
  frmDokumanDurumList.List('');
  frmDokumanDurumList.ShowModal;
  frmDokumanDurumList := nil;
  *)
end;

procedure TfrmSKS_Dokumanlar.btnOkuClick(Sender: TObject);
var
  filename , sql : string;
begin
  inherited;

    sql := 'select * from DokumanlarRevStatuDurum where dokumanid = ' +
            QuotedStr(Ado_Dokumanlar.FieldByName('dokumanid').AsString) +
            ' and rev = ' + QuotedStr(Ado_Dokumanlar.FieldByName('rev').AsString) +
            ' and kullanici = ' + QuotedStr(datalar.username);

    if datalar.QuerySelect(sql).RecordCount > 0
    Then begin
      try
        (*
        if DokumanTip(datalar.DokumanID) = 2 then
        begin
            try
              filename := Ado_Dokumanlar.FieldByName('adi').AsString + '_rev_' +
                            Ado_Dokumanlar.FieldByName('rev').AsString + '.' + Ado_Dokumanlar.FieldByName('DosyaTuru').AsString;

              DokumanAc(Ado_Dokumanlar,'dosya','C:\NoktaV3\' + filename,True);
            finally
              Cursor := crDefault;
            end;
        end
        else
        begin
       //       frmRapor.topluset.Dataset0 := kadir.KurumBilgi;
       //       frmRapor.topluset.Dataset1 := datalar.QuerySelect('select * from DokumanlarRev where dokumanid = ' + QuotedStr(datalar.DokumanID));
       //       frmRapor.raporData1(frmRapor.topluset ,datalar.DokumanNo+'_'+Ado_Dokumanlar.FieldByName('rev').AsString
       //                          ,datalar.DokumanAdi,stEvet,False);
       //       frmRapor.btnOnIzle.Click;
        end;
          *)

        sql := 'Update DokumanlarRevStatuDurum set okundu = 1' +
                ',OkunmaTarihi = getdate() ' +
                ' where rev = ' + QuotedStr(Ado_Dokumanlar.FieldByName('rev').AsString) +
                ' and dokumanid = ' + QuotedStr(Ado_Dokumanlar.FieldByName('id').AsString) +
                ' and kullanici = ' + QuotedStr(datalar.username);
        datalar.QueryExec(sql);

      except

      end;
    end
    else
       ShowMessageSkin('Bu Dökümaný Okuma Hakký Verilmemiþ !','Dökümaný Okusun Ýþlemi','','info');


end;

procedure TfrmSKS_Dokumanlar.btnSilClick(Sender: TObject);
var
  sql : string;
begin
   inherited;
   if UserRight('SKS', 'Döküman Yükle') = False
   then begin
       ShowMessageSkin('Bu Ýþlem Ýçin Yetkiniz Bulunmamaktadýr !','SKS Ýþlemleri','','info');
       exit;
   end;
 (*
   if mrYes = ShowMessageSkin('Döküman Silinecek Emin misiniz?','','','msg')
   then begin
     datalar.ADOConnection2.BeginTrans;
     try
       sql := 'delete from DokumanlarRevStatuDurum ' +
              ' where dokumanid = ' + QuotedStr(datalar.DokumanID);
       datalar.QueryExec(sql);

       sql := 'delete from DokumanlarRev' +
              ' where dokumanid = ' + QuotedStr(datalar.DokumanID);
       datalar.QueryExec(sql);

       sql := 'delete from Dokumanlar' +
              ' where id = ' + QuotedStr(datalar.DokumanID);
       datalar.QueryExec(sql);

       DatasetRefresh(Ado_Dokumanlar);
       datalar.ADOConnection2.CommitTrans;
     except
       datalar.ADOConnection2.RollbackTrans;
     end;
   end;
   *)
end;

procedure TfrmSKS_Dokumanlar.btnSKSDokumanSablonClick(Sender: TObject);
begin
  inherited;
  //    frmRapor.topluset.Dataset0 := kadir.KurumBilgi;
  //    frmRapor.topluset.Dataset1 := datalar.QuerySelect('select * from DokumanlarRev where dokumanid = ' + QuotedStr(datalar.DokumanID));
  //    frmRapor.raporData1(frmRapor.topluset ,'BOS','BoS',stHayir);
   //   frmRapor.ShowModal;
end;

procedure TfrmSKS_Dokumanlar.cxButtonCClick(Sender: TObject);
var
 List : TListeAc;
 _L_ : ArrayListeSecimler;
 _name_, tel,msj ,sql , id : string;
 F : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
 TopluDataset : TDataSetKadir;
 ado : TADOQuery;
 Blob : TADOBlobStream;
 dosya : TOpenDialog;
 dosyaTip , tableName , where , filename , rev  : string;

begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;
begin

  case TControl(sender).Tag  of
    -1 : begin
            F := FormINIT(TagfrmSKS_YeniDokuman,GirisFormRecord,ikHayir,'');
            if F <> nil then F.ShowModal;
            Ado_Dokumanlar.Requery;
         end;


  -5,-6 : begin
            RevOnay(TMenuItem(sender).name,gridDokumanlar.DataController.DataSource.DataSet);
          end;

   -104 : begin
             if Ado_Dokumanlar.FieldByName('DosyaTip').AsString <> ''
             then begin
               DurumGoster(True,False,'Dosya Þablonu Yükleniyor , Lütfen Bekleyiniz');
               try
                   sql := 'select isnull(DR.PDF,D.PDF) PDF from SKS_Dokumanlar D ' +
                                                 ' left join (Select top 1 dokumanid,PDF from SKS_DokumanlarRev where dokumanid = ' + Ado_Dokumanlar.FieldByName('id').AsString +
                                                 ' order by rev desc) DR on DR.dokumanid = D.id ' +
                                                 ' where id = ' + Ado_Dokumanlar.FieldByName('id').AsString;

                   ado := datalar.QuerySelect(sql);
                   try
                        DokumanAc(ado,'PDF',
                                  Ado_Dokumanlar.FieldByName('dokumanNo').AsString+'_S',True,
                                  Ado_Dokumanlar.FieldByName('DosyaTip').AsString);
                    finally
                     ado.free;
                   end;

               finally
                 DurumGoster(False);
               end;
             end;
          end;

   -101 : begin
             if Ado_Dokumanlar.FieldByName('DosyaTip').AsString <> ''
             then begin
               DurumGoster(True,False,'Dosya Gösteriliyor , Lütfen Bekleyiniz');
               try
                   sql := 'select isnull(DR.PDF,D.PDF) PDF from SKS_Dokumanlar D ' +
                                                 ' left join (Select top 1 dokumanid,PDF from SKS_DokumanlarRev where dokumanid = ' + Ado_Dokumanlar.FieldByName('id').AsString +
                                                 ' order by rev desc) DR on DR.dokumanid = D.id ' +
                                                 ' where id = ' + Ado_Dokumanlar.FieldByName('id').AsString;

                   ado := datalar.QuerySelect(sql);
                   try
                       // ifThen(Ado_Dokumanlar.FieldByName('DosyaTip').AsString = 'RTF'
                        DokumanAc(ado,'PDF',
                                  Ado_Dokumanlar.FieldByName('dokumanNo').AsString+'_S',
                                  True,
                                  Ado_Dokumanlar.FieldByName('DosyaTip').AsString);

                        if Ado_Dokumanlar.FieldByName('DosyaTip').AsString = 'RTF'
                        then begin
                          //  EkRTFBlobToinFile(ado,'PDF', EkRtf1);
                           EkRTF1.InFile := Ado_Dokumanlar.FieldByName('dokumanNo').AsString + '_S.RTF';
                           EkRTF1.OutFile := Ado_Dokumanlar.FieldByName('dokumanNo').AsString + '.RTF';
                            EkRtf1.VarList.Clear;
                           EkRTF1.ClearVars;
                           EkRTF1.CreateVar('dokumanNo', Ado_Dokumanlar.FieldByName('dokumanNo').AsString);
                           EkRTF1.CreateVar('rev', Ado_Dokumanlar.FieldByName('rev').AsString);
                           EkRTF1.CreateVar('revTarihi', Ado_Dokumanlar.FieldByName('revTarihi').AsString);
                           EkRTF1.CreateVar('adi', Ado_Dokumanlar.FieldByName('adi').AsString);
                           EkRTF1.CreateVar('yayinTarih', Ado_Dokumanlar.FieldByName('yayinTarih').AsString);
                           Ekrtf1.ExecuteOpen([], SW_SHOW);
                        end;

                   finally
                     ado.free;
                   end;

               finally
                 DurumGoster(False);
               end;
             end;
          end;
  -103 : begin

           DurumGoster(True,False,'Döküman  Geçmiþi Gösteriliyor , Lütfen Bekleyiniz');
           try
               if copy(chkList.EditValue,2,1) = '0'
               then begin
                 TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;
                 TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
                 sql := 'select *,DK.tanimi KapsamAdi,DT.tanimi TurAdi from SKS_Dokumanlar D' +
                      ' join SKS_DokumanKapsamlari DK on DK.kod = D.Kapsam ' +
                      ' join SKS_DokumanTurleri DT on DT.kod = D.tur ' +
                      ' left join SKS_DokumanlarRev DR on DR.dokumanid = D.id'+ // and DR.aktif = 1' +
                      ' where D.id = ' + Ado_Dokumanlar.FieldByName('id').AsString;
                 TopluDataset.Dataset2 := datalar.QuerySelect(sql);

                 PrintYapDokuman(Ado_Dokumanlar.FieldByName('dokumanNo').AsString +
                  ifThen(Ado_Dokumanlar.FieldByName('rev').AsString <> '',
                  '_' + Ado_Dokumanlar.FieldByName('rev').AsString,''),
                          Ado_Dokumanlar.FieldByName('adi').AsString ,
                          inttoStr(TagfrmSKS_YeniDokuman) ,TopluDataset,pTOnIzle,nil,
                          'Page1');
               end;
           finally
            DurumGoster(False);
           end;

         end;

 -102 : begin
             DurumGoster(True,False,'Döküman Gösteriliyor , Lütfen Bekleyiniz');
             try
                 TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;
                 TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
                 sql := 'select *,DK.tanimi KapsamAdi,DT.tanimi TurAdi from SKS_Dokumanlar D' +
                      ' join SKS_DokumanKapsamlari DK on DK.kod = D.Kapsam ' +
                      ' join SKS_DokumanTurleri DT on DT.kod = D.tur ' +
                      ' left join SKS_DokumanlarRev DR on DR.dokumanid = D.id'+ // and DR.aktif = 1' +
                      ' where D.id = ' + gridDokumanlar.DataController.DataSource.dataset.FieldByName('id').AsString;
                 TopluDataset.Dataset2 := datalar.QuerySelect(sql);


                 PrintYapDokuman(gridDokumanlar.DataController.DataSource.dataset.FieldByName('dokumanNo').AsString +
                  ifThen(gridDokumanlar.DataController.DataSource.dataset.FieldByName('rev').AsString <> '',
                  '_' + gridDokumanlar.DataController.DataSource.dataset.FieldByName('rev').AsString,''),
                          gridDokumanlar.DataController.DataSource.dataset.FieldByName('adi').AsString ,
                          inttoStr(TagfrmSKS_YeniDokuman) ,TopluDataset,pTOnIzle,nil,
                          ifThen(copy(chkList.EditValue,2,1) = '1','Page2',''));

           finally
              DurumGoster(False,False,'Döküman  Yükleniyor , Lütfen Bekleyiniz');
           end;
        end;

   -10 : begin
         end;

    -11 : begin
           DurumGoster(True,False,'Ýçerik  Yükleniyor , Lütfen Bekleyiniz');
           try
              PrintIcerik(gridDokumanlar.DataController.DataSource.dataset.FieldByName('dokumanNo').AsString +
              ifThen(gridDokumanlar.DataController.DataSource.dataset.FieldByName('rev').AsString <> '',
              '_' + gridDokumanlar.DataController.DataSource.dataset.FieldByName('rev').AsString,'')
              );

           finally
              DurumGoster(False,False,'Döküman  Yükleniyor , Lütfen Bekleyiniz');
           end;
         end;

    -13 : begin
              DurumGoster(True,False,Ado_Dokumanlar.FieldByName('dokumanNo').AsString + ' , Dosya Yükleniyor , Lütfen Bekleyiniz');

              if Ado_Dokumanlar.FieldByName('rev').AsString = ''
              then begin
                 tableName := 'SKS_Dokumanlar';
                 where := ' id = ' + Ado_Dokumanlar.FieldByName('id').AsString;
              end
              else
              begin
                 rev := Ado_Dokumanlar.FieldByName('rev').AsString;
                 tableName := 'SKS_DokumanlarRev';
                 where := ' dokumanid = ' + Ado_Dokumanlar.FieldByName('id').AsString + ' and rev = ' + rev;
              end;

              try
                  filename := ('C:\RTF\' + Ado_Dokumanlar.FieldByName('dokumanNo').AsString + '.RTF');

                  if not FileExists(filename)
                  then begin
                   ShowMessageSkin(filename,'C:\RTF\ içersinde , Dosya Bulunamadý','','info');
                   exit;
                  end;

                  sql := 'select * from ' + tableName +
                          ' where ' + where;

                  DokumanYuklePDF(datalar.QuerySelect(sql),'PDF',filename);
                  Ado_Dokumanlar.Requery();
              finally
                DurumGoster(False,False);
              end;
         end;

    -12 : begin
           TopluDataset.Dataset0 := datalar.ADO_aktifSirketLogo;
           TopluDataset.Dataset1 := datalar.ADO_AktifSirket;
           sql := 'select *,DK.tanimi KapsamAdi,DT.tanimi TurAdi from SKS_Dokumanlar D' +
                ' join SKS_DokumanKapsamlari DK on DK.kod = D.Kapsam ' +
                ' join SKS_DokumanTurleri DT on DT.kod = D.tur ' +
                ' left join SKS_DokumanlarRev DR on DR.dokumanid = D.id'+ // and DR.aktif = 1' +
                ' where D.id = ' + gridDokumanlar.DataController.DataSource.dataset.FieldByName('id').AsString;
           TopluDataset.Dataset2 := datalar.QuerySelect(sql);
           PrintYapDokuman('BOS',
                    gridDokumanlar.DataController.DataSource.dataset.FieldByName('adi').AsString ,
                    inttoStr(TagfrmSKS_YeniDokuman) ,TopluDataset,pTDizayn);
          end;

  end;

end;

end;

procedure TfrmSKS_Dokumanlar.EkUDFList1Functions0Calculate(Sender: TObject;
  Args: TEkUDFArgs; ArgCount: Integer; UDFResult: TObject);
begin
    With UDFResult as TPicture do
     begin
        Bitmap.Width  := cxImage1.Width;
        Bitmap.Height := cxImage1.Height;
        Bitmap.Canvas.Draw(0,0,cxImage1.Picture.Graphic);
     end;
end;

end.
