create table ct_member(
   
   ct_id varchar2(20) PRIMARY KEY,
   ct_pw varchar2(20) not null,
   ct_name varchar2(50) not null,
   ct_addr varchar2(100),
   lon number,   -- �浵
   lat number -- ����
);

create table rent_member(

   rent_id varchar2(20) PRIMARY KEY,
   rent_pw varchar2(20) not null,
   rent_name varchar2(50),
   rent_num varchar2(20),
   rent_addr varchar2(100),
   ct_id varchar2(20),
   CONSTRAINT fk_ct_member_to_rent_member FOREIGN KEY(ct_id)
   REFERENCES ct_member(ct_id) ON DELETE SET NULL
);

delete from device;
commit;

create table device(

device_num number(20),
rent_id varchar2(20),
device_type char(1),
rent_state char(1) default 'F',
broken char(1) default 'F',
CONSTRAINT fk_rent_member_to_device FOREIGN KEY(rent_id)
REFERENCES rent_member(rent_id) ON DELETE SET NULL,
primary key (device_num, device_type)
);


select * from device order by device_num;


select * from device;

create table contact (

 msg_num number(20) PRIMARY KEY,
 rent_id varchar2(20),
 msg_title varchar2(20),
 msg_text varchar2(100),
 msg_file varchar2(20)
 
);

drop sequence device_num;
drop sequence handi_num;
create sequence device_num increment by 1 start with 1;
create sequence handi_num increment by 1 start with 1;



CREATE OR REPLACE FUNCTION RADIANS(nDegrees IN NUMBER) RETURN NUMBER DETERMINISTIC IS
BEGIN
   RETURN nDegrees / 57.29577951308232087679815481410517033235;
END RADIANS;
   -- radians = degrees / (180 / pi)
   -- RETURN nDegrees / (180 / ACOS(-1));

-- ���� ������ǥ ����Ʈ����ķ�۽�, ct_member�� ����Ǿ� �ִ� ��ǥ������ ���� �Ÿ� ��ȯ(���� km)
-- ��Ż��ü�� �Է��� �ּҸ� API�� �����Ͽ� �ڵ����� ��ǥ�� �޾ƿ� �ش� ��ǥ�� �������� ����ؾ� ��
SELECT ct_id, (6371 * acos( cos( RADIANS(35.1498791)) * cos( RADIANS(lat))
   * cos( RADIANS(lon) - RADIANS(126.919844))
   + sin( RADIANS(35.1498791)) * sin( RADIANS(lat)))) AS distance
FROM ct_member
ORDER BY distance;

-- ������� �������� ���� ����� �ͺ��� �����Ͽ� ù��° �÷��� �̾ƿ�
SELECT ROWNUM, x.ct_id, x.ct_name
FROM (SELECT a.ct_id, a.ct_name, (6371 * acos( cos( RADIANS(35.1498791)) * cos( RADIANS(lat))
   * cos( RADIANS(lon) - RADIANS(126.919844))
   + sin( RADIANS(35.1498791)) * sin( RADIANS(lat)))) AS distance
FROM ct_member a
ORDER BY distance) x
WHERE ROWNUM<=3;




select * from rent_member;

select * from ct_member;

select * from device;

select * from contact;


drop table device;

drop table contact;

drop table rent_member;

drop table ct_member;

-- �׽�Ʈ�� db ����
insert into ct_member values('dolmeori', 111, '���Ӹ��ؼ�����', '���� ���� ������ 523-1', 126.440650, 35.0864430);
insert into ct_member values('byeonsan', 111, '�����ؼ�����', '���� �ξȱ� ����� ����� 2100', 126.529650, 35.6776313);
insert into ct_member values('yulpo', 111, '�����ؼ�����', '���� ������ ȸõ�� ��ϱ� 24', 127.088538, 34.6699838);
insert into ct_member values('daecheon', 111, '��õ�ؼ�����', '�泲 ���ɽ� �ӵ�� 123', 126.510837, 36.3155558);
insert into ct_member values('hakdongmongdol', 111, '�е������غ�', '�泲 ������ ���θ� �е�6�� 18-1', 128.640243, 34.7733192);
insert into ct_member values('gwakji', 111, '�����ؼ�����', '����Ư����ġ�� ���ֽ� �ֿ��� ������ 1565', 126.303153, 33.4485033);
insert into ct_member values('songdo', 111, '�۵��ؼ�����', '�λ� ���� �ϳ��� 135-5', 129.016360, 35.0739632);
insert into ct_member values('eurwangni', 111, '���ո��ؼ�����', '��õ �߱� ���շ�13���� 12', 126.373040, 37.4460816);
insert into ct_member values('jebudo', 111, '���ε��ؼ�����', '��� ȭ���� ���Ÿ� ���θ� 190-10', 126.617911, 37.1646043);
insert into ct_member values('jinha', 111, '�����ؼ�����', '��� ���ֱ� ������ ���ϸ� 307-2', 129.347753, 35.3856901);
insert into ct_member values('goraebul', 111, '�����ؼ�����', '��� ������ ����� ��� 58-26', 129.410588, 36.5990555);
insert into ct_member values('gyeongpo', 111, '�����غ�', '���� ������ ���ط� 514', 128.907369, 37.8056863);
insert into ct_member values('jeongdongjin', 111, '�������ؼ�����', '���� ������ ������ �������� 64-3', 129.027017, 37.6843303);

insert into rent_member values('admin', 111, '����Ʈ��Ʈ', '563-88-00950', '���� ���� ������ 31-15', 'dolmeori');
insert into rent_member values('rent', 111, '���Ӹ���Ʈ', '531-77-05796', '���� ���� ������ ���Ӹ��� 355-177', 'dolmeori');



select * from user_sequences;
drop sequence device_num;

create sequence device_num 
	increment by 1 
	start with 1 
	minvalue 1 
	maxvalue 999999999 
	nocycle 
	nocache
	;
	
	


-- A:Ʃ��, B:�ڵ� �� ����
insert into device values(device_num.nextval, 'test', 'A', 'F', 'T');
insert into device values(device_num.nextval, 'test', 'B', 'F', 'T');

select * from device order by device_num;
select * from rent_member where ct_id='dolmeori';

insert into rent_member values('admin', 111, '����Ʈ��Ʈ', '563-88-00950', '���� ���� ������ 31-15', 'dolmeori');

