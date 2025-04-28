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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15707")]
   public dynamic class Cat extends FoeMC
   {
      public var bloodless:Boolean;
      
      public var sword:int;
      
      public var shield:int;
      
      public var shieldUp:Boolean;
      
      public var cat:int;
      
      public function Cat()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,74,this.frame75,78,this.frame79,114,this.frame115,115,this.frame116,129,this.frame130,131,this.frame132,189,this.frame190,191,this.frame192,210,this.frame211,211,this.frame212,212,this.frame213,221,this.frame222,237,this.frame238,238,this.frame239,239,this.frame240,240,this.frame241,249,this.frame250,250,this.frame251,262,this.frame263,265,this.frame266,289,this.frame290,323,this.frame324,332,this.frame333,335,this.frame336,340,this.frame341,349,this.frame350,352,this.frame353,355,this.frame356,366,this.frame367,377,this.frame378,378,this.frame379,397,this.frame398,398,this.frame399,425,this.frame426,426,this.frame427,436,this.frame437,443,this.frame444,451,this.frame452,459,this.frame460,470,this.frame471,481,this.frame482,482,this.frame483,492,this.frame493,504,this.frame505,506,this.frame507,517,this.frame518,526,this.frame527,530,this.frame531,542,this.frame543,552,this.frame553,553,this.frame554,568,this.frame569,569,this.frame570,595,this.frame596,602,this.frame603,619,this.frame620,629,this.frame630,630,this.frame631,645,this.frame646,657,this.frame658,665,this.frame666,679,this.frame680,690,this.frame691,691,this.frame692,698,this.frame699,719,this.frame720,735,this.frame736,736,this.frame737,746,this.frame747,750,this.frame751,759,this.frame760,760,this.frame761,761,this.frame762,788,this.frame789,790,this.frame791,799,this.frame800,804,this.frame805,808,this.frame809,814,this.frame815,815,this.frame816,816,this.frame817,844,this.frame845,846,this.frame847,847,this.frame848,848,this.frame849,861,this.frame862,862,this.frame863,863,this.frame864,864,this.frame865,893,this.frame894,895,this.frame896,896,this.frame897,911,this.frame912,912,this.frame913,914,this.frame915,919,this.frame920,938,this.frame939,948,this.frame949,950,this.frame951,966,this.frame967,968,this.frame969,976,this.frame977,990,this.frame991,991,this.frame992,1017,this.frame1018,1018,this.frame1019,1030,this.frame1031,1045,this.frame1046,1069,this.frame1070,1103,this.frame1104);
      }
      
      internal function frame1() : *
      {
         init();
         this.bloodless = false;
         this.sword = Math.random() * 15 + 1;
         this.shield = Math.random() * 15 + 1;
         this.shieldUp = true;
         this.cat = Math.random() * 6 + 1;
         if(skin == 12)
         {
            this.cat = Math.random() * 3 + 7;
            this.sword = 12;
            this.shield = Math.random() * 2 + 2;
            this.bloodless = true;
         }
         if(skin == 1)
         {
            this.sword = Math.random() * 3 + 1;
            this.shield = Math.random() * 3 + 1;
         }
         if(skin == 2)
         {
            this.sword = Math.random() * 2 + 4;
            this.shield = Math.random() * 2 + 4;
         }
         if(skin == 3)
         {
            this.sword = Math.random() * 2 + 6;
            this.shield = Math.random() * 2 + 6;
         }
         if(skin == 4)
         {
            this.sword = Math.random() * 2 + 8;
            this.shield = Math.random() * 2 + 8;
         }
         if(skin == 5)
         {
            this.sword = Math.random() * 2 + 10;
            this.shield = Math.random() * 2 + 10;
         }
      }
      
      internal function frame3() : *
      {
         randomDelay(40);
         this.shieldUp = true;
      }
      
      internal function frame75() : *
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
            if(this.cat >= 7 && !isSummon)
            {
               Text.speech(Text.arena[14]);
            }
            if(!isSummon)
            {
               Text.speech(Text.cats[1]);
            }
            if(!isSummon)
            {
               Text.speech(Text.cats[5]);
            }
            if(!isSummon)
            {
               Text.speech(Text.cats[2]);
            }
            if(skin == 6 || skin == 7)
            {
               Text.speech(Text.cats[3]);
            }
            if(!isSummon)
            {
               if(skin == 8 || skin == 9)
               {
                  Text.speech(Text.cats[4]);
               }
            }
         }
      }
      
      internal function frame79() : *
      {
         k();
      }
      
      internal function frame115() : *
      {
         flee();
      }
      
      internal function frame116() : *
      {
         freezeSound();
      }
      
      internal function frame130() : *
      {
         frozen();
      }
      
      internal function frame132() : *
      {
         stand();
      }
      
      internal function frame190() : *
      {
         ks();
      }
      
      internal function frame192() : *
      {
         head.eyes.gotoAndPlay("hit");
         if(skin == 12)
         {
            playSound("skelcat");
         }
         if(skin != 12)
         {
            playSound("253");
         }
      }
      
      internal function frame211() : *
      {
         k();
      }
      
      internal function frame212() : *
      {
         if(skin != 12)
         {
            head.eyes.gotoAndPlay("hit2");
         }
         else
         {
            head.eyes.gotoAndPlay("heal");
         }
         if(skin == 12)
         {
            playSound("skelcat2");
         }
         if(skin != 12)
         {
            playSound("254");
         }
      }
      
      internal function frame213() : *
      {
         if(skin != 12)
         {
            playSound("255");
         }
      }
      
      internal function frame222() : *
      {
         playSound("256");
      }
      
      internal function frame238() : *
      {
         k();
      }
      
      internal function frame239() : *
      {
         head.eyes.gotoAndPlay("die");
         if(skin == 12)
         {
            playSound("skelcat2");
         }
         if(skin != 12)
         {
            playSound("257");
         }
      }
      
      internal function frame240() : *
      {
         if(skin != 12)
         {
            playSound("258");
         }
      }
      
      internal function frame241() : *
      {
         if(skin != 12)
         {
            playSound("259");
         }
      }
      
      internal function frame250() : *
      {
         if(skin == 12)
         {
            playSound("skelcat");
         }
      }
      
      internal function frame251() : *
      {
         playSound("260");
      }
      
      internal function frame263() : *
      {
         Text.speech(Text.cats[7]);
         Text.speech(Text.cats[6]);
         Text.speech(Text.cats[8]);
      }
      
      internal function frame266() : *
      {
         randomDelay(20);
      }
      
      internal function frame290() : *
      {
         dropItems();
      }
      
      internal function frame324() : *
      {
         dead();
      }
      
      internal function frame333() : *
      {
         loops = 2;
      }
      
      internal function frame336() : *
      {
         setXY();
         move(50,14,Regular.easeOut);
      }
      
      internal function frame341() : *
      {
         if(loops != 2)
         {
            resetLayer();
         }
         swapLayer();
      }
      
      internal function frame350() : *
      {
         if(loops)
         {
            Battle.finalHit = false;
         }
         self.attack3();
      }
      
      internal function frame353() : *
      {
         if(loops)
         {
            --loops;
            gotoAndPlay("loop1");
         }
      }
      
      internal function frame356() : *
      {
         head.eyes.gotoAndPlay("hit");
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame367() : *
      {
         resetLayer();
      }
      
      internal function frame378() : *
      {
         k();
      }
      
      internal function frame379() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame398() : *
      {
         k();
      }
      
      internal function frame399() : *
      {
         head.eyes.gotoAndPlay("heal");
         playSound("heal");
      }
      
      internal function frame426() : *
      {
         k();
      }
      
      internal function frame427() : *
      {
         setXY();
         move(30,22,Regular.easeInOut);
      }
      
      internal function frame437() : *
      {
         swapLayer();
      }
      
      internal function frame444() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame452() : *
      {
         self.attack1();
      }
      
      internal function frame460() : *
      {
         resetXY();
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame471() : *
      {
         resetLayer();
      }
      
      internal function frame482() : *
      {
         k();
      }
      
      internal function frame483() : *
      {
         setXY();
         if(isSummon)
         {
            Y += 10;
         }
         if(skin != 12)
         {
            move(isSummon ? -50 : 50,22,Regular.easeInOut);
         }
         else
         {
            move(90,22,Regular.easeInOut);
         }
      }
      
      internal function frame493() : *
      {
         swapLayer();
      }
      
      internal function frame505() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame507() : *
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
      
      internal function frame518() : *
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
      
      internal function frame527() : *
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
      
      internal function frame531() : *
      {
         resetXY();
         if(isSummon)
         {
            Y = y;
            X = 1500;
         }
         move(0,24,Regular.easeInOut);
      }
      
      internal function frame543() : *
      {
         resetLayer();
      }
      
      internal function frame553() : *
      {
         k();
      }
      
      internal function frame554() : *
      {
         if(skin == 12)
         {
            gotoAndPlay("defend2");
         }
      }
      
      internal function frame569() : *
      {
         head.eyes.gotoAndPlay("heal");
      }
      
      internal function frame570() : *
      {
         self.defend1();
      }
      
      internal function frame596() : *
      {
         k();
      }
      
      internal function frame603() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame620() : *
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
      
      internal function frame630() : *
      {
         k();
      }
      
      internal function frame631() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame646() : *
      {
         self.magic2();
      }
      
      internal function frame658() : *
      {
         k();
      }
      
      internal function frame666() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame680() : *
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
      
      internal function frame691() : *
      {
         k();
      }
      
      internal function frame692() : *
      {
         setXY();
         head.eyes.gotoAndPlay("snipe");
      }
      
      internal function frame699() : *
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
      
      internal function frame720() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame736() : *
      {
         k();
      }
      
      internal function frame737() : *
      {
         setXY();
         move(-30,22,Regular.easeIn);
      }
      
      internal function frame747() : *
      {
         swapLayer(true);
      }
      
      internal function frame751() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame760() : *
      {
         Battle.shake("small");
      }
      
      internal function frame761() : *
      {
         self.special2();
      }
      
      internal function frame762() : *
      {
         dropItems();
      }
      
      internal function frame789() : *
      {
         resetXY();
         resetLayer();
         move(0,1,null);
      }
      
      internal function frame791() : *
      {
         dead();
      }
      
      internal function frame800() : *
      {
         setXY();
         move(-30,14,Regular.easeOut);
      }
      
      internal function frame805() : *
      {
         swapLayer(true);
      }
      
      internal function frame809() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame815() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame816() : *
      {
         self.special1();
      }
      
      internal function frame817() : *
      {
         dropItems();
      }
      
      internal function frame845() : *
      {
         resetXY();
         resetLayer();
         move(0,1,null);
      }
      
      internal function frame847() : *
      {
         dead();
      }
      
      internal function frame848() : *
      {
         head.eyes.gotoAndPlay("die");
      }
      
      internal function frame849() : *
      {
         playSound("261");
      }
      
      internal function frame862() : *
      {
         playSound("262");
      }
      
      internal function frame863() : *
      {
         playSound("263");
      }
      
      internal function frame864() : *
      {
         Battle.shake("small");
      }
      
      internal function frame865() : *
      {
         self.special3();
      }
      
      internal function frame894() : *
      {
         resetXY();
         resetLayer();
         move(0,1,null);
      }
      
      internal function frame896() : *
      {
         dead();
      }
      
      internal function frame897() : *
      {
         head.eyes.gotoAndPlay("snipe");
      }
      
      internal function frame912() : *
      {
         head.eyes.gotoAndPlay(1);
      }
      
      internal function frame913() : *
      {
         setXY();
         if(isSummon)
         {
            Summons.currentSummon.effect();
         }
         else
         {
            self.attack5();
         }
      }
      
      internal function frame915() : *
      {
         this.shieldUp = false;
         if(!isSummon)
         {
            self.dropShield();
         }
      }
      
      internal function frame920() : *
      {
         k();
      }
      
      internal function frame939() : *
      {
         setXY();
         swapLayer();
         if(isSummon)
         {
            move(130,1,null);
         }
         else if(skin != 12)
         {
            move(-90,1,null);
         }
         else
         {
            move(-130,1,null);
         }
      }
      
      internal function frame949() : *
      {
         if(skin == 12)
         {
            makeMagic(EffectDark2);
         }
         head.eyes.gotoAndPlay("heal");
      }
      
      internal function frame951() : *
      {
         if(isSummon)
         {
            Summons.CatSkeleton.effect();
         }
         else
         {
            self.attack6();
         }
      }
      
      internal function frame967() : *
      {
         resetXY();
         resetLayer();
         move(0,1,null);
      }
      
      internal function frame969() : *
      {
         if(isSummon)
         {
            k();
         }
         else
         {
            gotoAndPlay("intro2");
         }
      }
      
      internal function frame977() : *
      {
         head.eyes.gotoAndPlay("hit");
      }
      
      internal function frame991() : *
      {
         head.eyes.gotoAndPlay("heal");
      }
      
      internal function frame992() : *
      {
         self.defend2();
      }
      
      internal function frame1018() : *
      {
         k();
      }
      
      internal function frame1019() : *
      {
         head.eyes.gotoAndPlay("die");
         if(skin == 12)
         {
            playSound("skelcat2");
         }
      }
      
      internal function frame1031() : *
      {
         if(skin == 12)
         {
            playSound("skelcat");
         }
         playSound("260");
      }
      
      internal function frame1046() : *
      {
         randomDelay(20);
      }
      
      internal function frame1070() : *
      {
         dropItems();
      }
      
      internal function frame1104() : *
      {
         dead();
      }
   }
}

