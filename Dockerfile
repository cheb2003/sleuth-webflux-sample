FROM openjdk:11-jre-slim
VOLUME /tmp
ARG JAR_FILE
RUN mkdir /config
COPY ${JAR_FILE} app.jar
ENTRYPOINT java  -jar -Duser.timezone=GMT+08 /app.jar