// 38.	Remplacement de Caractères
String remplacer(String chaine, String caractereAremplacer, String caractereDeRemplacement) {
 String nouvelleChaine = '';
 
 for (int i = 0; i < chaine.length; i++) {
     if (chaine[i] == caractereAremplacer) {
         nouvelleChaine += caractereDeRemplacement;
     } else {
         nouvelleChaine += chaine[i];
     }
 }
 
 return nouvelleChaine;
}

void main() {
 String chaine = "impzssible nest pas apd";
 String caractereAremplacer = "z";
 String caractereDeRemplacement = "o";
 
 String nouvelleChaine = remplacer(chaine, caractereAremplacer, caractereDeRemplacement);
 
 print(nouvelleChaine); 


 
}
