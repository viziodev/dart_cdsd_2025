import 'package:flutter/material.dart';

class FormCompte extends StatefulWidget {
  const FormCompte({super.key});

  @override
  State<FormCompte> createState() => _FormCompteState();
}
//Donnees

class _FormCompteState extends State<FormCompte> {
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
        body: const Center(child:Text("Content Form",
        style:TextStyle(
          color: Colors.black,
          fontSize: 30
        ))  ,), 
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