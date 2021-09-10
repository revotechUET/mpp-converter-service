FROM node:12
RUN apt-get update && apt-get install -y openjdk-8-jdk \
    && apt-get install -y maven
WORKDIR /usr/java-server
COPY preview-mpp-java-server/src ./src
COPY preview-mpp-java-server/pom.xml pom.xml
RUN mvn clean install

WORKDIR ../table-service
COPY  table-renderer-service/package*.json ./
RUN npm install
COPY table-renderer-service/src ./src
COPY table-renderer-service/dist ./dist

WORKDIR ../../
COPY package*.json ./
RUN npm install
COPY src/index.js ./src/index.js
CMD node src/index.js