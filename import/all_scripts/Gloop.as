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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14528")]
   public dynamic class Gloop extends FoeMC
   {
      public function Gloop()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,30,this.frame31,37,this.frame38,47,this.frame48,55,this.frame56,63,this.frame64,64,this.frame65,66,this.frame67,68,this.frame69,107,this.frame108,109,this.frame110,110,this.frame111,128,this.frame129,129,this.frame130,130,this.frame131,157,this.frame158,158,this.frame159,179,this.frame180,180,this.frame181,195,this.frame196,196,this.frame197,226,this.frame227,237,this.frame238,245,this.frame246,255,this.frame256,263,this.frame264,272,this.frame273,273,this.frame274,286,this.frame287,307,this.frame308,329,this.frame330,352,this.frame353,353,this.frame354,381,this.frame382,389,this.frame390,390,this.frame391,413,this.frame414,425,this.frame426,437,this.frame438,447,this.frame448,449,this.frame450,454,this.frame455,458,this.frame459,461,this.frame462,467,this.frame468,478,this.frame479,483,this.frame484,484,this.frame485,486,this.frame487,491,this.frame492,497,this.frame498,501,this.frame502,508,this.frame509,513,this.frame514,523,this.frame524,525,this.frame526,530,this.frame531,534,this.frame535,537,this.frame538,543,this.frame544,557,this.frame558,562,this.frame563,568,this.frame569,570,this.frame571,575,this.frame576,581,this.frame582,585,this.frame586,592,this.frame593,597,this.frame598,643,this.frame644,647,this.frame648,651,this.frame652,657,this.frame658,678,this.frame679,692,this.frame693,711,this.frame712,714,this.frame715,716,this.frame717,719,this.frame720,735,this.frame736,745,this.frame746,747,this.frame748,752,this.frame753,756,this.frame757,759,this.frame760,765,this.frame766,776,this.frame777,782,this.frame783,788,this.frame789,793,this.frame794,797,this.frame798,805,this.frame806,807,this.frame808,812,this.frame813,818,this.frame819,822,this.frame823,829,this.frame830,834,this.frame835,835,this.frame836,844,this.frame845,856,this.frame857,861,this.frame862,869,this.frame870,877,this.frame878,878,this.frame879,886,this.frame887,887,this.frame888,895,this.frame896,913,this.frame914,923,this.frame924,925,this.frame926,930,this.frame931,934,this.frame935,937,this.frame938,943,this.frame944,952,this.frame953,955,this.frame956,960,this.frame961,962,this.frame963,967,this.frame968,973,this.frame974,977,this.frame978,984,this.frame985,989,this.frame990,1019,this.frame1020,1027,this.frame1028);
      }
      
      public function gloopSound(param1:int) : *
      {
         if(skin <= 4)
         {
            playSound("gloop" + param1 + "b");
         }
         else
         {
            playSound("gloop" + param1);
         }
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame4() : *
      {
         randomDelay(18);
      }
      
      internal function frame31() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame38() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame48() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame56() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame64() : *
      {
         if(skin >= 9 && !isSummon)
         {
            Text.speech(Text.arena[11]);
         }
      }
      
      internal function frame65() : *
      {
         if(Summons.OWNED_SUMMONS.length == 0)
         {
            Text.speech(Text.tips[20]);
         }
         if(skin <= 4)
         {
            Text.speech(Text.gloops[1]);
         }
         Text.speech(Text.gloops[2]);
      }
      
      internal function frame67() : *
      {
         k();
      }
      
      internal function frame69() : *
      {
         stand();
      }
      
      internal function frame108() : *
      {
         ks();
      }
      
      internal function frame110() : *
      {
         this.gloopSound(4);
         playSound("343");
      }
      
      internal function frame111() : *
      {
         this.gloopSound(3);
      }
      
      internal function frame129() : *
      {
         k();
      }
      
      internal function frame130() : *
      {
         this.gloopSound(4);
         playSound("344");
      }
      
      internal function frame131() : *
      {
         this.gloopSound(3);
      }
      
      internal function frame158() : *
      {
         k();
      }
      
      internal function frame159() : *
      {
         this.gloopSound(2);
         playSound("345");
      }
      
      internal function frame180() : *
      {
         k();
      }
      
      internal function frame181() : *
      {
         freezeSound();
      }
      
      internal function frame196() : *
      {
         frozen();
      }
      
      internal function frame197() : *
      {
         playSound("heal");
      }
      
      internal function frame227() : *
      {
         k();
      }
      
      internal function frame238() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame246() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame256() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame264() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame273() : *
      {
         flee();
      }
      
      internal function frame274() : *
      {
         this.gloopSound(4);
         this.gloopSound(3);
         playSound("346");
      }
      
      internal function frame287() : *
      {
         this.gloopSound(5);
         playSound("347");
      }
      
      internal function frame308() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 20));
      }
      
      internal function frame330() : *
      {
         dropItems();
      }
      
      internal function frame353() : *
      {
         dead();
      }
      
      internal function frame354() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame382() : *
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
      
      internal function frame390() : *
      {
         k();
      }
      
      internal function frame391() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame414() : *
      {
         if(isSummon)
         {
            if(skin > 8)
            {
               Summons.GloopFab.effect();
            }
            else
            {
               Summons.currentSummon.effect();
            }
         }
         else
         {
            self.defend1();
         }
      }
      
      internal function frame426() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.gloops[3]);
         }
      }
      
      internal function frame438() : *
      {
         k();
      }
      
      internal function frame448() : *
      {
         setXY();
         move(20,25,Regular.easeInOut);
      }
      
      internal function frame450() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame455() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame459() : *
      {
         swapLayer();
      }
      
      internal function frame462() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame468() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame479() : *
      {
         self.attack1();
      }
      
      internal function frame484() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.gloops[6]);
         }
      }
      
      internal function frame485() : *
      {
         resetXY();
         move(0,25,Regular.easeInOut);
      }
      
      internal function frame487() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame492() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame498() : *
      {
         resetLayer();
      }
      
      internal function frame502() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame509() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame514() : *
      {
         k();
      }
      
      internal function frame524() : *
      {
         setXY();
         move(30,25,Regular.easeInOut);
      }
      
      internal function frame526() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame531() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame535() : *
      {
         swapLayer();
      }
      
      internal function frame538() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame544() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame558() : *
      {
         self.attack2();
      }
      
      internal function frame563() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.gloops[6]);
         }
      }
      
      internal function frame569() : *
      {
         resetXY();
         move(0,25,Regular.easeInOut);
      }
      
      internal function frame571() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame576() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame582() : *
      {
         resetLayer();
      }
      
      internal function frame586() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame593() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame598() : *
      {
         k();
      }
      
      internal function frame644() : *
      {
         self.special1(1);
      }
      
      internal function frame648() : *
      {
         self.special1(2);
      }
      
      internal function frame652() : *
      {
         self.special1(3);
      }
      
      internal function frame658() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.gloops[4]);
         }
      }
      
      internal function frame679() : *
      {
         k();
      }
      
      internal function frame693() : *
      {
         this.gloopSound(3);
      }
      
      internal function frame712() : *
      {
         Battle.finalHit = false;
         self.special2();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame715() : *
      {
         Battle.finalHit = false;
         self.special2();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame717() : *
      {
         Battle.finalHit = false;
         self.special2();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame720() : *
      {
         self.special2();
         makeMagic(EffectStab2,0,0);
      }
      
      internal function frame736() : *
      {
         k();
      }
      
      internal function frame746() : *
      {
         setXY();
         move(20,25,Regular.easeInOut);
      }
      
      internal function frame748() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame753() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame757() : *
      {
         swapLayer();
      }
      
      internal function frame760() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame766() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame777() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame783() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame789() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame794() : *
      {
         self.attack3();
      }
      
      internal function frame798() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.gloops[5]);
         }
      }
      
      internal function frame806() : *
      {
         resetXY();
         move(0,25,Regular.easeInOut);
      }
      
      internal function frame808() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame813() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame819() : *
      {
         resetLayer();
      }
      
      internal function frame823() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame830() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame835() : *
      {
         k();
      }
      
      internal function frame836() : *
      {
         loops = 3;
      }
      
      internal function frame845() : *
      {
         setXY();
         move(-30,30,null);
      }
      
      internal function frame857() : *
      {
         swapLayer();
      }
      
      internal function frame862() : *
      {
         setXY();
         move(-30,19,null);
      }
      
      internal function frame870() : *
      {
         resetLayer();
         swapLayer();
      }
      
      internal function frame878() : *
      {
         Battle.shake("small");
      }
      
      internal function frame879() : *
      {
         if(loops)
         {
            Battle.finalHit = false;
         }
         self.attack4();
      }
      
      internal function frame887() : *
      {
         --loops;
         if(loops != 0)
         {
            gotoAndPlay("attack4b");
         }
      }
      
      internal function frame888() : *
      {
         resetXY();
         move(0,18,null);
      }
      
      internal function frame896() : *
      {
         resetLayer();
      }
      
      internal function frame914() : *
      {
         k();
      }
      
      internal function frame924() : *
      {
         setXY();
         move(50,25,Regular.easeInOut);
      }
      
      internal function frame926() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame931() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame935() : *
      {
         swapLayer();
      }
      
      internal function frame938() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame944() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame953() : *
      {
         self.attack5();
      }
      
      internal function frame956() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.gloops[5]);
         }
      }
      
      internal function frame961() : *
      {
         resetXY();
         move(0,25,Regular.easeInOut);
      }
      
      internal function frame963() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame968() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame974() : *
      {
         resetLayer();
      }
      
      internal function frame978() : *
      {
         this.gloopSound(1);
      }
      
      internal function frame985() : *
      {
         this.gloopSound(2);
      }
      
      internal function frame990() : *
      {
         k();
      }
      
      internal function frame1020() : *
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
      
      internal function frame1028() : *
      {
         k();
      }
   }
}

