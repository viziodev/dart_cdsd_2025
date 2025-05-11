import 'package:flutter/material.dart';
import 'package:flutter_compte/views/compte_form.dart';
import 'package:flutter_compte/views/compte_list.dart';
import 'package:flutter_compte/views/compte_transaction_list.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
           title: "Gestion des Comptes",
            theme:  ThemeData(
                 primarySwatch: Colors.amber
            ),
        //  home: const CompteList(),
        initialRoute: "compte",
        routes: {
          "compte":(context) =>  const CompteList(),
          "form":(context) => const FormCompte(),
          "transaction_list":(context) => const TransactionCompteList(),
          
        },
          debugShowCheckedModeBanner: false,
    );
  }
}
