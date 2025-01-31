# Playing around with Linux 🐧 & Docker 🐳 CLI 

![Linux CLI](./images/linuxCLI.png)

## building img
docker build -t app_name .

## running docker img
docker run -it app_name sh

## install
docker pull ubuntu or docker run ubuntu

## check if running status
docker ps

## check if pulled is success
docker ps -a

## run the img 
docker run -it ubuntu

## update the list
apt update

## get the list
apt list

## install or remove
apt install or remove nano

## inspection of docker file
docker inspect nikkiaung/aiintegratedcoffeeshopapp3:latest

## failed to pull image: no matching manifest for linux/amd64 in the manifest list entries, worker is ready
docker buildx build --platform linux/amd64,linux/arm64 -t nikkiaung/aiintegratedcoffeeshopapp3:latest --push .

## docker login and use generate token
docker login -u nikkiaung

## find hidden files
find -type d
find -type f

## To find with file name
find -type f -name "h*" or "*.txt"

## To search across multiple files or a directory, you can use:
grep "search_term" *.txt or filename.txt

## Or to search recursively through directories:
grep -r "search_term" /path/to/directory

## interesting linix CLI
 ";" is for multi CLI
 "&&", "||", ls | sorted -r "|" is for result making

## To Create User
useradd -m mgmg

## Check the created pfp
cat /etc/passwd

## checked as admin
cat /etc/shadow

## modify
usermod -s /bin/bash/ mgmg

## del
userdel -f filename

## entering wth created user 
docker exec -it -u kyawkyaw _id_ bash

## creating GP
groupadd internship

## check gp
groups user_name

## adding someone to gp
usermod -G group_name user_name

## Permission explanation 
#### [ File Type ] [ Owner ] [ Group ] [ Others ]
-rwxr--r-x

## **Note** Diff between CMD & ENTRY POINT
CMD is used for default CL, can override while
ENTRY POINT force the CL


## LAYER VERY IMPORT IN DOCKER
COPY package*.json . -> monitoring the changes json
```bash
if *.json chages:
    RUN npm install (reinstall)
else:
    Use from cache
```

