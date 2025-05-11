import 'package:flutter/material.dart';
import 'package:flutter_compte/services/compte_service.dart';
import 'package:flutter_compte/views/pages/compte/compte_form.dart';
import 'package:flutter_compte/views/pages/compte/compte_list.dart';
import 'package:flutter_compte/views/pages/transactions/compte_transaction_list.dart';


void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final CompteService compteService =CompteService(baseUrl: "http://10.0.2.2:3000");
    return   MaterialApp(
           title: "Gestion des Comptes",
            theme:  ThemeData(
                 primarySwatch: Colors.amber
            ),
        //  home: const CompteList(),
        initialRoute: "compte",
        routes: {
          "compte":(context) => CompteList(service: compteService),
          "form":(context) => const FormCompte(),
          "transaction_list":(context) => const TransactionCompteList(),
          
        },
          debugShowCheckedModeBanner: false,
    );
  }
}
