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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18638")]
   public dynamic class seagull_1514 extends MovieClip
   {
      public var X:int;
      
      public var Y:int;
      
      public function seagull_1514()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,45,this.frame46,95,this.frame96,104,this.frame105,123,this.frame124,134,this.frame135,148,this.frame149);
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
         (parent as Maps).addTile(35,x,y + 30);
         parent.addObject({
            "mc":this.name,
            "type":Maps.ANIMAL
         });
         this.X = x / 50;
         this.Y = (y + 30) / 40;
      }
      
      internal function frame46() : *
      {
         if(Math.random() < 0.8)
         {
            gotoAndPlay(3);
         }
      }
      
      internal function frame96() : *
      {
         if(Math.random() < 0.8)
         {
            gotoAndPlay(53);
         }
      }
      
      internal function frame105() : *
      {
         gotoAndPlay(3);
      }
      
      internal function frame124() : *
      {
         gotoAndPlay(3);
      }
      
      internal function frame135() : *
      {
         Medals.unlock(Medals.wheresSatan);
      }
      
      internal function frame149() : *
      {
         stop();
      }
   }
}

