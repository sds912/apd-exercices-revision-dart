void main() {
  void manipulationSet() {
    Set<int> ensemble = Set();
    ensemble.addAll([1, 2, 4, 5, 3]);
    ensemble.remove(2);
    print(ensemble);
  }

  manipulationSet();
}
