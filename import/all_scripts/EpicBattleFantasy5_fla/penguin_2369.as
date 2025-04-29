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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19785")]
   public dynamic class penguin_2369 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public function penguin_2369()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,45,this.frame46,88,this.frame89,109,this.frame110,120,this.frame121,134,this.frame135);
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
         if(Math.random() < 0.8)
         {
            gotoAndPlay(3);
         }
      }
      
      internal function frame89() : *
      {
         gotoAndPlay(3);
      }
      
      internal function frame110() : *
      {
         gotoAndPlay(3);
      }
      
      internal function frame121() : *
      {
         Medals.unlock(Medals.wheresSatan);
      }
      
      internal function frame135() : *
      {
         stop();
      }
   }
}

