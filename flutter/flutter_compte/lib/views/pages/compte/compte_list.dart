import 'package:flutter/material.dart';
import 'package:flutter_compte/models/compte.dart';
import 'package:flutter_compte/views/layout/layout.dart';
import 'package:flutter_compte/views/pages/compte/widgets/compte_item_list.dart';


class CompteList extends StatefulWidget {
  const CompteList({super.key});

  @override
  State<CompteList> createState() => _CompteListState();
}

class _CompteListState extends State<CompteList> {

  @override
  void initState() {
    // TODO: implement initState
     super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
           title: "Liste des Comptes",
            contentPage:Column(
              children: List.generate(5,(index){
                  return  CompteItemList(
                    compte: Compte(id:index, numero: "NUM_$index",solde:index*10000  ),);
              }) 
             ,),
             onLoadForm: (){
                Navigator.pushNamed(context, "form");
             },
    );
  }
}