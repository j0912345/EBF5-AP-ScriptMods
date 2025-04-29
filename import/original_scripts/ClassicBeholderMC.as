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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7672")]
   public dynamic class ClassicBeholderMC extends FoeMC
   {
      public function ClassicBeholderMC()
      {
         super();
         addFrameScript(0,this.frame1,47,this.frame48,86,this.frame87,100,this.frame101,105,this.frame106,106,this.frame107,110,this.frame111,129,this.frame130,139,this.frame140,153,this.frame154,155,this.frame156,172,this.frame173,200,this.frame201,203,this.frame204,215,this.frame216,222,this.frame223,234,this.frame235,241,this.frame242,248,this.frame249,266,this.frame267,278,this.frame279,285,this.frame286,286,this.frame287,288,this.frame289,317,this.frame318,329,this.frame330,335,this.frame336,342,this.frame343,355,this.frame356,369,this.frame370,382,this.frame383,385,this.frame386,393,this.frame394,397,this.frame398,410,this.frame411,424,this.frame425,427,this.frame428,478,this.frame479,518,this.frame519,542,this.frame543);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame48() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame87() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[12]);
         }
      }
      
      internal function frame101() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[20]);
         }
      }
      
      internal function frame106() : *
      {
         k();
      }
      
      internal function frame107() : *
      {
         stand();
         stop();
      }
      
      internal function frame111() : *
      {
      }
      
      internal function frame130() : *
      {
         k();
      }
      
      internal function frame140() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[16]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf1[17]);
         }
      }
      
      internal function frame154() : *
      {
         k();
      }
      
      internal function frame156() : *
      {
         dropItems();
      }
      
      internal function frame173() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[18]);
         }
      }
      
      internal function frame201() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame204() : *
      {
         dead();
      }
      
      internal function frame216() : *
      {
         setXY();
         move(40,12,null);
      }
      
      internal function frame223() : *
      {
         swapLayer(true);
      }
      
      internal function frame235() : *
      {
         self.attack1();
      }
      
      internal function frame242() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame249() : *
      {
         resetLayer();
      }
      
      internal function frame267() : *
      {
         k();
      }
      
      internal function frame279() : *
      {
         Battle.shake("small");
      }
      
      internal function frame286() : *
      {
         self.special1();
      }
      
      internal function frame287() : *
      {
         Battle.shake("big");
      }
      
      internal function frame289() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[15]);
         }
      }
      
      internal function frame318() : *
      {
         k();
      }
      
      internal function frame330() : *
      {
         setXY();
         if(isSummon)
         {
            move(-20,12,null);
         }
         else
         {
            move(40,12,null);
         }
      }
      
      internal function frame336() : *
      {
         swapLayer(true);
      }
      
      internal function frame343() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.ClassicBeholder.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame356() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.ClassicBeholder.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame370() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.ClassicBeholder.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame383() : *
      {
         if(isSummon)
         {
            Summons.ClassicBeholder.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame386() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame394() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf1[13]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf1[14]);
         }
      }
      
      internal function frame398() : *
      {
         resetLayer();
      }
      
      internal function frame411() : *
      {
         k();
      }
      
      internal function frame425() : *
      {
         self.attack2();
      }
      
      internal function frame428() : *
      {
         Battle.shake("small");
      }
      
      internal function frame479() : *
      {
         k();
      }
      
      internal function frame519() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame543() : *
      {
         flee();
      }
   }
}

