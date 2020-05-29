particleSystem ps;
particle p;
PImage volcano;
void setup(){
  size(645,365);
  volcano = loadImage("volcano.jpg");
  ps=new particleSystem();
}
void draw(){
  background(volcano);
  
  //PVector gravity = new PVector(0,0.05);
  //ps.applyForce(gravity);
  
  if(mousePressed){
    PVector wind = new PVector(0.05*cos(mouseY/mouseX),0.02);
    ps.applyForce(wind);
  }
  ps.addParticle();
  ps.run();
}
