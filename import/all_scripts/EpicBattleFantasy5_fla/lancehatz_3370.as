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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol5795")]
   public dynamic class lancehatz_3370 extends MovieClip
   {
      public var brows:MovieClip;
      
      public var glasses:MovieClip;
      
      public var hair1:MovieClip;
      
      public var hair2:MovieClip;
      
      public var eq:int;
      
      public function lancehatz_3370()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,12,this.frame13,17,this.frame18,20,this.frame21,21,this.frame22);
      }
      
      internal function frame1() : *
      {
         try
         {
            if(parent.zombieMode)
            {
               gotoAndStop(20);
            }
            else
            {
               gotoAndStop(Players.equips[3][1]);
            }
         }
         catch(errObject:Error)
         {
         }
         this.brows.visible = false;
         if(Players.hasItem(34,3))
         {
            this.brows.visible = true;
         }
         this.glasses.visible = false;
         if(Players.hasItem(49,3))
         {
            this.glasses.visible = true;
         }
      }
      
      internal function frame10() : *
      {
         try
         {
            this.eq = Players.P3equips[0];
            eq2 = Players.P3equips[2];
            if(this.eq == 2 || this.eq == 3 || this.eq == 20)
            {
               gotoAndStop(32);
            }
            if(this.eq == 4 || this.eq == 6 || this.eq == 14 || this.eq == 15 || this.eq == 16)
            {
               gotoAndStop(33);
            }
            if(this.eq == 1 || this.eq == 7 || this.eq == 21 || this.eq == 19)
            {
               gotoAndStop(31);
            }
            if(this.eq == 8 || this.eq == 12 || this.eq == 13)
            {
               gotoAndStop(30);
            }
            if(this.eq == 2 && eq2 == 4)
            {
               gotoAndStop(31);
            }
            if(this.eq == 2 && eq2 == 17)
            {
               gotoAndStop(31);
            }
            if(this.eq == 8 && eq2 == 14)
            {
               gotoAndStop(31);
            }
            if(this.eq == 8 && eq2 == 19)
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
            if(Players.P3equips[2] == 3)
            {
               gotoAndStop(36);
            }
            if(Players.P3equips[2] == 7)
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
            if(Players.P3equips[2] == 3)
            {
               gotoAndStop(37);
            }
            if(Players.P3equips[2] == 7)
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
            if(Players.P3equips[2] == 3)
            {
               gotoAndStop(39);
            }
            if(Players.P3equips[2] == 12)
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
         if(Players.P3equips[0] == 9)
         {
            gotoAndStop(34);
         }
      }
   }
}

