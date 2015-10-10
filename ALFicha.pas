unit ALFicha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RRPGPluginFicha, RRPGBaseVisaoFicha, Data.DB, RRPGBaseDataSet,
  RRPGDataSet, Math, Bde.DBTables;

type
  TfichaTormenta = class(TRRPGFicha)
    rdsFicha: TRRPGDataSet;
    rdsFichaNome: TStringField;
    rdsFichaJogador: TStringField;
    rdsFichaRaca: TStringField;
    rdsFichaClasseNivel: TStringField;
    rdsFichaTendencia: TStringField;
    rdsFichaSexo: TStringField;
    rdsFichaIdade: TIntegerField;
    rdsFichaDivindad: TStringField;
    rdsFichaTamanho: TStringField;
    rdsFichaDeslocamento: TStringField;
    rdsFichaModelo: TStringField;
    rdsFichaOutDestreza: TIntegerField;
    rdsFichaOutConstituição: TIntegerField;
    rdsFichaOutInteligencia: TIntegerField;
    rdsFichaOutSabedoria: TIntegerField;
    rdsFichaOutCarisma: TIntegerField;
    rdsFichaPvTotal: TIntegerField;
    rdsFichaPvAtual: TStringField;
    rdsFichaPontoDeAção: TIntegerField;
    rdsFichaCaTotal: TIntegerField;
    rdsFichaCAmetNivel: TIntegerField;
    rdsFichaCAModHab: TIntegerField;
    rdsFichaCaArmadura: TIntegerField;
    rdsFichaCAEscudo: TIntegerField;
    rdsFichaCaModTamanho: TIntegerField;
    rdsFichaCaModOut: TIntegerField;
    rdsFichaCaModOut2: TIntegerField;
    rdsFichaReducaoDeDano: TStringField;
    rdsFichaTotFort: TIntegerField;
    rdsFichaTotRefl: TIntegerField;
    rdsFichaTotVont: TIntegerField;
    rdsFichaMetNvFort: TIntegerField;
    rdsFichaMetNvRefl: TIntegerField;
    rdsFichaMetNvVont: TIntegerField;
    rdsFichaModHabFort: TIntegerField;
    rdsFichaModHabRefl: TIntegerField;
    rdsFichaModHabVont: TIntegerField;
    rdsFichaOutFort: TIntegerField;
    rdsFichaOutRefl: TIntegerField;
    rdsFichaOutVont: TIntegerField;
    rdsFichaCCTotal: TIntegerField;
    rdsFichaCDTotal: TIntegerField;
    rdsFichaCCBBA: TIntegerField;
    rdsFichaCDBBA: TIntegerField;
    rdsFichaCCModHab: TIntegerField;
    rdsFichaCDModHab: TIntegerField;
    rdsFichaCCModTam: TIntegerField;
    rdsFichaCDModTam: TIntegerField;
    rdsFichaCCOut: TIntegerField;
    rdsFichaCDOut: TIntegerField;
    rdsFichaArma1: TStringField;
    rdsFichaArma2: TStringField;
    rdsFichaArma3: TStringField;
    rdsFichaArma4: TStringField;
    rdsFichaArma5: TStringField;
    rdsFichaArma6: TStringField;
    rdsFichaArmaBonus1: TStringField;
    rdsFichaArmaBonus2: TStringField;
    rdsFichaArmaBonus3: TStringField;
    rdsFichaArmaBonus4: TStringField;
    rdsFichaArmaBonus5: TStringField;
    rdsFichaArmaBonus6: TStringField;
    rdsFichaArmaDano1: TStringField;
    rdsFichaArmaDano2: TStringField;
    rdsFichaArmaDano3: TStringField;
    rdsFichaArmaDano4: TStringField;
    rdsFichaArmaDano5: TStringField;
    rdsFichaArmaDano6: TStringField;
    rdsFichaArmaCritico1: TStringField;
    rdsFichaArmaCritico2: TStringField;
    rdsFichaArmaCritico3: TStringField;
    rdsFichaArmaCritico4: TStringField;
    rdsFichaArmaCritico5: TStringField;
    rdsFichaArmaCritico6: TStringField;
    rdsFichaArmaDistancia: TStringField;
    rdsFichaArmaDistancia2: TStringField;
    rdsFichaArmaDistancia3: TStringField;
    rdsFichaArmaDistancia4: TStringField;
    rdsFichaArmaDistancia5: TStringField;
    rdsFichaArmaDistancia6: TStringField;
    rdsFichaTipo: TStringField;
    rdsFichaTipo2: TStringField;
    rdsFichaTipo3: TStringField;
    rdsFichaTipo4: TStringField;
    rdsFichaTipo5: TStringField;
    rdsFichaTipo6: TStringField;
    rdsFichaArmadura1: TStringField;
    rdsFichaArmadura2: TStringField;
    rdsFichaArmadura3: TStringField;
    rdsFichaHabRaca: TStringField;
    rdsFichaHabCla1: TStringField;
    rdsFichaHabCla2: TStringField;
    rdsPericias: TRRPGDataSet;
    rdsPericiasTotAcrobacia: TIntegerField;
    rdsPericiasModAcrobacia: TIntegerField;
    rdsPericiasOutAcrobacia: TIntegerField;
    rdsPericiasTreiAcrobacia: TBooleanField;
    rdsPericiasTotAdeAnimais: TIntegerField;
    rdsPericiasGradAdeAnimais: TIntegerField;
    rdsPericiasModHabAdeAnimais: TIntegerField;
    rdsPericiasOutAdeAnimais: TIntegerField;
    rdsPericiasTreiAdeanimais: TBooleanField;
    rdsPericiasTotalAtletismo: TIntegerField;
    rdsPericiasGradAtletismo: TIntegerField;
    rdsPericiasModAtletismo: TIntegerField;
    rdsPericiasOutAtletismo: TIntegerField;
    rdsPericiasTreiAtletismo: TBooleanField;
    rdsPericiasTextAtuacao: TStringField;
    rdsPericiasTotAtuacao1: TIntegerField;
    rdsPericiasGradAtuacao1: TIntegerField;
    rdsPericiasModAtuacao: TIntegerField;
    rdsPericiasOutAtuacao: TIntegerField;
    rdsPericiasTextAtuacao2: TStringField;
    rdsPericiasTotAtuacao2: TIntegerField;
    rdsPericiasGradAtuacao2: TIntegerField;
    rdsPericiasModAtuacao2: TIntegerField;
    rdsPericiasOutAtuacao2: TIntegerField;
    rdsPericiasTreiAtuacao2: TBooleanField;
    rdsPericiasTotCavalgar: TIntegerField;
    rdsPericiasGradCavalgar: TIntegerField;
    rdsPericiasModCavalgar: TIntegerField;
    rdsPericiasOutCavalgar: TIntegerField;
    rdsPericiasTreiCavalgar: TBooleanField;
    rdsPericiasTxtConhecimento1: TStringField;
    rdsPericiasTotConhecimento: TIntegerField;
    rdsPericiasGradConhecimento: TIntegerField;
    rdsPericiasModConhecimento1: TIntegerField;
    rdsPericiasOutConhecimento1: TIntegerField;
    rdsPericiasTreiConhecimento1: TBooleanField;
    rdsPericiasTxtConhecimento2: TStringField;
    rdsPericiasTotConhecimento2: TIntegerField;
    rdsPericiasGradConhecimento2: TIntegerField;
    rdsPericiasModConhecimento2: TIntegerField;
    rdsPericiasOutConhecimento2: TIntegerField;
    rdsPericiasTreiConhecimento2: TBooleanField;
    rdsPericiasTotCura: TIntegerField;
    rdsPericiasGradCura: TIntegerField;
    rdsPericiasModCura: TIntegerField;
    rdsPericiasOutCura: TIntegerField;
    rdsPericiasTreiCura: TBooleanField;
    rdsPericiasTotDiplomacia: TIntegerField;
    rdsPericiasGradDiplomacia: TIntegerField;
    rdsPericiasModDiplomacia: TIntegerField;
    rdsPericiasOutDiplomacia: TIntegerField;
    rdsPericiasTreiDiplomacia: TBooleanField;
    rdsPericiasTotGraduacao: TIntegerField;
    rdsPericiasGrandEnganacao: TIntegerField;
    rdsPericiasModEnganacao: TIntegerField;
    rdsPericiasOutEnganacao: TIntegerField;
    rdsPericiasTreiEngancao: TBooleanField;
    rdsPericiasTotFurtividade: TIntegerField;
    rdsPericiasGradFurtividade: TIntegerField;
    rdsPericiasModFurtividade: TIntegerField;
    rdsPericiasOutFurtividade: TIntegerField;
    rdsPericiasTreiFurtividade: TBooleanField;
    rdsPericiasTotIdMagia: TIntegerField;
    rdsPericiasGradIdMagia: TIntegerField;
    rdsPericiasModIdMagia: TIntegerField;
    rdsPericiasOutIdMagia: TIntegerField;
    rdsPericiasTreiIdMagia: TBooleanField;
    rdsPericiasTotIniciativa: TIntegerField;
    rdsPericiasGradIniciativa: TIntegerField;
    rdsPericiasModIniciativa: TIntegerField;
    rdsPericiasOutIniciativa: TIntegerField;
    rdsPericiasTreiIniciativa: TBooleanField;
    rdsPericiasTotIntimidacao: TIntegerField;
    rdsPericiasGradInitimidacao: TIntegerField;
    rdsPericiasModIntimidacao: TIntegerField;
    rdsPericiasOutIntimidacao: TIntegerField;
    rdsPericiasTreiIntimidacao: TBooleanField;
    rdsPericiasTotIntuicao: TIntegerField;
    rdsPericiasGradIntuicao: TIntegerField;
    rdsPericiasModIntuicao: TIntegerField;
    rdsPericiasOutIntuicao: TIntegerField;
    rdsPericiasTreiIntuicao: TBooleanField;
    rdsPericiasTotLadinagem: TIntegerField;
    rdsPericiasGradLadinagem: TIntegerField;
    rdsPericiasModLadinagem: TIntegerField;
    rdsPericiasOutLadinagem: TIntegerField;
    rdsPericiasTreiLadinagem: TBooleanField;
    rdsPericiasTotObtInformacao: TIntegerField;
    rdsPericiasGradObtInformacao: TIntegerField;
    rdsPericiasModObtInformacao: TIntegerField;
    rdsPericiasOutObtInformacao: TIntegerField;
    rdsPericiasTreiObtInformacao: TBooleanField;
    rdsPericiasTxtOficio1: TStringField;
    rdsPericiasTotOficio1: TIntegerField;
    rdsPericiasGradOficio1: TIntegerField;
    rdsPericiasModOficio1: TIntegerField;
    rdsPericiasOutOficio1: TIntegerField;
    rdsPericiasTreiOficio1: TBooleanField;
    rdsPericiasTxtOficio2: TStringField;
    rdsPericiasTotOficio2: TIntegerField;
    rdsPericiasGradOficio2: TIntegerField;
    rdsPericiasModOficio2: TIntegerField;
    rdsPericiasOutOficio2: TIntegerField;
    rdsPericiasTreiOficio2: TBooleanField;
    rdsPericiasTotPercepcao: TIntegerField;
    rdsPericiasModPercepcao: TIntegerField;
    rdsPericiasGradPercepcao: TIntegerField;
    rdsPericiasOutPercepcao: TIntegerField;
    rdsPericiasTreiPercepcao: TBooleanField;
    rdsPericiasTotSobrevivencia: TIntegerField;
    rdsPericiasModSobrevivencia: TIntegerField;
    rdsPericiasGradSobrevivencia: TIntegerField;
    rdsPericiasOutSobrevivencia: TIntegerField;
    rdsPericiasTreiSobrevivencia: TBooleanField;
    rdsPericiasTxtOutPericia1: TStringField;
    rdsPericiasTotOutPericia1: TIntegerField;
    rdsPericiasGradOutPericia1: TIntegerField;
    rdsPericiasModOutPericia1: TIntegerField;
    rdsPericiasOutOutPericia1: TIntegerField;
    rdsPericiasTreiOutPericia1: TBooleanField;
    rdsPericiasTxtOutPericia2: TStringField;
    rdsPericiasTotOutPericia2: TIntegerField;
    rdsPericiasGradOutPericia2: TIntegerField;
    rdsPericiasModOutPericia2: TIntegerField;
    rdsPericiasOutOutPericia2: TIntegerField;
    rdsPericiasTreiOutPericia2: TBooleanField;
    rdsPericiasTxtOutPericia3: TStringField;
    rdsPericiasTotOutPericia3: TIntegerField;
    rdsPericiasGradOutPericia3: TIntegerField;
    rdsPericiasModOutPericia3: TIntegerField;
    rdsPericiasOutOutPericia3: TIntegerField;
    rdsPericiasTreiOutPericia3: TBooleanField;
    rdsPericiasTreiAtuacao1: TBooleanField;
    rdsFichaOutForca: TStringField;
    rdsPericiasGradAcrobacia: TIntegerField;
    rdsPericiasHabChAcrob: TStringField;
    rdsPericiasHabChAdAnimais: TStringField;
    rdsPericiasHabChAtlet: TStringField;
    rdsPericiasHabChAtuacao1: TStringField;
    rdsPericiasHabChAtuacao2: TStringField;
    rdsPericiasHabChCaval: TStringField;
    rdsPericiasHabChConh1: TStringField;
    rdsPericiasHabChConh2: TStringField;
    rdsPericiasHabChCur: TStringField;
    rdsPericiasHabChDir: TStringField;
    rdsPericiasHabChEng: TStringField;
    rdsPericiasHabChFurt: TStringField;
    rdsPericiasHabChIdMag: TStringField;
    rdsPericiasHabChIni: TStringField;
    rdsPericiasHabChInti: TStringField;
    rdsPericiasHabChLad: TStringField;
    rdsPericiasHabChObtInf: TStringField;
    rdsPericiasHabChOfi1: TStringField;
    rdsPericiasHabChOfi2: TStringField;
    rdsPericiasHabChPer: TStringField;
    rdsPericiasHabChSobr: TStringField;
    rdsPericiasHabChOut1: TStringField;
    rdsPericiasHabChOut2: TStringField;
    rdsPericiasHabChOut3: TStringField;
    rdsPericiasHabChIntui: TStringField;
    rdsComplemento: TRRPGDataSet;
    rdsEquipamento: TRRPGDataSet;
    rdsEquipamentoEquipamento: TStringField;
    rdsComplementoCapacidade: TStringField;
    rdsComplementoPesoCarg: TStringField;
    rdsComplementoReduzDesloc: TIntegerField;
    rdsComplementoTalentos: TStringField;
    rdsComplementoMagias: TStringField;
    rdsComplementoIdiomas: TStringField;
    rdsComplementoNotas: TStringField;
    rdsComplementoHistoria: TStringField;
    rdsComplementoAparencia: TStringField;
    rdsComplementoPersonalidade: TStringField;
    rdsComplementoCampanha: TStringField;
    rdsComplementoMestr: TStringField;
    rdsComplementoExperiencia: TStringField;
    rdsComplementoNext: TStringField;
    rdsComplementoTibar: TIntegerField;
    rdsComplementoTibarPlat: TIntegerField;
    rdsComplementoTibarOuro: TIntegerField;
    rdsComplementoTibarPlati: TIntegerField;
    rdsEquipamentoPeso: TFloatField;
    rdsMagias: TRRPGDataSet;
    rdsMagiasNome: TStringField;
    rdsMagiasCusto: TIntegerField;
    rdsFichamodForça: TIntegerField;
    rdsFichamodDestreza: TIntegerField;
    rdsFichamodConstituição: TIntegerField;
    rdsFichamodInteligencia: TIntegerField;
    rdsFichamodSabedoria: TIntegerField;
    rdsFichamodCarisma: TIntegerField;
    rdsFichaForca: TIntegerField;
    rdsFichaDestreza: TIntegerField;
    rdsFichaConstituição: TIntegerField;
    rdsFichaInteligencia: TIntegerField;
    rdsFichaSabedoria: TIntegerField;
    rdsFichaCarisma: TIntegerField;
    rdsFichanvSoma: TIntegerField;
    rdsMagiasTipo: TStringField;
    rdsComplementoPMTotal: TIntegerField;
    rdsComplementoPmTotalD: TIntegerField;
    rdsComplementoPmAtual: TIntegerField;
    rdsComplementoPmAtualD: TIntegerField;
    rdsPericiasTotJogatina: TIntegerField;
    rdsPericiasGradJogatina: TIntegerField;
    rdsPericiasOutJogatina: TIntegerField;
    rdsPericiasTreiJogatina: TBooleanField;
    rdsPericiasModJogatina: TIntegerField;
    rdsComplementoPMExp: TBooleanField;
    rdsComplementoPMexpD: TBooleanField;
    rdsPericiasHabJogatina: TStringField;
    rdsComplementoPMAtualExpA: TIntegerField;
    rdsComplementoPMAtualExpD: TIntegerField;
    rdsFichaArmEsc1: TStringField;
    rdsFichaArmEsc2: TStringField;
    rdsFichaArmEsc3: TStringField;
    rdsFichaArmaduraBMD1: TIntegerField;
    rdsFichaArmaduraCA1: TIntegerField;
    rdsFichaArmaduraPen1: TIntegerField;
    rdsFichaArmaduraBMD2: TIntegerField;
    rdsFichaArmaduraCA2: TIntegerField;
    rdsFichaArmaduraPen2: TIntegerField;
    rdsFichaArmaduraBMD3: TIntegerField;
    rdsFichaArmaduraCA3: TIntegerField;
    rdsFichaArmaduraPen3: TIntegerField;
    procedure rdsPericiasCalcFields(DataSet: TDataSet);
    procedure rdsPericiasNewRecord(DataSet: TDataSet);
    procedure rdsFichaCalcFields(DataSet: TDataSet);
    procedure rdsFichaNewRecord(DataSet: TDataSet);
    procedure RRPGFichaCreate(Sender: TObject);
    procedure RRPGFichaAfterCaregarFicha(Sender: TObject);
    procedure rdsComplementoCalcFields(DataSet: TDataSet);
    procedure rdsComplementoNewRecord(DataSet: TDataSet);
    procedure rdsEquipamentoAfterPost(DataSet: TDataSet);
    procedure rdsMagiasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    function modPericia(modHab:String):Integer;
  protected
    function GetVisaoClass: TFrmBaseVisaoFichaClass; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ALVisao;

