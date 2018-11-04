# WinterCoding



### aws서버 배포
프로젝트 접속 URL : http://54.180.88.205:8080/WinterCoding/home

### 개발환경
SpringBoot, mysql, Java, Javascript, CSS, HTML5, Vue.js, AWS

### 　

## linux 기준 웹서버 실행 및 빌드 방법
>
### 1.tomcat 설치 및 실행

### 2.mysql 설치 및 접속

database 생성
```bash
create database wintercoding
```

table 생성 
```bash
create table todo(no int(11) primary key auto_increment, title varchar(45) not null, content varchar(4000), position int(11) not null, duedate datetime, complete varchar(45) );
```
 
### 3.war or jar파일 tomcat의 webapps에 배포

 war 실행
 ```bash
 java -jar war파일명.war
 ```
 
 jar 실행
 ```bash
 java -jar jar파일명.jar
 ```

### 4.해당 port로 URL접속 
