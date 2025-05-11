import 'package:flutter/material.dart';
import 'package:flutter_compte/models/transaction.dart';
import 'package:flutter_compte/models/type_transaction.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatefulWidget {
  final Transaction transaction;
  const TransactionItem({super.key,required this.transaction});

  @override
  State<TransactionItem> createState() => _TransactionItemState();
}
class _TransactionItemState extends State<TransactionItem> {
  @override
  Widget build(BuildContext context) {
    return  Card(
                       margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                       child:ListTile(
                        leading: Icon(widget.transaction.type==TypeTransaction.depot?Icons.arrow_downward:Icons.arrow_upward,
                         color: widget.transaction.type==TypeTransaction.depot?Colors.green:Colors.red,
                        ),
                          title: Text("${widget.transaction.type?.value}",
                               style:const TextStyle(
                               color: Colors.black,
                               fontSize: 18
                          )),
                          subtitle: Text("Date: ${DateFormat('dd/MM/yyyy').format(widget.transaction.date!)}",
                               style:const TextStyle(
                               color: Colors.black,
                               fontSize: 18
                         )),
                         trailing: Text("${widget.transaction.type==TypeTransaction.depot?"+":"-"} ${widget.transaction.montant}  CFA",
                               style:TextStyle(
                               color: widget.transaction.type==TypeTransaction.depot?Colors.green:Colors.red,
                               fontSize: 18
                          )) ,
                         
                         onTap: (){
                              Navigator.pushNamed(context, "transaction_list");
                         },   
                     ), 
                   );
  }
}