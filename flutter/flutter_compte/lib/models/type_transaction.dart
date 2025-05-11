enum TypeTransaction { 
      depot("Depot"),retrait("Retrait");
      final String value;
      const TypeTransaction (this.value);

      static TypeTransaction? getEnumByValue(String value){
          var values=TypeTransaction.values;
          for (var element in values) {
              if (element.value==value) {
                  return element;
              }
          }
             return null;
      }
}