import 'package:flutter/material.dart';
import 'package:flutter_compte/models/compte.dart';

class CompteItemList extends StatefulWidget {
  final Compte compte;
  const CompteItemList({super.key,required this.compte});

  @override
  State<CompteItemList> createState() => _CompteItemListState();
}

class _CompteItemListState extends State<CompteItemList> {
  @override
  Widget build(BuildContext context) {
             return Card(
                      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                     child:ListTile(
                        title: Text("Numero : ${widget.compte.numero}",
                               style:const TextStyle(
                               color: Colors.black,
                               fontSize: 20
                         )),
                           subtitle: Text("Solde  : ${widget.compte.solde} CFA",
                               style:const TextStyle(
                               color: Colors.black,
                               fontSize: 20
                         )) ,
                         trailing: const  Icon(Icons.arrow_forward),
                         onTap: (){
                               Navigator.pushNamed(context, 
                               "transaction_list",
                               arguments: {
                                 "compte":widget.compte
                               });
                         },   
                     ), 
                );
  }
}