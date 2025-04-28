package
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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18621")]
   public dynamic class Swisher extends MovieClip
   {
      public var areaLabel:MovieClip;
      
      public var ox:int;
      
      public var oy:int;
      
      public function Swisher()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,6,this.frame7,12,this.frame13,13,this.frame14,22,this.frame23,38,this.frame39,39,this.frame40,40,this.frame41,41,this.frame42,42,this.frame43,43,this.frame44,44,this.frame45,45,this.frame46,46,this.frame47,47,this.frame48,48,this.frame49,49,this.frame50,50,this.frame51,51,this.frame52,52,this.frame53,53,this.frame54,54,this.frame55,55,this.frame56,56,this.frame57,57,this.frame58,58,this.frame59,59,this.frame60,60,this.frame61,61,this.frame62,62,this.frame63,63,this.frame64,64,this.frame65,65,this.frame66,66,this.frame67,67,this.frame68,68,this.frame69,69,this.frame70,70,this.frame71,71,this.frame72,72,this.frame73,73,this.frame74,74,this.frame75,75,this.frame76,76,this.frame77,77,this.frame78,78,this.frame79,79,this.frame80,80,this.frame81,81,this.frame82,82,this.frame83,83,this.frame84,84,this.frame85,85,this.frame86,87,this.frame88,93,this.frame94,95,this.frame96,98,this.frame99,99,this.frame100,103,this.frame104,105,this.frame106,111,this.frame112,116,this.frame117,117,this.frame118,121,this.frame122,123,this.frame124,139,this.frame140,163,this.frame164);
      }
      
      public function moveX(param1:int) : *
      {
         parent.x += param1;
         this.x -= param1;
      }
      
      public function moveY(param1:int) : *
      {
         parent.y += param1;
         this.y -= param1;
      }
      
      public function k() : *
      {
         parent.highlight();
         parent.x = parent.ox;
         parent.y = parent.oy;
         this.x = this.ox;
         this.y = this.oy;
         if(Flags.soundFlag != "")
         {
            Maps.playSound(Flags.soundFlag);
            Flags.soundFlag = "";
         }
         stop();
      }
      
      internal function frame1() : *
      {
         this.ox = x;
         this.oy = y;
         if(!MapMenu.faderFrame)
         {
            gotoAndPlay(2);
            ++parent.busy;
         }
      }
      
      internal function frame2() : *
      {
      }
      
      internal function frame3() : *
      {
         try
         {
            parent.player.updatePosition();
            parent.player.dark();
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame4() : *
      {
         Maps.autosave();
      }
      
      internal function frame7() : *
      {
         --parent.busy;
      }
      
      internal function frame13() : *
      {
         this.k();
      }
      
      internal function frame14() : *
      {
      }
      
      internal function frame23() : *
      {
         (parent as Maps).nextMap();
      }
      
      internal function frame39() : *
      {
         this.moveX(-10);
      }
      
      internal function frame40() : *
      {
         ++parent.busy;
         this.moveX(-20);
      }
      
      internal function frame41() : *
      {
         this.moveX(-30);
      }
      
      internal function frame42() : *
      {
         this.moveX(-40);
      }
      
      internal function frame43() : *
      {
         this.moveX(-50);
      }
      
      internal function frame44() : *
      {
         (parent as Maps).nextMap();
         stop();
         parent.x = parent.ox + 150;
         this.x = this.ox - 150;
      }
      
      internal function frame45() : *
      {
         Maps.autosave();
         parent.x = parent.ox + 150;
         this.x = this.ox - 150;
         this.moveX(-50);
      }
      
      internal function frame46() : *
      {
         this.moveX(-40);
      }
      
      internal function frame47() : *
      {
         this.moveX(-30);
      }
      
      internal function frame48() : *
      {
         --parent.busy;
         this.moveX(-20);
      }
      
      internal function frame49() : *
      {
         this.moveX(-10);
      }
      
      internal function frame50() : *
      {
         this.k();
         parent.player.setCave();
      }
      
      internal function frame51() : *
      {
         this.moveX(10);
      }
      
      internal function frame52() : *
      {
         ++parent.busy;
         this.moveX(20);
      }
      
      internal function frame53() : *
      {
         this.moveX(30);
      }
      
      internal function frame54() : *
      {
         this.moveX(40);
      }
      
      internal function frame55() : *
      {
         this.moveX(50);
      }
      
      internal function frame56() : *
      {
         (parent as Maps).nextMap();
         stop();
         parent.x = parent.ox - 150;
         this.x = this.ox + 150;
      }
      
      internal function frame57() : *
      {
         Maps.autosave();
         parent.x = parent.ox - 150;
         this.x = this.ox + 150;
         this.moveX(50);
      }
      
      internal function frame58() : *
      {
         this.moveX(40);
      }
      
      internal function frame59() : *
      {
         this.moveX(30);
      }
      
      internal function frame60() : *
      {
         --parent.busy;
         this.moveX(20);
      }
      
      internal function frame61() : *
      {
         this.moveX(10);
      }
      
      internal function frame62() : *
      {
         this.k();
         parent.player.setCave();
      }
      
      internal function frame63() : *
      {
         this.moveY(10);
      }
      
      internal function frame64() : *
      {
         ++parent.busy;
         this.moveY(20);
      }
      
      internal function frame65() : *
      {
         this.moveY(30);
      }
      
      internal function frame66() : *
      {
         this.moveY(40);
      }
      
      internal function frame67() : *
      {
         this.moveY(50);
      }
      
      internal function frame68() : *
      {
         (parent as Maps).nextMap();
         stop();
         parent.y = parent.oy - 150;
         this.y = this.oy + 150;
      }
      
      internal function frame69() : *
      {
         Maps.autosave();
         parent.y = parent.oy - 150;
         this.y = this.oy + 150;
         this.moveY(50);
      }
      
      internal function frame70() : *
      {
         this.moveY(40);
      }
      
      internal function frame71() : *
      {
         this.moveY(30);
      }
      
      internal function frame72() : *
      {
         --parent.busy;
         this.moveY(20);
      }
      
      internal function frame73() : *
      {
         this.moveY(10);
      }
      
      internal function frame74() : *
      {
         this.k();
         parent.player.setCave();
      }
      
      internal function frame75() : *
      {
         this.moveY(-10);
      }
      
      internal function frame76() : *
      {
         ++parent.busy;
         this.moveY(-20);
      }
      
      internal function frame77() : *
      {
         this.moveY(-30);
      }
      
      internal function frame78() : *
      {
         this.moveY(-40);
      }
      
      internal function frame79() : *
      {
         this.moveY(-50);
      }
      
      internal function frame80() : *
      {
         (parent as Maps).nextMap();
         stop();
         parent.y = parent.oy + 150;
         this.y = this.oy - 150;
      }
      
      internal function frame81() : *
      {
         Maps.autosave();
         parent.y = parent.oy + 150;
         this.y = this.oy - 150;
         this.moveY(-50);
      }
      
      internal function frame82() : *
      {
         this.moveY(-40);
      }
      
      internal function frame83() : *
      {
         this.moveY(-30);
      }
      
      internal function frame84() : *
      {
         --parent.busy;
         this.moveY(-20);
      }
      
      internal function frame85() : *
      {
         this.moveY(-10);
      }
      
      internal function frame86() : *
      {
         this.k();
         parent.player.setCave();
      }
      
      internal function frame88() : *
      {
         ++parent.busy;
      }
      
      internal function frame94() : *
      {
         (parent as Maps).nextMap();
         stop();
      }
      
      internal function frame96() : *
      {
         try
         {
            (parent as Maps).player.dark();
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame99() : *
      {
         Maps.autosave();
      }
      
      internal function frame100() : *
      {
         --parent.busy;
      }
      
      internal function frame104() : *
      {
         this.k();
      }
      
      internal function frame106() : *
      {
         ++parent.busy;
      }
      
      internal function frame112() : *
      {
         (parent as Maps).nextMap();
         stop();
      }
      
      internal function frame117() : *
      {
         Maps.autosave();
      }
      
      internal function frame118() : *
      {
         --parent.busy;
      }
      
      internal function frame122() : *
      {
         this.k();
      }
      
      internal function frame124() : *
      {
         ++parent.busy;
      }
      
      internal function frame140() : *
      {
         (parent as Maps).startBattle(true);
         stop();
      }
      
      internal function frame164() : *
      {
         Maps.instance.parent.teardown();
      }
   }
}

