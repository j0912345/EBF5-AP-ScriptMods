package text.chineseTraditional
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • 元素及附加狀態取決於裝備中的武器。";
      
      public static var WEP_EFFECTS_2:String = "\n • 武器效果比平時更強。";
      
      public static var LOW_ACC:String = "\n • 命中率較低。";
      
      public static var HIGH_ACC:String = "\n • 命中率較高。";
      
      public static var HIGH_ACC_2:String = "\n • 命中率非常高。";
      
      public static var HIGH_CRITS:String = "\n • 暴擊率較高。";
      
      public static var RETARGETS:String = "\n • 擊敗當前目標後會隨機攻擊新的目標。";
      
      public static var RETARGETS_2:String = "\n • 擊敗當前目標後會選擇新的目標。";
      
      public static var LIMIT_BREAK:String = "極限技！ ";
      
      public static var ALTERNATIVE_ALL:String = "也可以選擇平均分散傷害以攻擊全體敵人。";
      
      public static var ALTERNATIVE_ONE:String = "也可以選擇將威力集中到單體敵人上。";
      
      public static var MAY_SURRENDER:String = "可能會使敵人投降，即使是強敵也不例外。";
      
      public static var SWORD_DANCE:String = "攻擊單體敵人三次。每擊敗目標時會自動攻擊新的目標,";
      
      public static var EXTRA_HITS:String = "並且額外攻擊一次。";
      
      public static var DISPEL_ALL:String = "驅散所有敵人的屬性強化以及正面狀態。";
      
      public static var HITS_RANDOM_FOES:String = "發射與敵方人數相同數量的箭；每枝箭會隨機瞄準敵人。";
      
      public static var COOLDOWN_2:String = "\n • 技能使用後冷卻1回合。";
      
      public static var COOLDOWN_3:String = "\n • 技能使用後冷卻2回合。";
      
      public static var COOLDOWN_4:String = "\n • 技能使用後冷卻3回合。";
      
      public static var COOLDOWN_6:String = "\n • 技能使用後冷卻5回合。";
      
      public static var COOLDOWN_11:String = "\n • 技能使用後冷卻10回合。";
      
      public static var defend:Object = {
         "name":"自保",
         "desc":"本回合承受的所有傷害將減半。某些裝備會增加額外效果。"
      };
      
      public static var swap:Object = {
         "name":"替換角色",
         "desc":"替換使用另外一名角色。不會消耗行動機會。"
      };
      
      public static var flee:Object = {
         "name":"逃跑",
         "desc":"從這場戰鬥中逃跑。不會有任何懲罰。"
      };
      
      public static var skip:Object = {
         "name":"跳過",
         "desc":"跳過這名角色的行動機會，什麼也不做。"
      };
      
      public static var scan:Object = {
         "name":"掃描",
         "desc":"掃描所有場上的敵人，記錄下敵方的屬性以及弱點。這些數據將會永久保存在圖鑑裡。"
      };
      
      public static var capture:Object = {
         "name":"捕獲敵人",
         "desc":"試圖捕獲敵人。HP低或者帶有負面狀態的敵人比較容易被捕獲。但有些敵人不能被捕獲。"
      };
      
      public static var bring1:Object = {
         "name":"替換成馬特",
         "desc":"將此角色換下讓馬特上場。不會消耗行動機會。"
      };
      
      public static var bring2:Object = {
         "name":"替換成娜塔莉",
         "desc":"將此角色換下讓娜塔莉上場。不會消耗行動機會。"
      };
      
      public static var bring3:Object = {
         "name":"替換成蘭斯",
         "desc":"將此角色換下讓蘭斯上場。不會消耗行動機會。"
      };
      
      public static var bring4:Object = {
         "name":"替換成安娜",
         "desc":"將此角色換下讓安娜上場。不會消耗行動機會。"
      };
      
      public static var bring5:Object = {
         "name":"替換成無腿貓",
         "desc":"將此角色換下讓無腿貓上場。不會消耗行動機會。"
      };
      
      public static var swordslash:Object = {
         "name":"普通攻擊",
         "desc":"使用劍普通地攻擊單體敵人。" + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"地動",
         "desc":"基礎的單體土元素攻擊。"
      };
      
      public static var quakespikes:Object = {
         "name":"地震",
         "desc":"高階的單體土元素攻擊。"
      };
      
      public static var cataclysmiccut:Object = {
         "name":"山崩地裂",
         "desc":"極強的單體土元素攻擊。" + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"噴泉",
         "desc":"基礎的單體水元素攻擊。" + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"洪流",
         "desc":"高階的單體水元素攻擊。" + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"洶湧波濤",
         "desc":"極強的單體水元素攻擊。" + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"冰錐",
         "desc":"高階的單體冰元素攻擊。" + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"絕寒冰峰",
         "desc":"強力的單體冰元素攻擊。" + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"熔岩",
         "desc":"高階的單體火元素攻擊。" + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"火山爆發",
         "desc":"強力的單體火元素攻擊。" + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"毒刺",
         "desc":"基礎的單體毒元素攻擊。" + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"毒藤蔓生",
         "desc":"強力的單體毒元素攻擊。" + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"旋風斬",
         "desc":"能多次攻擊全體敵人的強力攻擊。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"偷竊",
         "desc":"從單體敵人身上偷竊物品。技能等級越高，能偷竊的物品越好。" + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"傳奇",
         "desc":"能多次攻擊單體敵人的非常強力的攻擊。" + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"光刃",
         "desc":"高階的單體聖元素攻擊。"
      };
      
      public static var holysword:Object = {
         "name":"聖劍",
         "desc":"強力的單體聖元素攻擊。" + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"潛能釋放",
         "desc":"能解放武器潛力的攻擊。" + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"快斬",
         "desc":"命中率非常高的單體攻擊。" + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"磨刃待發",
         "desc":"強化單體隊友的攻擊，並且賦予勇敢狀態。" + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"復仇之怒",
         "desc":"潛在威力強大的單體攻擊。馬特的HP越低，以及戰鬥不能的隊友數量越多，攻擊力越高。下面顯示的數字是它所能達到的最強威力。" + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"闊刃連斬",
         "desc":LIMIT_BREAK + "以極為強大的劍法連續攻擊單體敵人。" + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"諸神黄昏",
         "desc":LIMIT_BREAK + "造成極其強大的無元素全體物理傷害，然後強化所有隊友的攻擊並賦予勇敢，對後備隊員也有效果。" + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"普通攻擊",
         "desc":"使用法杖對單體敵人進行物理攻擊，並釋放武器中的魔力。" + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"潔淨",
         "desc":"治療單體隊友的屬性弱化以及負面狀態，並且賦予祝福狀態。"
      };
      
      public static var luckystar:Object = {
         "name":"幸運星",
         "desc":"基礎的單體無元素魔法。傷害變動非常高。" + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"流星雨",
         "desc":"強力的全體無元素魔法。傷害變動非常高。" + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"星之力",
         "desc":"強化單體隊友的魔攻，並且賦予好運狀態。" + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"劇毒",
         "desc":"基礎的單體毒元素魔法，可能令目標陷入猛毒。"
      };
      
      public static var fireball:Object = {
         "name":"火術",
         "desc":"基礎的單體火元素魔法。" + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"火球",
         "desc":"高階的單體火元素魔法。" + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"火焰風暴",
         "desc":"強力的全體火元素魔法。" + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"雷術",
         "desc":"基礎的單體雷元素魔法。" + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"雷電",
         "desc":"高階的單體雷元素魔法。" + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"雷霆風暴",
         "desc":"強力的全體雷元素魔法。" + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"冰術",
         "desc":"基礎的單體冰元素魔法。" + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"冰礫",
         "desc":"高階的單體冰元素魔法。" + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"冰凍風暴",
         "desc":"強力的全體冰元素魔法。" + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"黑暗脈衝",
         "desc":"高階的單體暗元素魔法。" + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"脈衝新星",
         "desc":"強力的全體暗元素魔法。" + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"虹光術",
         "desc":"進階的單體魔法。" + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"彩虹爆破",
         "desc":"強力的全體魔法。" + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"聖光術",
         "desc":"進階的單體聖元素魔法。" + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"神聖審判",
         "desc":"強力的單體聖元素魔法，可以吸收目標的HP。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"靜默術",
         "desc":"封印單體敵人，令其無法使用魔法攻擊。" + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"封印",
         "desc":"封印全體敵人，令其無法使用魔法攻擊。也可以選擇對單體敵人進行強力封印。" + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"創世紀",
         "desc":LIMIT_BREAK + "造成極其強大的全體聖元素魔法傷害，並且復活所有隊友，或者賦予自動復活。\n • 對後備隊員也有效果。" + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"第七天堂",
         "desc":LIMIT_BREAK + "治療全體隊友的HP以及負面狀態，並且強化攻擊，魔攻，防禦，以及魔防。\n • 對後備隊員也有效果。\n • 賦予娜塔莉可愛狀態。"
      };
      
      public static var pistolwhip:Object = {
         "name":"普通攻擊",
         "desc":"使用槍對單體敵人進行物理屬性射擊兩次。" + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"狙擊",
         "desc":"擁有超高命中率的單體射擊。" + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"二連彈",
         "desc":"連續射擊單體敵人兩次的攻擊。" + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"彈無虛發",
         "desc":"連續射擊單體敵人六次的強力攻擊。" + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"火焰彈",
         "desc":"基礎的火元素單體射擊。" + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"火焰爆裂",
         "desc":"高階的火元素全體射擊。" + equips.DEBUFF_DEF + COOLDOWN_2 + ALTERNATIVE_ONE
      };
      
      public static var bullethell:Object = {
         "name":"火焰彈幕",
         "desc":"強力的火元素射擊對單體敵人造成集中傷害，並且對其他所有敵人造成1/3傷害。" + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"等離子彈",
         "desc":"基礎的雷元素單體射擊。" + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"等離子波",
         "desc":"高階的雷元素全體射擊。" + equips.DEBUFF_EVA + COOLDOWN_2 + ALTERNATIVE_ONE
      };
      
      public static var plasmafield:Object = {
         "name":"等離子力場",
         "desc":"強力的雷元素射擊對單體敵人造成集中傷害，並且對其他所有敵人造成1/3傷害。 " + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"暗影彈",
         "desc":"基礎的暗元素單體射擊。" + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"重力浪潮",
         "desc":"高階的暗元素全體射擊。" + equips.DEBUFF_MDEF + COOLDOWN_2 + ALTERNATIVE_ONE
      };
      
      public static var antimatterflux:Object = {
         "name":"反物質波動",
         "desc":"強力的暗元素射擊對單體敵人造成集中傷害，並且對其他所有敵人造成1/3傷害。" + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"毒氣瓦斯",
         "desc":"令全體敵人陷入猛毒，並且造成微量毒元素魔法傷害。" + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"炸彈",
         "desc":"用炸彈對單體敵人造成大量爆元素魔法傷害。" + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"空襲",
         "desc":"用炸彈對全體敵人造成大量爆元素魔法傷害。" + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"炸彈之母",
         "desc":"用炸彈對全體敵人造成極大爆元素魔法傷害。冷卻時間非常長。" + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"救援包",
         "desc":"治療單體隊友的HP以及負面狀態。" + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"空投救援",
         "desc":"治療全體隊友的HP以及負面狀態。" + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"機槍掃射",
         "desc":"對全體敵人造成連續爆元素傷害。" + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"潰甲",
         "desc":"對單體敵人近身攻擊，並且驅散目標。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"破壞光線",
         "desc":"需要使用兩次：第一次蓄力，第二次攻擊。對全體敵人造成極大魔法傷害。" + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"核彈",
         "desc":LIMIT_BREAK + "造成極其強大的全體火元素魔法傷害，並且使所有敵我角色燃燒。" + HIGH_ACC + "\n • 五回合內將當前天氣替換成輻射。"
      };
      
      public static var oblivion:Object = {
         "name":"湮滅",
         "desc":LIMIT_BREAK + "造成極其強大的全體爆元素物理傷害。這也會摧毁一輛蘭斯的坦克，但他還有不少備用的。" + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"普通攻擊",
         "desc":"拿出弓箭砍擊單體敵人。" + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"長弓打擊",
         "desc":"把弓作為鈍器毆打單體敵人，試圖迫使它投降。對強敵也有效果。" + WEP_EFFECTS + "\n • 這技能不會殺死敵人。"
      };
      
      public static var gust:Object = {
         "name":"疾風",
         "desc":"基礎的單體風元素魔法。" + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"旋風",
         "desc":"進階的單體風元素魔法。" + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"颶風",
         "desc":"強力的全體風元素魔法。" + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"木樁",
         "desc":"基礎的單體土元素攻擊。" + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"連環木樁",
         "desc":"強力的單體土元素連續攻擊。" + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"葉刃",
         "desc":"簡單的單體毒元素二連擊。" + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"飛葉快刀",
         "desc":"強力的全體毒元素連續攻擊。" + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"聖魂箭",
         "desc":"高階的單體聖元素攻擊。" + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"寒冰箭",
         "desc":"高階的單體冰元素攻擊。" + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"水流箭",
         "desc":"高階的單體水元素攻擊。" + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"硝彈箭",
         "desc":"高階的單體爆元素攻擊。" + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"電弧箭",
         "desc":"高階的單體雷元素攻擊。" + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"聖魂連射",
         "desc":"強力的聖元素攻擊。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"寒冰連降",
         "desc":"強力的冰元素攻擊。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"水流連擊",
         "desc":"強力的水元素攻擊。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"硝彈連襲",
         "desc":"強力的爆元素攻擊。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"電弧連落",
         "desc":"強力的雷元素攻擊。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"穿刺射擊",
         "desc":"超高命中的攻擊。" + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"連續射擊",
         "desc":"以多重箭作出強力並且精準的攻擊。" + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"箭雨",
         "desc":"連續射擊全體敵人。" + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"復原",
         "desc":"簡單的單體治療魔法。"
      };
      
      public static var remedy:Object = {
         "name":"提振",
         "desc":"進階的單體治療魔法；能賦予祝福狀態。"
      };
      
      public static var motherearth:Object = {
         "name":"大地之母",
         "desc":LIMIT_BREAK + "造成極其強力的全體毒元素魔法傷害，並且使所有目標中毒。\n • 賦予所有隊友祝福狀態，對後備隊員也有效果。" + HIGH_ACC + "\n • 五回合內讓當前天氣明澈。"
      };
      
      public static var mightyoak:Object = {
         "name":"橡木巨人",
         "desc":LIMIT_BREAK + "以多重攻擊造成極其強力的全體地元素物理傷害。" + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"普通攻擊",
         "desc":"快速地從背後襲擊單體敵人。" + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"擊劍",
         "desc":"基礎的單體物理四連擊。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"刃鋒突襲",
         "desc":"強力的單體物理十一連擊。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"迅斬",
         "desc":"超高速的全體物理斬擊。" + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"九命貓",
         "desc":"治療全體隊友，賦予自動復活狀態，並且復活戰鬥不能的隊友。冷卻時間非常長。" + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"群星爆閃",
         "desc":"對全體敵人造成無元素魔法傷害。冷卻時間非常長。" + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"跳躍攻擊",
         "desc":"基礎的物理攻擊。" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"劍舞",
         "desc":"進階的物理攻擊。" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"終極斬擊",
         "desc":"強力的物理攻擊。" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"影擊",
         "desc":"進階的暗元素攻擊。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"暮光探戈",
         "desc":"強力的暗元素攻擊。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"聖擊",
         "desc":"進階的聖元素攻擊。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"神罰裂斬",
         "desc":"強力的聖元素攻擊。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"雷擊",
         "desc":"進階的雷元素攻擊。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"霹靂不羈",
         "desc":"強力的雷元素攻擊。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"風擊",
         "desc":"高階的風元素攻擊。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"龍捲狂怒",
         "desc":"強力的風元素攻擊。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"泡擊",
         "desc":"高階的水元素攻擊。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"水靈旋風",
         "desc":"強力的水元素攻擊。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"壽司貓",
         "desc":"蹦跳著攻擊三個隨機敵人，並且治療所受傷害最高的兩名隊友。" + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"壽司貓咪！",
         "desc":"蹦跳著攻擊三個隨機敵人，並且治療所受傷害最高的兩名隊友。\n • 賦予被治療的隊友好運狀態。" + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"狂暴",
         "desc":"使單體隊友或者敵人陷入狂暴，令其不受控制地使出強大的攻擊。" + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"憤怒力量",
         "desc":"使全體隊友陷入狂暴。也可以選擇讓單體隊友或者敵人陷入更有效的狂暴。" + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"珍視",
         "desc":"讓單體隊友變得可愛，使其不會被敵人的單體攻擊瞄準。 " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"愛之光環",
         "desc":"讓全體隊友變得可愛。也可以選擇讓單體隊友變得更可愛。" + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"創世者",
         "desc":LIMIT_BREAK + "造成極其強力的全體聖元素魔法傷害。 \n • 賦予全體隊友好運狀態，對後備隊員也有效果。" + HIGH_ACC + "\n • 五回合内使當前天氣明澈."
      };
      
      public static var thedestroyer:Object = {
         "name":"毁滅者",
         "desc":LIMIT_BREAK + "以多重攻擊造成極其強力的全體暗元素物理傷害。" + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"雪兔",
         "desc":"全體冰元素魔法。" + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"雪貓",
         "desc":"強力的全體冰元素魔法，可以搭配其他技能讓敵人冰凍。" + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"藤蔓",
         "desc":"單體毒元素攻擊。" + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"荊棘",
         "desc":"強力的單體毒元素多次攻擊。" + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"能量術",
         "desc":"基礎的單體爆元素魔法。" + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"能量手雷",
         "desc":"高階的單體爆元素魔法。" + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"能量爆裂",
         "desc":"強力的全體爆元素魔法。" + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"泡術",
         "desc":"基礎的單體水元素魔法。" + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"渦流",
         "desc":"進階的單體水元素魔法。" + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"泡沫衝擊",
         "desc":"強力的全體水元素魔法。" + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"電震",
         "desc":"高階的單體雷元素攻擊。" + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"電湧",
         "desc":"強力的單體雷元素攻擊。" + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"子彈Bob",
         "desc":"高階的單體爆元素攻擊。" + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"巨彈",
         "desc":"強力的單體爆元素攻擊。" + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"強風",
         "desc":"高階的單體風元素攻擊。" + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"暴風",
         "desc":"強力的單體風元素攻擊。" + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"力量金屬",
         "desc":"對全體敵人造成風元素魔法傷害，並且治療全體隊友。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"波動",
         "desc":"基礎的單體風元素魔法。" + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"氣動波",
         "desc":"高階的單體風元素魔法。" + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"衝擊波",
         "desc":"強力的全體風元素魔法。" + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"鋸刃",
         "desc":"高階的單體無元素攻擊。" + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"碎刃",
         "desc":"強力的全體無元素攻擊。" + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"大地播種",
         "desc":"基礎的單體地元素攻擊。" + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"大地新芽",
         "desc":"高階的單體地元素攻擊。" + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"大地綻放",
         "desc":"強力的全體地元素魔法。" + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"火焰漩渦",
         "desc":"強力的全體火元素魔法。" + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"淨化之焰",
         "desc":"能驅散目標以及弱化其魔攻的單體聖元素魔法。" + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"恐怖尖叫",
         "desc":"造成全體暗元素魔法傷害，並且弱化目標的攻擊。" + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"治療",
         "desc":"簡單的單體治療魔法。" + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"多重治療",
         "desc":"強力的全體治療魔法。也可以選擇讓單體隊友受到更強的治療。" + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"復活",
         "desc":"讓單體戰鬥不能的隊友復活，或者賦予單體還站著的隊友自動復活。"
      };
      
      public static var purify:Object = {
         "name":"淨化",
         "desc":"治療全體隊友或者全體敵人的負面狀態。不包括潮濕或者乾燥等中性狀態。" + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"鎖定",
         "desc":"強化單體隊友的命中，並且賦予好運狀態。 " + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"守護",
         "desc":"強化所有隊友的防禦，包括後備的隊友。" + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"屏障",
         "desc":"強化所有隊友的魔防，包括後備的隊友。" + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"輕盈",
         "desc":"強化所有隊友的回避，包括後備的隊友，並且治療前衛隊友的雾罩狀態。" + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"聖盾",
         "desc":"強化單體隊友的防禦與魔防。" + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"驅散",
         "desc":"驅散全體敵人的屬性強化及良性狀態。也可以選擇驅散所有隊友的屬性弱化。" + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"閃光",
         "desc":"弱化全體敵人的命中。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"束縛",
         "desc":"弱化全體敵人的回避。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"削弱",
         "desc":"弱化所有敵人的防禦。" + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"脆弱",
         "desc":"弱化所有敵人的魔防。" + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"巨鑽爆擊",
         "desc":"強力的地元素單體攻擊。如果目標有防禦或魔防強化，或者正在防禦，傷害將顯著提高。" + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"安可！",
         "desc":"讓單體隊友能行動兩次。對自己使用此技能是毫無意義的。" + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"鞭炮炸裂",
         "desc":"給予全體敵人壞運，並賦予全體隊友好運。包含後備隊員。" + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"絕對零度",
         "desc":LIMIT_BREAK + "造成強力的全體冰元素魔法傷害，弱化目標的回避，並且凍結它們。\n • 清除所有隊友的技能冷卻。" + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"滂沱海嘯",
         "desc":LIMIT_BREAK + "造成極其強力的全體水元素物理或魔法傷害，並且使目標潮濕。\n • 傷害類型取決於攻擊於魔攻和攻擊較高的屬性。" + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"超新星",
         "desc":LIMIT_BREAK + "對敵我方造成極其強力的全體火元素魔法傷害，並且使目標燃燒。\n • 絕對無法被回避。"
      };
      
      public static var deathmetal:Object = {
         "name":"死亡金屬",
         "desc":LIMIT_BREAK + "造成極其強大的風元素魔法傷害，並且治療及賦予全體隊友高昂狀態，對後備隊員也有效果。" + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"殲滅·絕",
         "desc":LIMIT_BREAK + "很高即死機率的全體攻擊。對頭目效果不佳，並且命中率較低。"
      };
      
      public static var ion:Object = {
         "name":"離子砲",
         "desc":LIMIT_BREAK + "造成極其強大的雷元素傷害，並且使目標麻痹。\n • 賦予蘭斯蓄力狀態。" + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"黑洞",
         "desc":LIMIT_BREAK + "造成極其強大的暗元素傷害，並且使目標變重。施術者會戰鬥不能。" + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"覺醒之力",
         "desc":LIMIT_BREAK + "造成極其強大的物理或魔法傷害。\n • 傷害類型取決於攻擊於魔攻和攻擊較高的屬性。" + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "骨襲";
      
      public static var bonestar:String = "骨之星";
      
      public static var groundblade:String = "不死之刃";
      
      public static var fallingstar:String = "隕星";
      
      public static var firerock:String = "火石";
      
      public static var stalactite:String = "鐘乳石";
      
      public static var stalactite2:String = "鐘乳石群";
      
      public static var fume:String = "火焰爆裂";
      
      public static var eruption:String = "火山爆發";
      
      public static var scald:String = "沸水爆發";
      
      public static var rain:String = "驟雨";
      
      public static var sandstorm:String = "沙塵暴";
      
      public static var hail:String = "冰雹";
      
      public static var nitro:String = "硝火燃燒";
      
      public static var acid:String = "酸腐蝕";
      
      public static var bamboo:String = "竹擊";
      
      public static var bamboo2:String = "竹陷阱";
      
      public static var bluebolt:String = "藍光霹靂";
      
      public static var deepfreeze:String = "極度嚴寒";
      
      public static var wafer:String = "威化冰淇淋";
      
      public static var present:String = "驚喜禮物";
      
      public static var plasmacage:String = "電漿禁錮";
      
      public static var tankcannon:String = "坦克主炮";
      
      public static var candycanes:String = "拐杖糖攻擊";
      
      public static var bonefish:String = "骷髏魚";
      
      public static var riceball:String = "飯糰炸彈";
      
      public static var mushroom:String = "蘑菇攻擊";
      
      public static var lifedrain:String = "生命吸取";
      
      public static var smokepuff:String = "噴煙";
      
      public static var confusion:String = "混亂";
      
      public static var ink:String = "噴墨攻擊";
      
      public static var chocolate:String = "巧克力團";
      
      public static var tentacles:String = "觸手攻擊";
      
      public static var slowdown:String = "減速";
      
      public static var speedup:String = "加速";
      
      public static var poisonroot:String = "中毒根擊";
      
      public static var burningroot:String = "燃燒根擊";
      
      public static var searoot:String = "海洋根擊";
      
      public static var bombblast:String = "爆裂彈";
      
      public static var bigblast:String = "巨型爆裂";
      
      public static var cactus:String = "仙人掌";
      
      public static var cacti:String = "仙人掌群";
      
      public static var spark:String = "電霆火花";
      
      public static var bigspark:String = "雷霆萬鈞";
      
      public static var talisman:String = "護符封印";
      
      public static var ember:String = "小火苗";
      
      public static var fireblast2:String = "火焰爆裂";
      
      public static var firecrystals:String = "火水晶";
      
      public static var zephyrcrystals:String = "風水晶";
      
      public static var frost:String = "突襲寒冰";
      
      public static var rockslide:String = "山崩";
      
      public static var avalanche:String = "雪崩";
      
      public static var blackspikes:String = "極黑釘刺";
      
      public static var stonefist:String = "石頭拳";
      
      public static var spiderweb:String = "蜘蛛網";
      
      public static var spiders:String = "蜘蛛群襲";
      
      public static var geometry2:String = "空間歪曲";
      
      public static var geometry3:String = "歪曲力場";
      
      public static var sacrifice:String = "犧牲";
      
      public static var bigroot:String = "壯實根莖";
      
      public static var seabomb:String = "深水炸彈";
      
      public static var fairy:String = "精靈炸彈";
      
      public static var fly:String = "蒼蠅炸彈";
      
      public static var starpunch:String = "流星爆拳";
      
      public static var darken:String = "隱身化";
      
      public static var lighten:String = "魔隱化";
      
      public static var SlimeChocolate:String = "朝單體敵人吐巧克力，造成地元素物理傷害並且弱化命中。";
      
      public static var SlimeIcecream:String = "使用能造成寒冷的單體冰元素魔法。";
      
      public static var SlimeSand:String = "使用能造成麻痹的單體毒元素魔法。";
      
      public static var SlimeLava:String = "使用能造成乾燥的單體火元素魔法。";
      
      public static var SlimeMouse:String = "使用能高精確地造成麻痹的單體低傷害雷元素魔法。";
      
      public static var SlimeWater:String = "使用傷害力低得可憐的單體水元素魔法。";
      
      public static var SlimeMud:String = "使用基礎的單體毒元素魔法。";
      
      public static var SlimeBunny:String = "賦予全體隊友再生狀態，包括後備的隊友。此狀態下隊友會每回合恢復HP。";
      
      public static var SpriteFire:String = "五回合內將當前天氣替換成燃灰。";
      
      public static var SpriteIce:String = "五回合內將當前天氣替換成暴風雪。";
      
      public static var SpriteThunder:String = "五回合內將當前天氣替換成電氣。";
      
      public static var SpriteRock:String = "五回合內將當前天氣替換成地震。";
      
      public static var SpriteWind:String = "五回合內將當前天氣替換成風暴。";
      
      public static var ChomperLeafy:String = "五回合內將當前天氣替換成微風。。";
      
      public static var ChomperSeaweed:String = "五回合內將當前天氣替換成下雨。";
      
      public static var ChomperMagma:String = "五回合內將當前天氣替換成晴朗。";
      
      public static var ChomperMutant:String = "五回合內將當前天氣替換成酸雨。.";
      
      public static var CreepThorny:String = "以進階的地元素攻擊刺向對方。有可能造成麻痹。";
      
      public static var CreepIcicle:String = "以進階的冰元素攻擊刺向對方。有可能造成寒冷。";
      
      public static var CreepHermit:String = "以進階的無元素攻擊斬向對方。";
      
      public static var CreepGreen:String = "以強力的無元素攻擊撞向敵人三次。" + RETARGETS_2;
      
      public static var CreepRed:String = "以強力的風元素攻擊撞向敵人，有可能造成震驚。";
      
      public static var CreepBlue:String = "造成強力的爆炸，有可能造成麻痹。";
      
      public static var Defender1:String = "讓強力的雷鳴轟炸全體敵人。有可能造成震驚。";
      
      public static var Defender2:String = "讓強力的水流炸裂單體敵人。有可能造成潮濕。";
      
      public static var DogFriend:String = "賦予全體隊友可愛狀態，讓敵人不忍心直接攻擊。";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "使用單體火元素的撲擊，有可能造成燃燒。";
      
      public static var DogWolf:String = "使用單體冰元素的撲擊，有可能造成冰凍。";
      
      public static var DogZap:String = "使用全體雷元素的撲擊，有可能造成麻痺。";
      
      public static var DogMage:String = "使用邪惡的全體聖元素魔法，有可能造成詛咒。";
      
      public static var ChibiKnightUltra:String = "強化全體隊友的攻擊，包括後備的隊友，然後連續數次攻擊單體敵人。" + RETARGETS_2;
      
      public static var BushGreen:String = "對全體敵人尖叫，稍微弱化它們的攻擊。";
      
      public static var BushRed:String = "對全體敵人尖叫，稍微弱化它們的防禦。";
      
      public static var BushDark:String = "對全體敵人發出嘶嘶聲，稍微弱化它們的回避。";
      
      public static var BushMud:String = "對全體敵人尖叫，稍微弱化它們的魔攻。";
      
      public static var BushSand:String = "對全體敵人發出嘶嘶聲，稍微弱化它們的魔防。";
      
      public static var GolemTopaz:String = "連續使出強力的雷元素砸擊，有可能造成麻痹。";
      
      public static var GolemPearl:String = "用強力的冰元素魔法使全體敵人寒冷，並且五回合內將當前天氣替換成冰雹。";
      
      public static var GolemAmethyst:String = "連續使出強力的無元素砸擊，有可能造成震驚。";
      
      public static var FishSteam:String = "以超音速飛行撞向全體敵人，使它們變輕。";
      
      public static var FishGold:String = "使用聖元素的魔法光線照射全體敵人，有可能造成乾燥。";
      
      public static var FishJet:String = "對全體敵人連射子彈，造成簡單爆元素傷害。";
      
      public static var HandSkeleton:String = "賦予全體隊友好運狀態，包括後備的隊友。此狀態下的隊友和機率有關的行動的成功機率將會提升。";
      
      public static var HandZombie:String = "使全體敵人陷入殒滅，詛咒它們在三回合後戰鬥不能。";
      
      public static var HandMagma:String = "賦予全體隊友狂暴狀態。此狀態下的隊友將會不受控制地攻擊，但是攻擊力會增加。";
      
      public static var FlybotBlue:String = "反轉全體隊友的屬性變動。弱化將變成強化，反之亦然。";
      
      public static var FlybotYellow:String = "反轉全體敵人的屬性變動。弱化將變成強化，反之亦然。";
      
      public static var FlybotRed:String = "反轉單體隊友或敵人的屬性變動。弱化將變成強化，反之亦然。";
      
      public static var FallenLost:String = "以風元素攻擊斬向單體敵人，並且賦予所有隊友高昂狀態，包括後備的隊友。";
      
      public static var FallenCrucified:String = "向單體敵人使出聖元素斬擊，有可能造成即死。";
      
      public static var FallenDrowned:String = "優雅地驅散全體隊友的屬性弱化。";
      
      public static var FallenBurned:String = "用強力的火元素魔法使全體敵人乾燥，並且五回合內將當前天氣替換成沙暴。";
      
      public static var FallenBeheaded:String = "以暗元素攻擊刺向單體敵人，並且賦予所有隊友勇敢狀態，包括後備的隊友。";
      
      public static var PixelSlime:String = "對單體敵人使用非常弱的毒元素魔法，造成強力的疲勞。";
      
      public static var PixelBush:String = "對單體敵人使用非常弱的火元素魔法，造成強力的乾燥。";
      
      public static var PixelBat:String = "對單體敵人使用非常弱的暗元素魔法，造成強力的厄運。";
      
      public static var PixelIdol:String = "對單體敵人使用非常弱的爆元素攻擊，造成強力的虛弱。";
      
      public static var MonolithViking:String = "賦予全體隊友急速狀態，也就是說讓所有人各自多行動一次。";
      
      public static var MonolithAncient:String = "賦予全體隊友自保狀態，使本回合內受到的傷害驟減。";
      
      public static var MonolithCosmic:String = "以強烈的暗魔法轟炸整個戰場，來攻擊全體敵人。";
      
      public static var IdolGem:String = "賦予全體隊友變輕狀態，包括後備的隊友。此狀態下的隊友所受的地元素傷害會減少。";
      
      public static var IdolStone:String = "賦予全體隊友乾燥狀態，包括後備的隊友。此狀態下的隊友所受的冰與雷元素傷害會減少。";
      
      public static var IdolMetal:String = "賦予全體隊友變重狀態，包括後備的隊友。此狀態下的隊友所受的風元素傷害會減少。";
      
      public static var IdolWood:String = "賦予全體隊友祝福狀態，包括後備的隊友。此狀態下的隊友不會受到狀態異常。";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "賦予全體隊友魔隱狀態。此狀態下的隊友免疫魔法傷害，但是會受到雙倍物理傷害。";
      
      public static var MirrorDemon:String = "賦予全體隊友隱身狀態。此狀態下的隊友免疫物理傷害，但是會受到雙倍魔法傷害。";
      
      public static var MirrorHaunted:String = "以強力的暗元素攻擊撕咬單體敵人，有可能造成詛咒。";
      
      public static var MammothWooly:String = "以無元素重創單體敵人，並且其他敵人也會承受1/3的傷害。" + equips.MAY_STUN;
      
      public static var MammothCamel:String = "強化全體隊友的魔防，包括後備的隊友，然後使用全體地元素攻擊。";
      
      public static var MammothWar:String = "強化全體隊友的防禦，包括後備的隊友，然後使用全體爆元素魔法爆炸。" + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "對單體敵人吐墨造成極為強大的暗元素魔法傷害，有可能弱化命中，並且附加隱身狀態。";
      
      public static var SquidPurple:String = "弱化全體敵人的命中，並且附加殞滅狀態。";
      
      public static var SquidLime:String = "以強力的雷元素刺向所有敵人，並且一定會麻痹。";
      
      public static var Underlegs:String = "驅散全體敵人，然後以大雪紛飛之勢連續使出無元素攻擊。";
      
      public static var SlimeBigSand:String = "對單體敵人使出強大的毒元素攻擊,可能麻痺對方。";
      
      public static var SlimeBigLava:String = "對單體敵人使出強大的火元素攻擊,可能造成對方劇烈燃燒。";
      
      public static var SlimeBigMud:String = "使出毒元素蘑菇進行全體攻擊。飛舞的孢子能造成麻痹。";
      
      public static var SlimeBigIcecream:String = "使出低傷害的冰魔法讓所有敵人寒冷，藉以提升它們所受的水與冰元素傷害。";
      
      public static var SlimeBigChocolate:String = "對全體敵人嘔吐巧克力，造成地屬性魔法傷害並且使它們受到變重效果。";
      
      public static var WormPutrid:String = "對單體敵人使出低傷害無元素的織網且大幅弱化敵方回避。";
      
      public static var WormScaly:String = "賦予全體隊友潮濕狀態，包括後備的隊友。此狀態下的隊友所受的火元素傷害會減少。";
      
      public static var WormFuzzy:String = "對單體敵人使出低傷害無元素的啃咬並讓目標受到病毒感染。";
      
      public static var WormCutie:String = "治療全體隊友的中性狀態，包括潮濕，寒冷，乾燥，變重，變輕，魔隱，以及隱身。";
      
      public static var WraithIce:String = "以冰錐刺穿單體敵人的心臟，有可能造成即死。";
      
      public static var WraithFire:String = "以地獄之火的魔法攻擊單體敵人，令其陷入狂暴。\n • 最好不要讓目標被這個召喚攻擊後還存活。";
      
      public static var WraithSteel:String = "對單體敵人連續使出爆元素攻擊，有可能造成震驚並且弱化防禦。";
      
      public static var WraithLeaf:String = "對單體敵人連續使出毒元素攻擊，有可能造成中毒並且弱化魔防。";
      
      public static var WraithMaster:String = "使出能強烈封印單體敵人的暗元素魔法。";
      
      public static var Glitch2:String = "???-?eII物品未找到！### \nERROR: 0x000002";
      
      public static var Glitch1:String = "??-//警 告 ： 揭 開 此 封 印 不 予 保 固 ！ ！0?-//??";
      
      public static var GloopStone:String = "令單體敵人隱身，使其受到的魔法傷害加倍。";
      
      public static var GloopCrystal:String = "令單體敵人魔隱，使其受到的物理傷害加倍。";
      
      public static var GloopAsh:String = "賦予全體隊友勇敢狀態，包括後備的隊友。此狀態下的隊友爆擊機率將會提升。";
      
      public static var GloopWood:String = "賦予全體隊友高昂狀態，包括後備的隊友。此狀態下的隊友能在HP較高的狀况下保證能撐過一次攻擊。";
      
      public static var HydraZombie:String = "試圖讓全體敵人即死。如果失敗，就只造成一點暗元素物理傷害。";
      
      public static var HydraMagma:String = "以強力的火元素魔法砸向全體敵人，有可能造成燃燒。";
      
      public static var HydraIce:String = "連續撕咬單體敵人，造成極為強大的冰元素物理傷害。";
      
      public static var DragonEarth:String = "弱化全體敵人的魔防，然後吐出強酸使對方造成毒元素魔法傷害。";
      
      public static var DragonSky:String = "弱化全體敵人的防禦，然後以羽毛颶風攻擊對方，造成風元素物理傷害。";
      
      public static var DragonSea:String = "弱化全體敵人的攻擊，然後以極為強大的水魔法攻擊對方，並且能造成潮濕。";
      
      public static var DragonOmega:String = "弱化全體敵人的魔攻，然後以大規模的聖元素魔法轟炸對方，並且能造成麻痹。";
      
      public static var BatBlood:String = "用簡單的毒元素攻擊吸取目標的HP返還給召喚者。";
      
      public static var BatSnow:String = "賦予全體隊友寒冷狀態，包括後備的隊友。此狀態下的隊友所受的毒元素傷害會減少。";
      
      public static var BatThunder:String = "賦予全體隊伍時效很長的混亂狀態；簡單來說就是自動戰鬥。\n • 最好别在跟頭目對戰中用這個。";
      
      public static var BatBone:String = "讓全體隊友被病毒感染，即使有抗性也無法倖免。";
      
      public static var BearBrown:String = "使用單體無元素攻擊。傷害隨召喚者失去的HP以及戰鬥不能的隊友數增加。\n • 最高威力是1000。";
      
      public static var BearGrolar:String = "以雪崩般的冰元素痛揍全體敵人，有可能造成冰凍。";
      
      public static var BearPanda:String = "連續對全體敵人射出毒元素攻擊，有可能造成中毒。";
      
      public static var BitIce:String = "使出屏障魔法，強化全體隊友的魔防，包括後備的隊友。";
      
      public static var BitThunder:String = "使出守護魔法，強化全體隊友的防禦，包括後備的隊友。 ";
      
      public static var BitHoly:String = "使出強力的治療魔法，為全體隊友回復HP。";
      
      public static var BitFire:String = "以火元素襲擊單體敵人，弱化目標的攻擊，並且能造成燃燒。";
      
      public static var BitWind:String = "以風元素衝襲單體敵人，弱化目標的魔防，並且能造成麻痹。";
      
      public static var BitWater:String = "以低傷害水元素魔法潑向全體敵人，試圖造成潮濕，藉以提升對方所受的雷與冰傷害。";
      
      public static var BitPoison:String = "以低傷害毒元素魔法浸害全體敵人，試圖造成中毒，藉以每回合自動造成傷害。";
      
      public static var BoulderCoral:String = "以水元素攻擊撲向單體敵人，有可能造成震驚。";
      
      public static var BoulderMarble:String = "以風魔法攻擊全體敵人，有可能造成強烈封印。";
      
      public static var BoulderObsidian:String = "以d20攻擊全體敵人，造成上下限差距非常高的火元素傷害，並且能造成燃燒。";
      
      public static var BoulderDirt:String = "對全體敵人造成地元素物理傷害，並且能造成疲勞。";
      
      public static var BoulderSandstone:String = "撲向單體敵人，造成極為強大的地元素物理傷害。";
      
      public static var CatNinja:String = "給予單體隊友額外一回合行動。";
      
      public static var CatSniper:String = "直接對著單體敵人的臉射擊，運氣好的話能造成即死。";
      
      public static var CatWizard:String = "使出簡易的治療魔法，回復單體隊友的HP。";
      
      public static var CatBomber:String = "向單體敵人扔炸彈，造成魔法傷害以及震驚。";
      
      public static var CatWarrior:String = "向單體敵人使出連續無元素斬擊。";
      
      public static var DollMatt:String = "大幅強化單體隊友的攻擊，並且賦予祝福狀態。";
      
      public static var DollNatalie:String = "大幅強化單體隊友的魔法，並且賦予高昂狀態。";
      
      public static var DollLance:String = "向全體敵人使用高威力的爆元素魔法，有可能造成震驚。";
      
      public static var DollAnna:String = "向單體敵人射出毒元素的箭。對有防禦或魔防強化，或是自保的敵人，傷害會增加。";
      
      public static var DollNoLegs:String = "向全體敵人發出鬼魂般的喵聲，弱化對方的回避，並且能造成厄運。";
      
      public static var BossCyclopsDesert:String = "向對方造成多次極強的爆元素魔法傷害，並且能造成麻痹。";
      
      public static var BossCyclopsGlacial:String = "向單體敵人使用多次強力的冰元素碎擊，並且其他敵人也會受到1/3傷害。\n • 能對所有敵人造成冰凍。";
      
      public static var BossCyclopsInfernal:String = "向單體敵人使用多次強力的火元素重擊，並且其他敵人也會受到1/3傷害。\n • 能對所有敵人造成燃燒。";
      
      public static var BossGolemWater:String = "以非常強力的水元素重擊全體敵人，並且能造成潮濕。";
      
      public static var BossGolemFire:String = "以非常強力的火元素轟炸全體敵人，並且能造成燃燒。";
      
      public static var BossNestCat:String = "強化全體隊友的魔攻，包括後備的隊友，然後連續使出毒元素斬擊全體敵人。";
      
      public static var BossNestNinja:String = "對全體敵人使用非常強力的暗元素魔法，有可能造成詛咒。";
      
      public static var EvilMatt:String = "逐次對全體敵人施放極其強力的地元素攻擊。" + HIGH_CRITS;
      
      public static var EvilNatalie:String = "逐次對全體敵人施放極其強力的聖元素魔法。" + HIGH_CRITS;
      
      public static var EvilLance:String = "逐次對全體敵人施放極其強力的爆元素魔法。" + HIGH_CRITS;
      
      public static var EvilAnna:String = "逐次對全體敵人施放極其強力的風元素攻擊。" + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "用全宇宙最強大的魔法造成無與倫比的全體無元素傷害。";
      
      public static var WraithOrigami:String = "對單體敵人使出無元素切碎攻擊，並造成驅散";
      
      public static var GloopFab:String = "五回合內讓當前天氣替換成櫻花雨";
      
      public static var CatSkeleton:String = "背刺單體敵人，造成暗元素物理傷害，並造成最大層數的厄運。";
      
      public static var HydraOrigami:String = "對全體敵人施展無元素的紙劍攻擊，並強化所有隊友的迴避，也包括後備的隊友。";
      
      public static var Defender3:String = "用強大的衝擊波轟擊全體敵人，造成暗元素物理傷害。 \n • 攻擊總是暴擊。";
      
      public static var BearBlack:String = "劃過單體敵人，造成火元素物理傷害，並造成最大層數的乾燥。";
      
      public static var GolemBone:String = "對全體敵人施展強大無元素的貫串攻擊，可能造成虛弱。";
      
      public static var WormBook:String = "強化目前場上隊友的命中。";
      
      public static var BossGigalith:String = "用強大的無元素轟擊全體敵人，並造成嚴重灼傷，隨時間降低最大HP。";
      
      public static var BossDevourer:String = "刪除當前模擬成果。";
      
      public static var SketchPapalotl:String = "刺擊全體敵人並造成極為強大的無元素物理攻擊，並完全無視防禦性增益效果。（但減益效果則否）";
      
      public static var SketchGuncat:String = "轟擊全體敵人造成極為強大的爆元素傷害，為半物理跟半魔法攻擊，並完全無視防禦性增益效果。（但減益效果則否）";
      
      public static var SketchXolotl:String = "攻擊全體敵人並造成無元素的物理傷害，且造成虛弱，並無視防禦性增益效果。（但減益效果則否）";
      
      public static var SketchGlaurung:String = "對全體敵人造成風元素魔法傷害，且造成驅散，並無視防禦性增益效果。（但減益效果則否）";
      
      public static var ArcadeGuoye:String = "大幅強化目前場上隊友的命中。";
      
      public static var ArcadeTotom:String = "完全治療目前場上隊友，並移除任何負面狀態效果。";
      
      public static var ArcadeChair:String = "大幅弱化敵方魔攻，並造成一些爆元素的魔法傷害。";
      
      public static var ArcadePumpkus:String = "正常來講它不會做甚麼事，但是在該回合召喚兩次或以上時就會讓它憤怒，並對隨機敵人造成極為強大的物理傷害。";
      
      public static var ArcadeGlob:String = "將牠的惡臭氣息宣洩在單體敵人上，並依照順序造成驅散、疲憊、詛咒、虛弱、厄運跟壟罩。也造成無元素魔法傷害。";
      
      public static var ArcadeSnek:String = "啃咬單體敵人，造成無元素物理傷害，並賦予最大層數的燃燒跟中毒。";
      
      public static var ArcadeRobo:String = "轟擊單體敵人造成雷元素魔法傷害，造成麻痺，並大幅弱化命中。";
      
      public static var ArcadeBosh:String = "大幅弱化所有敵人的攻擊。";
      
      public static var ArcadeTreagure:String = "對隨機敵人造成隨機元素傷害，並造成隨機狀態效果。 \n • 包括冰凍、灼傷、麻痺、封印、震驚、殞滅跟厄運。";
      
      public static var ArcadePhoenix:String = "復活所有場上的隊友，如果他們本來就活著便賦予自動復活狀態。";
      
      public static var ArcadeMermaid:String = "大幅強化所有隊友的迴避，對後備隊員也有效果。";
      
      public static var ArcadeMaw:String = "用致命病毒感染所有敵人，並造成毒元素的魔法傷害。";
      
      public static var ClassicSlime:String = "用弱到爆的無元素傷害去攻擊單體敵人。";
      
      public static var ClassicSlimeKing:String = "施展強力的治療咒語，治療所有隊友，對後備隊員也有效果。 \n • 也移除負面狀態效果。";
      
      public static var ClassicTree:String = "對全體敵人造成極微弱的毒元素傷害，且可能造成短暫麻痺。";
      
      public static var ClassicEyeball:String = "直接用無元素的魔法傷害攻擊全體敵人。";
      
      public static var ClassicBeholder:String = "將其觸手纏住倒楣的單體受害者，造成毒元素的傷害，並使它嚴重中毒。";
      
      public static var ClassicWaspRed:String = "大幅弱化單體敵人的魔攻。";
      
      public static var ClassicWaspBlack:String = "大幅弱化單體敵人的攻擊。";
      
      public static var ClassicSandworm:String = "向全體敵人劇烈嘔吐，造成毒元素的魔法傷害，並弱化攻擊、魔攻、防禦及魔防。";
      
      public static var ClassicEaterIce:String = "充滿魔力的冰冷氣息擊中全體敵人。不會造成多大傷害，但有很高的機率冰凍目標。";
      
      public static var ClassicEaterFire:String = "充滿魔力的火熱氣息擊中全體敵人。並造成乾燥。";
      
      public static var ClassicClayBlue:String = "對單體敵人施展風元素的咒語，並賦予最大層數的變輕。";
      
      public static var ClassicClayRed:String = "對單體體人造成地元素的物理傷害，並賦予最大層數的變重。";
      
      public static var ClassicClayDark:String = "對單體敵人施展暗元素的咒語，造成殞滅，並弱化攻擊、魔攻、防禦及魔防。";
      
      public static var ClassicClayLight:String = "施展進階的治療咒語，治療所有隊友，對後備隊員也有效果。";
      
      public static var ClassicProtector:String = "強大又充滿魔力的雷電光束轟炸全體敵人。任何倖免的將被麻痺些許回合。";
      
      public static var ClassicSlingerGun:String = "試圖用強力的爆元素射擊單體敵人。\n • 命中機率皆為50%。\n • 忽視目標迴避及防禦性增益效果。";
      
      public static var ClassicSlingerSword:String = "試圖用強力的無元素刺擊單體敵人。\n • 命中機率皆為50%。\n • 忽視目標迴避及防禦性增益效果。";
      
      public static var ClassicPraetorian:String = "賦予目前場上隊友防禦狀態。之後攻擊全體敵人造成無元素傷害，有可能造成即死，並無視防禦性增益效果。（但減益效果則否）";
      
      public static var ClassicCrystalRed:String = "轟擊單體敵人造成火元素魔法傷害，並造成灼傷。";
      
      public static var ClassicCrystalBlue:String = "不會造成多大傷害，但有高到難以置信的機率冰凍目標許多回合。";
      
      public static var ClassicGigaGolem:String = "侵襲單體敵人造成極為強大的物理傷害，可能會是火或冰元素 - 完全是隨機的!";
      
      public static var ClassicRafflesia:String = "對全體敵人造成極為強大毒元素的物理傷害。";
      
      public static var ClassicJack:String = "大幅強化所有隊友的攻擊跟魔攻，對後備隊員也有效果。";
      
      public static var arcadePoison:String = "有毒泡泡";
      
      public static var arcadeNettle:String = "常春藤繞纏";
      
      public static var arcadeTeeth:String = "鋒利巨齒";
      
      public static var bonePillar:String = "骨柱";
      
      public static var hellfire:String = "地獄火";
      
      public static var pixelswords:String = "劍刃暴風";
      
      public static var pixelfork:String = "瘋叉狂舞";
      
      public static var paperSword:String = "紙刃";
      
      public static var paperStars:String = "星紙風暴";
      
      public static var swordswirl:String = "諸劍旋斬";
      
      public static var iceneedle:String = "冰針";
      
      public static var thunderblast:String = "電子爆破";
      
      public static var snowblast:String = "冰凍爆轟";
      
      public static var arcadeFlood:String = "電子瀑布";
      
      public static var ritual:String = "偽聖儀式";
      
      public static var highgravity:String = "高重力";
      
      public static var lowgravity:String = "低重力";
      
      public static var snow:String = "下雪";
      
      public static var earthquake:String = "地震";
      
      public static var blossom:String = "櫻花雨";
      
      public static var electrongun:Object = {
         "name":"電子槍擊",
         "desc":"麻痺單體的雷元素魔法。" + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"銳化",
         "desc":"延長全體敵人目前的負面狀態效果。或用在隊友上，對後備隊員也有效果，延長正面狀態效果。不影響急速跟自保效果。" + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"噴沙",
         "desc":"高階的單體地元素攻擊。" + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"沙丘",
         "desc":"強力的單體地元素攻擊。" + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"毒酸溶蝕",
         "desc":"高階的單體毒元素魔法。" + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"強酸衝擊",
         "desc":"強力的全體毒元素魔法。" + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"泡沫環",
         "desc":"封印單體的水元素攻擊。 \n • 傷害類型視攻擊或魔攻的最高數值而定。"
      };
      
      public static var musicalblast:Object = {
         "name":"Phyrnna的祝福",
         "desc":"強化所有隊友的魔防，對後備隊員也有效果，且賦予再生狀態。" + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"幾何奧秘",
         "desc":"強力的無元素的技能，攻擊單體敵人。 \n • 傷害類型視攻擊或魔攻的最高數值而定。" + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"仙子靈彈",
         "desc":"強力的全體聖元素魔法。 " + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"死神降臨",
         "desc":"單體並帶有即死的暗元素攻擊。" + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"惡魔飛劍",
         "desc":"強力的全體暗元素攻擊。 " + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"紙藝創想舞",
         "desc":LIMIT_BREAK + "治療所有隊友的HP和狀態麻煩，並強化最大HP、迴避跟命中。 \n • 對後備隊員也有效果。"
      };
      
      public static var sevenswords:Object = {
         "name":"七聖劍",
         "desc":LIMIT_BREAK + "對全體敵人造成極為強大的聖元素物理傷害。" + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}

