import './classe.dart';
class SpecializedStudent extends Student {
 String specialization;
 // Constructeur qui appelle le constructeur parent
 SpecializedStudent( {required String name, required int age, required List<int> grades, required this.specialization}):super(name,age,grades);
 // Surcharge de méthode
 @override
 String toString() {
   return '$name ($specialization): $average';
 }
 @override
  String getName(){
    return "";
  }
   @override
  int getAge(){
   return 0;
  }
}
main(){
    // Création d'un étudiant avec le constructeur standard
   /* Student newStudent = new  Student(
        'Frank',
        20,
        [14, 15, 16]
        );
      print('\nNouvel étudiant : $newStudent');
      */

  // Création d'un étudiant spécialisé
  SpecializedStudent specializedStudent = SpecializedStudent(
       name: 'Hannah', age:21, grades:[16, 17, 18],specialization: 'Informatique'
  );
 print('\nÉtudiant spécialisé : $specializedStudent');
}
