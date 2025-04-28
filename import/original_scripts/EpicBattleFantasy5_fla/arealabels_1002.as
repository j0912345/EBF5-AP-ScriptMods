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
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18610")]
   public dynamic class arealabels_1002 extends MovieClip
   {
      public var t:TextField;
      
      public function arealabels_1002()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         if(MapData.area != "")
         {
            if(Options.language == Options.CHIN_SIMP || Options.language == Options.CHIN_TRAD || Options.language == Options.JAPANESE)
            {
               this.t.y -= 25;
            }
            if(Options.language == Options.KOREAN)
            {
               this.t.y -= 10;
            }
            Global.translate(this.t,"",80,SetStrings.getString("names",MapData.area));
         }
      }
   }
}

