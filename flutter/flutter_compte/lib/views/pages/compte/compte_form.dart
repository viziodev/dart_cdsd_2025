import 'package:flutter/material.dart';
import 'package:flutter_compte/models/compte.dart';
import 'package:flutter_compte/views/layout/layout.dart';

class FormCompte extends StatefulWidget {
  const FormCompte({super.key});

  @override
  State<FormCompte> createState() => _FormCompteState();
}
//Donnees

class _FormCompteState extends State<FormCompte> {
  final  _formKey=GlobalKey<FormState>();
  final _numeroController =TextEditingController();
  final _soldeController =TextEditingController();
  void _saveCompte(){
      if (_formKey.currentState!.validate()) {
              final newCompte=Compte(
                 id: DateTime.now().microsecondsSinceEpoch, 
                numero: _numeroController.text,
                 solde: double.parse(_soldeController.text)
              );

              //Appel Api 
      }  
  }
  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
            title: "Nouveau Compte",
            contentPage: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
                 key: _formKey,
                  child: Column(
                  children: [
                     TextFormField(
                      controller: _numeroController,
                      decoration: const InputDecoration(
                        labelText: "Numero",
                          border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if (value==null || value.isEmpty) {
                          return "Veuillez saisir un numero";
                        }
                        return null;
          
                      } ,
                     ),
                     const  SizedBox(height: 20,),
                     TextFormField(
                      controller: _soldeController,
                      decoration: const InputDecoration(
                         labelText: "Solde",
                          border: OutlineInputBorder()
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value){
                        if (value==null || value.isEmpty) {
                          return "Veuillez saisir le solde du compte";
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
                       onPressed:() {
                           _saveCompte();
                        },
                       child: const Text("Creer un Compte",
                            style:TextStyle(
                                 fontSize: 20
                           ))),
                     )
          
                  ],
          
                  )
                     
                 ),
          ),
    );
  }

}