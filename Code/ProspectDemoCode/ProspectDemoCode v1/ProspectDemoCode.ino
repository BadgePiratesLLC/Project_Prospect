/*
  WebSerial Demo AP
  ------
  This example code works for both ESP8266 & ESP32 Microcontrollers
  WebSerial is accessible at 192.168.4.1/webserial URL.

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

const int BTNTHRESHOLD = 40000;

int BOOTVAR = 0;

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
    server.begin();

    
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
}

void loop() {

int BTNLEFTVAL = touchRead(BTNLEFT);
int BTNRIGHTVAL = touchRead(BTNRIGHT);
int BTNUPVAL = touchRead(BTNUP);
int BTNDOWNVAL = touchRead(BTNDOWN);
int BTNMIDDLEVAL = touchRead(BTNMIDDLE);


if (BOOTVAR = 1) {
  digitalWrite(LED1, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(LED_DELAY); 
  digitalWrite(LED1, LOW);    // turn the LED off by making the voltage LOW
  delay(LED_DELAY);
  digitalWrite(LED2, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(LED_DELAY);
  digitalWrite(LED2, LOW);    // turn the LED off by making the voltage LOW
  delay(LED_DELAY);
  digitalWrite(LED3, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(LED_DELAY);
  digitalWrite(LED3, LOW);    // turn the LED off by making the voltage LOW
  delay(LED_DELAY);
  digitalWrite(LED4, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(LED_DELAY);
  digitalWrite(LED4, LOW);   // turn the LED on (HIGH is the voltage level)
 }


  if (BTNLEFTVAL < BTNTHRESHOLD) {
    Serial.print("BTNLEFT Touched");
  }

  //WebSerial.println(touchRead(BTNLEFT));
  Serial.println(touchRead(BTNLEFT));
}
