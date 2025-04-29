package EpicBattleFantasy5_fla
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol152")]
   public dynamic class mfly_47 extends MovieClip
   {
      public var Y:int;
      
      public var X:int;
      
      public var xSpeed:Number;
      
      public var ySpeed:Number;
      
      public function mfly_47()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
      }
      
      internal function frame1() : *
      {
         this.Y = y;
         this.X = x;
         this.xSpeed = 0;
         this.ySpeed = 0;
      }
      
      internal function frame2() : *
      {
         if(!Options.idleBackgrounds)
         {
            stop();
            visible = false;
         }
      }
      
      internal function frame3() : *
      {
         this.ySpeed += Math.random() - 0.5;
         this.xSpeed += Math.random() - 0.5;
         if(y > this.Y + 30)
         {
            this.ySpeed *= 0.9;
            this.ySpeed -= 0.2;
         }
         if(y < this.Y - 30)
         {
            this.ySpeed *= 0.9;
            this.ySpeed += 0.2;
         }
         if(x > this.X + 50)
         {
            this.xSpeed *= 0.9;
            this.xSpeed -= 0.2;
         }
         if(x < this.X - 50)
         {
            this.xSpeed *= 0.9;
            this.xSpeed += 0.2;
         }
         y += this.ySpeed;
         x += this.xSpeed;
      }
      
      internal function frame4() : *
      {
         gotoAndPlay(2);
      }
   }
}

