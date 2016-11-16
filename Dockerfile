FROM quay.octanner.io/base/oct-java:8-oraclejdk
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN ls -al /bin/bash
RUN ./gradlew build
RUN sh -c 'touch build/libs/alademo-0.0.1-SNAPSHOT.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar build/libs/alademo-0.0.1-SNAPSHOT.jar" ]
