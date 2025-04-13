//Closure
Function compteur() {
   int count = 0;
   return () {
     count++;
     return count;
   };
 }

 int compteur1() {
    int count = 0;
     count++;
     return count;
 }
main(){
   // print('Appel 1 : ${compteur1() }'); 
   //print('Appel 2 : ${compteur1()}');
   //print('Appel 3 : ${compteur1()}');
   var inc =compteur();
    print('Appel 1 : ${inc() }'); 
    print('Appel 2 : ${inc()}');
    print('Appel 3 : ${inc()}');
}
