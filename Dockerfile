FROM adoptopenjdk/openjdk11:alpine-jre

ARG JAR_FILE=target/calculator.jar

WORKDIR /opt/app

COPY ${JAR_FILE} calculator.jar

#COPY entrypoint.sh entrypoint.sh

RUN chmod 755 entrypoint.sh

ENTRYPOINT ["sh", "-c", "echo 'The app is starting ...' && exec java -jar -Dspring.profiles.active=dev calculator.jar"]