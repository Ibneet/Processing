class mov_isha{
  PVector loc;
  PVector vel;
  PVector acc;
  mov_isha(){
    loc = new PVector(200,200);
    vel = new PVector(0,0);
    acc = new PVector(0,1);
  }
  void update(){
    vel.add(acc);
    loc.add(vel);
  }
  void display(){
    stroke(0);
    ellipse(loc.x,loc.y,10,10);
  }
  void check(){
    if(loc.y>400-5){
      vel.y = -vel.y;
      loc.y = 400-5;
    }
  }
}
