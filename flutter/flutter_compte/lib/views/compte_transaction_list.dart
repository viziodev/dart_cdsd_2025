import 'package:flutter/material.dart';
import 'package:flutter_compte/views/compte_form.dart';
import 'package:flutter_compte/views/compte_list.dart';

class TransactionCompteList extends StatefulWidget {
  const TransactionCompteList({super.key});

  @override
  State<TransactionCompteList> createState() => _TransactionCompteListState();
}

class _TransactionCompteListState extends State<TransactionCompteList> {
   late int  _selectedIndex;
  @override
  void initState() {
    // TODO: implement initState
     super.initState();
     _selectedIndex=0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
          title:const Text("Liste des Transactions",
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
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder:(context) =>  CompteList(),)
                           );
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
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder:(context) => const FormCompte(),)
                           );
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
          body:   SingleChildScrollView(
            child:Column(
              children:[
                Card(
                      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      child:Container(
                           width: double.infinity,
                           padding: const EdgeInsets.all(15),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Text("Numero : Num0001",
                                                   style:TextStyle(
                                                    color: Colors.black,
                                                   fontSize: 18
                                                  )),
                             SizedBox(width: 14,),
                             Text("Date  : 27/10/2024",
                                                   style:TextStyle(
                                                    color: Colors.black,
                                                   fontSize: 18
                                                  )),

                            ],),
                          SizedBox(height: 10,),
                          Text("Solde  : 10000 CFA ",
                                                   style:TextStyle(
                                                    color: Colors.red,
                                                   fontSize: 20,
                                                   fontWeight: FontWeight.bold
                                                  )),

                        
                         ],),
                      ), 
                   ),
                      const SizedBox(height: 20,),
                       
                      Column(
                      children: 
                     List.generate(6,(index){
                      return  Card(
                       margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                       child:ListTile(
                        leading: Icon(index%2==0?Icons.arrow_downward:Icons.arrow_upward,
                         color: index%2==0?Colors.green:Colors.red,
                        ),
                          title:const Text("Type : Depot",
                               style:TextStyle(
                               color: Colors.black,
                               fontSize: 18
                          )),
                          subtitle:const Text("12/04/2025",
                               style:TextStyle(
                               color: Colors.black,
                               fontSize: 18
                         )),
                         trailing: Text(index%2==0?"+ 1000 CFA":"- 2000 CFA" ,
                               style:TextStyle(
                               color: index%2==0?Colors.green:Colors.red,
                               fontSize: 18
                          )) ,
                         
                         onTap: (){
                              Navigator.pushNamed(context, "transaction_list");
                         },   
                     ), 
                   );
                     }),)
                   


                  
                ]   
             ) 
           ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
             onTap: (index) {
              setState(() {
                 _selectedIndex=index;
              });
             },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
               label:"Home", 
               ),
              BottomNavigationBarItem(icon: Icon(Icons.wallet),label:"Comptes" ),
              BottomNavigationBarItem(icon: Icon(Icons.abc_sharp),label:"Historiques" )
              ],
          ),
      
          floatingActionButton: FloatingActionButton(
            onPressed: () {
               Navigator.pushNamed(context, "form");
               
          },
          child: const Icon(Icons.add),),
      
      ),
    );
  }
}