package
{
   import flash.display.MovieClip;
   import text.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol12727")]
   public class DamageNumber extends MovieClip
   {
      public static const DAMAGE:int = 1;
      
      public static const HEAL:int = 2;
      
      public static const CRITICAL:int = 51;
      
      public static const MISS:int = 4;
      
      public static const HEAL_MP:int = 5;
      
      public static const LOSE_MP:int = 6;
      
      public static const SUPER_EFFECTIVE:int = 7;
      
      public static const NOT_EFFECTIVE:int = 8;
      
      public static const DEATH:int = 9;
      
      public static const LIMIT:int = 10;
      
      public static const SP:int = 72;
      
      public static const SCAN:int = 73;
      
      public static const CAUGHT:int = 74;
      
      public static const STEAL:int = 75;
      
      public var style:int = 2;
      
      public var number:int = 999;
      
      public var number2:String = "";
      
      public function DamageNumber(param1:int, param2:int)
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,22,this.frame23,69,this.frame70,120,this.frame121,128,this.frame129,188,this.frame189,222,this.frame223,254,this.frame255);
         this.style = param1;
         this.number = "" + param2;
      }
      
      public static function displayDamage(param1:int, param2:int, param3:Target) : *
      {
         var _loc4_:DamageNumber = null;
         if(param3.damageNumber && param3.damageNumber.parent && param1 != 4 && (param1 < 9 && (param1 != 2 || param1 == param3.damageNumber.style)))
         {
            param3.damageNumber.gotoAndPlay(124);
            param3.damageNumber.number += param2;
            param3.damageNumber.style = param1;
            param2 = param3.damageNumber.number;
         }
         else
         {
            _loc4_ = new DamageNumber(param1,param2);
            Battle.stage.addChild(_loc4_);
            if(param3 == Battle.standbyPlayers[0])
            {
               _loc4_.number2 = "" + SetStrings.getPlayerName((param3 as Player).playerNo - 1) + ":";
               _loc4_.x = -530;
               _loc4_.y = 50;
            }
            else if(param3 == Battle.standbyPlayers[1])
            {
               _loc4_.number2 = "" + SetStrings.getPlayerName((param3 as Player).playerNo - 1) + ":";
               _loc4_.x = -570;
               _loc4_.y = 140;
            }
            else
            {
               _loc4_.x = param3.graphic.getX(4) - 610 + Math.random() * 30;
               _loc4_.y = param3.graphic.getY(4) - 10 + Math.random() * 15;
            }
            if(param3.isPlayer)
            {
               _loc4_.x += 40;
            }
            if(param1 == 4)
            {
               _loc4_.y += 20;
            }
            if(param1 < 9 && param1 != 4)
            {
               param3.damageNumber = _loc4_;
            }
         }
         if(param1 != 2)
         {
            damageMedals(param3,param2);
         }
         if(param1 == 53 && Skills.user.isPlayer)
         {
            Medals.unlock(Medals.criticalCondition);
         }
      }
      
      private static function damageMedals(param1:Target, param2:int) : *
      {
         if(!param1.isPlayer && param1.lastAttacker && param1.lastAttacker.isPlayer && param1.lastAttacker != Weather.weatherPlayer)
         {
            if(param2 > Medals.damage1.value)
            {
               Medals.unlock(Medals.damage1);
            }
            if(param2 > Medals.damage2.value)
            {
               Medals.unlock(Medals.damage2);
            }
            if(param2 > Medals.damage3.value)
            {
               Medals.unlock(Medals.damage3);
            }
            if(param2 > Medals.damage4.value)
            {
               Medals.unlock(Medals.damage4);
            }
            if(param2 > Medals.damage5.value)
            {
               Medals.unlock(Medals.damage5);
            }
            if(param2 > SaveData.maxDamage)
            {
               SaveData.maxDamage = param2;
            }
         }
      }
      
      public static function displayStatus(param1:String, param2:Target) : *
      {
         displayDamage(11 + Status.LIST.indexOf(param1),0,param2);
      }
      
      public static function displayBuff(param1:String, param2:Target, param3:Boolean) : *
      {
         var _loc4_:int = 0;
         if(!param3)
         {
            _loc4_ = 7;
         }
         displayDamage(58 + Buff.BUFFS.indexOf(param1) + _loc4_,0,param2);
      }
      
      internal function frame1() : *
      {
         if(this.style == 4)
         {
            gotoAndPlay("miss");
         }
         else if(this.style == 51)
         {
            gotoAndPlay("crit");
         }
         else if(this.style > 7)
         {
            gotoAndPlay(71);
         }
      }
      
      internal function frame2() : *
      {
         if(this.style == 4)
         {
            gotoAndPlay("miss");
         }
         else if(this.style == 51)
         {
            gotoAndPlay("crit");
         }
         else if(this.style > 7)
         {
            gotoAndPlay(71);
         }
      }
      
      internal function frame23() : *
      {
         if(this.style != 8)
         {
            gotoAndPlay(30);
         }
      }
      
      internal function frame70() : *
      {
         stop();
         parent.removeChild(this);
      }
      
      internal function frame121() : *
      {
         stop();
         parent.removeChild(this);
      }
      
      internal function frame129() : *
      {
         if(this.style != 8)
         {
            gotoAndPlay(140);
         }
      }
      
      internal function frame189() : *
      {
         stop();
         parent.removeChild(this);
      }
      
      internal function frame223() : *
      {
         stop();
         parent.removeChild(this);
      }
      
      internal function frame255() : *
      {
         stop();
         parent.removeChild(this);
      }
   }
}