function TfichaTormenta.GetVisaoClass: TFrmBaseVisaoFichaClass;
begin
  Result := TfrmTormenta; // Retorne uma classe TfrmVisaoFicha;
end;

function TfichaTormenta.modPericia(modHab: String): Integer;
begin
  if modHab = 'FOR' then
    modPericia := rdsFichamodForça.AsInteger
  else if modHab = 'DES' then
    modPericia := rdsFichamodDestreza.AsInteger
  else if modHab = 'CON' then
    modPericia := rdsFichamodConstituição.AsInteger
  else if modHab = 'INT' then
    modPericia := rdsFichamodInteligencia.AsInteger
  else if modHab = 'SAB' then
    modPericia := rdsFichamodSabedoria.AsInteger
  else if modHab = 'CAR' then
    modPericia := rdsFichamodCarisma.AsInteger;
end;

procedure TfichaTormenta.rdsComplementoCalcFields(DataSet: TDataSet);
var floatPeso : Double;
    manaArcana, manaDivina :Integer;
begin
  manaArcana := 0;
  manaDivina := 0;

  rdsComplementoCapacidade.AsString  := IntToStr(rdsFichaForca.AsInteger*10);
  rdsComplementoReduzDesloc.AsString := IntToStr(rdsFichaForca.AsInteger*3);

  rdsEquipamento.First;
  while not rdsEquipamento.Eof do
    Begin
      floatPeso := floatPeso + rdsEquipamentoPeso.AsFloat;
      rdsEquipamento.Next;
    End;
  rdsEquipamento.First;

  floatPeso := RoundTo(floatPeso,-2);

  rdsComplementoPesoCarg.AsString  := FloatToStr(floatPeso);

  rdsMagias.First;
  while not rdsMagias.EoF do
    Begin
      if rdsMagiasTipo.AsString = 'A' then
        manaArcana := manaArcana + rdsMagiasCusto.AsInteger;
      if rdsMagiasTipo.AsString = 'D' then
        manaDivina := manaDivina + rdsMagiasCusto.AsInteger;
      rdsMagias.Next;
    End;
  rdsMagias.First;

  manaArcana := (rdsComplementoPMTotal.AsInteger)-manaArcana;
  manaDivina := (rdsComplementoPMTotalD.AsInteger)-manaDivina;

  rdsComplementoPMAtual.AsInteger  :=  manaArcana;
  rdsComplementoPMAtualD.AsInteger :=  manaDivina;


