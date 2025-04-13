abstract class EtudiantRepository{
  List<Etudiant> findAll({String? nom,int? age});
  void add({required Etudiant etudiant});
}