-- 생성자 Oracle SQL Developer Data Modeler 19.1.0.081.0911
--   위치:        2019-10-15 18:10:06 KST
--   사이트:      Oracle Database 11g
--   유형:      Oracle Database 11g



DROP TABLE zalbazo.animal CASCADE CONSTRAINTS;

DROP TABLE zalbazo.care_animal CASCADE CONSTRAINTS;

DROP TABLE zalbazo.category CASCADE CONSTRAINTS;

DROP TABLE zalbazo.content CASCADE CONSTRAINTS;

DROP TABLE zalbazo.faq CASCADE CONSTRAINTS;

DROP TABLE zalbazo.favorite_hospital CASCADE CONSTRAINTS;

DROP TABLE zalbazo.hospital CASCADE CONSTRAINTS;

DROP TABLE zalbazo.hospital_label CASCADE CONSTRAINTS;

DROP TABLE zalbazo.hospital_qna CASCADE CONSTRAINTS;

DROP TABLE zalbazo.label CASCADE CONSTRAINTS;

DROP TABLE zalbazo.message CASCADE CONSTRAINTS;

DROP TABLE zalbazo.pic_lib CASCADE CONSTRAINTS;

DROP TABLE zalbazo.pic_lib_rel_content CASCADE CONSTRAINTS;

DROP TABLE zalbazo.pic_lib_rel_hospital CASCADE CONSTRAINTS;

DROP TABLE zalbazo.reply CASCADE CONSTRAINTS;

DROP TABLE zalbazo.reserve CASCADE CONSTRAINTS;

DROP TABLE zalbazo.review CASCADE CONSTRAINTS;

DROP TABLE zalbazo.zalbazo_user CASCADE CONSTRAINTS;

DROP SEQUENCE zalbazo.animal_seq;

DROP SEQUENCE zalbazo.care_animal_seq;

DROP SEQUENCE zalbazo.category_seq;

DROP SEQUENCE zalbazo.content_seq;

DROP SEQUENCE zalbazo.f_hospital_seq;

DROP SEQUENCE zalbazo.faq_id;

DROP SEQUENCE zalbazo.hospital_qna_seq;

DROP SEQUENCE zalbazo.hospital_seq;

DROP SEQUENCE zalbazo.message_seq;

DROP SEQUENCE zalbazo.reply_seq;

DROP SEQUENCE zalbazo.reserve_seq;

DROP SEQUENCE zalbazo.review_seq;

DROP SEQUENCE zalbazo.uuid_seq;

CREATE user zalbazo identified by account unlock 
;

CREATE SEQUENCE zalbazo.animal_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.care_animal_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.category_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.content_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.f_hospital_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.faq_id INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.hospital_qna_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.hospital_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.message_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.reply_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.reserve_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.review_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE SEQUENCE zalbazo.uuid_seq INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20;

