# App start java server and table service

### Project 
Add project into this folder to start
- [preview-mpp-java-server](https://github.com/tunghoang/preview-mpp-java-server.git)
- [table-renderer-service](https://github.com/trung24012001/table-renderer-service.git)

### Build image docker
```
docker build -t app-start .
```

### Run app
```
docker run -p8080:8080 -p8081:8081 app-start
```
