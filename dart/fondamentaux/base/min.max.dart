import 'dart:io';
void main() {
   print("Entrer la valeur de a");
   int a= int.parse(stdin.readLineSync()??"0") ;
    print("Entrer la valeur de b");
   double b= double.parse(stdin.readLineSync()??"0") ;
   num min,max;
   if (a<b) {
        min=a;
        max=b;
   } else {
       min=b;
       max=a;
   }
   print("Max : $max , Min: $min");
}