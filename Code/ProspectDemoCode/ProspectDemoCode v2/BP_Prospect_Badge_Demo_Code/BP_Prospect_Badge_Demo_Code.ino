/*
  Based on the WebSerial Demo AP
  Author: Ayush Sharma
  Checkout WebSerial Pro: https://webserial.pro

  BadgePirates Prospect Demo Badge 2022
  Demo Code Author: Carl Fugate
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
#include <DNSServer.h>


AsyncWebServer server(80);

const int DEBUGMODE = 1;
const int DEBUGTIMEVAR = 1000;

const char* ssid = "2022_Badge"; // Your WiFi AP SSID 
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
const int WEBTEXTSCROLLVAR = 2000;

String WEBSERIAL_DATA = "";
int BTNPRESSED = 0;
int FIRSTBOOT = 1;
int WEBSERIAL_MENU_DISPLAY = 0;
int idx = 0;


noDelay BTNLEFT_TIME(BTNTIMEVAR);
noDelay BTNRIGHT_TIME(BTNTIMEVAR);
noDelay BTNUP_TIME(BTNTIMEVAR);
noDelay BTNDOWN_TIME(BTNTIMEVAR);
noDelay BTNMIDDLE_TIME(BTNTIMEVAR);
noDelay DEBUG_TIME(DEBUGTIMEVAR);
noDelay WEBTEXTSCROLL_TIME(WEBTEXTSCROLLVAR);

DNSServer dnsServer;

/* Message callback of WebSerial */
void recvMsg(uint8_t *data, size_t len) {
  //WebSerial.println("Received Data...");
  for(int i=0; i < len; i++){
    WEBSERIAL_DATA += char(data[i]);
  }
  Serial.println(WEBSERIAL_DATA);
  //WebSerial.println(WEBSERIAL_DATA);


}

// Text for WebSerial output


String WEBTEXT[9] = {
  "Welcome to the 2022 Badge Pirates Demo Badge",
  "Badge Features:",
  "ESP32-S Microprocessor",
  "Wifi / Access Point",
  "Web based interactive console",
  "Capacitive Touch buttons",
  "Onboard Over the Air (OTA) update capability",
  "Lithium-ion battery & onboard charger",
  "Contact us at sales@badgepirates.com for more information"
  };

  

void setup() {
    Serial.begin(115200);
    WiFi.softAP(ssid, password);

    IPAddress IP = WiFi.softAPIP();
    //Serial.print("AP IP address: ");
    //Serial.println(IP);
    // WebSerial is accessible at "<IP Address>/webserial" in browser
    // Modified webserial.h library to go directly to root at <IP Address>/"
    WebSerial.begin(&server);
    /* Attach Message Callback */
    WebSerial.msgCallback(recvMsg);
    AsyncElegantOTA.begin(&server);
    server.begin();
    WebSerial.println("Type 0 to begin");

    dnsServer.start(53, "*", WiFi.softAPIP());

    // SETUP LED pins
    pinMode(LED1, OUTPUT);
    pinMode(LED2, OUTPUT);
    pinMode(LED3, OUTPUT);
    pinMode(LED4, OUTPUT);

if (DEBUGMODE == 1) {

CAPDEBUG();
}

}

void CAPDEBUG() {
  if (DEBUG_TIME.update()) {
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



void WEBSERIAL_MENU() {
  WebSerial.println("Enter your selection: ");
  WebSerial.println("");
  WebSerial.println("");
  WebSerial.println("--------------------");
  WebSerial.println("1. Who are the Badge Pirates?");
  WebSerial.println("2. Badge Overview");
  WebSerial.println("3. Next steps");
  WebSerial.println("--------------------");
}

void loop() {

dnsServer.processNextRequest();

if (FIRSTBOOT == 1) {
  WEBSERIAL_MENU();
  FIRSTBOOT = 0;
  BTNPRESSED = 0;
}


if (idx == sizeof(WEBTEXT)) {
  idx = 0;
}

if (WEBTEXTSCROLL_TIME.update()) {
  WebSerial.println(WEBTEXT[idx]);
  idx++;

}


   if (BTNLEFT_TIME.update()) {
   int BTNLEFTVAL = touchRead(BTNLEFT);
    if (BTNLEFTVAL < BTNTHRESHOLD) { Serial.print("Left Press: "); Serial.println(BTNLEFTVAL); BTNPRESSED = 1; }
   }
   
   if (BTNRIGHT_TIME.update()) {
   int BTNRIGHTVAL = touchRead(BTNRIGHT);
    if (BTNRIGHTVAL < BTNTHRESHOLD) { Serial.print("Right Press: "); Serial.println(BTNRIGHTVAL); BTNPRESSED = 1; }
   }
   
   if (BTNUP_TIME.update()) {
   int BTNUPVAL = touchRead(BTNUP);
    if (BTNUPVAL < BTNTHRESHOLD) { Serial.print("Up Press: "); Serial.println(BTNUPVAL); BTNPRESSED = 1; }
   }
   
   if (BTNDOWN_TIME.update()) {
   int BTNDOWNVAL = touchRead(BTNDOWN);
    if (BTNDOWNVAL < BTNTHRESHOLD) { Serial.print("Down Press: "); Serial.println(BTNDOWNVAL); BTNPRESSED = 1; }
   }
   
   /* if (BTNMIDDLE_TIME.update()) {
   int BTNMIDDLEVAL = touchRead(BTNMIDDLE);
    if (BTNMIDDLEVAL < BTNTHRESHOLD) { Serial.print("Middle Press: "); Serial.println(BTNMIDDLEVAL); WebSerial.println("Middle Button Pressed"); }
   } */


if (WEBSERIAL_MENU_DISPLAY == 1) {
  WEBSERIAL_MENU();
}

if (WEBSERIAL_DATA == "") {
  WEBSERIAL_MENU_DISPLAY = 0;
}


/*

switch (WEBSERIAL_DATA.toInt()) {
  case 1:
    WebSerial.println("We are the Badge Pirates");
    WEBSERIAL_DATA = "";
    WEBSERIAL_MENU_DISPLAY = 1;
    break;
  case 2:
  WebSerial.println("The badge does things!");
  WEBSERIAL_DATA = "";
  WEBSERIAL_MENU_DISPLAY = 1;
    break;
  case 3:
   WebSerial.println("For more information please contact us at sales@badgepirates.com");
   WEBSERIAL_DATA = "";
   WEBSERIAL_MENU_DISPLAY = 1;
    break;
  default:
    break;
}


*/


// Semi Random LED blinking pattern

if (BTNPRESSED == 1) {
  digitalWrite(LED1, (millis() / 1000) % 2);
  digitalWrite(LED2, (millis() / 1000) % 3);
  digitalWrite(LED3, (millis() / 1000) % 5);
  digitalWrite(LED4, (millis() / 1000) % 7);
  }

//Rest Button pressed value check
BTNPRESSED = 0;

}
