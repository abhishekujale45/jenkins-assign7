FROM openjdk:28-ea-trixie

COPY . .
RUN javac Main.java

CMD ["java","Main.java"]
