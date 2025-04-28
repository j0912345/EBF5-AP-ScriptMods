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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol11644")]
   public dynamic class natzidle_5737 extends MovieClip
   {
      public var lowHP:Boolean;
      
      public var zombieMode:Boolean;
      
      public var zombieNatz:Boolean;
      
      public var b:int;
      
      public function natzidle_5737()
      {
         super();
         addFrameScript(0,this.frame1,53,this.frame54,96,this.frame97,130,this.frame131,178,this.frame179,226,this.frame227);
      }
      
      internal function frame1() : *
      {
         this.lowHP = parent.lowHP;
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
         if(!parent)
         {
            return;
         }
         this.zombieMode = parent.zombieMode;
         this.zombieNatz = parent.zombieNatz;
      }
      
      internal function frame54() : *
      {
         try
         {
            if(parent.zombieMode)
            {
               gotoAndPlay(1);
            }
            else
            {
               this.b = Math.random() * 200;
               if(this.b == 0)
               {
                  gotoAndPlay("idle1");
               }
               else if(this.b == 1)
               {
                  if(Boolean(parent) && Boolean(parent.lowHP))
                  {
                     gotoAndPlay("idle1");
                  }
                  else
                  {
                     gotoAndPlay("idle2");
                  }
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
      
      internal function frame97() : *
      {
         if(Math.floor(Math.random() * 4))
         {
            gotoAndPlay("ds");
         }
      }
      
      internal function frame131() : *
      {
         gotoAndPlay("ds3");
      }
      
      internal function frame179() : *
      {
         if(Math.floor(Math.random() * 4))
         {
            gotoAndPlay("sing");
         }
      }
      
      internal function frame227() : *
      {
         gotoAndPlay("sing3");
      }
   }
}

