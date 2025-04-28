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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11220")]
   public dynamic class __items_1492 extends MovieClip
   {
      public var icon:Icon;
      
      public function __items_1492()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.juggle)
            {
               this.icon = GUI.createIcon(this,{"icon":Math.floor(Math.random() * 60) + 580},null,true,"none");
            }
            else
            {
               this.icon = GUI.createIcon(this,{"icon":Global.itemIcon},null,true,"none");
            }
         }
         catch(errObject:Error)
         {
            icon = GUI.createIcon(this,{"icon":Global.itemIcon},null,true,"none");
         }
         this.icon.x -= 8;
         this.icon.y -= 25;
         addChild(this.icon);
      }
   }
}

