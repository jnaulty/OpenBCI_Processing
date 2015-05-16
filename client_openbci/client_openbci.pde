import processing.net.*; 
Client myClient; 
Client myClient1;
int dataIn; 
int dataIn1;
int reset;
int reset1;
color c = color(0);
float x = 0;
float y = 100;
float x1 = 0;
float y1 = 50;
float speed = 1;
float speed1 = 2;
 
void setup() { 
  size(500, 500); 
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
  x = x + speed + (dataIn - reset)/100; 
  x1 = x1 + speed1 + (dataIn1 - reset)/100;
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
  reset = dataIn;
  reset1 = dataIn1;
}
