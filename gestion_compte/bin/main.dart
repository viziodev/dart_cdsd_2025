

import 'package:gestion_compte/models/compte.dart';
import 'package:gestion_compte/services/compte_service.dart';

void main()  {
     CompteService compteService=CompteService();
   /*  Compte cp = Compte(id: 1, numero: "Num_1");
       compteService.addCompte(cp);
       Compte cp1 = Compte(id: 2, numero: "Num_2",montant: 10000);
       compteService.addCompte(cp1);
     */
    compteService.findAllCompte()
     .then((comptes){
      for (var compte in comptes) {
          print(compte);
      }
     });
}
