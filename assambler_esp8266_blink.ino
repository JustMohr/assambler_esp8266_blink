extern "C"{
  void ledOn();
  void ledOff();
  void pinInit();
}

void setup() {
  pinMode(14, OUTPUT);
}

void loop(){

  ledOn();
  delay(1000);
  ledOff();
  delay(1000);

}
