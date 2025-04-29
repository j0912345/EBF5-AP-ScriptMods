package
{
   import flash.utils.*;
   import foes.*;
   
   public class Foes
   {
      public static var FOES:Array;
      
      public static var FOES_SANS_PREMIUM:Array;
      
      public static var FOES_PREMIUM:Array;
      
      public static var scannedFoes:Array = [];
      
      public function Foes()
      {
         super();
      }
      
      public static function init() : *
      {
         FOES = [SlimeChocolate,SlimeSand,SlimeIcecream,SlimeLava,SlimeMud,SlimeWater,SlimeBunny,SlimeMouse,SlimeBigChocolate,SlimeBigSand,SlimeBigIcecream,SlimeBigLava,SlimeBigMud,CatWarrior,CatWizard,CatSniper,CatBomber,CatNinja,CatSkeleton,BushGreen,BushRed,BushMud,BushSand,BushDark,WormPutrid,WormFuzzy,WormScaly,WormCutie,WormBook,BatBlood,BatSnow,BatBone,BatThunder,DogFriend,DogTanuki,DogWolf,DogZap,DogMage,BearBrown,BearBlack,BearGrolar,BearPanda,MammothCamel,MammothWooly,MammothWar,IdolWood,IdolGem,IdolMetal,IdolStone,GloopWood,GloopAsh,GloopFab,GloopCrystal,GloopStone,SpriteFire,SpriteIce,SpriteRock,SpriteThunder,SpriteWind,ChomperLeafy,ChomperMagma,ChomperSeaweed,ChomperMutant,SquidPink,SquidPurple,SquidLime,CreepThorny,CreepIcicle,CreepHermit,CreepGreen,CreepRed,CreepBlue,FishSteam,FishJet,FishGold,FlybotRed,FlybotYellow,FlybotBlue,Defender1,Defender2,Defender3,WraithFire,WraithIce,WraithLeaf,WraithSteel,WraithOrigami,WraithMaster,MirrorHaunted,MirrorWise,MirrorDemon,MirrorAngel,HandZombie,HandMagma,HandSkeleton,FallenBurned,FallenLost,FallenCrucified,FallenDrowned,FallenBeheaded,DollMatt,DollNatalie,DollLance,DollAnna,DollNoLegs,BitIce,BitWater,BitPoison,BitHoly,BitWind,BitThunder,BitFire,BoulderSandstone,BoulderDirt,BoulderCoral,BoulderMarble,BoulderObsidian,GolemBone,GolemPearl,GolemAmethyst,GolemTopaz,MonolithAncient,MonolithViking,MonolithCosmic,DragonEarth,DragonSky,DragonSea,DragonOmega,HydraOrigami,HydraMagma,HydraZombie,HydraIce,NormalNoLegs,NormalNatalie,NormalAnna,NormalLance,ChibiKnight,ChibiKnightSuper,ChibiKnightUltra,BossCyclopsDesert,BossCyclopsGlacial,BossCyclopsInfernal,BossTankHover,TurretHarpoon,TurretCannon,TurretLaser,BombNuke,BossTankGiga,TurretHarpoon2,BombAcid,BombEarthquake,BombShockwave,BossNestCat,BossNestNinja,BossGolemWater,BossGolemFire,EvilMatt,EvilNatalie,EvilLance,EvilAnna,EvilNoLegs,BossGigalith,BossDevourer,BossDevourerEyeball,BossDevourerTentacle,BossDevourerClub,ClassicSlime,ClassicSlimeKing,ClassicTree,ClassicEyeball,ClassicBeholder,ClassicEaterFire,ClassicEaterIce,ClassicGigaGolem,ClassicWaspRed,ClassicWaspBlack,ClassicSandworm,ClassicSandwormTail,ClassicSlingerGun,ClassicSlingerSword,ClassicJack,ClassicClayRed,ClassicClayBlue,ClassicClayDark,ClassicClayLight,ClassicProtector,ClassicFlowerRed,ClassicFlowerBlue,ClassicFlowerYellow,ClassicFlowerWhite,ClassicRafflesia,ClassicCrystalBlue,ClassicCrystalRed,ClassicPraetorian,SketchGuncat,SketchPapalotl,SketchXolotl,SketchGlaurung,PixelSlime,PixelBat,PixelBush,PixelIdol,Underlegs,ArcadeBosh,ArcadeRobo,ArcadeGlob,ArcadeSnek,ArcadePumpkus,ArcadeChair,ArcadePhoenix,ArcadeTreagure,ArcadeTotom,ArcadeGuoye,ArcadeMermaid,ArcadeMaw,Glitch2,Glitch1];
         FOES_SANS_PREMIUM = [];
      }
      
      public static function hydraCount() : int
      {
         var _loc2_:Target = null;
         var _loc1_:int = 0;
         for each(_loc2_ in Battle.foes)
         {
            if(!_loc2_.dead && (_loc2_ is HydraIce || _loc2_ is HydraZombie || _loc2_ is HydraMagma))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public static function isScanned(param1:Target) : Boolean
      {
         var n:String = null;
         var t:Target = param1;
         try
         {
            for each(n in scannedFoes)
            {
               if(getQualifiedClassName(t) == n)
               {
                  return true;
               }
            }
            return false;
         }
         catch(e:Error)
         {
            return false;
         }
      }
      
      public static function isScanned2(param1:Class) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in scannedFoes)
         {
            if(getQualifiedClassName(param1) == _loc2_)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function isCaught(param1:Target) : *
      {
         currentFoe = getQualifiedClassName(param1).substring(6);
         if(Boolean(Summons.info[currentFoe]) && Summons.info[currentFoe] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function isCaught2(param1:String) : *
      {
         currentFoe = param1;
         if(Boolean(Summons.info[currentFoe]) && Summons.info[currentFoe] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function scan(param1:Target, param2:Boolean = true) : *
      {
         if(!isScanned(param1))
         {
            scannedFoes.push(getQualifiedClassName(param1));
            if(param2)
            {
               DamageNumber.displayDamage(DamageNumber.SCAN,0,param1);
            }
         }
         if(scannedFoes.length >= Medals.xrayGoggles.value)
         {
            Medals.unlock(Medals.xrayGoggles);
         }
      }
   }
}

