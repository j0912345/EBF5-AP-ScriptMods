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
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4806")]
   public dynamic class skillsMenu extends MovieClip
   {
      public var ap:TextField;
      
      public var apt:TextField;
      
      public var backb:SimpleButton;
      
      public var display1:MovieClip;
      
      public var display2:MovieClip;
      
      public var forget:MovieClip;
      
      public var learn:MovieClip;
      
      public var pointer:MovieClip;
      
      public var splitter:MovieClip;
      
      public var tip1:MovieClip;
      
      public var tip2:MovieClip;
      
      public var tip3:MovieClip;
      
      public var tip4:MovieClip;
      
      public var txt1:TextField;
      
      public var txt2:TextField;
      
      public var txt3:TextField;
      
      public var txt4:TextField;
      
      public var txt5:TextField;
      
      public var txt6:TextField;
      
      public var txtb:TextField;
      
      public var i:int;
      
      public function skillsMenu()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
      }
      
      internal function frame1() : *
      {
         Global.translate(this.txt1,"skills1",10);
         Global.translate(this.txt2,"skills2",15);
         Global.translate(this.txt3,"skills3",15);
         Global.translate(this.txt4,"skills4",15);
         Global.translate(this.txt5,"skills5",15);
         Global.translate(this.apt,"AP",0,":");
         stop();
         this.i = 1;
         while(this.i <= 4)
         {
            this["tip" + this.i].tip = {"text":SetStrings.getString("menus","skilltip" + this.i)};
            this["tip" + this.i].flip = true;
            ++this.i;
         }
         GUI.setTextColor(this.txt2);
         GUI.setTextColor(this.txt3);
         GUI.setTextColor(this.txt4);
         GUI.setTextColor(this.txt5);
      }
      
      internal function frame2() : *
      {
         Global.translate(this.txt1,"skills6");
         Global.translate(this.txtb,"back");
         Global.translate(this.apt,"AP",0,":");
      }
      
      internal function frame3() : *
      {
         Global.translate(this.txt1,"skills8");
         Global.translate(this.txt4,"skills11");
         Global.translate(this.txtb,"back");
         Global.translate(this.apt,"AP",0,":");
         GUI.setTextColor(this.txt4);
      }
      
      internal function frame4() : *
      {
         Global.translate(this.txt1,"skills13");
         Global.translate(this.txt4,"skills11");
         Global.translate(this.txtb,"back");
         Global.translate(this.apt,"AP",0,":");
         GUI.setTextColor(this.txt4);
      }
   }
}

