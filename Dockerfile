# Pulls java 8 image
FROM java:8
# Copies the current (.) directory files from host to / directory in containers
COPY . /
# Make "/" as working directory in Container
WORKDIR /  
# Running java compiler to .java file
RUN javac DockerConnectMySQL.java
# Starts application while starting the container
CMD ["java", "-classpath", "mysql-connector-java-5.1.6-bin.jar:.","DockerConnectMySQL"]
