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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol13499")]
   public dynamic class Sprite extends FoeMC
   {
      public function Sprite()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,43,this.frame44,60,this.frame61,61,this.frame62,77,this.frame78,79,this.frame80,126,this.frame127,172,this.frame173,173,this.frame174,181,this.frame182,193,this.frame194,194,this.frame195,221,this.frame222,222,this.frame223,240,this.frame241,244,this.frame245,249,this.frame250,274,this.frame275,297,this.frame298,298,this.frame299,305,this.frame306,317,this.frame318,318,this.frame319,331,this.frame332,346,this.frame347,353,this.frame354,367,this.frame368,382,this.frame383,385,this.frame386,396,this.frame397,398,this.frame399,411,this.frame412,447,this.frame448,456,this.frame457,483,this.frame484,489,this.frame490,513,this.frame514,521,this.frame522,534,this.frame535,583,this.frame584,590,this.frame591,606,this.frame607,617,this.frame618,626,this.frame627,641,this.frame642,666,this.frame667,671,this.frame672,678,this.frame679,688,this.frame689,706,this.frame707,710,this.frame711,714,this.frame715,716,this.frame717,727,this.frame728,737,this.frame738,748,this.frame749,761,this.frame762,778,this.frame779,784,this.frame785,797,this.frame798,823,this.frame824,824,this.frame825,843,this.frame844,858,this.frame859,861,this.frame862,862,this.frame863,876,this.frame877,888,this.frame889,906,this.frame907,926,this.frame927,932,this.frame933,965,this.frame966,984,this.frame985,985,this.frame986,990,this.frame991,1002,this.frame1003,1010,this.frame1011,1020,this.frame1021,1043,this.frame1044,1047,this.frame1048,1057,this.frame1058,1064,this.frame1065,1079,this.frame1080,1101,this.frame1102,1117,this.frame1118,1122,this.frame1123);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(20);
      }
      
      internal function frame44() : *
      {
         if(!isSummon)
         {
            if(skin == 4 || skin == 5)
            {
               Text.speech(Text.sprites[4]);
            }
         }
         if(skin == 9 || skin == 10)
         {
            Text.speech(Text.sprites[5]);
         }
         Text.speech(Text.sprites[6]);
      }
      
      internal function frame61() : *
      {
         k();
      }
      
      internal function frame62() : *
      {
         freezeSound();
      }
      
      internal function frame78() : *
      {
         frozen();
      }
      
      internal function frame80() : *
      {
         stand();
      }
      
      internal function frame127() : *
      {
         ks();
      }
      
      internal function frame173() : *
      {
         flee();
      }
      
      internal function frame174() : *
      {
         head.eyes.visible = false;
         playSound("225");
      }
      
      internal function frame182() : *
      {
         head.eyes.visible = true;
      }
      
      internal function frame194() : *
      {
         k();
      }
      
      internal function frame195() : *
      {
         playSound("226");
      }
      
      internal function frame222() : *
      {
         k();
      }
      
      internal function frame223() : *
      {
         playSound("227");
      }
      
      internal function frame241() : *
      {
         playSound("228");
      }
      
      internal function frame245() : *
      {
         Text.speech(Text.sprites[3]);
      }
      
      internal function frame250() : *
      {
         randomDelay(20);
      }
      
      internal function frame275() : *
      {
         dropItems();
      }
      
      internal function frame298() : *
      {
         dead();
      }
      
      internal function frame299() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame306() : *
      {
         head.eyes.visible = true;
      }
      
      internal function frame318() : *
      {
         k();
      }
      
      internal function frame319() : *
      {
         playSound("heal");
      }
      
      internal function frame332() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame347() : *
      {
         k();
      }
      
      internal function frame354() : *
      {
         setXY();
         move(10,25,Regular.easeInOut);
      }
      
      internal function frame368() : *
      {
         swapLayer();
      }
      
      internal function frame383() : *
      {
         head.eyes.visible = false;
         self.attack1();
      }
      
      internal function frame386() : *
      {
         resetXY();
         move(0,25,Regular.easeInOut);
      }
      
      internal function frame397() : *
      {
         head.eyes.visible = true;
      }
      
      internal function frame399() : *
      {
         resetLayer();
      }
      
      internal function frame412() : *
      {
         k();
      }
      
      internal function frame448() : *
      {
         self.magic1();
      }
      
      internal function frame457() : *
      {
         k();
      }
      
      internal function frame484() : *
      {
         self.magic2();
      }
      
      internal function frame490() : *
      {
         k();
      }
      
      internal function frame514() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame522() : *
      {
         if(isSummon)
         {
            Summons.SpriteWind.effect();
         }
         else
         {
            self.special1();
         }
      }
      
      internal function frame535() : *
      {
         k();
      }
      
      internal function frame584() : *
      {
         self.special2();
      }
      
      internal function frame591() : *
      {
         k();
      }
      
      internal function frame607() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame618() : *
      {
         if(isSummon)
         {
            Summons.SpriteThunder.effect();
         }
         else
         {
            self.special9();
         }
      }
      
      internal function frame627() : *
      {
         k();
      }
      
      internal function frame642() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame667() : *
      {
         self.special3();
      }
      
      internal function frame672() : *
      {
         k();
      }
      
      internal function frame679() : *
      {
         setXY();
         move(70,20,Regular.easeInOut);
      }
      
      internal function frame689() : *
      {
         swapLayer();
      }
      
      internal function frame707() : *
      {
         Battle.finalHit = false;
         self.special4();
      }
      
      internal function frame711() : *
      {
         Battle.finalHit = false;
         self.special4();
      }
      
      internal function frame715() : *
      {
         self.special4();
      }
      
      internal function frame717() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.sprites[1]);
         }
      }
      
      internal function frame728() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame738() : *
      {
         resetLayer();
      }
      
      internal function frame749() : *
      {
         k();
      }
      
      internal function frame762() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame779() : *
      {
         self.special5();
      }
      
      internal function frame785() : *
      {
         k();
      }
      
      internal function frame798() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame824() : *
      {
         if(isSummon)
         {
            Summons.SpriteFire.effect();
         }
         else
         {
            self.special6();
         }
      }
      
      internal function frame825() : *
      {
         k();
      }
      
      internal function frame844() : *
      {
         Battle.shake("small");
      }
      
      internal function frame859() : *
      {
         setXY();
         move(-10,1,null);
         swapLayer();
      }
      
      internal function frame862() : *
      {
         Battle.shake("small");
      }
      
      internal function frame863() : *
      {
         self.attack2();
      }
      
      internal function frame877() : *
      {
         resetXY();
         move(0,25,Regular.easeInOut);
      }
      
      internal function frame889() : *
      {
         resetLayer();
      }
      
      internal function frame907() : *
      {
         k();
      }
      
      internal function frame927() : *
      {
         Battle.shake("small");
      }
      
      internal function frame933() : *
      {
         if(isSummon)
         {
            Summons.SpriteRock.effect();
         }
         else
         {
            self.magic3();
         }
      }
      
      internal function frame966() : *
      {
         k();
      }
      
      internal function frame985() : *
      {
         Battle.shake("small");
      }
      
      internal function frame986() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame991() : *
      {
         self.magic4();
      }
      
      internal function frame1003() : *
      {
         k();
      }
      
      internal function frame1011() : *
      {
         setXY();
         move(60,20,Regular.easeInOut);
      }
      
      internal function frame1021() : *
      {
         swapLayer();
      }
      
      internal function frame1044() : *
      {
         self.special7();
      }
      
      internal function frame1048() : *
      {
         if(!isSummon)
         {
            Text.speech(Text.sprites[1]);
         }
      }
      
      internal function frame1058() : *
      {
         resetXY();
         move(0,20,Regular.easeInOut);
      }
      
      internal function frame1065() : *
      {
         resetLayer();
      }
      
      internal function frame1080() : *
      {
         k();
      }
      
      internal function frame1102() : *
      {
         head.eyes.visible = false;
      }
      
      internal function frame1118() : *
      {
         if(isSummon)
         {
            Summons.SpriteIce.effect();
         }
         else
         {
            self.special8();
         }
      }
      
      internal function frame1123() : *
      {
         k();
      }
   }
}

