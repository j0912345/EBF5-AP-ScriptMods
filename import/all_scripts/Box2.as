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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8214")]
   public dynamic class Box2 extends SpellMC
   {
      public function Box2()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6,7,this.frame8,10,this.frame11,29,this.frame30,33,this.frame34,65,this.frame66,99,this.frame100,130,this.frame131,140,this.frame141,162,this.frame163,171,this.frame172,178,this.frame179,180,this.frame181,181,this.frame182,194,this.frame195,197,this.frame198,199,this.frame200);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,5);
      }
      
      internal function frame6() : *
      {
         Battle.selectedTarget.graphic.visible = false;
         Battle.selectedTarget.statusDisplay.visible = false;
      }
      
      internal function frame8() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame11() : *
      {
         Catching.getCatchScore();
      }
      
      internal function frame30() : *
      {
         Catching.earlyCatch(this);
      }
      
      internal function frame34() : *
      {
         Catching.wiggle(this);
      }
      
      internal function frame66() : *
      {
         Catching.wiggle(this);
      }
      
      internal function frame100() : *
      {
         Catching.wiggle(this);
      }
      
      internal function frame131() : *
      {
         Catching.wiggle(this);
      }
      
      internal function frame141() : *
      {
         Catching.catchFoe();
      }
      
      internal function frame163() : *
      {
         Battle.selectedTarget.graphic.dropItems();
      }
      
      internal function frame172() : *
      {
         Catching.openDialogue();
      }
      
      internal function frame179() : *
      {
         k();
      }
      
      internal function frame181() : *
      {
         Battle.selectedTarget.graphic.visible = true;
         Battle.selectedTarget.unfreeze();
         Battle.selectedTarget.graphic.animate("evade");
         Battle.selectedTarget.graphic.dirtyStatus = true;
      }
      
      internal function frame182() : *
      {
         Battle.shake("tiny");
      }
      
      internal function frame195() : *
      {
         Text.catching();
      }
      
      internal function frame198() : *
      {
         Catching.makeTired();
      }
      
      internal function frame200() : *
      {
         k();
      }
   }
}

