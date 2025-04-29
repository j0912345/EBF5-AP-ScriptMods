package text.korean
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • 현재 장착한 무기의 속성과 특수 효과를 반영합니다.";
      
      public static var WEP_EFFECTS_2:String = "\n • 무기의 특수 효과가 증폭됩니다.";
      
      public static var LOW_ACC:String = "\n • 명중률이 낮습니다.";
      
      public static var HIGH_ACC:String = "\n • 명중률이 높습니다.";
      
      public static var HIGH_ACC_2:String = "\n • 명중률이 매우 높습니다.";
      
      public static var HIGH_CRITS:String = "\n • 치명타 확률이 높습니다.";
      
      public static var RETARGETS:String = "\n • 대상이 사망할 시 다른 적을 공격합니다.";
      
      public static var RETARGETS_2:String = "\n • 대상이 사망할 시 새로운 대상을 선택합니다.";
      
      public static var LIMIT_BREAK:String = "리미트 브레이크! ";
      
      public static var ALTERNATIVE_ALL:String = " 모든 적을 대상으로 균등한 피해를 줄 수도 있습니다. ";
      
      public static var ALTERNATIVE_ONE:String = " 단일 적을 대상으로 집중된 피해를 줄 수도 있습니다.";
      
      public static var MAY_SURRENDER:String = " 강력한 적을 포함한 적들의 항복을 유도합니다. ";
      
      public static var SWORD_DANCE:String = " 단일 대상을 3번 공격하며 대상이 사망할 시 대상을 옮깁니다.";
      
      public static var EXTRA_HITS:String = " 적을 처치할 때마다 공격 횟수가 증가합니다.";
      
      public static var DISPEL_ALL:String = " 모든 적을 디스펠하여 버프와 긍정적 상태이상을 제거합니다.";
      
      public static var HITS_RANDOM_FOES:String = " 적의 수 만큼 화살을 발사하며, 각 화살은 무작위의 적을 공격합니다.";
      
      public static var COOLDOWN_2:String = "\n • 1턴의 재사용 대기시간을 가집니다. ";
      
      public static var COOLDOWN_3:String = "\n • 2턴의 재사용 대기시간을 가집니다. ";
      
      public static var COOLDOWN_4:String = "\n • 3턴의 재사용 대기시간을 가집니다. ";
      
      public static var COOLDOWN_6:String = "\n • 5턴의 재사용 대기시간을 가집니다. ";
      
      public static var COOLDOWN_11:String = "\n • 10턴의 재사용 대기시간을 가집니다. ";
      
      public static var defend:Object = {
         "name":"방어",
         "desc":"한 턴 간 받는 모든 피해가 50% 감소합니다. 일부 장비는 추가 효과를 더합니다."
      };
      
      public static var swap:Object = {
         "name":"플레이어 선택",
         "desc":"다음 행동을 할 플레이어를 선택합니다. 이 행동은 턴을 사용하지 않습니다."
      };
      
      public static var flee:Object = {
         "name":"도주",
         "desc":"이 전투에서 도주합니다. 도주 시 받는 페널티는 없습니다."
      };
      
      public static var skip:Object = {
         "name":"스킵",
         "desc":"아무것도 하지 않고 턴을 넘깁니다."
      };
      
      public static var scan:Object = {
         "name":"스캔",
         "desc":"모든 적을 스캔하여 그들에 대한 정보를 얻습니다. 이 정보는 몬스터 백과에 영구히 기록됩니다."
      };
      
      public static var capture:Object = {
         "name":"포획 시도",
         "desc":"대상 적의 포획을 시도합니다. 피해를 입고 상태이상에 걸린 적은 더 쉽게 포획됩니다. 일부 적들은 포획할 수 없습니다."
      };
      
      public static var bring1:Object = {
         "name":"맷 불러오기",
         "desc":"이 플레이어를 대기조로 이동시키고 맷을 불러옵니다. 이 행동은 턴을 사용하지 않습니다."
      };
      
      public static var bring2:Object = {
         "name":"나탈리 불러오기",
         "desc":"이 플레이어를 대기조로 이동시키고 나탈리를 불러옵니다. 이 행동은 턴을 사용하지 않습니다."
      };
      
      public static var bring3:Object = {
         "name":"랜스 불러오기",
         "desc":"이 플레이어를 대기조로 이동시키고 랜스를 불러옵니다. 이 행동은 턴을 사용하지 않습니다."
      };
      
      public static var bring4:Object = {
         "name":"애나 불러오기",
         "desc":"이 플레이어를 대기조로 이동시키고 애나를 불러옵니다. 이 행동은 턴을 사용하지 않습니다."
      };
      
      public static var bring5:Object = {
         "name":"다리없냥 불러오기",
         "desc":"이 플레이어를 대기조로 이동시키고 다리없냥를 불러옵니다. 이 행동은 턴을 사용하지 않습니다."
      };
      
      public static var swordslash:Object = {
         "name":"일반 공격",
         "desc":"기초적인 검 공격으로 단일 대상을 타격합니다." + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"전율",
         "desc":"단일 대상을 타격하는 기초 대지 공격입니다."
      };
      
      public static var quakespikes:Object = {
         "name":"지진",
         "desc":"단일 대상을 타격하는 상급 대지 공격입니다."
      };
      
      public static var cataclysmiccut:Object = {
         "name":"지각 변동",
         "desc":"단일 대상을 타격하는 최상급 대지 공격입니다" + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"물줄기",
         "desc":"단일 대상을 타격하는 기초 물 공격입니다." + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"격류",
         "desc":"단일 대상을 타격하는 상급 물 공격입니다." + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"범람",
         "desc":"단일 대상을 타격하는 최상급 물 공격입니다." + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"빙설",
         "desc":"단일 대상을 타격하는 상급 얼음 공격입니다." + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"빙산",
         "desc":"단일 대상을 타격하는 최상급 얼음 공격입니다." + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"마그마",
         "desc":"단일 대상을 타격하는 상급 화염 공격입니다." + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"분출",
         "desc":"단일 대상을 타격하는 최상급 화염 공격입니다." + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"쐐기풀",
         "desc":"단일 대상을 타격하는 기초 생체 공격입니다." + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"과대성장",
         "desc":"단일 대상을 두 번 타격하는 최상급 생체 공격입니다." + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"소드 부메랑",
         "desc":"모든 적을 여러 번 타격하는 강력한 공격입니다." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"도둑질",
         "desc":"단일 대상에게서 아이템을 훔칩니다. 스킬 레벨이 높을수록 더 좋은 아이템을 훔칠 수 있습니다." + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"레전드",
         "desc":"단일 대상을 여러 번 타격하는 최상급 공격입니다." + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"빛의 검",
         "desc":"단일 대상을 타격하는 상급 신성 공격입니다."
      };
      
      public static var holysword:Object = {
         "name":"성검",
         "desc":"단일 대상을 타격하는 최상급 신성 공격입니다." + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"해방",
         "desc":"장착한 무기의 잠재된 힘을 해방합니다." + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"퀵 슬래시",
         "desc":"매우 높은 명중률로 단일 대상을 공격합니다." + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"제련",
         "desc":"아군의 공격력을 증가시키고 용기 상태를 부여합니다. " + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"리벤지",
         "desc":"조건에 따라 매우 파괴적일 수 있는 단일 대상 공격입니다. 맷의 체력이 낮거나 사망한 아군이 있을 시 위력이 증폭됩니다. 표기된 위력은 이 스킬의 최대 위력입니다." + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"클리버",
         "desc":LIMIT_BREAK + "단일 대상을 압도적인 위력으로 여러 번 타격합니다." + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"라그나로크",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 무속성 물리 피해를 입힙니다. 대기 플레이어를 포함한 모든 아군의 공격력을 증가시키며 용기 상태를 부여합니다." + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"일반 공격",
         "desc":"기초적인 물리 공격으로 단일 대상을 타격하여 장착한 무기의 마력을 해방합니다." + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"정화",
         "desc":"아군의 디버프와 부정적 상태이상을 제거하며, 축복 상태를 부여합니다."
      };
      
      public static var luckystar:Object = {
         "name":"럭키 스타",
         "desc":"단일 대상에게 무작위한 피해를 입히는 기초 무속성 마법입니다." + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"스타 샤워",
         "desc":"모든 적에게 무작위한 피해를 입히는 최상급 무속성 마법입니다 ." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"스타 파워",
         "desc":"아군의 마법 공격력을 증가시키고 행운 상태를 부여합니다." + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"맹독",
         "desc":"단일 대상을 강하게 중독시키는 기초 생체 마법입니다."
      };
      
      public static var fireball:Object = {
         "name":"파이어",
         "desc":"단일 대상을 타격하는 기초 화염 마법입니다." + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"파이어볼",
         "desc":"단일 대상을 타격하는 상급 화염 마법입니다." + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"파이어 스톰",
         "desc":"모든 적을 타격하는 최상급 화염 마법입니다." + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"썬더",
         "desc":"단일 대상을 타격하는 기초 번개 마법입니다." + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"썬더볼트",
         "desc":"단일 대상을 타격하는 상급 번개 마법입니다." + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"썬더 스톰",
         "desc":"모든 적을 타격하는 최상급 번개 마법입니다." + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"아이스",
         "desc":"단일 대상을 타격하는 기초 얼음 마법입니다." + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"아이스샤드",
         "desc":"단일 대상을 타격하는 상급 얼음 마법입니다." + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"아이스 스톰",
         "desc":"모든 적을 타격하는 최상급 얼음 마법입니다." + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"다크 펄스",
         "desc":"단일 대상을 타격하는 상급 어둠 마법입니다." + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"펄서",
         "desc":"모든 적을 타격하는 최상급 어둠 마법입니다." + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"스펙트럼",
         "desc":"단일 대상을 타격하는 상급 마법입니다." + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"레인보우 블래스트",
         "desc":"모든 적을 타격하는 최상급 마법입니다." + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"홀리 라이트",
         "desc":"단일 대상을 타격하는 상급 마법입니다." + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"저지먼트",
         "desc":"단일 대상을 타격고 체력을 흡수하는 최상급 신성 마법입니다." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"침묵",
         "desc":"단일 대상을 봉인시켜 대부분의 마법 공격을 사용할 수 없게 합니다." + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"봉인",
         "desc":"모든 적을 봉인시켜 대부분의 마법 공격을 사용할 수 없게 합니다. 단일 적을 대상으로 더 강력한 봉인 효과를 걸 수도 있습니다." + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"제네시스",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 신성 피해를 입힙니다. 모든 아군에게 부활 또는 자동 부활 상태를 부여합니다. \n • 대기 플레이어들에게도 적용됩니다. " + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"세븐스 헤븐",
         "desc":LIMIT_BREAK + "모든 아군의 체력과 부정적 상태 이상을 치유하고 공격력, 마법 공격력, 방어력과 마법 방어력을 증가시킵니다. \n • 대기 플레이어들에게도 적용됩니다. \n • 나탈리에게 귀여움 상태를 부여합니다."
      };
      
      public static var pistolwhip:Object = {
         "name":"일반 공격",
         "desc":"기초적인 근접 공격으로 단일 대상을 두 번 타격합니다." + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"저격",
         "desc":"매우 높은 명중률로 단일 대상을 저격합니다." + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"더블 샷",
         "desc":"단일 대상을 두 번 사격합니다." + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"전탄발사",
         "desc":"단일 대상을 여섯 번 사격하는 최상급 공격입니다." + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"플레임 샷",
         "desc":"단일 대상을 타격하는 기초 화염 공격입니다." + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"플레임 버스트",
         "desc":"모든 적을 타격하는 상급 화염 공격입니다." + ALTERNATIVE_ONE + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var bullethell:Object = {
         "name":"불릿 헬",
         "desc":"단일 대상에게 집중된 최상급 화염 공격입니다. 다른 적들은 1/3의 피해를 입습니다." + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"플라즈마 샷",
         "desc":"단일 대상을 타격하는 기초 번개 공격입니다." + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"플라즈마 웨이브",
         "desc":"모든 적을 타격하는 상급 번개 공격입니다." + ALTERNATIVE_ONE + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmafield:Object = {
         "name":"플라즈마 필드",
         "desc":"단일 대상에게 집중된 최상급 번개 공격입니다. 다른 적들은 1/3의 피해를 입습니다. " + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"다크 샷",
         "desc":"단일 대상을 타격하는 기초 어둠 공격입니다." + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"중력파",
         "desc":"모든 적을 타격하는 상급 어둠 공격입니다." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var antimatterflux:Object = {
         "name":"반물질 방출",
         "desc":"단일 대상에게 집중된 최상급 어둠 공격입니다. 다른 적들은 1/3의 피해를 입습니다." + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"생화학 가스",
         "desc":"모든 적을 강하게 중독시키고 소량의 생체 마법 피해를 입힙니다." + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"정밀폭격",
         "desc":"단일 대상에게 대량의 폭파 피해를 입힙니다." + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"융단폭격",
         "desc":"모든 적에게 대량의 폭파 피해를 입힙니다." + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"M.O.A.B",
         "desc":"모든 적에게 굉장한 폭파 피해를 입힙니다. 매우 긴 재사용 대기시간을 가집니다." + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"메디킷",
         "desc":"아군을 치유하고 부정적인 상태 이상을 제거합니다. " + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"구호 지원",
         "desc":"모든 아군을 치유하고 부정적인 상태 이상을 제거합니다. " + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"중기관포 난사",
         "desc":"모든 적에게 폭파 피해를 입힙니다." + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"장갑 파쇄",
         "desc":"단일 대상을 무기로 내려찍어 디스펠합니다." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"파괴광선",
         "desc":"두 턴으로 나뉘어 사용됩니다. 처음 사용 시 충전 상태를 부여하며, 두 번째 사용 시 발사합니다. 모든 적에게 대량의 마법 피해를 입힙니다." + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"전술핵",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 화염 마법 피해를 입힙니다. 모든 적과 아군에게 화상을 입힙니다." + HIGH_ACC + "\n • 5턴 간 날씨를 방사능으로 교체합니다. "
      };
      
      public static var oblivion:Object = {
         "name":"궤멸",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 폭파 물리 피해를 입힙니다. 랜스의 탱크를 파괴하지만, 예비 탱크가 남아돈다는 듯합니다." + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"일반 공격",
         "desc":"기초적인 근접 공격으로 적을 베어 가릅니다." + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"활 후려치기",
         "desc":"적 대상을 활로 후려쳐 항복을 유도합니다. 강한 적도 항복시킬 수 있습니다." + WEP_EFFECTS + "\n • 이 스킬은 적을 쓰러뜨리지 않습니다."
      };
      
      public static var gust:Object = {
         "name":"거스트",
         "desc":"단일 대상을 타격하는 기초 바람 마법입니다." + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"휠윈드",
         "desc":"단일 대상을 타격하는 상급 바람 마법입니다." + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"허리케인",
         "desc":"모든 적을 타격하는 최상급 바람 마법입니다." + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"목재",
         "desc":"단일 대상을 타격하는 기초 대지 공격입니다." + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"나무 함정",
         "desc":"단일 대상을 여러 번 타격하는 최상급 대지 공격입니다." + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"칼날 이파리",
         "desc":"단일 대상을 두 번 타격하는 기초 생체 공격입니다." + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"잎날가르기",
         "desc":"모든 적을 여러 번 타격하는 최상급 생체 공격입니다." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"블레싱 애로우",
         "desc":"단일 대상을 타격하는 상급 신성 공격입니다." + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"프리징 애로우",
         "desc":"단일 대상을 타격하는 상급 얼음 공격입니다." + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"아쿠아 애로우",
         "desc":"단일 대상을 타격하는 상급 물 공격입니다." + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"니트로 애로우",
         "desc":"단일 대상을 타격하는 상급 폭파 공격입니다." + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"스파크 애로우",
         "desc":"단일 대상을 타격하는 상급 번개 공격입니다." + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"천상의 포화",
         "desc":"최상급 신성 공격입니다." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"빙결의 폭풍",
         "desc":"최상급 얼음 공격입니다." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"물줄기 빗발",
         "desc":"최상급 물 공격입니다." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"폭발성 공습",
         "desc":"최상급 폭파 공격입니다." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"번개 소나기",
         "desc":"최상급 번개 공격입니다." + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"피어싱 샷",
         "desc":"매우 높은 명중률로 단일 대상을 사격합니다." + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"콤보 샷",
         "desc":"강력하고 정확한 다수의 화살을 동시에 발사합니다." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"애로우 레인",
         "desc":"수많은 화살을 쏘아 올려 모든 적을 여러 번 타격합니다." + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"생기",
         "desc":"아군을 치유하는 기초 치유 마법입니다."
      };
      
      public static var remedy:Object = {
         "name":"재활",
         "desc":"아군을 치유하고 축복 상태를 부여하는 상급 치유 마법입니다."
      };
      
      public static var motherearth:Object = {
         "name":"대지모신",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 생체 마법 피해를 입히고 중독시킵니다. \n • 대기 플레이어를 포함한 모든 아군을 축복합니다." + HIGH_ACC + "\n • 5턴 간 날씨를 맑게 합니다."
      };
      
      public static var mightyoak:Object = {
         "name":"참나무 거상",
         "desc":LIMIT_BREAK + "강력한 연속 공격으로 모든 적에게 굉장한 대지 물리 피해를 입힙니다." + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"일반 공격",
         "desc":"빠른 뒤치기로 적 대상을 찌릅니다." + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"소드 플레이",
         "desc":"4번의 검격으로 적을 베는 기초 공격입니다." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"소드 블리츠",
         "desc":"11번의 검격으로 적을 찢어발기는 최상급 공격입니다." + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"신속 베기",
         "desc":"모든 적을 타격하는 날렵한 검격입니다." + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"나인 라이브즈",
         "desc":"모든 아군을 치유하고 자동 부활 상태를 부여합니다. 사망한 아군을 부활시킵니다.  매우 긴 재사용 대기시간을 가집니다." + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"스타 블래스트",
         "desc":"모든 적에게 무속성 마법 피해를 입힙니다. 매우 긴 재사용 대기시간을 가집니다." + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"점프 공격",
         "desc":"기초 근접 공격입니다." + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"소드 댄스",
         "desc":"상급 근접 공격입니다." + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"파이널 커터",
         "desc":"최상급 근접 공격입니다." + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"그림자 검격",
         "desc":"상급 어둠 공격입니다." + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"황혼베기 검무",
         "desc":"최상급 어둠 공격입니다." + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"성스러운 검격",
         "desc":"상급 신성 공격입니다." + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"신성베기 검무",
         "desc":"최상급 신성 공격입니다." + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"천둥의 검격",
         "desc":"상급 번개 공격입니다." + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"번개베기 검무",
         "desc":"최상급 번개 공격입니다." + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"미풍의 검격",
         "desc":"상급 바람 공격입니다." + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"폭풍베기 검무",
         "desc":"최상급 바람 공격입니다." + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"거품의 검격",
         "desc":"상급 물 공격입니다." + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"격류베기 검무",
         "desc":"최상급 물 공격입니다." + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"스시 캣",
         "desc":"통통 튀어 다니며 무작위 적을 3번 공격한 후, 가장 큰 피해를 입은 플레이어를 2번 치유합니다." + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"스시 캣!",
         "desc":"통통 튀어 다니며 무작위 적을 3번 공격한 후, 가장 큰 피해를 입은 플레이어를 2번 치유합니다. \n • 치유된 플레이어에게 행운 상태를 부여합니다." + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"격노",
         "desc":"적 또는 아군을 격노시킵니다. 격노한 대상은 무차별적으로 강력하게 공격합니다. " + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"타오르는 분노",
         "desc":"모든 아군을 격노시킵니다. 단일 적 또는 아군을 대상으로 더 강력한 격노 상태를 부여할 수도 있습니다. " + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"애정",
         "desc":"아군에게 귀여움 상태를 부여합니다. 귀여운 대상은 적의 단일 대상 공격의 대상이 되지 않습니다. " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"친애의 기운",
         "desc":"모든 아군에게 귀여움 상태를 부여합니다. 단일 아군을 대상으로 더 강력한 귀여움 상태를 부여할 수도 있습니다. " + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"만물의 창조자",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 신성 마법 피해를 입힙니다. \n • 대기 플레이어를 포함한 모든 아군에게 행운 상태를 부여합니다." + HIGH_ACC + "\n • 5턴 간 날씨를 맑게 합니다."
      };
      
      public static var thedestroyer:Object = {
         "name":"세계의 파괴자",
         "desc":LIMIT_BREAK + "강력한 연속 공격으로 모든 적에게 굉장한 어둠 물리 피해를 입힙니다." + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"눈토끼",
         "desc":"모든 적을 타격하는 얼음 공격입니다." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"눈고양이",
         "desc":"모든 적을 타격하는 상급 얼음 공격입니다. 연계를 통해 빙결 효과를 준비할 수 있습니다." + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"가시덩굴",
         "desc":"단일 대상을 타격하는 생체 공격입니다." + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"거대 가시덩굴",
         "desc":"단일 대상을 여러 번 타격하는 상급 생체 공격입니다." + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"에너지",
         "desc":"단일 대상을 타격하는 기초 폭파 마법입니다." + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"에너지 폭탄",
         "desc":"단일 대상을 타격하는 상급 폭파 마법입니다." + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"에너지 연쇄",
         "desc":"모든 적을 타격하는 최상급 폭파 마법입니다." + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"버블",
         "desc":"단일 대상을 타격하는 기초 물 마법입니다." + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"소용돌이",
         "desc":"단일 대상을 타격하는 상급 물 마법입니다." + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"버블 블래스트",
         "desc":"모든 적을 타격하는 최상급 물 마법입니다." + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"감전",
         "desc":"단일 대상을 타격하는 상급 번개 공격입니다." + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"고전압",
         "desc":"단일 대상을 타격하는 최상급 번개 공격입니다." + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"킬러 포탄",
         "desc":"단일 대상을 타격하는 상급 폭파 공격입니다." + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"초대형 포탄",
         "desc":"단일 대상을 타격하는 최상급 폭파 공격입니다." + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"강풍",
         "desc":"단일 대상을 타격하는 상급 바람 공격입니다." + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"태풍",
         "desc":"단일 대상을 타격하는 최상급 바람 공격입니다." + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"헤비 메탈",
         "desc":"모든 적에게 바람 마법 피해를 입히고 모든 아군을 치유합니다." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"에어",
         "desc":"단일 대상을 타격하는 기초 바람 마법입니다." + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"에어웨이브",
         "desc":"단일 대상을 타격하는 상급 바람 마법입니다." + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"쇼크웨이브",
         "desc":"모든 적을 타격하는 최상급 바람 마법입니다." + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"톱날 투하",
         "desc":"단일 대상을 타격하는 상급 무속성 공격입니다." + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"톱날 분쇄",
         "desc":"모든 적을 타격하는 최상급 무속성 공격입니다." + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"가이아 시드",
         "desc":"단일 대상을 타격하는 기초 대지 마법입니다." + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"가이아 블룸",
         "desc":"단일 대상을 타격하는 상급 대지 마법입니다." + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"가이아 블라섬",
         "desc":"모든 적을 타격하는 최상급 대지 마법입니다." + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"회오리불꽃",
         "desc":"모든 적을 타격하는 상급 화염 마법입니다." + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"정화의 불꽃",
         "desc":"단일 대상의 마법 공격력을 저하시키는 신성 마법입니다." + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"스크리머",
         "desc":"모든 적의 공격력을 저하시키는 어둠 마법입니다." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"힐",
         "desc":"아군을 회복시키는 기초 치유 마법입니다 ." + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"힐 모어",
         "desc":"모든 아군을 회복시키는 상급 치유 마법입니다. 단일 아군을 대상으로 더 높은 양을 회복시킬 수도 있습니다." + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"리저렉션",
         "desc":"사망한 아군을 부활시키거나, 살아있는 아군에게 자동 부활 상태를 부여합니다. "
      };
      
      public static var purify:Object = {
         "name":"세례",
         "desc":"모든 적 또는 아군의 부정적 상태이상을 제거합니다. 젖음과 마름 같은 중립적 상태는 포함하지 않습니다. " + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"정조준",
         "desc":"아군의 명중률을 증가시키고 행운 상태를 부여합니다. " + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"수호",
         "desc":"대기 플레이어를 포함해, 모든 아군의 방어력을 증가시킵니다." + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"배리어",
         "desc":"대기 플레이어를 포함해, 모든 아군의 마법 방어력을 증가시킵니다." + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"신속",
         "desc":"대기 플레이어를 포함해, 모든 아군의 회피율을 증가시킵니다. 출전 플레이어의 장막 효과를 제거합니다." + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"천상의 가호",
         "desc":"아군의 방어력과 마법 방어력을 증가시킵니다. " + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"디스펠",
         "desc":"모든 적을 디스펠하여 버프와 긍정적 상태이상을 제거합니다. 아군 대상으로 사용 시 아군의 디버프를 제거합니다. " + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"섬광탄",
         "desc":"모든 적의 명중률을 저하시킵니다." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"그물",
         "desc":"모든 적의 회피율을 저하시킵니다." + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"갑각 연화",
         "desc":"모든 적의 방어력을 저하시킵니다." + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"쇠약",
         "desc":"모든 적의 마법 방어력을 저하시킵니다." + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"기가 드릴",
         "desc":"단일 대상을 타격하는 상급 대지 공격입니다. 대상이 방어력과 마법 방어력 버프가 있을 시, 그리고 방어 상태일 시 피해량이 크게 증폭됩니다. " + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"앙코르",
         "desc":"아군에게 추가 턴을 부여합니다. 자신을 대상으로는 의미 없는 스킬입니다." + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"폭죽",
         "desc":"적 전체에게 불운 상태를 부여하며, 대기 플레이어를 포함한 아군 전체에게 행운 상태를 부여합니다." + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"절대영도",
         "desc":LIMIT_BREAK + "모든 적에게 대량의 얼음 마법 피해를 입히고 회피율을 저하시키며 빙결시킵니다. \n • 모든 아군의 재사용 대기시간을 초기화합니다." + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"쓰나미",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 물 물리 또는 마법 피해를 입히고 젖게 합니다. \n • 피해 타입은 가장 높은 능력치에 따라 결정됩니다." + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"초신성",
         "desc":LIMIT_BREAK + "모든 적과 아군에게 굉장한 화염 마법 피해를 입히고 화상을 입힙니다. \n • 회피할 수 없습니다."
      };
      
      public static var deathmetal:Object = {
         "name":"데스 메탈",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 바람 마법 피해를 입힙니다. 대기 플레이어를 포함한 모든 아군의 체력을 회복하고 기합 상태를 부여합니다." + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"악즉참",
         "desc":LIMIT_BREAK + "매우 높은 확률로 모든 적을 즉사시킵니다. 보스들에게는 잘 먹히지 않고 명중률이 낮습니다."
      };
      
      public static var ion:Object = {
         "name":"이온 캐논",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 번개 마법 피해를 입힙니다. 적을 기절시킬 확률이 있습니다. \n • 랜스의 파괴광선을 충전합니다." + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"블랙홀",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 어둠 마법 피해를 입히고 무겁게 만듭니다. 사용자를 즉사시킵니다." + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"잠재파워",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 물리 또는 마법 피해를 입힙니다. \n • 피해 타입은 가장 높은 능력치에 따라 결정됩니다." + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "뼈 무더기";
      
      public static var bonestar:String = "본 스타";
      
      public static var groundblade:String = "사자의 검";
      
      public static var fallingstar:String = "폴링 스타";
      
      public static var firerock:String = "화산암 투하";
      
      public static var stalactite:String = "종유석";
      
      public static var stalactite2:String = "종유석들";
      
      public static var fume:String = "그을린 연기";
      
      public static var eruption:String = "분화";
      
      public static var scald:String = "끓는 연기";
      
      public static var rain:String = "소나기";
      
      public static var sandstorm:String = "모래폭풍";
      
      public static var hail:String = "우박";
      
      public static var nitro:String = "니트로 번";
      
      public static var acid:String = "산성액";
      
      public static var bamboo:String = "대나무";
      
      public static var bamboo2:String = "대나무 함정";
      
      public static var bluebolt:String = "블루 볼트";
      
      public static var deepfreeze:String = "딥 프리즈";
      
      public static var wafer:String = "웨하스";
      
      public static var present:String = "선물 폭탄";
      
      public static var plasmacage:String = "플라즈마 결계";
      
      public static var tankcannon:String = "전차 주포";
      
      public static var candycanes:String = "캔디 케인";
      
      public static var bonefish:String = "본 피쉬";
      
      public static var riceball:String = "주먹밥 폭탄";
      
      public static var mushroom:String = "버섯포자";
      
      public static var lifedrain:String = "생명력 흡수";
      
      public static var smokepuff:String = "연막탄";
      
      public static var confusion:String = "혼란";
      
      public static var ink:String = "먹물탄";
      
      public static var chocolate:String = "초콜릿 덩이";
      
      public static var tentacles:String = "촉수";
      
      public static var slowdown:String = "감속";
      
      public static var speedup:String = "가속";
      
      public static var poisonroot:String = "독성 뿌리";
      
      public static var burningroot:String = "화염 뿌리";
      
      public static var searoot:String = "바다 뿌리";
      
      public static var bombblast:String = "폭발";
      
      public static var bigblast:String = "대폭발";
      
      public static var cactus:String = "선인장";
      
      public static var cacti:String = "선인장들";
      
      public static var spark:String = "스파크";
      
      public static var bigspark:String = "대형 스파크";
      
      public static var talisman:String = "부적 봉인";
      
      public static var ember:String = "불씨";
      
      public static var fireblast2:String = "화염 폭발";
      
      public static var firecrystals:String = "불꽃 수정";
      
      public static var zephyrcrystals:String = "바람 수정";
      
      public static var frost:String = "급속 냉각";
      
      public static var rockslide:String = "암벽 붕괴";
      
      public static var avalanche:String = "산사태";
      
      public static var blackspikes:String = "검은 가시";
      
      public static var stonefist:String = "돌주먹";
      
      public static var spiderweb:String = "거미줄";
      
      public static var spiders:String = "거미떼";
      
      public static var geometry2:String = "공간 왜곡";
      
      public static var geometry3:String = "왜곡장";
      
      public static var sacrifice:String = "희생";
      
      public static var bigroot:String = "거대한 뿌리";
      
      public static var seabomb:String = "기뢰";
      
      public static var fairy:String = "요정 폭탄";
      
      public static var fly:String = "날파리 폭탄";
      
      public static var starpunch:String = "스타 버스트";
      
      public static var darken:String = "투명화";
      
      public static var lighten:String = "인챈트";
      
      public static var SlimeChocolate:String = "단일 대상에게 초코 덩어리를 뱉어 대지 피해를 입히고 명중률을 저하시킵니다.";
      
      public static var SlimeIcecream:String = "단일 대상에게 기초 얼음 마법을 사용해 냉각시킵니다.";
      
      public static var SlimeSand:String = "단일 대상에게 기절 확률이 있는 기초 생체 마법을 사용합니다.";
      
      public static var SlimeLava:String = "단일 대상에게 기초 화염 마법을 사용해 마르게 합니다.";
      
      public static var SlimeMouse:String = "단일 대상을 기절시키는 번개 마법을 사용합니다.";
      
      public static var SlimeWater:String = "단일 대상에게 처참하게 약한 물 공격을 사용합니다.";
      
      public static var SlimeMud:String = "단일 대상에게 기초 생체 마법을 사용합니다.";
      
      public static var SlimeBunny:String = "대기 플레이어를 포함한 모든 아군에게 재생 상태를 부여합니다.";
      
      public static var SpriteFire:String = "5턴 간 날씨를 화산재로 교체합니다.";
      
      public static var SpriteIce:String = "5턴 간 날씨를 눈보라로 교체합니다.";
      
      public static var SpriteThunder:String = "5턴 간 날씨를 정전기로 교체합니다.";
      
      public static var SpriteRock:String = "5턴 간 날씨를 지진으로 교체합니다.";
      
      public static var SpriteWind:String = "5턴 간 날씨를 태풍으로 교체합니다.";
      
      public static var ChomperLeafy:String = "5턴 간 날씨를 산들바람으로 교체합니다.";
      
      public static var ChomperSeaweed:String = "5턴 간 날씨를 비로 교체합니다.";
      
      public static var ChomperMagma:String = "5턴 간 날씨를 화창으로 교체합니다.";
      
      public static var ChomperMutant:String = "5턴 간 날씨를 산성비로 교체합니다.";
      
      public static var CreepThorny:String = "적을 기절시킬 확률이 있는 찌르기를 사용합니다.";
      
      public static var CreepIcicle:String = "적을 냉각시킬 확률이 있는 찌르기를 사용합니다.";
      
      public static var CreepHermit:String = "단일 대상을 베어 높은 무속성 피해를 입힙니다.";
      
      public static var CreepGreen:String = "단일 대상에게 3번 튕기며 강력한 무속성 피해를 입힙니다." + RETARGETS_2;
      
      public static var CreepRed:String = "단일 대상에게 뛰어들어 강력한 바람 피해를 입히고 불안정하게 만듭니다.";
      
      public static var CreepBlue:String = "단일 대상에게 뛰어들어 강력한 폭파 피해를 입히고 기절시킵니다.";
      
      public static var Defender1:String = "모든 적에게 불안정 확률이 있는 강력한 번개 공격을 사용합니다.";
      
      public static var Defender2:String = "단일 대상을 적실 수 있는 강력한 물 공격을 사용합니다. ";
      
      public static var DogFriend:String = "모든 아군에게 귀여움 상태를 부여해 적들이 손쉽게 공격할 수 없게 합니다.";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "단일 대상에게 뛰어들어 화염 피해를 입히고 화상을 입힙니다.";
      
      public static var DogWolf:String = "단일 대상에게 뛰어들어 얼음 피해를 입히고 빙결시킵니다.";
      
      public static var DogZap:String = "적들의 사이로 뛰어들어 강력한 번개 공격을 합니다. 적들을 불안정하게 만들 확률이 있습니다.";
      
      public static var DogMage:String = "모든 적을 사악한 신성 마법으로 공격해 저주합니다.";
      
      public static var ChibiKnightUltra:String = "대기 플레이어를 포함한 모든 아군의 공격력을 증가시키고 적 대상을 여러 번 공격합니다." + RETARGETS_2;
      
      public static var BushGreen:String = "소리를 질러 적들의 공격력을 약간 저하시킵니다.";
      
      public static var BushRed:String = "소리를 질러 적들의 방어력을 약간 저하시킵니다.";
      
      public static var BushDark:String = "소리를 질러 적들의 회피율을 약간 저하시킵니다.";
      
      public static var BushMud:String = "소리를 질러 적들의 마법 공격력을 약간 저하시킵니다.";
      
      public static var BushSand:String = "소리를 질러 적들의 마법 방어력을 약간 저하시킵니다.";
      
      public static var GolemTopaz:String = "단일 대상에게 기절 확률이 있는 강력한 번개 연속 공격을 합니다.";
      
      public static var GolemPearl:String = "모든 적을 강력한 얼음 마법으로 냉각시키고, 5턴 간 날씨를 우박으로 교체합니다.";
      
      public static var GolemAmethyst:String = "단일 대상에게 불안정 확률이 있는 강력한 무속성 연속 공격을 합니다.";
      
      public static var FishSteam:String = "초음속으로 적들을 들이받습니다. 적들을 가볍게 할 확률이 있습니다.";
      
      public static var FishGold:String = "신성 마법 레이저로 적들을 마르게 합니다.";
      
      public static var FishJet:String = "기관총을 적들에게 난사해 폭파 피해를 입힙니다.";
      
      public static var HandSkeleton:String = "대기 플레이어를 포함한 모든 아군에게 행운 상태를 부여합니다.";
      
      public static var HandZombie:String = "모든 적을 파멸시켜 3턴 이후 즉사하게 만듭니다.";
      
      public static var HandMagma:String = "모든 아군에게 격노 상태를 부여해 무차별적으로 공격하게 만듭니다.";
      
      public static var FlybotBlue:String = "모든 아군의 버프를 반전합니다.";
      
      public static var FlybotYellow:String = "모든 적의 버프를 반전합니다.";
      
      public static var FlybotRed:String = "단일 적 또는 아군의 버프를 반전합니다.";
      
      public static var FallenLost:String = "대기 플레이어를 포함한 모든 아군에게 기합 상태를 부여하고 적 대상을 바람 공격으로 베어 가릅니다.";
      
      public static var FallenCrucified:String = "단일 대상을 즉사 확률이 있는 성스러운 검격으로 공격합니다.";
      
      public static var FallenDrowned:String = "모든 출전 플레이어의 디버프들을 제거합니다.";
      
      public static var FallenBurned:String = "모든 적을 화염 공격으로 마르게 하고, 5턴 간 날씨를 모래폭풍으로 교체합니다.";
      
      public static var FallenBeheaded:String = "대기 플레이어를 포함한 모든 아군에게 용기 상태를 부여하고 적 대상을 어둠 공격으로 찌릅니다.";
      
      public static var PixelSlime:String = "단일 대상에게 약한 생체 마법을 사용해 탈진시킵니다.";
      
      public static var PixelBush:String = "단일 대상에게 약한 화염 마법을 사용해 마르게 합니다.";
      
      public static var PixelBat:String = "단일 대상에게 약한 어둠 마법을 사용해 불운하게 만듭니다.";
      
      public static var PixelIdol:String = "단일 대상에게 약한 폭파 공격을 사용해 약화시킵니다.";
      
      public static var MonolithViking:String = "모든 아군에게 가속 상태를 부여해 추가 턴을 줍니다.";
      
      public static var MonolithAncient:String = "모든 아군에게 방어 상태를 부여해 강력한 공격을 막을 준비를 합니다.";
      
      public static var MonolithCosmic:String = "전장을 압도적인 어둠의 격류로 뒤덮어 모든 적에게 굉장한 어둠 피해를 입힙니다.";
      
      public static var IdolGem:String = "대기 플레이어를 포함한 모든 아군에게 가벼움 상태를 부여해 대지 피해로부터 보호합니다.";
      
      public static var IdolStone:String = "대기 플레이어를 포함한 모든 아군에게 마름 상태를 부여해 얼음과 번개 피해로부터 보호합니다.";
      
      public static var IdolMetal:String = "대기 플레이어를 포함한 모든 아군에게 무거움 상태를 부여해 바람 피해로부터 보호합니다.";
      
      public static var IdolWood:String = "대기 플레이어를 포함한 모든 아군에게 축복 상태를 부여해 부정적 상태 이상으로부터 보호합니다.";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "모든 아군에게 인챈트 상태를 부여해 마법 피해로부터 보호하지만, 물리 피해에 노출시킵니다.";
      
      public static var MirrorDemon:String = "모든 아군에게 투명 상태를 부여해 물리 피해로부터 보호하지만, 마법 피해에 노출시킵니다.";
      
      public static var MirrorHaunted:String = "단일 대상을 물어뜯어 강력한 어둠 공격과 함께 적을 저주합니다.";
      
      public static var MammothWooly:String = "단일 대상에게 굉장한 물리 피해를 주며 깔아뭉개고 나머지 적들에게 1/3의 피해를 줍니다." + equips.MAY_STUN;
      
      public static var MammothCamel:String = "대기 플레이어를 포함한 모든 아군의 마법 방어력을 증가시키고 모든 적에게 대지 공격을 합니다.";
      
      public static var MammothWar:String = "대기 플레이어를 포함한 모든 아군의 방어력을 증가시키고 모든 적에게 연발 포격을 합니다." + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "단일 대상에게 먹물을 뿌려 굉장한 어둠 피해를 입히고 명중률을 저하시키며 투명화시킵니다.";
      
      public static var SquidPurple:String = "모든 적의 명중률을 저하시킵니다. 적들을 파멸시킬 확률이 있습니다.";
      
      public static var SquidLime:String = "모든 적을 강력하게 찔러 완벽하게 기절시킵니다.";
      
      public static var Underlegs:String = "모든 적을 디스펠 한 후, 휘몰아치는 연계 공격으로 적들을 섬멸합니다.";
      
      public static var SlimeBigSand:String = "단일 대상에게 기절 확률이 있는 강력한 생체 공격을 사용합니다.";
      
      public static var SlimeBigLava:String = "단일 대상에게 강력한 화염 공격으로 심한 화상을 입힙니다.";
      
      public static var SlimeBigMud:String = "모든 적에게 기절 확률이 있는 버섯포자 공격을 사용합니다.";
      
      public static var SlimeBigIcecream:String = "모든 적을 냉각시켜 얼음과 물 공격을 지원합니다.";
      
      public static var SlimeBigChocolate:String = "모든 적에게 초콜릿을 토해내 대지 피해를 입히고 무겁게 합니다.";
      
      public static var WormPutrid:String = "단일 대상에게 끈끈이 공격을 사용해 회피율을 크게 저하시킵니다.";
      
      public static var WormScaly:String = "대기 플레이어를 포함한 모든 아군에게 젖음 상태를 부여해 화염 피해로부터 보호합니다.";
      
      public static var WormFuzzy:String = "적을 약하게 깨물어 전염성 질병을 옮깁니다.";
      
      public static var WormCutie:String = "젖음, 냉각, 마름, 가벼움, 무거움, 인챈트와 투명 등의 중립 상태이상 효과를 제거합니다.";
      
      public static var WraithIce:String = "즉사 확률이 있는 강력한 얼음 송곳으로 적을 찢어버립니다";
      
      public static var WraithFire:String = "지옥의 업화로 적을 태워 대량의 피해를 입히고 격노시킵니다. \n • 대상이 살아남지 않게 하는 게 좋습니다.";
      
      public static var WraithSteel:String = "불안정 확률이 있는 폭파 공격으로 적의 방어력을 저하시킵니다.";
      
      public static var WraithLeaf:String = "연속된 생체 공격으로 적의 마법 방어력을 저하시키고 중독시킵니다.";
      
      public static var WraithMaster:String = "단일 대상에게 강력한 어둠 마법을 사용해 봉인시킵니다.";
      
      public static var Glitch2:String = "???-?eII ITEM NOT FOUND! ### \nERROR: 0x000002";
      
      public static var Glitch1:String = "??-//WARNING: WARANTY ##VOID## IF SEAL ##BROKEN##!! 0?-//??";
      
      public static var GloopStone:String = "적 대상을 투명화시켜 모든 마법 피해를 두 배로 받게 합니다.";
      
      public static var GloopCrystal:String = "적 대상을 인챈트해 모든 물리 피해를 두 배로 받게 합니다.";
      
      public static var GloopAsh:String = "대기 플레이어를 포함한 모든 아군에게 용기 상태를 부여해 치명타 확률을 높이고 치명타로부터 보호합니다.";
      
      public static var GloopWood:String = "대기 플레이어를 포함한 모든 아군에게 기합 상태를 부여해 단타 공격으로부터 보호합니다.";
      
      public static var HydraZombie:String = "모든 적을 즉사시킵니다. 실패 시, 물리 어둠 데미지를 입힙니다.";
      
      public static var HydraMagma:String = "강력한 화염 마법으로 적들에게 화상을 입힙니다.";
      
      public static var HydraIce:String = "적을 여러 번 물어뜯어 굉장한 얼음 물리 피해를 입힙니다.";
      
      public static var DragonEarth:String = "모든 적의 마법 방어력을 크게 저하시킨 후, 치명적인 독을 뿌려 대량의 생체 마법 피해를 입힙니다.";
      
      public static var DragonSky:String = "모든 적의 방어력을 크게 저하시킨 후, 깃털의 폭풍을 일으켜 대량의 바람 물리 피해를 입힙니다.";
      
      public static var DragonSea:String = "모든 적의 공격력을 크게 저하시킨 후, 거대한 물의 충격파로 대량의 물 마법 피해를 입힙니다.";
      
      public static var DragonOmega:String = "모든 적의 마법 공격력을 크게 저하시킨 후, 성스러운 브레스로 대량의 신성 마법 피해를 입힙니다. 적들을 기절시킬 확률이 있습니다.";
      
      public static var BatBlood:String = "생체 공격으로 적의 체력을 흡수해 사용자를 회복시킵니다.";
      
      public static var BatSnow:String = "대기 플레이어를 포함한 모든 아군에게 냉기 상태를 부여해 생체 피해로부터 보호합니다.";
      
      public static var BatThunder:String = "모든 전방의 플레이어에게 매우 긴 혼란을 걸어 자동 전투를 시작합니다.  \n • 보스전에서는 사용하지 않는 게 좋습니다.";
      
      public static var BatBone:String = "모든 아군에게 내성을 무시하고 질병 상태를 부여합니다.";
      
      public static var BearBrown:String = "적에게 무자비한 무속성 연속 공격을 사용합니다. 사용자의 체력이 낮거나 사망한 아군이 있을 시 위력이 증가합니다. \n • 최대 위력은 1000입니다.";
      
      public static var BearGrolar:String = "모든 적을 빙결 확률이 있는 눈사태 공격으로 묻어버립니다.";
      
      public static var BearPanda:String = "모든 적을 중독 확률이 있는 생체 공격으로 뚫어버립니다.";
      
      public static var BitIce:String = "배리어 스킬을 사용해, 대기 플레이어를 포함한 모든 아군의 마법 방어력을 증가시킵니다.";
      
      public static var BitThunder:String = "수호 스킬을 사용해, 대기 플레이어를 포함한 모든 아군의 방어력을 증가시킵니다. ";
      
      public static var BitHoly:String = "모든 아군을 치유하는 강력한 회복 스킬을 사용합니다.";
      
      public static var BitFire:String = "적에게 달려들어 방어력을 저하시키는 화염 공격을 사용합니다. 화상을 입힐 확률이 있습니다.";
      
      public static var BitWind:String = "적에게 달려들어 마법 방어력을 저하시키는 바람 공격을 사용합니다. 적을 기절시킬 확률이 있습니다.";
      
      public static var BitWater:String = "모든 적을 약한 물 공격으로 젖게 합니다. 번개와 얼음 공격을 지원합니다.";
      
      public static var BitPoison:String = "모든 적을 약한 생체 공격으로 중독시킵니다.";
      
      public static var BoulderCoral:String = "적에게 뛰어들어 물 피해를 입히고 불안정하게 만듭니다.";
      
      public static var BoulderMarble:String = "모든 적에게 바람 마법 피해를 입히고 봉인시킵니다.";
      
      public static var BoulderObsidian:String = "적들에게 d20을 던져 무작위한 화염 피해를 입히고 화상을 입힙니다";
      
      public static var BoulderDirt:String = "모든 적에게 대지 물리 피해를 입히고 탈진시킵니다.";
      
      public static var BoulderSandstone:String = "단일 대상에게 뛰어들어 대량의 대지 물리 피해를 입힙니다.";
      
      public static var CatNinja:String = "아군에게 추가 턴을 부여합니다.";
      
      public static var CatSniper:String = "적의 머리를 조준하고 쏩니다. 운이 좋으면 적을 즉사시킬 수 있습니다";
      
      public static var CatWizard:String = "간단한 치유 마법으로 아군을 회복시킵니다.";
      
      public static var CatBomber:String = "적에게 폭탄을 던져 폭파 피해를 입히고 불안정하게 만듭니다.";
      
      public static var CatWarrior:String = "무속성의 검격으로 적을 공격합니다.";
      
      public static var DollMatt:String = "아군의 공격력을 크게 증가시키고 축복 상태를 부여합니다.";
      
      public static var DollNatalie:String = "아군의 마법 공격력을 크게 증가시키고 기합 상태를 부여합니다.";
      
      public static var DollLance:String = "모든 적에게 불안정 확률이 있는 폭파 공격을 가합니다.";
      
      public static var DollAnna:String = "적을 꿰뚫는 생체 화살로 공격합니다. 대상이 방어력과 마법 방어력 버프가 있을 시, 그리고 방어 상태일 시 피해량이 크게 증폭됩니다.";
      
      public static var DollNoLegs:String = "으스스한 울음소리로 적들의 회피율을 크게 저하시키고 불운하게 만듭니다.";
      
      public static var BossCyclopsDesert:String = "강력한 연속 공격으로 적들에게 굉장한 폭파 피해를 입힙니다. 적들을 기절시킬 확률이 있습니다.";
      
      public static var BossCyclopsGlacial:String = "단일 대상을 강력한 얼음 공격으로 연타합니다. 다른 적들은 1/3의 피해를 입습니다. \n • 모든 적을 빙결시킬 확률이 있습니다. ";
      
      public static var BossCyclopsInfernal:String = "단일 대상을 강력한 화염 공격으로 연타합니다. 다른 적들은 1/3의 피해를 입습니다. \n • 모든 적에게 화상을 입힐 확률이 있습니다. ";
      
      public static var BossGolemWater:String = "모든 적을 압도적인 물 공격으로 강타합니다. 적들을 젖게 할 확률이 있습니다.";
      
      public static var BossGolemFire:String = "모든 적을 압도적인 화염 공격으로 강타합니다. 생존자들에게 화상을 입힙니다.";
      
      public static var BossNestCat:String = "대기 플레이어를 포함한 모든 아군의 마법 공격력을 증가시킨 후, 생체 피해를 입히는 이파리들로 적들을 찢어발깁니다. ";
      
      public static var BossNestNinja:String = "모든 적을 강력한 어둠의 마법으로 저주합니다.";
      
      public static var EvilMatt:String = "모든 적을 압도적인 대지 공격으로 박살 냅니다." + HIGH_CRITS;
      
      public static var EvilNatalie:String = "모든 적을 압도적인 신성 마법으로 강타합니다." + HIGH_CRITS;
      
      public static var EvilLance:String = "모든 적을 압도적인 폭파 마법으로 파괴합니다." + HIGH_CRITS;
      
      public static var EvilAnna:String = "모든 적을 압도적인 바람 마법으로 양단합니다." + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "세계 최강의 마법을 사용해, 모든 적에게 초월적인 무속성 피해를 입힙니다.";
      
      public static var WraithOrigami:String = "단일 대상을 강력한 무속성 공격으로 찢어발기고 디스펠시킵니다.";
      
      public static var GloopFab:String = "5턴 간 날씨를 벚꽃 만개로 교체합니다.";
      
      public static var CatSkeleton:String = "단일 대상을 뒤에서 찔러 어둠 속성 물리 피해를 입히고 최대치의 불운 상태이상을 부여합니다.";
      
      public static var HydraOrigami:String = "모든 적을 무속성 종이 검으로 베고 대기 플레이어를 포함한 모든 아군의 회피율을 증가시킵니다.";
      
      public static var Defender3:String = "모든 적을 강력한 충격파로 공격해 물리 어둠 피해를 입힙니다. \n • 언제나 치명타로 명중합니다.";
      
      public static var BearBlack:String = "단일 대상을 할퀴어 화염 속성 물리 피해를 입히고 최대치의 마름 상태이상을 부여합니다.";
      
      public static var GolemBone:String = "모든 적을 강력한 무속성 공격으로 꿰뚫고 일정 확률로 약화시킵니다.";
      
      public static var WormBook:String = "모든 아군의 명중률을 증가시킵니다.";
      
      public static var BossGigalith:String = "모든 적을 강력한 무속성 마법으로 공격하고 심각한 내상을 입혀 최대 체력을 서서히 낮춥니다.";
      
      public static var BossDevourer:String = "이 시뮬레이션을 종료합니다.";
      
      public static var SketchPapalotl:String = "모든 적을 강력한 무속성 물리 공격으로 찌릅니다. 이 공격은 적의 방어력 버프 효과를 무시합니다. (디버프는 무시하지 않습니다)";
      
      public static var SketchGuncat:String = "모든 적을 강력한 폭파 공격으로 박살냅니다. 피해의 절반은 물리 피해를, 절반은 마법 피해를 입힙니다. 이 공격은 적의 방어력 버프 효과를 무시합니다. (디버프는 무시하지 않습니다)";
      
      public static var SketchXolotl:String = "모든 적에게 무속성 물리 피해를 입히고 약화시킵니다. 이 공격은 적의 방어력 버프 효과를 무시합니다. (디버프는 무시하지 않습니다)";
      
      public static var SketchGlaurung:String = "모든 적을 바람 마법으로 공격해 디스펠시킵니다. 이 공격은 적의 방어력 버프 효과를 무시합니다. (디버프는 무시하지 않습니다)";
      
      public static var ArcadeGuoye:String = "모든 아군의 명중률을 크게 증가시킵니다.";
      
      public static var ArcadeTotom:String = "모든 아군을 완전히 회복시키고 디버프와 부정적 상태이상을 제거합니다.";
      
      public static var ArcadeChair:String = "모든 적의 마법 공격력을 크게 저하시키고 소량의 폭파 피해를 입힙니다.";
      
      public static var ArcadePumpkus:String = "처음 사용하면 아무 효과도 없지만, 같은 턴에 다시 사용 할 시 분노하여 무작위 적들에게 엄청난 물리 피해를 입힙니다.";
      
      public static var ArcadeGlob:String = "단일 대상에게 입냄새를 내뿜어 디스펠, 탈진, 저주, 약화, 불운과 장막 상태이상을 순서대로 부여합니다. 또한 소량의 무속성 마법 피해를 입힙니다.";
      
      public static var ArcadeSnek:String = "단일 대상을 깨물어 무속성 물리 피해를 입히고 최대치의 중독과 화상 상태이상을 부여합니다.";
      
      public static var ArcadeRobo:String = "단일 대상을 번개 속성 마법으로 공격하고 기절시키며 명중률을 크게 저하시킵니다.";
      
      public static var ArcadeBosh:String = "모든 적의 공격력을 크게 저하시킵니다.";
      
      public static var ArcadeTreagure:String = "무작위 적들에게 무작위 속성 피해를 입히고 무작위로 상태이상을 부여합니다. \n • 빙결, 내상, 기절, 봉인, 불안정, 파멸과 불운 상태이상을 부여할 수 있습니다.";
      
      public static var ArcadePhoenix:String = "모든 아군을 부활시키고, 이미 살아있는 대상에게는 자동 부활을 부여합니다.";
      
      public static var ArcadeMermaid:String = "대기 플레이어를 포함한 모든 아군의 회피율을 크게 증가시킵니다.";
      
      public static var ArcadeMaw:String = "모든 적을 치명적인 질병으로 감염시키고 소량의 생체 마법 피해를 입힙니다.";
      
      public static var ClassicSlime:String = "단일 대상에게 처참하게 약한 무속성 공격을 사용합니다.";
      
      public static var ClassicSlimeKing:String = "강력한 회복 마법을 시전해 대기 플레이어를 포함한 모든 아군을 회복시킵니다. \n • 또한, 부정적 상태이상을 제거합니다.";
      
      public static var ClassicTree:String = "모든 적에게 낮은 생체 피해를 입히고 일정 확률로 잠시 기절시킵니다.";
      
      public static var ClassicEyeball:String = "모든 적을 단순한 무속성 마법으로 공격합니다.";
      
      public static var ClassicBeholder:String = "촉수로 불쌍한 먹잇감을 공격해 생체 피해를 입히고 크게 중독시킵니다.";
      
      public static var ClassicWaspRed:String = "단일 대상의 마법 공격력을 크게 저하시킵니다.";
      
      public static var ClassicWaspBlack:String = "단일 대상의 공격력을 크게 저하시킵니다.";
      
      public static var ClassicSandworm:String = "모든 적에게 위액을 토해내 생체 피해를 입히고 공격력, 마법 공격력, 방어력과 마법 방어력을 저하시킵니다.";
      
      public static var ClassicEaterIce:String = "모든 적을 냉기 브레스로 공격합니다. 피해량은 낮지만 높은 확률로 적을 빙결시킵니다.";
      
      public static var ClassicEaterFire:String = "모든 적을 화염 브레스로 공격해 마르게 합니다.";
      
      public static var ClassicClayBlue:String = "단일 대상을 바람 마법으로 공격하고 최대치의 가벼움 상태이상을 부여합니다.";
      
      public static var ClassicClayRed:String = "단일 대상에게 물리 대지 피해를 입히고 최대치의 무거움 상태이상을 부여합니다.";
      
      public static var ClassicClayDark:String = "단일 대상을 어둠 마법으로 공격해 파멸 상태이상을 부여하고 공격력, 마법 공격력, 방어력과 마법 방어력을 저하시킵니다.";
      
      public static var ClassicClayLight:String = "회복 마법을 시전해 대기 플레이어를 포함한 모든 아군을 회복시킵니다.";
      
      public static var ClassicProtector:String = "모든 적을 강력한 번개 레이저로 공격합니다. 살아남은 적들을 긴 시간동안 기절시킵니다.";
      
      public static var ClassicSlingerGun:String = "단일 대상에게 강력한 폭파 속성의 사격을 시도합니다.\n • 50% 확률로 명중합니다.\n • 대상의 회피율과 방어력 버프를 무시합니다.";
      
      public static var ClassicSlingerSword:String = "단일 대상에게 강력한 무속성 찌르기를 시도합니다.\n • 50% 확률로 명중합니다.\n • 대상의 회피율과 방어력 버프를 무시합니다.";
      
      public static var ClassicPraetorian:String = "모든 아군에게 방어 상태를 부여한 후, 모든 적에게 강력한 무속성 공격을 가합니다. 적을 즉사시킬 확률이 있으며, 방어력 버프 효과를 무시합니다. (디버프는 무시하지 않습니다)";
      
      public static var ClassicCrystalRed:String = "단일 대상에게 화염 마법을 사용해 내상을 입힙니다.";
      
      public static var ClassicCrystalBlue:String = "피해는 낮지만, 매우 높은 확률로 대상을 긴 시간동안 빙결시킵니다.";
      
      public static var ClassicGigaGolem:String = "단일 대상을 공격해 엄청난 양의 물리 피해를 입힙니다. 무작위로 화염 또는 얼음 속성 피해를 입힙니다.";
      
      public static var ClassicRafflesia:String = "모든 적에게 압도적인 물리 생체 피해를 입힙니다.";
      
      public static var ClassicJack:String = "대기 플레이어를 포함한 모든 아군의 공격력과 물리 공격력을 크게 증가시킵니다.";
      
      public static var arcadePoison:String = "독성 거품";
      
      public static var arcadeNettle:String = "덩굴 줄기";
      
      public static var arcadeTeeth:String = "송곳니";
      
      public static var bonePillar:String = "뼈 기둥";
      
      public static var hellfire:String = "헬파이어";
      
      public static var pixelswords:String = "소드 스톰";
      
      public static var pixelfork:String = "포크 난무";
      
      public static var paperSword:String = "종이 칼";
      
      public static var paperStars:String = "종이 수리검";
      
      public static var swordswirl:String = "소드 서클";
      
      public static var iceneedle:String = "얼음 가시";
      
      public static var thunderblast:String = "전기 폭파";
      
      public static var snowblast:String = "냉기 폭파";
      
      public static var arcadeFlood:String = "폭포";
      
      public static var ritual:String = "이교도 의식";
      
      public static var highgravity:String = "중력 증강";
      
      public static var lowgravity:String = "중력 저하";
      
      public static var snow:String = "눈";
      
      public static var earthquake:String = "지진";
      
      public static var blossom:String = "벚꽃 만개";
      
      public static var electrongun:Object = {
         "name":"전자총",
         "desc":"단일 대상을 기절시키는 번개 마법입니다." + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"연마",
         "desc":"모든 적의 부정적 상태이상의 중첩 횟수를 증가시킵니다. 아군을 대상으로 사용할 시, 대기 플레이어를 포함한 모든 아군의 긍정적 상태이상의 중첩 횟수를 증가시킵니다. 가속과 방어 상태에는 영향을 주지 않습니다." + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"모래 뿌리기",
         "desc":"단일 대상을 타격하는 상급 대지 공격입니다." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"모래 언덕",
         "desc":"단일 대상을 타격하는 최상급 대지 공격입니다." + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"산성액",
         "desc":"단일 대상을 타격하는 상급 생체 마법입니다." + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"산성 폭발",
         "desc":"모든 적을 타격하는 최상급 생체 마법입니다." + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"버블 링",
         "desc":"단일 대상을 봉인시키는 물속성 공격입니다. \n • 피해 타입은 가장 높은 능력치에 따라 결정됩니다."
      };
      
      public static var musicalblast:Object = {
         "name":"Phyrnna의 축복",
         "desc":"대기 플레이어를 포함한 모든 아군의 마법 공격력을 증가시키고 재생 상태를 부여합니다. " + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"기하학",
         "desc":"단일 대상을 타격하는 최상급 무속성 공격입니다. \n • 피해 타입은 가장 높은 능력치에 따라 결정됩니다." + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"요정 폭탄",
         "desc":"모든 적을 타격하는 최상급 신성 마법입니다. " + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"사신",
         "desc":"단일 대상을 즉사시키는 어둠 속성 공격입니다. " + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"데몬 소드",
         "desc":"모든 적을 타격하는 최상급 어둠 공격입니다." + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"아트 어택",
         "desc":LIMIT_BREAK + "모든 아군의 체력과 부정적 상태 이상을 치유하고 최대 체력, 회피율과 명중률을 증가시킵니다. \n • 대기 플레이어들에게도 적용됩니다."
      };
      
      public static var sevenswords:Object = {
         "name":"칠지도",
         "desc":LIMIT_BREAK + "모든 적에게 굉장한 신성 물리 피해를 입힙니다." + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}

