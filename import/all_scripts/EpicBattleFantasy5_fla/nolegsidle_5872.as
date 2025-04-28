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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11079")]
   public dynamic class nolegsidle_5872 extends MovieClip
   {
      public var eyes:MovieClip;
      
      public var head:MovieClip;
      
      public var lowHP:Boolean;
      
      public var zombieMode:Boolean;
      
      public var zombieNoLegs:Boolean;
      
      public var hideMouth:Boolean;
      
      public var b:int;
      
      public function nolegsidle_5872()
      {
         super();
         addFrameScript(0,this.frame1,46,this.frame47,61,this.frame62,76,this.frame77,105,this.frame106,149,this.frame150,284,this.frame285);
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
         this.zombieNoLegs = parent.zombieNoLegs;
      }
      
      internal function frame47() : *
      {
         try
         {
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
            else
            {
               gotoAndPlay(1);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame62() : *
      {
         this.eyes.gotoAndPlay("stars");
      }
      
      internal function frame77() : *
      {
         this.eyes.gotoAndPlay(1);
      }
      
      internal function frame106() : *
      {
         if(Math.random() > 0.5)
         {
            gotoAndPlay("fly");
         }
         else
         {
            gotoAndPlay("fly2");
         }
      }
      
      internal function frame150() : *
      {
         if(Math.random() > 0.5)
         {
            gotoAndPlay("fly");
         }
         else
         {
            gotoAndPlay("fly2");
         }
      }
      
      internal function frame285() : *
      {
         gotoAndPlay("sleep");
      }
   }
}

