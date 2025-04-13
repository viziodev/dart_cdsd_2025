main(){
   
  // Set vide
   Set<int> ensembleVide = {};
    print('Set vide: $ensembleVide');
  // Set avec des valeurs initiales
   Set<String> fruits = {'pomme', 'banane', 'orange', 'pomme'};
   print('Set de fruits: $fruits'); // Notez que 'pomme' n'apparaît

// Création à partir d'une liste (élimine les doublons)
 List<int> listeNombres = [1, 2, 3, 2, 1, 4, 5, 4];
 Set<int> ensembleNombres = Set.from(listeNombres);
 print('Liste avec doublons: $listeNombres');
 print('Set sans doublons: $ensembleNombres');

 
}