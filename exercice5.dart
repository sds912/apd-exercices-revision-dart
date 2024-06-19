
// 22.	Recherche dans une Liste
bool rechercher(List liste, String recherche) {
 for (String element in liste) {
     if (element.contains(recherche)) {
         return true;
     }
 }
 return false;
}

void main() {
 List liste = ['bonjour', 'salut', 'hello', 'hi'];
 String recherche = 'salut';
 
 if (rechercher(liste, recherche)) {
     print('La chaîne de recherche a été trouvée dans la liste.');
 } else {
     print('La chaîne de recherche n\'a pas été trouvée dans la liste.');
 }


 
}
