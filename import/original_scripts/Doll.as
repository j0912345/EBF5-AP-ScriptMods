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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14997")]
   public dynamic class Doll extends FoeMC
   {
      public function Doll()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,55,this.frame56,56,this.frame57,58,this.frame59,105,this.frame106,141,this.frame142,142,this.frame143,157,this.frame158,158,this.frame159,187,this.frame188,188,this.frame189,205,this.frame206,206,this.frame207,207,this.frame208,226,this.frame227,227,this.frame228,228,this.frame229,247,this.frame248,253,this.frame254,254,this.frame255,255,this.frame256,266,this.frame267,267,this.frame268,268,this.frame269,278,this.frame279,284,this.frame285,308,this.frame309,332,this.frame333,354,this.frame355,368,this.frame369,386,this.frame387,395,this.frame396,404,this.frame405,430,this.frame431,447,this.frame448,481,this.frame482,494,this.frame495,498,this.frame499,509,this.frame510,526,this.frame527,533,this.frame534,542,this.frame543,545,this.frame546,558,this.frame559,566,this.frame567,583,this.frame584,587,this.frame588,595,this.frame596,616,this.frame617,617,this.frame618,639,this.frame640,653,this.frame654,664,this.frame665,698,this.frame699,704,this.frame705,724,this.frame725,747,this.frame748,749,this.frame750,763,this.frame764);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(20);
      }
      
      internal function frame56() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.dolls[1]);
         }
         if(!isSummon)
         {
            if(skin == 2)
            {
               Text.speech(Text.dolls[4]);
            }
         }
         if(!isSummon)
         {
            if(skin == 3)
            {
               Text.speech(Text.dolls[7]);
            }
         }
         if(!isSummon)
         {
            if(skin == 4)
            {
               Text.speech(Text.dolls[9]);
            }
         }
         if(skin == 5)
         {
            Text.speech(Text.dolls[11]);
         }
      }
      
      internal function frame57() : *
      {
         k();
      }
      
      internal function frame59() : *
      {
         stand();
      }
      
      internal function frame106() : *
      {
         ks();
      }
      
      internal function frame142() : *
      {
         flee();
      }
      
      internal function frame143() : *
      {
         freezeSound();
      }
      
      internal function frame158() : *
      {
         frozen();
      }
      
      internal function frame159() : *
      {
         head.eyes.gotoAndPlay("hit");
         playSound("heal");
      }
      
      internal function frame188() : *
      {
         k();
      }
      
      internal function frame189() : *
      {
         playSound("293");
      }
      
      internal function frame206() : *
      {
         k();
      }
      
      internal function frame207() : *
      {
         head.eyes.gotoAndPlay("hit");
         playSound("294");
      }
      
      internal function frame208() : *
      {
         playSound("295");
      }
      
      internal function frame227() : *
      {
         k();
      }
      
      internal function frame228() : *
      {
         head.eyes.gotoAndPlay("hit2");
         playSound("296");
      }
      
      internal function frame229() : *
      {
         playSound("297");
      }
      
      internal function frame248() : *
      {
         playSound("298");
      }
      
      internal function frame254() : *
      {
         k();
      }
      
      internal function frame255() : *
      {
         head.eyes.gotoAndPlay("hit");
         playSound("299");
      }
      
      internal function frame256() : *
      {
         playSound("300");
      }
      
      internal function frame267() : *
      {
         playSound("301");
      }
      
      internal function frame268() : *
      {
         if(skin == 1)
         {
            Text.speech(Text.dolls[3]);
         }
         if(skin == 2)
         {
            Text.speech(Text.dolls[6]);
         }
      }
      
      internal function frame269() : *
      {
         head.eyes.gotoAndPlay("hit2");
      }
      
      internal function frame279() : *
      {
         playSound("302");
      }
      
      internal function frame285() : *
      {
         randomDelay(20);
      }
      
      internal function frame309() : *
      {
         dropItems();
      }
      
      internal function frame333() : *
      {
         dead();
      }
      
      internal function frame355() : *
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
      
      internal function frame369() : *
      {
         k();
      }
      
      internal function frame387() : *
      {
         if(skin == 2)
         {
            Text.speech(Text.dolls[5]);
         }
      }
      
      internal function frame396() : *
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
      
      internal function frame405() : *
      {
         k();
      }
      
      internal function frame431() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic3();
         }
      }
      
      internal function frame448() : *
      {
         k();
      }
      
      internal function frame482() : *
      {
         self.magic4();
      }
      
      internal function frame495() : *
      {
         k();
      }
      
      internal function frame499() : *
      {
         setXY();
         move(50,20,Regular.easeInOut);
      }
      
      internal function frame510() : *
      {
         swapLayer();
      }
      
      internal function frame527() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame534() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame543() : *
      {
         self.attack1();
      }
      
      internal function frame546() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame559() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame567() : *
      {
         resetLayer();
      }
      
      internal function frame584() : *
      {
         k();
      }
      
      internal function frame588() : *
      {
         setXY();
         move(50,24,Regular.easeInOut);
      }
      
      internal function frame596() : *
      {
         swapLayer();
      }
      
      internal function frame617() : *
      {
         self.attack2();
      }
      
      internal function frame618() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame640() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame654() : *
      {
         resetLayer();
      }
      
      internal function frame665() : *
      {
         k();
      }
      
      internal function frame699() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic5();
         }
      }
      
      internal function frame705() : *
      {
         k();
      }
      
      internal function frame725() : *
      {
         body.gotoAndStop(6);
      }
      
      internal function frame748() : *
      {
         body.gotoAndStop(4);
      }
      
      internal function frame750() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.magic6();
         }
      }
      
      internal function frame764() : *
      {
         k();
      }
   }
}

