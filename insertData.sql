INSERT INTO STUDENTS VALUES(201633035,'han103903','한천오','컴퓨터과학','강원도 속초시','han103903@naver.com');

INSERT INTO PROFESSOR VALUES(001,'wjlee','이완주','AI학부','wjlee@yongin.ac.kr');

INSERT INTO COURSE VALUES('A001',01,3,'데이터베이스');

INSERT INTO teach VALUES ('A001',01,0001,2021,1,3,1,180,'lms.yongin');

INSERT INTO enroll VALUES (201633035,'A001',01,2021,1);

commit;