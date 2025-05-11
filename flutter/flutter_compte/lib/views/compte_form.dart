import 'package:flutter/material.dart';
import 'package:flutter_compte/models/compte.dart';

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
    return Scaffold(
      appBar: AppBar(
        title:const Text("Creation Compte",
        style:TextStyle(
          color: Colors.black,
          fontSize: 20
        ))  ,), 
        drawer:  Drawer(
          
          child:ListView(
           // scrollDirection:Axis.horizontal,
           padding:EdgeInsets.zero ,
            children:  [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue
                    ),
                    child: Text("Birane Baila Wane",
                           style:TextStyle(
                           color: Colors.white,
                           fontSize: 20
                       ))  ,
                     ),

                   ListTile(
                      leading:const Icon(Icons.home),
                      title:const Text("Comptes",
                             style:TextStyle(
                             color: Colors.black,
                             fontSize: 20
                       )),
                       onTap: (){
                          Navigator.pushNamed(context, "compte");
                       },   
                   ),
                   const Divider(),
                    ListTile(
                      leading:const Icon(Icons.wallet),
                      title:const Text("Creation",
                             style:TextStyle(
                             color: Colors.black,
                             fontSize: 20
                       )),
                       onTap: (){
                                Navigator.pushNamed(context, "form");
                       },   
                   ),
                   const Divider(),
                    ListTile(
                      leading:const  Icon(Icons.exit_to_app),
                      title:const Text("Deconnexion",
                             style:TextStyle(
                             color: Colors.black,
                             fontSize: 20
                       )),
                       onTap: (){
                       },   
                   ),
                   const Divider()

              ],
            ) ,
        ), 
        body: Padding(
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
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
            BottomNavigationBarItem(icon: Icon(Icons.wallet),label:"Comptes" ),
            BottomNavigationBarItem(icon: Icon(Icons.abc_sharp),label:"Historiques" )
            ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
             Navigator.pushNamed(context, "form");
        },child: const Icon(Icons.add),),

    );
  }

}