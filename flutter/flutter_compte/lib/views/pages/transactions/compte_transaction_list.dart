import 'package:flutter/material.dart';
import 'package:flutter_compte/models/compte.dart';
import 'package:flutter_compte/models/transaction.dart';
import 'package:flutter_compte/models/type_transaction.dart';
import 'package:flutter_compte/views/layout/layout.dart';
import 'package:flutter_compte/views/pages/compte/widgets/compte_item.dart';
import 'package:flutter_compte/views/pages/transactions/transaction_form.dart';
import 'package:flutter_compte/views/pages/transactions/widgets/transaction_item.dart';

class TransactionCompteList extends StatefulWidget {
  const TransactionCompteList({super.key});

  @override
  State<TransactionCompteList> createState() => _TransactionCompteListState();
}

class _TransactionCompteListState extends State<TransactionCompteList> {
 
  @override
  void initState() {
    // TODO: implement initState
     super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final arguments=ModalRoute.of(context)!.settings.arguments as Map<String,dynamic> ; 
    final compte=arguments["compte"] as Compte;
    return LayoutScreen(
      title: "Liste des Transactions",
      contentPage: Column(
              children:[
                     CompteItem(compte: compte,),
                      const SizedBox(height: 20,),
                      Column(
                      children: 
                      List.generate(6,(index){
                          return TransactionItem(
                            transaction: Transaction(montant: (index+1)*10000 ,
                            type: index%2==0?TypeTransaction.depot:TypeTransaction.retrait)
                          );
                     }),)

                ]   
             ) , 
               onLoadForm: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder:(context) => TransactionForm(compte: compte),
                  ));
              }
    );
  }
}