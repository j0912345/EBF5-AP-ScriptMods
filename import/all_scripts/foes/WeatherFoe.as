package foes
{
   public class WeatherFoe extends Foe
   {
      public function WeatherFoe(param1:int, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         attack = 4;
         magicAttack = 4;
         accuracy = 4;
         this.level = param1;
         levelUp();
         isHard = Options.difficulty == Options.EPIC || Options.difficulty == Options.HARD || Global.endlessBattle;
      }
   }
}