end;

procedure TfichaTormenta.rdsComplementoNewRecord(DataSet: TDataSet);
begin
  rdsComplementoPMAtual.AsInteger  := 0;
  rdsComplementoPMAtualD.AsInteger := 0;
end;

procedure TfichaTormenta.rdsEquipamentoAfterPost(DataSet: TDataSet);
begin
  rdsComplementoCalcFields(rdsComplemento);
end;

procedure TfichaTormenta.rdsFichaCalcFields(DataSet: TDataSet);
var IntAux :Integer;
begin

   If rdsFichanvSoma.AsString = '' then
      rdsFichanvSoma.AsString := '1';

   If rdsFichaForca.AsString = '' then
      rdsFichaForca.AsString    := '10'
   Else if rdsFichaDestreza.AsString = '' then
      rdsFichaDestreza.AsString := '10'
   Else if rdsFichaConstituição.AsString = '' then
      rdsFichaConstituição.AsString := '10'
   Else if rdsFichaInteligencia.AsString = '' then
      rdsFichaInteligencia.AsString := '10'
   Else if rdsFichaSabedoria.AsString = '' then
      rdsFichaSabedoria.AsString := '10'
   Else if rdsFichaCarisma.AsString = '' then
      rdsFichaCarisma.AsString := '10';

   SetRoundMode(rmDown);


   IntAux := Round((rdsFichaForca.AsInteger-10.0) / 2.0);
   rdsFichamodForça.AsFloat      := IntAux;

   IntAux := Round((rdsFichaDestreza.AsInteger-10.0) / 2.0);
   rdsFichamodDestreza.AsInteger      := IntAux;

   IntAux := Round((rdsFichaConstituição.AsInteger-10.0) / 2.0);
   rdsFichamodConstituição.AsInteger  := IntAux;

   IntAux := Round((rdsFichaInteligencia.AsInteger-10.0) / 2.0);
   rdsFichamodInteligencia.AsInteger  := IntAux;

   IntAux := Round((rdsFichaSabedoria.AsInteger-10.0) / 2.0);
   rdsFichamodSabedoria.AsInteger     := IntAux;

   IntAux := Round((rdsFichaCarisma.AsInteger-10.0) / 2.0);
   rdsFichamodCarisma.AsInteger       := IntAux;


   rdsFichaMetNvFort.AsInteger      := rdsFichanvSoma.AsInteger div 2;
   rdsFichaMetNvRefl.AsInteger      := rdsFichanvSoma.AsInteger div 2;
   rdsFichaMetNvVont.AsInteger      := rdsFichanvSoma.AsInteger div 2;
   rdsFichaCAmetNivel.AsInteger     := rdsFichanvSoma.AsInteger div 2;

   rdsFichaModHabFort.AsInteger     := rdsFichamodConstituição.AsInteger;
   rdsFichaModHabRefl.AsInteger     := rdsFichamodDestreza.AsInteger;
   rdsFichaModHabVont.AsInteger     := rdsFichamodSabedoria.AsInteger;

   rdsFichaCAModHab.AsInteger       := rdsFichamodDestreza.AsInteger;

   {If rdsFichaArmEsc1.AsString <> 'Nada' then
      Begin
        If rdsFichaArmEsc1.AsString = 'Armadura' then
          Begin
            rdsFichaCaArmadura.AsInteger := rdsFichaArmaduraCA1.AsInteger;

            If rdsFichaCaModHab.AsInteger > rdsFichaArmaduraBMD1.AsInteger then
              rdsFichaCaModHab.AsInteger := rdsFichaArmaduraBMD1.AsInteger
            else
              rdsFichaCAModHab.AsInteger := rdsFichamodDestreza.AsInteger;

           // rdsFichaArmaduraPen1.AsInteger;
          End
        Else
          Begin           ^}
            {rdsFichaCAEscudo.AsInteger :=   rdsFichaArmadura1.AsInteger;

            If rdsFichaCaModHab.AsInteger > rdsFichaArmaduraBMD1.AsInteger then
              rdsFichaCaModHab.AsInteger := rdsFichaArmaduraBMD1.AsInteger
            else
              rdsFichaCAModHab.AsInteger := rdsFichamodDestreza.AsInteger;   }

            //rdsFichaArmaduraPen1.AsInteger;
          {End;
      End;

    If rdsFichaArmEsc2.AsString <> 'Nada' then
      Begin
        If rdsFichaArmEsc2.AsString = 'Armadura' then
          Begin     }
            {rdsFichaCaArmadura.AsInteger := rdsFichaArmaduraCA2.AsInteger;

            If rdsFichaCaModHab.AsInteger > rdsFichaArmaduraBMD2.AsInteger then
              rdsFichaCaModHab.AsInteger := rdsFichaArmaduraBMD2.AsInteger
            else
              rdsFichaCAModHab.AsInteger := rdsFichamodDestreza.AsInteger;         }

           // rdsFichaArmaduraPen2.AsInteger;
          {End
        Else
          Begin}
            {rdsFichaCAEscudo.AsInteger :=   rdsFichaArmadura2.AsInteger;

            If rdsFichaCaModHab.AsInteger > rdsFichaArmaduraBMD2.AsInteger then
              rdsFichaCaModHab.AsInteger := rdsFichaArmaduraBMD2.AsInteger
            else
              rdsFichaCAModHab.AsInteger := rdsFichamodDestreza.AsInteger;  }

           // rdsFichaArmaduraPen2.AsInteger;
          {End;
      End;

    If rdsFichaArmEsc3.AsString <> 'Nada' then
      Begin
        If rdsFichaArmEsc3.AsString = 'Armadura' then
          Begin       }
           { rdsFichaCaArmadura.AsInteger := rdsFichaArmaduraCA3.AsInteger;

            If rdsFichaCaModHab.AsInteger > rdsFichaArmaduraBMD3.AsInteger then
              rdsFichaCaModHab.AsInteger := rdsFichaArmaduraBMD3.AsInteger
            else
              rdsFichaCAModHab.AsInteger := rdsFichamodDestreza.AsInteger;   }

            //rdsFichaArmaduraPen1.AsInteger;
          {End
        Else
          Begin     }
            {rdsFichaCAEscudo.AsInteger := rdsFichaArmadura3.AsInteger;

            If rdsFichaCaModHab.AsInteger > rdsFichaArmaduraBMD3.AsInteger then
              rdsFichaCaModHab.AsInteger := rdsFichaArmaduraBMD3.AsInteger
            else
              rdsFichaCAModHab.AsInteger := rdsFichamodDestreza.AsInteger;
                                    }
            //rdsFichaArmaduraPen3.AsInteger;
        {  End;
      End;   }

   rdsFichaCCTotal.AsInteger        :=  rdsFichaCCBBA.AsInteger + rdsFichaCCModHab.AsInteger +
          rdsFichaCCModTam.AsInteger + rdsFichaCCOut.AsInteger;

   rdsFichaCDTotal.AsInteger        := rdsFichaCDBBA.AsInteger + rdsFichaCDModHab.AsInteger +
          rdsFichaCDModTam.AsInteger + rdsFichaCDOut.AsInteger;

   rdsFichaCaTotal.AsInteger        := 10+rdsFichaCAmetNivel.AsInteger+
          rdsFichaCAModHab.AsInteger + rdsFichaCaArmadura.AsInteger +
          rdsFichaCaEscudo.AsInteger + rdsFichaCAModTamanho.AsInteger+
          rdsFichaCaModOut.AsInteger + rdsFichaCaModOut2.AsInteger;




   rdsFichaTotFort.AsInteger := rdsFichaMetNvFort.AsInteger +
       rdsFichaModHabFort.AsInteger+ rdsFichaOutFort.AsInteger;
   rdsFichaTotRefl.AsInteger := rdsFichaMetNvRefl.AsInteger +
       rdsFichaModHabRefl.AsInteger+ rdsFichaOutRefl.AsInteger;
   rdsFichaTotVont.AsInteger := rdsFichaMetNvVont.AsInteger +
       rdsFichaModHabVont.AsInteger+ rdsFichaOutVont.AsInteger;

   rdsPericiasCalcFields(rdsPericias);
   rdsComplementoCalcFields(rdsComplemento);

