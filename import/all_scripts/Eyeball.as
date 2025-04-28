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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol15886")]
   public dynamic class Eyeball extends FoeMC
   {
      public function Eyeball()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,151,this.frame152,153,this.frame154,192,this.frame193,194,this.frame195,195,this.frame196,210,this.frame211,211,this.frame212,212,this.frame213,232,this.frame233,233,this.frame234,234,this.frame235,260,this.frame261,261,this.frame262,295,this.frame296,325,this.frame326,336,this.frame337,344,this.frame345,348,this.frame349,365,this.frame366,376,this.frame377,382,this.frame383,389,this.frame390,406,this.frame407,429,this.frame430,430,this.frame431,465,this.frame466,485,this.frame486,523,this.frame524,536,this.frame537,570,this.frame571,590,this.frame591);
      }
      
      internal function frame1() : *
      {
         init();
      }
      
      internal function frame3() : *
      {
         randomDelay(15);
      }
      
      internal function frame152() : *
      {
         k();
      }
      
      internal function frame154() : *
      {
         stand();
      }
      
      internal function frame193() : *
      {
         ks();
      }
      
      internal function frame195() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
      }
      
      internal function frame196() : *
      {
         playSound("freeze");
      }
      
      internal function frame211() : *
      {
         frozen();
      }
      
      internal function frame212() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
         SFX.playSound("eyehit");
      }
      
      internal function frame213() : *
      {
         head.eye.gotoAndPlay("hit");
      }
      
      internal function frame233() : *
      {
         k();
      }
      
      internal function frame234() : *
      {
         self.skinDamage();
         gotoAndPlay(currentFrame + 1);
         SFX.playSound("eyehit2");
      }
      
      internal function frame235() : *
      {
         head.eye.gotoAndPlay("hit");
      }
      
      internal function frame261() : *
      {
         k();
      }
      
      internal function frame262() : *
      {
         head.eye.gotoAndPlay("hit");
         SFX.playSound("eyehit3");
      }
      
      internal function frame296() : *
      {
         gotoAndPlay(currentFrame + int(Math.random() * 8));
      }
      
      internal function frame326() : *
      {
         dead();
      }
      
      internal function frame337() : *
      {
         setXY();
         move(770,6,null);
      }
      
      internal function frame345() : *
      {
         self.attack1();
      }
      
      internal function frame349() : *
      {
         resetXY();
         move(0,9,null);
      }
      
      internal function frame366() : *
      {
         k();
      }
      
      internal function frame377() : *
      {
         setXY();
         move(750,6,null);
      }
      
      internal function frame383() : *
      {
         self.attack2();
      }
      
      internal function frame390() : *
      {
         resetXY();
         move(0,9,null);
      }
      
      internal function frame407() : *
      {
         k();
      }
      
      internal function frame430() : *
      {
         k();
      }
      
      internal function frame431() : *
      {
         playSound("heal");
      }
      
      internal function frame466() : *
      {
         k();
      }
      
      internal function frame486() : *
      {
         flee();
      }
      
      internal function frame524() : *
      {
         self.magic1();
      }
      
      internal function frame537() : *
      {
         k();
      }
      
      internal function frame571() : *
      {
         self.magic2();
      }
      
      internal function frame591() : *
      {
         k();
      }
   }
}

