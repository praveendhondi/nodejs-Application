# nodejs-Application
If in EC2

Prerequisities of Jenkins Java 
and install docker
docker compose
nginx


Go to Amazaon console
choose Linux
Type  of instance
No of Machine
storage
Tag
Security Ports
Review and Launch

if it is by cli in aws we can use access keys and secret keys
if it is by roles cli without credentials also we can run


install Docker and check version like 19.03 by docker --version and docke compose
java and jenkins and nginx



go to Jenkins
manage plugin
install Dockerfile
Github
Nodejs
pipeline plugin
 go to available in jnekins
 install plugin
 
 
 create a new job for creating 
 freestyle
 click ok
 click on Github project and source code
 select Git
 Provide URL
 Branch Name ...
 
 select Build Triggers section
 check the github trigger Git scm polling
 Go to Build Environment
 Provise node& npm bin/folder path
 nodejs application save and Apply
 
 Go to Globsltool
 configuration
 look for nodejs
 install the version
 save and apply
 
 Go to build section
 
Add Build section
Add build step
execute shell
npm instll
npm test



CD

goto Dockerhub account
create repo
To integrate dockerhub to Jenkins
install plugin
manage jenkins
manage credentials system
Global credentials
Go to system
credentials
Add Dockerhub credentials



create new Job
add newitiam
freestyle
Ok
Go to General section
Github project
go to Build trigger
slect after other Prject 
docker-intergate
select trigger
In the pipeline section we will section we will creating script to create docker image
deploy
save and Apply



pipeline {
    environment {
    registry = "naistangz/docker_automation"
    registryCredential = 'dockerhub'
    dockerImage = ''
    }

    agent any
    stages {
            stage('Cloning our Git') {
                steps {
                git 'git@github.com:naistangz/Docker_Jenkins_Pipeline.git'
                }
            }
    agent any
    stage {
           stage(‘SCM’) {

                echo "Git .. "
}
             stage(‘build && SonarQube analysis’) {

            SonarQubeEnv('SonarNET') {
         sh 'npm install -U -DskipTests -f my-package/properties file sonar:sonar'   
    }

            stage('Building Docker Image') {
                steps {
                    script {
                        dockerImage = docker.build registry + ":$BUILD_NUMBER"
                    }
                }
            }

            stage('Deploying Docker Image to Dockerhub') {
                steps {
                    script {
                        docker.withRegistry('', registryCredential) {
                        dockerImage.push()
                        }
                    }
                }
            }

            we can pull the container from Docker hub
            Docker pull container
            docker run --name image
            
            And create Dockerfile
            
            
         vi Dockerfile
         FROM node
         MAINTAINER nodejs
         WORKDIR /usr/src/app
         RUN npm install                 
         COPY ' '
         EXPOSE 3000
         CMD ["nodejs"]
         
         On top of container to create image from Docker file
         Docker build -t imagename .
         
         Docker images
         
         
         
         
         TMP_ARG="$"
          ENVNAME="$(TMP_ARG:-DEV)"
         echo building for $ENVNAME

         ng build -t nodejs -f Dockerfile.local

         if [$ -gt]
          then
          echo "pushing to remote repo";
          docker tag image
          docker pushing image


          npm config set proxy .......
          npm config set https-proxy http..
          npm install
          npm install -gt
          ng build
          docker build -t -f Dockerfile
          
          
          Docker build
          TMP_ARG="$"
          ENVNAME="$(TMP_ARG:-DEV)"
          echo building for $ENVNAME

          ng build -t nodejs -f Dockerfile.local

          if [$ -gt]
          then
          echo "pushing to remote repo";
          docker tag image
          docker pushing image
          
          docker compose.yml

          version: "3.7"
          services
          app
         image: nexus dependencies
          deploy:
          restart-policy
          condition: on failure
          max-attempts:3
          windows: 120s
        volumes
        -/home/jioapp/log/
         ports
	      -8080:8080
	       working_dir/apps
	 
	                                         or
        Dockerfile

        FROM devopsartifact...
         ADD target/restful-web services
         CMD ("java.xms256m")
         expose 8080
                                              or

          version: "3"
           services:
           nodejs
          image:
         restart: 'unless stoped"
           ports:
         logging:
          driver
          options:
         Max size 100m
          file 3
                                             or


        vi compose.yml

          ---
         Version: '3'
         services:
          nodejs
         image: nodejs
          ports:
        -3000:3000
  
      mongodb
       image: data/db
      ports:
      27017:27017
       links:
      data/db
      mongodb


       mydb
     image: mysql
      -ports:
     3306:3306
     environment:
      mysql_Root_password: ....

       ...

      docker-compose up -d
      docker container ls

     version: '3'
     services:
     my-mongoDB:
      image: mongo:latest
     volumes:
     - db-data:/data/db
      - mongo-config:/data/configdb
 
       volumes:
      db-data:
       mongo-config:


      we can pull the nginx from docker registry
      and can create doker container and after that
      image
      
      
   .......
         
         
         
         
         
         
         
         
         
         
         
         
         
         

