FROM napnap75/rpi-jeedom:latest

# Install the prerequisites for OpenZWave
RUN cd /tmp \
  && wget -q https://github.com/jeedom/plugin-openzwave/archive/stable.zip \
  && unzip -q stable.zip \
  && cd plugin-openzwave-stable/resources \
  && chmod 755 install_apt.sh \
  && mkdir -p /tmp/jeedom/openzwave/ \
  && ./install_apt.sh \
  && cd /tmp \
  && rm -fr /tmp/plugin-openzwave-stable
