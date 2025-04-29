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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2843")]
   public dynamic class GUIhintbubble_3635 extends MovieClip
   {
      public var tip:Object;
      
      public var flip:Boolean;
      
      public function GUIhintbubble_3635()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         onRollOverHandler = function(param1:MouseEvent):*
         {
            if(!flip)
            {
               GUI.showTooltip(parent,x + 0,y + 0,tip,25);
            }
            else
            {
               GUI.showTooltip(parent,x + 0,y + 0,tip,26);
            }
         };
         onRollOutHandler = function(param1:MouseEvent):*
         {
            GUI.removeTooltip();
         };
         buttonMode = true;
         useHandCursor = true;
         addEventListener(MouseEvent.ROLL_OVER,onRollOverHandler);
         addEventListener(MouseEvent.ROLL_OUT,onRollOutHandler);
         mouseEnabled = true;
      }
   }
}

