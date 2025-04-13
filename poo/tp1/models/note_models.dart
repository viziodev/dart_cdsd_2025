class Note{
  String matiere;
  num value;
  Note({required this.matiere,required this.value});
 @override
   String toString() => "Matiere: $matiere Valeur :$value";
   //toMap ==> Objet vers Map
    Map<String, dynamic> toMap(){
     return{
      "matiere":matiere,
      "value":value
    }
  }
  //factory formMap ==> Map vers Objet

}