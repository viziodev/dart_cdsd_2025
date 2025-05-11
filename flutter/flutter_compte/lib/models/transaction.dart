import 'dart:convert';

import 'package:flutter_compte/models/type_transaction.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Transaction {
    int? id;
    String? numero;
    final DateTime? date;
    final double montant; 
    TypeTransaction? type;
  Transaction({
       required this.montant,
       int? id,
       TypeTransaction? type,
       String?  numero,
       DateTime? date,
     
  }):date=DateTime.now(),
     id=DateTime.now().microsecondsSinceEpoch, 
     numero="TRANS_NUM_$id";
    
 

  @override
  String toString() {
    return 'Transaction(id: $id, numero: $numero, date: $date, montant: $montant)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'numero': numero,
      'date': date?.millisecondsSinceEpoch,
      'montant': montant,
      'type': type!.value,//Depot , Retrait 
    };
  }

  factory Transaction.fromMap(Map<String, dynamic> map) {
      print(TypeTransaction.getEnumByValue(map["type"].toString()));
      return Transaction(
      id:int.parse(map["id"]) ,
      numero: map['numero'],
      date:  DateTime.parse(map["date"]),
      montant: double.parse(map["montant"].toString()) ,
      type:TypeTransaction.getEnumByValue(map["type"].toString())!
    );
  }

  String toJson() => json.encode(toMap());
  factory Transaction.fromJson(String source) => Transaction.fromMap(json.decode(source) as Map<String, dynamic>);
}
