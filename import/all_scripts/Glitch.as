package
{
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14594")]
   public dynamic class Glitch extends FoeMC
   {
      public function Glitch()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,45,this.frame46,47,this.frame48,49,this.frame50,85,this.frame86,87,this.frame88,104,this.frame105,105,this.frame106,132,this.frame133,133,this.frame134,153,this.frame154,156,this.frame157,168,this.frame169,177,this.frame178,179,this.frame180,188,this.frame189,195,this.frame196,196,this.frame197,216,this.frame217,221,this.frame222,223,this.frame224,228,this.frame229,236,this.frame237,253,this.frame254,260,this.frame261,272,this.frame273,288,this.frame289,309,this.frame310,311,this.frame312,354,this.frame355,369,this.frame370,398,this.frame399,432,this.frame433,456,this.frame457,471,this.frame472,476,this.frame477,479,this.frame480,488,this.frame489);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame2() : *
      {
         randomDelay(25);
      }
      
      internal function frame46() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.glitch[1]);
         }
         if(Flags.battleEvent != Flags.GLITCH)
         {
            Text.speech(Text.glitch[11]);
         }
         if(Flags.battleEvent != Flags.GLITCH)
         {
            Text.speech(Text.glitch[15]);
         }
         if(Flags.battleEvent != Flags.GLITCH)
         {
            Text.speech(Text.glitch[16]);
         }
      }
      
      internal function frame48() : *
      {
         k();
      }
      
      internal function frame50() : *
      {
         stand();
      }
      
      internal function frame86() : *
      {
         k();
      }
      
      internal function frame88() : *
      {
         playSound("338");
      }
      
      internal function frame105() : *
      {
         k();
      }
      
      internal function frame106() : *
      {
         playSound("339");
      }
      
      internal function frame133() : *
      {
         k();
      }
      
      internal function frame134() : *
      {
         Battle.shake("small");
         if(skin == 1)
         {
            makeMagic(BlueScreen);
         }
         else
         {
            dropItems();
         }
         playSound("340");
      }
      
      internal function frame154() : *
      {
         if(Battle.foeCount() == 0 && Flags.battleEvent == Flags.ZOMBIE_HYDRA)
         {
            Medals.unlock(Medals.tripleDead);
            Flags.ZOMBIE_HYDRA_DEFEATED.quantity = 1;
         }
      }
      
      internal function frame157() : *
      {
         if(Flags.battleEvent != Flags.GLITCH)
         {
            Text.speech(Text.glitch[14]);
         }
      }
      
      internal function frame169() : *
      {
         if(skin == 1)
         {
            Battle.bossDefeated();
         }
      }
      
      internal function frame178() : *
      {
         dead();
      }
      
      internal function frame180() : *
      {
         playSound("341");
      }
      
      internal function frame189() : *
      {
         summonOnTop();
      }
      
      internal function frame196() : *
      {
         k();
      }
      
      internal function frame197() : *
      {
         playSound("342");
      }
      
      internal function frame217() : *
      {
         if(Flags.battleEvent != Flags.GLITCH)
         {
            Text.speech(Text.glitch[13]);
         }
      }
      
      internal function frame222() : *
      {
         k();
      }
      
      internal function frame224() : *
      {
         setXY();
         move(0,25,null);
      }
      
      internal function frame229() : *
      {
         if(Flags.battleEvent != Flags.GLITCH)
         {
            Text.speech(Text.glitch[12]);
         }
      }
      
      internal function frame237() : *
      {
         swapLayer();
      }
      
      internal function frame254() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack1();
         }
      }
      
      internal function frame261() : *
      {
         resetXY();
         move(0,25,null);
      }
      
      internal function frame273() : *
      {
         resetLayer();
      }
      
      internal function frame289() : *
      {
         k();
      }
      
      internal function frame310() : *
      {
         summonOnTop(false);
      }
      
      internal function frame312() : *
      {
         flee();
      }
      
      internal function frame355() : *
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
      
      internal function frame370() : *
      {
         k();
      }
      
      internal function frame399() : *
      {
         if(skin == 1)
         {
            makeMagic(RedFlash);
         }
      }
      
      internal function frame433() : *
      {
         self.attack3();
      }
      
      internal function frame457() : *
      {
         k();
      }
      
      internal function frame472() : *
      {
         self.attack4();
      }
      
      internal function frame477() : *
      {
         parent.stage.frameRate = 15;
      }
      
      internal function frame480() : *
      {
         parent.stage.frameRate = 30;
      }
      
      internal function frame489() : *
      {
         k();
      }
   }
}

