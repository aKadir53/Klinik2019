unit LabTestAyarlari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB,data_modul, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxImageComboBox, ImgList, StdCtrls, Buttons, sBitBtn,
  ExtCtrls, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxDropDownEdit,GirisUnit,
  cxDBLookupComboBox, cxTextEdit, Vcl.Menus;

type
  TfrmTestAyarlari = class(TGirisForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1butKodu: TcxGridDBColumn;
    cxGrid1DBTableView1tanimi: TcxGridDBColumn;
    cxGrid1DBTableView1uygulamaSuresi: TcxGridDBColumn;
    cxGrid1DBTableView1uygulamaAdet: TcxGridDBColumn;
    cxGrid1DBTableView1tip: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    btnVazgec: TsBitBtn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    ADOTable3: TADOTable;
    DataSource3: TDataSource;
    Panel1: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DataSource4: TDataSource;
    LabSonucDeger: TADOTable;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView1SLX: TcxGridDBColumn;
    cxGridDBTableView1SLT: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    L1: TMenuItem;
    procedure btnVazgecClick(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
       function Init(Sender: TObject) : Boolean; override;
  end;

var
  frmTestAyarlari: TfrmTestAyarlari;

implementation
   uses
     LabTestlerService;
{$R *.dfm}
procedure TfrmTestAyarlari.FormCreate(Sender: TObject);
begin

  Menu := PopupMenu1;

end;

function TfrmTestAyarlari.Init(Sender: TObject) : Boolean;
begin
  ADOTable1.Active := True;
  ADOTable1.Filter := 'sirketKod = ' + QuotedStr(datalar.AktifSirket);
  ADOTable2.Active := True;
//  ADOTable3.Active := True;
//  LabSonucDeger.Active := True;
  cxPanel.Visible := false;
  Result := True;
end;

procedure TfrmTestAyarlari.L1Click(Sender: TObject);
var
 Test : LabTest;
 Tests : ArrayOfLabTest;
 sm,ss ,sql : string;
begin
  DurumGoster(True,True);
  datalar.Lab.URL := 'http://213.159.30.6/Service1.asmx';
  datalar.HTTP_XMLDosya_Name := Datalar.AktifSirket+ '_LabTestler';
  try
     try
      Tests := (datalar.Lab as LabTestlerService.Service1Soap).LabtestlerOku(datalar._labID);
     except on e : Exception do
       begin
         sm := e.Message;
         ss := 'Hata';
       end;
     end;

     pBar.Properties.Max := length(Tests);
     pBar.Position := 0;

     for Test in  Tests do
       begin
          sql := 'if not exists(select * from LabTestler where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                                       ' and butKodu = ' + QuotedStr(Test.butKodu) + ' and uygulamaAdet = ''G'')' +
                            ' begin ' +
                               'insert into LabTestler (sirketKod,butKodu,tanimi,uygulamaSuresi,uygulamaAdet,tip,SGKTip,SonucTip,birim,islemKodu)' +
                               ' values(' + QuotedStr(datalar.AktifSirket) + ',' +
                                QuotedStr(Test.butKodu) + ',' +
                                QuotedStr(Test.tanimi) + ',' +
                                intTostr(Test.uygulamaSuresi) + ',''G'',' +
                                intTostr(Test.tip) + ',' +
                                QuotedStr(Test.SGKTip) + ',' +
                                QuotedStr(Test.SonucTip) + ',' +
                                QuotedStr(Test.birim) + ',' +
                                QuotedStr(Test.islemKodu) + ')' +
                                intTostr(Test.sira) +')' +
                            ' end ' +
                            'else ' +
                            'begin ' +
                            'update LabTestler set islemKodu = ' + QuotedStr(Test.islemKodu) +
                            ' where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                            ' and butKodu = ' + QuotedStr(Test.butKodu) +
                            ' and uygulamaAdet = ''G''' +
                            ' end ';

          datalar.QueryExec(sql);

          if Test.islemKoduC <> ''
          then begin
              datalar.QueryExec('if not exists(select * from LabTestler where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                                           ' and butKodu = ' + QuotedStr(Test.butKodu) + ' and uygulamaAdet = ''C'')' +
                                ' begin ' +
                                   'insert into LabTestler (sirketKod,butKodu,tanimi,uygulamaSuresi,uygulamaAdet,tip,SGKTip,SonucTip,birim,islemKodu,sira)' +
                                   ' values(' + QuotedStr(datalar.AktifSirket) + ',' +
                                    QuotedStr(Test.butKodu) + ',' +
                                    QuotedStr(Test.tanimi) + ',' +
                                    intTostr(Test.uygulamaSuresi) + ',''C'',' +
                                    intTostr(Test.tip) + ',' +
                                    QuotedStr(Test.SGKTip) + ',' +
                                    QuotedStr(Test.SonucTip) + ',' +
                                    QuotedStr(Test.birim) + ',' +
                                    QuotedStr(Test.islemKoduC) + ',' +
                                    intTostr(Test.sira) +')' +
                                ' end ' +
                                'else ' +
                                'begin ' +
                                'update LabTestler set islemKodu = ' + QuotedStr(Test.islemKoduC) +
                                ' where sirketKod = ' + QuotedStr(datalar.AktifSirket) +
                                ' and butKodu = ' + QuotedStr(Test.butKodu) +
                                ' and uygulamaAdet = ''C''' +
                                ' end ');
          end;

           pBar.Position := pBar.Position + 1;
           Application.ProcessMessages;
       end;

  finally
    DurumGoster(False);
  end;

end;

procedure TfrmTestAyarlari.btnVazgecClick(Sender: TObject);
begin
  close;
end;

end.
