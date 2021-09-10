# Java server

### Setup
Install maven wrapper
```
mvn -N io.takari:maven:0.7.7:wrapper
```
maven wrapper [See more](https://github.com/takari/maven-wrapper.git)

### Build file .jar
- If you are running on operate system window, open commandline direct to this project folder and run
```
mvnw.cmd clean install 
```
- If you are running on operate system linux, open commandline direct to this folder project and run
```
./mvnw clean install 
```

### Run project
```
java -jar target/preview-mpp-java-server.jar
```
