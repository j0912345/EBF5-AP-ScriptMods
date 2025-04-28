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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3062")]
   public dynamic class catsword_5788 extends MovieClip
   {
      public function catsword_5788()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.zombieMode)
            {
               gotoAndStop(20);
            }
            else
            {
               gotoAndStop(Players.equips[5][0]);
            }
         }
         catch(errObject:Error)
         {
         }
      }
      
      internal function frame10() : *
      {
         try
         {
            eq = Players.equips[5][2];
            if(eq == 9 || eq == 20 || eq == 5)
            {
               gotoAndStop(24);
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}

