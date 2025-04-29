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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14801")]
   public dynamic class Fallen extends FoeMC
   {
      public function Fallen()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,68,this.frame69,70,this.frame71,72,this.frame73,125,this.frame126,127,this.frame128,142,this.frame143,143,this.frame144,163,this.frame164,164,this.frame165,190,this.frame191,191,this.frame192,200,this.frame201,204,this.frame205,205,this.frame206,208,this.frame209,214,this.frame215,216,this.frame217,251,this.frame252,272,this.frame273,273,this.frame274,292,this.frame293,293,this.frame294,306,this.frame307,325,this.frame326,352,this.frame353,362,this.frame363,368,this.frame369,378,this.frame379,385,this.frame386,388,this.frame389,399,this.frame400,410,this.frame411,420,this.frame421,426,this.frame427,436,this.frame437,443,this.frame444,450,this.frame451,461,this.frame462,472,this.frame473,478,this.frame479,484,this.frame485,494,this.frame495,497,this.frame498,500,this.frame501,503,this.frame504,506,this.frame507,535,this.frame536,557,this.frame558,560,this.frame561,563,this.frame564,571,this.frame572,601,this.frame602,607,this.frame608,631,this.frame632,651,this.frame652,661,this.frame662,667,this.frame668,683,this.frame684,686,this.frame687,693,this.frame694,697,this.frame698,708,this.frame709,735,this.frame736,744,this.frame745,754,this.frame755,760,this.frame761,770,this.frame771,781,this.frame782,792,this.frame793,803,this.frame804,805,this.frame806,810,this.frame811,816,this.frame817,827,this.frame828,845,this.frame846,862,this.frame863,863,this.frame864,885,this.frame886,891,this.frame892,901,this.frame902,908,this.frame909,911,this.frame912,914,this.frame915,922,this.frame923,930,this.frame931,933,this.frame934,956,this.frame957,957,this.frame958,958,this.frame959,973,this.frame974,974,this.frame975,1013,this.frame1014,1029,this.frame1030);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(30);
      }
      
      internal function frame69() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.fallen[1]);
         }
         if(!isSummon)
         {
            Text.speech(Text.fallen[2]);
         }
      }
      
      internal function frame71() : *
      {
         k();
      }
      
      internal function frame73() : *
      {
         stand();
      }
      
      internal function frame126() : *
      {
         ks();
      }
      
      internal function frame128() : *
      {
         freezeSound();
         if(head.eyes)
         {
            head.eyes.gotoAndStop("evade");
         }
      }
      
      internal function frame143() : *
      {
         frozen();
      }
      
      internal function frame144() : *
      {
         if(head.eyes)
         {
            head.eyes.gotoAndStop("hit");
         }
         playSound("315");
      }
      
      internal function frame164() : *
      {
         k();
      }
      
      internal function frame165() : *
      {
         if(head.eyes)
         {
            head.eyes.gotoAndStop("hit");
         }
         playSound("316");
      }
      
      internal function frame191() : *
      {
         k();
      }
      
      internal function frame192() : *
      {
         if(head.eyes)
         {
            head.eyes.gotoAndStop("hit");
         }
         playSound("316");
      }
      
      internal function frame201() : *
      {
         playSound("317");
      }
      
      internal function frame205() : *
      {
         playSound("318");
      }
      
      internal function frame206() : *
      {
         playSound("319");
      }
      
      internal function frame209() : *
      {
         playSound("320");
      }
      
      internal function frame215() : *
      {
         if(skin == 5)
         {
            Text.speech(Text.fallen[4]);
         }
         Text.speech(Text.fallen[6]);
      }
      
      internal function frame217() : *
      {
         randomDelay(20);
      }
      
      internal function frame252() : *
      {
         dropItems();
      }
      
      internal function frame273() : *
      {
         dead();
      }
      
      internal function frame274() : *
      {
         if(head.eyes)
         {
            head.eyes.gotoAndStop("evade");
         }
      }
      
      internal function frame293() : *
      {
         k();
      }
      
      internal function frame294() : *
      {
         playSound("heal");
      }
      
      internal function frame307() : *
      {
         if(head.eyes)
         {
            head.eyes.gotoAndStop("heal");
         }
      }
      
      internal function frame326() : *
      {
         k();
      }
      
      internal function frame353() : *
      {
         flee();
      }
      
      internal function frame363() : *
      {
         setXY();
         move(50,14,null);
      }
      
      internal function frame369() : *
      {
         swapLayer();
      }
      
      internal function frame379() : *
      {
         Battle.finalHit = false;
         self.attack1();
      }
      
      internal function frame386() : *
      {
         self.attack1();
      }
      
      internal function frame389() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame400() : *
      {
         resetLayer();
      }
      
      internal function frame411() : *
      {
         k();
      }
      
      internal function frame421() : *
      {
         setXY();
         move(50,14,null);
      }
      
      internal function frame427() : *
      {
         swapLayer();
      }
      
      internal function frame437() : *
      {
         Battle.finalHit = false;
         self.attack2();
      }
      
      internal function frame444() : *
      {
         self.attack2();
      }
      
      internal function frame451() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame462() : *
      {
         resetLayer();
      }
      
      internal function frame473() : *
      {
         k();
      }
      
      internal function frame479() : *
      {
         setXY();
      }
      
      internal function frame485() : *
      {
         self.throwWep();
      }
      
      internal function frame495() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame498() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame501() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame504() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame507() : *
      {
         self.attack3();
      }
      
      internal function frame536() : *
      {
         k();
      }
      
      internal function frame558() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame561() : *
      {
         Battle.finalHit = false;
         self.special1();
      }
      
      internal function frame564() : *
      {
         self.special1();
      }
      
      internal function frame572() : *
      {
         k();
      }
      
      internal function frame602() : *
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
      
      internal function frame608() : *
      {
         k();
      }
      
      internal function frame632() : *
      {
         self.magic2();
      }
      
      internal function frame652() : *
      {
         k();
      }
      
      internal function frame662() : *
      {
         setXY();
         move(90,14,null);
      }
      
      internal function frame668() : *
      {
         swapLayer(true);
      }
      
      internal function frame684() : *
      {
         self.attack4();
      }
      
      internal function frame687() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame694() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.fallen[3]);
         }
      }
      
      internal function frame698() : *
      {
         resetLayer();
      }
      
      internal function frame709() : *
      {
         k();
      }
      
      internal function frame736() : *
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
      
      internal function frame745() : *
      {
         k();
      }
      
      internal function frame755() : *
      {
         setXY();
         move(50,14,null);
      }
      
      internal function frame761() : *
      {
         swapLayer();
      }
      
      internal function frame771() : *
      {
         Battle.finalHit = false;
         self.attack5();
      }
      
      internal function frame782() : *
      {
         Battle.finalHit = false;
         self.attack5();
      }
      
      internal function frame793() : *
      {
         Battle.finalHit = false;
         self.attack5();
      }
      
      internal function frame804() : *
      {
         self.attack5();
      }
      
      internal function frame806() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame811() : *
      {
         Text.speech(Text.fallen[5]);
      }
      
      internal function frame817() : *
      {
         resetLayer();
      }
      
      internal function frame828() : *
      {
         k();
      }
      
      internal function frame846() : *
      {
         if(isSummon)
         {
            Summons.FallenBeheaded.effect();
         }
         else
         {
            self.magic4();
         }
      }
      
      internal function frame863() : *
      {
         if(isSummon)
         {
            Summons.FallenBeheaded.effect2();
         }
      }
      
      internal function frame864() : *
      {
         k();
      }
      
      internal function frame886() : *
      {
         setXY();
         move(isSummon ? -70 : 70,14,null);
      }
      
      internal function frame892() : *
      {
         swapLayer();
      }
      
      internal function frame902() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.FallenLost.effect();
         }
         else
         {
            self.attack6();
         }
      }
      
      internal function frame909() : *
      {
         if(isSummon)
         {
            Summons.FallenLost.effect();
         }
         else
         {
            self.attack6();
         }
      }
      
      internal function frame912() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame915() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.fallen[3]);
         }
         Text.speech(Text.fallen[5]);
      }
      
      internal function frame923() : *
      {
         resetLayer();
      }
      
      internal function frame931() : *
      {
         if(isSummon)
         {
            Summons.FallenLost.effect2();
         }
         else
         {
            self.specialEffect();
         }
      }
      
      internal function frame934() : *
      {
         k();
      }
      
      internal function frame957() : *
      {
         summonOnTop();
      }
      
      internal function frame958() : *
      {
         Battle.shake("small");
      }
      
      internal function frame959() : *
      {
         if(isSummon)
         {
            Summons.FallenBurned.effect();
         }
         else
         {
            self.special2();
         }
      }
      
      internal function frame974() : *
      {
         if(!isSummon)
         {
            self.specialEffect();
         }
         else
         {
            k();
         }
      }
      
      internal function frame975() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame1014() : *
      {
         self.special3();
      }
      
      internal function frame1030() : *
      {
         k();
      }
   }
}

