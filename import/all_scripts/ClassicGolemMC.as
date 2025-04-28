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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18589")]
   public dynamic class ClassicGolemMC extends FoeMC
   {
      public function ClassicGolemMC()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,54,this.frame55,91,this.frame92,111,this.frame112,115,this.frame116,117,this.frame118,158,this.frame159,187,this.frame188,214,this.frame215,216,this.frame217,229,this.frame230,230,this.frame231,266,this.frame267,272,this.frame273,278,this.frame279,287,this.frame288,294,this.frame295,296,this.frame297,301,this.frame302,305,this.frame306,321,this.frame322,327,this.frame328,336,this.frame337,344,this.frame345,349,this.frame350,354,this.frame355,364,this.frame365,378,this.frame379,397,this.frame398,405,this.frame406,417,this.frame418,425,this.frame426,445,this.frame446,479,this.frame480,483,this.frame484);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame2() : *
      {
      }
      
      internal function frame55() : *
      {
         if(isSummon)
         {
            skin = int(2 + Math.random() * 2);
            Battle.hidePlayers();
         }
      }
      
      internal function frame92() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[3]);
         }
      }
      
      internal function frame112() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame116() : *
      {
         if(isSummon)
         {
            if(skin == 2)
            {
               gotoAndPlay("attack1");
            }
            else
            {
               gotoAndPlay("attack2");
            }
         }
         else
         {
            k();
         }
      }
      
      internal function frame118() : *
      {
         stand();
         q = 0;
      }
      
      internal function frame159() : *
      {
         ks();
      }
      
      internal function frame188() : *
      {
         k();
      }
      
      internal function frame215() : *
      {
         k();
      }
      
      internal function frame217() : *
      {
         dropItems();
      }
      
      internal function frame230() : *
      {
         Battle.shake("small");
      }
      
      internal function frame231() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf2[7]);
         }
      }
      
      internal function frame267() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame273() : *
      {
         dead();
      }
      
      internal function frame279() : *
      {
         setXY();
         if(isSummon)
         {
            move(-90,13,null);
         }
         else
         {
            move(90,13,null);
         }
      }
      
      internal function frame288() : *
      {
         swapLayer(true);
      }
      
      internal function frame295() : *
      {
         if(isSummon)
         {
            Summons.ClassicGigaGolem.effect();
         }
         else
         {
            self.attack1();
         }
         Battle.shake("small");
      }
      
      internal function frame297() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame302() : *
      {
         if(!isSummon && (self as Foe).getHpPercent() < 80)
         {
            Text.speech(Text.ebf2[4]);
         }
         if(!isSummon && (self as Foe).getHpPercent() < 60)
         {
            Text.speech(Text.ebf2[5]);
         }
         if(!isSummon && (self as Foe).getHpPercent() < 40)
         {
            Text.speech(Text.ebf2[6]);
         }
      }
      
      internal function frame306() : *
      {
         resetLayer();
      }
      
      internal function frame322() : *
      {
         k();
      }
      
      internal function frame328() : *
      {
         setXY();
         if(isSummon)
         {
            move(-90,13,null);
         }
         else
         {
            move(90,13,null);
         }
      }
      
      internal function frame337() : *
      {
         swapLayer(true);
      }
      
      internal function frame345() : *
      {
         if(isSummon)
         {
            Summons.ClassicGigaGolem.effect2();
         }
         else
         {
            self.attack2();
         }
         Battle.shake("big");
      }
      
      internal function frame350() : *
      {
         if(!isSummon && (self as Foe).getHpPercent() < 80)
         {
            Text.speech(Text.ebf2[4]);
         }
         if(!isSummon && (self as Foe).getHpPercent() < 60)
         {
            Text.speech(Text.ebf2[5]);
         }
         if(!isSummon && (self as Foe).getHpPercent() < 40)
         {
            Text.speech(Text.ebf2[6]);
         }
      }
      
      internal function frame355() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame365() : *
      {
         resetLayer();
      }
      
      internal function frame379() : *
      {
         k();
      }
      
      internal function frame398() : *
      {
         self.skinChange();
      }
      
      internal function frame406() : *
      {
         self.magic1();
      }
      
      internal function frame418() : *
      {
      }
      
      internal function frame426() : *
      {
         k();
      }
      
      internal function frame446() : *
      {
         k();
      }
      
      internal function frame480() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame484() : *
      {
         flee();
      }
   }
}

