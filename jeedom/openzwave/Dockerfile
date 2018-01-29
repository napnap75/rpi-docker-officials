FROM napnap75/rpi-jeedom:latest

# Install the prerequisites for OpenZWave
RUN cd /tmp \
  && wget -q https://github.com/jeedom/plugin-openzwave/archive/3.1.zip \
  && unzip -q 3.1.zip \
  && cd plugin-openzwave-3.1/resources \
  && chmod 755 install_apt.sh \
  && mkdir -p /tmp/jeedom/openzwave/ \
  && ./install_apt.sh \
  && cd /tmp \
  && rm -fr /tmp/plugin-openzwave-3.1
