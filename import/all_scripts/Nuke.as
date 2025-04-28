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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13816")]
   public dynamic class Nuke extends FoeMC
   {
      public var countdown:int;
      
      public function Nuke()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,124,this.frame125,136,this.frame137,206,this.frame207,215,this.frame216,288,this.frame289,290,this.frame291,305,this.frame306,306,this.frame307,335,this.frame336,336,this.frame337,354,this.frame355,355,this.frame356,375,this.frame376,376,this.frame377,377,this.frame378,398,this.frame399,399,this.frame400,400,this.frame401,405,this.frame406,421,this.frame422,428,this.frame429,476,this.frame477,521,this.frame522,522,this.frame523,580,this.frame581,595,this.frame596,609,this.frame610,620,this.frame621,625,this.frame626,628,this.frame629,634,this.frame635,640,this.frame641,644,this.frame645,648,this.frame649,653,this.frame654,684,this.frame685,700,this.frame701,701,this.frame702,704,this.frame705,712,this.frame713,713,this.frame714,735,this.frame736,761,this.frame762,804,this.frame805,805,this.frame806,826,this.frame827,828,this.frame829,829,this.frame830,892,this.frame893,894,this.frame895,896,this.frame897,914,this.frame915,928,this.frame929,930,this.frame931,931,this.frame932,1001,this.frame1002,1003,this.frame1004,1004,this.frame1005,1008,this.frame1009,1012,this.frame1013,1021,this.frame1022,1033,this.frame1034,1035,this.frame1036);
      }
      
      internal function frame1() : *
      {
         init();
         this.countdown = 4;
      }
      
      internal function frame3() : *
      {
         randomDelay(45);
         this.countdown = 4;
         if(skin >= 5)
         {
            --this.countdown;
         }
         if(Flags.battleEvent == Flags.ARENA_BATTLE)
         {
            this.countdown = 3;
         }
      }
      
      internal function frame125() : *
      {
         if(Flags.battleEvent == Flags.LANCE_BATTLE_3)
         {
            Text.speech(Text.lance[24]);
         }
         if(skin >= 6)
         {
            Text.speech(Text.gigaFortress[6]);
         }
         if(skin >= 6)
         {
            Text.speech(Text.gigaFortress[11]);
         }
         if(skin >= 6)
         {
            Text.speech(Text.gigaFortress[12]);
         }
         if(skin >= 6)
         {
            Text.speech(Text.gigaFortress[13]);
         }
         if(skin >= 6)
         {
            Text.speech(Text.gigaFortress[14]);
         }
      }
      
      internal function frame137() : *
      {
         k();
      }
      
      internal function frame207() : *
      {
         if(!Global.tankSpawn)
         {
            self.replaceMe();
         }
         flee();
      }
      
      internal function frame216() : *
      {
         stand();
      }
      
      internal function frame289() : *
      {
         ks();
      }
      
      internal function frame291() : *
      {
         freezeSound();
      }
      
      internal function frame306() : *
      {
         frozen();
      }
      
      internal function frame307() : *
      {
         playSound("heal");
      }
      
      internal function frame336() : *
      {
         k();
      }
      
      internal function frame337() : *
      {
         playSound("405");
      }
      
      internal function frame355() : *
      {
         k();
      }
      
      internal function frame356() : *
      {
         playSound("406");
         playSound("" + (411 + skin));
      }
      
      internal function frame376() : *
      {
         k();
      }
      
      internal function frame377() : *
      {
         playSound("407");
         playSound("" + (411 + skin));
      }
      
      internal function frame378() : *
      {
         playSound("408");
      }
      
      internal function frame399() : *
      {
         k();
      }
      
      internal function frame400() : *
      {
         Battle.shake("tiny");
         this.countdown = 6;
         playSound("409");
         playSound("" + (411 + skin));
      }
      
      internal function frame401() : *
      {
         playSound("410");
      }
      
      internal function frame406() : *
      {
         playSound("411");
      }
      
      internal function frame422() : *
      {
         playSound("412");
      }
      
      internal function frame429() : *
      {
         randomDelay(20);
      }
      
      internal function frame477() : *
      {
         dropItems();
      }
      
      internal function frame522() : *
      {
         dead();
      }
      
      internal function frame523() : *
      {
         self.special1();
      }
      
      internal function frame581() : *
      {
         k();
      }
      
      internal function frame596() : *
      {
         if(skin >= 5)
         {
            Text.speech(Text.gigaFortress[9]);
         }
         if(skin >= 5)
         {
            Text.speech(Text.gigaFortress[10]);
         }
         if(skin >= 5)
         {
            Text.speech(Text.gigaFortress[11]);
         }
         if(skin >= 5)
         {
            Text.speech(Text.gigaFortress[12]);
         }
      }
      
      internal function frame610() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame621() : *
      {
         Battle.shake("small");
      }
      
      internal function frame626() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame629() : *
      {
         Battle.shake("small");
      }
      
      internal function frame635() : *
      {
         Battle.shake("small");
      }
      
      internal function frame641() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame645() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame649() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame654() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame685() : *
      {
         self.delayedSpellFlag = true;
         if(skin == 5)
         {
            gotoAndPlay("special3");
         }
         if(skin == 6)
         {
            gotoAndPlay("special4");
         }
         if(skin == 7)
         {
            gotoAndPlay("special5");
         }
      }
      
      internal function frame701() : *
      {
         self.special2();
      }
      
      internal function frame702() : *
      {
         dead();
      }
      
      internal function frame705() : *
      {
         setXY();
         Y += 25;
         swapLayer(true);
         move(0,1,null);
      }
      
      internal function frame713() : *
      {
         self.special3(1);
      }
      
      internal function frame714() : *
      {
         Battle.shake("big");
      }
      
      internal function frame736() : *
      {
         Battle.shake("small");
      }
      
      internal function frame762() : *
      {
         Text.speech(Text.gigaFortress[13]);
         Text.speech(Text.gigaFortress[14]);
      }
      
      internal function frame805() : *
      {
         Battle.shake("big");
      }
      
      internal function frame806() : *
      {
         self.special3(2);
      }
      
      internal function frame827() : *
      {
         resetXY();
         resetLayer();
         move(0,1,null);
      }
      
      internal function frame829() : *
      {
         dead();
      }
      
      internal function frame830() : *
      {
         X = 300;
         Y = 240;
         swapLayer(true);
         move(0,1,null);
      }
      
      internal function frame893() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame895() : *
      {
         Battle.shake("big");
      }
      
      internal function frame897() : *
      {
         self.special4();
      }
      
      internal function frame915() : *
      {
         Text.speech(Text.gigaFortress[13]);
         Text.speech(Text.gigaFortress[14]);
      }
      
      internal function frame929() : *
      {
         resetXY();
         resetLayer();
         move(0,1,null);
      }
      
      internal function frame931() : *
      {
         dead();
      }
      
      internal function frame932() : *
      {
         X = 300;
         Y = 240;
         swapLayer(true);
         move(0,1,null);
      }
      
      internal function frame1002() : *
      {
         makeMagic(WhiteFlash,0,0);
      }
      
      internal function frame1004() : *
      {
         Battle.shake("big");
      }
      
      internal function frame1005() : *
      {
         Battle.finalHit = false;
         self.special5();
      }
      
      internal function frame1009() : *
      {
         Battle.finalHit = false;
         self.special5();
      }
      
      internal function frame1013() : *
      {
         self.special5();
      }
      
      internal function frame1022() : *
      {
         Text.speech(Text.gigaFortress[13]);
         Text.speech(Text.gigaFortress[14]);
      }
      
      internal function frame1034() : *
      {
         resetXY();
         resetLayer();
         move(0,1,null);
      }
      
      internal function frame1036() : *
      {
         dead();
      }
   }
}

