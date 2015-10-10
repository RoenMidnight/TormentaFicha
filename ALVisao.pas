unit ALVisao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RRPGVisaoFicha, RRPGBaseVisaoFicha, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, math;

type
  TfrmTormenta = class(TfrmVisaoFicha)
    Paginacao: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TxtNome: TDBEdit;
    TxtJogador: TDBEdit;
    TxtRaca: TDBEdit;
    TxtClasseNv: TDBEdit;
    TxtNvSoma: TDBEdit;
    LinkLabel1: TLinkLabel;
    TxtForca: TDBEdit;
    TxtPvTotal: TDBEdit;
    TxtTendencia: TDBEdit;
    TxtSexo: TDBEdit;
    TxtIdade: TDBEdit;
    TxtDivindade: TDBEdit;
    TxtTamanho: TDBEdit;
    TxtDeslocamento: TDBEdit;
    TxtPvAtual: TDBEdit;
    TxtPontoAcao: TDBEdit;
    TxtCaTotal: TDBEdit;
    TxtMetNivel: TDBEdit;
    TxtModHabilidade: TDBEdit;
    TxtCaArmadura: TDBEdit;
    TxtCaEscudo: TDBEdit;
    TxtCAModTamanho: TDBEdit;
    TxtCaOut: TDBEdit;
    TxtCaOut2: TDBEdit;
    TxtReducaoDano: TDBEdit;
    TxtTotFort: TDBEdit;
    TxtMetNvFort: TDBEdit;
    TxtModHabFort: TDBEdit;
    TxtOutFort: TDBEdit;
    TxtTotRefl: TDBEdit;
    TxtTotVont: TDBEdit;
    TxtMetRefl: TDBEdit;
    TxtMetNiv: TDBEdit;
    TxtModHabREfl: TDBEdit;
    TxtModHabVont: TDBEdit;
    TxtOutRefl: TDBEdit;
    TxtOutVont: TDBEdit;
    TxtTotalCC: TDBEdit;
    TxtTotalCD: TDBEdit;
    TxtBBACC: TDBEdit;
    TxtBBACD: TDBEdit;
    TxtModHabCC: TDBEdit;
    TxtModHabCD: TDBEdit;
    TxtModTamCC: TDBEdit;
    TxtModTamCD: TDBEdit;
    TxtOutCC: TDBEdit;
    TxtOutCD: TDBEdit;
    TxtArma1: TDBEdit;
    TxtArma2: TDBEdit;
    TxtArma3: TDBEdit;
    TxtArma4: TDBEdit;
    TxtArma5: TDBEdit;
    TxtArma6: TDBEdit;
    TxtArmaBA1: TDBEdit;
    TxtArmaBA2: TDBEdit;
    TxtArmaBA3: TDBEdit;
    TxtArmaBA4: TDBEdit;
    TxtArmaBA5: TDBEdit;
    TxtArmaBA6: TDBEdit;
    TxtArmaDano1: TDBEdit;
    TxtArmaDano2: TDBEdit;
    TxtArmaDano3: TDBEdit;
    TxtArmaDano4: TDBEdit;
    TxtArmaDano5: TDBEdit;
    TxtArmaDano6: TDBEdit;
    TxtArmaCritico1: TDBEdit;
    TxtArmaCritico2: TDBEdit;
    TxtArmaCritico3: TDBEdit;
    TxtArmaCritico4: TDBEdit;
    TxtArmaCritico5: TDBEdit;
    TxtArmaCritico6: TDBEdit;
    TxtArmaDistancia1: TDBEdit;
    TxtArmaDistancia2: TDBEdit;
    TxtArmaDistancia3: TDBEdit;
    TxtArmaDistancia4: TDBEdit;
    TxtArmaDistancia5: TDBEdit;
    TxtArmaDistancia6: TDBEdit;
    TxtArmaTipo1: TDBEdit;
    TxtArmaTipo2: TDBEdit;
    TxtArmaTipo3: TDBEdit;
    TxtArmaTipo4: TDBEdit;
    TxtArmaTipo5: TDBEdit;
    TxtArmaTipo6: TDBEdit;
    TxtArmadura1: TDBEdit;
    TxtArmadura2: TDBEdit;
    TxtArmadura3: TDBEdit;
    TxtArmaduraCA3: TDBEdit;
    TxtArmaduraCA2: TDBEdit;
    TxtArmaduraCa1: TDBEdit;
    TxtArmaduraBMD1: TDBEdit;
    TxtArmaduraBMD2: TDBEdit;
    TxtArmaduraBMD3: TDBEdit;
    TxtArmaduraPen3: TDBEdit;
    TxtArmaduraPen2: TDBEdit;
    TxtArmaduraPen1: TDBEdit;
    DBHAbRa�a: TDBMemo;
    DBHabCla1: TDBMemo;
    DBHABCLA2: TDBMemo;
    TxtAcrobTotal: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    DBEdit107: TDBEdit;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    DBEdit124: TDBEdit;
    DBEdit125: TDBEdit;
    DBEdit126: TDBEdit;
    DBEdit127: TDBEdit;
    DBEdit128: TDBEdit;
    DBEdit129: TDBEdit;
    DBEdit130: TDBEdit;
    DBEdit131: TDBEdit;
    DBEdit132: TDBEdit;
    DBEdit133: TDBEdit;
    DBEdit134: TDBEdit;
    DBEdit135: TDBEdit;
    DBEdit136: TDBEdit;
    DBEdit137: TDBEdit;
    DBEdit138: TDBEdit;
    DBEdit139: TDBEdit;
    DBEdit140: TDBEdit;
    DBEdit141: TDBEdit;
    DBEdit142: TDBEdit;
    DBEdit143: TDBEdit;
    DBEdit144: TDBEdit;
    DBEdit145: TDBEdit;
    DBEdit146: TDBEdit;
    DBEdit147: TDBEdit;
    DBEdit148: TDBEdit;
    DBEdit149: TDBEdit;
    DBEdit150: TDBEdit;
    DBEdit151: TDBEdit;
    DBEdit152: TDBEdit;
    DBEdit153: TDBEdit;
    DBEdit154: TDBEdit;
    DBEdit155: TDBEdit;
    DBEdit156: TDBEdit;
    DBEdit157: TDBEdit;
    DBEdit158: TDBEdit;
    DBEdit159: TDBEdit;
    DBEdit160: TDBEdit;
    DBEdit161: TDBEdit;
    DBEdit162: TDBEdit;
    DBEdit163: TDBEdit;
    DBEdit164: TDBEdit;
    DBEdit165: TDBEdit;
    DBEdit166: TDBEdit;
    DBEdit167: TDBEdit;
    DBEdit168: TDBEdit;
    DBEdit169: TDBEdit;
    DBEdit170: TDBEdit;
    DBEdit171: TDBEdit;
    DBEdit172: TDBEdit;
    DBEdit173: TDBEdit;
    DBEdit174: TDBEdit;
    DBEdit175: TDBEdit;
    DBEdit176: TDBEdit;
    DBEdit205: TDBEdit;
    DBEdit206: TDBEdit;
    DBEdit207: TDBEdit;
    DBEdit208: TDBEdit;
    DBEdit209: TDBEdit;
    DBEdit210: TDBEdit;
    DBEdit211: TDBEdit;
    DBEdit212: TDBEdit;
    DBEdit213: TDBEdit;
    DBEdit214: TDBEdit;
    DBEdit215: TDBEdit;
    DBEdit216: TDBEdit;
    DBEdit217: TDBEdit;
    DBEdit218: TDBEdit;
    DBEdit219: TDBEdit;
    DBEdit220: TDBEdit;
    DBEdit221: TDBEdit;
    DBEdit222: TDBEdit;
    DBEdit223: TDBEdit;
    DBEdit224: TDBEdit;
    DBEdit225: TDBEdit;
    DBEdit226: TDBEdit;
    DBEdit227: TDBEdit;
    DBEdit228: TDBEdit;
    DBEdit229: TDBEdit;
    DBEdit230: TDBEdit;
    DBEdit231: TDBEdit;
    DBEdit183: TDBEdit;
    DBEdit184: TDBEdit;
    DBEdit185: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    TxtmodFor: TDBEdit;
    TxtmodDes: TDBEdit;
    TxtDestreza: TDBEdit;
    TxtmodCon: TDBEdit;
    TxtConstituicao: TDBEdit;
    TxtmodInteligencia: TDBEdit;
    TxtInteligencia: TDBEdit;
    TxtmodSab: TDBEdit;
    TxtmodCar: TDBEdit;
    TxtCarisma: TDBEdit;
    TxtSabedoria: TDBEdit;
    LinkLabel2: TLinkLabel;
    LinkLabel3: TLinkLabel;
    LinkLabel4: TLinkLabel;
    LinkLabel5: TLinkLabel;
    LinkLabel6: TLinkLabel;
    LinkLabel7: TLinkLabel;
    LinkLabel8: TLinkLabel;
    LinkLabel9: TLinkLabel;
    TxtOuFor�a: TDBEdit;
    TxtOutDestreza: TDBEdit;
    TxtOutConstitui��o: TDBEdit;
    TxtOutInteligencia: TDBEdit;
    TxtOutSabedoria: TDBEdit;
    TxtOutCarisma: TDBEdit;
    LinkLabel10: TLinkLabel;
    LinkLabel11: TLinkLabel;
    LinkLabel12: TLinkLabel;
    LinkLabel13: TLinkLabel;
    LinkLabel14: TLinkLabel;
    LinkLabel15: TLinkLabel;
    LinkLabel16: TLinkLabel;
    LinkLabel17: TLinkLabel;
    LinkLabel18: TLinkLabel;
    LinkLabel19: TLinkLabel;
    LinkLabel20: TLinkLabel;
    LinkLabel21: TLinkLabel;
    LinkLabel22: TLinkLabel;
    LinkLabel23: TLinkLabel;
    LinkLabel24: TLinkLabel;
    LinkLabel25: TLinkLabel;
    LinkLabel26: TLinkLabel;
    TxtModelo: TDBEdit;
    LinkLabel27: TLinkLabel;
    DsFicha: TDataSource;
    LinkLabel28: TLinkLabel;
    LinkLabel29: TLinkLabel;
    LinkLabel30: TLinkLabel;
    LinkLabel31: TLinkLabel;
    LinkLabel32: TLinkLabel;
    LinkLabel33: TLinkLabel;
    LinkLabel34: TLinkLabel;
    LinkLabel35: TLinkLabel;
    LinkLabel36: TLinkLabel;
    LinkLabel37: TLinkLabel;
    LinkLabel38: TLinkLabel;
    LinkLabel39: TLinkLabel;
    LinkLabel40: TLinkLabel;
    LinkLabel41: TLinkLabel;
    LinkLabel42: TLinkLabel;
    LinkLabel43: TLinkLabel;
    LinkLabel44: TLinkLabel;
    LinkLabel45: TLinkLabel;
    LinkLabel46: TLinkLabel;
    LinkLabel47: TLinkLabel;
    LinkLabel48: TLinkLabel;
    LinkLabel49: TLinkLabel;
    LinkLabel50: TLinkLabel;
    LinkLabel52: TLinkLabel;
    LinkLabel53: TLinkLabel;
    LinkLabel51: TLinkLabel;
    LinkLabel54: TLinkLabel;
    LinkLabel55: TLinkLabel;
    LinkLabel56: TLinkLabel;
    LinkLabel57: TLinkLabel;
    LinkLabel58: TLinkLabel;
    LinkLabel59: TLinkLabel;
    LinkLabel60: TLinkLabel;
    LinkLabel61: TLinkLabel;
    LinkLabel62: TLinkLabel;
    LinkLabel63: TLinkLabel;
    LinkLabel64: TLinkLabel;
    LinkLabel65: TLinkLabel;
    LinkLabel66: TLinkLabel;
    LinkLabel67: TLinkLabel;
    LinkLabel68: TLinkLabel;
    LinkLabel69: TLinkLabel;
    LinkLabel70: TLinkLabel;
    LinkLabel71: TLinkLabel;
    LinkLabel72: TLinkLabel;
    LinkLabel73: TLinkLabel;
    LinkLabel74: TLinkLabel;
    LinkLabel75: TLinkLabel;
    LinkLabel76: TLinkLabel;
    LinkLabel77: TLinkLabel;
    LinkLabel78: TLinkLabel;
    LinkLabel79: TLinkLabel;
    LinkLabel80: TLinkLabel;
    LinkLabel81: TLinkLabel;
    LinkLabel82: TLinkLabel;
    LinkLabel83: TLinkLabel;
    LinkLabel84: TLinkLabel;
    LinkLabel85: TLinkLabel;
    LinkLabel86: TLinkLabel;
    LinkLabel87: TLinkLabel;
    LinkLabel88: TLinkLabel;
    LinkLabel89: TLinkLabel;
    LinkLabel90: TLinkLabel;
    LinkLabel91: TLinkLabel;
    LinkLabel92: TLinkLabel;
    LinkLabel93: TLinkLabel;
    LinkLabel94: TLinkLabel;
    LinkLabel95: TLinkLabel;
    LinkLabel96: TLinkLabel;
    LinkLabel97: TLinkLabel;
    LinkLabel98: TLinkLabel;
    LinkLabel99: TLinkLabel;
    LinkLabel100: TLinkLabel;
    LinkLabel101: TLinkLabel;
    LinkLabel102: TLinkLabel;
    LinkLabel103: TLinkLabel;
    LinkLabel104: TLinkLabel;
    LinkLabel105: TLinkLabel;
    LinkLabel106: TLinkLabel;
    LinkLabel107: TLinkLabel;
    LinkLabel108: TLinkLabel;
    LinkLabel109: TLinkLabel;
    LinkLabel110: TLinkLabel;
    LinkLabel111: TLinkLabel;
    LinkLabel112: TLinkLabel;
    LinkLabel113: TLinkLabel;
    LinkLabel114: TLinkLabel;
    LinkLabel115: TLinkLabel;
    LinkLabel116: TLinkLabel;
    LinkLabel117: TLinkLabel;
    LinkLabel118: TLinkLabel;
    LinkLabel119: TLinkLabel;
    LinkLabel120: TLinkLabel;
    LinkLabel121: TLinkLabel;
    LinkLabel122: TLinkLabel;
    LinkLabel123: TLinkLabel;
    LinkLabel124: TLinkLabel;
    LinkLabel125: TLinkLabel;
    LinkLabel126: TLinkLabel;
    LinkLabel127: TLinkLabel;
    LinkLabel128: TLinkLabel;
    LinkLabel129: TLinkLabel;
    LinkLabel130: TLinkLabel;
    LinkLabel131: TLinkLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    LinkLabel132: TLinkLabel;
    LinkLabel133: TLinkLabel;
    LinkLabel134: TLinkLabel;
    LinkLabel135: TLinkLabel;
    LinkLabel136: TLinkLabel;
    LinkLabel137: TLinkLabel;
    LinkLabel138: TLinkLabel;
    LinkLabel139: TLinkLabel;
    LinkLabel140: TLinkLabel;
    LinkLabel141: TLinkLabel;
    LinkLabel142: TLinkLabel;
    LinkLabel143: TLinkLabel;
    LinkLabel144: TLinkLabel;
    LinkLabel145: TLinkLabel;
    LinkLabel146: TLinkLabel;
    LinkLabel147: TLinkLabel;
    LinkLabel148: TLinkLabel;
    LinkLabel149: TLinkLabel;
    LinkLabel150: TLinkLabel;
    LinkLabel151: TLinkLabel;
    LinkLabel152: TLinkLabel;
    LinkLabel153: TLinkLabel;
    LinkLabel154: TLinkLabel;
    LinkLabel155: TLinkLabel;
    LinkLabel156: TLinkLabel;
    LinkLabel157: TLinkLabel;
    LinkLabel158: TLinkLabel;
    LinkLabel159: TLinkLabel;
    LinkLabel160: TLinkLabel;
    LinkLabel161: TLinkLabel;
    LinkLabel162: TLinkLabel;
    LinkLabel163: TLinkLabel;
    LinkLabel164: TLinkLabel;
    LinkLabel165: TLinkLabel;
    LinkLabel166: TLinkLabel;
    LinkLabel167: TLinkLabel;
    LinkLabel168: TLinkLabel;
    LinkLabel169: TLinkLabel;
    LinkLabel170: TLinkLabel;
    LinkLabel171: TLinkLabel;
    LinkLabel172: TLinkLabel;
    LinkLabel173: TLinkLabel;
    DsPericias: TDataSource;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox16: TDBComboBox;
    DBComboBox24: TDBComboBox;
    DBComboBox25: TDBComboBox;
    DBComboBox15: TDBComboBox;
    DBComboBox14: TDBComboBox;
    DBComboBox13: TDBComboBox;
    DBComboBox12: TDBComboBox;
    DBComboBox11: TDBComboBox;
    DBComboBox10: TDBComboBox;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    DBComboBox9: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBComboBox23: TDBComboBox;
    DBComboBox22: TDBComboBox;
    DBComboBox21: TDBComboBox;
    DBComboBox20: TDBComboBox;
    DBComboBox19: TDBComboBox;
    DBComboBox18: TDBComboBox;
    DBComboBox17: TDBComboBox;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    DBMemo7: TDBMemo;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    TxtArcTot: TDBEdit;
    TxtArcAtual: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit19: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    Image7: TImage;
    LinkLabel174: TLinkLabel;
    LinkLabel175: TLinkLabel;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    dsComplemento: TDataSource;
    DsEquipamento: TDataSource;
    DBGrid2: TDBGrid;
    DsMagiasPrep: TDataSource;
    Button3: TButton;
    Button4: TButton;
    Label15: TLabel;
    Label16: TLabel;
    TxtDivAtual: TDBEdit;
    TxtDivTot: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Image5: TImage;
    Image8: TImage;
    Image20: TImage;
    DBCheckBox17: TDBCheckBox;
    LinkLabel180: TLinkLabel;
    DBEdit22: TDBEdit;
    LinkLabel181: TLinkLabel;
    DBEdit23: TDBEdit;
    LinkLabel182: TLinkLabel;
    DBEdit24: TDBEdit;
    LinkLabel183: TLinkLabel;
    DBEdit25: TDBEdit;
    DBComboBox27: TDBComboBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    Cr�ditos: TTabSheet;
    Image21: TImage;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBComboBox26: TDBComboBox;
    DBComboBox28: TDBComboBox;
    DBComboBox29: TDBComboBox;
    LinkLabel176: TLinkLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBCheckBox21Click(Sender: TObject);
    procedure DBCheckBox23Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    varForca :Integer;


  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ALFicha;

