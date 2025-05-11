// ignore_for_file: public_member_api_docs, sort_constructors_first
class Compte {
  //public 
  late int id;
  late String numero;
  late DateTime dateCreation;
  late double solde; 
    Compte({required  this.id,required this.numero,required this.solde, DateTime? dateCreation})
    :dateCreation=dateCreation??DateTime.now();

      factory Compte.fromMap(Map<String,dynamic> map){
         return Compte(
            id:int.parse(map["id"]) ,
            numero: map["numero"],
           dateCreation: DateTime.parse(map["date"]),
            solde: double.parse(map["solde"] )  
         );
           
      }
    //model⇒map
     Map<String,dynamic> toMap(){
      return  {
         "id": "$id",
         "numero": numero,
         "solde": "$solde",
         "date": dateCreation.toIso8601String()
     };
     }

  @override
  String toString() {
    return 'Compte(id: $id, numero: $numero, dateCreation: $dateCreation, Solde : $solde)';
  }
}
