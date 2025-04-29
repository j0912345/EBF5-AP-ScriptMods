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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15466")]
   public dynamic class ClassicRafflesiaMC extends FoeMC
   {
      public var l:int;
      
      public function ClassicRafflesiaMC()
      {
         super();
         addFrameScript(0,this.frame1,48,this.frame49,84,this.frame85,136,this.frame137,143,this.frame144,144,this.frame145,184,this.frame185,204,this.frame205,219,this.frame220,230,this.frame231,231,this.frame232,232,this.frame233,269,this.frame270,323,this.frame324,330,this.frame331,332,this.frame333,351,this.frame352,382,this.frame383,415,this.frame416,428,this.frame429,429,this.frame430,435,this.frame436,445,this.frame446,454,this.frame455,460,this.frame461,471,this.frame472,473,this.frame474,475,this.frame476,498,this.frame499,501,this.frame502,531,this.frame532,533,this.frame534,536,this.frame537,544,this.frame545,560,this.frame561,564,this.frame565,578,this.frame579,584,this.frame585,590,this.frame591,592,this.frame593,606,this.frame607,611,this.frame612,631,this.frame632,656,this.frame657,663,this.frame664,673,this.frame674,729,this.frame730,731,this.frame732,732,this.frame733,763,this.frame764,767,this.frame768,774,this.frame775,800,this.frame801,822,this.frame823,825,this.frame826,828,this.frame829,833,this.frame834,897,this.frame898,908,this.frame909);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame49() : *
      {
         if(isSummon)
         {
            Battle.hidePlayers();
            this.y += 40;
         }
      }
      
      internal function frame85() : *
      {
         if(isSummon && !Flags.isVideoGameBattle())
         {
            Text.speech(Text.ebf1[19]);
         }
      }
      
      internal function frame137() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[5]);
         }
      }
      
      internal function frame144() : *
      {
         k();
      }
      
      internal function frame145() : *
      {
         stand();
      }
      
      internal function frame185() : *
      {
         ks();
      }
      
      internal function frame205() : *
      {
         k();
      }
      
      internal function frame220() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[11]);
         }
      }
      
      internal function frame231() : *
      {
         k();
      }
      
      internal function frame232() : *
      {
         Battle.shake("big");
      }
      
      internal function frame233() : *
      {
         dropItems();
      }
      
      internal function frame270() : *
      {
         Battle.shake("big");
      }
      
      internal function frame324() : *
      {
         Battle.extremeMedal();
      }
      
      internal function frame331() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[13]);
         }
      }
      
      internal function frame333() : *
      {
         dead();
      }
      
      internal function frame352() : *
      {
         k();
      }
      
      internal function frame383() : *
      {
         k();
      }
      
      internal function frame416() : *
      {
         self.special1();
      }
      
      internal function frame429() : *
      {
         k();
      }
      
      internal function frame430() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[9]);
         }
      }
      
      internal function frame436() : *
      {
         this.l = 0;
         this.l = 0;
      }
      
      internal function frame446() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame455() : *
      {
         swapLayer();
      }
      
      internal function frame461() : *
      {
         self.attack1();
      }
      
      internal function frame472() : *
      {
         if(this.l)
         {
            --this.l;
            gotoAndPlay("loop");
         }
      }
      
      internal function frame474() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame476() : *
      {
         resetLayer();
      }
      
      internal function frame499() : *
      {
         k();
      }
      
      internal function frame502() : *
      {
         Battle.shake("small");
      }
      
      internal function frame532() : *
      {
         Battle.shake("small");
      }
      
      internal function frame534() : *
      {
         if(isSummon)
         {
            Summons.ClassicRafflesia.effect2();
         }
         else
         {
            self.magic1();
         }
      }
      
      internal function frame537() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[10]);
         }
      }
      
      internal function frame545() : *
      {
         k();
      }
      
      internal function frame561() : *
      {
         setXY();
         move(10,12,null);
      }
      
      internal function frame565() : *
      {
         swapLayer();
      }
      
      internal function frame579() : *
      {
         self.attack2();
      }
      
      internal function frame585() : *
      {
         self.attack2();
      }
      
      internal function frame591() : *
      {
         self.attack2();
      }
      
      internal function frame593() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[9]);
         }
      }
      
      internal function frame607() : *
      {
         resetXY();
         move(0,24,null);
      }
      
      internal function frame612() : *
      {
         resetLayer();
      }
      
      internal function frame632() : *
      {
         k();
      }
      
      internal function frame657() : *
      {
         self.special2();
      }
      
      internal function frame664() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[8]);
         }
      }
      
      internal function frame674() : *
      {
         k();
      }
      
      internal function frame730() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[12]);
         }
      }
      
      internal function frame732() : *
      {
         self.special3();
      }
      
      internal function frame733() : *
      {
         gotoAndPlay("heal");
      }
      
      internal function frame764() : *
      {
         self.special4();
      }
      
      internal function frame768() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.ebf4[8]);
         }
      }
      
      internal function frame775() : *
      {
         k();
      }
      
      internal function frame801() : *
      {
         Battle.shake("small");
      }
      
      internal function frame823() : *
      {
         if(isSummon)
         {
            Summons.ClassicRafflesia.effect();
         }
         else
         {
            self.special5();
         }
      }
      
      internal function frame826() : *
      {
         if(isSummon)
         {
            Summons.ClassicRafflesia.effect();
         }
         else
         {
            self.special5();
         }
      }
      
      internal function frame829() : *
      {
         if(isSummon)
         {
            Summons.ClassicRafflesia.effect();
         }
         else
         {
            self.special5();
         }
      }
      
      internal function frame834() : *
      {
         k();
      }
      
      internal function frame898() : *
      {
         Battle.showPlayers();
      }
      
      internal function frame909() : *
      {
         flee();
      }
   }
}

