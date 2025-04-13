void main() {
/*
Type Primitifs  Statiques
   Types numériques (int, double)
   Chaînes de caractères (String)
   Booléens (bool)
   */
// 1-Types numériques
   int age = 25;
   double height = 1.75;
   // num peut être int ou double
   num weight = 70.5; 
   print ("La somme ${age+height} ");

    // Chaînes de caractères
      String name = "John Doe";
      String multiline = '''
          Ceci est une chaîne
         sur plusieurs lignes
      ''';

    // Interpolation de chaînes
     String presentation = 'Je m\'appelle $name, j\'ai $age ans et je mesure $height m';

      // Booléens
    bool isStudent = true;

/*Type dynamique (dynamic, var)  */
     var dynamicVar = 'Ceci est une chaîne';
         //dynamicVar = 42; // Erreur: var fixe le type à la première assignation
     dynamic trulyDynamic = 'Une chaîne';
            trulyDynamic=42;
    


/*Constantes (const, final)*/
   // Constantes
      final currentDate = DateTime.now(); // Valeur fixée à l'exécution
      //currentDate = DateTime.now(); // Erreur: ne peut pas être réassigné
       const pi = 3.14159; // Valeur fixée à la compilation
   // const today = DateTime.now(); // Erreur: nécessite une valeur constante à la compilation

  /* if (isStudent) {
      print("Etudiant");
     } else {
         print("Pas Etudiant");
     }*/
    print(isStudent?"Etudiant":"Pas Etudiant");

   //type?  ==>type est nullable
    int? x=null;
    int y;
    if (x!=null) {
         y=x;
     }else{
          y=0;
    }
   int z=x??0;
}