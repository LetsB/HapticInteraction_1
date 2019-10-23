import processing.serial.*;
Serial myPort; 
float val1;

void setup() {
  
  size(800, 600); //PC Window Size
  // List all the available serial ports
  printArray(Serial.list()); //Wirte list of Pote to Console
  
  // Open the port you are using at the rate you want:
  //myPort = new Serial(this, Serial.list()[0], 9600);
  myPort = new Serial(this, Serial.list()[Serial.list().length - 1], 9600);
  //link the COM3(Pote)
  val1 = 0;
}


void draw() {
  background(255);  //white background
  fill(0);
  int lf = 10;    // Linefeed in ASCII

  String buf = String.format("%06d, %.0f", frameCount, val1);
  //arduino give the buffer(buf[])
  
  text(buf, 20,50); //Wirte the text(x:20, y:50)
  
  while (myPort.available() > 0) //when arduino work
  {
    String str1  = myPort.readStringUntil(lf);//myPort.readString();
    
    if (str1 != null) 
    {
      val1 = float(str1);
    }
  }
}