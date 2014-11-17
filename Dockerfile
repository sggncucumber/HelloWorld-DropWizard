FROM centos

RUN yum -y install java-1.7.0-openjdk-devel.x86_64 

ADD target/HelloWorldProj-0.0.1-SNAPSHOT.jar /
ADD hello-world.yml /

CMD ["java", "-jar", "HelloWorldProj-0.0.1-SNAPSHOT.jar", "server", "hello-world.yml"]

EXPOSE 8080
