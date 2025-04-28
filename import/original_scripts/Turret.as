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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13351")]
   public dynamic class Turret extends FoeMC
   {
      public function Turret()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,136,this.frame137,220,this.frame221,227,this.frame228,229,this.frame230,292,this.frame293,294,this.frame295,309,this.frame310,310,this.frame311,339,this.frame340,340,this.frame341,358,this.frame359,359,this.frame360,360,this.frame361,379,this.frame380,380,this.frame381,381,this.frame382,402,this.frame403,403,this.frame404,404,this.frame405,411,this.frame412,415,this.frame416,416,this.frame417,417,this.frame418,429,this.frame430,474,this.frame475,519,this.frame520,528,this.frame529,529,this.frame530,534,this.frame535,551,this.frame552,552,this.frame553,564,this.frame565,576,this.frame577,577,this.frame578,581,this.frame582,620,this.frame621,621,this.frame622,633,this.frame634,665,this.frame666,677,this.frame678,704,this.frame705,705,this.frame706,719,this.frame720,735,this.frame736,746,this.frame747,747,this.frame748,760,this.frame761,761,this.frame762,777,this.frame778,798,this.frame799,808,this.frame809,809,this.frame810,835,this.frame836,839,this.frame840,843,this.frame844,860,this.frame861);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(45);
      }
      
      internal function frame137() : *
      {
         k();
      }
      
      internal function frame221() : *
      {
         self.replaceMe();
         flee();
      }
      
      internal function frame228() : *
      {
         done();
      }
      
      internal function frame230() : *
      {
         stand();
      }
      
      internal function frame293() : *
      {
         ks();
      }
      
      internal function frame295() : *
      {
         freezeSound();
      }
      
      internal function frame310() : *
      {
         frozen();
      }
      
      internal function frame311() : *
      {
         playSound("heal");
      }
      
      internal function frame340() : *
      {
         k();
      }
      
      internal function frame341() : *
      {
         playSound("448");
      }
      
      internal function frame359() : *
      {
         k();
      }
      
      internal function frame360() : *
      {
         playSound("449");
      }
      
      internal function frame361() : *
      {
         playSound("450");
      }
      
      internal function frame380() : *
      {
         k();
      }
      
      internal function frame381() : *
      {
         playSound("451");
      }
      
      internal function frame382() : *
      {
         playSound("452");
      }
      
      internal function frame403() : *
      {
         k();
      }
      
      internal function frame404() : *
      {
         Battle.shake("tiny");
         playSound("453");
      }
      
      internal function frame405() : *
      {
         playSound("454");
      }
      
      internal function frame412() : *
      {
         playSound("455");
      }
      
      internal function frame416() : *
      {
         playSound("456");
      }
      
      internal function frame417() : *
      {
         Battle.shake("small");
      }
      
      internal function frame418() : *
      {
         playSound("457");
      }
      
      internal function frame430() : *
      {
         randomDelay(20);
      }
      
      internal function frame475() : *
      {
         dropItems();
      }
      
      internal function frame520() : *
      {
         dead();
      }
      
      internal function frame529() : *
      {
         ++skin;
      }
      
      internal function frame530() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame535() : *
      {
         self.attack1();
      }
      
      internal function frame552() : *
      {
         --skin;
      }
      
      internal function frame553() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame565() : *
      {
         k();
      }
      
      internal function frame577() : *
      {
         ++skin;
      }
      
      internal function frame578() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame582() : *
      {
         self.attack2();
      }
      
      internal function frame621() : *
      {
         --skin;
      }
      
      internal function frame622() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame634() : *
      {
         k();
      }
      
      internal function frame666() : *
      {
         self.magic1();
      }
      
      internal function frame678() : *
      {
         k();
      }
      
      internal function frame705() : *
      {
         Battle.shake("small");
      }
      
      internal function frame706() : *
      {
         self.special1();
      }
      
      internal function frame720() : *
      {
         k();
      }
      
      internal function frame736() : *
      {
         loops = 2;
      }
      
      internal function frame747() : *
      {
         Battle.shake("small");
      }
      
      internal function frame748() : *
      {
         if(loops)
         {
            Battle.finalHit = false;
         }
         self.special2();
      }
      
      internal function frame761() : *
      {
         if(loops)
         {
            --loops;
            gotoAndPlay("loop1");
         }
      }
      
      internal function frame762() : *
      {
         k();
      }
      
      internal function frame778() : *
      {
         loops = 3;
         if(self.isHard)
         {
            loops = 4;
         }
      }
      
      internal function frame799() : *
      {
         if(loops)
         {
            Battle.finalHit = false;
         }
         self.special3();
      }
      
      internal function frame809() : *
      {
         if(loops)
         {
            --loops;
            gotoAndPlay("loop2");
         }
      }
      
      internal function frame810() : *
      {
         k();
      }
      
      internal function frame836() : *
      {
         self.special4(1);
      }
      
      internal function frame840() : *
      {
         self.special4(2);
      }
      
      internal function frame844() : *
      {
         self.special4(3);
      }
      
      internal function frame861() : *
      {
         k();
      }
   }
}

