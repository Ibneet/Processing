class particle{
  PVector loc;
  PVector vel;
  PVector acc;
  float lifespan=255;
  particle(){
    loc = new PVector(random(465,480),225);
    vel = new PVector(random(-1,1),random(-2,0));
    acc = new PVector(0,0.03);
  }
  void applyForce(PVector force){
    acc.add(force);
  }
  void update(){
    vel.add(acc);
    loc.add(vel);
    //acc.mult(0);
    lifespan-=0.8;
  }
  boolean isDead(){
    if(lifespan<=0){
      return true;
    }else{
      return false;
    }
  }
  void display(){
    //stroke(0);
    //fill(0);
    stroke(0,lifespan);
    fill(color(255,100,0),lifespan);
    ellipse(loc.x,loc.y,4,4);
  }
  void check(){
    if(loc.y>400-2){
      vel.y = -vel.y;
      loc.y = 400-2;
    }
  }
}
