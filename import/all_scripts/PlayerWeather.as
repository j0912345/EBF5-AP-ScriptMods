package
{
   public class PlayerWeather extends Player
   {
      public function PlayerWeather()
      {
         super();
         name = "Weather Player";
         playerNo = 0;
         graphicType = "";
         skin = 0;
         weapon = Equips.empty;
         armor = Equips.empty;
         hat = Equips.empty;
         flair1 = Equips.empty;
         flair2 = Equips.empty;
         flair3 = Equips.empty;
         this.setStats();
         init();
         levelUp();
      }
      
      override public function setStats() : *
      {
         HP = 0;
         attack = 8;
         magicAttack = 8;
         defence = 0;
         magicDefence = 0;
         accuracy = 6;
         evade = 0;
      }
   }
}