end;

procedure TfichaTormenta.rdsFichaNewRecord(DataSet: TDataSet);
begin
  rdsFichanvSoma.AsInteger       := 1;

  rdsFichaForca.AsInteger        := 10;
  rdsFichaDestreza.AsInteger     := 10;
  rdsFichaConstituição.AsInteger := 10;
  rdsFichaInteligencia.AsInteger := 10;
  rdsFichaSabedoria.AsInteger    := 10;
  rdsFichaCarisma.AsInteger      := 10;

  rdsFichaArmaduraCA1.AsInteger := 0;
  rdsFichaArmaduraCA2.AsInteger := 0;
  rdsFichaArmaduraCA3.AsInteger := 0;

  rdsFichaArmaduraBMD1.AsInteger := 0;
  rdsFichaArmaduraBMD2.AsInteger := 0;
  rdsFichaArmaduraBMD3.AsInteger := 0;

  rdsFichaArmaduraPen1.AsInteger := 0;
  rdsFichaArmaduraPen2.AsInteger := 0;
  rdsFichaArmaduraPen3.AsInteger := 0;

  rdsFichaArmEsc1.AsString       := 'Nada';
  rdsFichaArmEsc2.AsString       := 'Nada';
  rdsFichaArmEsc3.AsString       := 'Nada';

