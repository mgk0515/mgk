----------   사원 테이블  -------------
CREATE TABLE MEMBERS (
   MEM_ID   varchar2(30)      NOT NULL,
   MEM_PW   varchar2(30)  NOT NULL,
   MEM_NAME   varchar2(30)   NOT   NULL,
   MEM_PHONE   varchar2(30)   NOT   NULL,
   MEM_AREA  varchar2(20)      
);
select * from MEMBERS;

----------   기기 명 테이블   -------------
CREATE TABLE GIGI_NAMES (
   GIGI_NUM   NUMBER(20)      NOT NULL,
   GIGI_NAME   varchar2(30)      NOT NULL,
   GIGI_LOCATION_A   varchar2(20)   ,
   GIGI_LOCATION_B   varchar2(20)   ,
   GIGI_VOL   varchar2(30)      NOT   NULL,
   GIGI_TEMP   varchar2(30)      NOT   NULL,
   GIGI_HUM   varchar2(30)      NOT   NULL,
   GIGI_AREA   varchar2(20)   NOT   NULL,
   GIGI_COUNT   number(20)   NOT   NULL,
   GIGI_CHECK   DATE   NOT   NULL
);
select * from GIGI_NAMES;


----------   센서 데이터 수집 테이블   -------------
CREATE TABLE GIGI_SENSORS (
   GIGI_NAME   varchar2(30)      NOT NULL,
   GIGI_VOL   varchar2(30)      NOT   NULL,
   GIGI_TEMP   varchar2(30)      NOT   NULL,
   GIGI_HUM   varchar2(30)      NOT   NULL,
   GIGI_AREA   varchar2(20)      NOT   NULL,
   GIGI_CHECK   DATE,
   GIGI_DATE   DATE      NOT NULL
);
select * from GIGI_SENSORS;

----------   게시판 테이블   -------------
CREATE TABLE COMPLAINTS (
   COM_NUM   NUMBER(20)      NOT NULL,
   GIGI_NAME   varchar2(30)      ,
   COM_TITLE   varchar2(30)   NOT   NULL,
   COM_CONTENTS   varchar2(300)   NOT   NULL,
   COM_CONTACT  varchar2(30),
   COM_DATE   DATE   NOT   NULL
);
select * from COMPLAINTS;

----------  제약조건   -------------

ALTER TABLE MEMBERS ADD CONSTRAINT PK_MEMBERS PRIMARY KEY (
   MEM_NUM
);

ALTER TABLE GIGI_SENSORS ADD CONSTRAINT PK_GIGI_SENSORS PRIMARY KEY (
   GIGI_NUM
);

ALTER TABLE COMPLAINTS ADD CONSTRAINT PK_COMPLAINTS PRIMARY KEY (
   COM_NUM
);


ALTER TABLE GIGI_NAMES ADD CONSTRAINT PK_GIGI_NAMES PRIMARY KEY (
   GIGI_NAME
);

ALTER TABLE GIGI_SENSORS ADD CONSTRAINT GIGI_SENSORS_1 FOREIGN KEY (
   GIGI_NAME
)
REFERENCES GIGI_NAMES (
   GIGI_NAME
);




----------   민원 게시판 목록 시퀀스   -------------
create sequence sq_com_num
increment by 1 
start with 1 
minvalue 1 
nocycle;

----------   기기 네임 정보 시퀀스   ---------------
create sequence sq_giginame_num
increment by 1 
start with 1 
minvalue 1 
nocycle;



select * from MEMBERS;
select * from GIGI_NAMES;
select * from GIGI_SENSORS;
select * from COMPLAINTS;



drop table MEMBERS;
drop table GIGI_SENSORS;
drop table COMPLAINTS;
drop table GIGI_NAMES;

----------   시퀀스 지우기   ---------------
drop sequence sq_com_num;
drop sequence sq_giginame_num;

insert into MEMBERS values('smhrd','1234','김욱현','4485','306');
insert into GIGI_NAMES values(sq_giginame_num.nextval,'GGong_0001','35.1104375','126.8778125','3','34.2','43.72','306',7,sysdate);
insert into GIGI_NAMES values(sq_giginame_num.nextval,'GGong_0002','35.1105375','126.8779125','19','35.8','53.47','306',3,sysdate);
insert into GIGI_NAMES values(sq_giginame_num.nextval,'GGong_0003','35.1107375','126.8781125','7','36.3','49.23','306',13,sysdate);
insert into GIGI_NAMES values(sq_giginame_num.nextval,'GGong_0004','35.1105375','126.8781125','7','36.3','49.23','306',13,sysdate);
insert into GIGI_NAMES values(sq_giginame_num.nextval,'GGong_0005','35.1107375','126.8779125','7','36.3','49.23','306',13,sysdate);
insert into GIGI_NAMES values(sq_giginame_num.nextval,'GGong_0006','35.1109375','126.8780125','7','36.3','49.23','306',13,sysdate);
insert into GIGI_NAMES values(sq_giginame_num.nextval,'GGong_0007','35.1107375','126.8777125','7','36.3','49.23','306',13,sysdate);