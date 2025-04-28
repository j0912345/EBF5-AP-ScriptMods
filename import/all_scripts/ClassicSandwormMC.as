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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18555")]
   public dynamic class ClassicSandwormMC extends FoeMC
   {
      public function ClassicSandwormMC()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,19,this.frame20,27,this.frame28,42,this.frame43,43,this.frame44,44,this.frame45,45,this.frame46,66,this.frame67,94,this.frame95,95,this.frame96,96,this.frame97,110,this.frame111,131,this.frame132,195,this.frame196,202,this.frame203,211,this.frame212,217,this.frame218,226,this.frame227,237,this.frame238,249,this.frame250,268,this.frame269,277,this.frame278,284,this.frame285,295,this.frame296,302,this.frame303,323,this.frame324,327,this.frame328,339,this.frame340,359,this.frame360,373,this.frame374,390,this.frame391,392,this.frame393,395,this.frame396,409,this.frame410,429,this.frame430,446,this.frame447,453,this.frame454,460,this.frame461,475,this.frame476,477,this.frame478,504,this.frame505,510,this.frame511,518,this.frame519,527,this.frame528,531,this.frame532,535,this.frame536,537,this.frame538,539,this.frame540,562,this.frame563,584,this.frame585,613,this.frame614,626,this.frame627);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame2() : *
      {
      }
      
      internal function frame20() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame28() : *
      {
         Battle.shake("big");
      }
      
      internal function frame43() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[12]);
         }
      }
      
      internal function frame44() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame45() : *
      {
         k();
      }
      
      internal function frame46() : *
      {
         stop();
         stand();
      }
      
      internal function frame67() : *
      {
         k();
      }
      
      internal function frame95() : *
      {
         k();
      }
      
      internal function frame96() : *
      {
         Battle.shake("small");
      }
      
      internal function frame97() : *
      {
         dropItems();
      }
      
      internal function frame111() : *
      {
         Battle.shake("small");
      }
      
      internal function frame132() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[21]);
         }
      }
      
      internal function frame196() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame203() : *
      {
         dead();
      }
      
      internal function frame212() : *
      {
         setXY();
         move(25,12,null);
      }
      
      internal function frame218() : *
      {
         swapLayer();
      }
      
      internal function frame227() : *
      {
         self.attack1();
      }
      
      internal function frame238() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame250() : *
      {
         resetLayer();
      }
      
      internal function frame269() : *
      {
         k();
      }
      
      internal function frame278() : *
      {
         setXY();
         move(-10,12,null);
      }
      
      internal function frame285() : *
      {
         swapLayer();
      }
      
      internal function frame296() : *
      {
         Battle.selectedTarget.graphic.visible = false;
         Battle.shake("small");
      }
      
      internal function frame303() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[15]);
         }
      }
      
      internal function frame324() : *
      {
         Battle.selectedTarget.graphic.visible = true;
         self.attack2();
      }
      
      internal function frame328() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame340() : *
      {
         resetLayer();
      }
      
      internal function frame360() : *
      {
         k();
      }
      
      internal function frame374() : *
      {
         Battle.shake("small");
      }
      
      internal function frame391() : *
      {
         self.special1();
      }
      
      internal function frame393() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[14]);
         }
      }
      
      internal function frame396() : *
      {
         k();
      }
      
      internal function frame410() : *
      {
         Battle.shake("small");
      }
      
      internal function frame430() : *
      {
         self.special2();
      }
      
      internal function frame447() : *
      {
         k();
      }
      
      internal function frame454() : *
      {
      }
      
      internal function frame461() : *
      {
      }
      
      internal function frame476() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[16]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf2[17]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf2[18]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf2[19]);
         }
         if(isSummon)
         {
            Text.speech(Text.ebf2[22]);
         }
      }
      
      internal function frame478() : *
      {
         self.special3();
      }
      
      internal function frame505() : *
      {
         k();
      }
      
      internal function frame511() : *
      {
         summonOnTop();
      }
      
      internal function frame519() : *
      {
      }
      
      internal function frame528() : *
      {
         if(isSummon)
         {
            Summons.ClassicSandworm.effect(1);
         }
         else
         {
            self.special4(1);
         }
      }
      
      internal function frame532() : *
      {
         if(isSummon)
         {
            Summons.ClassicSandworm.effect(2);
         }
         else
         {
            self.special4(2);
         }
      }
      
      internal function frame536() : *
      {
         if(isSummon)
         {
            Summons.ClassicSandworm.effect(3);
         }
         else
         {
            self.special4(3);
         }
      }
      
      internal function frame538() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[16]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf2[17]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf2[18]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf2[20]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf2[19]);
         }
         if(isSummon)
         {
            Text.speech(Text.ebf2[22]);
         }
      }
      
      internal function frame540() : *
      {
         if(isSummon)
         {
            Summons.ClassicSandworm.effect(4);
         }
         else
         {
            self.special4(4);
         }
      }
      
      internal function frame563() : *
      {
         k();
      }
      
      internal function frame585() : *
      {
         k();
      }
      
      internal function frame614() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame627() : *
      {
         flee();
      }
   }
}

