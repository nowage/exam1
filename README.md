# dockerfiles-centos-user-adderable
Nginx install

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t nowage/nginx .
	docker run -d --name n1 -p 8888:80 nowage/nginx
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        nowage/nginx      "/bin/bash"         7 seconds ago       Up 6 seconds                            n1
```

To test, ("nowage" is username. )
```
	open 127.0.0.1:8888
```
To Rollback
```
    docker rm n1 -f
    docker rmi nowage/nginx
```

## Usage
```
root@u1:/home/ubuntu# docker build --rm -t nowage/nginx .
unable to prepare context: unable to evaluate symlinks in Dockerfile path: lstat /home/ubuntu/Dockerfile: no such file or directory
root@u1:/home/ubuntu# cd exam1/
root@u1:/home/ubuntu/exam1# docker build --rm -t nowage/nginx .
Sending build context to Docker daemon  63.49kB
Step 1/6 : FROM ubuntu
latest: Pulling from library/ubuntu
d51af753c3d3: Pull complete 
fc878cd0a91c: Pull complete 
6154df8ff988: Pull complete 
fee5db0ff82f: Pull complete 
Digest: sha256:747d2dbbaaee995098c9792d99bd333c6783ce56150d1b11e333bbceed5c54d7
Status: Downloaded newer image for ubuntu:latest
 ---> 1d622ef86b13
Step 2/6 : COPY ./install.sh /
 ---> ecca7a826800
Step 3/6 : RUN chmod 755 /install.sh
 ---> Running in bc640645c402
Removing intermediate container bc640645c402
 ---> 1599473934a0
Step 4/6 : RUN /install.sh
 ---> Running in d2dd835a6d04

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Get:1 http://security.ubuntu.com/ubuntu focal-security InRelease [107 kB]
Get:2 http://archive.ubuntu.com/ubuntu focal InRelease [265 kB]
Get:3 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [4673 B]
Get:4 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [8273 B]
Get:5 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [60.9 kB]
Get:6 http://archive.ubuntu.com/ubuntu focal-updates InRelease [107 kB]
Get:7 http://archive.ubuntu.com/ubuntu focal-backports InRelease [98.3 kB]
Get:8 http://archive.ubuntu.com/ubuntu focal/restricted amd64 Packages [33.4 kB]
Get:9 http://archive.ubuntu.com/ubuntu focal/universe amd64 Packages [11.3 MB]
```
