FROM gino8070/aws-codebuild-custom-std:2.0

ENV SONAR_HOME /opt/sonar-scanner
ENV SONAR_VER sonar-scanner-cli-4.0.0.1744-linux

RUN apt-get update && \
    apt-get install --no-install-recommends -y wget unzip && \
    cd /tmp && \
    wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/${SONAR_VER}.zip && \
    unzip ${SONAR_VER}.zip && rm ${SONAR_VER}.zip && \
    mv sonar-scanner-*-linux $SONAR_HOME

ENV PATH $PATH:$SONAR_HOME/bin
