FROM node:argon

# create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY slack_bot.js /usr/src/app/
COPY package.json /usr/src/app/
COPY serviceAcount.json /usr/src/app/
COPY lib /usr/src/app/lib
RUN cd /usr/src/app/ && npm install

#set startup commands
CMD ["node", "slack_bot"]
