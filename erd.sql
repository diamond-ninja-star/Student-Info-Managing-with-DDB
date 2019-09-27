DROP TABLE adminPanel CASCADE CONSTRAINTS;
DROP TABLE teacherPanel CASCADE CONSTRAINTS;
DROP TABLE subjectPanel CASCADE CONSTRAINTS;
DROP TABLE classPanel CASCADE CONSTRAINTS;
DROP TABLE studentPanel CASCADE CONSTRAINTS;
DROP TABLE marksPanel CASCADE CONSTRAINTS;

CREATE TABLE adminPanel
(
adminId INT,
adminPass VARCHAR(255) ,
adminName VARCHAR(255) ,
adminMob VARCHAR(255)
);
 
CREATE TABLE teacherPanel
(
teacherId INT,
teacherPass VARCHAR(255),
teacherName VARCHAR(255),
teacherMob VARCHAR(255)
);
 
CREATE TABLE subjectPanel
(
subjectId INT,
subjectName VARCHAR(255),
teacherId INT
);
 
CREATE TABLE classPanel
(
classId INT,
subjectId INT
);
 
CREATE TABLE studentPanel
(
studentId INT,
studentPass VARCHAR(255),
studentName VARCHAR(255),
studentMob VARCHAR(255),
classId INT
);
 
CREATE TABLE marksPanel
(
studentId INT,
subjectId INT,
marks INT
);

/*BOTH*/
INSERT INTO adminPanel VALUES(1,'1','adrian','1');

/*HOST*/
INSERT INTO teacherPanel VALUES(1,'1','alex','1');
/*SITE*/
INSERT INTO teacherPanel VALUES(2,'2','buck','2');

/*HOST*/
INSERT INTO subjectPanel VALUES(1,'BANGLA',1);	
INSERT INTO subjectPanel VALUES(2,'ENGLISH',1);	
/*SITE*/
INSERT INTO subjectPanel VALUES(1,'BANGLA',2);	
INSERT INTO subjectPanel VALUES(2,'ENGLISH',2);	

/*BOTH*/
INSERT INTO classPanel VALUES(1,1);	
INSERT INTO classPanel VALUES(1,2);	

/*HOST*/
INSERT INTO studentPanel VALUES(1,'1','robert','1',1);
/*SITE*/
INSERT INTO studentPanel VALUES(2,'2','stein','2',1);

/*HOST*/
INSERT INTO marksPanel VALUES(1,1,90);
INSERT INTO marksPanel VALUES(1,2,80);
/*SITE*/
INSERT INTO marksPanel VALUES(2,1,95);
INSERT INTO marksPanel VALUES(2,2,85);

