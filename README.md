# WinterCoding

# aws서버 배포
프로젝트 접속 URL : http://54.180.88.205:8080/WinterCoding/home


# linux 기준 웹서버 실행 및 빌드 방법

1. tomcat 설치 및 시작

2. mysql 설치 및 접속

 2-1 데이터베이스생성
 create database wintercoding
 
 2-2 테이블 생성 
 create table todo(no int(11) primary key auto_increment, title varchar(45) not null, content varchar(4000), position int(11) not null, duedate datetime, complete varchar(45) );
 
3. war파일 tomcat/webapps에 배포

4. 실행
