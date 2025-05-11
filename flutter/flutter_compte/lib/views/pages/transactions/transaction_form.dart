import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_compte/models/compte.dart';
import 'package:flutter_compte/models/type_transaction.dart';
import 'package:flutter_compte/views/layout/layout.dart';
import 'package:flutter_compte/views/pages/compte/widgets/compte_item.dart';

class TransactionForm extends StatefulWidget {
  final Compte compte;
  const TransactionForm({super.key,required this.compte});

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
   final  _formKey=GlobalKey<FormState>();
 
  final _montantController =TextEditingController();
  TypeTransaction _selectedType=TypeTransaction.depot;
  void _saveTransaction(){
      if (_formKey.currentState!.validate()) {
              

              //Appel Api 
      }  
  }
  @override
  Widget build(BuildContext context) {
    return LayoutScreen( title: "Nouvelle Transaction",contentPage:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CompteItem(compte: widget.compte,),
               const SizedBox(height: 10,),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10, right: 10 , bottom: 20),
                    child: Column(
                      children: [
                          const Text("Formulaire  de Transaction",
                         style: TextStyle(
                               color: Colors.black,
                               fontSize: 18,
                               fontStyle: FontStyle.italic,
                               fontWeight: FontWeight.bold
                         )),
                       const  SizedBox(height: 10,),
                        Form(
                             key: _formKey,
                              child: Column(
                              children: [
                                   Row(
                                    children: [
                                     Expanded(
                                       child: RadioListTile<TypeTransaction>(
                                        title: const Text("Depot"),
                                         value: TypeTransaction.depot, 
                                         groupValue: _selectedType,
                                         onChanged:(TypeTransaction? value) {
                                             setState(() {
                                                 _selectedType=value!;
                                             });  
                                         },),
                                     ), 
                                     Expanded(
                                       child: RadioListTile<TypeTransaction>(
                                          title: const Text("Retrait"),
                                        value: TypeTransaction.retrait, 
                                        groupValue: _selectedType, onChanged: (TypeTransaction? value) {
                                             setState(() {
                                                 _selectedType=value!;
                                             });  
                                         }),
                                     )

                                  ],),

                                 const  SizedBox(height: 10,),
                                 TextFormField(
                                  controller: _montantController,
                                  decoration: const InputDecoration(
                                     labelText: "Montant",
                                      border: OutlineInputBorder()
                                  ),
                                  keyboardType: TextInputType.number,
                                  validator: (value){
                                    if (value==null || value.isEmpty) {
                                      return "Veuillez saisir le Montant de la transation";
                                    }
                                     if (double.tryParse(value)==null) {
                                      return "Veuillez saisir un nombre";
                                     }
                                    return null;
                                  
                                  }
                                 ),
                                const  SizedBox(height: 20,),
                                  SizedBox(
                                  height: 60,
                                  width: double.infinity,
                                    child: ElevatedButton(
                                    style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
                                     onPressed:() {
                                       _saveTransaction();
                                    },
                                   child: const Text("Creer une  Transaction",
                                        style:TextStyle(
                                             fontSize: 20
                                       ))),
                                 )
                                  
                              ],
                                  
                              )
                                 
                             ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
          );
  }
}