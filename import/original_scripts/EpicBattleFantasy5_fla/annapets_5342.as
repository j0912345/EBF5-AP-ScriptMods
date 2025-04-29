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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12378")]
   public dynamic class annapets_5342 extends MovieClip
   {
      public var beast:MovieClip;
      
      public var cloud:MovieClip;
      
      public var cube:MovieClip;
      
      public var drone:MovieClip;
      
      public var egg:MovieClip;
      
      public var fairy:MovieClip;
      
      public var fish:MovieClip;
      
      public var fly:MovieClip;
      
      public var penguin:MovieClip;
      
      public var rock:MovieClip;
      
      public var tetris:MovieClip;
      
      public function annapets_5342()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         this.fairy.visible = false;
         this.fairy.stop();
         this.drone.visible = false;
         this.drone.stop();
         this.fly.visible = false;
         this.fly.stop();
         this.cloud.visible = false;
         this.cloud.stop();
         this.fish.visible = false;
         this.fish.stop();
         this.penguin.visible = false;
         this.penguin.stop();
         this.cube.visible = false;
         this.cube.stop();
         this.tetris.visible = false;
         this.tetris.stop();
         this.rock.visible = false;
         this.rock.stop();
         this.egg.visible = false;
         this.egg.stop();
         this.beast.visible = false;
         this.beast.stop();
         if(!parent.zombieMode)
         {
            if(Players.hasItem(50,4))
            {
               this.cube.visible = true;
               this.cube.play();
            }
            if(Players.hasItem(51,4))
            {
               this.egg.visible = true;
               this.egg.play();
            }
            if(Players.hasItem(52,4))
            {
               this.tetris.visible = true;
               this.tetris.play();
            }
            if(Players.hasItem(53,4))
            {
               this.beast.visible = true;
               this.beast.play();
            }
            if(Players.hasItem(54,4))
            {
               this.rock.visible = true;
               this.rock.play();
            }
            if(Players.hasItem(55,4))
            {
               this.penguin.visible = true;
               this.penguin.play();
            }
            if(Players.hasItem(20,4))
            {
               this.fairy.visible = true;
               this.fairy.play();
            }
            if(Players.hasItem(21,4))
            {
               this.cloud.visible = true;
               this.cloud.play();
            }
            if(Players.hasItem(22,4))
            {
               this.fly.visible = true;
               this.fly.play();
            }
            if(Players.hasItem(23,4))
            {
               this.drone.visible = true;
               this.drone.play();
            }
            if(Players.hasItem(41,4))
            {
               this.fish.visible = true;
               this.fish.play();
            }
         }
      }
   }
}

