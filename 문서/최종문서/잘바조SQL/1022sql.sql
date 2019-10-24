-- ���� sql
Insert into ZALBAZO.CATEGORY (CATEGORY_ID,NAME) values (1,'community');
Insert into ZALBAZO.CATEGORY (CATEGORY_ID,NAME) values (2,'jisik');
Insert into ZALBAZO.CATEGORY (CATEGORY_ID,NAME) values (3,'review');
Insert into ZALBAZO.CATEGORY (CATEGORY_ID,NAME) values (4,'hqna');
Insert into ZALBAZO.CATEGORY (CATEGORY_ID,NAME) values (5,'message');

INSERT into ZALBAZO.ZALBAZO_USER(USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED)
values('dummy@gmail.com', '{noop}1234', 'admin', '01000000000', '����� ���ʱ�', '������', sysdate, sysdate, 'enabled');

INSERT into ZALBAZO.ZALBAZO_USER(USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED)
values('zalbazo@zalbazo.kr', '{noop}1234', 'admin', '01000000000', '����� ���ʱ�', '������', sysdate, sysdate, 'enabled');

Insert into ZALBAZO.LABEL (CODE,NAME) values (1,'24�ð�');
Insert into ZALBAZO.LABEL (CODE,NAME) values (2,'�̿�');
Insert into ZALBAZO.LABEL (CODE,NAME) values (3,'����');
Insert into ZALBAZO.LABEL (CODE,NAME) values (4,'Ư������');
Insert into ZALBAZO.LABEL (CODE,NAME) values (5,'��������');



--����
INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '������������', '����Ư���� ������ �ϻ絿 414-18 �Ե�ĳ���� 2��', 
'08:00','21:00','024262775',
'������ ������ �������� �ݷ������� �����ϴ� ���� ���������Դϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '024262775', '������������', '����Ư���� ������ �ϻ絿 414-18 �Ե�ĳ���� 2��', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)

INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (1,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (2,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)

INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (UUID_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (UUID_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;

show escape;
set escape on;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '������24�õ�������', '���� ������ �е��� 437', 
'00:00', '24:00', '0269257021',
'������ �����(LCPD) \& ������ ���� ����
����� ���� ��������')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0269257021', '������24�õ�������', '���� ������ �е��� 437', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (5,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '���̾�����������', '�λ걤���� ������ �����Ϸ� 26', '00:00', '24:00', '0515127582', '')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0515127582', '�λ걤���� ������ �����Ϸ� 26', '���̾�����������', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (1,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (5,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '������������', '��õ ������ �־ȷ� 234 ǳ�����̿� �ֻ� 112ȣ', 
'10:00', '20:00', '0324225399', '[������ �־ȷ� 234 ] , ǳ�����̿� �� 112ȣ�� ��ġ�Ͽ� �ֽ��ϴ�. ���θ��ּҷ� �˻��� �Ͻø�
���� ���� ���� �̻��� ���� ��ġ�� ã���� �� �ֽ��ϴ�~^^ [��õ ������������]')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0324225399', '������������', '��õ ������ �־ȷ� 234 ǳ�����̿� �ֻ� 112ȣ', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (2,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '����̺��� ��굿������', '���� ������ ������86�� 22', 
'00:00', '24:00', '16445653',
'���� ��굿�������� ���� ������ ���ﵿ�� ��ġ�ϰ� ������, ����̸� �����ϴ� ����̺����Դϴ�.
���� ����� ��ȸ(ISFM)�������μ� ���ǻ� �����Ե鿡�Ե� ���� ���Ǹ� ���� ������ ���� �������� ����� ���������� �ǰ��� �׻� ����ϰ� �ֽ��ϴ�.

�����ε� ���� ��갡���� �ݷ������� ��ȣ�ںе��� ���� �ֻ��� �ǷἭ�񽺰� �����ϵ��� ���� ����ϰڽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '16445653', '����̺��� ��굿������', '���� ������ ������86�� 22', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (1,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '������������', '��õ������ ���� ������ 1422 ��������ũ����', 
'10:00', '20:00', '0325115338',
'������ �˻縦 ���� ��Ȯ�ϰ� ������ �ϰ� ������ �����˰� ������ ġ�Ḧ �ؾ��Ѵٰ� �����մϴ�.
���� ������ �׻� ���� ������ û���� ���� ����ϰ� �ֽ��ϴ�. �������� ������� �ڰ� �Ǻ� �ǰ��� ���ؼ� �̿���� ��ϰ� ������, ����� ������ �ձ�� �̿��� �ϰ� �ֽ��ϴ�.
���Ե��� ã�� �ֽø� ������ �帮�ڽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0325115338', '������������', '��õ������ ���� ������ 1422 ��������ũ����', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, 'û����ӵ�������', '��õ������ ���� û����ӷ� 102', 
'09:00', '20:00', '0325631900', ' ')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0325631900', 'û����ӵ�������', '��õ������ ���� û����ӷ� 102', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '24�õ�����������', '��õ������ ������ ������� 912 ��������', '00:00', '24:00', '0324330075',
'400�� �Ը��� �����������μ� ��÷���Ƿ���� �ټ� �����ϰ�, �Ƿ°� ����� ������ 7���� ���ǻ� �� 30������ �ٹ��ڰ� 365�� 24�ð� �����ϰ� �ֽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0324330075', '24�õ�����������', '��õ������ ������ ������� 912 ��������', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (1,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '�λ굿���޵��ü���', '�λ걤���� ������ ������� 278', '09:00', '18:00', '0518687591', 
'��, �ڻ� �Ƿ����� ����� 40������ ���ܵ� ���� ��ȣ ü�����̰� ����ȭ�� ���� �ý���')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0518687591', '�λ걤���� ������ ������� 278', '�λ굿���޵��ü���', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (2,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '24�ú������յ����ǷἾ��', '��õ ���� ������ 138 �����������̼� 2��', 
'00:00', '24:00', '0325116836', '�ǹ� ���Ͽ� ������������ �غ�Ǿ� �ֽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0325116836', '24�ú������յ����ǷἾ��', '��õ ���� ������ 138 �����������̼� 2��', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (1,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '����������å', '�λ걤���� ������ ������ 25 �ֿ����Ʈ', '10:00', '19:00', '0517140209', '��å�ϵ� ������ �鸱�� �ִ� ���������Դϴ�^^')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0517140209', '�λ걤���� ������ ������ 25 �ֿ����Ʈ', '����������å', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '�ݿ���������', '��� �����ν� û��� 37', '09:00', '21:00', '0318267582',
'���� ���������� �ֽ��� �Ƿ����� ������ ȯ���� ���߰� �־� �ݷ� �������� �ּ��� ���Ḧ ���� �� �ֵ��� ����ϰ� �ֽ��ϴ�.
�׻� ���ο� ������ �����ϸ� ������ ������ �����Դϴ�.
������ ���� ���ο� ������� ��ȭ�� �ݷ������� ������ ����� �帮�� ���� ���� ��������� �����մϴ�. �����մϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0318267582', '��� �����ν� û��� 37', '�ݿ���������', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, 'UN�����ǷἾ��', '�λ걤���� ���� �뿬�� 1745-9', '00:00', '24:00', '0516242475',
'1,2,3�� 160������ �ܵ��������� ���,��� ���� ���ڸ� ���Ӿ��� �ϰ� ������
��������,�ܰ�(����)����,������ǷἾ��,Ư����������, ��Ȱ����,�ٱ⼼������, �������ܼ���, 24�þ߰����޼��͸� ���߰� �ֽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0516242475', '�λ걤���� ���� �뿬�� 1745-9', 'UN�����ǷἾ��', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (1,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (4,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (5,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, 'ĳ��� �����޵��ü���', '��⵵ ������ �߿��� �ݱ�2�� 4614', '00:00', '24:00', '0317411799',
'2�� ���� ������ ĳ��� �����޵��ü��ʹ� TV�� ���� �м����� ���� �Ұ��Ǵ� ��������, ���ǻ��ü�� ���������� ������ ���� �Ƿ����� ���� ���ǰ�ȣ���� �������� ������ ���� ������ ���� �߱��Ͽ�����,
������б��� �泲���б� �������� ����� �����������踦 ���� ��Ȯ�� ���ܰ� �ּ��� óġ�� ������ �� �ֽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0317411799', '��⵵ ������ �߿��� �ݱ�2�� 4614', 'ĳ��� �����޵��ü���', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (1,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '��µ�������', '�λ걤���� ���ϱ� ������� 5118', '09:00', '18:00', '0512917900',
'�ò����� ���� ȯ�濡 ������ �� �ִ� ����̸� ����� ����� ���� ����, ����� ���� �����, ����� ���� �Կ���, �ݸ� �Կ����� �и� ��Ͽ�
����̿� ��ȣ�ں� ����ϰ� ���Ḧ ���� �� �ֽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0512917900', '�λ걤���� ���ϱ� ������� 5118', '��µ�������', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '�ٸ���������', '�����ε� 210-1', '09:00', '24:00', '0318427582',
'- ������� ���Ǵ� ���� �� ��� ��Ź�帳�ϴ�.
- �Կ��� ���� ��ȸ, ��ȭ����� �Ϲ� ����ð��� �̿� ��Ź�帳�ϴ�.
- �߰��������� �����ÿ��� ���� ���� ��ȭ ��Ź�帳�ϴ�. ( ���޻�Ȳ�� �� �� �ż��� ����ϱ� ���ؼ��Դϴ�)
- ���� �ֹ�, �ݷ������� �Բ� �ϴ� ���������� ����� ���� ����ϰ� �ֽ��ϴ�.
- �����̿�ÿ��� ���� �ǹ� ���鿡 �ִ� �������� ���� �������� �̿��Ͻø� �˴ϴ�. (Ÿ���� �������� �ʾƵ� ��)')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0318427582', '�����ε� 210-1', '�ٸ���������', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '�����´��͵�������', '��⵵ ������ �絿 922-25 1��', '10:00', '18:00', '0313917533', '')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0313917533', '��⵵ ������ �絿 922-25 1��', '�����´��͵�������', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (2,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '�ټص����޵��ü���', '�λ� ���� ������13���� 3', '00:00', '24:00', '0516327580', 
'�ݷ��������չ�ȭ���͸� ��Ͽ� ������ ȣ�� / �ְ� ��ġ��, ������ / �ݷ����� �̿�, ����, ��ǰ�� ���� ��ǰ� �ֽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0516327580', '�λ� ���� ������13���� 3', '�ټص����޵��ü���', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (1,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (2,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '������������', '�λ걤���� �ؿ�뱸 �ؿ��� 794 ����������', '09:00', '19:00', '0517025750', 
'')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0517025750', '�λ걤���� �ؿ�뱸 �ؿ��� 794 ����������', '������������', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (2,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '���ﵿ�����庴��', '���� ������ ���ַ� 542 ENPŸ�� 1��', 
'09:00', '21:00', '0262037588',
'�ȳ��ϼ���. ���� ������ ����̿� ���� ������ ������ ������ȯ�� ���ܰ� ġ�ῡ Ưȭ�� �����Դϴ�.
�ֿ� ���������
1) �Ϲ� ������ȯ�� ���ܰ� ġ�� (����� ��뼺 �ɱٺ���, ���� ��÷�� ��� ������ ��)
2) ��ɼ� �߿� ���� ��ȯ (�����ɺ���, ���忰, ��� ���ı� �� ȣ���� ��ȯ, ���� ���� ��)
3) ��õ�� Ȥ�� ��õ�� ���庴�� ���������(interventional cardiology)�� ���� ���ư� ������ (PDA), �󵿸��Ǹ� ������ �� ����
4) ���� ������ �ü� ( ���̽� ����Ŀ ����, �ɹ漼���� ������ �� ) �Դϴ�.
5) �������� �ǰ����¿� ���� �ǰ����� �� �Դϴ�.


�����մϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0262037588', '���ﵿ�����庴��', '���� ������ ���ַ� 542 ENPŸ�� 1��', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (5,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '������������', '�λ� ������ ��������8�� 243', '10:00', '20:00', '0512047588',
'����� �������� �ּ������� ġ���ϰڽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0512047588', '�λ� ������ ��������8�� 243', '������������', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '����24�õ�������', '��⵵ �Ȼ�� �ܿ��� ���ܵ� 537-4 �Ե������� 1��', '00:00', '24:00', '0314024060',
'�������������� 24������ �Ӹ��ƴ϶� �ְ߿�ǰ,�о�,�̿�,ȣ��,��ġ��,ī�信 �̸������ �ݷ������� ������ ���񽺸� �Ѱ����� ������ �ֽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0314024060', '��⵵ �Ȼ�� �ܿ��� ���ܵ� 537-4 �Ե������� 1��', '����24�õ�������', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (1,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (2,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '��ũ���������ǷἾ��', '���� ������ �������104�� 10 ��ȭ���� 3��', 
'09:00', '21:00', '025837582',
'ACRIS Animal Medical Center�� 1998�� �������� ������� �׻� ���� �ڼ��� �⺻�� ����ϸ� �ְ��� �Ƿ����� ÷����� ������� �Ͽ� �ݷ����� ���չ�ȭ����Ȯ���� �̹����ϰ��� ����� �Ƴ��� �ʰ� �ֽ��ϴ�. 30�� �̻��� ���������� ������, ����� 220�� �̻��� �Ը�� ������� �ݷ����� ���� ��ȭ ���� �Դϴ�. ������, �����, �䳢, ģĥ��, �ܽ���, �̱��Ƴ�, ����, �ź�, ����ġ, �䷵, ��, �ź��� ���� �����ϸ�, ���� ���� ������ �����մϴ� ��� ������ ������ ��������, �ּ��� ����� ������ �ü��� �ٸ� ���ҽ��ϴ�. ��ũ���� �����ǷἾ�Ϳ����� ��,�����,�䷵,�޹���,�䳢,����ġ ���� �پ��� ���� ���� ? ����ȭ�� ���������� �ֻ��� ���Ἥ�񽺸� �����մϴ�. ? ��ȣ�ڿ� �ູ�� ���չ�ȭ������ �Բ��մϴ�.

*�����ȳ� : �ǹ� �ĸ� ���������� �̿�, �ֺ� ����������/���������� �̿�� 1�ð� ������ ����')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '025837582', '��ũ���������ǷἾ��', '���� ������ �������104�� 10 ��ȭ���� 3��', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (uuid_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (uuid_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;
COMMIT;

INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '���24�õ�������', '���� ������ ������ 877 106ȣ', 
'00:00','24:00','0262278275',
'�����/���ϵ��� ��ġ�� 24�ð� ���������Դϴ�.
���� �߻����� �𸣴� ������ ���̵��� ���� ��������.
��κ��� �ܰ������� ������ ȣ�����, ȯ�ڰ��ñ�, �������.
���� ������ ���׻��¸� �ٷ� �� �� �ִ� ���װ˻��.
ö���� �Կ������� ���� ��������, �Ǹ��� ����, ����ġ���.
�������μ� �ּ��� ���ϱ� ���� ��� ���߱����� ����ϰ� ������ �����ε� �� �������ѳ����ڽ��ϴ�.
�� �� ���񽺷δ� ����̸� ���� ���� ĹŸ�� ȣ��. ����� �̿�.
���� ���������� �а� ���۵� ������ ȣ��, ������ �̿��� ������ 
ĹŸ���� Ĺ�ε�� ����̸� ���� ������ �Ҿ��߽��ϴ�. ���� ���� �ٶ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '0262278275', '���24�õ�������', '���� ������ ������ 877 106ȣ', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)

INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (4,HOSPITAL_SEQ.currval)

INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (UUID_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (UUID_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;


INSERT ALL
INTO hospital (hospital_id, name, address, treat_start, treat_end, tel, info)
values (HOSPITAL_SEQ.nextval, '����Ʈ�������� �����ϻ���', '����Ư���� ������ �ϻ絿 452-31 �������� 1��', 
'10:00','21:00','024428875',
'���� :: �츮�� ����ó�� ���� �⻵�ϰ� ���� ����ϴ� ����Ʈ ������ ����
�ȳ��ϼ��� ����Ʈ�������� �����ϻ������Դϴ�~!
���� �Ż纻��, ���� ��ġ����, �������, ��ź����, ���������� �� 5 ���� ������
�� 36 ���� ���ǻ簡 �ɵ����� �������� ���� �����ϰ� �Ϻ��� �߱��ϴ� �Ƿ�ȯ���� �߱��մϴ�
����ó�� �ݷ��������� ���� ����� �� �� �ִ� ȯ���� �����Ͽ�, �ݷ��������� �ǰ��� ��ȣ�ں� �����
�ູ���� �帮���� �׻� �ּ��� ���� �Ƿ� ���񽺸� ������ �帮�ڽ��ϴ�.')
INTO ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, NAME, ADDRESS, JOIN_DATE, LAST_LOGIN, ENABLED, HOSPITAL_ID)
values ('hospital'||HOSPITAL_SEQ.currval||'@gmail.com', '{noop}1234', 'hospital', '024428875', '����Ʈ�������� �����ϻ���', '����Ư���� ������ �ϻ絿 452-31 �������� 1��', sysdate, null, 'enabled', HOSPITAL_SEQ.currval)

INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (1,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (3,HOSPITAL_SEQ.currval)
INTO ZALBAZO.HOSPITAL_LABEL (LABEL_CODE,HOSPITAL_ID) values (5,HOSPITAL_SEQ.currval)

INTO PIC_LIB (UUID, UPLOAD_PATH, FILE_NAME)
VALUES (UUID_SEQ.nextval, 'resources/img', '1.jpg')
INTO PIC_LIB_REL_HOSPITAL (UUID, HOSPITAL_ID)
VALUES (UUID_SEQ.currval, HOSPITAL_SEQ.currval)
SELECT * FROM DUAL;



-- USER INSER --
Insert into ZALBAZO.ZALBAZO_USER (USER_EMAIL,PASSWORD,ROLE,TEL,ADDRESS,NAME,JOIN_DATE,LAST_LOGIN,ENABLED,EMAIL_AUTH_KEY,HOSPITAL_ID)
values ('upwyy123@gmail.com','{noop}1234','user','444','����Ư���� ���۱� ���۴�� 121-4,(��絿)','�޸�',to_date('19/09/14','RR/MM/DD'),null,'enabled',null,null);

Insert into ZALBAZO.ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, enabled)
Values('jjlee@gmail.com', '{noop}1234', 'user', '01097946214', '��õ�� ����', '������', to_date('19/09/29','RR/MM/DD'), sysdate, 'enabled');

Insert into ZALBAZO.ZALBAZO_USER (USER_EMAIL,PASSWORD,ROLE,TEL,ADDRESS,NAME,JOIN_DATE,LAST_LOGIN,ENABLED,EMAIL_AUTH_KEY,HOSPITAL_ID)
values ('iceice@gmail.com','{noop}1234','user','01012340987','����� ���ʱ�','���̽�����',to_date('19/10/01','RR/MM/DD'),sysdate,'enabled',null,null);

insert into ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, HOSPITAL_ID)
values ('baba1234@gmail.com', '{noop}1234', 'user', '01012341234', '����� ���ʱ�', '�ٹ�', to_date('19/10/11','RR/MM/DD'), null, null);


-- ���� 5�� �����
insert into ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, HOSPITAL_ID, ENABLED)
values ('doglover@daum.net', '{noop}1234', 'user', 01045671234, '���� ���ʱ� ����33�� 29', '�ڼ���', to_date('19/09/01','RR/MM/DD'),null, null, 'enabled');
insert into ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, HOSPITAL_ID, ENABLED)
values ('ilikecat@gmail.com', '{noop}1234', 'user', 01012347890, '��� ����� ��̷� 34', '�Ѽ���', to_date('19/09/22','RR/MM/DD'),null, null, 'enabled');
insert into ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, HOSPITAL_ID, ENABLED)
values ('bird1234@daum.net', '{noop}1234', 'user', 01011119923, '�λ� �ؿ�뱸 ������Ƽ2�� 33', 'jin', to_date('19/10/10','RR/MM/DD'),null, null, 'enabled');
insert into ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, HOSPITAL_ID, ENABLED)
values ('puppylover@naver.com', '{noop}1234', 'user', 01045671234, '����Ư����ġ�� �������� 22', 'mike', to_date('19/10/07','RR/MM/DD'),null, null, 'enabled');
insert into ZALBAZO_USER (USER_EMAIL, PASSWORD, ROLE, TEL, ADDRESS, NAME, JOIN_DATE, LAST_LOGIN, HOSPITAL_ID, ENABLED)
values ('nakta@daum.net', '{noop}1234', 'user', 01099991625, '��� ����� �����Ϸ�17���� 26', '�¼�', sysdate,null, null, 'enabled');





Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL,name)
values (CONTENT_SEQ.nextval,'Ȥ�� �ܽ��� ��ȣ�� �� ��Ű���?','���� ��õ �� ���ּ���~',to_date('19/08/17','RR/MM/DD'),1,'baba1234@gmail.com', (select name from zalbazo_user where user_email = 'baba1234@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL,name) 
values (CONTENT_SEQ.nextval,'�հ��޹��� ���� �� �� �ֳ���?','�ȳ��ϼ���! ���� �հ��޹��� �⸣�� ���� ����Դϴ�.
�׷��� �հ��޹��� �ٸ� �޹���ó�� ���� �� �� �ֳ���?
���� �հ��޹��� �⸣�� �հ��޹��� ���� �뷡�� �θ��� �ͽ��ϴ�.
�亯 ��Ź�����!!!',to_date('19/08/17','RR/MM/DD'),2,'iceice@gmail.com', (select name from zalbazo_user where user_email = 'iceice@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL,name)
values (CONTENT_SEQ.nextval,'����� �Ծ��Ű���� �ϴµ� �غ�!!','����̸� ���� �Ծ��Ű�ԵǾ����ϴ� �̸��� ���س���� ������ ��� �츮 ������ �Ծ��Ű���µ� �غ��� ���� �ʿ����� �ñ��մϴ�~~',to_date('19/08/22','RR/MM/DD'),2,'upwyy123@gmail.com'
, (select name from zalbazo_user where user_email = 'upwyy123@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL,name)
values (CONTENT_SEQ.nextval,'����ġ�� �����̸� ���� �����߾��!','ȣ��ȣ ���� �߸Դ´ٰ� �ҹ��� �����̸� ������ �������� �������ٺ��� ���ο��� �Ǹ��ϱ淡 ���� �����߳׿�.
������ ȭ���Ͽ� ������ �׶����� �� ��ٷ����� �� ���� ���� �Ͻ� �е� �������ּ���~',to_date('19/08/30','RR/MM/DD'),1,'jjlee@gmail.com'
, (select name from zalbazo_user where user_email = 'jjlee@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL,name) 
values (CONTENT_SEQ.nextval,'������ �� ��õ ��Ź�帳�ϴ٤ФФ�','���� ���� �ҽ������� ������ ���� ������ �ϴµ�
������ ���� Ÿ�� ���� ��ü ���� �� �ְ� ���� �Ŵ� �� ���� �ִ°ɷ� ��õ���ּ���Ф�!
�ݷ������� ó�� Ű��ٺ��� ��� ������ ���� �� �Ϳ�ФФ�',to_date('19/08/30','RR/MM/DD'),2,'iceice@gmail.com', (select name from zalbazo_user where user_email = 'iceice@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'������ ���� ��õ�ؿ�!','�����Ͽ��� ������ ��µ� ���ݵ� �����ϰ�
�츮�� �ֱⰡ �ʹ� �߸Գ׿�! �ѹ� �����غ�����~',to_date('19/09/01','RR/MM/DD'),1,'doglover@daum.net', (select name from zalbazo_user where user_email = 'doglover@daum.net'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'�츮�� �п��̰� �ְ��','���� �Ϳ����� ���������������� �����Ϥ������������� ¯¯',to_date('19/09/04','RR/MM/DD'),1,'upwyy123@gmail.com'
, (select name from zalbazo_user where user_email = 'upwyy123@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'�츮�� �з� ��������','ó���� ���� ���� ������ ������ �ȿԾ��µ�
������ ������ �ֱ��� �θ��׿�
�ʹ� �Ϳ�����!!',to_date('19/09/09','RR/MM/DD'),1,'nakta@daum.net', (select name from zalbazo_user where user_email = 'nakta@daum.net'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'����� ������ 30��.. �����ұ��?','����� ����̴� ���� ���庴���� ���� �����ϴµ� ���庴�� ��ĥ �� �ִ� Ưȿ���� �Ϻ����� ���� �Ǿ��ٴ� ������ �þ��. 
pkd �������� ���� ������ ��� �ִµ� Ȯ������ ������ �̷� �ҽ��� �־� ��밡 �Ǳ⵵ �ϳ׿�!',to_date('19/09/13','RR/MM/DD'),1,'jjlee@gmail.com'
, (select name from zalbazo_user where user_email = 'jjlee@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'������ �Կ����ɱ��???','�츮 �п��̰� ����⸦ �ȸԴµ� �����⸦ �Կ��� ���� �𸣰ھ�� �˷��ּ���~~',to_date('19/09/12','RR/MM/DD'),2,'upwyy123@gmail.com'
, (select name from zalbazo_user where user_email = 'upwyy123@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'����ġ ȯ���� ����','�濡 ������� ���� 5-60%�� �����ϰ� ������ ġ���̸� ���� ����� �Ƚ��Ѽ� ������...��û���ϴ�. 
�Ƹ� �̹��ֿ� �����̳��� �ڵ鸵�� �����ϸ� ����� ���Ѻ����� �ؿ� ���� ����ϴ� ȣȣ�� 100% ��ǰ ���� ����ص� ���������...?',to_date('19/09/14','RR/MM/DD'),2,'jjlee@gmail.com'
, (select name from zalbazo_user where user_email = 'jjlee@gmail.com'));


Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'�λ�����...','��ü ���� ���� ���ϰ��ִ��� ... ���ϰ��ִ���... ���� ���� ������ �ϰԵǳ׿�',to_date('19/09/16','RR/MM/DD'),1,'upwyy123@gmail.com'
, (select name from zalbazo_user where user_email = 'upwyy123@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'���簡 �Ǵ� ���̶�..','��... �츮�� �����̰�(�����) �������� ���ڶ�����  �ϴ� �ٶ��ε����� ��Ű����ִ°��� �𸣰ڳ׿� ���� ���θ� �����ؼ� ���� ���簡 �ǰڽ��ϴ�! 
����Ե� ȭ����!',to_date('19/09/20','RR/MM/DD'),1,'upwyy123@gmail.com', (select name from zalbazo_user where user_email = 'upwyy123@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'����̺е�! �ν�Ÿ�����ؿ�~','�������� �ʹ� �����ؼ� �ǳ� �ν�Ÿ�� �ٸ� �е��� ����̸� ���ٰ� �츮�� ����̵� �ν�Ÿ�� �����ϰ� �;� ����� �ƽ��ϴ�!
Ǫ���� ����ؼ� �ν�Ÿ �����ؿ�^>^ @mumu32 �Դϴ�~!! ģ���ؿ�~!!',to_date('19/09/22','RR/MM/DD'),1,'jjlee@gmail.com', (select name from zalbazo_user where user_email = 'jjlee@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'��ٸ��� ��ٸ��� ĹŸ���� �Ծ��~~','���⿡ �̻簡�� �ٲ��ָ��� ���� �Ծ����� ��� ��ٴ� �� ������ ���ϰ� ��鸮�°� ������ �ɷ� ū���԰� ������ ���ҽ��ϴ�.
���� ��ٸ� ���� ���� ���� �����߳׿�. ������ ������ ���� ���� �̻����� ũ�Ⱑ �� �մϴ�. ưư�Ե� ���������׿�. ������ Ž���ϸ鼭 ��� ��µ��Ф� ������ �Ǹ� ���� ������������Ф�',to_date('19/09/22','RR/MM/DD'),1
,'jjlee@gmail.com', (select name from zalbazo_user where user_email = 'jjlee@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'�Ʊ� ������ �̸� ��õ �޾ƿ�','��Ʈ�� ��� �ͽ� �ư��Դϴ� ����',to_date('19/09/27','RR/MM/DD'),1,'baba1234@gmail.com'
, (select name from zalbazo_user where user_email = 'baba1234@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'�츮�� 1�� �ֱ� ��������~','�ѳ��� �Ϳ���!!!! �̸��� ���������Դϴ�
����󵵸�Ʈ������ ģȭ�µ� ���ƿ䤾��
���������� �����!',to_date('19/09/27','RR/MM/DD'),1,'iceice@gmail.com', (select name from zalbazo_user where user_email = 'iceice@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'ģĥ�� Ű��ô� �� �����Ű���?','ģĥ�� ���� �����ϴ� ���� �� �ֳ���? �ñ��մϴ�!
�������������� �ȱ��??',to_date('19/09/28','RR/MM/DD'),2,'iceice@gmail.com', (select name from zalbazo_user where user_email = 'iceice@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'���� ���� �����Ѱ���?','�ƹ����� ������ �����ΰ���?',to_date('19/09/29','RR/MM/DD'),2,'baba1234@gmail.com', (select name from zalbazo_user where user_email = 'baba1234@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'�ݷ����� ���� ���� ī��� ����Դϴ�','�� ��ó�� �ݷ����� ���� ������ ī�䰡 ���� ������ϴ�.
��å�ϴ� ���̱淡 ���ô��� ���κ��� ������ ���ĵ� ���� ���� �Ǹŵ� �Ͻô��󱸿�~~��
�����ε� ���� ���߰ھ��',to_date('19/09/30','RR/MM/DD'),1,'iceice@gmail.com', (select name from zalbazo_user where user_email = 'iceice@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'����� ���� ����� ����� �����ϴ� ���',
'�츮 �����̰� ���� ����� ����Ⱑ �ʹ� ������ ��� �����ؾ����� �𸣰ھ�� �ʹ� �������ϴ°Ű��ƿ�~',to_date('19/09/30','RR/MM/DD'),2,'upwyy123@gmail.com'
, (select name from zalbazo_user where user_email = 'upwyy123@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'��Ʈ���� �Ĵ� ������ ������ �ǰ���?','���� ���ִµ�.. ���� �ǳ׿�...',to_date('19/09/30','RR/MM/DD'),2,'baba1234@gmail.com'
, (select name from zalbazo_user where user_email = 'baba1234@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'�ʱ����� �����̶��� �ٸ��ǰ���??','���� ������ ���������갶���ø� �ôµ���, �ű⿡ ������ ���϶����� �ʹ� �Ϳ�������.
������ �̱��ʱ����̰� �ʱ����� ����� �����ΰɷ� �˰��ִµ� �����°Ծ˰��ִ°ǰ���??
�����ڻ� �߹����Ե� �˷��ּ���.���ڱ� �ñ������׿�',to_date('19/10/01','RR/MM/DD'),2,'iceice@gmail.com'
, (select name from zalbazo_user where user_email = 'iceice@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'����̿��� ��ǻ���� ���� �طο��?','Ư�� ��Ʈ���� �� �迭�� �����ϴٴ���.. ������ ������?',to_date('19/10/01','RR/MM/DD'),2
,'baba1234@gmail.com', (select name from zalbazo_user where user_email = 'baba1234@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'����̰��� �򸣴�� ��ü�� ���� ��õ�մϴ�!','''�鸣�鸣''��� ��ǰ�Դϴ�.
�Ϻ���ǰ �Ҹſ �ϴ����̶�ФФ� ģ���� ��üǰ�� ã������ �߰��� �����Դϴ�.
�� �ƴϸ� �� �Դ� ģ���� ����̵� ���ְ� �Դ� �� ���� ���� ����� �� ���ƿ�!!!
���� ����Ƽ�� �Ϻ���ǰ�� ���� �ʴ� ����ǰ �ֿ��Ϸ�����. �߹��� �����Ե鵵 �鸣�鸣 ��ź�����!
���� �ƴմϴ٤̤̤̤�
',to_date('19/10/02','RR/MM/DD'),1,'iceice@gmail.com', (select name from zalbazo_user where user_email = 'iceice@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'Ȥ�� ���� ���ᵵ ������ ���� �������?','���� �ҸӴϰ� Ű��ô� ���� ���� �� ���Ƽ���.',to_date('19/10/03','RR/MM/DD'),2
,'baba1234@gmail.com', (select name from zalbazo_user where user_email = 'baba1234@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'�������� ��� �� �ð� ���� ����ִ� �� ������?','���� ���л��̰� ������ �������� ������ ���� ������ ���̶� �̾��ϰԵ� ���̽ð��� ���� �ʾƿ�Ф�
��ҿ� ����̳� �����ũ 30�о� 2��, �㿡 ��å 20~30�� �ϰ� �ֽ��ϴ�. ����ִ� ����̳� �ð� �� �ڼ��� �˷��ֽø� ���� �����ϰڽ��ϴ�',to_date('19/10/03','RR/MM/DD'),2
,'jjlee@gmail.com', (select name from zalbazo_user where user_email = 'jjlee@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'�츮�� ���������� �������� �ٳ�Խ��ϴ�','�ۿ� ������ ���� ���̶� ���������� ��å���ڰ� �������� ���򤾤�
��ó ���������� ������ ��å�ϴµ� �󸶳� �����ϴ�������
��å���� �۸��̵鵵 ���� ���� ���߰ڽ��ϴ�!',to_date('19/10/03','RR/MM/DD'),1,'iceice@gmail.com'
, (select name from zalbazo_user where user_email = 'iceice@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'����̸� ���ڱ� ����ġ�� �ȴٸ�, � �� ��� �ұ��?','���������� �Ĵ� ĵ�� ����������...',to_date('19/10/04','RR/MM/DD'),2
,'baba1234@gmail.com', (select name from zalbazo_user where user_email = 'baba1234@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'�������� �ʹ� ���� �ܾ��','�������� �����ֺ��� ���� �ʹ� �ܴµ� ������ �������� �ұ��?',to_date('19/10/04','RR/MM/DD'),2,'doglover@daum.net'
, (select name from zalbazo_user where user_email = 'doglover@daum.net'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'���̸� �о纸�¾��','�ʹ��ʹ� �����ϳ׿�
�߹��� ȸ���Ե��� �̷� ��Ȳ�� ��� �غ��Ͻó���?',to_date('19/10/05','RR/MM/DD'),1,'ilikecat@gmail.com', (select name from zalbazo_user where user_email = 'ilikecat@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'����̰� �����ϴ� ������?','�� �ƴ� ������� ����̸� �ް� �Ǵµ�
����� ��Ḹ ì���ָ� �ǳ���? ���ĵ� ���� ì����� �ϳ���?',to_date('19/10/05','RR/MM/DD'),2,'ilikecat@gmail.com', (select name from zalbazo_user where user_email = 'ilikecat@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'�߼�ȭ ����~~!~!','���� �п��� �߼�ȭ ������ ��Ű�����ϴµ� ��� ������ ���� ��õ���ֽǼ��ֳ���?? �׸��� ����� ������ ���� �ñ��ؿ� ��~',to_date('19/10/07','RR/MM/DD'),2
,'upwyy123@gmail.com', (select name from zalbazo_user where user_email = 'upwyy123@gmail.com'));


Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'�հ��޹� Ű��� ������ ���� ��Ѱ���?','����� �ٸ� ������ Ű������ �; �հ��޹��� ������ ����µ�
���� ��Ѱ���? �׸��� ��� �����;� �ϳ���? ',to_date('19/10/07','RR/MM/DD'),2,'bird1234@daum.net', (select name from zalbazo_user where user_email = 'bird1234@daum.net'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'���� �����е� �̷� ��� �����Ű���?','9�� ���޿� ��Ȱ�ϰ� �ֽ��ϴ�. �̹� ������ Ż�� �����ϰ� ��� �� ��Ḧ �ִµ� ���� ���� �ʽ��ϴ�. ��� ���� ���ʰ��� ������
��ȣ�� �׽�Ʈ�� �ߴµ� ���� ��Ḹ �Դ�����..�縮��ġ��?? ��� ���� ��Ḧ �޿��ؾ� �ϴ���?? ���� ��Ḧ �޿��� �� ������ �̶����.. �˷��ּ���!',to_date('19/10/07','RR/MM/DD'),2
,'jjlee@gmail.com', (select name from zalbazo_user where user_email = 'jjlee@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'�� �հ��޹��� ������','���� ��ư� ��ư� �������׿�,,
���� �� �����µ� �ʹ� ���ǿ�!
������ ���� �ҽ� �ø��ڽ��ϴ�.',to_date('19/10/08','RR/MM/DD'),1,'bird1234@daum.net', (select name from zalbazo_user where user_email = 'bird1234@daum.net'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'���� ���̵��� �� Ű����������??','���� ����� ���ߴµ� �������� ����̸� Ű����ֽ��ϴ�... 
���� �ɷµ� �ȵǸ鼭 �ֵ��� Ű����ִ°� �ƴ��� ���� ������ ��±���.',to_date('19/10/08','RR/MM/DD'),1,'upwyy123@gmail.com'
, (select name from zalbazo_user where user_email = 'upwyy123@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'��� ������ ��� ��õ�մϴ�~','�ξ�ĳ�ѿ��� ���������~ ���� ���Ͻô� ���� ���!',to_date('19/10/08','RR/MM/DD'),1
,'baba1234@gmail.com', (select name from zalbazo_user where user_email = 'baba1234@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'����� ���� �ҹ���ŭ �������ΰ���?','����� �ʹ� �� ��Ÿ���̶� Ű��� ������
���絵 ���� ���ε� �� �����Ǳ� �ϳ׿�.
���� �ҹ���ŭ �������ΰ���? ',to_date('19/10/10','RR/MM/DD'),2,'puppylover@naver.com', (select name from zalbazo_user where user_email = 'puppylover@naver.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'�����ϰ� �����߿� ���� �� Ű��� ������?','�����ϰ� �����߿� ������ Ű��� �� ����, ���� ���� Ȱ������ ���� ���� ����� �� ������ ������ ������?
���� �����մϴ�!',to_date('19/10/10','RR/MM/DD'),2,'iceice@gmail.com', (select name from zalbazo_user where user_email = 'iceice@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'���ʱ� ���� ��õ�ؿ�!','�ֱٿ� �츮 �ǹ��� ���ļ� �ƹ� �����̳� �������µ�
�ʹ� ģ���ϰ� �Ƿµ� ���Ƽ� ��õ�ϰ� �;��!
���ʱ��� ��ġ�� �������������̱���,, ���� �˻��ϸ� ���ðſ���!
�ü��� �����ϰ� ���񽺵� �ʹ� ���Ҿ��~
',to_date('19/10/11','RR/MM/DD'),1,'puppylover@naver.com', (select name from zalbazo_user where user_email = 'puppylover@naver.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'�� �̰� ��¥ ���� ��¥��¥ �Ⱥ��� ��ȸ','�ֵ��� ��¥ �����Դϴ� ���ϰ� ����ϼ��־��',to_date('19/10/11','RR/MM/DD'),1
,'upwyy123@gmail.com', (select name from zalbazo_user where user_email = 'upwyy123@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name) 
values (CONTENT_SEQ.nextval,'�з� �� ġ���ϴ� ���� ��õ���ּ���','�з��� ��� ���ϴ� ������ ���׿�
�з� ġ�� ������ ���� ���� ��õ ��Ź�帳�ϴ�.',to_date('19/10/12','RR/MM/DD'),2,'nakta@daum.net', (select name from zalbazo_user where user_email = 'nakta@daum.net'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'������ �ɸ� �ƽô� �� ��ʴϱ�??','�츮 �Ʒ��̴� �׻� �� ���� �ͼ� ����� �ɾ��־�� ��ģ�� �ƴϿ���. �� ���� �پ ������ �ɾ��ִµ�
�� �׷��� �ƽô� �� �輼��?',to_date('19/10/13','RR/MM/DD'),2,'jjlee@gmail.com', (select name from zalbazo_user where user_email = 'jjlee@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'�ڼ� �Ʊ� ����� �Ӻ����Դϴ�.','�ʹ��ʹ� �Ϳ�� �������� ��? ����',to_date('19/10/13','RR/MM/DD'),1
,'baba1234@gmail.com', (select name from zalbazo_user where user_email = 'baba1234@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'���� ������ �躯�Ʒ� �����ּ���','�п��̰� ������Ҵ��� ��¥ ���� �ƹ��������� �������� �ٳ��. ����װͶ����� ��Ʈ������ �̸������� �ƴϳ׿� �躯�Ʒ� ��� ���Ѿ��ұ��?? 
ó���� �Ϳ����µ� ���� ��ӳ׿�',to_date('19/10/13','RR/MM/DD'),2,'upwyy123@gmail.com', (select name from zalbazo_user where user_email = 'upwyy123@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'�߹��� ���׿䤾 �˻��� �ߵǰ�','���п� ���൵ �����ϰ� �� �� �ְ� �Ƴ׿�',to_date('19/10/14','RR/MM/DD'),1,'baba1234@gmail.com'
, (select name from zalbazo_user where user_email = 'baba1234@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL, name)
values (CONTENT_SEQ.nextval,'���� ���̴� Ĺ��Ǫ �ʷ� ��ȣ�� ����̿��䤻��','���� Ĺ��Ǫ �ʷ� �ϳ� � ��µ�.. 
�̺�� �ƹ��ų� ������ �ʰ� �Դ� �����ΰ� �����ص� ȯ���ϰ� �Դ��󱸿䤻�� ��޿��� ������ Ĺ��Ǫ �ʷ� �缭 �￩�߰ڽ��ϴ�',to_date('19/10/15','RR/MM/DD')
,1,'jjlee@gmail.com', (select name from zalbazo_user where user_email = 'jjlee@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL,name) 
values (CONTENT_SEQ.nextval,'������������ �۵��� ���� ������ �����׿�Ф�','������ �����������뿡�� �ø� ����� ���� ���� �о��µ� ������ �����׿�ФФ�
������ õ�簰�� ���̵��� �����ٴ� ���� �����ϴ� ������� ���� õ�� �޾ƾ��ؿ�',to_date('19/10/16','RR/MM/DD'),1,'iceice@gmail.com','���̽�����');

Insert into ZALBAZO.CONTENT(CONTENT_ID, TITLE, BODY, CREATED_DATE,CATEGORY_ID,USER_EMAIL,name)
values (CONTENT_SEQ.nextval,'������ ��å �Ʒ� ��� �����ּ���','�������� ������ �ʹ� ������ �ϳ׿�. ���ٿ� �ͼ��ϰ� ��å ��ų �� �ִ� ����� �������?',to_date('19/10/18','RR/MM/DD'),2,'jjlee@gmail.com',
(select name from zalbazo_user where user_email = 'jjlee@gmail.com'));

Insert into ZALBAZO.CONTENT (CONTENT_ID,TITLE,BODY,CREATED_DATE,CATEGORY_ID,USER_EMAIL,name) 
values (CONTENT_SEQ.nextval,'�������� ��� �� �ð� ���� ����ִ� �� ������?','������ �����������뿡�� �ø� ����� ���� ���� �о��µ� ������ �����׿�ФФ�
������ õ�簰�� ���̵��� �����ٴ� ���� �����ϴ� ������� ���� õ�� �޾ƾ��ؿ�',to_date('19/10/08','RR/MM/DD'),2,'scienceos@daum.net',(select name from zalbazo_user where user_email = 'scienceos@daum.net'));



commit;

