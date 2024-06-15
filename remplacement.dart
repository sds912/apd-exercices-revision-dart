void main() {
  String remplacer(String chaine, String aremplacer, String remplacement) {
    return chaine.replaceAll(aremplacer, remplacement);
  }

  print(remplacer('madame est fatigué', 'fatigué', 'venue'));
}
