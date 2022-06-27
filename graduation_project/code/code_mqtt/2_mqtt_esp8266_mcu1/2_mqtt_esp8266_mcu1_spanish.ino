#include <ESP8266WiFi.h>
#include <PubSubClient.h>

#define LEDPin   4  // PIN D2 - GPIO4

int *payloadValue = 0;
int counter = 0;
int *manualMode = 0;
int brightness = 0;

const char* ssid = "nombre de la red";
const char* password = "contraseña de la red";
const char* mqtt_server = "IP del bróker";

WiFiClient espClient;
PubSubClient client(espClient);
unsigned long lastMsg = 0;
#define MSG_BUFFER_SIZE  (50)
char msg[MSG_BUFFER_SIZE];
int value = 0;

void setup_wifi() {

  delay(10);
  Serial.println();
  Serial.print("Conectandose a ");
  Serial.println(ssid);

  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());
  Serial.println("");
  Serial.println("WiFi conectado");
  Serial.println("Dirección IP: ");
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

  // convierte el valor recibido a un numero entero y luego lo imprime en consola
  payload[length] = '\0'; // Add a NULL to the end of the char* to make it a string.
  *payloadValue = atoi((char *)payload); //transforms the payload as an integer

  Serial.println();
  Serial.print("***");
  Serial.println();
  Serial.print("Payload value: ");
  Serial.print(*payloadValue);
  Serial.println();
  Serial.print("***");
  Serial.println();

  opciones -> 256 automatico, 257 manual
  
  if (*payloadValue == 256){
    *manualMode = 0; //automatico
  }
  else if (*payloadValue == 257){
    *manualMode = 1; //manual
  }
}

void reconnect() {
  // Loop hasta que se reconecte
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // creando ID aleatorio
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Intentando conectar
    if (client.connect(clientId.c_str())) {
      Serial.println("conectado");

      //se crean los temas y se suscribe a ellos

      //mcu1:
      client.subscribe("Raspberry/Luz/Modo_Luz_1");
      client.subscribe("Raspberry/Luz/LuzPWM_1");

      //mcu2: 
      //client.subscribe("Raspberry/Luz/Modo_Luz_1");
      //client.subscribe("Raspberry/Luz/LuzPWM_1");

    } else {
      Serial.print("fallido, rc=");
      Serial.print(client.state());
      Serial.println(" intentando de nuevo en 5 segundos");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

//función que define el modo de control -> manual o automatico
//dependiendo del valor que llegue al broker 
void operation_mode(int *manualMode, int *payloadValue){
  
  if (*manualMode == 0){ //auto mode
    if (counter <= 255){
      counter = counter + 1;
      analogWrite(LEDPin, counter);
    }
    else{
      counter = 0;
      analogWrite(LEDPin, counter);
    }    
  }
  
  if (*manualMode == 1){
    counter = 0;
    if ((*payloadValue >= 0) & (*payloadValue <= 255)){
      brightness = *payloadValue;
      analogWrite(LEDPin, brightness);
    }
  } 
}

//
void setup() {
  //se reserva memoria para los punteros
  manualMode = (int *) malloc(sizeof(int)*1);
  payloadValue = (int *) malloc(sizeof(int)*1);

  // se define el pin como salida
  pinMode(LEDPin, OUTPUT);

  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
}

//loop infinito
void loop() {
  
  if (!client.connected()) {
    reconnect();
  }
  
  client.loop();
  
  // operates either in manual or automatic mode, depending on the user's selection
  operation_mode(manualMode, payloadValue); 
  
  delay(5);
}
