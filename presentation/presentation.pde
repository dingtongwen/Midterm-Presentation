  float a,b,x,y,r;
  float speed=0.2;


void setup(){
  size(350,350);
  
  background(0);
}

void draw(){

  background(0);
  for (int i=20;i<width-20;i+=10){
    for(int j=20;j<height-20;j+=10){
      fill(random(255));
      noStroke();
      r=dist(i,j,width/2,height/2);
      x=r*cos (frameCount*speed);
      y=r*sin(frameCount*speed);
      
      ellipse(x+i,y+j,4,4);
      a=map(mouseX,0,width,0,155);
      b=map(mouseY,0,height,0,255);
      strokeWeight(0.3);
      
      stroke(mouseX,mouseY,255);
      
      line(i+x,j+y,mouseX,mouseY);
      
    }
  }
  
}
