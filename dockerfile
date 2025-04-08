FROM openjdk:21
COPY ./src /app
WORKDIR /app
RUN javac Main.java
CMD ["java", "Main"]
