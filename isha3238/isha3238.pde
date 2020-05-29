mov_isha m;
void setup(){
  size(400,400);
  fill(0);
  m = new mov_isha();
}
void draw(){
  background(255);
  m.update();
  m.display();
  m.check();
}
