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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15615")]
   public dynamic class ClassicCrystalMC extends FoeMC
   {
      public function ClassicCrystalMC()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,64,this.frame65,65,this.frame66,67,this.frame68,69,this.frame70,101,this.frame102,103,this.frame104,123,this.frame124,124,this.frame125,151,this.frame152,152,this.frame153,153,this.frame154,158,this.frame159,215,this.frame216,232,this.frame233,233,this.frame234,260,this.frame261,309,this.frame310,330,this.frame331,374,this.frame375,401,this.frame402,455,this.frame456,458,this.frame459,460,this.frame461,467,this.frame468,474,this.frame475,483,this.frame484,492,this.frame493,495,this.frame496,503,this.frame504,517,this.frame518,524,this.frame525,531,this.frame532,544,this.frame545,547,this.frame548,549,this.frame550,551,this.frame552,553,this.frame554,555,this.frame556,557,this.frame558,559,this.frame560,561,this.frame562,566,this.frame567,571,this.frame572,577,this.frame578,591,this.frame592,640,this.frame641,661,this.frame662,713,this.frame714,720,this.frame721,757,this.frame758);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame2() : *
      {
         randomDelay(30);
      }
      
      internal function frame65() : *
      {
         if(!isSummon && Flags.battleEvent == Flags.EBF4B)
         {
            Text.speech(Text.ebf4[14]);
         }
      }
      
      internal function frame66() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame68() : *
      {
         k();
      }
      
      internal function frame70() : *
      {
         stand();
      }
      
      internal function frame102() : *
      {
         ks();
      }
      
      internal function frame104() : *
      {
         playSound("crystalhit1");
      }
      
      internal function frame124() : *
      {
         k();
      }
      
      internal function frame125() : *
      {
         playSound("crystalhit2");
      }
      
      internal function frame152() : *
      {
         k();
      }
      
      internal function frame153() : *
      {
         playSound("crystaldie");
      }
      
      internal function frame154() : *
      {
         dropItems();
      }
      
      internal function frame159() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[16]);
         }
      }
      
      internal function frame216() : *
      {
         dead();
      }
      
      internal function frame233() : *
      {
         k();
      }
      
      internal function frame234() : *
      {
         playSound("cheal");
      }
      
      internal function frame261() : *
      {
         k();
      }
      
      internal function frame310() : *
      {
         self.special1();
      }
      
      internal function frame331() : *
      {
         k();
      }
      
      internal function frame375() : *
      {
         self.special2();
      }
      
      internal function frame402() : *
      {
         k();
      }
      
      internal function frame456() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame459() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[15]);
         }
      }
      
      internal function frame461() : *
      {
         k();
      }
      
      internal function frame468() : *
      {
         setXY();
         if(isSummon)
         {
            move(-10,12,null);
         }
         else
         {
            move(10,12,null);
         }
      }
      
      internal function frame475() : *
      {
         swapLayer();
      }
      
      internal function frame484() : *
      {
         if(isSummon)
         {
            Summons.ClassicCrystalBlue.effect();
         }
         else
         {
            self.attack1();
         }
      }
      
      internal function frame493() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame496() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[15]);
         }
      }
      
      internal function frame504() : *
      {
         resetLayer();
      }
      
      internal function frame518() : *
      {
         k();
      }
      
      internal function frame525() : *
      {
         setXY();
         move(50,12,null);
      }
      
      internal function frame532() : *
      {
         swapLayer();
      }
      
      internal function frame545() : *
      {
         self.attack2();
      }
      
      internal function frame548() : *
      {
         self.attack2();
      }
      
      internal function frame550() : *
      {
         self.attack2();
      }
      
      internal function frame552() : *
      {
         self.attack2();
      }
      
      internal function frame554() : *
      {
         self.attack2();
      }
      
      internal function frame556() : *
      {
         self.attack2();
      }
      
      internal function frame558() : *
      {
         self.attack2();
      }
      
      internal function frame560() : *
      {
         self.attack2();
      }
      
      internal function frame562() : *
      {
         self.attack2();
      }
      
      internal function frame567() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame572() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[15]);
         }
      }
      
      internal function frame578() : *
      {
         resetLayer();
      }
      
      internal function frame592() : *
      {
         k();
      }
      
      internal function frame641() : *
      {
         self.special3();
      }
      
      internal function frame662() : *
      {
         k();
      }
      
      internal function frame714() : *
      {
         self.special4();
      }
      
      internal function frame721() : *
      {
         k();
      }
      
      internal function frame758() : *
      {
         flee();
      }
   }
}

