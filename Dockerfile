FROM frolvlad/alpine-oraclejdk8:slim
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN ls -al
RUN ./gradlew build
RUN sh -c 'touch build/libs/alademo-0.0.1-SNAPSHOT.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar build/libs/alademo-0.0.1-SNAPSHOT.jar" ]
