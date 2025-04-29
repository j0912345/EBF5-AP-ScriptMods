package
{
   import fl.transitions.easing.*;
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13138")]
   public dynamic class Wyrm extends FoeMC
   {
      public function Wyrm()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,34,this.frame35,59,this.frame60,61,this.frame62,81,this.frame82,91,this.frame92,93,this.frame94,134,this.frame135,136,this.frame137,141,this.frame142,154,this.frame155,155,this.frame156,159,this.frame160,178,this.frame179,179,this.frame180,180,this.frame181,210,this.frame211,213,this.frame214,216,this.frame217,237,this.frame238,238,this.frame239,252,this.frame253,260,this.frame261,275,this.frame276,301,this.frame302,313,this.frame314,329,this.frame330,336,this.frame337,339,this.frame340,355,this.frame356,361,this.frame362,381,this.frame382,393,this.frame394,394,this.frame395,399,this.frame400,413,this.frame414,419,this.frame420,431,this.frame432,432,this.frame433,439,this.frame440,446,this.frame447,451,this.frame452,465,this.frame466,466,this.frame467,471,this.frame472,472,this.frame473,495,this.frame496,522,this.frame523,528,this.frame529,532,this.frame533,544,this.frame545,560,this.frame561,564,this.frame565,565,this.frame566,592,this.frame593,622,this.frame623,641,this.frame642,669,this.frame670,692,this.frame693,721,this.frame722,723,this.frame724,743,this.frame744,749,this.frame750,770,this.frame771,772,this.frame773,791,this.frame792,794,this.frame795,826,this.frame827,829,this.frame830,832,this.frame833,845,this.frame846,890,this.frame891,893,this.frame894,896,this.frame897,899,this.frame900,902,this.frame903,908,this.frame909,921,this.frame922,928,this.frame929,935,this.frame936,940,this.frame941,954,this.frame955,986,this.frame987,989,this.frame990,992,this.frame993,1005,this.frame1006);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         if(skin % 2 == 0)
         {
            --skin;
         }
         randomDelay(30);
      }
      
      internal function frame35() : *
      {
         if(isSummon)
         {
            this.x -= 140;
            Battle.hidePlayers();
         }
      }
      
      internal function frame60() : *
      {
         if(!isSummon)
         {
            if(skin == 1)
            {
               Text.speech(Text.hydra[7]);
            }
            if(skin == 1 && Battle.foeCount() == 3 && !Options.altFoes)
            {
               Text.speech(Text.hydra[1]);
            }
            if(skin == 3)
            {
               Text.speech(Text.hydra[14]);
            }
         }
      }
      
      internal function frame62() : *
      {
         k();
      }
      
      internal function frame82() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame92() : *
      {
         flee();
      }
      
      internal function frame94() : *
      {
         stand();
      }
      
      internal function frame135() : *
      {
         ks();
      }
      
      internal function frame137() : *
      {
         if(skin == 7)
         {
            playSound("paperh1");
         }
         else
         {
            playSound("" + (482 + skin));
         }
      }
      
      internal function frame142() : *
      {
         if(skin == 6 || skin == 4)
         {
            Text.speech(Text.hydra[10]);
         }
         if(skin >= 6)
         {
            Text.speech(Text.hydra[12]);
         }
      }
      
      internal function frame155() : *
      {
         k();
      }
      
      internal function frame156() : *
      {
         if(skin == 7)
         {
            playSound("paperh2");
         }
         else
         {
            playSound("" + (488 + skin));
         }
      }
      
      internal function frame160() : *
      {
         if(skin == 6 || skin == 4)
         {
            Text.speech(Text.hydra[10]);
         }
         if(skin >= 6)
         {
            Text.speech(Text.hydra[12]);
         }
      }
      
      internal function frame179() : *
      {
         k();
      }
      
      internal function frame180() : *
      {
         if(skin == 7)
         {
            playSound("paperh2");
         }
         else
         {
            playSound("" + (488 + skin));
         }
         playSound("479");
      }
      
      internal function frame181() : *
      {
         self.loseHead();
         if(skin % 2 == 1)
         {
            ++skin;
         }
      }
      
      internal function frame211() : *
      {
         playSound("480");
      }
      
      internal function frame214() : *
      {
         playSound("481");
      }
      
      internal function frame217() : *
      {
         playSound("482");
      }
      
      internal function frame238() : *
      {
         k();
      }
      
      internal function frame239() : *
      {
         if(Battle.foeCount() == 0 && skin != 7)
         {
            Battle.whiteFlash();
         }
         if(skin == 7)
         {
            playSound("paperh2");
         }
         else
         {
            playSound("" + (488 + skin));
         }
      }
      
      internal function frame253() : *
      {
         Battle.shake("small");
      }
      
      internal function frame261() : *
      {
         if(Battle.foeCount() == 0 && skin != 7)
         {
            Text.speech(Text.hydra[11]);
         }
      }
      
      internal function frame276() : *
      {
         randomDelay(25);
      }
      
      internal function frame302() : *
      {
         if(skin % 2 == 0 || skin == 7)
         {
            gotoAndPlay("die2");
         }
      }
      
      internal function frame314() : *
      {
         dropItems();
      }
      
      internal function frame330() : *
      {
         if(Battle.foeCount() == 0 && (Flags.battleEvent == Flags.ZOMBIE_HYDRA || Flags.battleEvent == Flags.MINIBOSS_RUSH && Battle.wave == 4))
         {
            Medals.unlock(Medals.tripleDead);
            Flags.ZOMBIE_HYDRA_DEFEATED.quantity = 1;
         }
         if(Battle.foeCount() == 0 && (Flags.battleEvent == Flags.BLAZE_HYDRA || Flags.battleEvent == Flags.MINIBOSS_RUSH && Battle.wave == 2))
         {
            Medals.unlock(Medals.burningSoul);
         }
         if(Battle.foeCount() == 0 && (Flags.battleEvent == Flags.ICE_HYDRA || Flags.battleEvent == Flags.SUPER_BOSS_RUSH && Battle.wave == 5))
         {
            Medals.unlock(Medals.noRespawns);
            Flags.ICE_HYDRA_DEFEATED.quantity = 1;
         }
      }
      
      internal function frame337() : *
      {
         dead();
      }
      
      internal function frame340() : *
      {
         dropItems();
      }
      
      internal function frame356() : *
      {
         if(Battle.foeCount() == 0 && (Flags.battleEvent == Flags.ZOMBIE_HYDRA || Flags.battleEvent == Flags.MINIBOSS_RUSH && Battle.wave == 4))
         {
            Medals.unlock(Medals.tripleDead);
            Flags.ZOMBIE_HYDRA_DEFEATED.quantity = 1;
         }
         if(Battle.foeCount() == 0 && (Flags.battleEvent == Flags.BLAZE_HYDRA || Flags.battleEvent == Flags.MINIBOSS_RUSH && Battle.wave == 2))
         {
            Medals.unlock(Medals.burningSoul);
         }
         if(Battle.foeCount() == 0 && (Flags.battleEvent == Flags.ICE_HYDRA || Flags.battleEvent == Flags.SUPER_BOSS_RUSH && Battle.wave == 5))
         {
            Medals.unlock(Medals.noRespawns);
            Flags.ICE_HYDRA_DEFEATED.quantity = 1;
         }
      }
      
      internal function frame362() : *
      {
         dead();
      }
      
      internal function frame382() : *
      {
         setXY();
         move(180,12,Regular.easeInOut);
      }
      
      internal function frame394() : *
      {
         Text.speech(Text.hydra[2]);
         Text.speech(Text.hydra[13]);
         if(skin >= 5)
         {
            Text.speech(Text.hydra[8]);
         }
      }
      
      internal function frame395() : *
      {
         self.attack1();
      }
      
      internal function frame400() : *
      {
         resetXY();
         move(0,12,Regular.easeInOut);
      }
      
      internal function frame414() : *
      {
         k();
      }
      
      internal function frame420() : *
      {
         setXY();
         move(isSummon ? -180 : 180,12,Regular.easeInOut);
      }
      
      internal function frame432() : *
      {
         if(skin >= 5)
         {
            Text.speech(Text.hydra[8]);
         }
      }
      
      internal function frame433() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame440() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame447() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack2();
         }
      }
      
      internal function frame452() : *
      {
         resetXY();
         if(isSummon)
         {
            X -= 150;
         }
         move(0,12,Regular.easeInOut);
      }
      
      internal function frame466() : *
      {
         k();
      }
      
      internal function frame467() : *
      {
         makeMagic(HydraTail,0,0,false,skin);
      }
      
      internal function frame472() : *
      {
         Battle.shake("small");
      }
      
      internal function frame473() : *
      {
         self.attack3();
      }
      
      internal function frame496() : *
      {
         k();
      }
      
      internal function frame523() : *
      {
         if(!isSummon)
         {
            self.magic1();
         }
         else if(skin > 6)
         {
            Summons.HydraOrigami.effect();
         }
      }
      
      internal function frame529() : *
      {
         if(skin > 6 && isSummon)
         {
            Summons.HydraOrigami.effect3();
         }
      }
      
      internal function frame533() : *
      {
         if(!isSummon && skin == 7)
         {
            Text.speech(Text.library[2]);
         }
      }
      
      internal function frame545() : *
      {
         k();
      }
      
      internal function frame561() : *
      {
         if(skin == 2)
         {
            Text.speech(Text.hydra[3]);
         }
         if(skin == 2 || skin == 4 || skin == 6)
         {
            Text.speech(Text.hydra[4]);
         }
      }
      
      internal function frame565() : *
      {
         k();
      }
      
      internal function frame566() : *
      {
         playSound("heal");
      }
      
      internal function frame593() : *
      {
         k();
      }
      
      internal function frame623() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic2();
         }
      }
      
      internal function frame642() : *
      {
         k();
      }
      
      internal function frame670() : *
      {
         self.special1();
      }
      
      internal function frame693() : *
      {
         k();
      }
      
      internal function frame722() : *
      {
         Text.speech(Text.hydra[15]);
      }
      
      internal function frame724() : *
      {
         self.special2();
         makeMagic(EffectFire3,0,0,true);
      }
      
      internal function frame744() : *
      {
         k();
      }
      
      internal function frame750() : *
      {
         summonOnTop();
      }
      
      internal function frame771() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame773() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special3();
         }
         makeMagic(EffectFire3,0,0,true);
         Battle.shake("small");
      }
      
      internal function frame792() : *
      {
         summonOnTop(false);
      }
      
      internal function frame795() : *
      {
         k();
      }
      
      internal function frame827() : *
      {
         Battle.finalHit = false;
         self.special4();
         makeMagic(EffectWind,0,0,true);
      }
      
      internal function frame830() : *
      {
         Battle.finalHit = false;
         self.special4();
      }
      
      internal function frame833() : *
      {
         self.special4();
      }
      
      internal function frame846() : *
      {
         k();
      }
      
      internal function frame891() : *
      {
         Battle.finalHit = false;
         self.special5();
         makeMagic(EffectIce2,0,0);
      }
      
      internal function frame894() : *
      {
         Battle.finalHit = false;
         self.special5();
         makeMagic(EffectIce2,0,0);
      }
      
      internal function frame897() : *
      {
         Battle.finalHit = false;
         self.special5();
         makeMagic(EffectIce2,0,0);
      }
      
      internal function frame900() : *
      {
         self.special5();
         makeMagic(EffectIce2,0,0);
      }
      
      internal function frame903() : *
      {
         k();
      }
      
      internal function frame909() : *
      {
         setXY();
         move(isSummon ? -180 : 180,12,Regular.easeInOut);
      }
      
      internal function frame922() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame929() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame936() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack4();
         }
      }
      
      internal function frame941() : *
      {
         resetXY();
         if(isSummon)
         {
            X -= 150;
         }
         move(0,12,Regular.easeInOut);
      }
      
      internal function frame955() : *
      {
         k();
      }
      
      internal function frame987() : *
      {
         Battle.finalHit = false;
         self.special6();
         makeMagic(EffectWind2,0,0,true);
      }
      
      internal function frame990() : *
      {
         Battle.finalHit = false;
         self.special6();
      }
      
      internal function frame993() : *
      {
         self.special6();
      }
      
      internal function frame1006() : *
      {
         k();
      }
   }
}

