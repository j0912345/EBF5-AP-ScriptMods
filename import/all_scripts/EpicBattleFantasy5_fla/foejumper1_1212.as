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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18650")]
   public dynamic class foejumper1_1212 extends MovieClip
   {
      public var distance:int;
      
      public var distance2:int;
      
      public function foejumper1_1212()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4);
      }
      
      internal function frame1() : *
      {
         if(!parent.parent)
         {
            stop();
         }
      }
      
      internal function frame4() : *
      {
         try
         {
            if(parent.parent)
            {
               this.distance = parent.Y - Maps.instance.player.Y;
               if(this.distance < 0)
               {
                  this.distance *= -1;
               }
               this.distance2 = parent.X - Maps.instance.player.X;
               if(this.distance2 < 0)
               {
                  this.distance2 *= -1;
               }
               if(this.distance < 4 && this.distance2 < 4)
               {
                  parent.jumpOut();
                  stop();
               }
            }
         }
         catch(e:Error)
         {
            stop();
            if(parent)
            {
               parent.removeChild(this);
            }
         }
      }
   }
}

