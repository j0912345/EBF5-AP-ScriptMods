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
   import foes.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol18653")]
   public dynamic class gridfoe_1210 extends MovieClip
   {
      public var holder:MovieClip;
      
      public var jumper:MovieClip;
      
      public var X:int;
      
      public var Y:int;
      
      public var state:int;
      
      public var i:MovieClip;
      
      public function gridfoe_1210()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,4,this.frame5,15,this.frame16,20,this.frame21,21,this.frame22,37,this.frame38,39,this.frame40,40,this.frame41,48,this.frame49,56,this.frame57);
      }
      
      public function setFoe() : *
      {
         Maps.instance.addTile(33,x,y - 15);
         Maps.instance.addObject({
            "mc":this.name,
            "type":Maps.FOE
         });
      }
      
      public function jumpOut() : *
      {
         if(this.i)
         {
            Maps.instance.path = [];
            Maps.instance.moveMap = "";
            gotoAndPlay(Maps.foeJumps[name.substring(3)]);
         }
      }
      
      internal function frame1() : *
      {
         if(Debug.mappingMode2)
         {
            visible = false;
            stop();
         }
      }
      
      internal function frame2() : *
      {
         stop();
         try
         {
            this.X = x / 50;
            this.Y = y / 40;
            if(!Maps.foeData[MapData.mapNo])
            {
               Maps.foeData[MapData.mapNo] = [];
            }
            if(Maps.foeData[MapData.mapNo][name.substring(3)] == 2 || Maps.foeData[MapData.mapNo][name.substring(3)] == 3)
            {
               Maps.instance.addTile(0,x,y - 15);
            }
            else
            {
               this.i = new FoeIcon(Options.altFoes && Boolean(MapData.battleIconsAlt) ? MapData.battleIconsAlt[name.substring(3)] : MapData.battleIcons[name.substring(3)]);
               this.holder.addChild(this.i);
               this.i.scaleX *= 1.1;
               this.i.scaleY *= 1.1;
               if(Maps.foeJumps[name.substring(3)])
               {
                  if(this.i.mc.shadow)
                  {
                     this.i.mc.shadow.visible = false;
                  }
                  this.i.mc.stop();
                  this.holder.visible = false;
                  this.jumper.play();
               }
               else
               {
                  this.jumper.stop();
               }
               if(!Maps.foeJumps[name.substring(3)])
               {
                  this.setFoe();
               }
               this.y -= 10;
            }
            this.holder.gotoAndStop(2);
            g.visible = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function frame5() : *
      {
         this.holder.visible = true;
         this.i.mc.gotoAndStop(1);
         this.setFoe();
      }
      
      internal function frame16() : *
      {
         this.i.mc.gotoAndPlay(1);
         if(this.i.mc.shadow)
         {
            this.i.mc.shadow.visible = true;
         }
      }
      
      internal function frame21() : *
      {
         stop();
      }
      
      internal function frame22() : *
      {
         this.holder.visible = true;
         this.i.mc.gotoAndStop(1);
         this.setFoe();
      }
      
      internal function frame38() : *
      {
         this.i.mc.gotoAndPlay(1);
         if(this.i.mc.shadow)
         {
            this.i.mc.shadow.visible = true;
         }
      }
      
      internal function frame40() : *
      {
         stop();
      }
      
      internal function frame41() : *
      {
         this.holder.visible = true;
         this.i.mc.gotoAndStop(1);
         this.setFoe();
      }
      
      internal function frame49() : *
      {
         this.i.mc.gotoAndPlay(1);
         if(this.i.mc.shadow)
         {
            this.i.mc.shadow.visible = true;
         }
      }
      
      internal function frame57() : *
      {
         stop();
      }
   }
}

