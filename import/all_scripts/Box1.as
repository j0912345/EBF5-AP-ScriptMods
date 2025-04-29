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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol8218")]
   public dynamic class Box1 extends SpellMC
   {
      public function Box1()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,10,this.frame11,11,this.frame12,33,this.frame34,65,this.frame66,99,this.frame100,130,this.frame131,139,this.frame140,162,this.frame163,170,this.frame171,178,this.frame179,180,this.frame181,192,this.frame193,197,this.frame198,199,this.frame200);
      }
      
      internal function frame1() : *
      {
         init(Target.ONE_ENEMY,5);
      }
      
      internal function frame7() : *
      {
         Battle.selectedTarget.graphic.visible = false;
         Battle.selectedTarget.statusDisplay.visible = false;
      }
      
      internal function frame11() : *
      {
         Catching.getCatchScore();
      }
      
      internal function frame12() : *
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
      
      internal function frame140() : *
      {
         Catching.catchFoe();
      }
      
      internal function frame163() : *
      {
         Battle.selectedTarget.graphic.dropItems();
      }
      
      internal function frame171() : *
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
      
      internal function frame193() : *
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

