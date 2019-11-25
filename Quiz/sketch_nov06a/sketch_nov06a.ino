int sensorPosPin = A2; // input pin for MR sensor
int rawPos;
int t;
bool mode;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);//9600
  pinMode(sensorPosPin, INPUT); // set MR sensor pin to be an input
  mode = true;
  t = 0;
}

void loop() {
  // put your main code here, to run repeatedly:
  int inByte = Serial.read();
  if(inByte == '1')
    mode = true;
  else if(inByte == '2')
    mode = false;

    if(mode)
      calculatePosition();
    else
      calculateVirtualPosition();
  Serial.println(rawPos);
  delay(20);
}


void calculatePosition()
{
  rawPos = analogRead(sensorPosPin);
}

void calculateVirtualPosition()
{
  t = t+1;
  rawPos = 512 + 512.0 * sin(0.1 * t);
}

