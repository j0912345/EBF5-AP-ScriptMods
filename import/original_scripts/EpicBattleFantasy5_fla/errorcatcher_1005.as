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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18617")]
   public dynamic class errorcatcher_1005 extends MovieClip
   {
      public var s:String;
      
      public var i:int;
      
      public function errorcatcher_1005()
      {
         super();
         addFrameScript(29,this.frame30);
      }
      
      internal function frame30() : *
      {
         stop();
         try
         {
            Main.log("\nLooks like the game\'s crashed, here\'s a data dump:");
            Main.log("\n" + " ( " + MapMenu.faderFrame + " / " + Maps.instance.fader.currentFrame + ")\n");
         }
         catch(e:Error)
         {
         }
         try
         {
            Main.log("\n" + parent.parent + " " + parent.currentFrame);
         }
         catch(e:Error)
         {
         }
         try
         {
            this.s = "";
            this.i = 0;
            while(this.i < Maps.instance.parent.numChildren)
            {
               this.s += " " + Maps.instance.parent.getChildAt(this.i);
               ++this.i;
            }
            Main.log("\nChildren: ");
         }
         catch(e:Error)
         {
         }
         try
         {
            Main.log(this.s);
         }
         catch(e:Error)
         {
         }
         try
         {
            parent.play();
         }
         catch(e:Error)
         {
         }
      }
   }
}

