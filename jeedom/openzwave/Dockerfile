FROM napnap75/rpi-jeedom:latest

# Install the prerequisites from OpenZWave
RUN wget https://raw.githubusercontent.com/jeedom/plugin-openzwave/stable/resources/install_apt.sh \
  && chmod 755 install_apt.sh \
  && ./install_apt.sh \
  && rm install_apt.sh
  
