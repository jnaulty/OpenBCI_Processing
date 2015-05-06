float freq1 = 8;
float freq2 = 12;

void setup(){
  frameRate(60);
  size(displayWidth, displayHeight);
  background(0);
  noStroke();
  rectMode(CENTER);
}

void draw(){
  background(0);
  
  //left side
  if(millis()%(2*(500/freq1)) >= (500/freq1)){
    fill(0,0,255);
    rect(width/6,height/2, 100,100);
    pushStyle();
      noFill();
      stroke(255);
      rect(width/6, height/2, 50, 50);
    popStyle();
    
  } else{
    fill(255);
    rect(width/6,height/2, 100,100);
    pushStyle();
      noFill();
      stroke(0,0,255);
      rect(width/6, height/2, 20, 20);
    popStyle();
  }
  
  //right side
  if(millis()%(2*(500/freq2)) >= (500/freq2)){
    fill(255,0,0);
    rect(5*(width/6),height/2, 100,100);
    pushStyle();
      noFill();
      stroke(0);
      rect(5*(width/6), height/2, 20, 20);
    popStyle();
  } else{
    fill(0);
    rect(5*(width/6),height/2, 100,100);
    pushStyle();
      noFill();
      stroke(255,0,0);
      rect(5*(width/6), height/2, 20, 20);
    popStyle();
  }
  

  
  
}



