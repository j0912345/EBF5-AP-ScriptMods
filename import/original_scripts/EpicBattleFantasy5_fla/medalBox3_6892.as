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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol2632")]
   public dynamic class medalBox3_6892 extends MovieClip
   {
      public var icon:Icons26;
      
      public var t1:TextField;
      
      public var t2:TextField;
      
      public function medalBox3_6892()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.icon.gotoAndStop(Medals.current.icon);
         Global.translate(this.t1,"medalGet",10);
         this.t1.setTextFormat(GUI.boldText);
         Global.translate(this.t2,"",45,Medals.current.name);
         GUI.setTextColor(this.t1);
         this.t2.setTextFormat(GUI.boldText);
      }
   }
}

