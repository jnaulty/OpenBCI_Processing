import processing.net.*; 
Client myClient; 
Client myClient1;
int dataIn; 
int dataIn1;
int reset = 0;
int reset1 = 0;
color c = color(0);
float x = 0;
float y = 100;
float x1 = 0;
float y1 = 150;
float speed = 0;
float speed1 = 0;
 
void setup() { 
  size(1000, 500); 
  // Connect to the local machine at port 5204.
  // This example will not run if you haven't
  // previously started a server on this port.
  myClient = new Client(this, "127.0.0.1", 5204); 
  myClient1 = new Client(this, "127.0.0.1", 5205);
} 
 
void draw() { 
  if (myClient.available() > 0) { 
    dataIn = myClient.read(); 
    dataIn1 = myClient1.read(); 
  }
  if (myClient1.available() > 0) { 
    dataIn1 = myClient1.read(); 
  }
  
  background(255);
  move();
  display(); 
  
} 
void move() {
  x = x + dataIn ; 
  x1 = x1 +dataIn1;
  if (x > width) {
    x = 0;
  }

  if (x1 >width) {
    x1 = 0;
  }
}

void display() {
  fill(c);
  rect(x,y,30,10);
  rect(x1,y1,30,10);
}

void keyReleased() {
  x = 0;
  x1 = 0;

}
