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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol17682")]
   public dynamic class ClassicClayMC extends FoeMC
   {
      public var ll:int;
      
      public function ClassicClayMC()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,45,this.frame46,47,this.frame48,50,this.frame51,52,this.frame53,90,this.frame91,92,this.frame93,109,this.frame110,110,this.frame111,130,this.frame131,131,this.frame132,132,this.frame133,155,this.frame156,180,this.frame181,187,this.frame188,194,this.frame195,201,this.frame202,206,this.frame207,212,this.frame213,224,this.frame225,242,this.frame243,264,this.frame265,286,this.frame287,309,this.frame310,329,this.frame330,340,this.frame341,347,this.frame348,371,this.frame372,378,this.frame379,385,this.frame386,390,this.frame391,392,this.frame393,398,this.frame399,403,this.frame404,405,this.frame406,408,this.frame409,414,this.frame415,426,this.frame427,433,this.frame434,440,this.frame441,444,this.frame445,447,this.frame448,451,this.frame452,455,this.frame456,459,this.frame460,461,this.frame462,463,this.frame464,469,this.frame470,481,this.frame482,482,this.frame483,512,this.frame513,558,this.frame559);
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
         if(!isSummon)
         {
            Text.speech(Text.ebf3[14]);
         }
      }
      
      internal function frame48() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame51() : *
      {
         k();
      }
      
      internal function frame53() : *
      {
         stand();
      }
      
      internal function frame91() : *
      {
         ks();
      }
      
      internal function frame93() : *
      {
         playSound("clayhit1");
      }
      
      internal function frame110() : *
      {
         k();
      }
      
      internal function frame111() : *
      {
         playSound("clayhit2");
      }
      
      internal function frame131() : *
      {
         k();
      }
      
      internal function frame132() : *
      {
         playSound("claydie");
      }
      
      internal function frame133() : *
      {
         dropItems();
      }
      
      internal function frame156() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[16]);
         }
      }
      
      internal function frame181() : *
      {
         dead();
      }
      
      internal function frame188() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame195() : *
      {
         swapLayer();
      }
      
      internal function frame202() : *
      {
         self.attack1();
      }
      
      internal function frame207() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame213() : *
      {
         resetLayer();
      }
      
      internal function frame225() : *
      {
         k();
      }
      
      internal function frame243() : *
      {
         k();
      }
      
      internal function frame265() : *
      {
         self.attack2();
      }
      
      internal function frame287() : *
      {
         k();
      }
      
      internal function frame310() : *
      {
         if(isSummon)
         {
            if(skin < 3)
            {
               Summons.ClassicClayBlue.effect();
            }
            else
            {
               Summons.ClassicClayLight.effect();
            }
         }
         else
         {
            self.magic2();
         }
      }
      
      internal function frame330() : *
      {
         k();
      }
      
      internal function frame341() : *
      {
         Battle.shake("small");
      }
      
      internal function frame348() : *
      {
         if(isSummon)
         {
            Summons.ClassicClayDark.effect();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame372() : *
      {
         k();
      }
      
      internal function frame379() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame386() : *
      {
         swapLayer();
      }
      
      internal function frame391() : *
      {
         this.ll = 0;
         if(isSummon || Boolean(self.isHard))
         {
            this.ll = 1;
         }
      }
      
      internal function frame393() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicClayRed.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame399() : *
      {
         if(isSummon)
         {
            Battle.finalHit = false;
            Summons.ClassicClayRed.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame404() : *
      {
         if(this.ll)
         {
            --this.ll;
            gotoAndPlay("loop2");
         }
      }
      
      internal function frame406() : *
      {
         if(isSummon)
         {
            Summons.ClassicClayRed.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame409() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame415() : *
      {
         resetLayer();
      }
      
      internal function frame427() : *
      {
         k();
      }
      
      internal function frame434() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame441() : *
      {
         swapLayer();
      }
      
      internal function frame445() : *
      {
         if(self.isHard)
         {
            this.ll = 1;
         }
         else
         {
            this.ll = 0;
         }
      }
      
      internal function frame448() : *
      {
         self.attack4();
      }
      
      internal function frame452() : *
      {
         self.attack4();
      }
      
      internal function frame456() : *
      {
         self.attack4();
      }
      
      internal function frame460() : *
      {
         self.attack4();
      }
      
      internal function frame462() : *
      {
         if(this.ll)
         {
            --this.ll;
            gotoAndPlay("loop1");
         }
      }
      
      internal function frame464() : *
      {
         resetXY();
         move(0,12,null);
      }
      
      internal function frame470() : *
      {
         resetLayer();
      }
      
      internal function frame482() : *
      {
         k();
      }
      
      internal function frame483() : *
      {
         playSound("cheal");
      }
      
      internal function frame513() : *
      {
         k();
      }
      
      internal function frame559() : *
      {
         flee();
      }
   }
}

