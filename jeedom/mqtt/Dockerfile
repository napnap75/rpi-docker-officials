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
  && echo 'extension="mosquitto.so"' | tee -a /etc/php/7.0/apache2/php.ini \
  && cat /etc/php/7.0/apache2/php.ini \
  && rm -fr /tmp/Mosquitto-PHP
