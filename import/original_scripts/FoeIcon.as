package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18441")]
   public class FoeIcon extends MovieClip
   {
      public var skin:int = 1;
      
      public var anim:int = 1;
      
      public var frame:MovieClip;
      
      public var mc:MovieClip;
      
      public var bg:MovieClip;
      
      public var mk:MovieClip;
      
      public var graphic:MovieClip;
      
      public function FoeIcon(param1:* = null)
      {
         super();
         addFrameScript(1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,8,this.frame9,9,this.frame10,10,this.frame11,11,this.frame12,12,this.frame13,14,this.frame15,15,this.frame16,16,this.frame17,29,this.frame30);
         if(!param1)
         {
            return;
         }
         if(param1 is Class)
         {
            this.anim = param1.iconInfo[0];
            this.skin = param1.iconInfo[1];
            gotoAndStop(this.anim);
         }
         else
         {
            gotoAndStop(param1);
         }
      }
      
      internal function frame2() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame3() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame4() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame5() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame6() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame7() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame9() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame10() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame11() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame12() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame13() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame15() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame16() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame17() : *
      {
         this.mc.gotoAndPlay(int(Math.random() * 40));
      }
      
      internal function frame30() : *
      {
         scaleX = 0.76;
         scaleY = 0.76;
         x += 3;
         y -= 6;
      }
   }
}

