FROM quay.io/spivegin/nodejsyarn

# https://github.com/service-bot/servicebot.git

WORKDIR /opt/tlm/

RUN git clone https://github.com/service-bot/servicebot.git . &&\
    npm install && npm run-script build &&\
    apt-get autoclean && apt-get autoremove &&\
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*    
CMD [ "npm", "run-script", "start" ]