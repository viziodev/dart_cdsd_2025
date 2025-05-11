void main() {
    //Appel avec des arguments de positions
        int s =somme(12,13);
        //Le 3ieme Arguments est optionnel 
          int s1 =somme1(12,13,4);
          s1 =somme1(12,13);
    //Appel avec des arguments de nommees
             produit(a:10,b:5);
             produit(b:10,a:5);
             somme3(10,5);
             somme3(10,5,c:10);
            somme4(a:10,b:5,c:10);
            somme4(a:10,b:5);
}
//Arguments de position Obligatoire
int somme(int b,int a ){
  return a+b;
}
//Arguments de position Optionnel =>[]
 //c est un argument nullable
 int somme1(int b,int a,[int?c] ){
  return a+b+(c??0);
 }
 //c est un argument avec une valeur par defaut
  int somme2(int b,int a,[int c=0] ){
  return a+b+c;
 }

  int somme3(int b,int a,{int c=0} ){
  return a+b+c;
 }

  int somme4({required int b,required int a,int c=0} ){
  return a+b+c;
 }


 //Arguments  nommee ==>{} et optionnel

num produit({num a=0 , num b=0}){
  return a*b;
}

num produit2({num? a , num? b}){
  return (a??0)*(a??0);
}


num produit1(num a , num b){
  return a*b;
}