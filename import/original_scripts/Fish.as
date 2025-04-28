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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol14707")]
   public dynamic class Fish extends FoeMC
   {
      public function Fish()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,47,this.frame48,76,this.frame77,77,this.frame78,123,this.frame124,127,this.frame128,139,this.frame140,141,this.frame142,196,this.frame197,198,this.frame199,218,this.frame219,219,this.frame220,223,this.frame224,246,this.frame247,247,this.frame248,248,this.frame249,263,this.frame264,273,this.frame274,296,this.frame297,318,this.frame319,319,this.frame320,338,this.frame339,339,this.frame340,368,this.frame369,397,this.frame398,398,this.frame399,399,this.frame400,415,this.frame416,416,this.frame417,437,this.frame438,457,this.frame458,469,this.frame470,473,this.frame474,474,this.frame475,475,this.frame476,476,this.frame477,477,this.frame478,478,this.frame479,479,this.frame480,480,this.frame481,481,this.frame482,482,this.frame483,483,this.frame484,484,this.frame485,486,this.frame487,488,this.frame489,501,this.frame502,518,this.frame519,523,this.frame524,527,this.frame528,528,this.frame529,529,this.frame530,534,this.frame535,549,this.frame550,566,this.frame567,571,this.frame572,576,this.frame577,598,this.frame599,601,this.frame602,615,this.frame616,624,this.frame625,625,this.frame626,626,this.frame627,643,this.frame644,648,this.frame649,657,this.frame658,686,this.frame687,687,this.frame688,688,this.frame689,706,this.frame707,716,this.frame717,733,this.frame734,739,this.frame740,749,this.frame750,759,this.frame760,760,this.frame761,772,this.frame773,777,this.frame778,809,this.frame810,810,this.frame811,827,this.frame828);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(35);
      }
      
      internal function frame48() : *
      {
         if(skin % 2 == 0)
         {
            --skin;
         }
      }
      
      internal function frame77() : *
      {
         if(skin <= 2)
         {
            Text.speech(Text.fish[6]);
         }
         Text.speech(Text.fish[7]);
      }
      
      internal function frame78() : *
      {
         k();
      }
      
      internal function frame124() : *
      {
         flee();
      }
      
      internal function frame128() : *
      {
         if(skin % 2 == 1)
         {
            ++skin;
         }
         freezeSound();
      }
      
      internal function frame140() : *
      {
         frozen();
      }
      
      internal function frame142() : *
      {
         stand();
         if(skin % 2 == 0)
         {
            --skin;
         }
      }
      
      internal function frame197() : *
      {
         ks();
      }
      
      internal function frame199() : *
      {
         playSound("321");
      }
      
      internal function frame219() : *
      {
         k();
      }
      
      internal function frame220() : *
      {
         playSound("322");
      }
      
      internal function frame224() : *
      {
         playSound("323");
      }
      
      internal function frame247() : *
      {
         k();
      }
      
      internal function frame248() : *
      {
         self.counter1();
         playSound("324");
      }
      
      internal function frame249() : *
      {
         if(skin % 2 == 1)
         {
            body.nextFrame();
         }
      }
      
      internal function frame264() : *
      {
         playSound("325");
      }
      
      internal function frame274() : *
      {
         randomDelay(20);
      }
      
      internal function frame297() : *
      {
         dropItems();
      }
      
      internal function frame319() : *
      {
         dead();
      }
      
      internal function frame320() : *
      {
         playSound("326");
      }
      
      internal function frame339() : *
      {
         k();
      }
      
      internal function frame340() : *
      {
         playSound("heal");
      }
      
      internal function frame369() : *
      {
         k();
      }
      
      internal function frame398() : *
      {
         if(isSummon)
         {
            Summons.FishSteam.effect();
         }
         else
         {
            self.attack2();
         }
         makeMagic(EffectWind,0,0,true);
      }
      
      internal function frame399() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame400() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.fish[4]);
         }
      }
      
      internal function frame416() : *
      {
         if(isSummon)
         {
            k();
         }
      }
      
      internal function frame417() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame438() : *
      {
         self.special4();
      }
      
      internal function frame458() : *
      {
         k();
      }
      
      internal function frame470() : *
      {
         loops = 1;
      }
      
      internal function frame474() : *
      {
         setXY();
      }
      
      internal function frame475() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special5();
         }
      }
      
      internal function frame476() : *
      {
         setXY();
      }
      
      internal function frame477() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special5();
         }
      }
      
      internal function frame478() : *
      {
         setXY();
      }
      
      internal function frame479() : *
      {
         Battle.finalHit = false;
         if(isSummon)
         {
            Summons.FishJet.effect();
         }
         else
         {
            self.special5();
         }
      }
      
      internal function frame480() : *
      {
         setXY();
      }
      
      internal function frame481() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special5();
         }
      }
      
      internal function frame482() : *
      {
         setXY();
      }
      
      internal function frame483() : *
      {
         Battle.finalHit = false;
         if(!isSummon)
         {
            self.special5();
         }
      }
      
      internal function frame484() : *
      {
         setXY();
      }
      
      internal function frame485() : *
      {
         if(loops)
         {
            Battle.finalHit = false;
         }
         if(isSummon)
         {
            Summons.FishJet.effect();
         }
         else
         {
            self.special5();
         }
      }
      
      internal function frame487() : *
      {
         if(loops)
         {
            --loops;
            gotoAndPlay("loop1");
         }
      }
      
      internal function frame489() : *
      {
         Text.speech(Text.fish[5]);
      }
      
      internal function frame502() : *
      {
         k();
      }
      
      internal function frame519() : *
      {
         setXY();
         move(-30,10,Regular.easeIn);
      }
      
      internal function frame524() : *
      {
         swapLayer();
      }
      
      internal function frame528() : *
      {
         self.attack1();
         makeMagic(EffectSmash,0,0);
      }
      
      internal function frame529() : *
      {
         resetXY();
         move(0,20,Regular.easeOut);
      }
      
      internal function frame530() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.fish[4]);
         }
      }
      
      internal function frame535() : *
      {
         resetLayer();
      }
      
      internal function frame550() : *
      {
         k();
      }
      
      internal function frame567() : *
      {
         setXY();
         move(10,11,Regular.easeIn);
      }
      
      internal function frame572() : *
      {
         swapLayer();
      }
      
      internal function frame577() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame599() : *
      {
         Battle.finalHit = false;
         self.attack3();
      }
      
      internal function frame602() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.fish[4]);
         }
      }
      
      internal function frame616() : *
      {
         self.attack3();
      }
      
      internal function frame625() : *
      {
         resetXY();
         move(0,1,null);
      }
      
      internal function frame626() : *
      {
         resetLayer();
      }
      
      internal function frame627() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame644() : *
      {
         setXY();
         move(180,11,Regular.easeIn);
      }
      
      internal function frame649() : *
      {
         swapLayer();
      }
      
      internal function frame658() : *
      {
         self.attack4();
      }
      
      internal function frame687() : *
      {
         resetXY();
         move(0,1,null);
      }
      
      internal function frame688() : *
      {
         resetLayer();
      }
      
      internal function frame689() : *
      {
         gotoAndPlay("intro2");
      }
      
      internal function frame707() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.fish[3]);
         }
      }
      
      internal function frame717() : *
      {
         self.special3();
      }
      
      internal function frame734() : *
      {
         k();
      }
      
      internal function frame740() : *
      {
         summonOnTop();
      }
      
      internal function frame750() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.fish[3]);
         }
      }
      
      internal function frame760() : *
      {
         if(isSummon)
         {
            Summons.FishGold.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame761() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame773() : *
      {
         summonOnTop(false);
      }
      
      internal function frame778() : *
      {
         k();
      }
      
      internal function frame810() : *
      {
         self.attack5();
         makeMagic(EffectStab,0,0,true);
      }
      
      internal function frame811() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame828() : *
      {
         gotoAndPlay("intro2");
      }
   }
}

