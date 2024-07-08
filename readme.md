# Jfrog Home Assignment Readme
## How to compile the project
1. Go to the root directory of the project
2. type
   ```
   ./mvnw package
   ```
## How to run the project
Once the project is compiled successfully.
run command 
```
docker build -t springpetlinic:latest
```
, so that a docker image will be created according to the Dockerfile preserved under the root directory of the project.
The Dockerfile only contains the running environment.
Once docker image is created, run command 
```
docker run -d -p 8080:8080 pring-petclinic:lastest
```
to start the service. Too see the logs inside the docker use the command
```
docker logs -f <ContainerId>
```
where the containerId is the one printed by ```docker run```

## How to automatically checkout docker image and run
There are 2 workfow files created for the CICD
 FileName        | Purpose           
| ------------------------ |:-------------|
| maven-build.yml          | This is used to build the package and do the unit test |
| docker-image.yml      | This is used to create the docker image. The task in docker-image.yml runs when manven-build.yml is completed. Furthermore, docker-image.yml uses springboot:buid-image to create the docker image and push the image to the jfrog repository ```kuangyiinterview.jfrog.io/kuangyizhu01-docker/spring-petclinic:3.3.0-SNAPSHOT```      |

To download the image run the following command 
```
docker pull kuangyiinterview.jfrog.io/kuangyizhu01-docker/spring-petclinic:3.3.0-SNAPSHOT
```
To run the docker image downloaded, use the following command
```
docker run -d -p 8080:8080 kuangyiinterview.jfrog.io/kuangyizhu01-docker/spring-petclinic:3.3.0-SNAPSHOT
```
## MISCS
For the Xray scan results in JSON you can find in the directory under project root.
```
Docker_spring-petclinic_version-3.3.0-SNAPSHOT_kuangyizhu@gmail.com_2024-07-08
```
