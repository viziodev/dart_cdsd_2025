main(){
  
  // Liste d'étudiants avec leurs notes
 List<Map<String, dynamic>> students = [
      {'name': 'Wane Baila ', 'age': 19, 'notes': [18, 16, 15, 17],"classe":"M2CDSD"},
      {'name': 'Kane Astou', 'age': 10, 'notes': [18, 16, 5, 17],"classe":"M2CDSD"},
 ];

   // Liste des noms etudiants ==> list.map(val=> critere)
  List<String> studentNames =students.map((student)=> student['name'] as String).toList();
  print('Noms des étudiants: $studentNames');

  // Exemple: Filtrer les étudiants mineurs
 //List<Map<String, dynamic>> minorStudents = students.where((student) => student['age'] < 20).toList();
 //List<String> studentMinorNames =minorStudents.map((s) => s['name'] as String).toList()

 List<String> studentMinorNames =students
                                 .where((student) => student['age'] < 20).toList()
                                 .map((s) => s['name'] as String).toList();
 print('Étudiants mineurs: ${studentMinorNames}');

 // Exemple: Calculer l'âge total des étudiants
 //List<int> studentAges =students.map((student)=> student['age'] as int).toList();
 //int totalAge=studentAges.reduce((a,b)=>a+b);
 int totalAge=students
            .map((student)=> student['age'] as int).toList()
            .reduce((a,b)=>a+b);
 print('Âge total des étudiants: $totalAge ans');

 // Exemple: Vérifier si tous les étudiants ont plus de 18 ans
 bool allAdults = students.every((student) => student['age'] >= 18);
 print('Tous les étudiants sont majeurs: $allAdults');

 // Exemple: Vérifier si au moins un étudiant a plus de 21 ans
 bool hasOlderStudent = students.any((student) => student['age'] > 21);
 print('Au moins un étudiant a plus de 21 ans: $hasOlderStudent');

 // Exemple: Trouver le premier étudiant qui a 20 ans ou plus
  Map<String, dynamic> firstAdult = students.firstWhere(
    (student) => student['age'] >= 20,
     orElse: () => {'name': 'Inconnu', 'age': 0, 'grades': []}
  );

    print('Noms de Etudiant: $firstAdult');





}