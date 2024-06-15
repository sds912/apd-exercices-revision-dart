void main() {
  Complexe complexe = new Complexe(12, 4);
  print(complexe.reel);
}

class Complexe {
  double reel;
  double imaginaire;
  Complexe(this.reel, this.imaginaire);
  Complexe operator *(Complexe autre) {
    return Complexe(reel * autre.reel - imaginaire * autre.imaginaire,
        reel * autre.imaginaire + imaginaire * autre.reel);
  }
}
