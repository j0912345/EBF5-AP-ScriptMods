package text.chineseSimplified
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • 附加的元素以及状态取决于装备中的武器。";
      
      public static var WEP_EFFECTS_2:String = "\n • 武器效果比平时更强。";
      
      public static var LOW_ACC:String = "\n • 命中率较低。";
      
      public static var HIGH_ACC:String = "\n • 命中率较高。";
      
      public static var HIGH_ACC_2:String = "\n • 命中率非常高。";
      
      public static var HIGH_CRITS:String = "\n • 暴击率较高。";
      
      public static var RETARGETS:String = "\n • 击败当前目标后会随机攻击新的目标。";
      
      public static var RETARGETS_2:String = "\n • 击败当前目标后会选择新的目标。";
      
      public static var LIMIT_BREAK:String = "极限技！ ";
      
      public static var ALTERNATIVE_ALL:String = "也可以选择平均伤害全体敌人。";
      
      public static var ALTERNATIVE_ONE:String = "也可以选择集中威力攻击单体敌人。";
      
      public static var MAY_SURRENDER:String = "可能使敌人投降，即使是强敌也不例外。";
      
      public static var SWORD_DANCE:String = "攻击单体敌人三次。每次击败目标时会自动攻击新的目标,";
      
      public static var EXTRA_HITS:String = "并且攻击次数会增加一次。";
      
      public static var DISPEL_ALL:String = "驱散所有敌人的属性强化以及良性状态。";
      
      public static var HITS_RANDOM_FOES:String = "发射与敌方人数相同数量的箭。每枝箭会随机瞄准敌人。";
      
      public static var COOLDOWN_2:String = "\n • 技能使用后冷却1回合。";
      
      public static var COOLDOWN_3:String = "\n • 技能使用后冷却2回合。";
      
      public static var COOLDOWN_4:String = "\n • 技能使用后冷却3回合。";
      
      public static var COOLDOWN_6:String = "\n • 技能使用后冷却5回合。";
      
      public static var COOLDOWN_11:String = "\n • 技能使用后冷却10回合。";
      
      public static var defend:Object = {
         "name":"防御",
         "desc":"本回合承受的所有伤害都会减半。某些装备会增加额外效果。"
      };
      
      public static var swap:Object = {
         "name":"替换角色",
         "desc":"替换使用另外一名角色。该指令不会消耗行动机会。"
      };
      
      public static var flee:Object = {
         "name":"逃跑",
         "desc":"从本场战斗中逃跑。没有任何处罚。"
      };
      
      public static var skip:Object = {
         "name":"跳过",
         "desc":"跳过这名角色的行动机会，什么也不做。"
      };
      
      public static var scan:Object = {
         "name":"扫描",
         "desc":"扫描场上的所有敌人，记录下它们的属性以及弱点。这些数据会永久保存在图鉴里。"
      };
      
      public static var capture:Object = {
         "name":"捕获敌人",
         "desc":"尝试捕获敌人。带有恶性状态且HP低的敌人比较容易被捕获。部分敌人不能被捕获。"
      };
      
      public static var bring1:Object = {
         "name":"替换成马特",
         "desc":"将该角色换下让马特上场。该指令不会消耗行动机会。"
      };
      
      public static var bring2:Object = {
         "name":"替换成娜塔莉",
         "desc":"将该角色换下让娜塔莉上场。该指令不会消耗行动机会。"
      };
      
      public static var bring3:Object = {
         "name":"替换成兰斯",
         "desc":"将该角色换下让兰斯上场。该指令不会消耗行动机会。"
      };
      
      public static var bring4:Object = {
         "name":"替换成安娜",
         "desc":"将该角色换下让安娜上场。该指令不会消耗行动机会。"
      };
      
      public static var bring5:Object = {
         "name":"替换成没腿",
         "desc":"将该角色换下让没腿上场。该指令不会消耗行动机会。"
      };
      
      public static var swordslash:Object = {
         "name":"普通攻击",
         "desc":"用剑平砍目标。" + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"地动",
         "desc":"基础的单体土元素攻击。"
      };
      
      public static var quakespikes:Object = {
         "name":"地覆",
         "desc":"进阶的单体土元素攻击。"
      };
      
      public static var cataclysmiccut:Object = {
         "name":"地裂",
         "desc":"非常强力的单体土元素攻击。" + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"涌水",
         "desc":"基础的单体水元素攻击。" + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"激流",
         "desc":"进阶的单体水元素攻击。" + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"水啸",
         "desc":"非常强力的单体水元素攻击。" + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"冰锥",
         "desc":"进阶的单体冰元素攻击。" + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"冰山",
         "desc":"强力的单体冰元素攻击。" + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"熔岩",
         "desc":"进阶的单体火元素攻击。" + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"爆发",
         "desc":"强力的单体火元素攻击。" + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"毒刺",
         "desc":"基础的单体毒元素攻击。" + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"毒藤蔓生",
         "desc":"强力的单体毒元素攻击。" + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"旋风斩",
         "desc":"能多次攻击全体敌人的强力攻击。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"偷窃",
         "desc":"从单体敌人身上偷窃随机物品。技能等级越高，能偷窃的物品越好。" + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"传奇",
         "desc":"能多次攻击单体敌人的非常强力的攻击。" + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"光刃",
         "desc":"进阶的单体圣元素攻击。"
      };
      
      public static var holysword:Object = {
         "name":"圣剑",
         "desc":"强力的单体圣元素攻击。" + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"潜能释放",
         "desc":"能解放武器潜力的攻击。" + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"快斩",
         "desc":"命中率非常高的单体攻击。" + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"锻炼",
         "desc":"强化单体队友的攻击，并且赋予勇敢状态。" + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"复仇",
         "desc":"潜在威力强大的单体攻击。马特的HP越低，以及战斗不能的队友数量越多，攻击力越高。以下所列的是最大威力。" + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"屠魂斩",
         "desc":LIMIT_BREAK + "以极其强大的剑技连续攻击单体敌人。" + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"诸神黄昏",
         "desc":LIMIT_BREAK + "造成极其强大的无元素全体物理伤害，然后强化所有队友（包括后备）的攻击并赋予勇敢。" + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"普通攻击",
         "desc":"使用杖普通地物理攻击单体敌人，并且释放武器中的魔力。" + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"清涤",
         "desc":"治疗单体队友的属性弱化以及恶性状态，并且赋予祝福状态。"
      };
      
      public static var luckystar:Object = {
         "name":"幸运星",
         "desc":"基础的单体无元素魔法。伤害变动非常高。" + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"流星雨",
         "desc":"强力的全体无元素魔法。伤害变动非常高。" + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"星之力",
         "desc":"强化单体队友的魔攻，并且赋予好运状态。" + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"剧毒",
         "desc":"基础的单体毒元素魔法，可能令目标陷入中毒。"
      };
      
      public static var fireball:Object = {
         "name":"火术",
         "desc":"基础的单体火元素魔法。" + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"火球术",
         "desc":"进阶的单体火元素魔法。" + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"火焰风暴",
         "desc":"强力的全体火元素魔法。" + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"雷术",
         "desc":"基础的单体雷元素魔法。" + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"雷电术",
         "desc":"进阶的单体雷元素魔法。" + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"雷霆风暴",
         "desc":"强力的全体雷元素魔法。" + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"冰术",
         "desc":"基础的单体冰元素魔法。" + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"冰砾术",
         "desc":"进阶的单体冰元素魔法。" + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"冰冻风暴",
         "desc":"强力的全体冰元素魔法。" + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"脉冲术",
         "desc":"进阶的单体暗元素魔法。" + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"脉冲星洞",
         "desc":"强力的全体暗元素魔法。" + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"虹光术",
         "desc":"进阶的单体魔法。" + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"彩虹爆破",
         "desc":"强力的全体魔法。" + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"圣光术",
         "desc":"进阶的单体圣元素魔法。" + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"审判之光",
         "desc":"强力的单体圣元素魔法，可以吸收目标的HP。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"沉默术",
         "desc":"封印单体敌人，令其无法使用魔法攻击。" + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"封印术",
         "desc":"封印全体敌人，令其无法使用魔法攻击。也可以选择让单体敌人陷入更强大的封印。" + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"创世之光",
         "desc":LIMIT_BREAK + "造成极其强大的全体圣元素魔法伤害，并且复活所有队友，或者赋予自动复活。\n • 对后备队员也有效果。" + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"第七天堂",
         "desc":LIMIT_BREAK + "治疗全体队友的HP以及恶性状态，并且强化攻击，魔攻，防御，以及魔防。\n • 对后备队员也有效果。\n • 赋予娜塔莉可爱状态。"
      };
      
      public static var pistolwhip:Object = {
         "name":"普通攻击",
         "desc":"使用枪普通地物理攻击单体敌人两次。" + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"狙击",
         "desc":"拥有超高命中率的单体射击。" + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"二连弹",
         "desc":"连续射击单体敌人两次的攻击。" + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"子弹齐发",
         "desc":"连续射击单体敌人六次的非常强力的攻击。" + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"火焰弹",
         "desc":"基础的火元素单体射击。" + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"火焰爆裂",
         "desc":"进阶的火元素全体射击。" + ALTERNATIVE_ONE + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var bullethell:Object = {
         "name":"火焰弹幕",
         "desc":"强力的火元素射击对单体敌人造成集中伤害，并且对其他所有敌人造成1/3伤害。" + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"等离子弹",
         "desc":"基础的雷元素单体射击。" + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"等离子波",
         "desc":"进阶的雷元素全体射击。" + ALTERNATIVE_ONE + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmafield:Object = {
         "name":"等离子力场",
         "desc":"强力的雷元素射击对单体敌人造成集中伤害，并且对其他所有敌人造成1/3伤害。 " + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"暗影弹",
         "desc":"基础的暗元素单体射击。" + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"重力浪潮",
         "desc":"进阶的暗元素全体射击。" + ALTERNATIVE_ONE + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var antimatterflux:Object = {
         "name":"反物质波动",
         "desc":"强力的暗元素射击对单体敌人造成集中伤害，并且对其他所有敌人造成1/3伤害。" + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"毒气瓦斯",
         "desc":"令全体敌人陷入猛毒，并且造成微量毒元素魔法伤害。" + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"飞弹",
         "desc":"用炸弹对单体敌人造成大量爆元素魔法伤害。" + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"空袭",
         "desc":"用炸弹对全体敌人造成大量爆元素魔法伤害。" + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"炸弹之母",
         "desc":"用炸弹对全体敌人造成极大爆元素魔法伤害。冷却时间非常长。" + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"救援包",
         "desc":"治疗单体队友的HP以及恶性状态。" + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"空投救援",
         "desc":"治疗全体队友的HP以及恶性状态。" + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"机枪扫射",
         "desc":"对全体敌人造成连发爆元素伤害。" + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"溃甲",
         "desc":"对单体敌人近身攻击，并且驱散目标。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"破坏光线",
         "desc":"需要使用两次：第一次蓄力，第二次攻击。对全体敌人造成极大魔法伤害。" + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"核弹",
         "desc":LIMIT_BREAK + "造成极其强大的全体火元素魔法伤害，并且使所有敌我角色燃烧。" + HIGH_ACC + "\n • 五回合内将当前天气替换成辐射。"
      };
      
      public static var oblivion:Object = {
         "name":"湮灭",
         "desc":LIMIT_BREAK + "造成极其强大的全体爆元素物理伤害。这也会摧毁一辆兰斯的坦克，但他还有不少后备。" + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"普通攻击",
         "desc":"使用弓普通地物理斩击单体敌人。" + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"弓殴击",
         "desc":"把弓作为钝器殴打单体敌人，试图迫使其投降。对强敌也有效果。" + WEP_EFFECTS + "\n • 不能击败目标。"
      };
      
      public static var gust:Object = {
         "name":"疾风",
         "desc":"基础的单体风元素魔法。" + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"旋风",
         "desc":"进阶的单体风元素魔法。" + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"飓风",
         "desc":"强力的全体风元素魔法。" + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"木桩",
         "desc":"基础的单体土元素攻击。" + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"木墙",
         "desc":"强力的单体土元素连续攻击。" + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"叶刃",
         "desc":"简单的单体毒元素二连击。" + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"飞叶快刀",
         "desc":"强力的全体毒元素连续攻击。" + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"圣魂箭",
         "desc":"进阶的单体圣元素攻击。" + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"寒冰箭",
         "desc":"进阶的单体冰元素攻击。" + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"水流箭",
         "desc":"进阶的单体水元素攻击。" + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"硝弹箭",
         "desc":"进阶的单体爆元素攻击。" + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"电弧箭",
         "desc":"进阶的单体雷元素攻击。" + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"圣魂连射",
         "desc":"强力的圣元素攻击。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"寒冰连降",
         "desc":"强力的冰元素攻击。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"水流连击",
         "desc":"强力的水元素攻击。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"硝弹连袭",
         "desc":"强力的爆元素攻击。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"电弧连落",
         "desc":"强力的雷元素攻击。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"穿刺射击",
         "desc":"超高命中的攻击。" + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"连续射击",
         "desc":"以多重箭作出强力并且精准的攻击。" + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"箭雨",
         "desc":"连续射击全体敌人。" + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"复原",
         "desc":"简单的单体治疗魔法。"
      };
      
      public static var remedy:Object = {
         "name":"提振",
         "desc":"进阶的单体治疗魔法；能赋予祝福状态。"
      };
      
      public static var motherearth:Object = {
         "name":"地母神威",
         "desc":LIMIT_BREAK + "造成极其强力的全体毒元素魔法伤害，并且使所有目标中毒。\n • 赋予所有队友（包括后备）祝福状态。" + HIGH_ACC + "\n • 五回合内让当前天气明澈。"
      };
      
      public static var mightyoak:Object = {
         "name":"橡树巨人",
         "desc":LIMIT_BREAK + "以多重攻击造成极其强力的全体地元素物理伤害。" + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"普通攻击",
         "desc":"快速地从背后袭击单体敌人。" + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"击剑",
         "desc":"基础的单体物理四连击。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"刃锋突袭",
         "desc":"强力的单体物理十一连击。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"迅斩",
         "desc":"超高速的全体物理斩击。" + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"九命猫",
         "desc":"治疗全体队友，赋予自动复活状态，并且复活战斗不能的队友。冷却时间非常长。" + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"群星爆闪",
         "desc":"对全体敌人造成无元素魔法伤害。冷却时间非常长。" + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"跳跃攻击",
         "desc":"基础的物理攻击。" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"刀光剑舞",
         "desc":"进阶的物理攻击。" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"终极斩击",
         "desc":"强力的物理攻击。" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"影击",
         "desc":"进阶的暗元素攻击。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"暮光探戈",
         "desc":"强力的暗元素攻击。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"圣击",
         "desc":"进阶的圣元素攻击。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"神罚裂斩",
         "desc":"强力的圣元素攻击。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"雷击",
         "desc":"进阶的雷元素攻击。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"霹雳不羁",
         "desc":"强力的雷元素攻击。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"魂击",
         "desc":"进阶的风元素攻击。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"龙卷狂怒",
         "desc":"强力的风元素攻击。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"泡击",
         "desc":"进阶的水元素攻击。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"水灵旋风",
         "desc":"强力的水元素攻击。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"寿司猫",
         "desc":"蹦跳着攻击三个随机敌人，并且治疗所受伤害最高的两名队友。" + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"寿司猫咪！",
         "desc":"蹦跳着攻击三个随机敌人，并且治疗所受伤害最高的两名队友。\n • 赋予被治疗的队友好运状态。" + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"狂暴",
         "desc":"使单体队友或者敌人陷入狂暴，令其不受控制地使出强大的攻击。" + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"愤怒之力",
         "desc":"使全体队友陷入狂暴。也可以选择让单体队友或者敌人陷入更有效的狂暴。" + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"珍视",
         "desc":"让单体队友变得可爱，使其不会被敌人的单体攻击瞄准。 " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"爱之光环",
         "desc":"让全体队友变得可爱。也可以选择让单体队友变得更可爱。" + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"创世者",
         "desc":LIMIT_BREAK + "造成极其强力的全体圣元素魔法伤害。 \n • 赋予全体队友（包括后备）好运状态。" + HIGH_ACC + "\n • 五回合内让当前天气明澈。"
      };
      
      public static var thedestroyer:Object = {
         "name":"毁灭者",
         "desc":LIMIT_BREAK + "以多重攻击造成极其强力的全体暗元素物理伤害。" + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"雪兔",
         "desc":"全体冰元素魔法。" + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"雪猫",
         "desc":"强力的全体冰元素魔法，可以搭配其他技能让敌人冰冻。" + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"春藤",
         "desc":"单体毒元素攻击。" + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"蔓藤",
         "desc":"强力的单体毒元素攻击。" + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"爆术",
         "desc":"基础的单体爆元素魔法。" + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"引爆术",
         "desc":"进阶的单体爆元素魔法。" + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"能量爆裂",
         "desc":"强力的全体爆元素魔法。" + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"泡术",
         "desc":"基础的单体水元素魔法。" + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"涡流术",
         "desc":"进阶的单体水元素魔法。" + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"泡沫冲击",
         "desc":"强力的全体水元素魔法。" + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"电震",
         "desc":"进阶的单体雷元素攻击。" + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"电涌",
         "desc":"强力的单体雷元素攻击。" + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"子弹Bob",
         "desc":"进阶的单体爆元素攻击。" + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"巨弹",
         "desc":"强力的单体爆元素攻击。" + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"强风",
         "desc":"进阶的单体风元素攻击。" + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"暴风",
         "desc":"强力的单体风元素攻击。" + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"力量金属",
         "desc":"对全体敌人造成风元素魔法伤害，并且治疗全体队友。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"风术",
         "desc":"基础的单体风元素魔法。" + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"气波术",
         "desc":"进阶的单体风元素魔法。" + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"冲击波纹",
         "desc":"强力的全体风元素魔法。" + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"锯刃",
         "desc":"进阶的单体无元素攻击。" + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"碎刃",
         "desc":"强力的全体无元素攻击。" + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"大地播种",
         "desc":"基础的单体地元素攻击。" + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"大地发芽",
         "desc":"进阶的单体地元素攻击。" + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"大地开花",
         "desc":"强力的全体地元素魔法。" + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"火焰漩涡",
         "desc":"强力的全体火元素魔法。" + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"净化之焰",
         "desc":"能驱散目标以及弱化其魔攻的单体圣元素魔法。" + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"恐怖尖叫",
         "desc":"造成全体暗元素魔法伤害，并且弱化目标的攻击。" + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"治疗",
         "desc":"简单的单体治疗魔法。" + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"多重治疗",
         "desc":"强力的全体治疗魔法。也可以选择让单体队友受到更强的治疗。" + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"复活",
         "desc":"让单体战斗不能的队友复活，或者赋予单体还站着的队友自动复活。"
      };
      
      public static var purify:Object = {
         "name":"净化",
         "desc":"治疗全体队友或者全体敌人的恶性状态。不包括潮湿或者干燥等中性状态。" + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"锁定",
         "desc":"强化单体队友的命中，并且赋予好运状态。 " + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"守护",
         "desc":"强化所有队友的防御，包括后备的队友。" + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"屏障",
         "desc":"强化所有队友的魔防，包括后备的队友。" + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"轻盈",
         "desc":"强化所有队友的回避，包括后备的队友，并且治疗前卫队友的雾罩状态。" + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"圣盾",
         "desc":"强化单体队友的防御与魔防。" + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"驱散",
         "desc":"驱散全体敌人的属性强化及良性状态。也可以选择驱散所有队友的属性弱化。" + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"闪光弹",
         "desc":"弱化全体敌人的命中。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"束缚",
         "desc":"弱化全体敌人的回避。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"削弱",
         "desc":"弱化所有敌人的防御。" + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"脆弱",
         "desc":"弱化所有敌人的魔防。" + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"突破天际",
         "desc":"强力的地元素单体攻击。如果目标有防御或魔防强化，或者正在防御，伤害将显著提高。" + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"再来一次",
         "desc":"让单体队友能行动两次。对自己使用毫无意义。" + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"鞭炮",
         "desc":"给予全体敌人厄运，并且赋予全体队友好运，包括后备的队友。" + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"绝对零度",
         "desc":LIMIT_BREAK + "造成强力的全体冰元素魔法伤害，弱化目标的回避，并且冻结它们。\n • 完全清除全体队友的所有技能冷却。" + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"海啸",
         "desc":LIMIT_BREAK + "造成极其强力的全体水元素物理或魔法伤害，并且使目标潮湿。\n • 伤害类型取决于攻击与魔攻中较高的属性。" + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"超新星",
         "desc":LIMIT_BREAK + "对敌我方造成极其强力的全体火元素魔法伤害，并且使目标燃烧。\n • 绝对无法被回避。"
      };
      
      public static var deathmetal:Object = {
         "name":"死亡金属",
         "desc":LIMIT_BREAK + "造成极其强大的风元素魔法伤害，并且治疗及赋予全体队友（包括后备）高扬状态。" + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"歼灭",
         "desc":LIMIT_BREAK + "有很高即死几率的全体攻击。对头目效果不佳，并且命中率较低。"
      };
      
      public static var ion:Object = {
         "name":"离子炮",
         "desc":LIMIT_BREAK + "造成极其强大的雷元素伤害，并且使目标麻痹。\n • 赋予兰斯蓄力状态。" + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"黑洞",
         "desc":LIMIT_BREAK + "造成极其强大的暗元素伤害，并且使目标变重。施术者会战斗不能。" + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"觉醒力量",
         "desc":LIMIT_BREAK + "造成极其强大的物理或魔法伤害。\n • 伤害类型取决于攻击与魔攻中较高的属性。" + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "骨袭";
      
      public static var bonestar:String = "骨之星";
      
      public static var groundblade:String = "不死之刃";
      
      public static var fallingstar:String = "陨落之星";
      
      public static var firerock:String = "火石";
      
      public static var stalactite:String = "钟乳石";
      
      public static var stalactite2:String = "钟乳石群";
      
      public static var fume:String = "火焰爆裂";
      
      public static var eruption:String = "火山爆发";
      
      public static var scald:String = "沸水爆发";
      
      public static var rain:String = "下雨";
      
      public static var sandstorm:String = "沙暴";
      
      public static var hail:String = "冰雹";
      
      public static var nitro:String = "硝火燃烧";
      
      public static var acid:String = "酸腐蚀";
      
      public static var bamboo:String = "竹击";
      
      public static var bamboo2:String = "竹陷阱";
      
      public static var bluebolt:String = "蓝色霹雳";
      
      public static var deepfreeze:String = "极度严寒";
      
      public static var wafer:String = "威化冰淇淋";
      
      public static var present:String = "惊喜礼物";
      
      public static var plasmacage:String = "等离子牢狱";
      
      public static var tankcannon:String = "坦克主炮";
      
      public static var candycanes:String = "拐杖糖攻击";
      
      public static var bonefish:String = "鱼骷髅";
      
      public static var riceball:String = "饭团炸弹";
      
      public static var mushroom:String = "蘑菇攻击";
      
      public static var lifedrain:String = "生命吸取";
      
      public static var smokepuff:String = "喷烟";
      
      public static var confusion:String = "混乱";
      
      public static var ink:String = "喷墨攻击";
      
      public static var chocolate:String = "巧克力团";
      
      public static var tentacles:String = "触手攻击";
      
      public static var slowdown:String = "减速";
      
      public static var speedup:String = "加速";
      
      public static var poisonroot:String = "中毒根击";
      
      public static var burningroot:String = "燃烧根击";
      
      public static var searoot:String = "海洋根击";
      
      public static var bombblast:String = "爆裂弹";
      
      public static var bigblast:String = "巨型爆裂";
      
      public static var cactus:String = "仙人掌";
      
      public static var cacti:String = "仙人掌群";
      
      public static var spark:String = "电气火花";
      
      public static var bigspark:String = "雷霆火花";
      
      public static var talisman:String = "护符封印";
      
      public static var ember:String = "小火苗";
      
      public static var fireblast2:String = "火焰爆裂";
      
      public static var firecrystals:String = "火水晶";
      
      public static var zephyrcrystals:String = "风水晶";
      
      public static var frost:String = "突袭寒冰";
      
      public static var rockslide:String = "山崩";
      
      public static var avalanche:String = "雪崩";
      
      public static var blackspikes:String = "极黑钉刺";
      
      public static var stonefist:String = "石头拳";
      
      public static var spiderweb:String = "蜘蛛网";
      
      public static var spiders:String = "蜘蛛群袭";
      
      public static var geometry2:String = "空间歪曲";
      
      public static var geometry3:String = "歪曲力场";
      
      public static var sacrifice:String = "牺牲";
      
      public static var bigroot:String = "壮实根茎";
      
      public static var seabomb:String = "深海炸弹";
      
      public static var fairy:String = "妖精炸弹";
      
      public static var fly:String = "苍蝇炸弹";
      
      public static var starpunch:String = "流星爆拳";
      
      public static var darken:String = "隐身化";
      
      public static var lighten:String = "魔隐化";
      
      public static var SlimeChocolate:String = "朝单体敌人吐巧克力，造成地元素物理伤害并且弱化命中。";
      
      public static var SlimeIcecream:String = "使用能造成寒冷的单体冰元素魔法。";
      
      public static var SlimeSand:String = "使用能造成麻痹的单体毒元素魔法。";
      
      public static var SlimeLava:String = "使用能造成干燥的单体火元素魔法。";
      
      public static var SlimeMouse:String = "使用能高精确地造成麻痹的单体低伤害雷元素魔法。";
      
      public static var SlimeWater:String = "使用伤害力低得可怜的单体水元素魔法。";
      
      public static var SlimeMud:String = "使用基础的单体毒元素魔法。";
      
      public static var SlimeBunny:String = "赋予全体队友再生状态，包括后备的队友。此状态下队友会每回合恢复HP。";
      
      public static var SpriteFire:String = "五回合内将当前天气替换成燃灰。";
      
      public static var SpriteIce:String = "五回合内将当前天气替换成暴风雪。";
      
      public static var SpriteThunder:String = "五回合内将当前天气替换成电气。";
      
      public static var SpriteRock:String = "五回合内将当前天气替换成地震。";
      
      public static var SpriteWind:String = "五回合内将当前天气替换成风暴。";
      
      public static var ChomperLeafy:String = "五回合内将当前天气替换成微风。";
      
      public static var ChomperSeaweed:String = "五回合内将当前天气替换成下雨。";
      
      public static var ChomperMagma:String = "五回合内将当前天气替换成晴朗。";
      
      public static var ChomperMutant:String = "五回合内将当前天气替换成酸雨。";
      
      public static var CreepThorny:String = "以进阶的地元素攻击刺向对方。有可能造成麻痹。";
      
      public static var CreepIcicle:String = "以进阶的冰元素攻击刺向对方。有可能造成寒冷。";
      
      public static var CreepHermit:String = "以进阶的无元素攻击斩向对方。";
      
      public static var CreepGreen:String = "以强力的无元素攻击撞向敌人三次。" + RETARGETS_2;
      
      public static var CreepRed:String = "以强力的风元素攻击撞向敌人，有可能造成踉跄。";
      
      public static var CreepBlue:String = "造成强力的爆炸，有可能造成麻痹。";
      
      public static var Defender1:String = "让强力的雷鸣轰炸全体敌人。有可能造成踉跄。";
      
      public static var Defender2:String = "让强力的水流炸裂单体敌人。有可能造成潮湿。";
      
      public static var DogFriend:String = "赋予全体队友可爱状态，让敌人不忍心直接攻击。";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "使用单体火元素的扑击，有可能造成燃烧。";
      
      public static var DogWolf:String = "使用单体冰元素的扑击，有可能造成冰冻。";
      
      public static var DogZap:String = "使用全体雷元素的扑击，有可能造成麻痹。";
      
      public static var DogMage:String = "使用邪恶的全体圣元素魔法，有可能造成诅咒。";
      
      public static var ChibiKnightUltra:String = "强化全体队友的攻击，包括后备的队友，然后连续数次攻击单体敌人。" + RETARGETS_2;
      
      public static var BushGreen:String = "对全体敌人尖叫，稍微弱化它们的攻击。";
      
      public static var BushRed:String = "对全体敌人尖叫，稍微弱化它们的防御。";
      
      public static var BushDark:String = "对全体敌人发出嘶声，稍微弱化它们的回避。";
      
      public static var BushMud:String = "对全体敌人尖叫，稍微弱化它们的魔攻。";
      
      public static var BushSand:String = "对全体敌人发出嘶声，稍微弱化它们的魔防。";
      
      public static var GolemTopaz:String = "连续使出强力的雷元素砸击，有可能造成麻痹。";
      
      public static var GolemPearl:String = "用强力的冰元素魔法使全体敌人寒冷，并且五回合内将当前天气替换成冰雹。";
      
      public static var GolemAmethyst:String = "连续使出强力的无元素砸击，有可能造成踉跄。";
      
      public static var FishSteam:String = "以超音速飞行撞向全体敌人，使它们变轻。";
      
      public static var FishGold:String = "使用圣元素的魔法光线照射全体敌人，有可能造成干燥。";
      
      public static var FishJet:String = "对全体敌人连射子弹，造成简单爆元素伤害。";
      
      public static var HandSkeleton:String = "赋予全体队友好运状态，包括后备的队友。此状态下的队友的有关概率的行动会变得更有效。";
      
      public static var HandZombie:String = "使全体敌人陷入殒灭，诅咒它们在三回合后战斗不能。";
      
      public static var HandMagma:String = "赋予全体队友狂暴状态。此状态下的队友将会不受控制地攻击，但是攻击力会增加。";
      
      public static var FlybotBlue:String = "反转全体队友的属性变动。弱化将变成强化，反之亦然。";
      
      public static var FlybotYellow:String = "反转全体敌人的属性变动。弱化将变成强化，反之亦然。";
      
      public static var FlybotRed:String = "反转单体队友或敌人的属性变动。弱化将变成强化，反之亦然。";
      
      public static var FallenLost:String = "以风元素攻击斩向单体敌人，并且赋予所有队友高扬状态，包括后备的队友。";
      
      public static var FallenCrucified:String = "向单体敌人使出圣元素斩击，有可能造成即死。";
      
      public static var FallenDrowned:String = "优雅地驱散全体前卫队友的属性弱化。";
      
      public static var FallenBurned:String = "用强力的火元素魔法使全体敌人干燥，并且五回合内将当前天气替换成沙暴。";
      
      public static var FallenBeheaded:String = "以暗元素攻击刺向单体敌人，并且赋予所有队友勇敢状态，包括后备的队友。";
      
      public static var PixelSlime:String = "对单体敌人使用非常弱的毒元素魔法，造成强力的疲劳。";
      
      public static var PixelBush:String = "对单体敌人使用非常弱的火元素魔法，造成强力的干燥。";
      
      public static var PixelBat:String = "对单体敌人使用非常弱的暗元素魔法，造成强力的厄运。";
      
      public static var PixelIdol:String = "对单体敌人使用非常弱的爆元素攻击，造成强力的虚弱。";
      
      public static var MonolithViking:String = "赋予全体队友急速状态，也就是说让所有人各自多行动一次。";
      
      public static var MonolithAncient:String = "赋予全体队友防御状态，使本回合内受到的伤害骤减。";
      
      public static var MonolithCosmic:String = "以强烈的暗魔法轰炸整个战场，来攻击全体敌人。";
      
      public static var IdolGem:String = "赋予全体队友变轻状态，包括后备的队友。此状态下的队友所受的地元素伤害会减少。";
      
      public static var IdolStone:String = "赋予全体队友干燥状态，包括后备的队友。此状态下的队友所受的冰与雷元素伤害会减少。";
      
      public static var IdolMetal:String = "赋予全体队友变重状态，包括后备的队友。此状态下的队友所受的风元素伤害会减少。";
      
      public static var IdolWood:String = "赋予全体队友祝福状态，包括后备的队友。此状态下的队友不会受到状态异常。";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "赋予全体队友魔隐状态。此状态下的队友免疫魔法伤害，但是会受到双倍物理伤害。";
      
      public static var MirrorDemon:String = "赋予全体队友隐身状态。此状态下的队友免疫物理伤害，但是会受到双倍魔法伤害。";
      
      public static var MirrorHaunted:String = "以强力的暗元素攻击撕咬单体敌人，有可能造成诅咒。";
      
      public static var MammothWooly:String = "以无元素的泰山压顶重创单体敌人，并且其他敌人也会承受1/3的伤害。" + equips.MAY_STUN;
      
      public static var MammothCamel:String = "强化全体队友的魔防，包括后备的队友，然后使用全体地元素攻击。";
      
      public static var MammothWar:String = "强化全体队友的防御，包括后备的队友，然后使用全体爆元素魔法爆炸。" + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "用吐墨造成极其强大的单体暗元素魔法伤害，有可能弱化命中，并且附加隐身状态。";
      
      public static var SquidPurple:String = "弱化全体敌人的命中，并且附加殒灭状态。";
      
      public static var SquidLime:String = "以强力的雷元素攻击刺向所有敌人，并且一定会麻痹。";
      
      public static var Underlegs:String = "驱散全体敌人，然后以大雪纷飞之势连续使出无元素攻击。";
      
      public static var SlimeBigSand:String = "使用能造成麻痹的强力单体毒元素攻击。";
      
      public static var SlimeBigLava:String = "使用能造成强烈燃烧的强力单体火元素攻击。";
      
      public static var SlimeBigMud:String = "使用毒元素蘑菇攻击。飞舞的孢子能造成麻痹。";
      
      public static var SlimeBigIcecream:String = "使用低伤害的冰魔法让所有敌人寒冷，借以提升它们所受的冰与水元素伤害。";
      
      public static var SlimeBigChocolate:String = "对全体敌人呕吐巧克力，造成地属性魔法伤害并且使它们变重。";
      
      public static var WormPutrid:String = "使用能强烈弱化回避的低伤害单体无元素织网攻击。";
      
      public static var WormScaly:String = "赋予全体队友潮湿状态，包括后备的队友。此状态下的队友所受的火元素伤害会减少。";
      
      public static var WormFuzzy:String = "使用能以病毒感染目标的低伤害单体无元素咬攻击。";
      
      public static var WormCutie:String = "治疗全体队友的中性状态，包括潮湿，寒冷，干燥，变重，变轻，魔隐，以及隐身。";
      
      public static var WraithIce:String = "以冰锥攻击单体敌人的心脏，有可能造成即死。";
      
      public static var WraithFire:String = "以地狱之火的魔法攻击单体敌人，令其陷入狂暴。\n • 最好不要让目标被这个召唤攻击后还存活。";
      
      public static var WraithSteel:String = "使用单体爆元素的连环爆炸，有可能造成踉跄并且弱化防御。";
      
      public static var WraithLeaf:String = "使用单体毒元素的连环射击，有可能造成中毒并且弱化魔防。";
      
      public static var WraithMaster:String = "使用能强烈封印单体敌人的暗元素魔法。";
      
      public static var Glitch2:String = "???-?eII物品未找到！### \nERROR: 0x000002";
      
      public static var Glitch1:String = "??-//警 告 ： 此 封 印 解 开 不 予 保 修 ！ ！0?-//??";
      
      public static var GloopStone:String = "令单体敌人隐身，使其受到的魔法伤害加倍。";
      
      public static var GloopCrystal:String = "令单体敌人魔隐，使其受到的物理伤害加倍。";
      
      public static var GloopAsh:String = "赋予全体队友勇敢状态，包括后备的队友。此状态下的队友会在暴击上更好运。";
      
      public static var GloopWood:String = "赋予全体队友高扬状态，包括后备的队友。此状态下的队友能在HP较高的状况下保证撑过一次攻击。";
      
      public static var HydraZombie:String = "试图让全体敌人即死。如果失败，那么造成一点暗元素物理伤害。";
      
      public static var HydraMagma:String = "以强力的火元素魔法砸向全体敌人，有可能造成燃烧。";
      
      public static var HydraIce:String = "连续撕咬单体敌人，造成极其强力的冰元素物理伤害。";
      
      public static var DragonEarth:String = "弱化全体敌人的魔防，然后吐出最强的酸以对它们造成毒元素魔法伤害。";
      
      public static var DragonSky:String = "弱化全体敌人的防御，然后以羽毛的飓风攻击它们，造成风元素物理伤害。";
      
      public static var DragonSea:String = "弱化全体敌人的攻击，然后以极其强力的水魔法攻击它们，并且能造成潮湿。";
      
      public static var DragonOmega:String = "弱化全体敌人的魔攻，然后以非常强的圣元素魔法轰炸它们，并且能造成麻痹。";
      
      public static var BatBlood:String = "用简单的毒元素攻击吸取HP，给予它至召唤者身上。";
      
      public static var BatSnow:String = "赋予全体队友寒冷状态，包括后备的队友。此状态下的队友所受的毒元素伤害会减少。";
      
      public static var BatThunder:String = "赋予全体队伍时限很长的混乱状态；简单来说就是自动战斗。\n • 最好别在头目战用这个。";
      
      public static var BatBone:String = "让全体队友被病毒感染，哪怕有抗性也一样。";
      
      public static var BearBrown:String = "使用单体无元素攻击。伤害随召唤者失去的HP以及战斗不能的队友数增加。\n • 最高威力是1000。";
      
      public static var BearGrolar:String = "以冰元素攻击如雪崩般砸向全体敌人，有可能造成冰冻。";
      
      public static var BearPanda:String = "连续对全体敌人射出毒元素攻击，有可能造成中毒。";
      
      public static var BitIce:String = "使用屏障魔法，强化全体队友的魔防，包括后备的队友。";
      
      public static var BitThunder:String = "使用守护魔法，强化全体队友的防御，包括后备的队友。 ";
      
      public static var BitHoly:String = "使用强力的治疗魔法，为全体队友回复HP。";
      
      public static var BitFire:String = "以火元素攻击袭击单体敌人，弱化目标的防御攻击，并且能造成燃烧。";
      
      public static var BitWind:String = "以火元素攻击袭击单体敌人，弱化目标的魔防，并且能造成麻痹。";
      
      public static var BitWater:String = "以低伤害水元素魔法泼向全体敌人，试图造成潮湿，借以提升它们所受的雷与冰伤害。";
      
      public static var BitPoison:String = "以低伤害毒元素魔法侵渗全体敌人，试图造成中毒，借以每回合自动造成伤害。";
      
      public static var BoulderCoral:String = "以水元素攻击扑向单体敌人，有可能造成踉跄。";
      
      public static var BoulderMarble:String = "以风元素魔法攻击全体敌人，有可能造成强烈封印。";
      
      public static var BoulderObsidian:String = "以d20攻击全体敌人，造成变动非常高的火元素伤害，并且能造成燃烧。";
      
      public static var BoulderDirt:String = "对全体敌人造成地元素物理伤害，并且能造成疲劳。";
      
      public static var BoulderSandstone:String = "扑向单体敌人，造成极其强力的地元素物理伤害。";
      
      public static var CatNinja:String = "为一位队友增加一次行动机会。";
      
      public static var CatSniper:String = "直接对着单体敌人的脸射击，运气好的话能造成即死。";
      
      public static var CatWizard:String = "使用简单的治疗魔法，回复单体队友的HP。";
      
      public static var CatBomber:String = "向单体敌人扔炸弹，造成魔法伤害以及踉跄。";
      
      public static var CatWarrior:String = "向单体敌人使出连续无元素斩击。";
      
      public static var DollMatt:String = "强烈地强化单体队友的攻击，并且赋予勇敢状态。";
      
      public static var DollNatalie:String = "强烈地强化单体队友的魔法，并且赋予高扬状态。";
      
      public static var DollLance:String = "向全体敌人使用高威力的爆元素魔法，有可能造成踉跄。";
      
      public static var DollAnna:String = "向单体敌人射出毒元素的箭。对有防御或魔防强化，或者正在防御的敌人，伤害会增加。";
      
      public static var DollNoLegs:String = "向全体敌人发出鬼魂般的喵声，弱化它们的回避，并且能造成厄运。";
      
      public static var BossCyclopsDesert:String = "造成多段的极其强力的全体爆元素魔法伤害，并且能造成麻痹。";
      
      public static var BossCyclopsGlacial:String = "向单体敌人使用多次的强力冰元素砸击，并且其他敌人也会受到1/3伤害。\n • 能对所有敌人造成冰冻。";
      
      public static var BossCyclopsInfernal:String = "向单体敌人使用多次的强力火元素砸击，并且其他敌人也会受到1/3伤害。\n • 能对所有敌人造成燃烧。";
      
      public static var BossGolemWater:String = "以非常强力的水元素攻击砸向全体敌人，并且能造成潮湿。";
      
      public static var BossGolemFire:String = "以非常强力的火元素攻击砸向全体敌人，并且能造成燃烧。";
      
      public static var BossNestCat:String = "强化全体队友的魔攻，包括后备的队友，然后用毒元素斩击连续攻击全体敌人。";
      
      public static var BossNestNinja:String = "使用非常强力的全体暗元素魔法，有可能造成诅咒。";
      
      public static var EvilMatt:String = "逐次对全体敌人施放极其强力的地元素攻击。" + HIGH_CRITS;
      
      public static var EvilNatalie:String = "逐次对全体敌人施放极其强力的圣元素魔法。" + HIGH_CRITS;
      
      public static var EvilLance:String = "逐次对全体敌人施放极其强力的爆元素魔法。" + HIGH_CRITS;
      
      public static var EvilAnna:String = "逐次对全体敌人施放极其强力的风元素攻击。" + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "用全宇宙最强大的魔法造成无以伦比的全体无元素伤害。";
      
      public static var WraithOrigami:String = "以强力的无元素攻击打击一名敌人，同时驱散它们的效果。";
      
      public static var GloopFab:String = "五回合内将当前天气替换成樱花雨。";
      
      public static var CatSkeleton:String = "背刺一名敌人，造成暗属性物理伤害，并施加最大剂量的厄运效果。";
      
      public static var HydraOrigami:String = "以无元素纸剑攻击所有敌人，并提升所有队友的回避，包括后备的队友。 ";
      
      public static var Defender3:String = "以强力的冲击波震击所有敌人，造成暗元素物理伤害。 \n • 一定会造成暴击。";
      
      public static var BearBlack:String = "斩击一名敌人，造成火属性物理伤害，并施加最大剂量的干燥效果。";
      
      public static var GolemBone:String = "用强力的无元素属性攻击穿透所有敌人，可能会造成虚弱效果。";
      
      public static var WormBook:String = "提升所有行动中队友的命中率。";
      
      public static var BossGigalith:String = "以强力的无元素属性魔法攻击轰击所有敌人，并造成严重灼伤效果，不断降低它们的HP上限。";
      
      public static var BossDevourer:String = "删除当前模拟环境。";
      
      public static var SketchPapalotl:String = "刺穿所有敌人，造成大量物理无元素属性伤害，且此攻击会完全忽略防御类增益效果。（不包括负面效果）";
      
      public static var SketchGuncat:String = "轰炸所有敌人，造成大量爆元素伤害，一半为物理伤害，一半为魔法伤害，且此攻击会完全忽略防御类增益效果。（不包括负面效果）";
      
      public static var SketchXolotl:String = "用无元素物理攻击打击所有敌人，并使它们虚弱，且此攻击会完全忽略防御强化效果。（不包括负面效果）";
      
      public static var SketchGlaurung:String = "对所有敌人造成风元素魔法伤害并驱散它们，且此攻击会完全忽略防御强化效果。（不包括负面效果）";
      
      public static var ArcadeGuoye:String = "大量提升所有行动中队友的命中率。";
      
      public static var ArcadeTotom:String = "完全治疗所有前卫队友，并且治疗所有附加在他们身上的状态异常及属性弱化。";
      
      public static var ArcadeChair:String = "大幅度弱化所有敌人的魔攻，并且造成一些爆属性魔法伤害。";
      
      public static var ArcadePumpkus:String = "普通情况下什么也不会做，但是如果单回合内连续召唤的话会激怒它，对随机敌人造成巨大物理伤害。";
      
      public static var ArcadeGlob:String = "对准单体敌人放出难闻的气息，对它依次附加驱散，疲劳，诅咒，虚弱，厄运，雾罩状态，也会造成一些无元素魔法伤害。";
      
      public static var ArcadeSnek:String = "咬中单体敌人，造成无属性物理伤害，并且附加最大强度的中毒与燃烧状态。";
      
      public static var ArcadeRobo:String = "用雷元素魔法攻击单体敌人，使其麻痹，并且大幅度弱化命中。";
      
      public static var ArcadeBosh:String = "大幅度弱化所有敌人的攻击。";
      
      public static var ArcadeTreagure:String = "对随机敌人造成随机伤害，并且附加随机状态。\n • 可能附加状态包括冰冻，灼伤，麻痹，封印，踉跄，殒灭，厄运。";
      
      public static var ArcadePhoenix:String = "复活所有前卫队友，并对活着的队友附加自动复活状态。";
      
      public static var ArcadeMermaid:String = "大幅度强化所有队友的回避，包括后卫的队友。";
      
      public static var ArcadeMaw:String = "传染致命病毒给所有敌人，并且造成一些独元素魔法伤害。";
      
      public static var ClassicSlime:String = "对单体敌人使用威力低得可怜的无属性攻击。";
      
      public static var ClassicSlimeKing:String = "施展强力的治愈魔法，治疗所有队友，包括后备的队友。\n • 同时也去除所有状态异常。";
      
      public static var ClassicTree:String = "对所有敌人造成低位力毒元素伤害，并且试图短暂地麻痹它们。";
      
      public static var ClassicEyeball:String = "对所有敌人造成无元素魔法伤害。";
      
      public static var ClassicBeholder:String = "用触手包围某个不走运的家伙，造成毒元素伤害，并且注射强力的毒。";
      
      public static var ClassicWaspRed:String = "大幅度弱化单体敌人的魔攻。";
      
      public static var ClassicWaspBlack:String = "大幅度弱化单体敌人的攻击。";
      
      public static var ClassicSandworm:String = "对所有敌人吐一脸，造成毒元素魔法伤害，并且弱化攻击，魔攻，防御，以及魔防。";
      
      public static var ClassicEaterIce:String = "以冰元素的魔力吐息攻击所有敌人。伤害不高，但是有很高的几率冰冻它们。";
      
      public static var ClassicEaterFire:String = "以火元素的魔力吐息攻击所有敌人，并且附加干燥状态。";
      
      public static var ClassicClayBlue:String = "对单体敌人施展风元素魔法，对其附加最大幅度的变轻状态。";
      
      public static var ClassicClayRed:String = "对单体敌人使用地元素物理攻击，对其附加最大幅度的变重状态。";
      
      public static var ClassicClayDark:String = "对单体敌人施展暗元素魔法，附加殒灭状态，并且弱化攻击，魔攻，防御，以及魔防。";
      
      public static var ClassicClayLight:String = "施展高级治愈魔法，治疗所有队友，包括后备的队友。";
      
      public static var ClassicProtector:String = "对所有敌人施放雷元素魔法激光。任何幸存的敌人都会麻痹几回合";
      
      public static var ClassicSlingerGun:String = "试图射击单体敌人造成强力爆元素伤害。\n • 命中率固定为50%。\n • 无视目标的回避属性，以及任何防御强化。";
      
      public static var ClassicSlingerSword:String = "试图刺击单体敌人造成强力无元素伤害。\n • \n • 命中率固定为50%。\n • 无视目标的回避属性，以及任何防御强化。";
      
      public static var ClassicPraetorian:String = "给所有队友附加防御状态，然后对所有敌人造成无元素伤害，有可能一击毙命，并且无视敌人的防御类强化（但是不会无视弱化）。";
      
      public static var ClassicCrystalRed:String = "对单体敌人造成火元素魔法伤害，附加灼伤状态。";
      
      public static var ClassicCrystalBlue:String = "伤害力不高，但是有非常高的几率造成持续时间很长的冰冻状态。";
      
      public static var ClassicGigaGolem:String = "造成超强力的火元素或冰元素伤害——使用的元素完全随机。";
      
      public static var ClassicRafflesia:String = "对所有敌人造成超强力的毒元素物理伤害。";
      
      public static var ClassicJack:String = "大幅度强化所有队友的攻击以及魔攻，包括后卫的队友。";
      
      public static var arcadePoison:String = "毒泡";
      
      public static var arcadeNettle:String = "藤缠";
      
      public static var arcadeTeeth:String = "尖牙";
      
      public static var bonePillar:String = "骨柱";
      
      public static var hellfire:String = "狱火";
      
      public static var pixelswords:String = "万剑诀";
      
      public static var pixelfork:String = "飞叉乱舞";
      
      public static var paperSword:String = "纸剑";
      
      public static var paperStars:String = "飞纸乱舞";
      
      public static var swordswirl:String = "旋刃";
      
      public static var iceneedle:String = "冰针";
      
      public static var thunderblast:String = "轰雷";
      
      public static var snowblast:String = "轰冰";
      
      public static var arcadeFlood:String = "瀑布";
      
      public static var ritual:String = "不洁仪式";
      
      public static var highgravity:String = "强重力";
      
      public static var lowgravity:String = "弱重力";
      
      public static var snow:String = "暴风雪";
      
      public static var earthquake:String = "地震";
      
      public static var blossom:String = "樱花雨";
      
      public static var electrongun:Object = {
         "name":"电子枪",
         "desc":"对单体敌人造成雷元素魔法伤害，并且附加麻痹。" + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"锐化",
         "desc":"延长附加在所有敌人身上的负面状态，或者延长附加在所有队友（包括后备）的正面状态。对急速与防御状态无效。" + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"喷沙",
         "desc":"进阶的单体地元素攻击。" + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"沙丘",
         "desc":"强力的单体地元素攻击。" + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"酸术",
         "desc":"进阶的单体毒元素魔法。" + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"酸冲击",
         "desc":"强力的全体毒元素魔法。" + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"泡沫环",
         "desc":"能封印目标的单体水元素攻击。\n •伤害类型取决于攻击与魔攻中较高的属性。"
      };
      
      public static var musicalblast:Object = {
         "name":"Phyrnna的加护",
         "desc":"强化所有队友的魔攻，包括后卫的队友，并且附加再生状态。" + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"天河星图",
         "desc":"强力的单体无元素攻击。\n •伤害类型取决于攻击与魔攻中较高的属性。" + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"妖精炸弹",
         "desc":"强力的全体圣元素魔法。" + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"死神降临",
         "desc":"单体暗元素攻击，有可能一击毙命。" + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"魔剑飞舞",
         "desc":"强力的全体暗元素攻击。" + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"艺术品无力回天",
         "desc":LIMIT_BREAK + "治疗所有队友的HP以及状态异常，并且强化最大HP，回避与命中。\n • 对后备队友也有效果。"
      };
      
      public static var sevenswords:Object = {
         "name":"七剑",
         "desc":LIMIT_BREAK + "对所有敌人造成超强力圣属性物理伤害。" + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}