{ TfrmTormenta }
procedure TfrmTormenta.Button1Click(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.Append;
end;

procedure TfrmTormenta.Button2Click(Sender: TObject);
begin
  try
    DBGrid1.DataSource.DataSet.Delete;
  except
    On E:Exception Do
      Begin
        Raise Exception.Create('Sem equipamentos!');
      End;
  end;
end;

procedure TfrmTormenta.Button3Click(Sender: TObject);
begin
  DBGrid2.DataSource.DataSet.Append;
end;

procedure TfrmTormenta.Button4Click(Sender: TObject);
begin
  try
    DBGrid2.DataSource.DataSet.Delete;
  except
   On E:Exception Do
    Begin
      raise Exception.Create('Sem Magias Preparadas!');
    End;
  end;
end;

procedure TfrmTormenta.DBCheckBox21Click(Sender: TObject);
begin
  if DBCheckBox21.Checked then
    TxtArcAtual.DataField := 'PMAtualExpA'
  else
    TxtArcAtual.DataField := 'PMAtual';
end;

procedure TfrmTormenta.DBCheckBox23Click(Sender: TObject);
begin
  if DBCheckBox23.Checked then
    TxtDivAtual.DataField := 'PMAtualExpD'
  else
    TxtDivAtual.DataField := 'PMAtualD';
end;

procedure TfrmTormenta.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  If Key=#13 then
    Button1Click(Sender);
  If Key=#46 then
    Button2Click(Sender);
end;

procedure TfrmTormenta.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  If Key=#13 then
    Button3Click(Sender);
  If Key=#46 then
    Button4Click(Sender);
end;

end.