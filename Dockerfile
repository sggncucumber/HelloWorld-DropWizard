FROM dockerfile/java:openjdk-7-jdk

ADD HelloWorldProj-0.0.1-SNAPSHOT.jar /target/HelloWorldProj-0.0.1-SNAPSHOT.jar

ADD hello-world.yml /target/hello-world.yml

CMD java -jar HelloWorldProj-0.0.1-SNAPSHOT.jar server /target/hello-world.yml

EXPOSE 8080