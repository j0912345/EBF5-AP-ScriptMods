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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol19829")]
   public dynamic class gridrapidleft_2360 extends MovieClip
   {
      public var guide:MovieClip;
      
      public var r1:MovieClip;
      
      public var r2:MovieClip;
      
      public var X:int;
      
      public var Y:int;
      
      public function gridrapidleft_2360()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         if(Debug.mappingMode2)
         {
            visible = false;
            stop();
         }
         if(Boolean(Flags.GOLEM_DEFEATED.quantity) && Maps.mapY == 6)
         {
            visible = false;
         }
      }
      
      internal function frame2() : *
      {
         stop();
         try
         {
            if(!visible)
            {
               Maps.instance.addTile(60,x,y + 20);
            }
            else
            {
               Maps.instance.addTile(64,x,y + 20);
            }
         }
         catch(e:Error)
         {
         }
         this.X = x / 50;
         this.Y = (y + 20) / 40;
         this.r1.gotoAndPlay(int(Math.random() * 5 + 1));
         this.r2.gotoAndPlay(int(Math.random() * 5 + 16));
      }
   }
}

