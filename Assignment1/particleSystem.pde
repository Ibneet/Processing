class particleSystem{
  ArrayList<particle> p;
  PVector origin;
  particleSystem() {
    p = new ArrayList<particle>();
  }
  
  void addParticle(){
    for(int i=0;i<10;i++){
      p.add(new particle());  
    }
  }
  void applyForce(PVector force){
    for(particle ptcl: p){
      ptcl.applyForce(force);
    }
  }
  void run(){
    for(int i=0;i<p.size();i++){
      particle ptcl=p.get(i);
      
      ptcl.update();
      ptcl.display();
      ptcl.check();
      if(ptcl.isDead()){
        p.remove(i);
      }
    }
  }
}
