import 'package:flutter/material.dart';
import 'package:flutter_compte/models/compte.dart';
import 'package:intl/intl.dart';

class CompteItem extends StatefulWidget {
  final Compte compte;
  const CompteItem({super.key,required this.compte});

  @override
  State<CompteItem> createState() => _CompteItemState();
}
class _CompteItemState extends State<CompteItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
                      margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                      child:Container(
                           width: double.infinity,
                           padding: const EdgeInsets.all(10),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text("Numero : ${widget.compte.numero}",
                                                   style:const TextStyle(
                                                    color: Colors.black,
                                                   fontSize: 18
                                                  )),
                              const SizedBox(width: 10,),
                              Text("Date: ${DateFormat('dd/MM/yyyy').format(widget.compte.dateCreation)}",
                                                   style:const TextStyle(
                                                    color: Colors.black,
                                                   fontSize: 18
                                                  )),

                            ],),
                         const  SizedBox(height: 10,),
                          Text("Solde  : ${widget.compte.solde} CFA ",
                                                   style:const TextStyle(
                                                    color: Colors.red,
                                                   fontSize: 20,
                                                   fontWeight: FontWeight.bold
                                                  )),

                        
                         ],),
                      ), 
                   );
  }
}