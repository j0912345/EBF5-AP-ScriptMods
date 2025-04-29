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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol17928")]
   public dynamic class equippablebytooltip_3612 extends MovieClip
   {
      public var i1:MovieClip;
      
      public var i2:MovieClip;
      
      public var i3:MovieClip;
      
      public var i4:MovieClip;
      
      public var i5:MovieClip;
      
      public var txt:TextField;
      
      public var spell:Spell;
      
      public var i:int;
      
      public function equippablebytooltip_3612()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         Global.translate(this.txt,"skills17",20);
         this.spell = parent.data;
         if(this.spell.animation.length == 1)
         {
            this.visible = false;
            parent.APcost.y -= 45;
         }
         else
         {
            this.i = 0;
            while(this.i < 5)
            {
               this["i" + (this.i + 1)].gotoAndStop(this.i + 2);
               if(Options.learnAllSkills && Boolean(this.spell.animation2[this.i]))
               {
                  this["i" + (this.i + 1)].visible = true;
               }
               else if(this.spell.animation[this.i])
               {
                  this["i" + (this.i + 1)].visible = true;
               }
               else
               {
                  this["i" + (this.i + 1)].visible = false;
               }
               ++this.i;
            }
         }
      }
   }
}

