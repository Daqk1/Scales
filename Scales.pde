void setup(){
  size(400,400);
}

void draw(){
  for(int y = -10; y <=1000; y += 20){
    for(int x = 1; x <= 1000; x+=20){
      scale(x, y);
      double r = (double)Math.random()*255;
      double g = (double)Math.random()*10;
      double b = (double)Math.random()*150;
      fill((int)r,(int)g,(int)b);
    }
  }
}

void scale(int x, int y){
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x+75,y+25);
  curveVertex(x+100,y+50);
  curveVertex(x+75,y+75);
  curveVertex(x,y+100);
  curveVertex(x,y+100);
  endShape();
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x-25,y+25);
  curveVertex(x-100,y+50);
  curveVertex(x-25,y+75);
  curveVertex(x,y+100);
  curveVertex(x,y+100);
  endShape();
}
