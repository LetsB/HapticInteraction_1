int cnt1 = 0;
void setup() {
  Serial.begin(9600);
}

// 1초마다 PC로 숫자를 보내는 예제
void loop() {
  char buf[255];
  sprintf(buf, "%d", cnt1); 
  //cnt1를 buf에 저장하고 buf[]를 전송하면 format이 있는 양식으로 포트(PC)에 출력한다.
  // "%d" 를 "%c" 로 바꾸면 어떻게 될까요?
  //NaN출력
  
  Serial.println(buf); //아두이노 시리얼에서 확인
  cnt1++;
  
  delay(1000);
}
