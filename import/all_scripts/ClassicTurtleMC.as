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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18528")]
   public dynamic class ClassicTurtleMC extends FoeMC
   {
      public function ClassicTurtleMC()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,29,this.frame30,34,this.frame35,54,this.frame55,57,this.frame58,61,this.frame62,63,this.frame64,65,this.frame66,90,this.frame91,91,this.frame92,115,this.frame116,116,this.frame117,117,this.frame118,164,this.frame165,170,this.frame171,173,this.frame174,182,this.frame183,185,this.frame186,200,this.frame201,204,this.frame205,223,this.frame224,245,this.frame246,246,this.frame247,262,this.frame263,263,this.frame264,268,this.frame269,285,this.frame286,301,this.frame302,305,this.frame306,309,this.frame310,314,this.frame315,318,this.frame319,322,this.frame323,326,this.frame327,335,this.frame336,336,this.frame337,347,this.frame348,348,this.frame349,349,this.frame350,374,this.frame375,381,this.frame382,406,this.frame407,414,this.frame415,417,this.frame418,421,this.frame422,431,this.frame432,445,this.frame446,447,this.frame448,468,this.frame469,480,this.frame481,482,this.frame483,498,this.frame499);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame6() : *
      {
         randomDelay(20);
      }
      
      internal function frame30() : *
      {
         if(isSummon)
         {
            this.x -= 60;
         }
      }
      
      internal function frame35() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
         }
      }
      
      internal function frame55() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[0]);
         }
      }
      
      internal function frame58() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame62() : *
      {
         k();
      }
      
      internal function frame64() : *
      {
         body.skin = skin;
         stand();
         stop();
      }
      
      internal function frame66() : *
      {
         playSound("turtlehit");
      }
      
      internal function frame91() : *
      {
         k();
      }
      
      internal function frame92() : *
      {
         playSound("turtlehit");
      }
      
      internal function frame116() : *
      {
         k();
      }
      
      internal function frame117() : *
      {
         playSound("turtledie");
      }
      
      internal function frame118() : *
      {
         dropItems();
      }
      
      internal function frame165() : *
      {
         dead();
      }
      
      internal function frame171() : *
      {
         setXY();
         move(-5,15,null);
      }
      
      internal function frame174() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[1]);
         }
      }
      
      internal function frame183() : *
      {
         swapLayer(true);
      }
      
      internal function frame186() : *
      {
         self.attack1();
      }
      
      internal function frame201() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame205() : *
      {
         resetLayer();
      }
      
      internal function frame224() : *
      {
         k();
      }
      
      internal function frame246() : *
      {
         Battle.shake("small");
      }
      
      internal function frame247() : *
      {
         self.attack2();
      }
      
      internal function frame263() : *
      {
         Battle.shake("small");
      }
      
      internal function frame264() : *
      {
         self.attack2();
      }
      
      internal function frame269() : *
      {
         k();
      }
      
      internal function frame286() : *
      {
         summonOnTop();
      }
      
      internal function frame302() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicEaterIce.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame306() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicEaterIce.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame310() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicEaterIce.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame315() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicEaterIce.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame319() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicEaterIce.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame323() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicEaterIce.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame327() : *
      {
         if(isSummon)
         {
            Summons.ClassicEaterIce.effect();
         }
         else
         {
            self.special1(2);
         }
      }
      
      internal function frame336() : *
      {
         if(isSummon)
         {
            resetLayer();
         }
      }
      
      internal function frame337() : *
      {
         k();
      }
      
      internal function frame348() : *
      {
      }
      
      internal function frame349() : *
      {
         self.special2();
      }
      
      internal function frame350() : *
      {
         Battle.shake("small");
      }
      
      internal function frame375() : *
      {
         k();
      }
      
      internal function frame382() : *
      {
         summonOnTop();
      }
      
      internal function frame407() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicEaterFire.effect();
         }
         else
         {
            self.special3();
         }
      }
      
      internal function frame415() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicEaterFire.effect();
         }
         else
         {
            self.special3();
         }
      }
      
      internal function frame418() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[2]);
         }
      }
      
      internal function frame422() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicEaterFire.effect();
         }
         else
         {
            self.special3();
         }
      }
      
      internal function frame432() : *
      {
         if(isSummon)
         {
            Summons.ClassicEaterFire.effect();
         }
         else
         {
            self.special3(2);
         }
      }
      
      internal function frame446() : *
      {
         if(isSummon)
         {
            resetLayer();
         }
      }
      
      internal function frame448() : *
      {
         k();
      }
      
      internal function frame469() : *
      {
         k();
      }
      
      internal function frame481() : *
      {
         Battle.shake("small");
      }
      
      internal function frame483() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame499() : *
      {
         flee();
      }
   }
}

