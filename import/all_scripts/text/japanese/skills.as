package text.japanese
{
   public class skills
   {
      public static var WEP_EFFECTS:String = "\n • 属性と効果は装備中の武器による。";
      
      public static var WEP_EFFECTS_2:String = "\n • 武器の効果が通常より強化される。";
      
      public static var LOW_ACC:String = "\n • 命中率が低い。";
      
      public static var HIGH_ACC:String = "\n • 命中率が高い。";
      
      public static var HIGH_ACC_2:String = "\n • 命中率が超高い。";
      
      public static var HIGH_CRITS:String = "\n • 会心率が高い。";
      
      public static var RETARGETS:String = "\n • ターゲットが倒れると別の敵をランダムに攻撃する。";
      
      public static var RETARGETS_2:String = "\n • ターゲットが倒れると別の敵を攻撃する。";
      
      public static var LIMIT_BREAK:String = " リミットブレイク！ ";
      
      public static var ALTERNATIVE_ALL:String = " 敵全体をターゲットできる。 ";
      
      public static var ALTERNATIVE_ONE:String = " 敵単体に集中させられる。";
      
      public static var MAY_SURRENDER:String = " 対象を降伏させる可能性がある。強い敵にも有効。 ";
      
      public static var SWORD_DANCE:String = " 敵単体に3回攻撃、ターゲットが倒れると別の敵を攻撃する。";
      
      public static var EXTRA_HITS:String = " 敵を倒すごとに1回追撃を行う。";
      
      public static var DISPEL_ALL:String = " 敵全体のバフと強化ステータスを解除する。";
      
      public static var HITS_RANDOM_FOES:String = " 敵1体につき1本矢を放つが、ターゲットはランダム。";
      
      public static var COOLDOWN_2:String = "\n • クールダウンに1ターンかかる。 ";
      
      public static var COOLDOWN_3:String = "\n • クールダウンに2ターンかかる。 ";
      
      public static var COOLDOWN_4:String = "\n • クールダウンに3ターンかかる。 ";
      
      public static var COOLDOWN_6:String = "\n • クールダウンに5ターンかかる。 ";
      
      public static var COOLDOWN_11:String = "\n • クールダウンに10ターンかかる。 ";
      
      public static var defend:Object = {
         "name":"防御",
         "desc":"1ターンの間、受けるダメージが全て50%減少する。装備の追加効果にも影響される。"
      };
      
      public static var swap:Object = {
         "name":"キャラクター変更",
         "desc":"別のキャラクターと交代する。ターンは消費しない。"
      };
      
      public static var flee:Object = {
         "name":"逃げる",
         "desc":"バトルから逃げる。ペナルティはない。"
      };
      
      public static var skip:Object = {
         "name":"スキップ",
         "desc":"何もせずに、ターンを終了する。"
      };
      
      public static var scan:Object = {
         "name":"スキャン",
         "desc":"敵全体をスキャンして、弱点を表示する。情報はモンスター図鑑に記録される。"
      };
      
      public static var capture:Object = {
         "name":"捕獲",
         "desc":"敵を捕獲する。ダメージを与えたり、弱化ステータスを与えると捕まえやすくなる。捕獲不可能な敵も存在する。"
      };
      
      public static var bring1:Object = {
         "name":"マットと交代",
         "desc":"キャラクターを控えに移動させ、マットと入れ替える。ターンは消費しない。"
      };
      
      public static var bring2:Object = {
         "name":"ナタリーと交代",
         "desc":"キャラクターを控えに移動させ、ナタリーと入れ替える。ターンは消費しない。"
      };
      
      public static var bring3:Object = {
         "name":"ランスと交代",
         "desc":"キャラクターを控えに移動させ、ランスと入れ替える。ターンは消費しない。"
      };
      
      public static var bring4:Object = {
         "name":"アンナと交代",
         "desc":"キャラクターを控えに移動させ、アンナと入れ替える。ターンは消費しない。"
      };
      
      public static var bring5:Object = {
         "name":"アシナシと交代",
         "desc":"キャラクターを控えに移動させ、アシナシと入れ替える。ターンは消費しない。"
      };
      
      public static var swordslash:Object = {
         "name":"通常攻撃",
         "desc":"敵単体を剣で攻撃。" + WEP_EFFECTS
      };
      
      public static var earthedge:Object = {
         "name":"余震",
         "desc":"敵単体への下級土属性攻撃。"
      };
      
      public static var quakespikes:Object = {
         "name":"激震",
         "desc":"敵単体への中級土属性攻撃。"
      };
      
      public static var cataclysmiccut:Object = {
         "name":"天変地異",
         "desc":"敵単体への最上級土属性攻撃。" + HIGH_CRITS
      };
      
      public static var geysergush:Object = {
         "name":"鉄砲水",
         "desc":"敵単体への下級水属性攻撃。" + equips.MAY_WET
      };
      
      public static var pouringpike:Object = {
         "name":"激流",
         "desc":"敵単体への中級水属性攻撃。" + equips.MAY_WET
      };
      
      public static var surgingskewer:Object = {
         "name":"濁流",
         "desc":"敵単体への上級水属性攻撃。" + equips.MAY_WET + HIGH_CRITS
      };
      
      public static var frostfragment:Object = {
         "name":"氷片",
         "desc":"敵単体への中級氷属性攻撃。" + equips.MAY_CHILL
      };
      
      public static var glacialglaive:Object = {
         "name":"氷山",
         "desc":"敵単体への上級氷属性攻撃。" + equips.MAY_CHILL
      };
      
      public static var firespire:Object = {
         "name":"マグマ",
         "desc":"敵単体への中級炎属性攻撃。" + equips.MAY_DRY
      };
      
      public static var lavalance:Object = {
         "name":"噴炎",
         "desc":"敵単体への上級炎属性攻撃。" + equips.MAY_DRY
      };
      
      public static var nettleknife:Object = {
         "name":"イラクサ",
         "desc":"敵単体への下級バイオ属性攻撃。" + equips.MAY_POISON
      };
      
      public static var shreddingshrub:Object = {
         "name":"繁茂",
         "desc":"敵単体への上級2連バイオ属性攻撃。" + equips.MAY_POISON
      };
      
      public static var slicingcyclone:Object = {
         "name":"かまいたち",
         "desc":"敵全体への上級連続攻撃。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var stealitem:Object = {
         "name":"強盗",
         "desc":"敵単体のアイテムをランダムに盗み取る。スキルレベルを上げればより良質なアイテムが得られる。" + LOW_ACC
      };
      
      public static var legend:Object = {
         "name":"レジェンド",
         "desc":"敵単体への最上級連続攻撃。" + WEP_EFFECTS + COOLDOWN_3
      };
      
      public static var lightblade:Object = {
         "name":"光ノ刃",
         "desc":"敵単体への中級光属性攻撃。"
      };
      
      public static var holysword:Object = {
         "name":"聖剣",
         "desc":"敵単体への上級光属性攻撃。" + equips.MAY_DISPEL
      };
      
      public static var unleash:Object = {
         "name":"剣心解放",
         "desc":"武器に秘められた力を解放。" + WEP_EFFECTS + WEP_EFFECTS_2
      };
      
      public static var quickslash:Object = {
         "name":"クイックスラッシュ",
         "desc":"敵単体への超高命中率の攻撃。" + WEP_EFFECTS
      };
      
      public static var temper:Object = {
         "name":"洗練",
         "desc":"味方単体に物理攻撃力バフと勇気ステータスを付与する。" + COOLDOWN_2
      };
      
      public static var revenge:Object = {
         "name":"仇討ち",
         "desc":"最凶の破壊力の可能性を秘めた、敵単体への物理攻撃。マットの残りＨＰが少ないほど威力が高くなり、戦闘不能になった味方の数が多いほど威力が上昇する。下記の数値は最大威力。" + WEP_EFFECTS
      };
      
      public static var cleaver:Object = {
         "name":"猫天御剣流・五頭龍閃",
         "desc":LIMIT_BREAK + "敵単体に連続斬撃で凄まじい物理ダメージを与える。" + WEP_EFFECTS + RETARGETS + HIGH_ACC + HIGH_CRITS
      };
      
      public static var ragnarok:Object = {
         "name":"ラグナロク",
         "desc":LIMIT_BREAK + "敵全体に圧倒的なノーマル属性物理ダメージを与え、控えを含む味方全体に物理攻撃力バフと勇気ステータスを付与する。" + HIGH_ACC
      };
      
      public static var staffstrike:Object = {
         "name":"通常攻撃",
         "desc":"敵単体への基本的な打撃。武器の魔力を解放する。" + WEP_EFFECTS
      };
      
      public static var blessedbunny:Object = {
         "name":"浄化",
         "desc":"味方単体のデバフと弱化ステータスを回復し、祝福ステータスを付与する。"
      };
      
      public static var luckystar:Object = {
         "name":"ラッキースター",
         "desc":"敵単体への下級ノーマル属性魔法攻撃。かなりランダムなダメージを与える。" + HIGH_CRITS
      };
      
      public static var starshower:Object = {
         "name":"流星群",
         "desc":"敵全体への上級ノーマル属性魔法攻撃。かなりランダムなダメージを与える。" + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var starpower:Object = {
         "name":"スターパワー",
         "desc":"味方単体に魔法攻撃力バフと幸運ステータスを付与する。" + COOLDOWN_2
      };
      
      public static var intoxicate:Object = {
         "name":"どくどく",
         "desc":"敵単体を毒ステータスにするバイオ魔法。"
      };
      
      public static var fireball:Object = {
         "name":"ファイア",
         "desc":"敵単体への下級炎魔法攻撃。" + equips.MAY_BURN
      };
      
      public static var fireblast:Object = {
         "name":"ファイアボール",
         "desc":"敵単体への中級炎魔法攻撃。" + equips.MAY_BURN
      };
      
      public static var firestorm:Object = {
         "name":"ファイアストーム",
         "desc":"敵全体への上級炎魔法攻撃。" + ALTERNATIVE_ONE + equips.MAY_BURN
      };
      
      public static var thunderbolt:Object = {
         "name":"サンダー",
         "desc":"敵単体への下級雷魔法攻撃。" + equips.MAY_STUN
      };
      
      public static var thundershock:Object = {
         "name":"サンダーボルト",
         "desc":"敵単体への中級雷魔法攻撃。" + equips.MAY_STUN
      };
      
      public static var thunderstorm:Object = {
         "name":"サンダーストーム",
         "desc":"敵全体への上級雷魔法攻撃。" + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var iceshard:Object = {
         "name":"アイス",
         "desc":"敵単体への下級氷魔法攻撃。" + equips.MAY_FREEZE
      };
      
      public static var iceshatter:Object = {
         "name":"アイスシャード",
         "desc":"敵単体への中級氷魔法攻撃。" + equips.MAY_FREEZE
      };
      
      public static var icestorm:Object = {
         "name":"アイスストーム",
         "desc":"敵全体への上級氷魔法攻撃。" + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var darkpulse:Object = {
         "name":"ダークパルス",
         "desc":"敵単体への中級闇魔法攻撃。" + equips.MAY_HEAVY
      };
      
      public static var darkpulsar:Object = {
         "name":"シャドウパルス",
         "desc":"敵全体への最上級闇魔法攻撃。" + equips.MAY_HEAVY + COOLDOWN_3
      };
      
      public static var spectralflash:Object = {
         "name":"プリズムフラッシュ",
         "desc":"敵単体への中級魔法攻撃。" + WEP_EFFECTS
      };
      
      public static var rainbowblast:Object = {
         "name":"プリズムブラスト",
         "desc":"敵全体への上級魔法攻撃。" + ALTERNATIVE_ONE + WEP_EFFECTS
      };
      
      public static var holylight:Object = {
         "name":"聖なる光",
         "desc":"敵単体への中級光魔法攻撃。" + equips.MAY_WEAKEN
      };
      
      public static var divinejudgement:Object = {
         "name":"天罰",
         "desc":"最上級の光魔法で敵単体を打ち砕き、ＨＰを吸収する。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var syphon:Object = {
         "name":"口封じ",
         "desc":"ほとんどの魔法攻撃が使えないように敵単体を封印する。" + COOLDOWN_3
      };
      
      public static var syphon2:Object = {
         "name":"封印",
         "desc":"ほとんどの魔法攻撃が使えないように敵全体を封印する。敵単体をターゲットする場合、封印効果は更に強化される。" + COOLDOWN_3
      };
      
      public static var genesis:Object = {
         "name":"創世",
         "desc":LIMIT_BREAK + "敵全体に圧倒的な光属性ダメージを与え、戦闘不能になった味方を復活し、ないしは自動復活ステータスを付与する。\n • 控えメンバーにも効果を与える。" + HIGH_ACC
      };
      
      public static var kyun:Object = {
         "name":"セブンスヘブン",
         "desc":LIMIT_BREAK + "味方全体のＨＰと弱化ステータスを回復し、物理攻撃・魔法攻撃・物理防御・魔法防御バフを付与する。\n • 控えメンバーにも効果を与える。\n • おまけでナタリーにメロメロステータスを付与する。"
      };
      
      public static var pistolwhip:Object = {
         "name":"通常攻撃",
         "desc":"敵単体への基本的な2連近接攻撃。" + WEP_EFFECTS
      };
      
      public static var snipe:Object = {
         "name":"スナイプ",
         "desc":"敵単体への超高命中率の射撃。" + WEP_EFFECTS + HIGH_CRITS + COOLDOWN_2
      };
      
      public static var doubleshot:Object = {
         "name":"ダブルショット",
         "desc":"敵単体への2連射撃。" + WEP_EFFECTS + WEP_EFFECTS_2 + RETARGETS
      };
      
      public static var unload:Object = {
         "name":"フルバースト",
         "desc":"敵単体への最上級の6連射撃。" + WEP_EFFECTS + RETARGETS + HIGH_CRITS + COOLDOWN_6
      };
      
      public static var flameshot:Object = {
         "name":"フレイムショット",
         "desc":"敵単体への下級炎属性射撃。" + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var flameburst:Object = {
         "name":"フレイムバースト",
         "desc":"敵全体への中級炎属性射撃。" + ALTERNATIVE_ONE + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var bullethell:Object = {
         "name":"バレット・ヘル",
         "desc":"敵単体にダメージを集中し、その他の敵に1/3のダメージを与える上級炎属性射撃。" + ALTERNATIVE_ALL + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var plasmashot:Object = {
         "name":"プラズマショット",
         "desc":"敵単体への下級雷属性射撃。" + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmawave:Object = {
         "name":"プラズマウェーブ",
         "desc":"敵全体への中級雷属性射撃。" + ALTERNATIVE_ONE + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var plasmafield:Object = {
         "name":"プラズマフィールド",
         "desc":"敵単体にダメージを集中し、その他の敵に1/3の威力のダメージを与える上級雷属性射撃。" + ALTERNATIVE_ALL + equips.DEBUFF_EVA + COOLDOWN_2
      };
      
      public static var darkshot:Object = {
         "name":"ダークショット",
         "desc":"敵単体への下級闇属性射撃。" + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var gravitysurge:Object = {
         "name":"ギガグラビティー",
         "desc":"敵全体への中級闇属性射撃。" + ALTERNATIVE_ONE + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var antimatterflux:Object = {
         "name":"アンチマター",
         "desc":"敵単体にダメージを集中し、その他の敵に1/3のダメージを与える上級闇属性射撃。" + ALTERNATIVE_ALL + equips.DEBUFF_MDEF + COOLDOWN_2
      };
      
      public static var poisongas:Object = {
         "name":"ポイズンガス",
         "desc":"敵全体を毒ステータスにするバイオ魔法攻撃。" + COOLDOWN_4
      };
      
      public static var airstrike1:Object = {
         "name":"ビッグボム",
         "desc":"敵単体に強力な爆発属性魔法ダメージを与える。" + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike2:Object = {
         "name":"エアストライク",
         "desc":"敵全体に強力な爆発属性魔法ダメージを与える。" + ALTERNATIVE_ONE + equips.MAY_STAGGER + COOLDOWN_4
      };
      
      public static var airstrike3:Object = {
         "name":"M.O.A.B.",
         "desc":"敵全体に圧倒的な爆発属性魔法ダメージを与える。再使用に時間がかかる。" + equips.MAY_STAGGER + COOLDOWN_11
      };
      
      public static var medipack1:Object = {
         "name":"メディパック",
         "desc":"味方単体のＨＰと弱化ステータスを回復する。" + COOLDOWN_4
      };
      
      public static var medipack2:Object = {
         "name":"メディストライク",
         "desc":"味方全体のＨＰと弱化ステータスを回復する。" + COOLDOWN_4
      };
      
      public static var tankguns:Object = {
         "name":"マシンガン",
         "desc":"敵全体への爆発属性の連続射撃。" + COOLDOWN_2
      };
      
      public static var armorcrush:Object = {
         "name":"アーマーブレイク",
         "desc":"敵単体を殴打し、ディスペルさせる。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var hyperbeam:Object = {
         "name":"チャージビーム",
         "desc":"敵全体に巨大な魔法ダメージを与える。発動に2ターンが必要。" + WEP_EFFECTS
      };
      
      public static var nuke:Object = {
         "name":"ニューク",
         "desc":LIMIT_BREAK + "敵全体に圧倒的な炎魔法攻撃を放ち、全員に火傷ステータスをを付与する。" + HIGH_ACC + "\n • 5ターンの間、天候を放射線にする。"
      };
      
      public static var oblivion:Object = {
         "name":"オブリビオン",
         "desc":LIMIT_BREAK + "敵全体に圧倒的な爆発属性物理ダメージを与える。ランスは予備の戦車も用意してあるので、壊しても大丈夫。" + HIGH_ACC
      };
      
      public static var arrowslash:Object = {
         "name":"通常攻撃",
         "desc":"敵単体を矢じりで切りつけて攻撃する。" + WEP_EFFECTS
      };
      
      public static var bowwhack:Object = {
         "name":"弓殴り",
         "desc":"弓で敵単体を殴り、敵を降伏させようとする。強い敵にも有効。\n • このスキルは敵のHPを必ず1残す。" + WEP_EFFECTS
      };
      
      public static var gust:Object = {
         "name":"ウィンド",
         "desc":"敵単体への下級風魔法攻撃。" + equips.MAY_LIGHT
      };
      
      public static var whirlwind:Object = {
         "name":"トルネード",
         "desc":"敵単体への中級風魔法攻撃。" + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var hurricane:Object = {
         "name":"ハリケーン",
         "desc":"敵全体への上級風魔法攻撃。" + ALTERNATIVE_ONE + equips.MAY_LIGHT + equips.DEBUFF_MDEF
      };
      
      public static var logjab:Object = {
         "name":"丸太",
         "desc":"敵単体への下級土属性攻撃。" + equips.MAY_STAGGER
      };
      
      public static var lumbertrap:Object = {
         "name":"木材トラップ",
         "desc":"敵単体に複数回ヒットする上級土属性攻撃。" + equips.MAY_STAGGER
      };
      
      public static var leafblade:Object = {
         "name":"リーフブレード",
         "desc":"敵単体に2回ヒットする下級バイオ攻撃。" + HIGH_CRITS
      };
      
      public static var razorleaf:Object = {
         "name":"はっぱカッター",
         "desc":"敵全体に複数回ヒットする上級バイオ攻撃。" + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var soularrow:Object = {
         "name":"聖星矢",
         "desc":"敵単体への中級光属性攻撃。" + equips.MAY_WEAKEN
      };
      
      public static var frostarrow:Object = {
         "name":"氷の矢",
         "desc":"敵単体への中級氷属性攻撃。" + equips.MAY_FREEZE
      };
      
      public static var aquaarrow:Object = {
         "name":"水の矢",
         "desc":"敵単体への中級水属性攻撃。" + equips.MAY_WET
      };
      
      public static var nitroarrow:Object = {
         "name":"爆弾矢",
         "desc":"敵単体への中級爆発属性攻撃。" + equips.MAY_DISPEL
      };
      
      public static var sparkarrow:Object = {
         "name":"雷の矢",
         "desc":"敵単体への中級雷属性攻撃。" + equips.MAY_STUN
      };
      
      public static var soularrow2:Object = {
         "name":"ホーリーレイン",
         "desc":"上級光属性攻撃。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WEAKEN
      };
      
      public static var frostarrow2:Object = {
         "name":"フロストストーム",
         "desc":"上級氷属性攻撃。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_FREEZE
      };
      
      public static var aquaarrow2:Object = {
         "name":"アクアボレー",
         "desc":"上級水属性攻撃。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_WET
      };
      
      public static var nitroarrow2:Object = {
         "name":"ニトロブリッツ",
         "desc":"上級爆発属性攻撃。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_DISPEL
      };
      
      public static var sparkarrow2:Object = {
         "name":"スパークシャワー",
         "desc":"上級雷属性攻撃。" + HITS_RANDOM_FOES + ALTERNATIVE_ONE + equips.MAY_STUN
      };
      
      public static var piercingshot:Object = {
         "name":"貫通矢",
         "desc":"敵単体への超高命中率の攻撃。" + equips.IGNORES_BUFFS + HIGH_CRITS + WEP_EFFECTS
      };
      
      public static var comboshot:Object = {
         "name":"コンボショット",
         "desc":"複数の矢による、強力かつ正確な攻撃。" + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var arrowrain:Object = {
         "name":"アローレイン",
         "desc":"敵全体に複数回ヒットする矢の雨。" + COOLDOWN_2 + WEP_EFFECTS
      };
      
      public static var renew:Object = {
         "name":"レメディ",
         "desc":"味方単体に下級ＨＰ回復魔法をかける。"
      };
      
      public static var remedy:Object = {
         "name":"リフレッシュ",
         "desc":"味方単体に中級ＨＰ回復魔法を掛け、祝福ステータスを付与する。"
      };
      
      public static var motherearth:Object = {
         "name":"母なる大地",
         "desc":LIMIT_BREAK + "敵全体に圧倒的なバイオ属性魔法ダメージを与え、毒を盛る。\n •控えを含む味方全体に祝福ステータスを付与する。" + HIGH_ACC + "\n • 5ターンの間、天候を快晴にする。"
      };
      
      public static var mightyoak:Object = {
         "name":"マイティオーク",
         "desc":LIMIT_BREAK + "敵全体への圧倒的な土属性連続攻撃。" + HIGH_ACC
      };
      
      public static var backstab:Object = {
         "name":"通常攻撃",
         "desc":"敵単体を後ろから刺す。" + WEP_EFFECTS
      };
      
      public static var multistab:Object = {
         "name":"刀遊び",
         "desc":"敵単体への下級4連斬撃。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var bladeblitz:Object = {
         "name":"ブレードブリッツ",
         "desc":"敵単体への上級11連斬撃。" + WEP_EFFECTS + COOLDOWN_2
      };
      
      public static var swiftslash:Object = {
         "name":"神速斬",
         "desc":"敵全体への超高速な斬撃。" + WEP_EFFECTS + HIGH_ACC + COOLDOWN_2
      };
      
      public static var ninelives:Object = {
         "name":"九生あり！",
         "desc":"味方全体のＨＰを回復し、自動復活ステータスを与え、ないしは戦闘不能になった味方を復活する。再使用に時間がかかる。" + COOLDOWN_11
      };
      
      public static var starblast:Object = {
         "name":"スターブラスト",
         "desc":"敵全体へのノーマル属性魔法攻撃。再使用に時間がかかる。" + equips.MAY_DISPEL + HIGH_ACC + COOLDOWN_11
      };
      
      public static var sworddance:Object = {
         "name":"飛び切り",
         "desc":"下級近接攻撃。" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance2:Object = {
         "name":"剣の舞",
         "desc":"中級近接攻撃。" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var sworddance3:Object = {
         "name":"ファイナルカッター",
         "desc":"上級近接攻撃。" + SWORD_DANCE + EXTRA_HITS + WEP_EFFECTS
      };
      
      public static var darkslash:Object = {
         "name":"シャドーストライク",
         "desc":"中級闇属性攻撃。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var darkslash2:Object = {
         "name":"宵闇タンゴ",
         "desc":"上級闇属性攻撃。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_CURSE
      };
      
      public static var holyslash:Object = {
         "name":"セイクリッドストライク",
         "desc":"中級光属性攻撃。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var holyslash2:Object = {
         "name":"神聖ワルツ",
         "desc":"上級光属性攻撃。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_SYPHON
      };
      
      public static var lightningslash:Object = {
         "name":"サンダーストライク",
         "desc":"中級雷属性攻撃。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var lightningslash2:Object = {
         "name":"雷鳴ブギー",
         "desc":"上級雷属性攻撃。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_STUN
      };
      
      public static var windslash:Object = {
         "name":"ウィスピーストライク",
         "desc":"中級風属性攻撃。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var windslash2:Object = {
         "name":"暴風フラメンコ",
         "desc":"上級風属性攻撃。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_WEAKEN
      };
      
      public static var waterslash:Object = {
         "name":"バブルストライク",
         "desc":"中級水属性攻撃。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var waterslash2:Object = {
         "name":"深海マンボ",
         "desc":"上級水属性攻撃。" + SWORD_DANCE + EXTRA_HITS + equips.MAY_BAD_LUCK
      };
      
      public static var sushicat:Object = {
         "name":"寿司猫",
         "desc":"跳ね回り、3回ランダムな敵に魔法攻撃。2回その時点で最も傷ついた味方を回復。" + COOLDOWN_3
      };
      
      public static var sushicat2:Object = {
         "name":"寿司猫！",
         "desc":"跳ね回り、3回ランダムな敵に魔法攻撃。2回その時点で最も傷ついた味方を回復。 \n • 味方全体に幸運ステータスを付与する。" + COOLDOWN_3
      };
      
      public static var berserk:Object = {
         "name":"発狂",
         "desc":"味方または敵に暴走ステータスを付与する。これにより対象は威力が上昇した攻撃をし続けるが、制御不能になる。 " + COOLDOWN_2
      };
      
      public static var berserk2:Object = {
         "name":"レイジングフォース",
         "desc":"味方全体または敵単体に暴走ステータスを付与する。味方の場合、対象を単体にし、効果を強化することもできる。" + COOLDOWN_3
      };
      
      public static var cherish:Object = {
         "name":"愛情",
         "desc":"味方単体にメロメロステータスを付与し、単体攻撃で狙われなくする。 " + COOLDOWN_3
      };
      
      public static var cherish2:Object = {
         "name":"ラブオーラ",
         "desc":"味方全体にメロメロステータスを付与する。単体に集中させ、効果を強化することもできる。 " + COOLDOWN_4
      };
      
      public static var thecreator:Object = {
         "name":"創造神",
         "desc":LIMIT_BREAK + "敵全体に圧倒的な光属性魔法ダメージを与える。 \n • 控えを含む味方全体に幸運ステータスを付与する。" + HIGH_ACC + "\n • 5ターンの間、天候を快晴にする。"
      };
      
      public static var thedestroyer:Object = {
         "name":"破壊神",
         "desc":LIMIT_BREAK + "敵全体に圧倒的な闇属性ダメージを与える、複数回ヒットする。" + DISPEL_ALL + HIGH_ACC
      };
      
      public static var snowbunny:Object = {
         "name":"スノーバニー",
         "desc":"敵全体への氷魔法攻撃。" + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var snowcat:Object = {
         "name":"スノーキャット",
         "desc":"敵全体への強力な氷属性魔法攻撃を仕掛け、凍結コンボの準備をする。" + equips.MAY_CHILL + COOLDOWN_3
      };
      
      public static var ivy:Object = {
         "name":"ツタ",
         "desc":"敵単体へのバイオ属性攻撃。" + equips.MAY_POISON
      };
      
      public static var vines:Object = {
         "name":"イバラ",
         "desc":"敵単体に複数回当たる、中級バイオ属性攻撃。" + equips.MAY_POISON + equips.DEBUFF_EVA
      };
      
      public static var energy:Object = {
         "name":"エナジー",
         "desc":"敵単体への下級爆発属性魔法攻撃。" + HIGH_CRITS
      };
      
      public static var energy2:Object = {
         "name":"エナジーボム",
         "desc":"敵単体への中級爆発属性魔法攻撃。" + HIGH_CRITS
      };
      
      public static var energy3:Object = {
         "name":"エナジー乱舞",
         "desc":"敵全体への上級爆発属性魔法攻撃。" + ALTERNATIVE_ONE + HIGH_CRITS
      };
      
      public static var bubbles:Object = {
         "name":"バブル",
         "desc":"敵単体への下級水属性魔法攻撃。" + equips.MAY_WET
      };
      
      public static var whirlpool:Object = {
         "name":"渦潮",
         "desc":"敵単体への中級水属性魔法攻撃。" + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var vortex:Object = {
         "name":"バブルブラスト",
         "desc":"敵全体への上級水属性魔法攻撃。" + ALTERNATIVE_ONE + equips.MAY_WET + equips.DEBUFF_EVA
      };
      
      public static var laserblade:Object = {
         "name":"ショック",
         "desc":"敵単体への中級雷属性攻撃。" + equips.MAY_STAGGER
      };
      
      public static var lasersword:Object = {
         "name":"アンペアサージ",
         "desc":"敵単体への上級雷属性攻撃。" + equips.MAY_STAGGER
      };
      
      public static var bulletbob:Object = {
         "name":"キラー",
         "desc":"敵単体への中級爆発属性攻撃。" + HIGH_CRITS
      };
      
      public static var bigbullet:Object = {
         "name":"ビッグマグナム",
         "desc":"敵単体への上級爆発属性攻撃。" + HIGH_CRITS
      };
      
      public static var gale:Object = {
         "name":"つむじ風",
         "desc":"敵単体への中級風属性攻撃。" + equips.MAY_LIGHT
      };
      
      public static var tempest:Object = {
         "name":"旋風",
         "desc":"敵単体への上級風属性攻撃。" + equips.MAY_LIGHT
      };
      
      public static var powermetal:Object = {
         "name":"ヘビーメタル",
         "desc":"敵全体への風属性魔法攻撃。味方全体のＨＰも回復する。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var air:Object = {
         "name":"風波",
         "desc":"敵単体への下級風属性魔法攻撃。" + equips.MAY_STAGGER
      };
      
      public static var air2:Object = {
         "name":"真空波",
         "desc":"敵単体への中級風属性魔法攻撃。" + equips.MAY_STAGGER
      };
      
      public static var air3:Object = {
         "name":"衝撃波",
         "desc":"敵全体への上級風属性魔法攻撃。" + ALTERNATIVE_ONE + equips.MAY_STAGGER
      };
      
      public static var sawblade:Object = {
         "name":"円ノコ",
         "desc":"敵単体への中級ノーマル属性攻撃。" + equips.IGNORES_BUFFS + equips.MAY_DEATH
      };
      
      public static var sawblades:Object = {
         "name":"シュレッダー",
         "desc":"敵全体への上級ノーマル属性攻撃。" + equips.IGNORES_BUFFS + equips.MAY_DEATH + COOLDOWN_2
      };
      
      public static var gaia:Object = {
         "name":"ガイアのタネ",
         "desc":"敵単体への下級土属性魔法攻撃。" + equips.MAY_TIRE
      };
      
      public static var gaia2:Object = {
         "name":"ガイアのツボミ",
         "desc":"敵単体への中級土属性魔法攻撃。" + equips.MAY_TIRE
      };
      
      public static var gaia3:Object = {
         "name":"ガイアの花",
         "desc":"敵全体への上級土属性魔法攻撃。" + ALTERNATIVE_ONE + equips.MAY_TIRE
      };
      
      public static var firespin:Object = {
         "name":"炎の渦",
         "desc":"敵全体への強力な炎属性魔法攻撃。" + equips.MAY_BURN + equips.DEBUFF_DEF + COOLDOWN_2
      };
      
      public static var purgingflame:Object = {
         "name":"浄化の炎",
         "desc":"敵単体の魔法攻撃力にデバフをかけ、ディスペルもする光魔法。" + HIGH_ACC
      };
      
      public static var screamer:Object = {
         "name":"絶叫",
         "desc":"敵全体への闇属性魔法攻撃。物理攻撃力デバフもできる。" + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var heal:Object = {
         "name":"キュアル",
         "desc":"味方単体を癒す、下級回復魔法。" + COOLDOWN_2
      };
      
      public static var healmore:Object = {
         "name":"キュアベター",
         "desc":"味方全体を癒す、強力な回復魔法。単体に集中させ、効果を強化することもできる。" + COOLDOWN_2
      };
      
      public static var revive:Object = {
         "name":"リバイブ",
         "desc":"戦闘不能になった味方単体を復活させる。生きている味方には自動復活ステータスを付与する。"
      };
      
      public static var purify:Object = {
         "name":"洗浄",
         "desc":"基本的な弱化ステータスを味方、もしくは敵全体から取り除く。びしょ濡れや乾燥ステータスなどには効果なし。" + COOLDOWN_3
      };
      
      public static var lockon:Object = {
         "name":"ロックオン",
         "desc":"味方単体の命中率を強化し、幸運ステータスを付与する。" + COOLDOWN_2
      };
      
      public static var protect:Object = {
         "name":"プロテクト",
         "desc":"控え含む味方全員に物理防御力バフを付与する。" + COOLDOWN_6
      };
      
      public static var barrier:Object = {
         "name":"バリアー",
         "desc":"控え含む味方全員に魔法防御力バフを付与する。" + COOLDOWN_6
      };
      
      public static var reflex:Object = {
         "name":"風の守護",
         "desc":"控え含む味方全員に回避率バフを付与する。戦闘に出ている味方の霞ステータスも取り除く。" + COOLDOWN_6
      };
      
      public static var guardian:Object = {
         "name":"天の盾",
         "desc":"味方単体に物理・魔法防御バフを付与する。" + COOLDOWN_2
      };
      
      public static var dispel:Object = {
         "name":"ディスペル",
         "desc":"敵全体の強化ステータスやバフなどを打ち消す。味方全体にかけて、デバフを打ち消すこともできる。" + COOLDOWN_6
      };
      
      public static var flare:Object = {
         "name":"フラッシュ",
         "desc":"敵全体に命中率デバフを付与する。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var bind:Object = {
         "name":"バインド",
         "desc":"敵全体に回避率デバフを付与する。" + HIGH_ACC + COOLDOWN_3
      };
      
      public static var debilitate:Object = {
         "name":"腐食",
         "desc":"敵全体に物理防御力デバフを付与する。" + COOLDOWN_6
      };
      
      public static var enfeeble:Object = {
         "name":"劣化",
         "desc":"敵全体に魔法防御力デバフを付与する。" + COOLDOWN_6
      };
      
      public static var teradrill:Object = {
         "name":"ギガドリル",
         "desc":"敵単体への上級土属性攻撃。相手が防御ステータス、または防御バフを持つ場合、威力がかなり上昇する。" + COOLDOWN_3
      };
      
      public static var encore:Object = {
         "name":"アンコール",
         "desc":"味方単体に追加ターンを与える。自分にかけても意味はない。" + COOLDOWN_3
      };
      
      public static var firecrackers:Object = {
         "name":"爆竹",
         "desc":"敵全体に不運状態を、そして控え含む味方全体に幸運状態を付与する。" + MAY_SURRENDER + COOLDOWN_4
      };
      
      public static var abzero:Object = {
         "name":"絶対零度",
         "desc":LIMIT_BREAK + "敵全体への強力な氷属性魔法攻撃。回避率デバフを付与し、凍結させる。 \n • 戦闘中の仲間の全スキルのクールダウンを消す。" + HIGH_ACC
      };
      
      public static var tsunami:Object = {
         "name":"津波",
         "desc":LIMIT_BREAK + "敵全体への圧倒的な水属性魔法攻撃。びしょ濡れステータスを付与する。 \n • ダメージは物理・魔法攻撃力のうち高い方の能力値を使用する。" + equips.MAY_DEATH + HIGH_ACC_2
      };
      
      public static var supernova:Object = {
         "name":"超新星",
         "desc":LIMIT_BREAK + "敵味方全体への圧倒的な炎属性魔法攻撃。火傷ステータスを付与する。 \n • 回避不可能。"
      };
      
      public static var deathmetal:Object = {
         "name":"デスメタル",
         "desc":LIMIT_BREAK + "敵全体への圧倒的な風属性魔法攻撃。控えを含む味方全体のＨＰを回復させ、士気高揚ステータスを付与する。" + HIGH_ACC
      };
      
      public static var annihilate:Object = {
         "name":"悪即斬",
         "desc":LIMIT_BREAK + "敵全体を即死させる可能性が高い攻撃。ボスには効かない、命中率の低い技。"
      };
      
      public static var ion:Object = {
         "name":"イオンビーム砲",
         "desc":LIMIT_BREAK + "敵全体への圧倒的な雷属性魔法攻撃。麻痺ステータスを付与する。\n • ランスのスキル、チャージビームが即座に放てるようにもなる。" + HIGH_ACC_2
      };
      
      public static var blackhole:Object = {
         "name":"ブラックホール",
         "desc":LIMIT_BREAK + "敵全体への圧倒的な闇属性魔法攻撃。重量化ステータスを付与する。使用者は死ぬ。" + HIGH_ACC
      };
      
      public static var rapture:Object = {
         "name":"目覚めるパワー",
         "desc":LIMIT_BREAK + "敵全体への圧倒的な物理、または魔法攻撃。\n • ダメージは物理・魔法攻撃力のうち高い方の能力値を使用する。" + WEP_EFFECTS + HIGH_ACC
      };
      
      public static var bones:String = "骨攻撃";
      
      public static var bonestar:String = "白骨五角星";
      
      public static var groundblade:String = "不死の刃";
      
      public static var fallingstar:String = "星落とし";
      
      public static var firerock:String = "火山岩";
      
      public static var stalactite:String = "鍾乳石";
      
      public static var stalactite2:String = "鍾乳石群";
      
      public static var fume:String = "焼け付く熱気";
      
      public static var eruption:String = "噴火";
      
      public static var scald:String = "熱湯気";
      
      public static var rain:String = "雨";
      
      public static var sandstorm:String = "砂嵐";
      
      public static var hail:String = "霰";
      
      public static var nitro:String = "ニトロバーン";
      
      public static var bamboo:String = "竹槍";
      
      public static var bamboo2:String = "竹槍トラップ";
      
      public static var bluebolt:String = "ブルーボルト";
      
      public static var deepfreeze:String = "ディープフリーズ";
      
      public static var wafer:String = "ウエハース";
      
      public static var present:String = "プレゼント・フォー・ユー";
      
      public static var plasmacage:String = "プラズマケージ";
      
      public static var tankcannon:String = "戦車主砲";
      
      public static var candycanes:String = "キャンディーケーン";
      
      public static var bonefish:String = "サカナのホネ";
      
      public static var riceball:String = "おにぎり爆弾";
      
      public static var mushroom:String = "きのこアタック";
      
      public static var lifedrain:String = "生命吸収";
      
      public static var smokepuff:String = "小さな煙";
      
      public static var confusion:String = "混乱";
      
      public static var ink:String = "インクショット";
      
      public static var chocolate:String = "チョコアタック";
      
      public static var tentacles:String = "触手攻撃";
      
      public static var slowdown:String = "鈍化";
      
      public static var speedup:String = "加速";
      
      public static var poisonroot:String = "毒の根っこ";
      
      public static var burningroot:String = "燃える根っこ";
      
      public static var searoot:String = "海の根っこ";
      
      public static var bombblast:String = "爆術";
      
      public static var bigblast:String = "ビッグブラスト";
      
      public static var cactus:String = "サボテン";
      
      public static var cacti:String = "シャボテン";
      
      public static var spark:String = "スパーク";
      
      public static var bigspark:String = "ギガスパーク";
      
      public static var talisman:String = "封印の紋";
      
      public static var ember:String = "種火";
      
      public static var fireblast2:String = "火炎弾";
      
      public static var firecrystals:String = "炎のクリスタル";
      
      public static var zephyrcrystals:String = "ゼフィアクリスタル";
      
      public static var frost:String = "霜降り";
      
      public static var rockslide:String = "岩雪崩";
      
      public static var avalanche:String = "雪崩";
      
      public static var blackspikes:String = "漆黒の柵";
      
      public static var stonefist:String = "岩石の拳";
      
      public static var spiderweb:String = "クモの巣";
      
      public static var spiders:String = "クモの大群";
      
      public static var geometry2:String = "亜空攻撃";
      
      public static var geometry3:String = "歪みの大地";
      
      public static var sacrifice:String = "犠牲";
      
      public static var bigroot:String = "大きな根っこ";
      
      public static var seabomb:String = "水中地雷";
      
      public static var fairy:String = "フェアリー爆弾";
      
      public static var fly:String = "ハエ爆弾";
      
      public static var starpunch:String = "コメットパンチ";
      
      public static var darken:String = "影化";
      
      public static var lighten:String = "付呪";
      
      public static var SlimeChocolate:String = "敵単体に何かを吐き、土属性攻撃ダメージを与えると共に命中率デバフを付与する。";
      
      public static var SlimeIcecream:String = "敵単体に下級氷属性魔法攻撃を放ち、寒気ステータスを付与する。";
      
      public static var SlimeSand:String = "敵単体に下級バイオ属性の攻撃を放ち、麻痺させる。";
      
      public static var SlimeLava:String = "敵単体に下級炎属性の攻撃を放ち、乾燥させる。";
      
      public static var SlimeMouse:String = "敵単体を必ず麻痺させる、弱い雷属性攻撃。";
      
      public static var SlimeWater:String = "敵単体への弱っちい水属性攻撃。";
      
      public static var SlimeMud:String = "敵単体への下級バイオ属性の攻撃。";
      
      public static var SlimeBunny:String = "控え含む味方全体に再生ステータスを付与し、ターン経過と共に回復させる。";
      
      public static var SpriteFire:String = "5ターンの間、天候を火山灰にする。";
      
      public static var SpriteIce:String = "5ターンの間、天候を猛吹雪にする。";
      
      public static var SpriteThunder:String = "5ターンの間、天候を静電気にする。";
      
      public static var SpriteRock:String = "5ターンの間、天候を地震にする。";
      
      public static var SpriteWind:String = "5ターンの間、天候を暴風にする。";
      
      public static var ChomperLeafy:String = "5ターンの間、天候をそよ風にする。";
      
      public static var ChomperSeaweed:String = "5ターンの間、天候を雨にする。";
      
      public static var ChomperMagma:String = "5ターンの間、天候を晴れにする。";
      
      public static var ChomperMutant:String = "5ターンの間、天候を酸性雨にする。";
      
      public static var CreepThorny:String = "敵単体への中級土属性攻撃。麻痺ステータスを付与する可能性がある。";
      
      public static var CreepIcicle:String = "敵単体への中級氷属性攻撃。寒気ステータスを付与する可能性がある。";
      
      public static var CreepHermit:String = "敵単体を中級ノーマル属性の攻撃で斬り伏せる。";
      
      public static var CreepGreen:String = "標的に3回、上級ノーマル属性攻撃で跳ね返る。" + RETARGETS_2;
      
      public static var CreepRed:String = "敵単体への上級風属性を纏った突進。よろめきステータスも付与する。";
      
      public static var CreepBlue:String = "敵に麻痺ステータスを付与する可能性がある、上級爆発属性攻撃。";
      
      public static var Defender1:String = "敵全体への上級雷属性攻撃。よろめきステータスを付与する可能性がある。";
      
      public static var Defender2:String = "敵単体に上級水属性の攻撃を放ち、びしょ濡れステータスを付与する。";
      
      public static var DogFriend:String = "敵に狙われにくくなる、メロメロステータスを味方全体に付与する。";
      
      public static var DogMaxi:String = DogFriend;
      
      public static var DogTanuki:String = "敵に火傷ステータスを付与する、炎属性の飛びつき攻撃。";
      
      public static var DogWolf:String = "敵に凍結ステータスを付与する、氷属性の飛びつき攻撃。";
      
      public static var DogZap:String = "敵全体をよろめきステータスにする可能性がある、雷属性の飛びつき攻撃。";
      
      public static var DogMage:String = "敵全体を邪悪な光魔法で攻撃し、呪いステータスを付与する。";
      
      public static var ChibiKnightUltra:String = "控えを含む味方全体に物理攻撃力バフを付与し、敵単体に連続攻撃。" + RETARGETS_2;
      
      public static var BushGreen:String = "鳴き声で敵全体に軽い物理攻撃デバフを付与する。";
      
      public static var BushRed:String = "鳴き声で敵全体に軽い物理防御デバフを付与する。";
      
      public static var BushDark:String = "鳴き声で敵全体に軽い回避率デバフを付与する。";
      
      public static var BushMud:String = "鳴き声で敵全体に軽い魔法攻撃デバフを付与する。";
      
      public static var BushSand:String = "鳴き声で敵全体に軽い魔法防御デバフを付与する。";
      
      public static var GolemTopaz:String = "敵単体を上級雷属性で連続で殴りつける。麻痺ステータスを付与する可能性がある。";
      
      public static var GolemPearl:String = "敵全体を上級氷属性魔法で冷やし、5ターンの間天候をあられにする。";
      
      public static var GolemAmethyst:String = "敵全体を上級ノーマル属性で連続攻撃。よろめきステータスを付与する可能性がある。";
      
      public static var FishSteam:String = "敵に音速で突っ込み、軽量化ステータスを付与する。";
      
      public static var FishGold:String = "敵全体を光属性の光線でなぎ払い、乾燥ステータスを付与する。";
      
      public static var FishJet:String = "敵全体に基本的な爆発属性のマシンガンをぶっ放す。";
      
      public static var HandSkeleton:String = "控えを含む味方全体に会心率や敵捕獲などの確率を上げる幸運ステータスを付与する。";
      
      public static var HandZombie:String = "敵全体に破滅ステータスを付与し、3ターン後に強制的に倒れるようにする。";
      
      public static var HandMagma:String = "味方全体に暴走ステータスを付与する。攻撃力を増加させるが、制御不可能になる。";
      
      public static var FlybotBlue:String = "味方全体のバフ・デバフを反転させる。";
      
      public static var FlybotYellow:String = "敵全体のバフ・デバフを反転させる。";
      
      public static var FlybotRed:String = "敵・味方単体のバフ・デバフを反転させる。";
      
      public static var FallenLost:String = "敵単体を風属性攻撃で切りつけ、控え含む味方全体に士気高揚ステータスを付与する。";
      
      public static var FallenCrucified:String = "敵単体を光属性攻撃で切りつける。敵を即死させる可能性がある。";
      
      public static var FallenDrowned:String = "戦闘に参加中の味方全体のデバフなどを優雅にディスペルする。";
      
      public static var FallenBurned:String = "敵全体を炎属性攻撃で乾燥ステータスにし、5ターンの間天候を砂嵐にする。";
      
      public static var FallenBeheaded:String = "敵単体を闇属性攻撃で突き刺し、控え含む味方全体に勇気ステータスを付与する。";
      
      public static var PixelSlime:String = "敵を弱いバイオ属性魔法で攻撃して、長時間疲労ステータスにさせる。";
      
      public static var PixelBush:String = "敵を弱い炎属性魔法で攻撃して、長時間乾燥ステータスにさせる。";
      
      public static var PixelBat:String = "敵を弱い闇属性魔法で攻撃して、長時間不運ステータスにさせる。";
      
      public static var PixelIdol:String = "敵を弱い爆発属性で攻撃して、長時間弱化ステータスにさせる。";
      
      public static var MonolithViking:String = "味方全体に加速ステータスを付与。基本的には追加ターン獲得。";
      
      public static var MonolithAncient:String = "味方全体に防御ステータスを付与。一ターンの間のダメージカット。";
      
      public static var MonolithCosmic:String = "戦場を計り知れない闇属性の魔法で攻撃、敵全体を飲み込む。";
      
      public static var IdolGem:String = "控えを含む味方全体に軽量化ステータスを付与。土属性から守られる。";
      
      public static var IdolStone:String = "控えを含む味方全体に乾燥ステータスを付与。氷と雷属性から守られる。";
      
      public static var IdolMetal:String = "控えを含む味方全体に重量化ステータスを付与。風属性から守られる。";
      
      public static var IdolWood:String = "控えを含む味方全体に祝福ステータスを付与。ほとんどの弱化ステータスから守られる。";
      
      public static var MirrorWise:String = IdolWood;
      
      public static var MirrorAngel:String = "味方全体に魔法に対しては無敵になるが、物理に対して弱くなる符呪ステータスを付与。。";
      
      public static var MirrorDemon:String = "味方全体に物理に対しては無敵になるが、魔法に対して弱くなる影化ステータスを付与。。";
      
      public static var MirrorHaunted:String = "敵を上級闇属性の噛みつきで攻撃し、呪いステータスを付与する。";
      
      public static var MammothWooly:String = "敵単体にのしかかり、圧倒的なノーマル属性物理ダメージを与える。他の敵にも1/3の威力のダメージ。" + equips.MAY_STUN;
      
      public static var MammothCamel:String = "控えを含む味方全体に魔法防御バフを付与し、敵全体に土属性攻撃を放つ。";
      
      public static var MammothWar:String = "控えを含む味方全体に物理防御バフを付与し、敵全体に爆発属性魔法攻撃を放つ。" + equips.MAY_STAGGER;
      
      public static var SquidPink:String = "敵に墨を吐き、圧倒的な闇属性魔法攻撃。影化ステータスを付与し、さらに命中率デバフもかける。";
      
      public static var SquidPurple:String = "敵全体に命中率デバフを付与する。破滅ステータスを付与する可能性がある。";
      
      public static var SquidLime:String = "敵全体を上級雷属性で貫き、完全に麻痺させる。";
      
      public static var Underlegs:String = "敵全体をディスペルし、ノーマル属性の猛攻撃を放つ。";
      
      public static var SlimeBigSand:String = "敵単体への上級バイオ属性攻撃。麻痺ステータスを付与する可能性がある。";
      
      public static var SlimeBigLava:String = "敵単体への上級炎属性魔法攻撃。強力な火傷ステータスを付与する。";
      
      public static var SlimeBigMud:String = "敵全体へのきのこ型バイオ属性攻撃。胞子で麻痺ステータスを引き起こすかも。";
      
      public static var SlimeBigIcecream:String = "敵全体を弱い氷属性魔法で寒気ステータスにする。水や氷属性でコンボを決めよう。";
      
      public static var SlimeBigChocolate:String = "敵全体へチョコレートを吐き出す土属性魔法攻撃。重量化ステータスを付与する。";
      
      public static var WormPutrid:String = "弱いノーマル属性の糸攻撃で、敵単体の回避率をがくっと下げる。";
      
      public static var WormScaly:String = "控えを含む味方全体にびしょ濡れステータスを付与。炎属性から守られる。";
      
      public static var WormFuzzy:String = "弱いノーマル属性の噛みつき攻撃で、敵単体にウィルスステータスを付与する。";
      
      public static var WormCutie:String = "味方全体の強化・弱化を除くステータスを打ち消す。びしょ濡れ・寒気・乾燥・重量化・軽量化・符呪・影化などに効果あり。";
      
      public static var WraithIce:String = "敵単体の心を氷属性で貫き、即死させる可能性がある。";
      
      public static var WraithFire:String = "敵を冥府の炎属性魔法で攻撃して、暴走ステータスにする。\n • トドメを刺すときに呼び出そう。";
      
      public static var WraithSteel:String = "敵単体を爆発属性で複数回攻撃。よろめきステータスを付与する他に、物理防御デバフも付与する。";
      
      public static var WraithLeaf:String = "敵単体をバイオ属性で複数回攻撃。毒ステータスを付与する他に、魔法防御デバフも付与する。";
      
      public static var WraithMaster:String = "敵単体に闇属性魔法を使用して、長時間封印ステータスにする。";
      
      public static var Glitch2:String = "???-?eII ITEM NOT FOUND! ### \nERROR: 0x000002";
      
      public static var Glitch1:String = "??-//WARNING: WARANTY ##VOID## IF SEAL ##BROKEN##!! 0?-//??";
      
      public static var GloopStone:String = "敵単体に魔法攻撃を2倍の威力で受けるようになる影化ステータスを付与する。";
      
      public static var GloopCrystal:String = "敵単体に物理攻撃を2倍の威力で受けるようになる符呪ステータスを付与する。";
      
      public static var GloopAsh:String = "控えを含む味方全体に勇気ステータスを付与する。会心の一撃を出しやすくなり、会心の一撃を受けなくなる。";
      
      public static var GloopWood:String = "控えを含む味方全体に士気高揚ステータスを付与する。一撃で倒れなくなる。";
      
      public static var HydraZombie:String = "敵全体への即死効果の攻撃。効果がなければ闇属性物理ダメージを与える。";
      
      public static var HydraMagma:String = "敵全体への上級炎属性魔法攻撃。火傷ステータスを付与する。";
      
      public static var HydraIce:String = "敵を複数回噛み砕き、凄まじい氷属性物理ダメージを与える。";
      
      public static var DragonEarth:String = "敵全体の魔法防御力を減少させてから強い酸を吐き、バイオ属性魔法ダメージを与える。";
      
      public static var DragonSky:String = "敵全体の物理防御力を減少させてから羽の竜巻を起こし、風属性物理ダメージを与える。";
      
      public static var DragonSea:String = "敵全体の物理攻撃力を減少させてから圧倒的な水属性魔法ダメージを与える。びしょ濡れステータスも付与する。";
      
      public static var DragonOmega:String = "敵全体の魔法攻撃力を減少させてから強大な光属性魔法ダメージで打ち砕く。麻痺ステータスも付与する。";
      
      public static var BatBlood:String = "敵から下級バイオ属性攻撃で体力を吸い取り、召喚者に与える。";
      
      public static var BatSnow:String = "控えを含む味方全体に寒気ステータスを付与する。バイオ属性から守られる。";
      
      public static var BatThunder:String = "戦闘中の味方全体に混乱ステータスを付与する。ほぼオートバトルモードになる。\n • ボス戦で使うだなんてとんでもない。";
      
      public static var BatBone:String = "耐性がついていても御構い無しに、味方全体にウィルスステータスを付与する。";
      
      public static var BearBrown:String = "敵をノーマル属性攻撃で殴りつける。召喚者の残り体力が低い、または戦闘不能になった仲間の数が多いと威力が上がる。 \n • 最大威力は1000。";
      
      public static var BearGrolar:String = "敵全体を凍結ステータスにすることがある氷属性の攻撃で叩きのめす。";
      
      public static var BearPanda:String = "敵全体を毒ステータスにすることがあるバイオ属性の攻撃で突き刺す。";
      
      public static var BitIce:String = "控えを含む味方全体に魔法防御バフを付与するバリア魔法を使う。";
      
      public static var BitThunder:String = "控えを含む味方全体に物理防御バフを付与する守りの魔法を使う。";
      
      public static var BitHoly:String = "味方全体を癒す、強力な回復魔法を使う。";
      
      public static var BitFire:String = "敵単体を火傷ステータスにしたり、物理防御デバフをかけたりする炎属性攻撃。";
      
      public static var BitWind:String = "敵単体を麻痺ステータスにしたり、魔法防御デバフをかけたりする風属性攻撃。";
      
      public static var BitWater:String = "敵全体への弱い水属性魔法で攻撃。びしょ濡れステータスを付与する。氷や雷属性でコンボを決めよう。";
      
      public static var BitPoison:String = "敵全体への弱いバイオ属性魔法。毒ステータスを付与し、毎ターン少しずつ体力を削る。";
      
      public static var BoulderCoral:String = "敵によろめきステータスを付与する、水属性の飛びつき攻撃。";
      
      public static var BoulderMarble:String = "敵全体への風属性魔法。強力な封印ステータスを付与する。";
      
      public static var BoulderObsidian:String = "敵全体にＤ20をぶつける炎属性攻撃。ダメージはランダムで、火傷ステータスを付与する。";
      
      public static var BoulderDirt:String = "敵全体を土属性で攻撃。疲労ステータスを付与するかも。";
      
      public static var BoulderSandstone:String = "敵単体に飛びかかり、圧倒的な土属性物理ダメージの攻撃。";
      
      public static var CatNinja:String = "味方単体に追加ターンを与える。";
      
      public static var CatSniper:String = "敵単体を撃ち抜く。運が良ければ即死。";
      
      public static var CatWizard:String = "下級回復魔法で、味方単体のＨＰを回復する。";
      
      public static var CatBomber:String = "敵単体に爆弾を投げつけ、よろめきステータスを付与する爆発属性魔法ダメージを与える。";
      
      public static var CatWarrior:String = "敵をノーマル属性の剣術で切り裂き、ダメージを与える。";
      
      public static var DollMatt:String = "味方単体に大幅な物理攻撃バフと祝福ステータスを付与する。";
      
      public static var DollNatalie:String = "味方単体に大幅な魔法攻撃バフと士気高揚ステータスを付与する。";
      
      public static var DollLance:String = "敵全体をよろめきステータスにする、強い爆発属性魔法で攻撃する。";
      
      public static var DollAnna:String = "敵をバイオ属性の矢で貫く。相手が防御ステータス、または防御をバフ中の場合、威力が上がる。";
      
      public static var DollNoLegs:String = "幸薄そうな鳴き声をあげ、敵全体に回避率デバフと不幸ステータスを付与する。";
      
      public static var BossCyclopsDesert:String = "敵全体を圧倒的な爆発属性魔法で連続攻撃。麻痺ステータスも付与する可能性がある。";
      
      public static var BossCyclopsGlacial:String = "敵単体への上級氷属性連続攻撃。他の敵にも1/3の威力のダメージ。\n • 敵全体を凍結ステータスにする可能性がある。";
      
      public static var BossCyclopsInfernal:String = "敵単体への上級炎属性連続攻撃。他の敵にも1/3の威力のダメージ。\n • 敵全体を火傷ステータスにする可能性がある。";
      
      public static var BossGolemWater:String = "敵全体を凄まじい威力の水属性攻撃で潰す。びしょ濡れステータスも付与する可能性がある。";
      
      public static var BossGolemFire:String = "敵全体を凄まじい威力の炎属性攻撃で撃つ。生き残りも火傷ステータスにする可能性がある。";
      
      public static var BossNestCat:String = "控え含む味方全体に魔法攻撃バフを付与し、敵全体をバイオ属性の連続攻撃でなぎ倒す。";
      
      public static var BossNestNinja:String = "敵全体を凄まじい威力の闇属性魔法でなぎ倒し、呪いステータスを付与する。";
      
      public static var EvilMatt:String = "敵を一体一体、凄まじい威力の土属性物理攻撃で殴り倒す。" + HIGH_CRITS;
      
      public static var EvilNatalie:String = "敵を一体一体、凄まじい威力の光属性魔法攻撃で粛清する。" + HIGH_CRITS;
      
      public static var EvilLance:String = "敵を一体一体、凄まじい威力の爆発属性魔法攻撃で撃ち倒す。" + HIGH_CRITS;
      
      public static var EvilAnna:String = "敵を一体一体、凄まじい威力の風属性物理攻撃で切り刻む。" + HIGH_CRITS;
      
      public static var EvilNoLegs:String = "この世界最強の魔法を唱え、想像を絶するノーマル属性魔法ダメージで敵全体を滅ぼす。";
      
      public static var WraithOrigami:String = "敵単体をノーマル属性の攻撃で切り刻み、ディスペルする。";
      
      public static var GloopFab:String = "5ターンの間、天候を桜吹雪にする。";
      
      public static var CatSkeleton:String = "敵を背後から刺す闇属性物理攻撃で、最大級の不運ステータスを付与する。";
      
      public static var HydraOrigami:String = "敵全体をノーマル属性の紙製の剣で攻撃し、控えを含む味方全体に回避率バフを付与する。";
      
      public static var Defender3:String = "敵全体を強力な衝撃波で攻撃して、闇属性物理ダメージを与える。\n • 必ず会心の一撃になる。";
      
      public static var BearBlack:String = "敵単体を切り裂く炎属性物理攻撃で、最大級の乾燥ステータスを付与する。";
      
      public static var GolemBone:String = "敵全体を強力なノーマル属性攻撃で貫く。弱体化ステータスを付与する可能性がある。";
      
      public static var WormBook:String = "味方全体に命中率バフを付与する。";
      
      public static var BossGigalith:String = "敵全体を強力なノーマル属性魔法で攻撃し、じわじわと最大HPを削る炎上ステータスを付与する。";
      
      public static var BossDevourer:String = "シミュレーションを終わらせる。";
      
      public static var SketchPapalotl:String = "敵全体を防御系バフを無視する超強力なノーマル属性物理攻撃で刺す。（デバフは無視されない）";
      
      public static var SketchGuncat:String = "敵全体に防御系バフを無視する超強力な半分物理、半分魔法判定の攻撃。（デバフは無視されない）";
      
      public static var SketchXolotl:String = "敵全体に防御系バフを無視し、さらには弱体化ステータスを付与するノーマル属性物理攻撃。（デバフは無視されない）";
      
      public static var SketchGlaurung:String = "敵全体に防御系バフを無視し、さらにディスペルもする風属性魔法攻撃。（デバフは無視されない）";
      
      public static var ArcadeGuoye:String = "味方全体に強力な命中率バフを付与する。";
      
      public static var ArcadeTotom:String = "味方全体を全回復し、デバフや弱化ステータスを打ち消す。";
      
      public static var ArcadeChair:String = "敵全体に爆発属性の魔法攻撃をし、魔法攻撃デバフを付与する。";
      
      public static var ArcadePumpkus:String = "普段は何もしないが、1ターンに複数回呼ぶと怒り狂ってランダムな敵に超強力なノーマル属性物理攻撃。";
      
      public static var ArcadeGlob:String = "敵単体に臭い息を吐くノーマル属性魔法攻撃をすると同時に、ディスペル・疲労・呪い・弱体化・不運・霞を順番に付与する。";
      
      public static var ArcadeSnek:String = "敵単体に噛み付くノーマル属性物理攻撃をすると同時に、最大級の火傷と毒ステータスを付与する。";
      
      public static var ArcadeRobo:String = "敵単体を雷属性魔法で攻撃して麻痺させ、大きな命中率デバフを付与する。";
      
      public static var ArcadeBosh:String = "敵全体に大きな物理攻撃力デバフを付与する。";
      
      public static var ArcadeTreagure:String = "ランダムな敵にランダム属性で攻撃し、ランダムなステータスを付与する。\n •凍結、炎上、麻痺、封印、よろめき、破滅、不運を付与する可能性がある。";
      
      public static var ArcadePhoenix:String = "味方全体を復活させる。生きている味方には自動復活ステータスを付与する。";
      
      public static var ArcadeMermaid:String = "控えを含む味方全体に強力な回避率バフを付与する。";
      
      public static var ArcadeMaw:String = "敵全体にバイオ属性の魔法攻撃をし、ウィルスステータスを付与する。";
      
      public static var ClassicSlime:String = "敵単体への弱っちいノーマル属性攻撃。";
      
      public static var ClassicSlimeKing:String = "控えを含む味方全体に強力な回復魔法をかける。\n • 状態異常も回復する。";
      
      public static var ClassicTree:String = "敵全体に弱いバイオ属性攻撃。確率で麻痺ステータスを付与する。";
      
      public static var ClassicEyeball:String = "敵全体へのノーマル属性魔法攻撃。";
      
      public static var ClassicBeholder:String = "触手を伸ばしてバイオ属性攻撃をし、強力な毒ステータスを付与する。";
      
      public static var ClassicWaspRed:String = "敵単体に大きな魔法攻撃デバフを付与する。";
      
      public static var ClassicWaspBlack:String = "敵単体に大きな物理攻撃デバフを付与する。";
      
      public static var ClassicSandworm:String = "毒を吐き出し敵全体にバイオ属性魔法攻撃。物理・魔法の攻撃・防御デバフを付与する。";
      
      public static var ClassicEaterIce:String = "敵全体を魔法のこごえる息で攻撃。ダメージは低いが、高確率で凍結ステータスを付与する。";
      
      public static var ClassicEaterFire:String = "敵全体を魔法の燃えさかる息で攻撃。乾燥ステータスを付与する。";
      
      public static var ClassicClayBlue:String = "敵単体を風属性魔法で攻撃し、最大級の軽量化ステータスを付与する。";
      
      public static var ClassicClayRed:String = "敵単体に土属性物理攻撃をし、最大級の重量化ステータスを付与する。";
      
      public static var ClassicClayDark:String = "敵単体に闇の魔法をかけて破滅ステータスを付与し、物理・魔法の攻撃・防御デバフを付与する。";
      
      public static var ClassicClayLight:String = "上級回復魔法で控えを含む味方全体を回復する。";
      
      public static var ClassicProtector:String = "強力な雷属性魔法ビームで敵全体をぶっ飛ばす。生き残った敵に数ターン麻痺ステータスを付与する。";
      
      public static var ClassicSlingerGun:String = "敵単体を強力な爆発属性物理攻撃で狙い撃つ。\n • 必ず50%の確率で当たる。\n • 回避率と防御系バフを無視する。";
      
      public static var ClassicSlingerSword:String = "敵単体を強力なノーマル属性物理攻撃で刺す。\n • 必ず50%の確率で当たる。Always has a 50% chance of hitting.\n •  回避率と防御系バフを無視する。";
      
      public static var ClassicPraetorian:String = "味方全体に防御ステータスを付与し、敵全体に防御系バフを無視して即死効果も持つノーマル属性攻撃を放つ。（デバフは無視されない）";
      
      public static var ClassicCrystalRed:String = "敵単体を炎属性魔法で攻撃し、炎上ステータスを付与する。";
      
      public static var ClassicCrystalBlue:String = "与えるダメージは弱っちいが、高確率で数ターン敵を凍結させる。";
      
      public static var ClassicGigaGolem:String = "敵単体に炎属性か氷属性の超強力な物理攻撃を放つ。";
      
      public static var ClassicRafflesia:String = "敵全体に強力なバイオ属性物理攻撃を放つ。";
      
      public static var ClassicJack:String = "控えを含む味方全体に強力な物理・魔法攻撃バフを付与する。";
      
      public static var arcadePoison:String = "ポイズンバブル";
      
      public static var arcadeNettle:String = "イバラ締め";
      
      public static var arcadeTeeth:String = "キバトラップ";
      
      public static var bonePillar:String = "ボーンピラー";
      
      public static var hellfire:String = "地獄の業火";
      
      public static var pixelswords:String = "ソードストーム";
      
      public static var pixelfork:String = "フォーク乱舞";
      
      public static var paperSword:String = "紙のヤイバ";
      
      public static var paperStars:String = "紙の怒り";
      
      public static var swordswirl:String = "セイバーサイクロン";
      
      public static var iceneedle:String = "凍ったトゲ";
      
      public static var thunderblast:String = "電磁砲";
      
      public static var snowblast:String = "冷却砲";
      
      public static var arcadeFlood:String = "大滝";
      
      public static var ritual:String = "邪悪な儀式";
      
      public static var highgravity:String = "高重力";
      
      public static var lowgravity:String = "低重力";
      
      public static var snow:String = "雪";
      
      public static var earthquake:String = "地震";
      
      public static var blossom:String = "桜吹雪";
      
      public static var electrongun:Object = {
         "name":"モニターフラッシュ",
         "desc":"敵単体を麻痺させる雷属性魔法攻撃。" + COOLDOWN_6
      };
      
      public static var sharpen:Object = {
         "name":"砥石",
         "desc":"敵全体の弱化ステータスの継続時間を伸ばす。味方全体にかけて、味方全体の加速・防御を除く強化ステータスの継続時間を伸ばすこともできる。" + COOLDOWN_6
      };
      
      public static var sand:Object = {
         "name":"砂埃",
         "desc":"敵単体への上級土属性攻撃。" + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var sanddune:Object = {
         "name":"流砂",
         "desc":"敵単体への強力な土属性攻撃。" + equips.MAY_DRY + equips.DEBUFF_ACC
      };
      
      public static var acid3:Object = {
         "name":"アシッド",
         "desc":"敵単体への上級バイオ属性魔法攻撃。" + equips.DEBUFF_MDEF
      };
      
      public static var acid2:Object = {
         "name":"アシッドブラスト",
         "desc":"敵全体への強力なバイオ属性魔法攻撃。" + ALTERNATIVE_ONE + equips.DEBUFF_MDEF
      };
      
      public static var bubblering:Object = {
         "name":"バブルリング",
         "desc":"敵単体に封印ステータスを付与するかもしれない水属性攻撃。\n • ダメージは物理・魔法攻撃力のうち高い方の能力値を使用する。"
      };
      
      public static var musicalblast:Object = {
         "name":"歌姫の祝福",
         "desc":"控えを含む味方全体に魔法攻撃バフと再生ステータスを付与する。" + COOLDOWN_11
      };
      
      public static var geometry:Object = {
         "name":"図形攻撃",
         "desc":"敵単体への強力なノーマル属性攻撃。\n • ダメージは物理・魔法攻撃力のうち高い方の能力値を使用する。" + HIGH_ACC + HIGH_CRITS + COOLDOWN_3
      };
      
      public static var fairy2:Object = {
         "name":"フェアリーボム",
         "desc":"敵全体への強力な光属性魔法攻撃。" + HIGH_ACC + COOLDOWN_2
      };
      
      public static var death:Object = {
         "name":"死神",
         "desc":"敵単体を即死させる闇属性攻撃。" + LOW_ACC + COOLDOWN_6
      };
      
      public static var retroswords:Object = {
         "name":"悪魔の剣",
         "desc":"敵全体への強力な闇属性攻撃。" + ALTERNATIVE_ONE + COOLDOWN_2
      };
      
      public static var artattack:Object = {
         "name":"紙々の舞",
         "desc":LIMIT_BREAK + "味方全体のHPとステータスを回復し、HP、回避率、命中率にバフをかける。\n • 控え含む。"
      };
      
      public static var sevenswords:Object = {
         "name":"七剣者",
         "desc":LIMIT_BREAK + "敵全体に圧倒的な光属性物理攻撃。" + HIGH_ACC
      };
      
      public function skills()
      {
         super();
      }
   }
}

