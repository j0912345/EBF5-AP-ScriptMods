package foes
{
   public class HandWeapons
   {
      public static var sword:Object = {
         "skin":1,
         "damage":1.2,
         "attacks":[1,2,3],
         "accuracy":105,
         "element":Element.NONE,
         "elementDegree":0,
         "statusEffect":Status.BAD_LUCK,
         "statusDegree":3,
         "statusChance":33
      };
      
      public static var knife:Object = {
         "skin":2,
         "damage":0.9,
         "attacks":[1,2,3],
         "accuracy":150,
         "element":Element.WIND,
         "elementDegree":50,
         "statusEffect":Status.DISPEL,
         "statusDegree":1,
         "statusChance":20
      };
      
      public static var mallet:Object = {
         "skin":3,
         "damage":1.4,
         "attacks":[1,3],
         "accuracy":85,
         "element":Element.NONE,
         "elementDegree":0,
         "statusEffect":Status.STAGGER,
         "statusDegree":1,
         "statusChance":20
      };
      
      public static var evilAxe:Object = {
         "skin":4,
         "damage":1.3,
         "attacks":[2,3],
         "accuracy":95,
         "element":Element.DARK,
         "elementDegree":50,
         "statusEffect":Status.CURSE,
         "statusDegree":3,
         "statusChance":33
      };
      
      public static var magmaSword:Object = {
         "skin":5,
         "damage":0.9,
         "attacks":[1,2,3],
         "accuracy":100,
         "element":Element.FIRE,
         "elementDegree":50,
         "statusEffect":Status.BURN,
         "statusDegree":2,
         "statusChance":66
      };
      
      public static var iceSword:Object = {
         "skin":6,
         "damage":1,
         "attacks":[1,2,3],
         "accuracy":100,
         "element":Element.ICE,
         "elementDegree":50,
         "statusEffect":Status.CHILL,
         "statusDegree":2,
         "statusChance":33
      };
      
      public function HandWeapons()
      {
         super();
      }
   }
}

