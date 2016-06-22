FROM node:argon

# create app directory
RUN mkdir -p /src/app
WORKDIR /src/app

COPY slack_bot.js /src/app/
COPY package.json /src/app/
COPY serviceAcount.json /src/app/
COPY lib /src/app/lib
RUN cd /src/app/ && npm install

#set startup commands
CMD ["node", "slack_bot"]
