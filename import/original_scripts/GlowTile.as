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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18844")]
   public dynamic class GlowTile extends MovieClip
   {
      public var state:Boolean;
      
      public var done:Boolean;
      
      public var X:int;
      
      public var Y:int;
      
      public function GlowTile()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,9,this.frame10,17,this.frame18,26,this.frame27);
      }
      
      public function fail() : *
      {
         this.state = false;
      }
      
      public function activate() : *
      {
         var _loc1_:Object = null;
         var _loc2_:Boolean = false;
         if(this.done || !Maps.touchedPlainTile || Maps.puzzleTemp == this)
         {
            return;
         }
         if(this.state)
         {
            Maps.touchedPlainTile = false;
            Maps.playSound("puzzlefail");
            this.fail();
            for each(_loc1_ in parent.objectData)
            {
               if(_loc1_.ref is GlowTile)
               {
                  if(_loc1_.ref.state)
                  {
                     _loc1_.ref.gotoAndPlay("bad");
                  }
                  else
                  {
                     _loc1_.ref.gotoAndStop("bad2");
                  }
                  _loc1_.ref.fail();
               }
            }
         }
         else
         {
            gotoAndPlay("good");
            Maps.puzzleTemp = this;
            this.state = true;
            _loc2_ = true;
            for each(_loc1_ in parent.objectData)
            {
               if(_loc1_.ref is GlowTile && !_loc1_.ref.state)
               {
                  _loc2_ = false;
               }
            }
            if(_loc2_)
            {
               for each(_loc1_ in parent.objectData)
               {
                  if(_loc1_.ref is GlowTile)
                  {
                     _loc1_.ref.gotoAndPlay("done");
                     _loc1_.ref.done = true;
                  }
               }
               parent.success();
               Maps.playSound("puzzlewin");
               Maps.puzzleData[MapData.mapNo] = true;
            }
         }
      }
      
      internal function frame1() : *
      {
         (parent as Maps).addTile(44,x + 25,y + 20);
         this.state = false;
         this.done = false;
         if(Maps.puzzleData[MapData.mapNo])
         {
            gotoAndStop("done2");
         }
      }
      
      internal function frame2() : *
      {
         stop();
         this.X = (x + 25) / 50;
         this.Y = (y + 20) / 40;
         parent.addObject({
            "ref":this,
            "type":Maps.GLOW_TILE
         });
      }
      
      internal function frame10() : *
      {
         stop();
      }
      
      internal function frame18() : *
      {
         stop();
      }
      
      internal function frame27() : *
      {
         stop();
      }
   }
}

