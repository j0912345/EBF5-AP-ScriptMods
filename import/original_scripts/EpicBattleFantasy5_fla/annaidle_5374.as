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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12443")]
   public dynamic class annaidle_5374 extends MovieClip
   {
      public var lowHP:Boolean;
      
      public var zombieMode:Boolean;
      
      public var zombieAnna:Boolean;
      
      public var b:int;
      
      public var skin:int;
      
      public function annaidle_5374()
      {
         super();
         addFrameScript(0,this.frame1,53,this.frame54,54,this.frame55,136,this.frame137,141,this.frame142,197,this.frame198);
      }
      
      internal function frame1() : *
      {
         this.lowHP = parent.lowHP;
         this.zombieMode = parent.zombieMode;
         this.zombieAnna = parent.zombieAnna;
         try
         {
            if(!Options.idlePlayers && !parent.zombieMode || !Options.idleFoes && parent.zombieMode)
            {
               stop();
               cacheAsBitmap = true;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame54() : *
      {
         try
         {
            gotoAndPlay(1);
            if(!parent.zombieMode)
            {
               this.b = Math.random() * 200;
               if(this.b == 0)
               {
                  gotoAndPlay("idle1");
               }
               else if(this.b == 1)
               {
                  gotoAndPlay("idle2");
               }
               else
               {
                  gotoAndPlay(1);
               }
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame55() : *
      {
         this.skin = Math.random() * 3 + 10;
      }
      
      internal function frame137() : *
      {
         gotoAndPlay("ds");
      }
      
      internal function frame142() : *
      {
         gotoAndPlay("ds3");
      }
      
      internal function frame198() : *
      {
         gotoAndPlay("sing");
      }
   }
}

