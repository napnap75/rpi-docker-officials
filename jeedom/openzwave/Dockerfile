FROM napnap75/rpi-jeedom:latest

# Install the prerequisites for OpenZWave
RUN cd /tmp \
  && wget https://github.com/jeedom/plugin-openzwave/archive/stable.zip \
  && unzip stable.zip \
  && cd plugin-openzwave/resources \
  && mkdir -p /tmp/jeedom/openzwave/ \
  && ./install_apt.sh \
  && rm install_apt.sh
