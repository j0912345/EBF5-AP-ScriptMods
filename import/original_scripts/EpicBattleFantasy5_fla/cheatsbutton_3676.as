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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4598")]
   public dynamic class cheatsbutton_3676 extends MovieClip
   {
      public var chb:SimpleButton;
      
      public var cht:TextField;
      
      public function cheatsbutton_3676()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         Global.translate(this.cht,"collect6",25);
         this.chb.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            MapMenu.tipCompleteFlag[9] = true;
            parent.parent.clearMenus();
            parent.parent.selectItem(10);
         });
      }
   }
}

