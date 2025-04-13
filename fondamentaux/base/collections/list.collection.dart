main(){
  //Création et initialisation de listes
   List<String> listeVide = [];
   print('Liste vide: $listeVide');
   // Liste avec des valeurs initiales
    List<num> nombres = [1, 2, 3, 4,4, 5.5];
    print('Liste de nombres: $nombres');
      // Liste générée
   // List<int> nombresPairs = List.generate(5, (index) => index * 2);
   List<int> nombresPairs = List.generate(5, (index){
                     return index * 2;
   });
    print('Liste de nombres pairs: $nombresPairs');

  // Liste remplie avec la même valeur
   List<String> repetitions = List.filled(3, 'Dart');
   print('Liste avec répétitions: $repetitions');

   //Accees 
   print('\nPremier élément: ${nombres[0]}');
   print('Dernier élément: ${nombres[nombres.length - 1]}');

// Modification d'un élément
 nombres[2] = 30;
 print('Liste après modification: $nombres');

 // Accès à une plage d'éléments (sublist) [1,4[ ou [1,3]
 List<num> sousListe = nombres.sublist(1, 4);
 print('Sous-liste (index 1 à 3): $sousListe');

 //Operations sur les list
 // Ajouter des éléments
 nombres.add(6);
 print('\nAprès ajout de 6: $nombres');
  // Ajouter plusieurs éléments
 nombres.addAll([7, 8, 9]);
 print('Après ajout multiple: $nombres');
  // Insérer à une position spécifique
  nombres.insert(2, 25);
 print('Après insertion à l\'index 2: $nombres');
  // Supprimer des éléments
 nombres.remove(30);
 print('Après suppression de 30: $nombres');
  // Supprimer à une position spécifique
 nombres.removeAt(0);
 print('Après suppression à l\'index 0: $nombres');
  // Supprimer les éléments qui répondent à une condition
 nombres.removeWhere((nombre) => nombre > 7);
 print('Après suppression des nombres > 7: $nombres');
  // Vider la liste
 List<int> autreNombres = [1, 2, 3];
 autreNombres.clear();
 print('Après clear(): $autreNombres');

//Copie
  List<int> original = [1, 2, 3];
  // Copie par référence (modifie l'original)
  List<int> copieReference = original;
  copieReference.add(4);
  // Copie par valeur (ne modifie pas l'original)
  List<int> copieValeur = List.from(original);
 copieValeur.add(5);
  print('\nOriginal après modifications: $original');
 print('Copie par valeur: $copieValeur');
 //spread operator[...liste] 
  List<int> copieValeurBis = [...original];


}