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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5833")]
   public dynamic class annahair5_3386 extends MovieClip
   {
      public var b1:MovieClip;
      
      public function annahair5_3386()
      {
         super();
         addFrameScript(0,this.frame1,19,this.frame20);
      }
      
      internal function frame1() : *
      {
         stop();
         this.b1.addEventListener(MouseEvent.ROLL_OUT,function(param1:MouseEvent):*
         {
            var _loc2_:Point = new Point(parent.x,parent.y);
            _loc2_ = localToGlobal(_loc2_);
            if(_loc2_.x < stage.mouseX + 40)
            {
               gotoAndPlay("hair");
            }
            else
            {
               gotoAndPlay(2);
            }
         });
      }
      
      internal function frame20() : *
      {
         gotoAndStop(1);
      }
   }
}

