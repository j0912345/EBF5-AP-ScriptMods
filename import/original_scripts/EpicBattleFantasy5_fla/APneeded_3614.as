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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol17931")]
   public dynamic class APneeded_3614 extends MovieClip
   {
      public var txt:TextField;
      
      public var txt2:TextField;
      
      public var spell:Spell;
      
      public function APneeded_3614()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         Global.translate(this.txt,"skills18",20);
         this.spell = parent.data;
         if(this.spell.level == this.spell.AP.length && !this.spell.upgradesInto)
         {
            this.visible = false;
         }
         else
         {
            if(this.spell.level == this.spell.AP.length)
            {
               this.spell = this.spell.upgradesInto;
            }
            this.txt2.text = GUI.formatNumber(this.spell.AP[this.spell.level]);
            if(Game.mapMenu.prevPlayer.AP < this.spell.AP[this.spell.level])
            {
               GUI.setTextColor(this.txt,GUI.RED_TINT);
               GUI.setTextColor(this.txt2,GUI.RED_TINT);
            }
            else
            {
               GUI.setTextColor(this.txt,GUI.GREEN_TINT);
               GUI.setTextColor(this.txt2,GUI.GREEN_TINT);
            }
         }
      }
   }
}

