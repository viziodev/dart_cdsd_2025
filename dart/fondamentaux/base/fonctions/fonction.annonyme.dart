
//Fonction anonyme
Function somme(){
    return (int b,int a ){
      return a+b;
  };
}

 var produit1=({required num a , required num b}){
   print("La Somme est $a,$b");
   return a*b;
};

 var produit=({required num a , required num b}) => a*b;



Function operation=(int b,int a, Function callback){
   return  callback(a,b);
};

void main() {
    produit(a:12,b:15);
   operation(12,4,(int b,int a ){
           return a+b;
   });

   operation(12,4,(int b,int a )=> a*b);

}