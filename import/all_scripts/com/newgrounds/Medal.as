package com.newgrounds
{
   import com.newgrounds.assets.DefaultMedalIcon;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class Medal extends APIEventDispatcher
   {
      public static const ICON_WIDTH:uint = 50;
      
      public static const ICON_HEIGHT:uint = 50;
      
      public static const DIFFICULTY_EASY:String = "Easy";
      
      public static const DIFFICULTY_MODERATE:String = "Moderate";
      
      public static const DIFFICULTY_CHALLENGING:String = "Challenging";
      
      public static const DIFFICULTY_DIFFICULT:String = "Difficult";
      
      public static const DIFFICULTY_BRUTAL:String = "Brutal";
      
      private static const DIFFICULTIES:Array = ["Unknown",DIFFICULTY_EASY,DIFFICULTY_MODERATE,DIFFICULTY_CHALLENGING,DIFFICULTY_DIFFICULT,DIFFICULTY_BRUTAL];
      
      public static const DEFAULT_ICON:BitmapData = new DefaultMedalIcon(ICON_WIDTH,ICON_HEIGHT);
      
      private var _connection:APIConnection;
      
      private var _name:String;
      
      private var _id:uint;
      
      private var _description:String;
      
      private var _secret:Boolean;
      
      private var _value:uint;
      
      private var _unlocked:Boolean;
      
      private var _difficulty:String;
      
      private var _iconLoader:BitmapLoader;
      
      public function Medal(param1:APIConnection, param2:uint, param3:String, param4:String, param5:Boolean, param6:Boolean, param7:uint, param8:uint, param9:String)
      {
         super();
         this._connection = param1;
         this._id = param2;
         this._name = param3;
         this._description = param4;
         this._secret = param5;
         this._unlocked = param6;
         this._value = param7;
         this._difficulty = DIFFICULTIES[param8];
         this._iconLoader = new BitmapLoader(DEFAULT_ICON,param9);
         this._iconLoader.load();
      }
      
      public function get difficulty() : String
      {
         return this._difficulty;
      }
      
      public function get icon() : BitmapData
      {
         return this._iconLoader.bitmapData;
      }
      
      public function get id() : uint
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function get secret() : Boolean
      {
         return this._secret;
      }
      
      public function get unlocked() : Boolean
      {
         return this._unlocked;
      }
      
      public function get value() : uint
      {
         return this._value;
      }
      
      override public function toString() : String
      {
         return "Medal: " + this._name + "\t\t(" + (this._unlocked ? "unlocked, " : "locked, ") + this._value + "pts, " + this._difficulty + ")";
      }
      
      public function attachIcon(param1:DisplayObjectContainer) : Sprite
      {
         return this._iconLoader.attachBitmap(param1);
      }
      
      public function unlock() : void
      {
         if(this._unlocked)
         {
            Logger.logWarning("Medal \"" + this._name + "\" is already unlocked.");
            return;
         }
         Logger.logMessage("Unlocking medal \"" + this.name + "\"...");
         this._unlocked = true;
         if(this._connection.hasUserSession)
         {
            this._connection.sendSimpleCommand("unlockMedal",this.onUnlockConfirmed,null,{"medal_id":this.id});
         }
         dispatchEvent(new APIEvent(APIEvent.MEDAL_UNLOCKED,this));
      }
      
      internal function setUnlocked(param1:Boolean) : void
      {
         this._unlocked = param1;
      }
      
      private function onUnlockConfirmed(param1:APIEvent) : void
      {
         if(param1.success)
         {
            Logger.logMessage("Medal \"" + this.name + "\" unlocked.");
         }
         else
         {
            Logger.logError("Failed to unlock \"" + this.name + "\"!");
         }
         dispatchEvent(new APIEvent(APIEvent.MEDAL_UNLOCK_CONFIRMED,this,param1.error));
      }
   }
}

