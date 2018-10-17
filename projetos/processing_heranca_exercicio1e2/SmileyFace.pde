class SmileyFace extends Circulo {
  
  public void desenharRosto() {
    fill(#FFFF00);
    ellipse(200, 200, 180, 180);
    noFill();
    ellipse(160, 160, 10, 10);
    ellipse(240, 160, 10, 10);
    arc(width/2, height/2, 160, 140, radians(20), radians(160));
  }
}
