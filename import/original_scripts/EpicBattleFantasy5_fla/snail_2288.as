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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19277")]
   public dynamic class snail_2288 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public function snail_2288()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,45,this.frame46,67,this.frame68,78,this.frame79,92,this.frame93);
      }
      
      internal function frame1() : *
      {
         if(Debug.mappingMode2)
         {
            visible = false;
            stop();
         }
      }
      
      internal function frame2() : *
      {
         (parent as Maps).addTile(35,x,y);
         parent.addObject({
            "mc":this.name,
            "type":Maps.ANIMAL
         });
         this.X = x / 50;
         this.Y = y / 40;
      }
      
      internal function frame46() : *
      {
         gotoAndPlay(3);
      }
      
      internal function frame68() : *
      {
         gotoAndPlay(3);
      }
      
      internal function frame79() : *
      {
         Medals.unlock(Medals.wheresSatan);
      }
      
      internal function frame93() : *
      {
         stop();
      }
   }
}