end;

procedure TfichaTormenta.rdsMagiasAfterPost(DataSet: TDataSet);
begin
  rdsComplementoCalcFields(rdsComplemento);
end;

procedure TfichaTormenta.rdsPericiasCalcFields(DataSet: TDataSet);
begin

  If rdsPericiasTreiAcrobacia.AsBoolean Then
    rdsPericiasGradAcrobacia.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradAcrobacia.AsInteger := Round(rdsFichanvSoma.AsInteger / 2.0);

  rdsPericiasModAcrobacia.AsInteger := modPericia(rdsPericiasHabChAcrob.AsString);

  rdsPericiasTotAcrobacia.AsInteger := rdsPericiasGradAcrobacia.AsInteger +
     rdsPericiasModAcrobacia.AsInteger + rdsPericiasOutAcrobacia.AsInteger -
     rdsFichaArmaduraPen1.AsInteger - rdsFichaArmaduraPen2.AsInteger -
     rdsFichaArmaduraPen3.AsInteger;

  If rdsPericiasTreiAdeanimais.AsBoolean Then
    rdsPericiasGradAdeAnimais.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradAdeAnimais.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModHabAdeAnimais.AsInteger := modPericia(rdsPericiasHabChAdAnimais.AsString);

  rdsPericiasTotAdeAnimais.AsInteger := rdsPericiasGradAdeAnimais.AsInteger +
     rdsPericiasModHabAdeAnimais.AsInteger + rdsPericiasOutAdeAnimais.AsInteger;

  If rdsPericiasTreiAtletismo.AsBoolean Then
    rdsPericiasGradAtletismo.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradAtletismo.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModAtletismo.AsInteger := modPericia(rdsPericiasHabChAtlet.AsString);

  rdsPericiasTotalAtletismo.AsInteger := rdsPericiasGradAtletismo.AsInteger +
     rdsPericiasModAtletismo.AsInteger + rdsPericiasOutAtletismo.AsInteger -
     rdsFichaArmaduraPen1.AsInteger - rdsFichaArmaduraPen2.AsInteger -
     rdsFichaArmaduraPen3.AsInteger;

  If rdsPericiasTreiAtuacao2.AsBoolean Then
    rdsPericiasGradAtuacao2.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradAtuacao2.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModAtuacao2.AsInteger := modPericia(rdsPericiasHabChAtuacao2.AsString);

  rdsPericiasTotAtuacao2.AsInteger := rdsPericiasGradAtuacao2.AsInteger +
     rdsPericiasModAtuacao2.AsInteger + rdsPericiasOutAtuacao2.AsInteger;

  If rdsPericiasTreiAtuacao1.AsBoolean Then
    rdsPericiasGradatuacao1.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradAtuacao1.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModAtuacao.AsInteger := modPericia(rdsPericiasHabChAtuacao1.AsString);

  rdsPericiasTotAtuacao1.AsInteger := rdsPericiasGradAtuacao1.AsInteger +
     rdsPericiasModAtuacao.AsInteger + rdsPericiasOutAtuacao.AsInteger;

  If rdsPericiasTreiCavalgar.AsBoolean Then
    rdsPericiasGradCavalgar.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradCavalgar.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModCavalgar.AsInteger := modPericia(rdsPericiasHabChCaval.AsString);

  rdsPericiasTotCavalgar.AsInteger := rdsPericiasGradCavalgar.AsInteger +
     rdsPericiasModCavalgar.AsInteger + rdsPericiasOutCavalgar.AsInteger;

  If rdsPericiasTreiConhecimento1.AsBoolean Then
    rdsPericiasGradConhecimento.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradConhecimento.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModConhecimento1.AsInteger := modPericia(rdsPericiasHabChConh1.AsString);

  rdsPericiasTotConhecimento.AsInteger := rdsPericiasGradConhecimento.AsInteger +
     rdsPericiasModConhecimento1.AsInteger + rdsPericiasOutConhecimento1.AsInteger;

  If rdsPericiasTreiConhecimento2.AsBoolean Then
    rdsPericiasGradConhecimento2.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradConhecimento2.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModConhecimento2.AsInteger := modPericia(rdsPericiasHabChConh2.AsString);

  rdsPericiasTotConhecimento2.AsInteger := rdsPericiasGradConhecimento2.AsInteger +
     rdsPericiasModConhecimento2.AsInteger + rdsPericiasOutConhecimento2.AsInteger;

  If rdsPericiasTreiCura.AsBoolean Then
    rdsPericiasGradCura.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradCura.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModCura.AsInteger := modPericia(rdsPericiasHabChCur.AsString);

  rdsPericiasTotCura.AsInteger := rdsPericiasGradCura.AsInteger +
     rdsPericiasModCura.AsInteger + rdsPericiasOutCura.AsInteger;

  If rdsPericiasTreiDiplomacia.AsBoolean Then
    rdsPericiasGradDiplomacia.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradDiplomacia.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModDiplomacia.AsInteger := modPericia(rdsPericiasHabChDir.AsString);

  rdsPericiasTotDiplomacia.AsInteger := rdsPericiasGradDiplomacia.AsInteger +
     rdsPericiasModDiplomacia.AsInteger + rdsPericiasOutDiplomacia.AsInteger;


  If rdsPericiasTreiEngancao.AsBoolean Then
    rdsPericiasGrandEnganacao.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGrandEnganacao.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModEnganacao.AsInteger := modPericia(rdsPericiasHabChEng.AsString);

  rdsPericiasTotGraduacao.AsInteger := rdsPericiasGrandEnganacao.AsInteger +
     rdsPericiasModEnganacao.AsInteger + rdsPericiasOutEnganacao.AsInteger;

  If rdsPericiasTreiIdMagia.AsBoolean Then
    rdsPericiasGradIdMagia.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradIdMagia.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModIdMagia.AsInteger := modPericia(rdsPericiasHabChIdMag.AsString);

  rdsPericiasTotIdMagia.AsInteger := rdsPericiasGradIdMagia.AsInteger +
     rdsPericiasModIdMagia.AsInteger + rdsPericiasOutIdMagia.AsInteger;

  If rdsPericiasTreiFurtividade.AsBoolean Then
    rdsPericiasGradFurtividade.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradFurtividade.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModFurtividade.AsInteger := modPericia(rdsPericiasHabChFurt.AsString);

  rdsPericiasTotFurtividade.AsInteger := rdsPericiasGradFurtividade.AsInteger +
     rdsPericiasModFurtividade.AsInteger + rdsPericiasOutFurtividade.AsInteger -
     rdsFichaArmaduraPen1.AsInteger - rdsFichaArmaduraPen2.AsInteger -
     rdsFichaArmaduraPen3.AsInteger;

  If rdsPericiasTreiIniciativa.AsBoolean Then
    rdsPericiasGradIniciativa.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradIniciativa.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModIniciativa.AsInteger := modPericia(rdsPericiasHabChIni.AsString);

  rdsPericiasTotIniciativa.AsInteger := rdsPericiasGradIniciativa.AsInteger +
     rdsPericiasModIniciativa.AsInteger + rdsPericiasOutIniciativa.AsInteger;

  If rdsPericiasTreiIntimidacao.AsBoolean Then
    rdsPericiasGradInitimidacao.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradInitimidacao.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModIntimidacao.AsInteger := modPericia(rdsPericiasHabChInti.AsString);

  rdsPericiasTotIntimidacao.AsInteger := rdsPericiasGradInitimidacao.AsInteger +
     rdsPericiasModIntimidacao.AsInteger + rdsPericiasOutIntimidacao.AsInteger;

  If rdsPericiasTreiIntuicao.AsBoolean Then
    rdsPericiasGradIntuicao.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradIntuicao.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModIntuicao.AsInteger := modPericia(rdsPericiasHabChIntui.AsString);

  rdsPericiasTotIntuicao.AsInteger := rdsPericiasGradIntuicao.AsInteger +
     rdsPericiasModIntuicao.AsInteger + rdsPericiasOutIntuicao.AsInteger;

  If rdsPericiasTreiLadinagem.AsBoolean Then
    rdsPericiasGradLadinagem.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradLadinagem.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModLadinagem.AsInteger := modPericia(rdsPericiasHabChLad.AsString);

  rdsPericiasTotLadinagem.AsInteger := rdsPericiasGradLadinagem.AsInteger +
     rdsPericiasModLadinagem.AsInteger + rdsPericiasOutLadinagem.AsInteger -
     rdsFichaArmaduraPen1.AsInteger - rdsFichaArmaduraPen2.AsInteger -
     rdsFichaArmaduraPen3.AsInteger;
     ;

  If rdsPericiasTreiObtInformacao.AsBoolean Then
    rdsPericiasGradObtInformacao.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradObtInformacao.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModObtInformacao.AsInteger := modPericia(rdsPericiasHabChObtInf.AsString);

  rdsPericiasTotObtInformacao.AsInteger := rdsPericiasGradObtInformacao.AsInteger +
     rdsPericiasModObtInformacao.AsInteger + rdsPericiasOutObtInformacao.AsInteger;

  If rdsPericiasTreiOficio1.AsBoolean Then
    rdsPericiasGradOficio1.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradOficio1.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModOficio1.AsInteger := modPericia(rdsPericiasHabChOfi1.AsString);

  rdsPericiasTotOficio1.AsInteger := rdsPericiasGradOficio1.AsInteger +
     rdsPericiasModOficio1.AsInteger + rdsPericiasOutOficio1.AsInteger;

  If rdsPericiasTreiOficio2.AsBoolean Then
    rdsPericiasGradOficio2.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradOficio2.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModOficio2.AsInteger := modPericia(rdsPericiasHabChOfi2.AsString);

  rdsPericiasTotOficio2.AsInteger := rdsPericiasGradOficio2.AsInteger +
     rdsPericiasModOficio2.AsInteger + rdsPericiasOutOficio2.AsInteger;

  If rdsPericiasTreiPercepcao.AsBoolean Then
    rdsPericiasGradPercepcao.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradPercepcao.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModPercepcao.AsInteger := modPericia(rdsPericiasHabChPer.AsString);

  rdsPericiasTotPercepcao.AsInteger := rdsPericiasGradPercepcao.AsInteger +
     rdsPericiasModPercepcao.AsInteger + rdsPericiasOutPercepcao.AsInteger;

  If rdsPericiasTreiSobrevivencia.AsBoolean Then
    rdsPericiasGradSobrevivencia.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradSobrevivencia.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModSobrevivencia.AsInteger := modPericia(rdsPericiasHabChSobr.AsString);

  rdsPericiasTotSobrevivencia.AsInteger := rdsPericiasGradSobrevivencia.AsInteger +
     rdsPericiasModSobrevivencia.AsInteger + rdsPericiasOutSobrevivencia.AsInteger;

  If rdsPericiasTreiOutPericia1.AsBoolean Then
    rdsPericiasGradOutPericia1.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradOutPericia1.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModOutPericia1.AsInteger := modPericia(rdsPericiasHabChOut1.AsString);

  rdsPericiasTotOutPericia1.AsInteger := rdsPericiasGradOutPericia1.AsInteger +
     rdsPericiasModOutPericia1.AsInteger + rdsPericiasOutOutPericia1.AsInteger;

  If rdsPericiasTreiOutPericia2.AsBoolean Then
    rdsPericiasGradOutPericia2.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradOutPericia2.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModOutPericia2.AsInteger := modPericia(rdsPericiasHabChOut2.AsString);

  rdsPericiasTotOutPericia2.AsInteger := rdsPericiasGradOutPericia2.AsInteger +
     rdsPericiasModOutPericia2.AsInteger + rdsPericiasOutOutPericia2.AsInteger;

  If rdsPericiasTreiOutPericia3.AsBoolean Then
    rdsPericiasGradOutPericia3.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradOutPericia3.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModOutPericia3.AsInteger := modPericia(rdsPericiasHabChOut3.AsString);

  rdsPericiasTotOutPericia3.AsInteger := rdsPericiasGradOutPericia3.AsInteger +
     rdsPericiasModOutPericia3.AsInteger + rdsPericiasOutOutPericia3.AsInteger;

  If rdsPericiasTreiJogatina.AsBoolean Then
    rdsPericiasGradJogatina.AsInteger := rdsFichanvSoma.AsInteger+3
  Else
    rdsPericiasGradJogatina.AsInteger := rdsFichanvSoma.AsInteger div 2;

  rdsPericiasModJogatina.AsInteger := modPericia(rdsPericiasHabJogatina.AsString);

  rdsPericiasTotJogatina.AsInteger := rdsPericiasGradJogatina.AsInteger +
     rdsPericiasModJogatina.AsInteger + rdsPericiasOutJogatina.AsInteger;

