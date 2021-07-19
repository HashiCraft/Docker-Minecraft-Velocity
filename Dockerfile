FROM openjdk:11

WORKDIR /velocity

RUN wget https://versions.velocitypowered.com/download/3.0.0.jar \
  -O /velocity/velocity.jar

COPY ./velocity.toml /velocity/velocity.toml
COPY ./entrypoint.sh /entrypoint.sh

ENV JAVA_MEMORY 1G

ENTRYPOINT [ "/entrypoint.sh" ]