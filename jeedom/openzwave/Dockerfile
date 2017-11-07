FROM napnap75/rpi-jeedom:latest

# Install the prerequisites for OpenZWave
RUN cd /tmp \
  && wget https://raw.githubusercontent.com/jeedom/plugin-openzwave/stable/resources/install_apt.sh \
  && chmod 755 install_apt.sh \
  && mkdir -p /tmp/jeedom/openzwave/ \
  && ./install_apt.sh \
  && rm install_apt.sh
