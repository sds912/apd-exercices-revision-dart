//	33 Conversion de Listes en Map
void main() {
  Map convertirEnMap(List cles, List valeurs) {
 Map map = {};

 for (int i = 0; i < cles.length; i++) {
     map[cles[i]] = valeurs[i];
 }

 return map;
} 
List cles = ['nom', 'age', 'ville'];
List valeurs = ['Alice', 25, 'Paris'];

Map mapResultat = convertirEnMap(cles, valeurs);

print(mapResultat); 






}


