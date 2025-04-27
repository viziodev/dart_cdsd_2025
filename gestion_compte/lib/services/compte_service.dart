import 'dart:convert';

import 'package:gestion_compte/models/compte.dart';
import 'package:http/http.dart' as http;

class CompteService {
   final String baseUrl;   
   CompteService ({this.baseUrl="http://localhost:3000"});
   //Creer un Compte 
        Future<Compte> addCompte(Compte compte)async {
         //Client qui execute nos requetes Http
          var url=Uri.parse("$baseUrl/comptes");
          var response = await http.post(url,
            headers:{
                "content-type":"application/json"
            },
            body:json.encode(compte.toMap())
             );
           if (response.statusCode == 201) {
                     var jsonCompte= response.body;
                     Map<String,dynamic> mapCompte=  json.decode(jsonCompte);
                     return Compte.fromMap(mapCompte);
           }else{
             throw  Exception("Echec de chargement des Comptes");
           }
         }
   //Lister les comptes 
        Future<List<Compte>> findAllCompte() async {
           //Client qui execute nos requetes Http
          var url=Uri.parse("$baseUrl/comptes");
          var response = await http.get(url);
           if (response.statusCode == 200) {
                var jsonCompte= response.body;
                  //Json ==> Map 
                  // List<dynamic>
                  List<dynamic> mapComptes=  json.decode(jsonCompte)  ;   
                  //Map ==> Compte
                   return  mapComptes.map((mapCompte) => Compte.fromMap(mapCompte)).toList();

           }else{
             throw  Exception("Echec de chargement des Comptes");
           }
            
        }
}