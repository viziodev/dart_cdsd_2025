main(){
  // Liste d'étudiants avec leurs notes
 List<Map<String, dynamic>> students = [
   {'name': 'Alice', 'age': 20, 'grades': [18, 16, 15, 17], 'classe': 'L2 GLRS'},
   {'name': 'Bob', 'age': 22, 'grades': [12, 13, 11, 14],'classe': 'L2 GLRS'},
   {'name': 'Charlie', 'age': 19, 'grades': [15, 14, 16, 13],'classe': 'L2 MAE'},
   {'name': 'Diana', 'age': 21, 'grades': [17, 18, 19, 16],'classe': 'L2 CDSD'},
   {'name': 'Evan', 'age': 18, 'grades': [10, 11, 9, 12],'classe': 'L2 GLRS'},
 ];
    // 1. Calculer la moyenne de chaque étudiant
     List<Map<String, dynamic>> studentsWithMoyenne=students.map((student){
         List<num> notes=List<num>.from(student['grades']);
           double moyenne=notes.reduce((note1,note2)=>note1+note2)/notes.length;
           return {
            ...student,
            "moyenne":moyenne
           };
       }).toList();
       print("La moyenne de chaque étudiant");
      studentsWithMoyenne.forEach((student){
          print("Name: $student");
     });
    // 2. Filtrer les étudiants qui ont une moyenne >= 15
     var studentsWithMoyenneSupQuinze=  studentsWithMoyenne.where((student)=>student["moyenne"]>=15).toList();
       print("La moyenne superieur a 15");
       studentsWithMoyenneSupQuinze.forEach((student){
          print("Name: $student");
       });
    // 3. Trier les étudiants par moyenne décroissante
         studentsWithMoyenne.sort((student1,student2)=>student1[ "moyenne"].compareTo(student2[ "moyenne"]));
         print("Trier les étudiants par moyenne décroissante");
         studentsWithMoyenne.forEach((student){
          print("Name: $student");
        });
     // 4. Vérifier si tous les étudiants ont au moins une note > 10
     // 5. Trouver l'étudiant avec la meilleure moyenne
     // 6. Calculer la moyenne générale de la classe
 

}