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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol17591")]
   public dynamic class ClassicProtectorMC extends FoeMC
   {
      public var balls:int;
      
      public function ClassicProtectorMC()
      {
         super();
         addFrameScript(0,this.frame1,59,this.frame60,96,this.frame97,97,this.frame98,99,this.frame100,101,this.frame102,141,this.frame142,143,this.frame144,149,this.frame150,160,this.frame161,161,this.frame162,167,this.frame168,181,this.frame182,182,this.frame183,200,this.frame201,212,this.frame213,238,this.frame239,281,this.frame282,286,this.frame287,303,this.frame304,332,this.frame333,338,this.frame339,347,this.frame348,352,this.frame353,358,this.frame359,364,this.frame365,385,this.frame386,400,this.frame401,402,this.frame403,417,this.frame418,430,this.frame431,447,this.frame448,451,this.frame452,455,this.frame456,456,this.frame457,469,this.frame470,483,this.frame484,488,this.frame489,490,this.frame491,501,this.frame502,505,this.frame506,518,this.frame519,535,this.frame536,549,this.frame550,560,this.frame561,563,this.frame564,565,this.frame566,570,this.frame571,576,this.frame577,581,this.frame582,587,this.frame588,590,this.frame591,595,this.frame596,615,this.frame616,639,this.frame640,661,this.frame662,668,this.frame669,673,this.frame674,685,this.frame686,686,this.frame687,698,this.frame699,711,this.frame712,725,this.frame726,730,this.frame731,735,this.frame736,743,this.frame744,760,this.frame761,765,this.frame766,777,this.frame778,790,this.frame791,793,this.frame794,796,this.frame797,799,this.frame800,801,this.frame802,806,this.frame807,812,this.frame813,817,this.frame818,823,this.frame824,825,this.frame826,831,this.frame832,838,this.frame839,851,this.frame852,885,this.frame886,890,this.frame891);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame60() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
            this.x -= 100;
         }
      }
      
      internal function frame97() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[17]);
         }
      }
      
      internal function frame98() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
         if(isSummon)
         {
            Text.speech(Text.ebf3[24]);
         }
      }
      
      internal function frame100() : *
      {
         k();
      }
      
      internal function frame102() : *
      {
         stand();
      }
      
      internal function frame142() : *
      {
         ks();
      }
      
      internal function frame144() : *
      {
         self.skinDamage();
      }
      
      internal function frame150() : *
      {
         if(!isSummon && (self as Foe).getHpPercent() < 40)
         {
            Text.speech(Text.ebf3[22]);
         }
      }
      
      internal function frame161() : *
      {
         k();
      }
      
      internal function frame162() : *
      {
         self.skinDamage();
      }
      
      internal function frame168() : *
      {
         if(!isSummon && (self as Foe).getHpPercent() < 40)
         {
            Text.speech(Text.ebf3[22]);
         }
      }
      
      internal function frame182() : *
      {
         k();
      }
      
      internal function frame183() : *
      {
         Battle.shake("small");
      }
      
      internal function frame201() : *
      {
         Battle.shake("small");
      }
      
      internal function frame213() : *
      {
         Battle.shake("small");
      }
      
      internal function frame239() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[23]);
         }
      }
      
      internal function frame282() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame287() : *
      {
         dead();
      }
      
      internal function frame304() : *
      {
         k();
      }
      
      internal function frame333() : *
      {
         k();
      }
      
      internal function frame339() : *
      {
         setXY();
         move(40,12,null);
      }
      
      internal function frame348() : *
      {
      }
      
      internal function frame353() : *
      {
         self.attack1();
      }
      
      internal function frame359() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame365() : *
      {
      }
      
      internal function frame386() : *
      {
         k();
      }
      
      internal function frame401() : *
      {
         self.attack2();
      }
      
      internal function frame403() : *
      {
         self.attack2();
      }
      
      internal function frame418() : *
      {
         k();
      }
      
      internal function frame431() : *
      {
         Battle.shake("small");
      }
      
      internal function frame448() : *
      {
         self.special6();
      }
      
      internal function frame452() : *
      {
         self.special6();
      }
      
      internal function frame456() : *
      {
         self.special6();
      }
      
      internal function frame457() : *
      {
         k();
      }
      
      internal function frame470() : *
      {
         Battle.shake("small");
      }
      
      internal function frame484() : *
      {
         Battle.shake("small");
      }
      
      internal function frame489() : *
      {
         Battle.shake("small");
      }
      
      internal function frame491() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[18]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf3[20]);
         }
      }
      
      internal function frame502() : *
      {
         Battle.shake("small");
      }
      
      internal function frame506() : *
      {
         self.special2();
      }
      
      internal function frame519() : *
      {
         Battle.shake("small");
      }
      
      internal function frame536() : *
      {
         k();
      }
      
      internal function frame550() : *
      {
         Battle.shake("small");
      }
      
      internal function frame561() : *
      {
         Battle.shake("big");
      }
      
      internal function frame564() : *
      {
         self.special3();
      }
      
      internal function frame566() : *
      {
         Battle.shake("big");
      }
      
      internal function frame571() : *
      {
         Battle.shake("big");
      }
      
      internal function frame577() : *
      {
         Battle.shake("big");
      }
      
      internal function frame582() : *
      {
         Battle.shake("small");
      }
      
      internal function frame588() : *
      {
         Battle.shake("small");
      }
      
      internal function frame591() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[19]);
         }
      }
      
      internal function frame596() : *
      {
         Battle.shake("small");
      }
      
      internal function frame616() : *
      {
         k();
      }
      
      internal function frame640() : *
      {
         self.attack3();
         Battle.shake("big");
      }
      
      internal function frame662() : *
      {
         k();
      }
      
      internal function frame669() : *
      {
         this.balls = 3;
      }
      
      internal function frame674() : *
      {
         Battle.shake("small");
      }
      
      internal function frame686() : *
      {
         self.special6();
      }
      
      internal function frame687() : *
      {
         if(this.balls)
         {
            --this.balls;
            gotoAndPlay("special7");
         }
      }
      
      internal function frame699() : *
      {
         k();
      }
      
      internal function frame712() : *
      {
         Battle.shake("small");
      }
      
      internal function frame726() : *
      {
         Battle.shake("small");
      }
      
      internal function frame731() : *
      {
         Battle.shake("small");
      }
      
      internal function frame736() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[18]);
         }
         if(!isSummon)
         {
            Text.speech(Text.ebf3[20]);
         }
      }
      
      internal function frame744() : *
      {
         Battle.shake("small");
      }
      
      internal function frame761() : *
      {
         Battle.shake("small");
      }
      
      internal function frame766() : *
      {
         if(!isSummon)
         {
            self.special4();
         }
      }
      
      internal function frame778() : *
      {
         k();
      }
      
      internal function frame791() : *
      {
         summonOnTop();
      }
      
      internal function frame794() : *
      {
         Battle.shake("small");
      }
      
      internal function frame797() : *
      {
         Battle.shake("big");
      }
      
      internal function frame800() : *
      {
         if(isSummon)
         {
            Summons.ClassicProtector.effect();
         }
         else
         {
            self.special5();
         }
      }
      
      internal function frame802() : *
      {
         Battle.shake("big");
      }
      
      internal function frame807() : *
      {
         Battle.shake("big");
      }
      
      internal function frame813() : *
      {
         Battle.shake("big");
      }
      
      internal function frame818() : *
      {
         Battle.shake("small");
      }
      
      internal function frame824() : *
      {
         Battle.shake("small");
      }
      
      internal function frame826() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf3[21]);
         }
      }
      
      internal function frame832() : *
      {
         Battle.shake("small");
      }
      
      internal function frame839() : *
      {
         if(isSummon)
         {
            resetLayer();
         }
      }
      
      internal function frame852() : *
      {
         k();
      }
      
      internal function frame886() : *
      {
         if(isSummon)
         {
            Battle.showPlayers();
         }
      }
      
      internal function frame891() : *
      {
         flee();
      }
   }
}

