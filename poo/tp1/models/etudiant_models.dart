import "./personne_model.dart";

class Etudiant extends Personne{
  List<Note> notes;
  Etudiant({required String id, required String name,required int  age,this.notes}):super(id,name,age);
   @override
  Map<String, dynamic> toMap(){
   return{
    "id":id,
    "name":name,
    "age":age,
    "notes":notes.map((note)=>note.toMap()).toList(),
   }
  }

}
