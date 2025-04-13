 abstract class Student {
 // Propriétés
  String name;
  int age;
  List<int> grades;
  double? _average; // Propriété privée pour la moyenne et nullable 
//Methode abstract
 String getName();
 int getAge();

//Constructeurs (standard, nommés, factory)
// Constructeurs Standard
   Student(this.name, this.age, this.grades);
 /*Student(String name,int age, List<int> grades){
    this.name=name;
    this.age=age;
    this.grades=grades;
 }*/
   // Student({required this.name, required this.age, required this.grades});
  // Constructeurs nommés
   Student.withoutGrades(this.name, this.age) : grades = [];
   // Constructeurs Factory
   /*  factory Student.fromMap(Map<String, dynamic> map) {
      return Student(
       map['name'],
       map['age'],
       List<int>.from(map['grades']),
     );
   }*/

  // Méthode pour calculer la moyenne
 double calculateAverage() {
   if (grades.isEmpty) return 0;
   int sum = grades.reduce((a, b) => a + b);
   return double.parse((sum / grades.length).toStringAsFixed(2));
 }

 // Méthode pour ajouter une note
 void addGrade(int grade) {
    grades.add(grade);
    _average = null; // Réinitialiser la moyenne
 }

 // Méthode toString pour l'affichage
 @override
 String toString() {
   return '$name: $average';
 }

 // Méthode pour convertir en Map
 //Front vers le Back
 Map<String, dynamic> toMap() {
   return {
     'name': name,
     'age': age,
     'grades': grades,
     'average': average,
   };
 }

 // Getter pour calculer la moyenne (encapsulation)
 double? get average {
  _average=_average==null? calculateAverage():_average!;
   return _average;
 }





}
 /* 
main(){
    // Création d'un étudiant avec le constructeur standard
    Student newStudent =  Student(
        name:'Frank',
        age:20,
        grades:[14, 15, 16]
        );
      print('\nNouvel étudiant : $newStudent');

      Student emptyGradesStudent = Student.withoutGrades('Grace', 19);
       print('\nNouvel étudiant : $emptyGradesStudent');
      
}

 */
