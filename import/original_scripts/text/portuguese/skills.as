package text.portuguese
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • Elemento e efeitos dependem da arma atual.";
      
      public static var WEP_EFFECTS_2:String = "\n • Efeitos da arma são mais potentes do que o comum.";
      
      public static var LOW_ACC:String = "\n • Baixa precisão.";
      
      public static var HIGH_ACC:String = "\n • Alta precisão.";
      
      public static var HIGH_ACC_2:String = "\n • Super alta precisão.";
      
      public static var HIGH_CRITS:String = "\n • Grande chance de golpe crítico.";
      
      public static var RETARGETS:String = "\n • Atinge um novo inimigo se o alvo for morto.";
      
      public static var RETARGETS_2:String = "\n • Escolhe um novo alvo se o original for morto.";
      
      public static var LIMIT_BREAK:String = "Quebra de Limite! ";
      
      public static var ALTERNATIVE_ALL:String = " Também pode mirar em todos os inimigos para equilibrar o dano. ";
      
      public static var ALTERNATIVE_ONE:String = " Também pode ser focado num único alvo para ainda mais dano.";
      
      public static var MAY_SURRENDER:String = " Pode fazer inimigos se renderem, até os mais fortes. ";
      
      public static var SWORD_DANCE:String = " Atinge um único alvo 3 vezes, atingindo um novo alvo se o original morrer.";
      
      public static var EXTRA_HITS:String = " Consegue um acerto extra para cada inimigo morto.";
      
      public static var DISPEL_ALL:String = " Dissipa todos os inimigos, cancelando seus buffs e efeitos de status positivos.";
      
      public static var HITS_RANDOM_FOES:String = " Uma flecha por inimigo é atirada, mas atingem alvos aleatórios.";
      
      public static var COOLDOWN_2:String = "\n • Tem um tempo de recarga de 1 turno. ";
      
      public static var COOLDOWN_3:String = "\n • Tem um tempo de recarga de 2 turnos. ";
      
      public static var COOLDOWN_4:String = "\n • Tem um tempo de recarga de 3 turnos. ";
      
      public static var COOLDOWN_6:String = "\n • Tem um tempo de recarga de 5 turnos. ";
      
      public static var COOLDOWN_11:String = "\n • Tem um tempo de recarga de 10 turnos. ";
      
      public static var defend:Object = {
         "name":"Defender",
         "desc":"Todo o dano recebido é reduzido em 50%. Alguns equipamentos adicionam efeitos extras."
      };
      
      public static var swap:Object = {
         "name":"Trocar Jogador",
         "desc":"Escolha um jogador diferente para usar. Esta ação não custa um turno."
      };
      
      public static var flee:Object = {
         "name":"Fugir",
         "desc":"Fugir da luta. Não há penalidade por fazer isso."
      };
      
      public static var skip:Object = {
         "name":"Pular turno",
         "desc":"Pula o turno deste jogador sem fazer nada."
      };
      
      public static var scan:Object = {
         "name":"Analisar Inimigos",
         "desc":"Analisa todos os inimigos no campo de batalha, revelando suas fraquezas. Esses dados são permanentemente armazenados no bestiário."
      };
      
      public static var capture:Object = {
         "name":"Capturar Inimigo",
         "desc":"Tente capturar um inimigo. Inimigos feridos e com problemas de status são mais fáceis de capturar. Alguns não podem ser capturados."
      };
      
      public static var bring1:Object = {
         "name":"Trazer o Matt",
         "desc":"Move um jogador para a reserva e traz o Matt para o campo. Essa ação não custa um turno."
      };
      
      public static var bring2:Object = {
         "name":"Trazer a Natalie",
         "desc":"Move um jogador para a reserva e traz a Natalie para o campo. Essa ação não custa um turno."
      };
      
      public static var bring3:Object = {
         "name":"Trazer o Lance",
         "desc":"Move um jogador para a reserva e traz o Lance para o campo. Essa ação não custa um turno."
      };
      
      public static var bring4:Object = {
         "name":"Trazer a Anna",
         "desc":"Move um jogador para a reserva e traz a Anna para o campo. Essa ação não custa um turno."
      };
      
      public static var bring5:Object = {
         "name":"Trazer o SemPés",
         "desc":"Move um jogador para a reserva e traz o SemPés para o campo. Essa ação não custa um turno."
      };
      
      public static var swordslash:Object = {
         "name":"Ataque Normal",
         "desc":"Atinge o alvo com um ataque básico de espada." + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"Tremor",
         "desc":"Ataque básico de terra que atinge um único alvo."
      };
      
      public static var quakespikes:Object = {
         "name":"Terremoto",
         "desc":"Ataque avançado de terra que atinge um único alvo."
      };
      
      public static var cataclysmiccut:Object = {
         "name":"Cataclismo",
         "desc":"Poderoso ataque de terra que atinge um único alvo." + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"Gêiser",
         "desc":"Ataque básico de água que atinge um único alvo." + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"Torrente",
         "desc":"Ataque avançado de água que atinge um único alvo." + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"Tufão",
         "desc":"Poderoso ataque de água que atinge um único alvo." + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"Tundra",
         "desc":"Ataque avançado de gelo que atinge um único alvo." + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"Icebergue",
         "desc":"Poderoso ataque de gelo que atinge um único alvo." + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"Magma",
         "desc":"Ataque avançado de fogo que atinge um único alvo." + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"Erupção",
         "desc":"Poderoso ataque de fogo que atinge um único alvo." + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"Urtiga",
         "desc":"Ataque básico biológico que atinge um único alvo." + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"Fertilidade",
         "desc":"Poderoso ataque biológico que atinge um único alvo duas vezes." + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"Ciclone Cortante",
         "desc":"Poderoso ataque que atinge todos os inimigos várias vezes." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"Roubar Item",
         "desc":"Rouba um item aleatório de um único alvo. Itens melhores podem ser roubados quando esta habilidade aumenta de nível." + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"Lenda",
         "desc":"Poderoso ataque que atinge um único alvo múltiplas vezes." + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"Lâmina Luminosa",
         "desc":"Ataque de luz avançado que atinge um único alvo."
      };
      
      public static var holysword:Object = {
         "name":"Seiken",
         "desc":"Poderoso ataque de luz que atinge um único alvo." + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"Liberar",
         "desc":"Um ataque que libera o potencial latente da sua arma." + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"Corte Rápido",
         "desc":"Ataca um único alvo com altíssima precisão." + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"Afiar",
         "desc":"Concede buff ao poder de ataque de um aliado, e concede a ele o status de bravura. " + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"Vingança",
         "desc":"Um ataque com alto potencial de devastação que atinge um único alvo. Seu poder aumenta se o HP de Matt estiver baixo e se seus aliados estiverem mortos. O poder listado abaixo é o maior valor possível." + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"Fatiadora",
         "desc":LIMIT_BREAK + "Causa dano físico inacreditável à um único alvo, com múltiplos cortes." + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"Ragnarok",
         "desc":LIMIT_BREAK + "Atinge todos os inimigos com massivo dano não-elemental, aumenta o ataque de todos os aliados e dá a eles o status de bravura, também funciona em aliados na reserva." + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"Ataque Normal",
         "desc":"Atinge o alvo com um ataque físico básico, que desencadeia o poder mágico da sua arma." + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"Purificar",
         "desc":"Remove os debuffs de um aliado, cura seus problemas de status e os abençoa."
      };
      
      public static var luckystar:Object = {
         "name":"Estrela Sortuda",
         "desc":"Magia básica não-elemental que dá dano bastante variável para um único alvo." + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"Chuva de Estrelas",
         "desc":"Poderosa magia não-elemental que atinge todos os inimigos e causa dano bastante variável." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"Poder Estelar",
         "desc":"Concede um buff ao ataque mágico de um aliado, e dá a ele o status de boa sorte." + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"Tóxico",
         "desc":"Magia biológica simples que envenena fortemente um único alvo."
      };
      
      public static var fireball:Object = {
         "name":"Fogo",
         "desc":"Magia básica de fogo que atinge um único alvo." + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"Bola de Fogo",
         "desc":"Magia avançada de fogo que atinge um único alvo." + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"Tempestade de Fogo",
         "desc":"Poderosa magia de fogo que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"Choque",
         "desc":"Magia básica de trovão que atinge um único alvo." + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"Trovão",
         "desc":"Magia avançada de trovão que atinge um único alvo." + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"Tempestade de Raios",
         "desc":"Poderosa magia de trovão que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"Gelo",
         "desc":"Magia básica de gelo que atinge um único alvo." + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"Estilhaços de Gelo",
         "desc":"Magia avançada de gelo que atinge um único alvo." + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"Tempestade de Gelo",
         "desc":"Poderosa magia de gelo que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"Pulso das Trevas",
         "desc":"Magia das trevas avançada que atinge um único alvo." + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"Pulsar",
         "desc":"Poderosa magia das trevas que atinge todos os inimigos." + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"Espectro",
         "desc":"Magia avançada que atinge um único alvo." + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"Explosão Arco-íris",
         "desc":"Poderosa magia que atinge todos os inimigos." + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"Luz Divina",
         "desc":"Magia avançada de luz que atinge um único alvo." + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"Julgamento",
         "desc":"Poderosíssima magia de luz que explode um único alvo e drena seu HP." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"Esquecimento",
         "desc":"Aplica amnésia a um único alvo, fazendo com que ele não possa usar a maioria dos ataques mágicos." + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"Amnésia em Massa",
         "desc":"Aplica amnésia em todos os inimigos, fazendo com que não possam usar a maioria dos ataques mágicos. Também pode mirar em um único alvo para um efeito maior de amnésia." + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"Gênesis",
         "desc":LIMIT_BREAK + "Causa dano massivo de luz a todos os inimigos, e revive ou dá auto-reviver para todos os aliados. \n • Também funciona em aliados na reserva." + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"Sétimo Paraíso",
         "desc":LIMIT_BREAK + "Cura o HP de todos os aliados assim como problemas de status, concede buffs aos seus ataques, ataques mágicos, defesas, e defesas mágica. \n • Também funciona em aliados na reserva. \n • Concede o status de adorável para Natalie."
      };
      
      public static var pistolwhip:Object = {
         "name":"Ataque Normal",
         "desc":"Atinge um alvo duas vezes com um ataque físico básico." + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"Snipe",
         "desc":"Atira em um único alvo com um ataque de alta precisão." + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"Tiro Duplo",
         "desc":"Um ataque que atira em um único alvo duas vezes." + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"Descarregar",
         "desc":"Poderoso ataque que atira em um alvo 6 vezes." + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"Tiro Flamejante",
         "desc":"Tiro básico de fogo que atinge um único alvo." + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"Explosão de Chamas",
         "desc":"Tiro avançado de fogo que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var bullethell:Object = {
         "name":"Inferno de Balas",
         "desc":"Poderoso tiro de fogo centralizado em um único inimigo, enquanto os outros recebem 1/3 do dano." + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"Tiro de Plasma",
         "desc":"Tiro básico de trovão que atinge um único alvo." + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"Onda de Plasma",
         "desc":"Tiro avançado de trovão que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmafield:Object = {
         "name":"Campo de Plasma",
         "desc":"Poderoso tiro de trovão centralizado em um único inimigo, enquanto os outros recebem 1/3 do dano." + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"Tiro das Trevas",
         "desc":"Tiro básico de trevas que atinge um único alvo." + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"Surto Gravitacional",
         "desc":"Tiro avançado de trevas que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var antimatterflux:Object = {
         "name":"Fluxo Antimatéria",
         "desc":"Poderoso tiro de trevas centralizado em um único inimigo, enquanto os outros recebem 1/3 do dano." + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"Gás Mostarda",
         "desc":"Envenena fortemente todos os inimigos, e faz um pouco de dano mágico biológico." + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"Grande Bomba",
         "desc":"Explode um único inimigo com grande poder mágico de bomba." + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"Ataque Aéreo",
         "desc":"Explode todos os inimigos com grande poder mágico de bomba." + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"M.O.A.B",
         "desc":"Explode todos os inimigos com um poder mágico de bomba massivo. Leva um bom tempo para recarregar." + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"Kit Médico",
         "desc":"Cura um aliado e remove qualquer problema de status que possua. " + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"Reforço Médico",
         "desc":"Cura todos os aliados e remove qualquer problema de status que possuam. " + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"Metralhadoras",
         "desc":"Atira em todos os inimigos repetidamente com ataques de bomba." + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"Esmaga Armadura",
         "desc":"Esmaga um alvo com um ataque de corpo a corpo, e o dissipa." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"Hiper Raio",
         "desc":"Leva dois turnos para usar: Carrega no primeiro uso, e atira no segundo. Causa dano mágico imenso a todos os inimigos." + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"Bomba Nuclear",
         "desc":LIMIT_BREAK + "Causa dano mágico de fogo massivo a todos os inimigos e queima tanto inimigos como aliados." + HIGH_ACC + "\n • Substitui o clima atual com radiação por 5 turnos. "
      };
      
      public static var oblivion:Object = {
         "name":"Extermínio",
         "desc":LIMIT_BREAK + "Causa dano físico de bomba massivo a todos os inimigos. Isso destrói o tanque do Lance, mas ele tem alguns de sobra." + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"Ataque Normal",
         "desc":"Corta um alvo com um ataque físico básico." + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"Golpe de Arco",
         "desc":"Bate em um único alvo com seu arco, fazendo com que eles considerem sua própria rendição. Nem inimigos fortes são imunes. \n • Esta habilidade não pode matar inimigos." + WEP_EFFECTS
      };
      
      public static var gust:Object = {
         "name":"Brisa",
         "desc":"Magia básica de vento que atinge um único alvo." + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"Redemoinho",
         "desc":"Magia avançada de vento que atinge um único alvo." + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"Furacão",
         "desc":"Poderosa magia de vento que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"Tronco",
         "desc":"Ataque básico de terra que atinge um único alvo." + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"Armadilha de Troncos",
         "desc":"Poderoso ataque de terra que atinge um único alvo várias vezes." + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"Lâmina de Folha",
         "desc":"Ataque biológico simples que atinge um único alvo duas vezes." + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"Folha Navalha",
         "desc":"Poderoso ataque biológico que atinge todos os inimigos várias vezes." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"Flecha Sagrada",
         "desc":"Ataque avançado de luz que atinge um único alvo." + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"Flecha Congelante",
         "desc":"Ataque avançado de gelo que atinge um único alvo." + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"Flecha de Água",
         "desc":"Ataque avançado de água que atinge um único alvo." + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"Flecha Bomba",
         "desc":"Ataque avançado de bomba que atinge um único alvo." + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"Flecha Faisca",
         "desc":"Ataque avançado de trovão que atinge um único alvo." + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"Saraivada Sagrada",
         "desc":"Poderoso ataque de luz:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"Torrente Congelante",
         "desc":"Poderoso ataque de gelo:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"Enxurrada Aquática",
         "desc":"Poderoso ataque de água:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"Rajada Nitro",
         "desc":"Poderoso ataque de bomba:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"Chuva Faiscante",
         "desc":"Poderoso ataque de trovão:" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"Flecha Penetrante",
         "desc":"Ataca com um tiro de altíssima precisão." + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"Tiros Sequenciais",
         "desc":"Ataque com uma poderosa e precisa explosão de múltiplas flechas." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"Chuva de Flechas",
         "desc":"Ataca com uma rajada de flechas que atinge todos os inimigos múltiplas vezes." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"Renovar",
         "desc":"Simples magia de cura que recupera um aliado."
      };
      
      public static var remedy:Object = {
         "name":"Refrescar",
         "desc":"Magia de cura avançada que recupera um aliado e o abençoa."
      };
      
      public static var motherearth:Object = {
         "name":"Mãe Terra",
         "desc":LIMIT_BREAK + "Causa dano mágico biológico massivo a todos os inimigos e os envenena. \n • Abençoa todos os aliados, também funciona em aliados na reserva." + HIGH_ACC + "\n • Deixa o clima limpo por 5 turnos."
      };
      
      public static var mightyoak:Object = {
         "name":"Grande Carvalho",
         "desc":LIMIT_BREAK + "Causa dano físico de terra massivo a todos os inimigos com vários golpes poderosos." + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"Ataque Normal",
         "desc":"Esfaqueia um único alvo com uma rápida emboscada por trás." + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"Esgrima",
         "desc":"Ataque básico que atinge um único alvo com 4 cortes." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"Frenesi de Lâminas",
         "desc":"Poderoso ataque que atinge um único inimigo com 11 ataque frenéticos." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"Corte Veloz",
         "desc":"Um corte super rápido que atinge todos os inimigos." + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"Nove Vidas",
         "desc":"Cura todos os aliados, dá a eles o status de auto-reviver, também revive aliados mortos. Leva um longo tempo para recarregar." + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"Explosão Estelar",
         "desc":"Atinge todos os inimigos com dano mágico não elemental. Leva um longo tempo para recarregar." + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"Ataque Saltitante",
         "desc":"Ataque físico básico:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"Dança da Espada",
         "desc":"Ataque físico avançado:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"Cortador Final",
         "desc":"Poderoso ataque físico:" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"Golpe Sombrio",
         "desc":"Ataque avançado de trevas:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"Tango do Crepúsculo",
         "desc":"Poderoso ataque de trevas:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"Golpe Sagrado",
         "desc":"Ataque avançado de luz:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"Divisão Divina",
         "desc":"Poderoso ataque de luz:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"Golpe Relâmpago",
         "desc":"Ataque avançado de trovão:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"Passos do Trovão",
         "desc":"Poderoso ataque de trovão:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"Corte de Vento",
         "desc":"Ataque avançado de vento:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"Dança do Vento",
         "desc":"Poderoso ataque de vento:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"Golpe Borbulhante",
         "desc":"Ataque avançado de água:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"Turbilhão d\'Água",
         "desc":"Poderoso ataque de água:" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"Gato Sushi",
         "desc":"Pula por aí, atingindo 3 inimigos aleatórios com dano mágico, e curando 2 dos jogadores mais machucados." + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"Gato Sushi!",
         "desc":"Pula por aí, atingindo 3 inimigos aleatórios com dano mágico, e curando 2 dos jogadores mais machucados. \n • Concede boa sorte aos jogadores." + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"Fúria",
         "desc":"Enfurece um alvo, jogador ou inimigo, fazendo com que ataquem constantemente com poder aumentado. " + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"Força Furiosa",
         "desc":"Concede status de fúria para todos os jogadores. Também pode ser focado em um único jogador para um efeito mais forte. " + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"Amor Puro",
         "desc":"Faz o alvo ficar adorável, fazendo com que sejam inatingíveis por ataques de alvo único. " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"Aura Adorável",
         "desc":"Concede o status adorável para todos os jogadores. Também pode ser focado em um único jogador para um efeito mais forte. " + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"O Criador",
         "desc":LIMIT_BREAK + "Causa dano mágico de luz massivo para todos os inimigos. \n • Concede boa sorte a todos os aliados, também funciona em aliados na reserva." + HIGH_ACC + "\n • Deixa o clima limpo por 5 turnos."
      };
      
      public static var thedestroyer:Object = {
         "name":"O Destruidor",
         "desc":LIMIT_BREAK + "Causa dano físico de trevas massivo para todos os inimigos, com vários golpes." + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"Coelhos da Neve",
         "desc":"Magia de gelo que atinge todos os inimigos." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"Gatos da Neve",
         "desc":"Magia poderosa de gelo que atinge todos os inimigos, e prepara combos de congelamento." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"Hera",
         "desc":"Ataque biológico que atinge um único alvo." + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"Vinhas",
         "desc":"Ataque biológico forte que atinge um único alvo várias vezes." + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"Energia",
         "desc":"Magia de bomba básica  que atinge um único alvo." + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"Bomba de Energia",
         "desc":"Magia de bomba avançada que atinge um único alvo." + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"Rajada de Energia",
         "desc":"Poderosa magia de bomba que atinge todos os inimigos." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"Bolhas",
         "desc":"Magia de água básica que atinge um único alvo." + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"Redemoinho",
         "desc":"Magia de água avançada que atinge um único alvo." + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"Explosão de Bolhas",
         "desc":"Poderosa magia de água que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"Descarga",
         "desc":"Ataque avançado de trovão que atinge um único alvo." + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"Surto",
         "desc":"Poderoso ataque de trovão que atinge um único alvo." + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"Bob, a Bala",
         "desc":"Ataque avançado de bomba que atinge um único alvo." + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"Tiro Gigante",
         "desc":"Poderoso ataque de bomba que atinge um único alvo." + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"Ventania",
         "desc":"Ataque avançado de vento que atinge um único alvo." + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"Tempestade",
         "desc":"Poderoso ataque de vento que atinge um único alvo." + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"Power Metal",
         "desc":"Causa dano mágico de vento a todos os inimigos e cura todos os aliados." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"Rajada",
         "desc":"Magia básica de vento que atinge um único alvo." + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"Vendaval",
         "desc":"Magia avançada de vento que atinge um único alvo." + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"Onda de Choque",
         "desc":"Poderosa magia de vento que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"Serra Circular",
         "desc":"Ataque não-elemental avançado que atinge um único alvo." + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"Triturador",
         "desc":"Poderoso ataque não elemental que atinge todos os inimigos." + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"Semente de Gaia",
         "desc":"Magia de terra básica que atinge um único alvo." + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"Desabrochar de Gaia",
         "desc":"Magia de terra avançada que atinge um único alvo." + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"Florescer de Gaia",
         "desc":"Poderosa magia de terra que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"Chama Furacão",
         "desc":"Poderosa magia de fogo que atinge todos os inimigos." + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"Chama Purificadora",
         "desc":"Magia de luz que dissipa um único alvo e diminui o poder de seus ataques mágicos." + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"Grito Aterrorizante",
         "desc":"Causa dano mágico de trevas para todos os inimigos e diminui o poder de seus ataques." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"Cura",
         "desc":"Magia simples de cura que cura um aliado." + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"Mais Cura",
         "desc":"Poderosa magia de cura que cura todos os aliados. Também pode ser mirada em um único aliado para uma cura concentrada." + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"Reviver",
         "desc":"Revive um aliado morto, ou concede o status de auto reviver para alguém vivo. "
      };
      
      public static var purify:Object = {
         "name":"Purificar",
         "desc":"Cura os efeitos de status comuns de todos os aliados ou todos os inimigos. Não inclui efeitos de status neutros como molhado ou seco. " + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"Adquirir Alvo",
         "desc":"Melhora a precisão de um aliado, e concede a ele boa sorte." + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"Proteger",
         "desc":"Melhora a defesa de todos os aliados, incluindo aqueles na reserva." + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"Barreira",
         "desc":"Melhora a defesa mágica de todos os aliados, incluindo aqueles na reserva." + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"Reflexos",
         "desc":"Melhora a evasão de todos os aliados, incluindo aqueles na reserva, e também cura o status encoberto para aliados ativos. " + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"Escudo Celestial",
         "desc":"Melhora a defesa e defesa mágica de um aliado. " + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"Dissipar",
         "desc":"Dissipa todos os inimigos, cancelando seus buffs e efeitos de status positivos. Também pode ser usado em aliados para cancelar seus debuffs. " + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"Clarão",
         "desc":"Diminui a precisão de todos os inimigos." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"Amarrar",
         "desc":"Diminui a evasão de todos os inimigos." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"Debilitar",
         "desc":"Diminui a defesa de todos os inimigos." + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"Enfraquecer",
         "desc":"Diminui a defesa mágica de todos os inimigos." + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"Giga Broca",
         "desc":"Poderoso ataque de terra que atinge um único alvo. Faz muito mais dano se o alvo tiver mais defesa ou defesa mágica maior do que o normal, ou estiver defendendo. " + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"Bis",
         "desc":"Concede um turno extra a um aliado. Usar isso em você mesmo não tem sentido." + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"Estalinhos",
         "desc":"Concede má sorte para todos os inimigos, e boa sorte para todos os aliados, incluindo aqueles na reserva." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"Zero Absoluto",
         "desc":LIMIT_BREAK + "Causa grande dano mágico de gelo para todos os inimigos, diminui a evasão deles, e os congela. \n • Limpa todas as recargas ativas de todos os jogadores." + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"Tsunami",
         "desc":LIMIT_BREAK + "Causa dano físico massivo ou dano mágico de água para todos os inimigos, e os deixa molhados. \n • Dano é baseado no status mais alto." + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"Supernova",
         "desc":LIMIT_BREAK + "Causa dano mágico de fogo massivo para todos os inimigos e aliados, e os queima. \n • Não pode ser evadido."
      };
      
      public static var deathmetal:Object = {
         "name":"Death Metal",
         "desc":LIMIT_BREAK + "Causa dano mágico de vento massivo para todos os inimigos. Cura todos os aliados e concede a eles o status de bravura, também funciona em aliados na reserva." + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"Aniquilação",
         "desc":LIMIT_BREAK + "Ataque com uma grande chance de instantaneamente matar todos os inimigos. Não funciona bem em chefões e tem baixa precisão."
      };
      
      public static var ion:Object = {
         "name":"Canhão de Íons",
         "desc":LIMIT_BREAK + "Causa dano mágico de trovão massivo para todos os inimigos, e pode paralisá-los. \n • Também carrega o ataque Hiper Raio de Lance." + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"Buraco Negro",
         "desc":LIMIT_BREAK + "Causa dano mágico de trevas massivo para todos os inimigos, e os deixa pesados. Também mata o usuário." + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"Poder Oculto",
         "desc":LIMIT_BREAK + "Causa dano físico massivo ou dano mágico para todos os inimigos. \n • Dano é baseado no status mais alto." + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "Ossos";
      
      public static var bonestar:String = "Estrela Ossal";
      
      public static var groundblade:String = "Lâmina Morto-viva";
      
      public static var fallingstar:String = "Estrela Cadente";
      
      public static var firerock:String = "Pedra de Fogo";
      
      public static var stalactite:String = "Estalactite";
      
      public static var stalactite2:String = "Estalactites";
      
      public static var fume:String = "Fumaça Fumegante";
      
      public static var eruption:String = "Erupção";
      
      public static var scald:String = "Fumaça Escaldante";
      
      public static var rain:String = "Chuva";
      
      public static var sandstorm:String = "Tempestade de Areia";
      
      public static var hail:String = "Geada";
      
      public static var nitro:String = "Nitro Burn";
      
      public static var acid:String = "Ácida Ardente";
      
      public static var bamboo:String = "Bambu";
      
      public static var bamboo2:String = "Armadilha de Bambu";
      
      public static var bluebolt:String = "Raio Azul";
      
      public static var deepfreeze:String = "Congelamento Profundo";
      
      public static var wafer:String = "Casquinha";
      
      public static var present:String = "Bomba de Presente";
      
      public static var plasmacage:String = "Gaiola de Plasma";
      
      public static var tankcannon:String = "Canhão de Tanque";
      
      public static var candycanes:String = "Bastões de Doces";
      
      public static var bonefish:String = "Peixe de Ossos";
      
      public static var riceball:String = "Bomba de Bolinho de Arroz";
      
      public static var mushroom:String = "Cogumelo";
      
      public static var lifedrain:String = "Dreno de Vida";
      
      public static var smokepuff:String = "Sopro de Fumaça";
      
      public static var confusion:String = "Confusão";
      
      public static var ink:String = "Mancha de Tinta";
      
      public static var chocolate:String = "Mancha de Chocolate";
      
      public static var tentacles:String = "Tentáculos";
      
      public static var slowdown:String = "Desacelerar";
      
      public static var speedup:String = "Acelerar";
      
      public static var poisonroot:String = "Raiz Venenosa";
      
      public static var burningroot:String = "Raiz Fervente";
      
      public static var searoot:String = "Raiz Marítima";
      
      public static var bombblast:String = "Explosão Bombástica";
      
      public static var bigblast:String = "Grande Explosão";
      
      public static var cactus:String = "Cacto";
      
      public static var cacti:String = "Cactos";
      
      public static var spark:String = "Faísca";
      
      public static var bigspark:String = "Grande Faísca";
      
      public static var talisman:String = "Selo de Talismã";
      
      public static var ember:String = "Brasa";
      
      public static var fireblast2:String = "Explosão Flamejante";
      
      public static var firecrystals:String = "Cristais de Fogo";
      
      public static var zephyrcrystals:String = "Cristais de Vento";
      
      public static var frost:String = "Frio Súbito";
      
      public static var rockslide:String = "Deslizamento";
      
      public static var avalanche:String = "Avalanche";
      
      public static var blackspikes:String = "Espinhos Negros";
      
      public static var stonefist:String = "Punho de Pedra";
      
      public static var spiderweb:String = "Teia de Aranha";
      
      public static var spiders:String = "Invasão de Aranhas";
      
      public static var geometry2:String = "Distorção Espacial";
      
      public static var geometry3:String = "Campo de Distorção";
      
      public static var sacrifice:String = "Sacrifício";
      
      public static var bigroot:String = "Grande Raiz";
      
      public static var seabomb:String = "Bomba Marítima";
      
      public static var fairy:String = "Mosca Fada";
      
      public static var fly:String = "Mosca Bomba";
      
      public static var starpunch:String = "Soco Estelar";
      
      public static var darken:String = "Invisibilidade";
      
      public static var lighten:String = "Encantamento";
      
      public static var SlimeChocolate:String = "Cospe em um único alvo, causando dano físico de terra e reduzindo sua precisão.";
      
      public static var SlimeIcecream:String = "Usa magia de gelo básica, resfria um único alvo.";
      
      public static var SlimeSand:String = "Usa um ataque biológico básico que pode atordoar um único alvo.";
      
      public static var SlimeLava:String = "Usa um ataque de fogo básico que seca um único alvo.";
      
      public static var SlimeMouse:String = "Usa um ataque de trovão fraco que sempre atordoa um único alvo.";
      
      public static var SlimeWater:String = "Usa um ataque de água pateticamente fraco em um único alvo.";
      
      public static var SlimeMud:String = "Usa um ataque biológico básico em um único alvo.";
      
      public static var SlimeBunny:String = "Dá o status de regeneração a todos os aliados, incluindo aqueles na reserva, curando-os ao longo de vários turnos.";
      
      public static var SpriteFire:String = "Substitui o clima atual por cinzas quentes por 5 turnos.";
      
      public static var SpriteIce:String = "Substitui o clima atual por uma nevasca por 5 turnos.";
      
      public static var SpriteThunder:String = "Substitui o clima atual por um campo elétrico por 5 turnos.";
      
      public static var SpriteRock:String = "Substitui o clima atual por um terremoto por 5 turnos.";
      
      public static var SpriteWind:String = "Substitui o clima atual por uma tempestade de raios por 5 turnos.";
      
      public static var ChomperLeafy:String = "Substitui o clima atual por uma leve brisa por 5 turnos.";
      
      public static var ChomperSeaweed:String = "Substitui o clima atual por chuva pesada por 5 turnos.";
      
      public static var ChomperMagma:String = "Substitui o clima atual por ensolarado por 5 turnos.";
      
      public static var ChomperMutant:String = "Substitui o clima atual por uma chuva ácida por 5 turnos.";
      
      public static var CreepThorny:String = "Ferroa com um ataque avançado de terra, que pode paralisar o alvo.";
      
      public static var CreepIcicle:String = "Ferroa com um ataque avançado de gelo, que pode esfriar o alvo.";
      
      public static var CreepHermit:String = "Corta um único alvo com um ataque avançado não-elemental.";
      
      public static var CreepGreen:String = "Pula em um alvo 3 vezes com poderosos ataques não-elementais." + RETARGETS_2;
      
      public static var CreepRed:String = "Esmaga um alvo com um poderoso ataque de vento, que também deixa o alvo vulnerável.";
      
      public static var CreepBlue:String = "Explode com uma poderosa explosão de bomba que também paralisa o alvo.";
      
      public static var Defender1:String = "Bombardeia todos os inimigos com uma explosão poderosa de trovão, que também pode deixá-los vulneráveis.";
      
      public static var Defender2:String = "Explode um único alvo com um poderoso estouro d\'água, que também pode deixar o alvo molhado. ";
      
      public static var DogFriend:String = "Concede o status de adorável para todos os aliados, fazendo com que os inimigos fiquem hesitantes em atacá-los diretamente.";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "Pula em um alvo com um ataque de fogo, que o queima.";
      
      public static var DogWolf:String = "Pula em um alvo com um ataque de gelo, que o esfria.";
      
      public static var DogZap:String = "Pula em todos os inimigos com um ataque de trovão ensurdecedor, que pode deixá-los vulneráveis.";
      
      public static var DogMage:String = "Atinge todos os inimigos com magia de luz do mal, que os amaldiçoa.";
      
      public static var ChibiKnightUltra:String = "Melhora o ataque de todos os aliados, incluindo aqueles na reserva, e então ataca um inimigo várias vezes." + RETARGETS_2;
      
      public static var BushGreen:String = "Grita nos inimigos, diminuindo um pouco seus poderes de ataque.";
      
      public static var BushRed:String = "Grita nos inimigos, diminuindo um pouco suas defesas.";
      
      public static var BushDark:String = "Grita viciosamente para os inimigos, reduzindo um pouco suas evasões.";
      
      public static var BushMud:String = "Grita para os inimigos, reduzindo um pouco seus ataques mágicos.";
      
      public static var BushSand:String = "Grita viciosamente para os inimigos, reduzindo um pouco suas defesas mágicas.";
      
      public static var GolemTopaz:String = "Esmaga um alvo repetidamente com poderosos ataques de trovão, que também podem atordoar o alvo.";
      
      public static var GolemPearl:String = "Resfria todos os inimigos com uma poderosa magia de gelo, e substitui o clima atual com uma imensa geada por 5 turnos.";
      
      public static var GolemAmethyst:String = "Esmaga todos os inimigos repetidamente com poderosos ataques não-elementais que também podem deixá-los vulneráveis.";
      
      public static var FishSteam:String = "Voa em direção aos inimigos a velocidades supersônicas que podem deixá-los mais leves.";
      
      public static var FishGold:String = "Explode todos os inimigos com um raio de magia de luz que pode deixá-los secos.";
      
      public static var FishJet:String = "Atira em todos os inimigos com um simples ataque de bomba.";
      
      public static var HandSkeleton:String = "Concede boa sorte a todos os aliados, incluindo aqueles na reserva, melhorando suas chances em eventos aleatórios.";
      
      public static var HandZombie:String = "Condena todos os inimigos, fazendo com que eles morram instantaneamente após 3 turnos.";
      
      public static var HandMagma:String = "Enfurece todos os aliados, fazendo-os atacar incontrolavelmente com poder aumentado.";
      
      public static var FlybotBlue:String = "Inverte os buffs de todos os aliados, tornando negativos em positivos, e vice versa.";
      
      public static var FlybotYellow:String = "Inverte os buffs de todos os inimigos, tornando negativos em positivos, e vice versa.";
      
      public static var FlybotRed:String = "Inverte os buffs de um único inimigo ou aliado, tornando negativos em positivos e vice versa.";
      
      public static var FallenLost:String = "Corta um inimigo com um ataque de vento e motiva todos os aliados, incluindo aqueles na reserva.";
      
      public static var FallenCrucified:String = "Ataca um inimigo com um corte de luz que pode matá-lo instantaneamente.";
      
      public static var FallenDrowned:String = "Graciosamente dissipa os debuffs de todos os aliados ativos.";
      
      public static var FallenBurned:String = "Seca todos os inimigos com um ataque de fogo e substitui o clima atual por uma tempestade de areia por 5 turnos.";
      
      public static var FallenBeheaded:String = "Soca um inimigo com um ataque de trevas e concede bravura a todos os aliados, incluindo aqueles na reserva.";
      
      public static var PixelSlime:String = "Golpeia um inimigo com uma fraca magia biológica, deixando-o muito cansado.";
      
      public static var PixelBush:String = "Golpeia um inimigo com uma fraca magia de fogo, deixando-o bem seco.";
      
      public static var PixelBat:String = "Golpeia um inimigo com uma fraca magia de trevas, dando a ele muita má sorte.";
      
      public static var PixelIdol:String = "Golpeia um inimigo com fracos ataques de bomba, deixando-o muito enfraquecido.";
      
      public static var MonolithViking:String = "Concede o status veloz a todos os aliados, basicamente dando um turno extra a cada um.";
      
      public static var MonolithAncient:String = "Concede o status defesa a todos aliados, que oferece proteção massiva por um turno.";
      
      public static var MonolithCosmic:String = "Bombardeia o campo de batalha com uma tremenda explosão de magia das trevas que atinge todos os inimigos.";
      
      public static var IdolGem:String = "Concede o status leve a todos os aliados, incluindo aqueles na reserva, protegendo-os de dano de terra.";
      
      public static var IdolStone:String = "Concede o status seco a todos os aliados, incluindo aqueles na reserva, protegendo-os de dano de trovão e gelo.";
      
      public static var IdolMetal:String = "Concede o status pesado a todos os aliados, incluindo aqueles na reserva, protegendo-os de dano de vento.";
      
      public static var IdolWood:String = "Abençoa todos os aliados, incluindo aqueles na reserva, protegendo-os de todos os efeitos de status.";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "Concede o status encantado a todos os aliados, fazendo-os imunes a dano mágico, mas, também, deixando-os fracos a ataques físicos.";
      
      public static var MirrorDemon:String = "Concede o status invisível a todos os aliados, fazendo-os imunes a dano físico, mas, também, deixando-os fracos a ataques mágicos.";
      
      public static var MirrorHaunted:String = "Morde um inimigo com um poderoso ataque de trevas que também o amaldiçoa.";
      
      public static var MammothWooly:String = "Esmaga um inimigo com seu corpo para causar dano não-elemental massivo, com outros inimigos recebendo um terço do dano." + equips.MAY_STUN;
      
      public static var MammothCamel:String = "Aumenta a defesa mágica de todos os aliados, incluindo aqueles na reserva, e, então, atinge todos os inimigos com um ataque de terra.";
      
      public static var MammothWar:String = "Aumenta a defesa de todos os aliados, incluindo aqueles na reserva, e, então, atinge todos os inimigos com explosões mágicas de bomba." + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "Cospe tinta em um inimigo, causando dano mágico de trevas massivo que também reduz a precisão do alvo e o deixa invisível.";
      
      public static var SquidPurple:String = "Reduz a precisão de todos os inimigos e pode, também, condená-los.";
      
      public static var SquidLime:String = "Apunhala todos os inimigos com poderosos ataques de trovão e sempre os atordoa.";
      
      public static var Underlegs:String = "Dissipa todos os inimigos primeiro e, então, libera uma nevasca intensa de ataques não-elementais em todos eles.";
      
      public static var SlimeBigSand:String = "Usa um poderoso ataque biológico que atinge um único inimigo e pode atordoá-lo.";
      
      public static var SlimeBigLava:String = "Usa um poderoso ataque de fogo que atinge um único inimigo e o queima seriamente.";
      
      public static var SlimeBigMud:String = "Usa ataques biológicos com cogumelos em todos os inimigos, podendo atordoá-los com os esporos.";
      
      public static var SlimeBigIcecream:String = "Esfria todos os inimigos com magia fraca de gelo, preparando combos de gelo e água.";
      
      public static var SlimeBigChocolate:String = "Vomita chocolate nos inimigos todos, causando dano mágico de terra e deixando-os pesados.";
      
      public static var WormPutrid:String = "Usa um fraco ataque não-elemental com teia para reduzir drasticamente a evasão de um inimigo.";
      
      public static var WormScaly:String = "Molha todos os aliados, incluindo aqueles na reserva, protegendo-os de dano de fogo.";
      
      public static var WormFuzzy:String = "Usa uma fraca mordida não-elemental, que dá ao alvo um vírus mortal.";
      
      public static var WormCutie:String = "Cura os efeitos de status neutros de todos os aliados, incluindo: Molhado, Seco, Frio, Pesado, Leve, Encantado e Invisível.";
      
      public static var WraithIce:String = "Ataca um inimigo com um ataque de gelo que passa por seu coração, podendo matá-lo instantaneamente.";
      
      public static var WraithFire:String = "Ataca um inimigo com uma magia de fogo infernal, que o enfurece. \n • É melhor quando o alvo não sobrevive.";
      
      public static var WraithSteel:String = "Explode um inimigo várias vezes com ataques de bomba, que pode deixá-lo vulnerável e reduzir sua defesa.";
      
      public static var WraithLeaf:String = "Atira em um inimigo várias vezes com ataques biológicos, que irá envenená-lo e reduzirá sua defesa mágica.";
      
      public static var WraithMaster:String = "Usa magia das trevas em um único alvo e o dissipa.";
      
      public static var Glitch2:String = "???-?eII ITEM NÃO ENCONTRADO! ### \nERRO: 0x000002";
      
      public static var Glitch1:String = "??-//AVISO: GARANTIA ##ANULADA## CASO SELO ##FOR REMOVIDO##!! 0?-//??";
      
      public static var GloopStone:String = "Concede o status invisível a um inimigo, fazendo com que ele tome o dobro do dano de ataques mágicos.";
      
      public static var GloopCrystal:String = "Concede o status encantado a um inimigo, fazendo com que ele tome o dobro do dano de ataques físicos.";
      
      public static var GloopAsh:String = "Concede bravura a todos os aliados, incluindo aqueles na reserva, aumentando sua sorte com acertos críticos.";
      
      public static var GloopWood:String = "Concede o status motivação a todos os aliados, incluindo aqueles na reserva, protegendo-os de mortes instantâneas.";
      
      public static var HydraZombie:String = "Instantaneamente mata todos os inimigos, ou, se falhar, atinge-os com um ataque físico de trevas.";
      
      public static var HydraMagma:String = "Esmaga todos os inimigos com uma poderosa magia de fogo que também os queima.";
      
      public static var HydraIce:String = "Morde um inimigo diversas vezes, para um dano físico de gelo imensamente gigantesco.";
      
      public static var DragonEarth:String = "Reduz a defesa mágica de todos os inimigos e, então cospe ácido mortal, causando dano mágico biológico a todos eles.";
      
      public static var DragonSky:String = "Reduz a defesa de todos os inimigos e, então, os ataca com um furacão de penas, causando dano físico de vento a todos eles.";
      
      public static var DragonSea:String = "Reduz o ataque de todos os inimigos e, então, os ataca com dano mágico de água massivo que também os deixa molhados.";
      
      public static var DragonOmega:String = "Reduz o ataque mágico de todos os inimigos e, então os bombardeia com dano mágico de luz imenso que também pode atordoá-los.";
      
      public static var BatBlood:String = "Drena o HP de um alvo com um simples ataque biológico, e cura o jogador invocador.";
      
      public static var BatSnow:String = "Concede o status frio a todos os aliados, incluindo aqueles na reserva, protegendo-os de dano biológico.";
      
      public static var BatThunder:String = "Concede o status de confusão para todos os membros ativos por vários turnos, basicamente iniciando um modo de batalha automática.  \n • Não tente isso em um chefão.";
      
      public static var BatBone:String = "Concede o status de vírus para todos os aliados, mesmo se eles forem resistentes a ele.";
      
      public static var BearBrown:String = "Espanca um inimigo com ataques não-elementais. Faz muito mais dano se o usuário estiver machucado, e se membros do grupo estiverem mortos. \n • O poder máximo é 1000.";
      
      public static var BearGrolar:String = "Acerta uma avalanche de pancadas de gelo, que também pode congelá-los.";
      
      public static var BearPanda:String = "Esfaqueia todos os inimigos com uma saraivada de ataques biológicos, que também pode envenená-los.";
      
      public static var BitIce:String = "Usa uma magia de barreira, que aumenta a defesa mágica de todos os aliados, incluindo aqueles na reserva.";
      
      public static var BitThunder:String = "Usa uma magia protetora, que aumenta a defesa de todos os aliados, incluindo aqueles na reserva. ";
      
      public static var BitHoly:String = "Usa uma magia de cura poderosa, que cura todos os aliados.";
      
      public static var BitFire:String = "Investe em um inimigo com um ataque de fogo, que pode diminuir sua defesa e pode queimá-lo.";
      
      public static var BitWind:String = "Investe em um inimigo com um ataque de vento, que diminui sua defesa mágica e pode paralisá-lo.";
      
      public static var BitWater:String = "Borrifa todos os inimigos com uma fraca magia de água, que os deixam todos molhados, e prepara-os para combos de gelo e trovão.";
      
      public static var BitPoison:String = "Envenena todos os inimigos com uma fraca magia biológica, fazendo dano neles a cada turno.";
      
      public static var BoulderCoral:String = "Pula em um alvo com um ataque de água, que deixa-o vulnerável.";
      
      public static var BoulderMarble:String = "Acerta todos os inimigos com magia de vento, que causa forte amnésia neles.";
      
      public static var BoulderObsidian:String = "Acerta todos os inimigos com um d20, fazendo dano mágico de fogo bem aleatório, e os queimando no processo.";
      
      public static var BoulderDirt:String = "Acerta todos os inimigos com dano físico de terra, que os deixa cansados.";
      
      public static var BoulderSandstone:String = "Pula em um único alvo e causa dano físico de terra massivo.";
      
      public static var CatNinja:String = "Dá um turno extra a um aliado.";
      
      public static var CatSniper:String = "Atira na cara de um inimigo, que pode matá-lo instantaneamente com um pouco de sorte.";
      
      public static var CatWizard:String = "Usa uma simples magia de cura, que cura um aliado.";
      
      public static var CatBomber:String = "Joga uma bomba em um inimigo, causando dano mágico e deixando-o vulnerável.";
      
      public static var CatWarrior:String = "Corta um inimigo com uma sequência de ataques não-elementais.";
      
      public static var DollMatt:String = "Aumenta consideravelmente o poder de ataque de um aliado, e concede-o status de benção.";
      
      public static var DollNatalie:String = "Aumenta consideravelmente o poder de ataque mágico de um aliado, e concede-o status de motivação.";
      
      public static var DollLance:String = "Acerta todos os inimigos com um forte poder mágico de bomba, que pode deixá-los vulneráveis.";
      
      public static var DollAnna:String = "Ataca com uma flecha biológica penetrante, que faz mais dano se o alvo tiver defesa ou defesa mágica maior do que o normal, ou esteja defendendo.";
      
      public static var DollNoLegs:String = "Mia assombrosamente na direção dos inimigos, diminuindo sua evasão e dando má sorte para eles.";
      
      public static var BossCyclopsDesert:String = "Causa dano mágico de bomba massivo para todos os inimigos com vários golpes, que também pode paralisá-los.";
      
      public static var BossCyclopsGlacial:String = "Esmaga um inimigo repetidamente com poderosos ataques de gelo, enquanto os outros recebem 1/3 do dano. \n • Todos os inimigos podem ser congelados. ";
      
      public static var BossCyclopsInfernal:String = "Lança ataques de fogo poderosos repetidamente em um inimigo, enquanto os outros recebem 1/3 do dano. \n • Todos os inimigos podem ser queimados. ";
      
      public static var BossGolemWater:String = "Esmaga todos os inimigos com ataques de água incrivelmente poderosos, que pode também deixá-los molhados.";
      
      public static var BossGolemFire:String = "Explode todos os inimigos com ataques de fogo incrivelmente poderosos, e ainda queima os sobreviventes.";
      
      public static var BossNestCat:String = "Aumenta o ataque mágico de todos os aliados, incluindo aqueles na reserva, e então corta todos os inimigos com uma saraivada de ataques biológicos. ";
      
      public static var BossNestNinja:String = "Acerta todos os inimigos com magias das trevas incrivelmente poderosas, que também os amaldiçoam.";
      
      public static var EvilMatt:String = "Esmaga todos os inimigos um por um com ataques de terra incrivelmente poderosos." + HIGH_CRITS;
      
      public static var EvilNatalie:String = "Explode todos os inimigos um por um com magias de luz incrivelmente poderosas." + HIGH_CRITS;
      
      public static var EvilLance:String = "Dinamita todos os inimigos um por um com magias de bomba incrivelmente poderosas." + HIGH_CRITS;
      
      public static var EvilAnna:String = "Corta todos os inimigos um por um com ataques de vento incrivelmente poderosos." + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "Usa a magia mais poderosa do universo, e destrói todos os inimigos com um dano não-elemental alucinante.";
      
      public static var WraithOrigami:String = "Ataca um inimigo com um ataque retalhador não-elemental e o dissipa.";
      
      public static var GloopFab:String = "Substitui o clima atual por flores de cerejeiras por 5 turnos.";
      
      public static var CatSkeleton:String = "Esfaqueia um inimigo por trás, causando dano físico de escuridão, e o deixando com a dose máxima de má sorte.";
      
      public static var HydraOrigami:String = "Atinge todos os inimigos com ataques de espada de papel não-elementais, e melhora a evasão de todos o aliados, incluindo aqueles na reserva.";
      
      public static var Defender3:String = "Atinge todos os inimigos com poderosas ondas de choque, causando dano físico de escuridão. \n • Sempre causa acertos críticos.";
      
      public static var BearBlack:String = "Corta um único alvo, causando dano físico de fogo, e o deixando com a dose máxima do status seco.";
      
      public static var GolemBone:String = "Impala todos os inimigos com poderosos ataques não elementais que podem enfraquecê-los.";
      
      public static var WormBook:String = "Melhora a precisão de todos os aliados ativos em combate.";
      
      public static var BossGigalith:String = "Atinge todos os inimigos com uma poderosa magia não-elemental, e os deixa severamente queimados, reduzindo seu HP máximo com o tempo.";
      
      public static var BossDevourer:String = "Deleta a simulação atual.";
      
      public static var SketchPapalotl:String = "Esfaqueia todos os inimigos para causar dano físico massivo não elemental, que ignora completamente buffs defensivos. (mas não debuffs)";
      
      public static var SketchGuncat:String = "Atinge todos os inimigos com dano de bomba massivo, que é metade mágico e metade físico. Também ignora buffs defensivos. (mas não debuffs)";
      
      public static var SketchXolotl:String = "Atinge todos os inimigos com dano físico não elemental, que os enfraquece, e ignora seus buffs defensivos. (mas não defensivos)";
      
      public static var SketchGlaurung:String = "Causa dano mágico de vento a todos os inimigos, os dissipa e ignora buffs defensivos. (but not debuffs)";
      
      public static var ArcadeGuoye:String = "Aumenta massivamente a precisão de todos os aliados ativos em combate.";
      
      public static var ArcadeTotom:String = "Cura completamente todos os aliados ativos em combate e remove quaisquer debuffs ou efeitos de status negativos que eles tenham.";
      
      public static var ArcadeChair:String = "Piora muito o ataque mágico de todos os inimigos, e causa um pouco de dano de bomba também.";
      
      public static var ArcadePumpkus:String = "Normalmente ele não faz nada, mas invocá-lo duas ou mais vezes no mesmo turno vai deixar ele com raiva. Ele então causa dano físico massivo a inimigos aleatórios.";
      
      public static var ArcadeGlob:String = "Libera um gas em um único alvo, que inflige dissipação, cansaço, maldição, enfraquecimento, má sorte, e encoberto - nessa ordem. Também causa um pouco de dano mágico não elemental.";
      
      public static var ArcadeSnek:String = "Morde um único alvo, causando dano físico não elemental, e causado a dose máxima de queimadura e veneno.";
      
      public static var ArcadeRobo:String = "Atinge um único alvo com dano mágico de trovão, o atordoa e piora muito sua precisão.";
      
      public static var ArcadeBosh:String = "Piora muito o ataque de todos os inimigos.";
      
      public static var ArcadeTreagure:String = "Causa dano de elemento aleatório a inimigos aleatórios, e inflige status aleatórios. \n • Efeitos incluem congelamento, incineração, atordoamento, amnésia, vulnerável, condenação e má sorte.";
      
      public static var ArcadePhoenix:String = "Revive todos os aliados ativos em combate, ou os concede auto-reviver se eles já estiverem vivos.";
      
      public static var ArcadeMermaid:String = "Aumenta muito a evasão de todos os aliados, incluindo aqueles na reserva.";
      
      public static var ArcadeMaw:String = "Infecta todos os inimigos com um vírus mortal e causa um pouco de dano biológico.";
      
      public static var ClassicSlime:String = "Usa um ataque não elemental pateticamente fraco contra um único alvo.";
      
      public static var ClassicSlimeKing:String = "Conjura uma poderosa magia de cura, que cura todos os aliados, incluindo aqueles na reserva. \n • Também remove efeitos de status negativos.";
      
      public static var ClassicTree:String = "Causa um pequeno dano biológico a todos os inimigos, podendo atordoá-los brevemente.";
      
      public static var ClassicEyeball:String = "Simplesmente atinge todos os inimigos com dano mágico não elemental.";
      
      public static var ClassicBeholder:String = "Enrola seus tentáculos em volta de um alvo sem sorte, causando dano biológico, e severamente o envenenando.";
      
      public static var ClassicWaspRed:String = "Piora muito o ataque mágico de um único alvo.";
      
      public static var ClassicWaspBlack:String = "Piora muito o ataque de um único alvo.";
      
      public static var ClassicSandworm:String = "Violentamente vomita em todos os inimigos, causando dano mágico biológico, e reduzindo seu ataque, ataque mágico, defesa e defesa mágica.";
      
      public static var ClassicEaterIce:String = "Um sopro mágico gelado atinge todos os inimigos. Ele não causa muito dano, mas tem uma alta chance de congelar os alvos.";
      
      public static var ClassicEaterFire:String = "Um sopro mágico de fogo atinge todos os inimigos e os seca.";
      
      public static var ClassicClayBlue:String = "Conjura uma magia de vento em um único alvo, infligindo a dose máxima do status leve.";
      
      public static var ClassicClayRed:String = "Atinge um único alvo com dano físico de terra, infligindo a dose máxima do status pesado.";
      
      public static var ClassicClayDark:String = "Conjura uma magia de escuridão em um único alvo, causando o status de condenação, e reduzindo seu ataque, ataque mágico, defesa e defesa mágica.";
      
      public static var ClassicClayLight:String = "Conjura uma magia de cura avançada, curando todos os aliados, incluindo aqueles na reserva.";
      
      public static var ClassicProtector:String = "Atinge todos os inimigos com um poderoso raio trovejante. Qualquer coisa que sobreviver será atordoada por vários turnos.";
      
      public static var ClassicSlingerGun:String = "Tenta atirar em um único alvo com um poderoso ataque de bomba.\n • Sempre tem uma chance de 50% de acertar.\n • Ignora o status evasão e buffs defensivos.";
      
      public static var ClassicSlingerSword:String = "Tenta esfaquear um único alvo com um poderoso ataque não elemental.\n • Sempre tem uma chance de 50% de acertar.\n • Ignora o status evasão e buffs defensivos.";
      
      public static var ClassicPraetorian:String = "Fornece o status de defesa a todos os aliados ativos no momento. Depois ataca todo os inimigos com dano não-elemental, com chance de matá-los instantaneamente, e ignora seus buffs defensivos. (mas não debuffs) ";
      
      public static var ClassicCrystalRed:String = "Atinge um único alvo com dano de fogo mágico, que os queima.";
      
      public static var ClassicCrystalBlue:String = "Não causa muito dano, mas tem uma chance incrivelmente alta de congelar o alvo por muitos turnos.";
      
      public static var ClassicGigaGolem:String = "Atinge um inimigo causando dano físico massivo, que é elementar de fogo ou gelo - é completamente aleatório!";
      
      public static var ClassicRafflesia:String = "Causa dano biologico físico massivo a todos os inimigos.";
      
      public static var ClassicJack:String = "Buffa massivamente o ataque físico e mágico de todos os aliados, incluindo aqueles na reserva.";
      
      public static var arcadePoison:String = "Bolhas Tóxicas";
      
      public static var arcadeNettle:String = "Vinhas Urtigas";
      
      public static var arcadeTeeth:String = "Dentes Afiados";
      
      public static var bonePillar:String = "Pilar Ósseo";
      
      public static var hellfire:String = "Fogo Ardente";
      
      public static var pixelswords:String = "Tempestade de Espadas";
      
      public static var pixelfork:String = "Frenesi de Garfos";
      
      public static var paperSword:String = "Lâmina de papel";
      
      public static var paperStars:String = "Tempestade de Papeis";
      
      public static var swordswirl:String = "Turbilhão de Espadas";
      
      public static var iceneedle:String = "Espinhos Gélidos";
      
      public static var thunderblast:String = "Explosão Elétrica";
      
      public static var snowblast:String = "Explosão Glacial";
      
      public static var arcadeFlood:String = "Cascata";
      
      public static var ritual:String = "Ritual Profano";
      
      public static var highgravity:String = "Alta Gravidade";
      
      public static var lowgravity:String = "Baixa Gravidade";
      
      public static var snow:String = "Nevasca";
      
      public static var earthquake:String = "Terremoto";
      
      public static var blossom:String = "Flores de Cerejeiras";
      
      public static var electrongun:Object = {
         "name":"Arma de Elétrons",
         "desc":"Magia de trovão que atordoa um único alvo." + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"Afiar",
         "desc":"Estende a duração dos efeitos atuais dos status negativos em todos os inimigos. Alternativamente, pode ser usado em todos os aliados, incluindo aqueles na reserva, para estender a duração dos efeitos positivos de status. Não afeta pressa e defesa." + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"Sopro de Areia",
         "desc":"Ataque avançado de terra que atinge um único alvo." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"Duna de Areia",
         "desc":"Poderoso ataque de terra que atinge um único alvo." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"Acido",
         "desc":"Magia biológica avançada que atinge um único alvo." + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"Explosão Ácida",
         "desc":"Poderosa magia biológica que atinge todos os inimigos." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"Anel de Bolhas",
         "desc":"Ataque de água que da amnésia em um único alvo. \n • O tipo de dano é baseado no status mais alto."
      };
      
      public static var musicalblast:Object = {
         "name":"Benção da Phyrnna",
         "desc":"Buffa o ataque mágico de todos os aliados, incluindo aqueles na reserva, e também fornece o status de regeneração." + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"Geometria",
         "desc":"Poderosa habilidade não-elementar, que atinge um único alvo. \n • O tipo de dano é baseado no status mais alto." + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"Fadas Bombas",
         "desc":"Magia luz poderosa que atinge todos os inimigos." + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"O Ceifador",
         "desc":"Ataque trevas que mata instantaneamente um único alvo." + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"Espadas demoniacas",
         "desc":"Poderoso ataque trevas que atinge todos os inimigos." + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"Arte Ataque",
         "desc":LIMIT_BREAK + "Cura o HP e problemas de status de todos os aliados, e buffa o HP, evasão, e precisão. \n • Também funciona em aliados na reserva."
      };
      
      public static var sevenswords:Object = {
         "name":"Sete Espadas",
         "desc":LIMIT_BREAK + "Causa dano luz físico massivo a todos os inimigos." + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}

