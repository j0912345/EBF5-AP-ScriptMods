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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol3429")]
   public dynamic class cathats_3426 extends MovieClip
   {
      public var glasses:MovieClip;
      
      public function cathats_3426()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,12,this.frame13,17,this.frame18,20,this.frame21,21,this.frame22);
      }
      
      internal function frame1() : *
      {
         try
         {
            this.glasses.visible = false;
            if(Players.hasItem(49,5))
            {
               this.glasses.visible = true;
            }
            if(Boolean(parent.zombieMode) && Boolean(parent.zombieNoLegs))
            {
               gotoAndStop(23);
            }
            else if(!Options.showNoLegsHat)
            {
               gotoAndStop(25);
            }
            else
            {
               gotoAndStop(Players.equips[5][1]);
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
            eq = Players.equips[5][0];
            if(eq == 10 || eq == 14 || eq == 12 && !Options.blood)
            {
               gotoAndStop(32);
            }
            if(eq == 4 || eq == 16 || eq == 17 || eq == 19)
            {
               gotoAndStop(33);
            }
            if(eq == 7 || eq == 8 || eq == 11 || eq == 12 && Options.blood)
            {
               gotoAndStop(31);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame13() : *
      {
         try
         {
            if(Players.equips[5][2] == 3)
            {
               gotoAndStop(36);
            }
            if(Players.equips[5][2] == 7)
            {
               gotoAndStop(35);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame18() : *
      {
         try
         {
            if(Players.equips[5][2] == 3)
            {
               gotoAndStop(37);
            }
            if(Players.equips[5][2] == 7)
            {
               gotoAndStop(38);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame21() : *
      {
         try
         {
            if(Players.equips[5][2] == 3)
            {
               gotoAndStop(39);
            }
            if(Players.equips[5][2] == 12)
            {
               gotoAndStop(40);
            }
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame22() : *
      {
         if(Players.equips[5][0] == 6)
         {
            gotoAndStop(34);
         }
      }
   }
}

