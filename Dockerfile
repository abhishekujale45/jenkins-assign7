FROM openjdk:28-ea-trixie

RUN javac Main.java

CMD ["java","Main.java"]
