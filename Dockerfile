FROM quay.io/spivegin/nodejsyarn

# https://github.com/service-bot/servicebot.git

WORKDIR /usr/src/app

RUN git clone https://github.com/service-bot/servicebot.git . &&\
    git checkout tags/v0.11.163 &&\
    git checkout -b deploy &&\
    # npm install && npm run-script build &&\
    yarn && yarn run build &&\
    apt-get autoclean && apt-get autoremove &&\
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

CMD [ "npm", "run-script", "start" ]