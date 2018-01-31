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
  && rm -fr /tmp/Mosquitto-PHP \

# Install the prerequisites for OpenZWave
  && cd /tmp \
  && wget -q https://github.com/jeedom/plugin-openzwave/archive/3.1.zip \
  && unzip -q 3.1.zip \
  && cd plugin-openzwave-3.1/resources \
  && chmod 755 install_apt.sh \
  && mkdir -p /tmp/jeedom/openzwave/ \
  && ./install_apt.sh \
  && rm -fr /tmp/plugin-openzwave-3.1
