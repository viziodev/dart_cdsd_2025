import 'package:flutter/material.dart';
import 'package:flutter_compte/models/compte.dart';
import 'package:flutter_compte/services/compte_service.dart';
import 'package:flutter_compte/views/layout/layout.dart';
import 'package:flutter_compte/views/pages/compte/widgets/compte_item_list.dart';


class CompteList extends StatefulWidget {
  final CompteService service;
  const CompteList({super.key,required this.service});
  
  @override
  State<CompteList> createState() => _CompteListState();
}

class _CompteListState extends State<CompteList> {

  late Future<List<Compte>> _futureListComptes;
  void  _refresh(){
      _futureListComptes= widget.service.findAllCompte();
 }
  @override
  void initState() {
    // TODO: implement initState
      super.initState();
       _refresh();

  }

  @override
  Widget build(BuildContext context) {
    return LayoutScreen(
               title: "Liste des Comptes",
               contentPage:Column(
              children: [
                   FutureBuilder<List<Compte>>(
                   future: _futureListComptes,
                   builder:(context, snapshot){
                      if (snapshot.connectionState==ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                      }else if(snapshot.hasError){
                         return const Center(child: Text("Erreur de chargement des donnees"));
                      }else if(!snapshot.hasData || snapshot.data!.isEmpty){
                         return const Center(child: Text("Pas de comptes disponibles"));
                      }
                      final comptes =snapshot.data!;
                      return ListView.builder(
                            itemCount:comptes.length ,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder:(context, index) {
                               return  CompteItemList(
                                        compte: comptes[index],
                                     ); 
                       },);  
                   },)

              ] 

             ),
             onLoadForm: (){
                Navigator.pushNamed(context, "form");
             },
    );
  }
}

/*


*/