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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4810")]
   public dynamic class skillequipselection2_6827 extends MovieClip
   {
      public var cancel:SimpleButton;
      
      public var cancel2:SimpleButton;
      
      public var txt:TextField;
      
      public function skillequipselection2_6827()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         Global.translate(this.txt,"cancel",20);
         this.cancel.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.cancelSkillEquipSelection();
         });
         this.cancel2.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            parent.cancelSkillEquipSelection();
         });
         stop();
      }
   }
}

