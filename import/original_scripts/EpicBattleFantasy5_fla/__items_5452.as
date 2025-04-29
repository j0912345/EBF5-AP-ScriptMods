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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol7276")]
   public dynamic class __items_5452 extends MovieClip
   {
      public var num:int;
      
      public var icon:MovieClip;
      
      public function __items_5452()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.num = Global.itemIcon;
         mouseChildren = false;
         mouseEnabled = false;
         try
         {
            if(parent.juggle)
            {
               this.num = parent.juggleItem;
            }
         }
         catch(errObject:Error)
         {
            num = Global.itemIcon;
         }
         this.icon = new Icon({
            "icon":this.num,
            "quantity":""
         },false,null,Icon.ITEM);
         this.icon.x -= 8;
         this.icon.y -= 25;
         this.icon.scaleX *= 1;
         this.icon.scaleY *= 1;
         addChild(this.icon);
      }
   }
}

