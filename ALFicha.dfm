object fichaTormenta: TfichaTormenta
  OldCreateOrder = False
  OnCreate = RRPGFichaCreate
  AfterCaregarFicha = RRPGFichaAfterCaregarFicha
  AfterSalvarFicha = RRPGFichaAfterCaregarFicha
  Height = 246
  Width = 525
  object rdsFicha: TRRPGDataSet
    OnNewRecord = rdsFichaNewRecord
    OnCalcFields = rdsFichaCalcFields
    SomenteLeitura = False
    Left = 40
    Top = 40
    object rdsFichaNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object rdsFichaJogador: TStringField
      FieldName = 'Jogador'
      Size = 50
    end
    object rdsFichaRaca: TStringField
      FieldName = 'Raca'
    end
    object rdsFichaClasseNivel: TStringField
      FieldName = 'ClasseNivel'
      Size = 100
    end
    object rdsFichaTendencia: TStringField
      FieldName = 'Tendencia'
      Size = 30
    end
    object rdsFichaSexo: TStringField
      FieldName = 'Sexo'
      Size = 15
    end
    object rdsFichaIdade: TIntegerField
      FieldName = 'Idade'
    end
    object rdsFichaDivindad: TStringField
      FieldName = 'Divindad'
      Size = 45
    end
    object rdsFichaTamanho: TStringField
      DisplayWidth = 10
      FieldName = 'Tamanho'
      Size = 10
    end
    object rdsFichaDeslocamento: TStringField
      FieldName = 'Deslocamento'
      Size = 25
    end
    object rdsFichaModelo: TStringField
      FieldName = 'Modelo'
      Size = 25
    end
    object rdsFichaOutConstituição: TIntegerField
      FieldName = 'OutConstitui'#231#227'o'
    end
    object rdsFichaOutForca: TStringField
      FieldName = 'OutForca'
      Size = 5
    end
    object rdsFichaOutInteligencia: TIntegerField
      FieldName = 'OutInteligencia'
    end
    object rdsFichaOutDestreza: TIntegerField
      FieldName = 'OutDestreza'
    end
    object rdsFichaOutSabedoria: TIntegerField
      FieldName = 'OutSabedoria'
    end
    object rdsFichaOutCarisma: TIntegerField
      FieldName = 'OutCarisma'
    end
    object rdsFichaPvTotal: TIntegerField
      FieldName = 'PvTotal'
    end
    object rdsFichaPvAtual: TStringField
      FieldName = 'PvAtual'
    end
    object rdsFichaPontoDeAção: TIntegerField
      FieldName = 'PontoDeA'#231#227'o'
    end
    object rdsFichaCaTotal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CaTotal'
      Calculated = True
    end
    object rdsFichaCAmetNivel: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CAmetNivel'
      Calculated = True
    end
    object rdsFichaCAModHab: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CAModHab'
      Calculated = True
    end
    object rdsFichaCaArmadura: TIntegerField
      FieldName = 'CaArmadura'
    end
    object rdsFichaCAEscudo: TIntegerField
      FieldName = 'CAEscudo'
    end
    object rdsFichaCaModTamanho: TIntegerField
      FieldName = 'CaModTamanho'
    end
    object rdsFichaCaModOut: TIntegerField
      FieldName = 'CaModOut'
    end
    object rdsFichaCaModOut2: TIntegerField
      FieldName = 'CaModOut2'
    end
    object rdsFichaReducaoDeDano: TStringField
      FieldName = 'ReducaoDeDano'
      Size = 50
    end
    object rdsFichaTotFort: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotFort'
      Calculated = True
    end
    object rdsFichaTotRefl: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotRefl'
      Calculated = True
    end
    object rdsFichaTotVont: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotVont'
      Calculated = True
    end
    object rdsFichaMetNvFort: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'MetNvFort'
      Calculated = True
    end
    object rdsFichaMetNvRefl: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'MetNvRefl'
      Calculated = True
    end
    object rdsFichaMetNvVont: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'MetNvVont'
      Calculated = True
    end
    object rdsFichaModHabFort: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModHabFort'
      Calculated = True
    end
    object rdsFichaModHabRefl: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModHabRefl'
      Calculated = True
    end
    object rdsFichaModHabVont: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModHabVont'
      Calculated = True
    end
    object rdsFichaOutFort: TIntegerField
      FieldName = 'OutFort'
    end
    object rdsFichaOutRefl: TIntegerField
      FieldName = 'OutRefl'
    end
    object rdsFichaOutVont: TIntegerField
      FieldName = 'OutVont'
    end
    object rdsFichaCCTotal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CCTotal'
      Calculated = True
    end
    object rdsFichaCDTotal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CDTotal'
      Calculated = True
    end
    object rdsFichaCCBBA: TIntegerField
      FieldName = 'CCBBA'
    end
    object rdsFichaCDBBA: TIntegerField
      FieldName = 'CDBBA'
    end
    object rdsFichaCCModHab: TIntegerField
      FieldName = 'CCModHab'
    end
    object rdsFichaCDModHab: TIntegerField
      FieldName = 'CDModHab'
    end
    object rdsFichaCCModTam: TIntegerField
      FieldName = 'CCModTam'
    end
    object rdsFichaCDModTam: TIntegerField
      FieldName = 'CDModTam'
    end
    object rdsFichaCCOut: TIntegerField
      FieldName = 'CCOut'
    end
    object rdsFichaCDOut: TIntegerField
      FieldName = 'CDOut'
    end
    object rdsFichaArma1: TStringField
      DisplayWidth = 60
      FieldName = 'Arma1'
      Size = 100
    end
    object rdsFichaArma2: TStringField
      DisplayWidth = 60
      FieldName = 'Arma2'
      Size = 100
    end
    object rdsFichaArma3: TStringField
      DisplayWidth = 60
      FieldName = 'Arma3'
      Size = 100
    end
    object rdsFichaArma4: TStringField
      DisplayWidth = 60
      FieldName = 'Arma4'
      Size = 100
    end
    object rdsFichaArma5: TStringField
      DisplayWidth = 60
      FieldName = 'Arma5'
      Size = 100
    end
    object rdsFichaArma6: TStringField
      DisplayWidth = 60
      FieldName = 'Arma6'
      Size = 100
    end
    object rdsFichaArmaBonus1: TStringField
      FieldName = 'ArmaBonus1'
      Size = 4
    end
    object rdsFichaArmaBonus2: TStringField
      FieldName = 'ArmaBonus2'
      Size = 4
    end
    object rdsFichaArmaBonus3: TStringField
      FieldName = 'ArmaBonus3'
      Size = 4
    end
    object rdsFichaArmaBonus4: TStringField
      FieldName = 'ArmaBonus4'
      Size = 4
    end
    object rdsFichaArmaBonus5: TStringField
      FieldName = 'ArmaBonus5'
      Size = 4
    end
    object rdsFichaArmaBonus6: TStringField
      FieldName = 'ArmaBonus6'
      Size = 4
    end
    object rdsFichaArmaDano1: TStringField
      FieldName = 'ArmaDano1'
      Size = 30
    end
    object rdsFichaArmaDano2: TStringField
      FieldName = 'ArmaDano2'
      Size = 30
    end
    object rdsFichaArmaDano3: TStringField
      FieldName = 'ArmaDano3'
      Size = 30
    end
    object rdsFichaArmaDano4: TStringField
      FieldName = 'ArmaDano4'
      Size = 30
    end
    object rdsFichaArmaDano5: TStringField
      FieldName = 'ArmaDano5'
      Size = 30
    end
    object rdsFichaArmaDano6: TStringField
      FieldName = 'ArmaDano6'
      Size = 30
    end
    object rdsFichaArmaCritico1: TStringField
      FieldName = 'ArmaCritico1'
      Size = 8
    end
    object rdsFichaArmaCritico2: TStringField
      FieldName = 'ArmaCritico2'
      Size = 8
    end
    object rdsFichaArmaCritico3: TStringField
      FieldName = 'ArmaCritico3'
      Size = 8
    end
    object rdsFichaArmaCritico4: TStringField
      FieldName = 'ArmaCritico4'
      Size = 8
    end
    object rdsFichaArmaCritico5: TStringField
      FieldName = 'ArmaCritico5'
      Size = 8
    end
    object rdsFichaArmaCritico6: TStringField
      FieldName = 'ArmaCritico6'
      Size = 8
    end
    object rdsFichaArmaDistancia: TStringField
      FieldName = 'ArmaDistancia'
      Size = 8
    end
    object rdsFichaArmaDistancia2: TStringField
      FieldName = 'ArmaDistancia2'
      Size = 8
    end
    object rdsFichaArmaDistancia3: TStringField
      FieldName = 'ArmaDistancia3'
      Size = 8
    end
    object rdsFichaArmaDistancia4: TStringField
      FieldName = 'ArmaDistancia4'
      Size = 8
    end
    object rdsFichaArmaDistancia5: TStringField
      FieldName = 'ArmaDistancia5'
      Size = 8
    end
    object rdsFichaArmaDistancia6: TStringField
      FieldName = 'ArmaDistancia6'
      Size = 8
    end
    object rdsFichaTipo: TStringField
      FieldName = 'Tipo'
      Size = 10
    end
    object rdsFichaTipo2: TStringField
      FieldName = 'Tipo2'
      Size = 10
    end
    object rdsFichaTipo3: TStringField
      FieldName = 'Tipo3'
      Size = 10
    end
    object rdsFichaTipo4: TStringField
      FieldName = 'Tipo4'
      Size = 10
    end
    object rdsFichaTipo5: TStringField
      FieldName = 'Tipo5'
      Size = 10
    end
    object rdsFichaTipo6: TStringField
      FieldName = 'Tipo6'
      Size = 10
    end
    object rdsFichaArmadura1: TStringField
      FieldName = 'Armadura1'
      Size = 100
    end
    object rdsFichaArmadura2: TStringField
      FieldName = 'Armadura2'
      Size = 100
    end
    object rdsFichaArmadura3: TStringField
      FieldName = 'Armadura3'
      Size = 100
    end
    object rdsFichaHabRaca: TStringField
      FieldName = 'HabRaca'
      Size = 10000
    end
    object rdsFichaHabCla1: TStringField
      FieldName = 'HabCla1'
      Size = 20000
    end
    object rdsFichaHabCla2: TStringField
      FieldName = 'HabCla2'
      Size = 20000
    end
    object rdsFichamodForça: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'modFor'#231'a'
      Calculated = True
    end
    object rdsFichamodDestreza: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'modDestreza'
      Calculated = True
    end
    object rdsFichamodConstituição: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'modConstitui'#231#227'o'
      Calculated = True
    end
    object rdsFichamodInteligencia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'modInteligencia'
      Calculated = True
    end
    object rdsFichamodSabedoria: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'modSabedoria'
      Calculated = True
    end
    object rdsFichamodCarisma: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'modCarisma'
      Calculated = True
    end
    object rdsFichaForca: TIntegerField
      FieldName = 'Forca'
    end
    object rdsFichaConstituição: TIntegerField
      FieldName = 'Constitui'#231#227'o'
    end
    object rdsFichaDestreza: TIntegerField
      FieldName = 'Destreza'
    end
    object rdsFichaInteligencia: TIntegerField
      FieldName = 'Inteligencia'
    end
    object rdsFichaSabedoria: TIntegerField
      FieldName = 'Sabedoria'
    end
    object rdsFichaCarisma: TIntegerField
      FieldName = 'Carisma'
    end
    object rdsFichanvSoma: TIntegerField
      FieldName = 'nvSoma'
    end
    object rdsFichaArmEsc1: TStringField
      FieldName = 'ArmEsc1'
    end
    object rdsFichaArmEsc2: TStringField
      FieldName = 'ArmEsc2'
    end
    object rdsFichaArmEsc3: TStringField
      FieldName = 'ArmEsc3'
    end
    object rdsFichaArmaduraBMD1: TIntegerField
      FieldName = 'ArmaduraBMD1'
    end
    object rdsFichaArmaduraCA1: TIntegerField
      FieldName = 'ArmaduraCA1'
    end
    object rdsFichaArmaduraPen1: TIntegerField
      FieldName = 'ArmaduraPen1'
    end
    object rdsFichaArmaduraBMD2: TIntegerField
      FieldName = 'ArmaduraBMD2'
    end
    object rdsFichaArmaduraCA2: TIntegerField
      FieldName = 'ArmaduraCA2'
    end
    object rdsFichaArmaduraPen2: TIntegerField
      FieldName = 'ArmaduraPen2'
    end
    object rdsFichaArmaduraBMD3: TIntegerField
      FieldName = 'ArmaduraBMD3'
    end
    object rdsFichaArmaduraCA3: TIntegerField
      FieldName = 'ArmaduraCA3'
    end
    object rdsFichaArmaduraPen3: TIntegerField
      FieldName = 'ArmaduraPen3'
    end
  end
  object rdsPericias: TRRPGDataSet
    OnNewRecord = rdsPericiasNewRecord
    OnCalcFields = rdsPericiasCalcFields
    SomenteLeitura = False
    Left = 152
    Top = 88
    object rdsPericiasTotAcrobacia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotAcrobacia'
      Calculated = True
    end
    object rdsPericiasGradAcrobacia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradAcrobacia'
      Calculated = True
    end
    object rdsPericiasModAcrobacia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModAcrobacia'
      Calculated = True
    end
    object rdsPericiasOutAcrobacia: TIntegerField
      FieldName = 'OutAcrobacia'
    end
    object rdsPericiasTreiAcrobacia: TBooleanField
      FieldName = 'TreiAcrobacia'
    end
    object rdsPericiasTotAdeAnimais: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotAdeAnimais'
      Calculated = True
    end
    object rdsPericiasGradAdeAnimais: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradAdeAnimais'
      Calculated = True
    end
    object rdsPericiasModHabAdeAnimais: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModHabAdeAnimais'
      Calculated = True
    end
    object rdsPericiasOutAdeAnimais: TIntegerField
      FieldName = 'OutAdeAnimais'
    end
    object rdsPericiasTreiAdeanimais: TBooleanField
      FieldName = 'TreiAdeanimais'
    end
    object rdsPericiasTotalAtletismo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotalAtletismo'
      Calculated = True
    end
    object rdsPericiasGradAtletismo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradAtletismo'
      Calculated = True
    end
    object rdsPericiasModAtletismo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModAtletismo'
      Calculated = True
    end
    object rdsPericiasOutAtletismo: TIntegerField
      FieldName = 'OutAtletismo'
    end
    object rdsPericiasTreiAtletismo: TBooleanField
      FieldName = 'TreiAtletismo'
    end
    object rdsPericiasTotCavalgar: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotCavalgar'
      Calculated = True
    end
    object rdsPericiasTextAtuacao: TStringField
      FieldName = 'TextAtuacao1'
    end
    object rdsPericiasTotAtuacao1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotAtuacao1'
      Calculated = True
    end
    object rdsPericiasGradAtuacao1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradAtuacao1'
      Calculated = True
    end
    object rdsPericiasModAtuacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModAtuacao1'
      Calculated = True
    end
    object rdsPericiasOutAtuacao: TIntegerField
      FieldName = 'OutAtuacao1'
    end
    object rdsPericiasTextAtuacao2: TStringField
      FieldName = 'TextAtuacao2'
    end
    object rdsPericiasTotAtuacao2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotAtuacao2'
      Calculated = True
    end
    object rdsPericiasGradAtuacao2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradAtuacao2'
      Calculated = True
    end
    object rdsPericiasModAtuacao2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModAtuacao2'
      Calculated = True
    end
    object rdsPericiasOutAtuacao2: TIntegerField
      FieldName = 'OutAtuacao2'
    end
    object rdsPericiasTreiAtuacao2: TBooleanField
      FieldName = 'TreiAtuacao2'
    end
    object rdsPericiasTreiAtuacao1: TBooleanField
      FieldName = 'TreiAtuacao1'
    end
    object rdsPericiasGradCavalgar: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradCavalgar'
      Calculated = True
    end
    object rdsPericiasModCavalgar: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModCavalgar'
      Calculated = True
    end
    object rdsPericiasOutCavalgar: TIntegerField
      FieldName = 'OutCavalgar'
    end
    object rdsPericiasTreiCavalgar: TBooleanField
      FieldName = 'TreiCavalgar'
    end
    object rdsPericiasTxtConhecimento1: TStringField
      FieldName = 'TxtConhecimento1'
    end
    object rdsPericiasTotConhecimento: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotConhecimento1'
      Calculated = True
    end
    object rdsPericiasGradConhecimento: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradConhecimento1'
      Calculated = True
    end
    object rdsPericiasModConhecimento1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModConhecimento1'
      Calculated = True
    end
    object rdsPericiasOutConhecimento1: TIntegerField
      FieldName = 'OutConhecimento1'
    end
    object rdsPericiasTreiConhecimento1: TBooleanField
      FieldName = 'TreiConhecimento1'
    end
    object rdsPericiasTxtConhecimento2: TStringField
      FieldName = 'TxtConhecimento2'
    end
    object rdsPericiasTotConhecimento2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotConhecimento2'
      Calculated = True
    end
    object rdsPericiasGradConhecimento2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradConhecimento2'
      Calculated = True
    end
    object rdsPericiasModConhecimento2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModConhecimento2'
      Calculated = True
    end
    object rdsPericiasOutConhecimento2: TIntegerField
      FieldName = 'OutConhecimento2'
    end
    object rdsPericiasTreiConhecimento2: TBooleanField
      FieldName = 'TreiConhecimento2'
    end
    object rdsPericiasTotCura: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotCura'
      Calculated = True
    end
    object rdsPericiasGradCura: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradCura'
      Calculated = True
    end
    object rdsPericiasModCura: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModCura'
      Calculated = True
    end
    object rdsPericiasOutCura: TIntegerField
      FieldName = 'OutCura'
    end
    object rdsPericiasTreiCura: TBooleanField
      FieldName = 'TreiCura'
    end
    object rdsPericiasTotDiplomacia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotDiplomacia'
      Calculated = True
    end
    object rdsPericiasGradDiplomacia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradDiplomacia'
      Calculated = True
    end
    object rdsPericiasModDiplomacia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModDiplomacia'
      Calculated = True
    end
    object rdsPericiasOutDiplomacia: TIntegerField
      FieldName = 'OutDiplomacia'
    end
    object rdsPericiasTreiDiplomacia: TBooleanField
      FieldName = 'TreiDiplomacia'
    end
    object rdsPericiasTotGraduacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotEnganacao'
      Calculated = True
    end
    object rdsPericiasGrandEnganacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradEnganacao'
      Calculated = True
    end
    object rdsPericiasModEnganacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModEnganacao'
      Calculated = True
    end
    object rdsPericiasOutEnganacao: TIntegerField
      FieldName = 'OutEnganacao'
    end
    object rdsPericiasTreiEngancao: TBooleanField
      FieldName = 'TreiEngancao'
    end
    object rdsPericiasTotFurtividade: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotFurtividade'
      Calculated = True
    end
    object rdsPericiasGradFurtividade: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradFurtividade'
      Calculated = True
    end
    object rdsPericiasModFurtividade: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModFurtividade'
      Calculated = True
    end
    object rdsPericiasOutFurtividade: TIntegerField
      FieldName = 'OutFurtividade'
    end
    object rdsPericiasTreiFurtividade: TBooleanField
      FieldName = 'TreiFurtividade'
    end
    object rdsPericiasTotIdMagia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotIdMagia'
      Calculated = True
    end
    object rdsPericiasGradIdMagia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradIdMagia'
      Calculated = True
    end
    object rdsPericiasModIdMagia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModIdMagia'
      Calculated = True
    end
    object rdsPericiasOutIdMagia: TIntegerField
      FieldName = 'OutIdMagia'
    end
    object rdsPericiasTreiIdMagia: TBooleanField
      FieldName = 'TreiIdMagia'
    end
    object rdsPericiasTotIniciativa: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotIniciativa'
      Calculated = True
    end
    object rdsPericiasGradIniciativa: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradIniciativa'
      Calculated = True
    end
    object rdsPericiasModIniciativa: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModIniciativa'
      Calculated = True
    end
    object rdsPericiasOutIniciativa: TIntegerField
      FieldName = 'OutIniciativa'
    end
    object rdsPericiasTreiIniciativa: TBooleanField
      FieldName = 'TreiIniciativa'
    end
    object rdsPericiasTotIntimidacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotIntimidacao'
      Calculated = True
    end
    object rdsPericiasGradInitimidacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradIntimidacao'
      Calculated = True
    end
    object rdsPericiasModIntimidacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModIntimidacao'
      Calculated = True
    end
    object rdsPericiasOutIntimidacao: TIntegerField
      FieldName = 'OutIntimidacao'
    end
    object rdsPericiasTreiIntimidacao: TBooleanField
      FieldName = 'TreiIntimidacao'
    end
    object rdsPericiasTotIntuicao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotIntuicao'
      Calculated = True
    end
    object rdsPericiasGradIntuicao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradIntuicao'
      Calculated = True
    end
    object rdsPericiasModIntuicao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModIntuicao'
      Calculated = True
    end
    object rdsPericiasOutIntuicao: TIntegerField
      FieldName = 'OutIntuicao'
    end
    object rdsPericiasTreiIntuicao: TBooleanField
      FieldName = 'TreiIntuicao'
    end
    object rdsPericiasTotLadinagem: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotLadinagem'
      Calculated = True
    end
    object rdsPericiasGradLadinagem: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradLadinagem'
      Calculated = True
    end
    object rdsPericiasModLadinagem: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModLadinagem'
      Calculated = True
    end
    object rdsPericiasOutLadinagem: TIntegerField
      FieldName = 'OutLadinagem'
    end
    object rdsPericiasTreiLadinagem: TBooleanField
      FieldName = 'TreiLadinagem'
    end
    object rdsPericiasTotObtInformacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotObtInformacao'
      Calculated = True
    end
    object rdsPericiasGradObtInformacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradObtInformacao'
      Calculated = True
    end
    object rdsPericiasModObtInformacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModObtInformacao'
      Calculated = True
    end
    object rdsPericiasOutObtInformacao: TIntegerField
      FieldName = 'OutObtInformacao'
    end
    object rdsPericiasTreiObtInformacao: TBooleanField
      FieldName = 'TreiObtInformacao'
    end
    object rdsPericiasTxtOficio1: TStringField
      FieldName = 'TxtOficio1'
    end
    object rdsPericiasTotOficio1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotOficio1'
      Calculated = True
    end
    object rdsPericiasGradOficio1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradOficio1'
      Calculated = True
    end
    object rdsPericiasModOficio1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModOficio1'
      Calculated = True
    end
    object rdsPericiasOutOficio1: TIntegerField
      FieldName = 'OutOficio1'
    end
    object rdsPericiasTreiOficio1: TBooleanField
      FieldName = 'TreiOficio1'
    end
    object rdsPericiasTxtOficio2: TStringField
      FieldName = 'TxtOficio2'
    end
    object rdsPericiasTotOficio2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotOficio2'
      Calculated = True
    end
    object rdsPericiasGradOficio2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradOficio2'
      Calculated = True
    end
    object rdsPericiasModOficio2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModOficio2'
      Calculated = True
    end
    object rdsPericiasOutOficio2: TIntegerField
      FieldName = 'OutOficio2'
    end
    object rdsPericiasTreiOficio2: TBooleanField
      FieldName = 'TreiOficio2'
    end
    object rdsPericiasTotPercepcao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotPercepcao'
      Calculated = True
    end
    object rdsPericiasModPercepcao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModPercepcao'
      Calculated = True
    end
    object rdsPericiasGradPercepcao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradPercepcao'
      Calculated = True
    end
    object rdsPericiasOutPercepcao: TIntegerField
      FieldName = 'OutPercepcao'
    end
    object rdsPericiasTreiPercepcao: TBooleanField
      FieldName = 'TreiPercepcao'
    end
    object rdsPericiasTotSobrevivencia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotSobrevivencia'
      Calculated = True
    end
    object rdsPericiasModSobrevivencia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModSobrevivencia'
      Calculated = True
    end
    object rdsPericiasGradSobrevivencia: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradSobrevivencia'
      Calculated = True
    end
    object rdsPericiasOutSobrevivencia: TIntegerField
      FieldName = 'OutSobrevivencia'
    end
    object rdsPericiasTreiSobrevivencia: TBooleanField
      FieldName = 'TreiSobrevivencia'
    end
    object rdsPericiasTxtOutPericia1: TStringField
      FieldName = 'TxtOutPericia1'
    end
    object rdsPericiasTotOutPericia1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotOutPericia1'
      Calculated = True
    end
    object rdsPericiasGradOutPericia1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradOutPericia1'
      Calculated = True
    end
    object rdsPericiasModOutPericia1: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModOutPericia1'
      Calculated = True
    end
    object rdsPericiasOutOutPericia1: TIntegerField
      FieldName = 'OutOutPericia1'
    end
    object rdsPericiasTreiOutPericia1: TBooleanField
      FieldName = 'TreiOutPericia1'
    end
    object rdsPericiasTxtOutPericia2: TStringField
      FieldName = 'TxtOutPericia2'
    end
    object rdsPericiasTotOutPericia2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotOutPericia2'
      Calculated = True
    end
    object rdsPericiasGradOutPericia2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradOutPericia2'
      Calculated = True
    end
    object rdsPericiasModOutPericia2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModOutPericia2'
      Calculated = True
    end
    object rdsPericiasOutOutPericia2: TIntegerField
      FieldName = 'OutOutPericia2'
    end
    object rdsPericiasTreiOutPericia2: TBooleanField
      FieldName = 'TreiOutPericia2'
    end
    object rdsPericiasTxtOutPericia3: TStringField
      FieldName = 'TxtOutPericia3'
    end
    object rdsPericiasTotOutPericia3: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotOutPericia3'
      Calculated = True
    end
    object rdsPericiasGradOutPericia3: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradOutPericia3'
      Calculated = True
    end
    object rdsPericiasModOutPericia3: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModOutPericia3'
      Calculated = True
    end
    object rdsPericiasOutOutPericia3: TIntegerField
      FieldName = 'OutOutPericia3'
    end
    object rdsPericiasTreiOutPericia3: TBooleanField
      FieldName = 'TreiOutPericia3'
    end
    object rdsPericiasHabChAcrob: TStringField
      FieldName = 'HabChAcrob'
      Size = 3
    end
    object rdsPericiasHabChAdAnimais: TStringField
      DisplayWidth = 3
      FieldName = 'HabChAdAnimais'
    end
    object rdsPericiasHabChAtlet: TStringField
      FieldName = 'HabChAtlet'
      Size = 3
    end
    object rdsPericiasHabChAtuacao1: TStringField
      FieldName = 'HabChAtuacao1'
      Size = 3
    end
    object rdsPericiasHabChAtuacao2: TStringField
      FieldName = 'HabChAtuacao2'
      Size = 3
    end
    object rdsPericiasHabChCaval: TStringField
      FieldName = 'HabChCaval'
      Size = 3
    end
    object rdsPericiasHabChConh1: TStringField
      FieldName = 'HabChConh1'
      Size = 3
    end
    object rdsPericiasHabChConh2: TStringField
      FieldName = 'HabChConh2'
    end
    object rdsPericiasHabChCur: TStringField
      FieldName = 'HabChCur'
      Size = 3
    end
    object rdsPericiasHabChDir: TStringField
      FieldName = 'HabChDir'
      Size = 3
    end
    object rdsPericiasHabChEng: TStringField
      FieldName = 'HabChEng'
      Size = 3
    end
    object rdsPericiasHabChFurt: TStringField
      FieldName = 'HabChFurt'
      Size = 3
    end
    object rdsPericiasHabChIdMag: TStringField
      FieldName = 'HabChIdMag'
      Size = 3
    end
    object rdsPericiasHabChIni: TStringField
      FieldName = 'HabChIni'
      Size = 3
    end
    object rdsPericiasHabChInti: TStringField
      FieldName = 'HabChInti'
      Size = 3
    end
    object rdsPericiasHabChLad: TStringField
      FieldName = 'HabChLad'
      Size = 3
    end
    object rdsPericiasHabChObtInf: TStringField
      FieldName = 'HabChObtInf'
      Size = 3
    end
    object rdsPericiasHabChOfi1: TStringField
      FieldName = 'HabChOfi1'
      Size = 3
    end
    object rdsPericiasHabChOfi2: TStringField
      FieldName = 'HabChOfi2'
      Size = 3
    end
    object rdsPericiasHabChPer: TStringField
      FieldName = 'HabChPer'
      Size = 3
    end
    object rdsPericiasHabChSobr: TStringField
      FieldName = 'HabChSobr'
      Size = 3
    end
    object rdsPericiasHabChOut1: TStringField
      FieldName = 'HabChOut1'
      Size = 3
    end
    object rdsPericiasHabChOut2: TStringField
      FieldName = 'HabChOut2'
      Size = 3
    end
    object rdsPericiasHabChOut3: TStringField
      FieldName = 'HabChOut3'
      Size = 3
    end
    object rdsPericiasHabChIntui: TStringField
      FieldName = 'HabChIntui'
      Size = 3
    end
    object rdsPericiasTotJogatina: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotJogatina'
      Calculated = True
    end
    object rdsPericiasGradJogatina: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'GradJogatina'
      Calculated = True
    end
    object rdsPericiasOutJogatina: TIntegerField
      FieldName = 'OutJogatina'
    end
    object rdsPericiasTreiJogatina: TBooleanField
      FieldName = 'TreiJogatina'
    end
    object rdsPericiasModJogatina: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ModJogatina'
      Calculated = True
    end
    object rdsPericiasHabJogatina: TStringField
      FieldName = 'HabJogatina'
      Size = 3
    end
  end
  object rdsComplemento: TRRPGDataSet
    OnNewRecord = rdsComplementoNewRecord
    OnCalcFields = rdsComplementoCalcFields
    SomenteLeitura = False
    Left = 264
    Top = 72
    object rdsComplementoCapacidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Capacidade'
      Size = 10
      Calculated = True
    end
    object rdsComplementoPesoCarg: TStringField
      FieldKind = fkCalculated
      FieldName = 'PesoCarg'
      Size = 10
      Calculated = True
    end
    object rdsComplementoReduzDesloc: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ReduzDesloc'
      Calculated = True
    end
    object rdsComplementoTalentos: TStringField
      FieldName = 'Talentos'
      Size = 20000
    end
    object rdsComplementoMagias: TStringField
      FieldName = 'Magias'
      Size = 20000
    end
    object rdsComplementoIdiomas: TStringField
      FieldName = 'Idiomas'
      Size = 500
    end
    object rdsComplementoNotas: TStringField
      FieldName = 'Notas'
      Size = 50000
    end
    object rdsComplementoHistoria: TStringField
      FieldName = 'Historia'
      Size = 10000
    end
    object rdsComplementoAparencia: TStringField
      FieldName = 'Aparencia'
      Size = 5000
    end
    object rdsComplementoPersonalidade: TStringField
      FieldName = 'Personalidade'
      Size = 5000
    end
    object rdsComplementoCampanha: TStringField
      FieldName = 'Campanha'
    end
    object rdsComplementoMestr: TStringField
      FieldName = 'Mestr'
    end
    object rdsComplementoExperiencia: TStringField
      FieldName = 'Experiencia'
    end
    object rdsComplementoNext: TStringField
      FieldName = 'Next'
    end
    object rdsComplementoTibar: TIntegerField
      FieldName = 'Tibar'
    end
    object rdsComplementoTibarPlat: TIntegerField
      FieldName = 'TibarPlat'
    end
    object rdsComplementoTibarOuro: TIntegerField
      FieldName = 'TibarOuro'
    end
    object rdsComplementoTibarPlati: TIntegerField
      FieldName = 'TibarPlati'
    end
    object rdsComplementoPMTotal: TIntegerField
      FieldName = 'PMTotal'
    end
    object rdsComplementoPmTotalD: TIntegerField
      FieldName = 'PmTotalD'
    end
    object rdsComplementoPmAtual: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PmAtual'
      Calculated = True
    end
    object rdsComplementoPmAtualD: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'PmAtualD'
      Calculated = True
    end
    object rdsComplementoPMExp: TBooleanField
      FieldName = 'PMExp'
    end
    object rdsComplementoPMexpD: TBooleanField
      FieldName = 'PMexpD'
    end
    object rdsComplementoPMAtualExpA: TIntegerField
      FieldName = 'PMAtualExpA'
    end
    object rdsComplementoPMAtualExpD: TIntegerField
      FieldName = 'PMAtualExpD'
    end
  end
  object rdsEquipamento: TRRPGDataSet
    AfterPost = rdsEquipamentoAfterPost
    SomenteLeitura = False
    Left = 312
    Top = 168
    object rdsEquipamentoEquipamento: TStringField
      FieldName = 'Equipamento'
      Size = 35
    end
    object rdsEquipamentoPeso: TFloatField
      FieldName = 'Peso'
    end
  end
  object rdsMagias: TRRPGDataSet
    AfterPost = rdsMagiasAfterPost
    SomenteLeitura = False
    Left = 448
    Top = 56
    object rdsMagiasNome: TStringField
      DisplayWidth = 60
      FieldName = 'Nome'
      Size = 100
    end
    object rdsMagiasCusto: TIntegerField
      FieldName = 'Custo'
    end
    object rdsMagiasTipo: TStringField
      FieldName = 'Tipo'
      Size = 1
    end
  end
end