end;

procedure TfichaTormenta.rdsPericiasNewRecord(DataSet: TDataSet);
begin
  rdsPericiasHabChAcrob.AsString     := 'DES';
  rdsPericiasHabChAdAnimais.AsString := 'CAR';
  rdsPericiasHabChAtlet.AsString     := 'FOR';
  rdsPericiasHabChAtuacao1.AsString  := 'CAR';
  rdsPericiasHabChAtuacao2.AsString  := 'CAR';
  rdsPericiasHabChCaval.AsString     := 'DES';
  rdsPericiasHabChConh1.AsString     := 'INT';
  rdsPericiasHabChConh2.AsString     := 'INT';
  rdsPericiasHabChCur.AsString       := 'SAB';
  rdsPericiasHabChDir.AsString       := 'CAR';
  rdsPericiasHabChEng.AsString       := 'CAR';
  rdsPericiasHabChFurt.AsString      := 'DES';
  rdsPericiasHabChIdMag.AsString     := 'INT';
  rdsPericiasHabChIni.AsString       := 'DES';
  rdsPericiasHabChInti.AsString      := 'CAR';
  rdsPericiasHabChIntui.AsString     := 'SAB';
  rdsPericiasHabChLad.AsString       := 'DES';
  rdsPericiasHabChObtInf.AsString    := 'CAR';
  rdsPericiasHabChOfi1.AsString      := 'INT';
  rdsPericiasHabChOfi2.AsString      := 'INT';
  rdsPericiasHabChPer.AsString       := 'SAB';
  rdsPericiasHabChSobr.AsString      := 'SAB';
  rdsPericiasHabChOut1.AsString      := 'FOR';
  rdsPericiasHabChOut2 .AsString     := 'FOR';
  rdsPericiasHabChOut3.AsString      := 'FOR';
  rdsPericiasHabJogatina.AsString    := 'CAR';

end;

procedure TfichaTormenta.RRPGFichaAfterCaregarFicha(Sender: TObject);
begin

  If rdsFicha.EoF Then
    rdsFicha.Insert;

  If rdsPericias.EoF then
    rdsPericias.Insert;

  If rdsComplemento.EoF then
    rdsComplemento.Insert;

  if rdsEquipamento.Eof then
    rdsEquipamento.Insert;

  if rdsMagias.Eof then
    rdsMagias.Insert;

end;

procedure TfichaTormenta.RRPGFichaCreate(Sender: TObject);
begin
  rdsFicha.Active       := True;

  rdsPericias.Active    := True;
  rdsComplemento.Active := True;


  rdsEquipamento.Active := True;
  rdsMagias.Active      := True;

  rdsFichaCalcFields(rdsFicha);

  rdsPericiasCalcFields(rdsPericias);

  rdsFichaNewRecord(rdsFicha);
  rdsPericiasNewRecord(rdsPericias);
  rdsComplementoCalcFields(rdsComplemento);


end;

initialization
  TPluginFicha.Create('Tormenta RPG', 'Ficha Auto completavel by Roen Midnight',
                      'RRPG.TORMENTAv1.1', TfichaTormenta);

end.