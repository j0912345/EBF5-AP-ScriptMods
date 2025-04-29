package
{
   import fl.transitions.*;
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2958")]
   public dynamic class ItemBubble extends MovieClip
   {
      public var eventDot:MovieClip;
      
      public var itemIcon:int;
      
      public var tweenO:Tween;
      
      public var tweenIX:Tween;
      
      public var tweenIY:Tween;
      
      public var count:int;
      
      public function ItemBubble()
      {
         super();
         addFrameScript(0,this.frame1,60,this.frame61);
      }
      
      public function fromDeadFoe() : *
      {
         if(this.x > 1000)
         {
            this.tweenIX = new Tween(this,"x",Regular.easeOut,this.x,this.x - Math.random() * 200 - 100,9);
         }
         else
         {
            this.tweenIX = new Tween(this,"x",Regular.easeOut,this.x,this.x + Math.random() * 200 - 150,7);
         }
         this.tweenIY = new Tween(this,"y",Regular.easeOut,this.y,this.y - Math.random() * 120 - 30,7);
      }
      
      public function tweenOut(param1:Event = null) : *
      {
         this.eventDot.gotoAndPlay(2);
         removeEventListener(MouseEvent.ROLL_OVER,this.tweenOut);
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.tweenO = new Tween(this,"x",Regular.easeIn,this.x,-50,18);
      }
      
      internal function frame1() : *
      {
         this.count = 0;
         this.fromDeadFoe();
         this.scaleX = 0.66;
         this.scaleY = 0.66;
         this.addEventListener(MouseEvent.ROLL_OVER,this.tweenOut);
      }
      
      internal function frame61() : *
      {
         if(parent)
         {
            ++this.count;
            if(this.count == 3)
            {
               this.tweenOut();
            }
            gotoAndPlay(5);
         }
      }
   }
}

