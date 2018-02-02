FROM napnap75/rpi-jeedom:latest

# Install the prerequisites for MQTT
RUN apt-get install -y mosquitto mosquitto-clients libmosquitto-dev \
  && pecl install Mosquitto-beta \
  && echo "extension=mosquitto.so" > /etc/php/7.0/mods-available/mosquitto.ini \
  && phpenmod mosquitto
