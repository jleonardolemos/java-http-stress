FROM ubuntu:latest

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp

RUN apt update
RUN apt install -y openjdk-8-jdk wget

RUN wget https://github.com/simplesteph/ec2-masterclass-sampleapp/releases/download/v1.0/ec2-masterclass-sample-app.jar

CMD ["java", "-Xmx700m", "-jar", "ec2-masterclass-sample-app.jar" ]
