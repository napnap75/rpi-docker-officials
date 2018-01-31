FROM napnap75/rpi-jeedom:latest

# Install the prerequisites for MQTT
RUN apt-get install -y libmosquitto-dev \
  && cd /tmp \
  && git clone https://github.com/mgdm/Mosquitto-PHP \
  && cd Mosquitto-PHP \
  && phpize7.0 \
  && ./configure \
  && make \
  && make install \
  && rm -fr /tmp/Mosquitto-PHP
