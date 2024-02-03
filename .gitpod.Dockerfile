FROM gitpod/workspace-full

USER gitpod


# Abfrage verfügbaren Java-Versionen: sdkman list java
# Amazon-Java: Corretto
RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 21.0.2-amzn  && \
    sdk default java 21.0.2-amzn "

# Programme installieren:
#   bc: Berkley Calculator
#   kafkacat: Kafka-CLI 
RUN sudo apt-get update && \
    sudo apt-get install -y bc && \
    sudo apt-get install -y kafkacat 

RUN echo "\nalias calc='bc -l'\n" >> /home/gitpod/.bashrc