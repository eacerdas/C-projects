#include <ESP8266WiFi.h>
#include <PubSubClient.h>
//...................................
#define LEDPin 4  // PIN D2 - GPIO4
//...................................
// BUILTIN_LED   POR D4
// LED instalado en pin D2
//...................................

int *payloadValue = 0;
int counter = 0;
int *manualMode = 0;
int brightness = 0;

// Update these with values suitable for your network.
const char* ssid = "Cerdas Fonseca";
const char* password = "antonio8";
const char* mqtt_server = "192.168.100.103";

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
  
  *payloadValue = atoi((char *)payload); //transforms the payload to an integer
 
  //change mode options -> 256 automatic, 257 manual
  
  if (*payloadValue == 256){
    *manualMode = 0; //automatic mode
  }
  else if (*payloadValue == 257){
    *manualMode = 1; //manual mode
  }
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


      // CREATES AND SUB TO NEW TOPICS

      // MCU1:
      //client.subscribe("Raspberry/Luz/Modo_Luz_1");
      //client.subscribe("Raspberry/Luz/LuzPWM_1");
      
      // MCU2:
      client.subscribe("Raspberry/Luz/Modo_Luz_2");
      client.subscribe("Raspberry/Luz/LuzPWM_2");

      // MCU n:
      //client.subscribe("Raspberry/Luz/Modo_Luz_n");
      //client.subscribe("Raspberry/Luz/LuzPWM_n");
      
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void operation_mode(int *manualMode, int *payloadValue){
  
  if (*manualMode == 0){ // AUTOMATIC MODE
    
    //////////////////////////////////////////////////////////////
    // MODIFY THIS PART TO CHANGE THE BEHAVIOR OF THE AUTO MODE //
    //////////////////////////////////////////////////////////////
    
    if (counter <= 255){ //INCREASES THE BRIGHTNESS -> MAX
      counter = counter + 1;
      analogWrite(LEDPin, counter);
    }
    else{ // WHEN BRIGHTNESS MAX -> STARTS AGAIN FROM 0
      counter = 0;
      analogWrite(LEDPin, counter);
    }    
  }
    //////////////////////////////////////////////////////////////
    // MODIFY THIS PART TO CHANGE THE BEHAVIOR OF THE AUTO MODE //
    //////////////////////////////////////////////////////////////
  
  if (*manualMode == 1){ // MANUAL MODE
    counter = 0;
    if ((*payloadValue >= 0) & (*payloadValue <= 255)){
      brightness = *payloadValue;
      analogWrite(LEDPin, brightness);
    }
  } 
}

void setup() {
  manualMode = (int *) malloc(sizeof(int)*1);
  payloadValue = (int *) malloc(sizeof(int)*1);
  
  //...................................
  pinMode(LEDPin, OUTPUT);     // Initialize the D2 pin as an output
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
  
  operation_mode(manualMode, payloadValue); /// operates either in manual or automatic mode, depending on the user's selection
  
  delay(5);
}
