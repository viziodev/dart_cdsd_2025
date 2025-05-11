// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_compte/models/transaction.dart';

class Compte {
  //public 
  late int id;
  late String numero;
  late DateTime dateCreation;
  late double solde; 
  final List<Transaction> transactions;
    Compte({required  this.id,required this.numero,required this.solde, DateTime? dateCreation,List<Transaction>? transactions })
    :dateCreation=dateCreation??DateTime.now(),
     transactions=transactions??[];

      factory Compte.fromMap(Map<String,dynamic> map){
         List<Transaction> transactionsMap=[];
         if (map["transactions"]!=null) {
          transactionsMap= (map["transactions"] as List )
                        .map((transaction) => Transaction.fromMap(transaction))
                       .toList();
         }
         return Compte(
            id:int.parse(map["id"]) ,
            numero: map["numero"],
            dateCreation: DateTime.parse(map["dateCreation"]),
            solde: double.parse(map["solde"].toString()) ,
            transactions: transactionsMap
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
