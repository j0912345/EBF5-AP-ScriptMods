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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12143")]
   public dynamic class lanceidle_5537 extends MovieClip
   {
      public var paper:MovieClip;
      
      public var lowHP:Boolean;
      
      public var zombieMode:Boolean;
      
      public var zombieLance:Boolean;
      
      public var b:int;
      
      public function lanceidle_5537()
      {
         super();
         addFrameScript(0,this.frame1,49,this.frame50,68,this.frame69,111,this.frame112,160,this.frame161);
      }
      
      internal function frame1() : *
      {
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
         this.lowHP = parent.lowHP;
         this.zombieMode = parent.zombieMode;
         this.zombieLance = parent.zombieLance;
      }
      
      internal function frame50() : *
      {
         try
         {
            if(Boolean(parent) && !parent.zombieMode)
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
            else
            {
               gotoAndPlay(1);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame69() : *
      {
         this.paper.nextFrame();
      }
      
      internal function frame112() : *
      {
         gotoAndPlay("paper");
      }
      
      internal function frame161() : *
      {
         gotoAndPlay("phone");
      }
   }
}

