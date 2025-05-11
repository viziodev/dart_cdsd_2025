main(){
   // Map vide
   Map<String, int> mapVide = {};
  print('Map vide: $mapVide');
 // Map avec des valeurs initiales
  Map<String, double> notes = {
   'Alice': 16.5,
   'Bob': 12.5,
   'Charlie': 14.5,
   'Astou': 14.5,
 };
 print('Map de notes: $notes');
 // Création avec Map constructor
 Map<String, String> numerosEtudiants =  Map<String, String>();
 numerosEtudiants["nom1"] = 'Alice';
 numerosEtudiants["nom2"] = 'Bob';
 numerosEtudiants["nom3"] = 'Charlie';
 print('Map de numéros d\'étudiants: $numerosEtudiants');

}