/*
  Based on the WebSerial Demo AP
  Author: Ayush Sharma
  Checkout WebSerial Pro: https://webserial.pro
*/




#include <Arduino.h>
#if defined(ESP8266)
  #include <ESP8266WiFi.h>
  #include <ESPAsyncTCP.h>
#elif defined(ESP32)
  #include <WiFi.h>
  #include <AsyncTCP.h>
#endif
#include <ESPAsyncWebServer.h>
#include <WebSerial.h>
#include <AsyncElegantOTA.h>
#include<NoDelay.h>


AsyncWebServer server(80);

const char* ssid = "badgedemo"; // Your WiFi AP SSID 
const char* password = ""; // Your WiFi Password

const int LED1 = 10;
const int LED2 = 11;
const int LED3 = 12;
const int LED4 = 13;
const int BTNLEFT = 4;
const int BTNRIGHT = 5;
const int BTNUP = 6;
const int BTNDOWN = 7;
const int BTNMIDDLE = 8;
const int LED_DELAY = 100;
const int BTNTHRESHOLD = 30000;
const int BTNTIMEVAR = 1000;

const int DEBUGMODE = 1;


noDelay BTNLEFT_TIME(BTNTIMEVAR);
noDelay BTNRIGHT_TIME(BTNTIMEVAR);
noDelay BTNUP_TIME(BTNTIMEVAR);
noDelay BTNDOWN_TIME(BTNTIMEVAR);
noDelay BTNMIDDLE_TIME(BTNTIMEVAR);

noDelay LED1_TIME(500);
noDelay LED2_TIME(600);
noDelay LED3_TIME(700);
noDelay LED4_TIME(800);

/* Message callback of WebSerial */
void recvMsg(uint8_t *data, size_t len){
  WebSerial.println("Received Data...");
  String d = "";
  for(int i=0; i < len; i++){
    d += char(data[i]);
  }
  WebSerial.println(d);
}


void setup() {
    Serial.begin(115200);
    WiFi.softAP(ssid, password);

    IPAddress IP = WiFi.softAPIP();
    Serial.print("AP IP address: ");
    Serial.println(IP);
    // WebSerial is accessible at "<IP Address>/webserial" in browser
    WebSerial.begin(&server);
    /* Attach Message Callback */
    WebSerial.msgCallback(recvMsg);
    AsyncElegantOTA.begin(&server);
    server.begin();


pinMode(LED1, OUTPUT);
pinMode(LED2, OUTPUT);
pinMode(LED3, OUTPUT);
pinMode(LED4, OUTPUT);

if (DEBUGMODE == 1)
{
  int BTNLEFTVAL = touchRead(BTNLEFT);
  int BTNRIGHTVAL = touchRead(BTNRIGHT);
  int BTNUPVAL = touchRead(BTNUP);
  int BTNDOWNVAL = touchRead(BTNDOWN);
  int BTNMIDDLEVAL = touchRead(BTNMIDDLE);
  
  Serial.println("--------CAP TOUCH VALUES--------");
  Serial.print("LEFTBTNVAL: "); Serial.println(BTNLEFTVAL);
  Serial.print("RIGHTBTNVAL: "); Serial.println(BTNRIGHTVAL);
  Serial.print("UPBTNVAL: "); Serial.println(BTNUPVAL);
  Serial.print("DOWNBTNVAL: "); Serial.println(BTNDOWNVAL);
  Serial.print("MIDDLEBTNVAL: "); Serial.println(BTNMIDDLEVAL);
}

}

void BTNCHECK(uint8_t BTNNAME) {
  if (touchRead(BTNNAME) < BTNTHRESHOLD) 
    {
        //Serial.print(BTNNAME);
        //Serial.println(touchRead(BTNNAME));
        WebSerial.println("Button Pressed");
        }
}


void BLINKLED(uint8_t LEDNAME) {
  digitalWrite(LEDNAME, !digitalRead(LEDNAME));
  delay (1000);
}


void loop() {

digitalWrite(LED1, (millis() / 1000) % 2);
digitalWrite(LED2, (millis() / 1000) % 3);
digitalWrite(LED3, (millis() / 1000) % 5);
digitalWrite(LED4, (millis() / 1000) % 7);

/*
   if (BTNLEFT_TIME.update()) 
   {
    int BTNLEFTVAL = touchRead(BTNLEFT);
    if (BTNLEFTVAL < BTNTHRESHOLD) { Serial.print("Left Press: "); Serial.println(BTNLEFTVAL); WebSerial.println("Left Button Pressed"); }
   }
   if (BTNRIGHT_TIME.update()) 
   {
   int BTNRIGHTVAL = touchRead(BTNRIGHT);
   if (BTNRIGHTVAL < BTNTHRESHOLD) { Serial.print("Right Press: "); Serial.println(BTNRIGHTVAL); WebSerial.println("Right Button Pressed"); }
   }
    if (BTNUP_TIME.update()) 
   {
   int BTNUPVAL = touchRead(BTNUP);
   if (BTNUPVAL < BTNTHRESHOLD) { Serial.print("Up Press: "); Serial.println(BTNUPVAL); WebSerial.println("Up Button Pressed"); }
   }
    if (BTNDOWN_TIME.update()) 
   {
   int BTNDOWNVAL = touchRead(BTNDOWN);
   if (BTNDOWNVAL < BTNTHRESHOLD) { Serial.print("Down Press: "); Serial.println(BTNDOWNVAL); WebSerial.println("Down Button Pressed"); }
   }
   /* if (BTNMIDDLE_TIME.update()) 
   {
   int BTNMIDDLEVAL = touchRead(BTNMIDDLE);
   if (BTNMIDDLEVAL < BTNTHRESHOLD) { Serial.print("Middle Press: "); Serial.println(BTNMIDDLEVAL); WebSerial.println("Middle Button Pressed"); }
   } */
}
