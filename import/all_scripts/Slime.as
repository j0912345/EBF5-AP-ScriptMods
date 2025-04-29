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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13528")]
   public dynamic class Slime extends FoeMC
   {
      public function Slime()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,53,this.frame54,56,this.frame57,58,this.frame59,97,this.frame98,99,this.frame100,114,this.frame115,115,this.frame116,135,this.frame136,136,this.frame137,148,this.frame149,162,this.frame163,163,this.frame164,189,this.frame190,214,this.frame215,237,this.frame238,247,this.frame248,254,this.frame255,261,this.frame262,273,this.frame274,293,this.frame294,308,this.frame309,318,this.frame319,324,this.frame325,332,this.frame333,339,this.frame340,341,this.frame342,345,this.frame346,374,this.frame375,398,this.frame399,399,this.frame400,416,this.frame417,434,this.frame435,435,this.frame436,449,this.frame450,464,this.frame465,473,this.frame474,501,this.frame502,503,this.frame504,524,this.frame525,576,this.frame577,599,this.frame600,649,this.frame650,652,this.frame653,655,this.frame656,656,this.frame657,710,this.frame711,715,this.frame716,717,this.frame718,727,this.frame728,733,this.frame734,742,this.frame743,773,this.frame774,779,this.frame780,786,this.frame787,804,this.frame805,829,this.frame830,842,this.frame843,852,this.frame853,858,this.frame859,867,this.frame868,898,this.frame899,904,this.frame905,929,this.frame930,980,this.frame981,1006,this.frame1007,1027,this.frame1028,1030,this.frame1031,1033,this.frame1034,1057,this.frame1058);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(15);
      }
      
      internal function frame54() : *
      {
         if(!isSummon && self.graphicScale < 0)
         {
            Text.speech(Text.arcade[20]);
            Text.speech(Text.arcade[21]);
            Text.speech(Text.arcade[22]);
            Text.speech(Text.arcade[23]);
         }
         else
         {
            Text.speech(Text.slimes[1]);
            if(skin == 7 || skin == 8 || skin == 9)
            {
               Text.speech(Text.slimes[2]);
            }
            if(!isSummon)
            {
               if(skin == 16 || skin == 17 || skin == 18)
               {
                  Text.speech(Text.slimes[3]);
               }
            }
            if(skin == 13 || skin == 14 || skin == 15)
            {
               Text.speech(Text.slimes[4]);
            }
            if(skin == 1 || skin == 2 || skin == 3)
            {
               Text.speech(Text.slimes[5]);
            }
            if(!isSummon)
            {
               Text.speech(Text.slimes[8]);
            }
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
      
      internal function frame98() : *
      {
         ks();
      }
      
      internal function frame100() : *
      {
         freezeSound();
      }
      
      internal function frame115() : *
      {
         frozen();
      }
      
      internal function frame116() : *
      {
         head.eyes.gotoAndPlay("hit");
         SFX.playSound("slimehit");
      }
      
      internal function frame136() : *
      {
         k();
      }
      
      internal function frame137() : *
      {
         SFX.playSound("slimehit2");
      }
      
      internal function frame149() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame163() : *
      {
         k();
      }
      
      internal function frame164() : *
      {
         SFX.playSound("slimeDie");
      }
      
      internal function frame190() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 20));
      }
      
      internal function frame215() : *
      {
         dropItems();
      }
      
      internal function frame238() : *
      {
         dead();
      }
      
      internal function frame248() : *
      {
         setXY();
         move(isSummon ? -10 : 10,14,null);
      }
      
      internal function frame255() : *
      {
         swapLayer();
      }
      
      internal function frame262() : *
      {
         if(isSummon)
         {
            Summons.SlimeWater.effect();
         }
         else
         {
            self.attack1();
         }
      }
      
      internal function frame274() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.slimes[7]);
         }
         Text.speech(Text.slimes[9]);
      }
      
      internal function frame294() : *
      {
         resetXY();
         move(0,1,null);
         resetLayer();
         if(isSummon)
         {
            k();
         }
      }
      
      internal function frame309() : *
      {
         k();
      }
      
      internal function frame319() : *
      {
         setXY();
         move(10,14,null);
      }
      
      internal function frame325() : *
      {
         swapLayer();
      }
      
      internal function frame333() : *
      {
         self.attack2();
      }
      
      internal function frame340() : *
      {
         resetXY();
         move(0,14,null);
      }
      
      internal function frame342() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.slimes[7]);
         }
         Text.speech(Text.slimes[9]);
      }
      
      internal function frame346() : *
      {
         resetLayer();
      }
      
      internal function frame375() : *
      {
         k();
      }
      
      internal function frame399() : *
      {
         k();
      }
      
      internal function frame400() : *
      {
         playSound("heal");
      }
      
      internal function frame417() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame435() : *
      {
         head.eyes.visible = true;
      }
      
      internal function frame436() : *
      {
         k();
      }
      
      internal function frame450() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
      }
      
      internal function frame465() : *
      {
         if(!isSummon)
         {
            self.magic1();
         }
      }
      
      internal function frame474() : *
      {
         k();
      }
      
      internal function frame502() : *
      {
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame504() : *
      {
         Text.speech(Text.slimes[6]);
         if(!isSummon)
         {
            Text.speech(Text.slimes[7]);
         }
      }
      
      internal function frame525() : *
      {
         k();
      }
      
      internal function frame577() : *
      {
         flee();
      }
      
      internal function frame600() : *
      {
         k();
      }
      
      internal function frame650() : *
      {
         self.special3();
      }
      
      internal function frame653() : *
      {
         self.special3();
      }
      
      internal function frame656() : *
      {
         self.special3();
      }
      
      internal function frame657() : *
      {
         k();
      }
      
      internal function frame711() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.SlimeMud.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame716() : *
      {
         if(isSummon)
         {
            Summons.SlimeMud.effect();
         }
         else
         {
            self.special4();
         }
      }
      
      internal function frame718() : *
      {
         k();
      }
      
      internal function frame728() : *
      {
         setXY();
         move(isSummon ? -10 : 10,14,null);
      }
      
      internal function frame734() : *
      {
         swapLayer();
      }
      
      internal function frame743() : *
      {
         if(isSummon)
         {
            Summons.SlimeMouse.effect();
         }
         else
         {
            self.attack3();
         }
      }
      
      internal function frame774() : *
      {
         resetXY();
         if(isSummon)
         {
            X = this.x + 400;
         }
         move(0,14,null);
      }
      
      internal function frame780() : *
      {
         if(!isSummon)
         {
            resetLayer();
         }
      }
      
      internal function frame787() : *
      {
         if(isSummon)
         {
            k();
         }
      }
      
      internal function frame805() : *
      {
         k();
      }
      
      internal function frame830() : *
      {
         self.magic2();
      }
      
      internal function frame843() : *
      {
         k();
      }
      
      internal function frame853() : *
      {
         setXY();
         move(10,14,null);
      }
      
      internal function frame859() : *
      {
         swapLayer();
      }
      
      internal function frame868() : *
      {
         self.attack4();
      }
      
      internal function frame899() : *
      {
         resetXY();
         move(0,14,null);
      }
      
      internal function frame905() : *
      {
         resetLayer();
      }
      
      internal function frame930() : *
      {
         k();
      }
      
      internal function frame981() : *
      {
         if(isSummon)
         {
            Summons.SlimeBunny.effect();
         }
         else
         {
            self.magic3();
         }
      }
      
      internal function frame1007() : *
      {
         k();
      }
      
      internal function frame1028() : *
      {
         self.special5();
      }
      
      internal function frame1031() : *
      {
         self.special5();
      }
      
      internal function frame1034() : *
      {
         if(self.isHard)
         {
            self.special5();
         }
      }
      
      internal function frame1058() : *
      {
         k();
      }
   }
}