CREATE TABLE zalbazo.animal (
    animal_id         NUMBER NOT NULL,
    type              VARCHAR2(500 BYTE),
    sex               VARCHAR2(100 BYTE),
    weight            NUMBER,
    age               NUMBER,
    aname             VARCHAR2(300 BYTE),
    note              VARCHAR2(3000 BYTE),
    last_treat_date   DATE,
    created_date      DATE,
    updated_date      DATE,
    user_email        VARCHAR2(1000 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

COMMENT ON COLUMN zalbazo.animal.animal_id IS
    'ID';

COMMENT ON COLUMN zalbazo.animal.type IS
    '동물 종';

COMMENT ON COLUMN zalbazo.animal.weight IS
    '몸무게';

COMMENT ON COLUMN zalbazo.animal.age IS
    '나이';

COMMENT ON COLUMN zalbazo.animal.aname IS
    '이름';

COMMENT ON COLUMN zalbazo.animal.note IS
    '참고사항';

COMMENT ON COLUMN zalbazo.animal.last_treat_date IS
    '마지막 진료일';

COMMENT ON COLUMN zalbazo.animal.created_date IS
    '동물정보입력날짜';

COMMENT ON COLUMN zalbazo.animal.updated_date IS
    '수정날짜';

CREATE UNIQUE INDEX zalbazo.animal_pk ON
    zalbazo.animal (
        animal_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.animal
    ADD CONSTRAINT animal_pk PRIMARY KEY ( animal_id )
        USING INDEX zalbazo.animal_pk;

CREATE TABLE zalbazo.care_animal (
    care_animal_id   NUMBER NOT NULL,
    hospital_id      NUMBER NOT NULL,
    animal_id        NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE UNIQUE INDEX zalbazo.care_animal_pk ON
    zalbazo.care_animal (
        care_animal_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.care_animal
    ADD CONSTRAINT care_animal_pk PRIMARY KEY ( care_animal_id )
        USING INDEX zalbazo.care_animal_pk;

CREATE TABLE zalbazo.category (
    category_id   NUMBER NOT NULL,
    name          VARCHAR2(100 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE UNIQUE INDEX zalbazo.category_pk ON
    zalbazo.category (
        category_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.category
    ADD CONSTRAINT category_pk PRIMARY KEY ( category_id )
        USING INDEX zalbazo.category_pk;

CREATE TABLE zalbazo.content (
    content_id     NUMBER NOT NULL,
    title          VARCHAR2(1000 BYTE),
    body           VARCHAR2(4000 BYTE),
    created_date   DATE,
    updated_date   DATE,
    category_id    NUMBER NOT NULL,
    user_email     VARCHAR2(1000 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

COMMENT ON COLUMN zalbazo.content.title IS
    '게시글 제목';

COMMENT ON COLUMN zalbazo.content.body IS
    '게시글 내용';

CREATE UNIQUE INDEX zalbazo.content_pk ON
    zalbazo.content (
        content_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.content
    ADD CONSTRAINT content_pk PRIMARY KEY ( content_id )
        USING INDEX zalbazo.content_pk;

CREATE TABLE zalbazo.faq (
    faq_id     NUMBER NOT NULL,
    question   VARCHAR2(4000 BYTE),
    answer     VARCHAR2(4000 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE TABLE zalbazo.favorite_hospital (
    user_email      VARCHAR2(1000 BYTE) NOT NULL,
    hospital_id     NUMBER NOT NULL,
    f_hospital_id   NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE UNIQUE INDEX zalbazo.favorite_hospital_pk ON
    zalbazo.favorite_hospital (
        f_hospital_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.favorite_hospital
    ADD CONSTRAINT favorite_hospital_pk PRIMARY KEY ( f_hospital_id )
        USING INDEX zalbazo.favorite_hospital_pk;

CREATE TABLE zalbazo.hospital (
    hospital_id   NUMBER NOT NULL,
    name          VARCHAR2(1000 BYTE),
    address       VARCHAR2(3000 BYTE),
    treat_start   VARCHAR2(20 BYTE),
    treat_end     VARCHAR2(20 BYTE),
    tel           VARCHAR2(20 BYTE),
    info          VARCHAR2(4000 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

COMMENT ON COLUMN zalbazo.hospital.name IS
    '병원이름';

COMMENT ON COLUMN zalbazo.hospital.address IS
    '병원주소';

COMMENT ON COLUMN zalbazo.hospital.treat_start IS
    '진료시작시간';

COMMENT ON COLUMN zalbazo.hospital.treat_end IS
    '진료종료시간';

COMMENT ON COLUMN zalbazo.hospital.tel IS
    '전화번호';

COMMENT ON COLUMN zalbazo.hospital.info IS
    '병원소개';

CREATE UNIQUE INDEX zalbazo.hospital_pk ON
    zalbazo.hospital (
        hospital_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.hospital
    ADD CONSTRAINT hospital_pk PRIMARY KEY ( hospital_id )
        USING INDEX zalbazo.hospital_pk;

CREATE TABLE zalbazo.hospital_label (
    label_code    NUMBER NOT NULL,
    hospital_id   NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE TABLE zalbazo.hospital_qna (
    hospital_qna_id   NUMBER NOT NULL,
    hospital_id       NUMBER NOT NULL,
    content_id        NUMBER NOT NULL,
    qna_type          VARCHAR2(10 BYTE),
    c_group           NUMBER
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE UNIQUE INDEX zalbazo.hospital_qna_pk ON
    zalbazo.hospital_qna (
        hospital_qna_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.hospital_qna
    ADD CONSTRAINT hospital_qna_pk PRIMARY KEY ( hospital_qna_id )
        USING INDEX zalbazo.hospital_qna_pk;

CREATE TABLE zalbazo.label (
    code   NUMBER NOT NULL,
    name   VARCHAR2(100 BYTE)
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE UNIQUE INDEX zalbazo.label_pk ON
    zalbazo.label (
        code
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.label
    ADD CONSTRAINT label_pk PRIMARY KEY ( code )
        USING INDEX zalbazo.label_pk;

CREATE TABLE zalbazo.message (
    message_id   NUMBER NOT NULL,
    content_id   NUMBER NOT NULL,
    user_email   VARCHAR2(1000 BYTE) NOT NULL,
    type         VARCHAR2(10 BYTE),
    m_group      NUMBER
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE UNIQUE INDEX zalbazo.message_pk ON
    zalbazo.message (
        message_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.message
    ADD CONSTRAINT message_pk PRIMARY KEY ( message_id )
        USING INDEX zalbazo.message_pk;

CREATE TABLE zalbazo.pic_lib (
    uuid          VARCHAR2(100 BYTE) NOT NULL,
    upload_path   VARCHAR2(200 BYTE) NOT NULL,
    file_name     VARCHAR2(100 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE UNIQUE INDEX zalbazo.pic_lib_pk ON
    zalbazo.pic_lib (
        uuid
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.pic_lib
    ADD CONSTRAINT pic_lib_pk PRIMARY KEY ( uuid )
        USING INDEX zalbazo.pic_lib_pk;

CREATE TABLE zalbazo.pic_lib_rel_content (
    uuid         VARCHAR2(100 BYTE) NOT NULL,
    content_id   NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE TABLE zalbazo.pic_lib_rel_hospital (
    uuid          VARCHAR2(100 BYTE) NOT NULL,
    hospital_id   NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE TABLE zalbazo.reply (
    reply_id       NUMBER NOT NULL,
    body           VARCHAR2(3000 BYTE),
    created_date   DATE,
    updated_date   DATE,
    user_email     VARCHAR2(1000 BYTE) NOT NULL,
    content_id     NUMBER NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE UNIQUE INDEX zalbazo.reply_pk ON
    zalbazo.reply (
        reply_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.reply
    ADD CONSTRAINT reply_pk PRIMARY KEY ( reply_id )
        USING INDEX zalbazo.reply_pk;

CREATE TABLE zalbazo.reserve (
    reserve_id    NUMBER NOT NULL,
    note          VARCHAR2(4000 BYTE),
    rdate         DATE,
    animal_id     NUMBER NOT NULL,
    hospital_id   NUMBER NOT NULL,
    status        VARCHAR2(100 BYTE),
    user_email    VARCHAR2(1000 BYTE) NOT NULL
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

COMMENT ON COLUMN zalbazo.reserve.note IS
    '예약내용';

CREATE UNIQUE INDEX zalbazo.reserve_pk ON
    zalbazo.reserve (
        reserve_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.reserve
    ADD CONSTRAINT reserve_pk PRIMARY KEY ( reserve_id )
        USING INDEX zalbazo.reserve_pk;

CREATE TABLE zalbazo.review (
    review_id     NUMBER NOT NULL,
    hospital_id   NUMBER NOT NULL,
    content_id    NUMBER NOT NULL,
    star_point    NUMBER
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

CREATE UNIQUE INDEX zalbazo.review_pk ON
    zalbazo.review (
        review_id
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.review
    ADD CONSTRAINT review_pk PRIMARY KEY ( review_id )
        USING INDEX zalbazo.review_pk;

CREATE TABLE zalbazo.zalbazo_user (
    user_email       VARCHAR2(1000 BYTE)
        CONSTRAINT nnc_zalbazo_user_email NOT NULL,
    password         VARCHAR2(500 BYTE)
        CONSTRAINT nnc_zalbazo_user_password NOT NULL,
    role             VARCHAR2(100 BYTE),
    tel              VARCHAR2(20 BYTE),
    address          VARCHAR2(1000 BYTE),
    name             VARCHAR2(500 BYTE),
    join_date        DATE,
    last_login       DATE,
    enabled          VARCHAR2(20 BYTE),
    email_auth_key   VARCHAR2(50 BYTE),
    hospital_id      NUMBER
)
PCTFREE 10 PCTUSED 40 TABLESPACE system LOGGING
    STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
    DEFAULT );

COMMENT ON COLUMN zalbazo.zalbazo_user.user_email IS
    '회원가입이메일';

COMMENT ON COLUMN zalbazo.zalbazo_user.password IS
    '유저로그인패스워드';

COMMENT ON COLUMN zalbazo.zalbazo_user.role IS
    '유저 권한';

COMMENT ON COLUMN zalbazo.zalbazo_user.tel IS
    '전화번호';

CREATE UNIQUE INDEX zalbazo.zalbazo_user_pk ON
    zalbazo.zalbazo_user (
        user_email
    ASC )
        TABLESPACE system PCTFREE 10
            STORAGE ( INITIAL 65536 NEXT 1048576 PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS 2147483645 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL
            DEFAULT )
        LOGGING;

ALTER TABLE zalbazo.zalbazo_user
    ADD CONSTRAINT zalbazo_user_pk PRIMARY KEY ( user_email )
        USING INDEX zalbazo.zalbazo_user_pk;

ALTER TABLE zalbazo.animal
    ADD CONSTRAINT animal_user_fk FOREIGN KEY ( user_email )
        REFERENCES zalbazo.zalbazo_user ( user_email )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.care_animal
    ADD CONSTRAINT care_animal_animal_fk FOREIGN KEY ( animal_id )
        REFERENCES zalbazo.animal ( animal_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.care_animal
    ADD CONSTRAINT care_animal_hospital_fk FOREIGN KEY ( hospital_id )
        REFERENCES zalbazo.hospital ( hospital_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.content
    ADD CONSTRAINT content_category_fk FOREIGN KEY ( category_id )
        REFERENCES zalbazo.category ( category_id )
    NOT DEFERRABLE;

ALTER TABLE zalbazo.content
    ADD CONSTRAINT content_user_fk FOREIGN KEY ( user_email )
        REFERENCES zalbazo.zalbazo_user ( user_email )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.favorite_hospital
    ADD CONSTRAINT favorite_hospital_hospital_fk FOREIGN KEY ( hospital_id )
        REFERENCES zalbazo.hospital ( hospital_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.favorite_hospital
    ADD CONSTRAINT favorite_hospital_user_fk FOREIGN KEY ( user_email )
        REFERENCES zalbazo.zalbazo_user ( user_email )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.hospital_label
    ADD CONSTRAINT hospital_label_hospital_fk FOREIGN KEY ( hospital_id )
        REFERENCES zalbazo.hospital ( hospital_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.hospital_label
    ADD CONSTRAINT hospital_label_label_fk FOREIGN KEY ( label_code )
        REFERENCES zalbazo.label ( code )
    NOT DEFERRABLE;

ALTER TABLE zalbazo.hospital_qna
    ADD CONSTRAINT hospital_qna_content_fk FOREIGN KEY ( content_id )
        REFERENCES zalbazo.content ( content_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.hospital_qna
    ADD CONSTRAINT hospital_qna_hospital_fk FOREIGN KEY ( hospital_id )
        REFERENCES zalbazo.hospital ( hospital_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.message
    ADD CONSTRAINT message_content_fk FOREIGN KEY ( content_id )
        REFERENCES zalbazo.content ( content_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.message
    ADD CONSTRAINT message_fk FOREIGN KEY ( user_email )
        REFERENCES zalbazo.zalbazo_user ( user_email )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.pic_lib_rel_content
    ADD CONSTRAINT pic_lib_rel_content_fk FOREIGN KEY ( content_id )
        REFERENCES zalbazo.content ( content_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.pic_lib_rel_hospital
    ADD CONSTRAINT pic_lib_rel_hospital_fk FOREIGN KEY ( hospital_id )
        REFERENCES zalbazo.hospital ( hospital_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.pic_lib_rel_content
    ADD CONSTRAINT pic_rel_content_pic_fk FOREIGN KEY ( uuid )
        REFERENCES zalbazo.pic_lib ( uuid )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.pic_lib_rel_hospital
    ADD CONSTRAINT pic_rel_hospital_pic_fk FOREIGN KEY ( uuid )
        REFERENCES zalbazo.pic_lib ( uuid )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.reply
    ADD CONSTRAINT reply_content_fk FOREIGN KEY ( content_id )
        REFERENCES zalbazo.content ( content_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.reply
    ADD CONSTRAINT reply_user_fk FOREIGN KEY ( user_email )
        REFERENCES zalbazo.zalbazo_user ( user_email )
    NOT DEFERRABLE;

ALTER TABLE zalbazo.reserve
    ADD CONSTRAINT reserve_animal_fk FOREIGN KEY ( animal_id )
        REFERENCES zalbazo.animal ( animal_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.reserve
    ADD CONSTRAINT reserve_fk FOREIGN KEY ( user_email )
        REFERENCES zalbazo.zalbazo_user ( user_email )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.reserve
    ADD CONSTRAINT reserve_hospital_fk FOREIGN KEY ( hospital_id )
        REFERENCES zalbazo.hospital ( hospital_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.review
    ADD CONSTRAINT review_content_fk FOREIGN KEY ( content_id )
        REFERENCES zalbazo.content ( content_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.review
    ADD CONSTRAINT review_hospital_fk FOREIGN KEY ( hospital_id )
        REFERENCES zalbazo.hospital ( hospital_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;

ALTER TABLE zalbazo.zalbazo_user
    ADD CONSTRAINT zalbazo_user_fk FOREIGN KEY ( hospital_id )
        REFERENCES zalbazo.hospital ( hospital_id )
            ON DELETE CASCADE
    NOT DEFERRABLE;



-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                            18
-- CREATE INDEX                            14
-- ALTER TABLE                             39
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                         13
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              1
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
commit;