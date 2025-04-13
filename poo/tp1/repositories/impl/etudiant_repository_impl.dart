import "./../impl/etudiant_repository_impl.dart";
class EtudiantRepositoryImpl implements EtudiantRepository{
   final List<Etudiant> _etudiant;
    @override
     List<Etudiant> findAll({String? nom,int? age}){
        return  List.unmodifiable(_etudiant) ;
     }
   @override
   void add({required Etudiant etudiant}){
       _etudiant.add(etudiant);
   }
}