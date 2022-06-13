/*
 Basic ESP8266 MQTT example
 This sketch demonstrates the capabilities of the pubsub library in combination
 with the ESP8266 board/library.
 It connects to an MQTT server then:
  - publishes "hello world" to the topic "Raspberry/Sensor/Sensor_1" every two seconds
  - subscribes to the topic "Raspberry/Luz/Luz_1", printing out any messages
    it receives. NB - it assumes the received payloads are strings not binary
  - If the first character of the topic "Raspberry/Luz/Luz_1" is an 1, switch ON the ESP Led,
    else switch it off
 It will reconnect to the server if the connection is lost using a blocking
 reconnect function. See the 'mqtt_reconnect_nonblocking' example for how to
 achieve the same result without blocking the main loop.
 To install the ESP8266 board, (using Arduino 1.6.4+):
  - Add the following 3rd party board manager under "File -> Preferences -> Additional Boards Manager URLs":
       http://arduino.esp8266.com/stable/package_esp8266com_index.json
  - Open the "Tools -> Board -> Board Manager" and click install for the ESP8266"
  - Select your ESP8266 in "Tools -> Board"
*/

#include <ESP8266WiFi.h>
#include <PubSubClient.h>
//...................................
#define LEDPin   4  // PIN D2 - GPIO4
//...................................
// BUILTIN_LED   POR D4
// LED instalado en pin D2
//...................................

int PWM_value = 0;

// Update these with values suitable for your network.
const char* ssid = "Cerdas Fonseca";
const char* password = "antonio8";
const char* mqtt_server = "192.168.100.16";

WiFiClient espClient;
PubSubClient client(espClient);
unsigned long lastMsg = 0;
#define MSG_BUFFER_SIZE  (50)
char msg[MSG_BUFFER_SIZE];
int value = 0;

void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Mensaje Recibido [");
  Serial.print(topic);
  Serial.print("] ");
  
  Serial.print("***");
  Serial.print("***");
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  Serial.print("***");
  Serial.print("***");
  
  Serial.println();

  //...................................
  //...................................
  // converts the payload to an integer, to use it for controlling PWM
  
  payload[length] = '\0'; // Add a NULL to the end of the char* to make it a string.
  int PWM_value = atoi((char *)payload);

  // prints the PWM value
  
  Serial.println();
  Serial.print("***");
  Serial.println();
  Serial.print("PWM_value: ");
  Serial.print(PWM_value);
  Serial.println();
  Serial.print("***");
  Serial.println();

  analogWrite(LEDPin, PWM_value);
  delay(1);

// To toggle on off 
//  if ((char)payload[0] == '1') {
//    digitalWrite(LEDPin, HIGH); Turn the LED off by making the voltage HIGH
//  } else {
//    digitalWrite(LEDPin, LOW);  // Turn the LED off by making the voltage LOW
//  }

  //...................................
  //...................................

}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str())) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      
      //client.publish("Raspberry/Sensor/Sensor_1", "Sensor Temperatura");
      //client.publish("Raspberry/Sensor/Sensor_2", "Sensor Temperatura");
      
      // ... and resubscribe
      client.subscribe("Raspberry/Luz/Luz_1");
      client.subscribe("Raspberry/Luz/LuzPWM_1");
      //client.subscribe("Raspberry/Luz/Luz_2");
      
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void setup() {
  //...................................
  //...................................
  pinMode(LEDPin, OUTPUT);     // Initialize the D2 pin as an output
  //...................................
  //...................................
  
  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
}

void loop() {

  if (!client.connected()) {
    reconnect();
  }
  client.loop();

  //temperature simulation for example purposes only
//  unsigned long now = millis();
//  if (now - lastMsg > 5000) {
    //lastMsg = now;
    //++value;
    //snprintf (msg, MSG_BUFFER_SIZE, "Sensor Temperatura #%ld", value);
    //Serial.print("Publish message: ");
    //Serial.println(msg);
    //client.publish("Raspberry/Sensor/Sensor_1", msg);
    //client.publish("Raspberry/Sensor/Sensor_2", msg);
  }
}
