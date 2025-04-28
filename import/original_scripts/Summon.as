package
{
   import flash.utils.*;
   import foes.*;
   import text.*;
   
   public class Summon extends Spell
   {
      public var SP:int = 1;
      
      public var animations:Array = ["intro","flee"];
      
      public var foe:Foe;
      
      public var foeClassName:String = "";
      
      public var fname:String;
      
      public var skin:int;
      
      public var graphicScale:Number = 50;
      
      public var hidePlayers:Boolean = false;
      
      public var equipped:Boolean = false;
      
      public var bestiary:int = -1;
      
      public var nickname:String;
      
      public var premium:Boolean = false;
      
      public var isCounter:Boolean = false;
      
      public var sender:Boolean = false;
      
      public var ignoreBuffs:Boolean = false;
      
      public var SpMC:String;
      
      public var effect:Function;
      
      public var effect2:Function;
      
      public var effect3:Function;
      
      public var effect4:Function;
      
      public function Summon(param1:Object)
      {
         this.SP = param1.SP;
         if(Debug.expoDemo)
         {
            this.SP /= 2;
         }
         this.animations = param1.animations.concat();
         this.hidePlayers = param1.hidePlayers;
         this.fname = param1.foe;
         var _loc2_:Class = getDefinitionByName("foes." + param1.foe);
         this.foe = new _loc2_(1);
         if(param1.effect)
         {
            this.effect = param1.effect;
         }
         if(param1.effect2)
         {
            this.effect2 = param1.effect2;
         }
         if(param1.effect3)
         {
            this.effect3 = param1.effect3;
         }
         if(param1.effect4)
         {
            this.effect4 = param1.effect4;
         }
         super(param1);
         this.SpMC = param1.SpMC;
         this.icon = this.foe.icon;
         this.name = this.foe.fname;
         this.MC = this.foe.graphicType;
         this.skin = this.foe.skin;
         this.graphicScale = this.foe.graphicScale;
         this.foe = null;
         this.foeClassName = param1.foe;
      }
      
      public function updateName() : *
      {
         SetStrings.setSummonName(this,this.foeClassName);
      }
   }
}

