import 'package:flutter/material.dart';
import 'package:flutter_compte/views/layout/widgets/menu_item.dart';

class LayoutScreen extends StatefulWidget {
  final Widget contentPage;
  final String title;
  final Function? onLoadForm;
  const LayoutScreen({super.key,required this.contentPage,required this.title,this.onLoadForm});

  @override
  State<LayoutScreen> createState() => _LayoutScreeState();
}

class _LayoutScreeState extends State<LayoutScreen> {
  int _selectedIndex=0;
  // ignore: non_constant_identifier_names
  List<Map<String,dynamic>> menus=[
    {
         "title":"Comptes",
          "icon":Icons.home, 
          "routeName":"compte"
    }, 
    {
          "title":"Creation",
          "icon":Icons.wallet, 
           "routeName":"compte"
    }, 
    {
        "title":"Deconnexion",
        "icon":Icons.exit_to_app, 
        "routeName":""
    } 
    
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,
        style:const TextStyle(
          color: Colors.black,
          fontSize: 20
        ))  ,), 
        drawer:  Drawer(
          
          child:ListView(
           // scrollDirection:Axis.horizontal,
           padding:EdgeInsets.zero ,
            children:   [
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
                    for(int i=0;i<menus.length;i++)
                       MenuItem(arguments: menus[i]),    

              ],
            ) ,
        ), 
        body: SingleChildScrollView(
          child:widget.contentPage,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (value){
          setState(() {
             _selectedIndex=value;
          });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
            BottomNavigationBarItem(icon: Icon(Icons.wallet),label:"Comptes" ),
            BottomNavigationBarItem(icon: Icon(Icons.abc_sharp),label:"Historiques" )
            ],
        ),
     
         floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(widget.onLoadForm!=null){
                  widget.onLoadForm!();
            }
            
        },child: const Icon(Icons.add),),
 
       

    );;
  }
}