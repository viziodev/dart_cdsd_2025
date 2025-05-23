// ignore_for_file: public_member_api_docs, sort_constructors_first
class Compte {
  //public 
  late int id;
  late String numero;
  late DateTime dateCreation;
  late double _montant; 

  /*  Compte(int id,String numero,[DateTime? dateCreation,double montant=0]){
         this.id=id;
         this.dateCreation=dateCreation??DateTime.now();
         this._montant=montant;
    }


  Compte({required int id,required String numero,DateTime? dateCreation,double montant=0}){
         this.id=id;
         this.dateCreation=dateCreation??DateTime.now();
         this._montant=montant;
    }

 */

    Compte({required  this.id,required this.numero,DateTime? dateCreation,double montant=0})
    :dateCreation=dateCreation??DateTime.now(),
     _montant=montant;

    //Factory Constructeur  Objet Convertit Model 
       // map⇒model
      factory Compte.fromMap(Map<String,dynamic> map){
         return Compte(
           id:int.parse(map["id"]) ,
           numero: map["numero"],
           dateCreation: DateTime.parse(map["date"]),
            montant: double.parse(map["montant"] )  
         );
           
      }
    //model⇒map
     Map<String,dynamic> toMap(){
      return  {
         "id": "$id",
         "numero": numero,
         "montant": "$_montant",
         "date": dateCreation.toIso8601String()
     };
     }

  @override
  String toString() {
    return 'Compte(id: $id, numero: $numero, dateCreation: $dateCreation, _montant: $_montant)';
  }
}
