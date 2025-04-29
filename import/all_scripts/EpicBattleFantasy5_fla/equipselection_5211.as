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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4938")]
   public dynamic class equipselection_5211 extends MovieClip
   {
      public var cancel:SimpleButton;
      
      public var tx:TextField;
      
      public var window:MovieClip;
      
      public function equipselection_5211()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.cancel.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.cancelEquipSelection();
         });
         Global.translate(this.tx,"cancel",15);
         stop();
      }
   }
}

