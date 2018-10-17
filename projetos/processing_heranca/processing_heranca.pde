void setup() {
  size(500, 500);
}

void draw() {
  fill(#984502);
  ellipse(250, 140, 80, 35);
  noStroke();
  rect(210, 100, 80, 40);
  stroke(0);
  ellipse(250, 100, 80, 35);
  line(210, 100, 210, 140);
  line(290, 100, 290, 140); 
}
