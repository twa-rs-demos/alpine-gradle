# alpine-gradle

## 作用
制作包含思沃学院考试系统 **Java** 技术栈题目所依赖 jar 包的镜像

## 步骤
```shell

$ git clone https://github.com/twa-rs-demos/alpine-gradle.git
$ cd alpine-gradle
$ docker build  -t afaren/alpine-gradle:<tag> . 
$ docker run -td --name alpine-gradle afaren/alpine-gradle:<tag> bash -c 'tail -f /dev/null'
$ docker cp exam-directory alpine-gradle:/var/test-directory
$ docker exec -i alpine-gradle bash -c 'cd /var/test-directory && gradle build'
$ docker commit alpine-gradle afaren/alpine-gradle:<new-tag>  # commit cached dependencies
$ docker push afaren/alpine-gradle:<new-tag> 
```

