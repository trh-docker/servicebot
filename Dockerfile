FROM quay.io/spivegin/nodejsyarn

# https://github.com/service-bot/servicebot.git

WORKDIR /opt/tlm/

RUN git clone https://github.com/service-bot/servicebot.git . &&\
    npm install && npm run-script build
CMD [ "npm", "run-script", "start" ]