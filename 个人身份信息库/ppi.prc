-----------------------------------------------
-- Export file for user PII                  --
-- Created by ferrari on 2009-2-26, 15:09:38 --
-----------------------------------------------

spool ppi.log

prompt
prompt Creating table ACT_FUND
prompt =======================
prompt
create table ACT_FUND
(
  PIN         NUMBER(16) not null,
  OWNERID     VARCHAR2(40) not null,
  AREAID      CHAR(6) not null,
  FINANCECODE VARCHAR2(14) not null,
  ACCOUNT     VARCHAR2(40) not null,
  COMPANY     VARCHAR2(60) not null,
  NATURE      CHAR(3) not null,
  COCODE      VARCHAR2(10),
  TEL         VARCHAR2(25),
  OPENDATE    DATE,
  FIRSTMONTH  CHAR(6),
  TOMONTH     CHAR(6),
  STATUS      CHAR(1) not null,
  LASTDATE    DATE,
  STATUS24    CHAR(24),
  PAY         NUMBER(5) not null,
  COPERCENT   NUMBER(2),
  OWNPERCENT  NUMBER(2),
  RESEVRE     VARCHAR2(30),
  CERTNO15    VARCHAR2(15),
  GETTIME     DATE not null,
  UPORG       VARCHAR2(14) not null,
  CURMONTH    CHAR(6) not null,
  MSGID       NUMBER(16) not null,
  RECID       NUMBER(16) not null,
  ENDPOS      NUMBER(16) not null
)
;

prompt
prompt Creating table ADDRESS
prompt ======================
prompt
create table ADDRESS
(
  PERSONID     NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  RESIDENCE    VARCHAR2(60) not null,
  RESZIP       CHAR(6) not null,
  RESCONDITION CHAR(1) not null,
  PIN          NUMBER(16) not null,
  MSGID        NUMBER(16) not null,
  GETTIME      DATE not null,
  TRUST        NUMBER(1),
  HASHVALUE    CHAR(64),
  RECID        CHAR(64) not null,
  CORRECTMSGID NUMBER(16),
  RESERVED     VARCHAR2(15)
)
;

prompt
prompt Creating table ADDRESS1
prompt =======================
prompt
create table ADDRESS1
(
  PERSONID     NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  RESIDENCE    VARCHAR2(60) not null,
  RESZIP       CHAR(6) not null,
  RESCONDITION CHAR(1) not null,
  PIN          NUMBER(16) not null,
  MSGID        NUMBER(16) not null,
  GETTIME      DATE not null,
  TRUST        NUMBER(1),
  HASHVALUE    CHAR(64),
  RECID        CHAR(64) not null,
  CORRECTMSGID NUMBER(16),
  RESERVED     VARCHAR2(15)
)
;

prompt
prompt Creating table ADDRESS_HIS
prompt ==========================
prompt
create table ADDRESS_HIS
(
  PERSONID     NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  RESIDENCE    VARCHAR2(60) not null,
  RESZIP       CHAR(6) not null,
  RESCONDITION CHAR(1) not null,
  PIN          NUMBER(16) not null,
  MSGID        NUMBER(16) not null,
  GETTIME      DATE not null,
  CHANGETIME   DATE not null,
  TRUST        NUMBER(1),
  HASHVALUE    CHAR(64),
  RECID        CHAR(64) not null,
  CORRECTMSGID NUMBER(16),
  RESERVED     VARCHAR2(15)
)
;

prompt
prompt Creating table CERTIFICATE
prompt ==========================
prompt
create table CERTIFICATE
(
  PIN       NUMBER(16) not null,
  NAME      VARCHAR2(30) not null,
  GETTIME   DATE not null,
  ROWNUMBER NUMBER(6),
  CERTTYPE  CHAR(1) not null,
  CERTNO    VARCHAR2(18) not null
)
;

prompt
prompt Creating table CERTIFICATE_1
prompt ============================
prompt
create table CERTIFICATE_1
(
  PIN       NUMBER(16) not null,
  CERTTYPE  CHAR(1) not null,
  CERTNO    VARCHAR2(18) not null,
  NAME      VARCHAR2(30) not null,
  GETTIME   DATE not null,
  ROWNUMBER NUMBER(6)
)
;

prompt
prompt Creating table CERTNO
prompt =====================
prompt
create table CERTNO
(
  CERTNO VARCHAR2(18) not null
)
;

prompt
prompt Creating table CERTTYPE
prompt =======================
prompt
create table CERTTYPE
(
  CERTTYPE CHAR(1)
)
;

prompt
prompt Creating table DD_CASTE
prompt =======================
prompt
create table DD_CASTE
(
  CASTECODE NUMBER(1) not null,
  CASTENAME VARCHAR2(10) not null,
  STOPFLAG  NUMBER(1) not null
)
;

prompt
prompt Creating table DD_CERTIFICATE
prompt =============================
prompt
create table DD_CERTIFICATE
(
  CERTCODE CHAR(1) not null,
  CERTNAME VARCHAR2(30) not null,
  STOPFLAG NUMBER(1) not null
)
;

prompt
prompt Creating table DD_CHECKRESULT
prompt =============================
prompt
create table DD_CHECKRESULT
(
  RESULTLCODE VARCHAR2(1) not null,
  RESULTNAME  VARCHAR2(60) not null,
  STOPFLAG    NUMBER(1) not null
)
;

prompt
prompt Creating table DD_DUTY
prompt ======================
prompt
create table DD_DUTY
(
  DUTYCODE NUMBER(1) not null,
  DUTYNAME VARCHAR2(60) not null,
  STOPFLAG NUMBER(1) not null
)
;

prompt
prompt Creating table DD_EDUDEGREE
prompt ===========================
prompt
create table DD_EDUDEGREE
(
  DEGREECODE NUMBER(1) not null,
  DEGREENAME VARCHAR2(10) not null,
  STOPFLAG   NUMBER(1) not null
)
;

prompt
prompt Creating table DD_EDULEVEL
prompt ==========================
prompt
create table DD_EDULEVEL
(
  EDULEVELCODE NUMBER(2) not null,
  EDULEVELNAME VARCHAR2(60) not null,
  STOPFLAG     NUMBER(1) not null
)
;

prompt
prompt Creating table DD_FINANCEORG
prompt ============================
prompt
create table DD_FINANCEORG
(
  FINANCECODE   VARCHAR2(14),
  FINANCENAME   VARCHAR2(100),
  CORPORATENAME VARCHAR2(100),
  STOPFLAG      NUMBER(1)
)
;

prompt
prompt Creating table DD_GENDER
prompt ========================
prompt
create table DD_GENDER
(
  GENDERCODE NUMBER(1) not null,
  GENDERNAME VARCHAR2(16) not null,
  STOPFLAG   NUMBER(1) not null
)
;

prompt
prompt Creating table DD_INDUSTRY
prompt ==========================
prompt
create table DD_INDUSTRY
(
  INDUSTRYCODE CHAR(1) not null,
  INDUSTRYNAME VARCHAR2(40) not null,
  STOPFLAG     NUMBER(1) not null
)
;

prompt
prompt Creating table DD_LOC
prompt =====================
prompt
create table DD_LOC
(
  LOCTYPECODE VARCHAR2(1) not null,
  LOCTYPENAME VARCHAR2(60) not null,
  STOPFLAG    NUMBER(1) not null
)
;

prompt
prompt Creating table DD_MARRIAGE
prompt ==========================
prompt
create table DD_MARRIAGE
(
  MARRIAGECODE NUMBER(2) not null,
  MARRIAGENAME VARCHAR2(40) not null,
  STOPFLAG     NUMBER(1) not null
)
;

prompt
prompt Creating table DD_NATRUE
prompt ========================
prompt
create table DD_NATRUE
(
  EDULEVELCODE VARCHAR2(1) not null,
  EDULEVELNAME VARCHAR2(60) not null,
  STOPFLAG     NUMBER(1) not null
)
;

prompt
prompt Creating table DD_OCCUPATION
prompt ============================
prompt
create table DD_OCCUPATION
(
  OCCUPATIONCODE CHAR(1) not null,
  OCCUPATIONNAME VARCHAR2(60) not null,
  STOPFLAG       NUMBER(1) not null
)
;

prompt
prompt Creating table DD_OPT_TYPE
prompt ==========================
prompt
create table DD_OPT_TYPE
(
  OTYPECODE VARCHAR2(1) not null,
  OTYPENAME VARCHAR2(60) not null,
  STOPFLAG  NUMBER(1) not null
)
;

prompt
prompt Creating table DD_PERATION_OPT
prompt ==============================
prompt
create table DD_PERATION_OPT
(
  PTYPECODE VARCHAR2(1) not null,
  PTYPENAME VARCHAR2(60) not null,
  STOPFLAG  NUMBER(1) not null
)
;

prompt
prompt Creating table DD_PERATION_STATUS
prompt =================================
prompt
create table DD_PERATION_STATUS
(
  PSTATUSCODE VARCHAR2(1) not null,
  PSTATUSNAME VARCHAR2(60) not null,
  STOPFLAG    NUMBER(1) not null
)
;

prompt
prompt Creating table DD_PERATION_TYPE
prompt ===============================
prompt
create table DD_PERATION_TYPE
(
  PTYPECODE VARCHAR2(2) not null,
  PTYPENAME VARCHAR2(60) not null,
  STOPFLAG  NUMBER(1) not null
)
;

prompt
prompt Creating table DD_RESIDENCE
prompt ===========================
prompt
create table DD_RESIDENCE
(
  RESCODE  CHAR(1) not null,
  RESNAME  VARCHAR2(10) not null,
  STOPFLAG NUMBER(1) not null
)
;

prompt
prompt Creating table DD_SHOW
prompt ======================
prompt
create table DD_SHOW
(
  STYPECODE VARCHAR2(1) not null,
  STYPENAME VARCHAR2(60) not null,
  STOPFLAG  NUMBER(1) not null
)
;

prompt
prompt Creating table DD_STATUS
prompt ========================
prompt
create table DD_STATUS
(
  STATUSCODE VARCHAR2(2) not null,
  STATUSNAME VARCHAR2(60) not null,
  STOPFLAG   NUMBER(1) not null
)
;

prompt
prompt Creating table DD_TEL
prompt =====================
prompt
create table DD_TEL
(
  TELTYPECODE VARCHAR2(1) not null,
  TELTYPENAME VARCHAR2(60) not null,
  STOPFLAG    NUMBER(1) not null
)
;

prompt
prompt Creating table EMPLOYMENT
prompt =========================
prompt
create table EMPLOYMENT
(
  PERSONID     NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  OCCUPATION   CHAR(1) not null,
  COMPANY      VARCHAR2(60) not null,
  INDUSTRY     CHAR(1) not null,
  OCCADDRESS   VARCHAR2(60),
  OCCZIP       CHAR(6),
  STARTYEAR    NUMBER(4),
  DUTY         NUMBER(2) not null,
  CASTE        NUMBER(1) not null,
  ANNUALINCOME NUMBER(10),
  PIN          NUMBER(16) not null,
  MSGID        NUMBER(16) not null,
  GETTIME      DATE not null,
  TRUST        NUMBER(1),
  HASHVALUE    CHAR(64),
  RECID        CHAR(64) not null,
  CORRECTMSGID NUMBER(16),
  RESERVED     VARCHAR2(15)
)
;

prompt
prompt Creating table EMPLOYMENTTEST
prompt =============================
prompt
create table EMPLOYMENTTEST
(
  PERSONID     NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  OCCUPATION   CHAR(1) not null,
  COMPANY      VARCHAR2(60) not null,
  INDUSTRY     CHAR(1) not null,
  OCCADDRESS   VARCHAR2(60),
  OCCZIP       CHAR(6),
  STARTYEAR    NUMBER(4),
  DUTY         NUMBER(2) not null,
  CASTE        NUMBER(1) not null,
  ANNUALINCOME NUMBER(10),
  PIN          NUMBER(16) not null,
  MSGID        NUMBER(16) not null,
  GETTIME      DATE not null,
  TRUST        NUMBER(1),
  HASHVALUE    CHAR(64),
  RECID        CHAR(64) not null,
  CORRECTMSGID NUMBER(16),
  RESERVED     VARCHAR2(15)
)
;

prompt
prompt Creating table EMPLOYMENT_HIS
prompt =============================
prompt
create table EMPLOYMENT_HIS
(
  PERSONID     NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  OCCUPATION   CHAR(1) not null,
  COMPANY      VARCHAR2(60) default ' ' not null,
  INDUSTRY     CHAR(1) not null,
  OCCADDRESS   VARCHAR2(60),
  OCCZIP       CHAR(6),
  STARTYEAR    NUMBER(4),
  DUTY         NUMBER(2) not null,
  CASTE        NUMBER(1) not null,
  ANNUALINCOME NUMBER(10),
  PIN          NUMBER(16) not null,
  MSGID        NUMBER(16) not null,
  GETTIME      DATE not null,
  CHANGETIME   DATE not null,
  TRUST        NUMBER(1),
  HASHVALUE    CHAR(64),
  RECID        CHAR(64) not null,
  CORRECTMSGID NUMBER(16),
  RESERVED     VARCHAR2(15)
)
;

prompt
prompt Creating table ENDOWMENTPERSONINFO_ACC
prompt ======================================
prompt
create table ENDOWMENTPERSONINFO_ACC
(
  INSURANCEACCOUNT VARCHAR2(40) not null,
  INSURANCEORGCODE VARCHAR2(14) not null,
  INVECORPBORRCODE VARCHAR2(10),
  OCCUREDDATE      DATE not null,
  SEX              VARCHAR2(1),
  BIRTHDATE        DATE,
  ENTERPRISENAME   VARCHAR2(80),
  ENTERPRISETYPE   VARCHAR2(2),
  ECONOMYTYPE      VARCHAR2(3),
  INDUSTRYCODE     VARCHAR2(2),
  WORKDATE         DATE,
  MSGID            NUMBER(10) not null,
  RECORDID         NUMBER(16) not null,
  LOADDATE         DATE not null,
  ERRORREASON      VARCHAR2(40),
  NEWFLAG          NUMBER(1) not null,
  NAME             VARCHAR2(30) not null,
  CERTTYPE         CHAR(1) not null,
  CERTNO           VARCHAR2(18) not null
)
;

prompt
prompt Creating table ENDOWMENTPERSONINFO_PAID
prompt =======================================
prompt
create table ENDOWMENTPERSONINFO_PAID
(
  INSURANCEACCOUNT VARCHAR2(40) not null,
  INSURANCEORGCODE VARCHAR2(14) not null,
  OCCUREDDATE      DATE not null,
  SEX              VARCHAR2(1),
  BIRTHDATE        DATE,
  ENTERPRISENAME   VARCHAR2(80),
  WORKDATE         DATE,
  RETIREDATE       DATE,
  RETIRETYPE       VARCHAR2(2),
  MSGID            NUMBER(10) not null,
  RECORDID         NUMBER(16) not null,
  LOADDATE         DATE not null,
  ERRORREASON      VARCHAR2(40),
  NEWFLAG          NUMBER(1) not null,
  NAME             VARCHAR2(30) not null,
  CERTTYPE         CHAR(1) not null,
  CERTNO           VARCHAR2(18) not null
)
;
comment on column ENDOWMENTPERSONINFO_PAID.INSURANCEACCOUNT
  is '��ᱣ�սɴ��˺�';
comment on column ENDOWMENTPERSONINFO_PAID.INSURANCEORGCODE
  is '���ݷ�����������';
comment on column ENDOWMENTPERSONINFO_PAID.OCCUREDDATE
  is '���ݷ�������';
comment on column ENDOWMENTPERSONINFO_PAID.SEX
  is '�Ա�';
comment on column ENDOWMENTPERSONINFO_PAID.BIRTHDATE
  is '��������';
comment on column ENDOWMENTPERSONINFO_PAID.ENTERPRISENAME
  is '��λ����';
comment on column ENDOWMENTPERSONINFO_PAID.WORKDATE
  is '�μӹ�������';
comment on column ENDOWMENTPERSONINFO_PAID.RETIREDATE
  is '��������';
comment on column ENDOWMENTPERSONINFO_PAID.RETIRETYPE
  is '���������';
comment on column ENDOWMENTPERSONINFO_PAID.MSGID
  is '���ı��';
comment on column ENDOWMENTPERSONINFO_PAID.RECORDID
  is '��¼ƫ����';
comment on column ENDOWMENTPERSONINFO_PAID.LOADDATE
  is '����ʱ��';
comment on column ENDOWMENTPERSONINFO_PAID.ERRORREASON
  is '����ȼ�';
comment on column ENDOWMENTPERSONINFO_PAID.NEWFLAG
  is '������ʶ 1 ���� 0 ������';
comment on column ENDOWMENTPERSONINFO_PAID.NAME
  is '����';
comment on column ENDOWMENTPERSONINFO_PAID.CERTTYPE
  is '֤������';
comment on column ENDOWMENTPERSONINFO_PAID.CERTNO
  is '֤������';

prompt
prompt Creating table HIS_FUND
prompt =======================
prompt
create table HIS_FUND
(
  OWNERID     VARCHAR2(40) not null,
  AREAID      CHAR(6) not null,
  FINANCECODE VARCHAR2(14) not null,
  ACCOUNT     VARCHAR2(40) not null,
  PIN         NUMBER(16) not null,
  COMPANY     VARCHAR2(60) not null,
  NATURE      CHAR(3) not null,
  COCODE      VARCHAR2(10),
  TEL         VARCHAR2(25),
  OPENDATE    DATE,
  FIRSTMONTH  CHAR(6),
  TOMONTH     CHAR(6),
  STATUS      CHAR(1) not null,
  LASTDATE    DATE,
  STATUS24    CHAR(24),
  PAY         NUMBER(5) not null,
  COPERCENT   NUMBER(2),
  OWNPERCENT  NUMBER(2),
  RESEVRE     VARCHAR2(30),
  CERTNO15    VARCHAR2(15),
  GETTIME     DATE not null,
  UPORG       VARCHAR2(14) not null,
  CURMONTH    CHAR(6) not null,
  MSGID       NUMBER(16) not null,
  RECID       NUMBER(16) not null,
  ENDPOS      NUMBER(16) not null
)
;

prompt
prompt Creating table ID_ADTEMP_CERTIFICATE
prompt ====================================
prompt
create table ID_ADTEMP_CERTIFICATE
(
  CRCPID    NUMBER(16) not null,
  PTYPECODE NUMBER(2)
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);

prompt
prompt Creating table ID_AD_AUTHQUERY
prompt ==============================
prompt
create table ID_AD_AUTHQUERY
(
  CRCPID          NUMBER(16) not null,
  QUERYRESULTCODE NUMBER(1) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);

prompt
prompt Creating table ID_AD_CERTIFICATE
prompt ================================
prompt
create table ID_AD_CERTIFICATE
(
  CRCPID   NUMBER(16) not null,
  NAME     VARCHAR2(30) not null,
  CERTTYPE CHAR(1) not null,
  CERTNO   VARCHAR2(18) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);
create index IDX_AD_CERTIFICATE on ID_AD_CERTIFICATE (CRCPID);

prompt
prompt Creating table ID_AD_EMPLOYMENT
prompt ===============================
prompt
create table ID_AD_EMPLOYMENT
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  OCCUPATION     CHAR(1),
  COMPANY        VARCHAR2(80) not null,
  INDUSTRY       CHAR(1),
  ENTERPRISETYPE VARCHAR2(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  STARTYEAR      NUMBER(4),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  ANNUALINCOME   NUMBER(10)
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);
create index IDX_AD_EMPLOYMENT on ID_AD_EMPLOYMENT (CRCPID);

prompt
prompt Creating table ID_AD_HOME
prompt =========================
prompt
create table ID_AD_HOME
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25)
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);
create index IDX_AD_HOME on ID_AD_HOME (CRCPID);

prompt
prompt Creating table ID_AD_LOC
prompt ========================
prompt
create table ID_AD_LOC
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE VARCHAR2(1),
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6)
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);
create index IDX_AD_LOC on ID_AD_LOC (CRCPID);

prompt
prompt Creating table ID_AD_PERSON
prompt ===========================
prompt
create table ID_AD_PERSON
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1),
  BIRTHDAY    DATE,
  EDULEVEL    NUMBER(2),
  EDUDEGREE   NUMBER(1),
  RESIDENCE   VARCHAR2(60),
  WORKDATE    DATE,
  RETIREDDATE DATE
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);
create index IDX_AD_PERSON on ID_AD_PERSON (CRCPID);

prompt
prompt Creating table ID_AD_PIN
prompt ========================
prompt
create table ID_AD_PIN
(
  CRCPID    NUMBER(16) not null,
  PTYPECODE NUMBER(2),
  MOD       NUMBER(4)
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);
create index IDX_AD_PIN on ID_AD_PIN (MOD);

prompt
prompt Creating table ID_AD_SPOUSE
prompt ===========================
prompt
create table ID_AD_SPOUSE
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25)
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);
create index IDX_AD_SPOUSE on ID_AD_SPOUSE (CRCPID);

prompt
prompt Creating table ID_AD_TEL
prompt ========================
prompt
create table ID_AD_TEL
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  HOMETEL     VARCHAR2(25),
  MOBILETEL   VARCHAR2(16),
  OFFICETEL   VARCHAR2(25),
  OTHERTEL    VARCHAR2(25)
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);
create index IDX_AD_TEL on ID_AD_TEL (CRCPID);

prompt
prompt Creating table ID_APP_STATUS
prompt ============================
prompt
create table ID_APP_STATUS
(
  SPOOLSTATUS1     NUMBER(1) default 0,
  SPOOLSTATUS2     NUMBER(1) default 0,
  SPOOLSTATUS3     NUMBER(1) default 0,
  SPOOLSTATUS4     NUMBER(1) default 0,
  SPOOLSTATUS5     NUMBER(1) default 0,
  SPOOLSTATUS6     NUMBER(1) default 0,
  SPOOLSTATUS7     NUMBER(1) default 0,
  SPOOLSTATUS8     NUMBER(1) default 0,
  SQLLOADERSTATUS1 NUMBER(1) default 0,
  SQLLOADERSTATUS2 NUMBER(1) default 0,
  SQLLOADERSTATUS3 NUMBER(1) default 0,
  SQLLOADERSTATUS4 NUMBER(1) default 0,
  SQLLOADERSTATUS5 NUMBER(1) default 0,
  SQLLOADERSTATUS6 NUMBER(1) default 0,
  SQLLOADERSTATUS7 NUMBER(1) default 0,
  SQLLOADERSTATUS8 NUMBER(1) default 0,
  APPSTATUS1       NUMBER(1) default 0,
  APPSTATUS2       NUMBER(1) default 0,
  APPSTATUS3       NUMBER(1) default 0,
  APPSTATUS4       NUMBER(1) default 0,
  APPSTATUS5       NUMBER(1) default 0,
  APPSTATUS6       NUMBER(1) default 0,
  APPSTATUS7       NUMBER(1) default 0,
  APPSTATUS8       NUMBER(1) default 0
)
;

prompt
prompt Creating table ID_BA_ANNUALINCOME
prompt =================================
prompt
create table ID_BA_ANNUALINCOME
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_ASKINFOEXCHANGE
prompt ====================================
prompt
create table ID_BA_ASKINFOEXCHANGE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  UPDATETIME  DATE,
  RECORDTYPE  NUMBER(2) not null,
  DATEOPENED  DATE not null,
  SHOWTYPE    VARCHAR2(1),
  OPTTYPE     VARCHAR2(1),
  GLOBERECORD NUMBER(16) not null,
  ITEM1       CHAR(1),
  ITEM2       VARCHAR2(80),
  ITEM3       VARCHAR2(18),
  ITEM4       VARCHAR2(60),
  ITEM5       NUMBER(10),
  ITEM6       NUMBER(4),
  ITEM7       NUMBER(1),
  ITEM8       NUMBER(1),
  ITEM9       VARCHAR2(25),
  ITEM10      NUMBER(5),
  ITEM11      DATE
)
;

prompt
prompt Creating table ID_BA_ASKQUEUE
prompt =============================
prompt
create table ID_BA_ASKQUEUE
(
  CRCPID     NUMBER(16) not null,
  UPDATETIME DATE not null,
  STATUS     CHAR(1) not null,
  UPDATEUSER VARCHAR2(32)
)
;

prompt
prompt Creating table ID_BA_BIRTHDAY
prompt =============================
prompt
create table ID_BA_BIRTHDAY
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_CERTIFICATE
prompt ================================
prompt
create table ID_BA_CERTIFICATE
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) not null
)
;

prompt
prompt Creating table ID_BA_DELASKINFO
prompt ===============================
prompt
create table ID_BA_DELASKINFO
(
  GLOBERECORD NUMBER(16) not null
)
;

prompt
prompt Creating table ID_BA_EDUDEGREE
prompt ==============================
prompt
create table ID_BA_EDUDEGREE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_EDULEVEL
prompt =============================
prompt
create table ID_BA_EDULEVEL
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_EMPLOYMENT
prompt ===============================
prompt
create table ID_BA_EMPLOYMENT
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16),
  REPEATNUM      NUMBER(5)
)
;

prompt
prompt Creating table ID_BA_GENDER
prompt ===========================
prompt
create table ID_BA_GENDER
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_HOME
prompt =========================
prompt
create table ID_BA_HOME
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16),
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_LOC
prompt ========================
prompt
create table ID_BA_LOC
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(70),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(16),
  GLOBERECORD NUMBER(16),
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_PDASKINFOEXCHANGE
prompt ======================================
prompt
create table ID_BA_PDASKINFOEXCHANGE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  UPDATETIME  DATE,
  RECORDTYPE  NUMBER(2) not null,
  DATEOPENED  DATE not null,
  SHOWTYPE    VARCHAR2(1),
  OPTTYPE     VARCHAR2(1),
  GLOBERECORD NUMBER(16) not null,
  ITEM1       CHAR(1),
  ITEM2       VARCHAR2(80),
  ITEM3       VARCHAR2(18),
  ITEM4       VARCHAR2(60),
  ITEM5       NUMBER(10),
  ITEM6       NUMBER(4),
  ITEM7       NUMBER(1),
  ITEM8       NUMBER(1),
  ITEM9       VARCHAR2(25),
  ITEM10      NUMBER(5),
  ITEM11      DATE
)
;

prompt
prompt Creating table ID_BA_RESIDENCE
prompt ==============================
prompt
create table ID_BA_RESIDENCE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_RETIREDDATE
prompt ================================
prompt
create table ID_BA_RETIREDDATE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_SPOUSE
prompt ===========================
prompt
create table ID_BA_SPOUSE
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16),
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_TEL
prompt ========================
prompt
create table ID_BA_TEL
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25) not null,
  TELTYPE     CHAR(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_BA_WORKDATE
prompt =============================
prompt
create table ID_BA_WORKDATE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_MN_ASKINFO
prompt ============================
prompt
create table ID_MN_ASKINFO
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  UPDATETIME  DATE not null,
  RECORDTYPE  NUMBER(2) not null,
  SHOWTYPE    VARCHAR2(1) not null,
  OPTTYPE     VARCHAR2(1) not null,
  DATEOPENED  DATE not null,
  GLOBERECORD NUMBER(16) not null,
  ITEM1       CHAR(1),
  ITEM2       VARCHAR2(80),
  ITEM3       VARCHAR2(18),
  ITEM4       VARCHAR2(60),
  ITEM5       NUMBER(10),
  ITEM6       NUMBER(4),
  ITEM7       NUMBER(1),
  ITEM8       NUMBER(1),
  ITEM9       VARCHAR2(25),
  ITEM10      NUMBER(5),
  ITEM11      DATE
)
;

prompt
prompt Creating table ID_MN_ASKINFOEXCHANGE
prompt ====================================
prompt
create table ID_MN_ASKINFOEXCHANGE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  UPDATETIME  DATE,
  RECORDTYPE  NUMBER(2) not null,
  DATEOPENED  DATE not null,
  SHOWTYPE    VARCHAR2(1),
  OPTTYPE     VARCHAR2(1),
  GLOBERECORD NUMBER(16) not null,
  ITEM1       CHAR(1),
  ITEM2       VARCHAR2(80),
  ITEM3       VARCHAR2(18),
  ITEM4       VARCHAR2(60),
  ITEM5       NUMBER(10),
  ITEM6       NUMBER(4),
  ITEM7       NUMBER(1),
  ITEM8       NUMBER(1),
  ITEM9       VARCHAR2(25),
  ITEM10      NUMBER(5),
  ITEM11      DATE
)
;

prompt
prompt Creating table ID_MN_ASKQUEUE
prompt =============================
prompt
create table ID_MN_ASKQUEUE
(
  CRCPID     NUMBER(16) not null,
  UPDATETIME DATE not null,
  STATUS     CHAR(1) not null,
  UPDATEUSER VARCHAR2(32)
)
;

prompt
prompt Creating table ID_MN_DATALOG
prompt ============================
prompt
create table ID_MN_DATALOG
(
  TABLETYPE       CHAR(1) not null,
  ENDTIME         DATE not null,
  RETRIEVERESULTE CHAR(1)
)
;

prompt
prompt Creating table ID_MN_STATUS
prompt ===========================
prompt
create table ID_MN_STATUS
(
  SYSSTATUS NUMBER(2) not null,
  BEGINTIME DATE not null
)
;

prompt
prompt Creating table ID_MN_SYSTEMLOG
prompt ==============================
prompt
create table ID_MN_SYSTEMLOG
(
  OPERATIONTYPE CHAR(4) not null,
  PNO           NUMBER(16),
  PSTARTTIME    DATE,
  PENDTIME      DATE,
  PRESULT       CHAR(4)
)
;

prompt
prompt Creating table ID_PD_ANNUALINCOME
prompt =================================
prompt
create table ID_PD_ANNUALINCOME
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_ANNUALINCOME on ID_PD_ANNUALINCOME (CRCPID);

prompt
prompt Creating table ID_PD_ANNUALINCOME_1
prompt ===================================
prompt
create table ID_PD_ANNUALINCOME_1
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_ANNUALINCOME_2
prompt ===================================
prompt
create table ID_PD_ANNUALINCOME_2
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_ANNUALINCOME_3
prompt ===================================
prompt
create table ID_PD_ANNUALINCOME_3
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_ANNUALINCOME_4
prompt ===================================
prompt
create table ID_PD_ANNUALINCOME_4
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_ANNUALINCOME_5
prompt ===================================
prompt
create table ID_PD_ANNUALINCOME_5
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_ANNUALINCOME_6
prompt ===================================
prompt
create table ID_PD_ANNUALINCOME_6
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_ANNUALINCOME_7
prompt ===================================
prompt
create table ID_PD_ANNUALINCOME_7
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_ANNUALINCOME_8
prompt ===================================
prompt
create table ID_PD_ANNUALINCOME_8
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_ASKINFOEXCHANGE
prompt ====================================
prompt
create table ID_PD_ASKINFOEXCHANGE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  UPDATETIME  DATE not null,
  RECORDTYPE  NUMBER(2) not null,
  DATEOPENED  DATE not null,
  SHOWTYPE    VARCHAR2(1) not null,
  OPTTYPE     VARCHAR2(1) not null,
  GLOBERECORD NUMBER(16) not null,
  ITEM1       CHAR(1),
  ITEM2       VARCHAR2(80),
  ITEM3       VARCHAR2(18),
  ITEM4       VARCHAR2(60),
  ITEM5       NUMBER(10),
  ITEM6       NUMBER(4),
  ITEM7       NUMBER(1),
  ITEM8       NUMBER(1),
  ITEM9       VARCHAR2(25),
  ITEM10      NUMBER(5),
  ITEM11      DATE
)
;
create index IDX_PD_ASKINFOEXCHANGE on ID_PD_ASKINFOEXCHANGE (CRCPID);

prompt
prompt Creating table ID_PD_ASKQUEUE
prompt =============================
prompt
create table ID_PD_ASKQUEUE
(
  CRCPID     NUMBER(16) not null,
  UPDATETIME DATE not null,
  STATUS     CHAR(1) not null,
  UPDATEUSER VARCHAR2(32)
)
;
create index IDX_PD_ASKQUEUE on ID_PD_ASKQUEUE (CRCPID);

prompt
prompt Creating table ID_PD_BIRTHDAY
prompt =============================
prompt
create table ID_PD_BIRTHDAY
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_BIRTHDAY on ID_PD_BIRTHDAY (CRCPID);

prompt
prompt Creating table ID_PD_BIRTHDAY_1
prompt ===============================
prompt
create table ID_PD_BIRTHDAY_1
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_BIRTHDAY_2
prompt ===============================
prompt
create table ID_PD_BIRTHDAY_2
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_BIRTHDAY_3
prompt ===============================
prompt
create table ID_PD_BIRTHDAY_3
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_BIRTHDAY_4
prompt ===============================
prompt
create table ID_PD_BIRTHDAY_4
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_BIRTHDAY_5
prompt ===============================
prompt
create table ID_PD_BIRTHDAY_5
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_BIRTHDAY_6
prompt ===============================
prompt
create table ID_PD_BIRTHDAY_6
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_BIRTHDAY_7
prompt ===============================
prompt
create table ID_PD_BIRTHDAY_7
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_BIRTHDAY_8
prompt ===============================
prompt
create table ID_PD_BIRTHDAY_8
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_CERTIFICATE
prompt ================================
prompt
create table ID_PD_CERTIFICATE
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) default 0 not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_CERTIFICATE on ID_PD_CERTIFICATE (CRCPID);

prompt
prompt Creating table ID_PD_CERTIFICATE_1
prompt ==================================
prompt
create table ID_PD_CERTIFICATE_1
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) default 0 not null
)
;

prompt
prompt Creating table ID_PD_CERTIFICATE_2
prompt ==================================
prompt
create table ID_PD_CERTIFICATE_2
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) default 0 not null
)
;

prompt
prompt Creating table ID_PD_CERTIFICATE_3
prompt ==================================
prompt
create table ID_PD_CERTIFICATE_3
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) default 0 not null
)
;

prompt
prompt Creating table ID_PD_CERTIFICATE_4
prompt ==================================
prompt
create table ID_PD_CERTIFICATE_4
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) default 0 not null
)
;

prompt
prompt Creating table ID_PD_CERTIFICATE_5
prompt ==================================
prompt
create table ID_PD_CERTIFICATE_5
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) default 0 not null
)
;

prompt
prompt Creating table ID_PD_CERTIFICATE_6
prompt ==================================
prompt
create table ID_PD_CERTIFICATE_6
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) default 0 not null
)
;

prompt
prompt Creating table ID_PD_CERTIFICATE_7
prompt ==================================
prompt
create table ID_PD_CERTIFICATE_7
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) default 0 not null
)
;

prompt
prompt Creating table ID_PD_CERTIFICATE_8
prompt ==================================
prompt
create table ID_PD_CERTIFICATE_8
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) default 0 not null
)
;

prompt
prompt Creating table ID_PD_EDUDEGREE
prompt ==============================
prompt
create table ID_PD_EDUDEGREE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_EDUDEGREE on ID_PD_EDUDEGREE (CRCPID);

prompt
prompt Creating table ID_PD_EDUDEGREE_1
prompt ================================
prompt
create table ID_PD_EDUDEGREE_1
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDUDEGREE_2
prompt ================================
prompt
create table ID_PD_EDUDEGREE_2
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDUDEGREE_3
prompt ================================
prompt
create table ID_PD_EDUDEGREE_3
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDUDEGREE_4
prompt ================================
prompt
create table ID_PD_EDUDEGREE_4
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDUDEGREE_5
prompt ================================
prompt
create table ID_PD_EDUDEGREE_5
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDUDEGREE_6
prompt ================================
prompt
create table ID_PD_EDUDEGREE_6
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDUDEGREE_7
prompt ================================
prompt
create table ID_PD_EDUDEGREE_7
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDUDEGREE_8
prompt ================================
prompt
create table ID_PD_EDUDEGREE_8
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDULEVEL
prompt =============================
prompt
create table ID_PD_EDULEVEL
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_EDULEVEL on ID_PD_EDULEVEL (CRCPID);

prompt
prompt Creating table ID_PD_EDULEVEL_1
prompt ===============================
prompt
create table ID_PD_EDULEVEL_1
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDULEVEL_2
prompt ===============================
prompt
create table ID_PD_EDULEVEL_2
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDULEVEL_3
prompt ===============================
prompt
create table ID_PD_EDULEVEL_3
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDULEVEL_4
prompt ===============================
prompt
create table ID_PD_EDULEVEL_4
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDULEVEL_5
prompt ===============================
prompt
create table ID_PD_EDULEVEL_5
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDULEVEL_6
prompt ===============================
prompt
create table ID_PD_EDULEVEL_6
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDULEVEL_7
prompt ===============================
prompt
create table ID_PD_EDULEVEL_7
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EDULEVEL_8
prompt ===============================
prompt
create table ID_PD_EDULEVEL_8
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_EMPLOYMENT
prompt ===============================
prompt
create table ID_PD_EMPLOYMENT
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_EMPLOYMENT on ID_PD_EMPLOYMENT (CRCPID);

prompt
prompt Creating table ID_PD_EMPLOYMENT_1
prompt =================================
prompt
create table ID_PD_EMPLOYMENT_1
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5)
)
;

prompt
prompt Creating table ID_PD_EMPLOYMENT_2
prompt =================================
prompt
create table ID_PD_EMPLOYMENT_2
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5)
)
;

prompt
prompt Creating table ID_PD_EMPLOYMENT_3
prompt =================================
prompt
create table ID_PD_EMPLOYMENT_3
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5)
)
;

prompt
prompt Creating table ID_PD_EMPLOYMENT_4
prompt =================================
prompt
create table ID_PD_EMPLOYMENT_4
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5)
)
;

prompt
prompt Creating table ID_PD_EMPLOYMENT_5
prompt =================================
prompt
create table ID_PD_EMPLOYMENT_5
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5)
)
;

prompt
prompt Creating table ID_PD_EMPLOYMENT_6
prompt =================================
prompt
create table ID_PD_EMPLOYMENT_6
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5)
)
;

prompt
prompt Creating table ID_PD_EMPLOYMENT_7
prompt =================================
prompt
create table ID_PD_EMPLOYMENT_7
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5)
)
;

prompt
prompt Creating table ID_PD_EMPLOYMENT_8
prompt =================================
prompt
create table ID_PD_EMPLOYMENT_8
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5)
)
;

prompt
prompt Creating table ID_PD_GENDER
prompt ===========================
prompt
create table ID_PD_GENDER
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_GENDER on ID_PD_GENDER (CRCPID);

prompt
prompt Creating table ID_PD_GENDER_1
prompt =============================
prompt
create table ID_PD_GENDER_1
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_GENDER_2
prompt =============================
prompt
create table ID_PD_GENDER_2
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_GENDER_3
prompt =============================
prompt
create table ID_PD_GENDER_3
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_GENDER_4
prompt =============================
prompt
create table ID_PD_GENDER_4
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_GENDER_5
prompt =============================
prompt
create table ID_PD_GENDER_5
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_GENDER_6
prompt =============================
prompt
create table ID_PD_GENDER_6
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_GENDER_7
prompt =============================
prompt
create table ID_PD_GENDER_7
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_GENDER_8
prompt =============================
prompt
create table ID_PD_GENDER_8
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_HOME
prompt =========================
prompt
create table ID_PD_HOME
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_HOME on ID_PD_HOME (CRCPID);

prompt
prompt Creating table ID_PD_HOME_1
prompt ===========================
prompt
create table ID_PD_HOME_1
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_HOME_2
prompt ===========================
prompt
create table ID_PD_HOME_2
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_HOME_3
prompt ===========================
prompt
create table ID_PD_HOME_3
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_HOME_4
prompt ===========================
prompt
create table ID_PD_HOME_4
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_HOME_5
prompt ===========================
prompt
create table ID_PD_HOME_5
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_HOME_6
prompt ===========================
prompt
create table ID_PD_HOME_6
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_HOME_7
prompt ===========================
prompt
create table ID_PD_HOME_7
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_HOME_8
prompt ===========================
prompt
create table ID_PD_HOME_8
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_LOC
prompt ========================
prompt
create table ID_PD_LOC
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(16),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_LOC on ID_PD_LOC (CRCPID);

prompt
prompt Creating table ID_PD_LOC_1
prompt ==========================
prompt
create table ID_PD_LOC_1
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(14),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_LOC_2
prompt ==========================
prompt
create table ID_PD_LOC_2
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(14),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_LOC_3
prompt ==========================
prompt
create table ID_PD_LOC_3
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(14),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_LOC_4
prompt ==========================
prompt
create table ID_PD_LOC_4
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(14),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_LOC_5
prompt ==========================
prompt
create table ID_PD_LOC_5
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(14),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_LOC_6
prompt ==========================
prompt
create table ID_PD_LOC_6
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(14),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_LOC_7
prompt ==========================
prompt
create table ID_PD_LOC_7
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(14),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_LOC_8
prompt ==========================
prompt
create table ID_PD_LOC_8
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(14),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RESIDENCE
prompt ==============================
prompt
create table ID_PD_RESIDENCE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_RESIDENCE on ID_PD_RESIDENCE (CRCPID);

prompt
prompt Creating table ID_PD_RESIDENCE_1
prompt ================================
prompt
create table ID_PD_RESIDENCE_1
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RESIDENCE_2
prompt ================================
prompt
create table ID_PD_RESIDENCE_2
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RESIDENCE_3
prompt ================================
prompt
create table ID_PD_RESIDENCE_3
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RESIDENCE_4
prompt ================================
prompt
create table ID_PD_RESIDENCE_4
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RESIDENCE_5
prompt ================================
prompt
create table ID_PD_RESIDENCE_5
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RESIDENCE_6
prompt ================================
prompt
create table ID_PD_RESIDENCE_6
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RESIDENCE_7
prompt ================================
prompt
create table ID_PD_RESIDENCE_7
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RESIDENCE_8
prompt ================================
prompt
create table ID_PD_RESIDENCE_8
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RETIREDDATE
prompt ================================
prompt
create table ID_PD_RETIREDDATE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_RETIREDDATE on ID_PD_RETIREDDATE (CRCPID);

prompt
prompt Creating table ID_PD_RETIREDDATE_1
prompt ==================================
prompt
create table ID_PD_RETIREDDATE_1
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RETIREDDATE_2
prompt ==================================
prompt
create table ID_PD_RETIREDDATE_2
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RETIREDDATE_3
prompt ==================================
prompt
create table ID_PD_RETIREDDATE_3
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RETIREDDATE_4
prompt ==================================
prompt
create table ID_PD_RETIREDDATE_4
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RETIREDDATE_5
prompt ==================================
prompt
create table ID_PD_RETIREDDATE_5
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RETIREDDATE_6
prompt ==================================
prompt
create table ID_PD_RETIREDDATE_6
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RETIREDDATE_7
prompt ==================================
prompt
create table ID_PD_RETIREDDATE_7
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_RETIREDDATE_8
prompt ==================================
prompt
create table ID_PD_RETIREDDATE_8
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_SPOUSE
prompt ===========================
prompt
create table ID_PD_SPOUSE
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_SPOUSE on ID_PD_SPOUSE (CRCPID);

prompt
prompt Creating table ID_PD_SPOUSE_1
prompt =============================
prompt
create table ID_PD_SPOUSE_1
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_SPOUSE_2
prompt =============================
prompt
create table ID_PD_SPOUSE_2
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_SPOUSE_3
prompt =============================
prompt
create table ID_PD_SPOUSE_3
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_SPOUSE_4
prompt =============================
prompt
create table ID_PD_SPOUSE_4
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_SPOUSE_5
prompt =============================
prompt
create table ID_PD_SPOUSE_5
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_SPOUSE_6
prompt =============================
prompt
create table ID_PD_SPOUSE_6
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_SPOUSE_7
prompt =============================
prompt
create table ID_PD_SPOUSE_7
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_SPOUSE_8
prompt =============================
prompt
create table ID_PD_SPOUSE_8
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_SUMMARY
prompt ============================
prompt
create table ID_PD_SUMMARY
(
  CRCPID     NUMBER(16) not null,
  SUMMARY    CHAR(32) not null,
  CREATETIME DATE not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_SUMMARY on ID_PD_SUMMARY (CRCPID);

prompt
prompt Creating table ID_PD_SUMMARY_1
prompt ==============================
prompt
create table ID_PD_SUMMARY_1
(
  CRCPID     NUMBER(16) not null,
  SUMMARY    CHAR(32) not null,
  CREATETIME DATE not null
)
;

prompt
prompt Creating table ID_PD_SUMMARY_2
prompt ==============================
prompt
create table ID_PD_SUMMARY_2
(
  CRCPID     NUMBER(16) not null,
  SUMMARY    CHAR(32) not null,
  CREATETIME DATE not null
)
;

prompt
prompt Creating table ID_PD_SUMMARY_3
prompt ==============================
prompt
create table ID_PD_SUMMARY_3
(
  CRCPID     NUMBER(16) not null,
  SUMMARY    CHAR(32) not null,
  CREATETIME DATE not null
)
;

prompt
prompt Creating table ID_PD_SUMMARY_4
prompt ==============================
prompt
create table ID_PD_SUMMARY_4
(
  CRCPID     NUMBER(16) not null,
  SUMMARY    CHAR(32) not null,
  CREATETIME DATE not null
)
;

prompt
prompt Creating table ID_PD_SUMMARY_5
prompt ==============================
prompt
create table ID_PD_SUMMARY_5
(
  CRCPID     NUMBER(16) not null,
  SUMMARY    CHAR(32) not null,
  CREATETIME DATE not null
)
;

prompt
prompt Creating table ID_PD_SUMMARY_6
prompt ==============================
prompt
create table ID_PD_SUMMARY_6
(
  CRCPID     NUMBER(16) not null,
  SUMMARY    CHAR(32) not null,
  CREATETIME DATE not null
)
;

prompt
prompt Creating table ID_PD_SUMMARY_7
prompt ==============================
prompt
create table ID_PD_SUMMARY_7
(
  CRCPID     NUMBER(16) not null,
  SUMMARY    CHAR(32) not null,
  CREATETIME DATE not null
)
;

prompt
prompt Creating table ID_PD_SUMMARY_8
prompt ==============================
prompt
create table ID_PD_SUMMARY_8
(
  CRCPID     NUMBER(16) not null,
  SUMMARY    CHAR(32) not null,
  CREATETIME DATE not null
)
;

prompt
prompt Creating table ID_PD_TEL
prompt ========================
prompt
create table ID_PD_TEL
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25) not null,
  TELTYPE     CHAR(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_TEL on ID_PD_TEL (CRCPID);

prompt
prompt Creating table ID_PD_TEL_1
prompt ==========================
prompt
create table ID_PD_TEL_1
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25) not null,
  TELTYPE     CHAR(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_TEL_2
prompt ==========================
prompt
create table ID_PD_TEL_2
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25) not null,
  TELTYPE     CHAR(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_TEL_3
prompt ==========================
prompt
create table ID_PD_TEL_3
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25) not null,
  TELTYPE     CHAR(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_TEL_4
prompt ==========================
prompt
create table ID_PD_TEL_4
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25) not null,
  TELTYPE     CHAR(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_TEL_5
prompt ==========================
prompt
create table ID_PD_TEL_5
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25) not null,
  TELTYPE     CHAR(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_TEL_6
prompt ==========================
prompt
create table ID_PD_TEL_6
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25) not null,
  TELTYPE     CHAR(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_TEL_7
prompt ==========================
prompt
create table ID_PD_TEL_7
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25) not null,
  TELTYPE     CHAR(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_TEL_8
prompt ==========================
prompt
create table ID_PD_TEL_8
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25) not null,
  TELTYPE     CHAR(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_WORKDATE
prompt =============================
prompt
create table ID_PD_WORKDATE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
partition by hash (CRCPID)
(
  partition PART1
    tablespace TS_TAB_PII_PRODUCT,
  partition PART2
    tablespace TS_TAB_PII_PRODUCT,
  partition PART3
    tablespace TS_TAB_PII_PRODUCT,
  partition PART4
    tablespace TS_TAB_PII_PRODUCT,
  partition PART5
    tablespace TS_TAB_PII_PRODUCT,
  partition PART6
    tablespace TS_TAB_PII_PRODUCT,
  partition PART7
    tablespace TS_TAB_PII_PRODUCT,
  partition PART8
    tablespace TS_TAB_PII_PRODUCT,
  partition PART9
    tablespace TS_TAB_PII_PRODUCT,
  partition PART10
    tablespace TS_TAB_PII_PRODUCT,
  partition PART11
    tablespace TS_TAB_PII_PRODUCT,
  partition PART12
    tablespace TS_TAB_PII_PRODUCT,
  partition PART13
    tablespace TS_TAB_PII_PRODUCT,
  partition PART14
    tablespace TS_TAB_PII_PRODUCT,
  partition PART15
    tablespace TS_TAB_PII_PRODUCT,
  partition PART16
    tablespace TS_TAB_PII_PRODUCT
);
create index IDX_PD_WORKDATE on ID_PD_WORKDATE (CRCPID);

prompt
prompt Creating table ID_PD_WORKDATE_1
prompt ===============================
prompt
create table ID_PD_WORKDATE_1
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_WORKDATE_2
prompt ===============================
prompt
create table ID_PD_WORKDATE_2
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_WORKDATE_3
prompt ===============================
prompt
create table ID_PD_WORKDATE_3
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_WORKDATE_4
prompt ===============================
prompt
create table ID_PD_WORKDATE_4
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_WORKDATE_5
prompt ===============================
prompt
create table ID_PD_WORKDATE_5
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_WORKDATE_6
prompt ===============================
prompt
create table ID_PD_WORKDATE_6
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_WORKDATE_7
prompt ===============================
prompt
create table ID_PD_WORKDATE_7
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PD_WORKDATE_8
prompt ===============================
prompt
create table ID_PD_WORKDATE_8
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_PROCEDURELOG
prompt ==============================
prompt
create table ID_PROCEDURELOG
(
  ID            NUMBER(27) not null,
  PROCEDURENAME VARCHAR2(100) not null,
  RESULTFLAG    CHAR(1) not null,
  DETAIL        VARCHAR2(400),
  OPERATETIME   DATE not null,
  RESERVE1      VARCHAR2(100)
)
;
comment on table ID_PROCEDURELOG
  is '�洢������־��';
comment on column ID_PROCEDURELOG.ID
  is 'ϵͳ��־���к�';
comment on column ID_PROCEDURELOG.PROCEDURENAME
  is '�洢��������';
comment on column ID_PROCEDURELOG.RESULTFLAG
  is '���״̬ 0-ʧ�� 1-�ɹ�';
comment on column ID_PROCEDURELOG.DETAIL
  is '��ϸ����';
comment on column ID_PROCEDURELOG.OPERATETIME
  is '����ʱ��';
comment on column ID_PROCEDURELOG.RESERVE1
  is 'Ԥ���ֶ�1';

prompt
prompt Creating table ID_QU_ANNUALINCOME
prompt =================================
prompt
create table ID_QU_ANNUALINCOME
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  ANNUALINCOME NUMBER(10) not null,
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_BIRTHDAY
prompt =============================
prompt
create table ID_QU_BIRTHDAY
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  BIRTHDAY    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_CERTIFICATE
prompt ================================
prompt
create table ID_QU_CERTIFICATE
(
  CRCPID          NUMBER(16) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE NUMBER(1) not null
)
;

prompt
prompt Creating table ID_QU_EDUDEGREE
prompt ==============================
prompt
create table ID_QU_EDUDEGREE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDUDEGREE   NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_EDULEVEL
prompt =============================
prompt
create table ID_QU_EDULEVEL
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  EDULEVEL    NUMBER(2) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_EMPLOYMENT
prompt ===============================
prompt
create table ID_QU_EMPLOYMENT
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  COMPANY        VARCHAR2(80) not null,
  ENTERPRISETYPE VARCHAR2(1),
  STARTYEAR      NUMBER(4),
  OCCUPATION     CHAR(1),
  DUTY           NUMBER(1),
  CASTE          NUMBER(1),
  INDUSTRY       CHAR(1),
  OCCADDRESS     VARCHAR2(60),
  OCCZIP         NUMBER(6),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_GENDER
prompt ===========================
prompt
create table ID_QU_GENDER
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  GENDER      NUMBER(1) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_HOME
prompt =========================
prompt
create table ID_QU_HOME
(
  CRCPID       NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  RESCONDITION CHAR(1) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  HOMETEL      VARCHAR2(25),
  GLOBERECORD  NUMBER(16) not null,
  REPEATNUM    NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_LOC
prompt ========================
prompt
create table ID_QU_LOC
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  ADDRESSTYPE CHAR(1) not null,
  ADDRESS     VARCHAR2(60),
  ZIP         NUMBER(6),
  CITY        VARCHAR2(16),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_RESIDENCE
prompt ==============================
prompt
create table ID_QU_RESIDENCE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RESIDENCE   VARCHAR2(60) not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_RETIREDDATE
prompt ================================
prompt
create table ID_QU_RETIREDDATE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  RETIREDDATE DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_SPOUSE
prompt ===========================
prompt
create table ID_QU_SPOUSE
(
  CRCPID         NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  DATEOPENED     DATE not null,
  MARRIAGE       NUMBER(2) not null,
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  GLOBERECORD    NUMBER(16) not null,
  REPEATNUM      NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_TEL
prompt ========================
prompt
create table ID_QU_TEL
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  TEL         VARCHAR2(25),
  TELTYPE     CHAR(1),
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_QU_WORKDATE
prompt =============================
prompt
create table ID_QU_WORKDATE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  DATEOPENED  DATE not null,
  WORKDATE    DATE not null,
  GLOBERECORD NUMBER(16) not null,
  REPEATNUM   NUMBER(5) not null
)
;

prompt
prompt Creating table ID_TEMP_TEL_PERSONINFO
prompt =====================================
prompt
create table ID_TEMP_TEL_PERSONINFO
(
  DATEOPENED      DATE not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        VARCHAR2(1) not null,
  CERTNO          VARCHAR2(18) not null,
  BUSINESSMANCODE CHAR(2) not null,
  AREACODE        CHAR(6) not null,
  TELNO           VARCHAR2(25),
  ADDRESS         VARCHAR2(60)
)
;

prompt
prompt Creating table ID_TT_ACT_FUND
prompt =============================
prompt
create table ID_TT_ACT_FUND
(
  FINANCECODE VARCHAR2(14) not null,
  PIN         NUMBER(16) not null,
  COMPANY     VARCHAR2(80),
  NATURE      VARCHAR2(1),
  TEL         VARCHAR2(25),
  OPENDATE    DATE not null
)
;

prompt
prompt Creating table ID_TT_ADDRESS
prompt ============================
prompt
create table ID_TT_ADDRESS
(
  PIN          NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  RESCONDITION CHAR(1),
  RECID        CHAR(31) not null
)
partition by hash (PIN)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);

prompt
prompt Creating table ID_TT_ADDRESS_1
prompt ==============================
prompt
create table ID_TT_ADDRESS_1
(
  PIN          NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  RESIDENCE    VARCHAR2(60),
  RESZIP       NUMBER(6),
  RESCONDITION CHAR(1),
  RECID        CHAR(31) not null
)
partition by hash (PIN)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP,
  partition PART17
    tablespace TS_TAB_PII_TMP,
  partition PART18
    tablespace TS_TAB_PII_TMP,
  partition PART19
    tablespace TS_TAB_PII_TMP,
  partition PART20
    tablespace TS_TAB_PII_TMP,
  partition PART21
    tablespace TS_TAB_PII_TMP,
  partition PART22
    tablespace TS_TAB_PII_TMP,
  partition PART23
    tablespace TS_TAB_PII_TMP,
  partition PART24
    tablespace TS_TAB_PII_TMP,
  partition PART25
    tablespace TS_TAB_PII_TMP,
  partition PART26
    tablespace TS_TAB_PII_TMP,
  partition PART27
    tablespace TS_TAB_PII_TMP,
  partition PART28
    tablespace TS_TAB_PII_TMP,
  partition PART29
    tablespace TS_TAB_PII_TMP,
  partition PART30
    tablespace TS_TAB_PII_TMP,
  partition PART31
    tablespace TS_TAB_PII_TMP,
  partition PART32
    tablespace TS_TAB_PII_TMP,
  partition PART33
    tablespace TS_TAB_PII_TMP,
  partition PART34
    tablespace TS_TAB_PII_TMP,
  partition PART35
    tablespace TS_TAB_PII_TMP,
  partition PART36
    tablespace TS_TAB_PII_TMP,
  partition PART37
    tablespace TS_TAB_PII_TMP,
  partition PART38
    tablespace TS_TAB_PII_TMP,
  partition PART39
    tablespace TS_TAB_PII_TMP,
  partition PART40
    tablespace TS_TAB_PII_TMP,
  partition PART41
    tablespace TS_TAB_PII_TMP,
  partition PART42
    tablespace TS_TAB_PII_TMP,
  partition PART43
    tablespace TS_TAB_PII_TMP,
  partition PART44
    tablespace TS_TAB_PII_TMP,
  partition PART45
    tablespace TS_TAB_PII_TMP,
  partition PART46
    tablespace TS_TAB_PII_TMP,
  partition PART47
    tablespace TS_TAB_PII_TMP,
  partition PART48
    tablespace TS_TAB_PII_TMP,
  partition PART49
    tablespace TS_TAB_PII_TMP,
  partition PART50
    tablespace TS_TAB_PII_TMP,
  partition PART51
    tablespace TS_TAB_PII_TMP,
  partition PART52
    tablespace TS_TAB_PII_TMP,
  partition PART53
    tablespace TS_TAB_PII_TMP,
  partition PART54
    tablespace TS_TAB_PII_TMP,
  partition PART55
    tablespace TS_TAB_PII_TMP,
  partition PART56
    tablespace TS_TAB_PII_TMP,
  partition PART57
    tablespace TS_TAB_PII_TMP,
  partition PART58
    tablespace TS_TAB_PII_TMP,
  partition PART59
    tablespace TS_TAB_PII_TMP,
  partition PART60
    tablespace TS_TAB_PII_TMP,
  partition PART61
    tablespace TS_TAB_PII_TMP,
  partition PART62
    tablespace TS_TAB_PII_TMP,
  partition PART63
    tablespace TS_TAB_PII_TMP,
  partition PART64
    tablespace TS_TAB_PII_TMP,
  partition PART65
    tablespace TS_TAB_PII_TMP,
  partition PART66
    tablespace TS_TAB_PII_TMP,
  partition PART67
    tablespace TS_TAB_PII_TMP,
  partition PART68
    tablespace TS_TAB_PII_TMP,
  partition PART69
    tablespace TS_TAB_PII_TMP,
  partition PART70
    tablespace TS_TAB_PII_TMP,
  partition PART71
    tablespace TS_TAB_PII_TMP,
  partition PART72
    tablespace TS_TAB_PII_TMP,
  partition PART73
    tablespace TS_TAB_PII_TMP,
  partition PART74
    tablespace TS_TAB_PII_TMP,
  partition PART75
    tablespace TS_TAB_PII_TMP,
  partition PART76
    tablespace TS_TAB_PII_TMP,
  partition PART77
    tablespace TS_TAB_PII_TMP,
  partition PART78
    tablespace TS_TAB_PII_TMP,
  partition PART79
    tablespace TS_TAB_PII_TMP,
  partition PART80
    tablespace TS_TAB_PII_TMP,
  partition PART81
    tablespace TS_TAB_PII_TMP,
  partition PART82
    tablespace TS_TAB_PII_TMP,
  partition PART83
    tablespace TS_TAB_PII_TMP,
  partition PART84
    tablespace TS_TAB_PII_TMP,
  partition PART85
    tablespace TS_TAB_PII_TMP,
  partition PART86
    tablespace TS_TAB_PII_TMP,
  partition PART87
    tablespace TS_TAB_PII_TMP,
  partition PART88
    tablespace TS_TAB_PII_TMP,
  partition PART89
    tablespace TS_TAB_PII_TMP,
  partition PART90
    tablespace TS_TAB_PII_TMP,
  partition PART91
    tablespace TS_TAB_PII_TMP,
  partition PART92
    tablespace TS_TAB_PII_TMP,
  partition PART93
    tablespace TS_TAB_PII_TMP,
  partition PART94
    tablespace TS_TAB_PII_TMP,
  partition PART95
    tablespace TS_TAB_PII_TMP,
  partition PART96
    tablespace TS_TAB_PII_TMP,
  partition PART97
    tablespace TS_TAB_PII_TMP,
  partition PART98
    tablespace TS_TAB_PII_TMP,
  partition PART99
    tablespace TS_TAB_PII_TMP,
  partition PART100
    tablespace TS_TAB_PII_TMP,
  partition PART101
    tablespace TS_TAB_PII_TMP,
  partition PART102
    tablespace TS_TAB_PII_TMP,
  partition PART103
    tablespace TS_TAB_PII_TMP,
  partition PART104
    tablespace TS_TAB_PII_TMP,
  partition PART105
    tablespace TS_TAB_PII_TMP,
  partition PART106
    tablespace TS_TAB_PII_TMP,
  partition PART107
    tablespace TS_TAB_PII_TMP,
  partition PART108
    tablespace TS_TAB_PII_TMP,
  partition PART109
    tablespace TS_TAB_PII_TMP,
  partition PART110
    tablespace TS_TAB_PII_TMP,
  partition PART111
    tablespace TS_TAB_PII_TMP,
  partition PART112
    tablespace TS_TAB_PII_TMP,
  partition PART113
    tablespace TS_TAB_PII_TMP,
  partition PART114
    tablespace TS_TAB_PII_TMP,
  partition PART115
    tablespace TS_TAB_PII_TMP,
  partition PART116
    tablespace TS_TAB_PII_TMP,
  partition PART117
    tablespace TS_TAB_PII_TMP,
  partition PART118
    tablespace TS_TAB_PII_TMP,
  partition PART119
    tablespace TS_TAB_PII_TMP,
  partition PART120
    tablespace TS_TAB_PII_TMP,
  partition PART121
    tablespace TS_TAB_PII_TMP,
  partition PART122
    tablespace TS_TAB_PII_TMP,
  partition PART123
    tablespace TS_TAB_PII_TMP,
  partition PART124
    tablespace TS_TAB_PII_TMP,
  partition PART125
    tablespace TS_TAB_PII_TMP,
  partition PART126
    tablespace TS_TAB_PII_TMP,
  partition PART127
    tablespace TS_TAB_PII_TMP,
  partition PART128
    tablespace TS_TAB_PII_TMP,
  partition PART129
    tablespace TS_TAB_PII_TMP,
  partition PART130
    tablespace TS_TAB_PII_TMP,
  partition PART131
    tablespace TS_TAB_PII_TMP,
  partition PART132
    tablespace TS_TAB_PII_TMP,
  partition PART133
    tablespace TS_TAB_PII_TMP,
  partition PART134
    tablespace TS_TAB_PII_TMP,
  partition PART135
    tablespace TS_TAB_PII_TMP,
  partition PART136
    tablespace TS_TAB_PII_TMP,
  partition PART137
    tablespace TS_TAB_PII_TMP,
  partition PART138
    tablespace TS_TAB_PII_TMP,
  partition PART139
    tablespace TS_TAB_PII_TMP,
  partition PART140
    tablespace TS_TAB_PII_TMP,
  partition PART141
    tablespace TS_TAB_PII_TMP,
  partition PART142
    tablespace TS_TAB_PII_TMP,
  partition PART143
    tablespace TS_TAB_PII_TMP,
  partition PART144
    tablespace TS_TAB_PII_TMP,
  partition PART145
    tablespace TS_TAB_PII_TMP,
  partition PART146
    tablespace TS_TAB_PII_TMP,
  partition PART147
    tablespace TS_TAB_PII_TMP,
  partition PART148
    tablespace TS_TAB_PII_TMP,
  partition PART149
    tablespace TS_TAB_PII_TMP,
  partition PART150
    tablespace TS_TAB_PII_TMP,
  partition PART151
    tablespace TS_TAB_PII_TMP,
  partition PART152
    tablespace TS_TAB_PII_TMP,
  partition PART153
    tablespace TS_TAB_PII_TMP,
  partition PART154
    tablespace TS_TAB_PII_TMP,
  partition PART155
    tablespace TS_TAB_PII_TMP,
  partition PART156
    tablespace TS_TAB_PII_TMP,
  partition PART157
    tablespace TS_TAB_PII_TMP,
  partition PART158
    tablespace TS_TAB_PII_TMP,
  partition PART159
    tablespace TS_TAB_PII_TMP,
  partition PART160
    tablespace TS_TAB_PII_TMP,
  partition PART161
    tablespace TS_TAB_PII_TMP,
  partition PART162
    tablespace TS_TAB_PII_TMP,
  partition PART163
    tablespace TS_TAB_PII_TMP,
  partition PART164
    tablespace TS_TAB_PII_TMP,
  partition PART165
    tablespace TS_TAB_PII_TMP,
  partition PART166
    tablespace TS_TAB_PII_TMP,
  partition PART167
    tablespace TS_TAB_PII_TMP,
  partition PART168
    tablespace TS_TAB_PII_TMP,
  partition PART169
    tablespace TS_TAB_PII_TMP,
  partition PART170
    tablespace TS_TAB_PII_TMP,
  partition PART171
    tablespace TS_TAB_PII_TMP,
  partition PART172
    tablespace TS_TAB_PII_TMP,
  partition PART173
    tablespace TS_TAB_PII_TMP,
  partition PART174
    tablespace TS_TAB_PII_TMP,
  partition PART175
    tablespace TS_TAB_PII_TMP,
  partition PART176
    tablespace TS_TAB_PII_TMP,
  partition PART177
    tablespace TS_TAB_PII_TMP,
  partition PART178
    tablespace TS_TAB_PII_TMP,
  partition PART179
    tablespace TS_TAB_PII_TMP,
  partition PART180
    tablespace TS_TAB_PII_TMP,
  partition PART181
    tablespace TS_TAB_PII_TMP,
  partition PART182
    tablespace TS_TAB_PII_TMP,
  partition PART183
    tablespace TS_TAB_PII_TMP,
  partition PART184
    tablespace TS_TAB_PII_TMP,
  partition PART185
    tablespace TS_TAB_PII_TMP,
  partition PART186
    tablespace TS_TAB_PII_TMP,
  partition PART187
    tablespace TS_TAB_PII_TMP,
  partition PART188
    tablespace TS_TAB_PII_TMP,
  partition PART189
    tablespace TS_TAB_PII_TMP,
  partition PART190
    tablespace TS_TAB_PII_TMP,
  partition PART191
    tablespace TS_TAB_PII_TMP,
  partition PART192
    tablespace TS_TAB_PII_TMP,
  partition PART193
    tablespace TS_TAB_PII_TMP,
  partition PART194
    tablespace TS_TAB_PII_TMP,
  partition PART195
    tablespace TS_TAB_PII_TMP,
  partition PART196
    tablespace TS_TAB_PII_TMP,
  partition PART197
    tablespace TS_TAB_PII_TMP,
  partition PART198
    tablespace TS_TAB_PII_TMP,
  partition PART199
    tablespace TS_TAB_PII_TMP,
  partition PART200
    tablespace TS_TAB_PII_TMP,
  partition PART201
    tablespace TS_TAB_PII_TMP,
  partition PART202
    tablespace TS_TAB_PII_TMP,
  partition PART203
    tablespace TS_TAB_PII_TMP,
  partition PART204
    tablespace TS_TAB_PII_TMP,
  partition PART205
    tablespace TS_TAB_PII_TMP,
  partition PART206
    tablespace TS_TAB_PII_TMP,
  partition PART207
    tablespace TS_TAB_PII_TMP,
  partition PART208
    tablespace TS_TAB_PII_TMP,
  partition PART209
    tablespace TS_TAB_PII_TMP,
  partition PART210
    tablespace TS_TAB_PII_TMP,
  partition PART211
    tablespace TS_TAB_PII_TMP,
  partition PART212
    tablespace TS_TAB_PII_TMP,
  partition PART213
    tablespace TS_TAB_PII_TMP,
  partition PART214
    tablespace TS_TAB_PII_TMP,
  partition PART215
    tablespace TS_TAB_PII_TMP,
  partition PART216
    tablespace TS_TAB_PII_TMP,
  partition PART217
    tablespace TS_TAB_PII_TMP,
  partition PART218
    tablespace TS_TAB_PII_TMP,
  partition PART219
    tablespace TS_TAB_PII_TMP,
  partition PART220
    tablespace TS_TAB_PII_TMP,
  partition PART221
    tablespace TS_TAB_PII_TMP,
  partition PART222
    tablespace TS_TAB_PII_TMP,
  partition PART223
    tablespace TS_TAB_PII_TMP,
  partition PART224
    tablespace TS_TAB_PII_TMP,
  partition PART225
    tablespace TS_TAB_PII_TMP,
  partition PART226
    tablespace TS_TAB_PII_TMP,
  partition PART227
    tablespace TS_TAB_PII_TMP,
  partition PART228
    tablespace TS_TAB_PII_TMP,
  partition PART229
    tablespace TS_TAB_PII_TMP,
  partition PART230
    tablespace TS_TAB_PII_TMP,
  partition PART231
    tablespace TS_TAB_PII_TMP,
  partition PART232
    tablespace TS_TAB_PII_TMP,
  partition PART233
    tablespace TS_TAB_PII_TMP,
  partition PART234
    tablespace TS_TAB_PII_TMP,
  partition PART235
    tablespace TS_TAB_PII_TMP,
  partition PART236
    tablespace TS_TAB_PII_TMP,
  partition PART237
    tablespace TS_TAB_PII_TMP,
  partition PART238
    tablespace TS_TAB_PII_TMP,
  partition PART239
    tablespace TS_TAB_PII_TMP,
  partition PART240
    tablespace TS_TAB_PII_TMP,
  partition PART241
    tablespace TS_TAB_PII_TMP,
  partition PART242
    tablespace TS_TAB_PII_TMP,
  partition PART243
    tablespace TS_TAB_PII_TMP,
  partition PART244
    tablespace TS_TAB_PII_TMP,
  partition PART245
    tablespace TS_TAB_PII_TMP,
  partition PART246
    tablespace TS_TAB_PII_TMP,
  partition PART247
    tablespace TS_TAB_PII_TMP,
  partition PART248
    tablespace TS_TAB_PII_TMP,
  partition PART249
    tablespace TS_TAB_PII_TMP,
  partition PART250
    tablespace TS_TAB_PII_TMP,
  partition PART251
    tablespace TS_TAB_PII_TMP,
  partition PART252
    tablespace TS_TAB_PII_TMP,
  partition PART253
    tablespace TS_TAB_PII_TMP,
  partition PART254
    tablespace TS_TAB_PII_TMP,
  partition PART255
    tablespace TS_TAB_PII_TMP,
  partition PART256
    tablespace TS_TAB_PII_TMP,
  partition PART257
    tablespace TS_TAB_PII_TMP,
  partition PART258
    tablespace TS_TAB_PII_TMP,
  partition PART259
    tablespace TS_TAB_PII_TMP,
  partition PART260
    tablespace TS_TAB_PII_TMP,
  partition PART261
    tablespace TS_TAB_PII_TMP,
  partition PART262
    tablespace TS_TAB_PII_TMP,
  partition PART263
    tablespace TS_TAB_PII_TMP,
  partition PART264
    tablespace TS_TAB_PII_TMP,
  partition PART265
    tablespace TS_TAB_PII_TMP,
  partition PART266
    tablespace TS_TAB_PII_TMP,
  partition PART267
    tablespace TS_TAB_PII_TMP,
  partition PART268
    tablespace TS_TAB_PII_TMP,
  partition PART269
    tablespace TS_TAB_PII_TMP,
  partition PART270
    tablespace TS_TAB_PII_TMP,
  partition PART271
    tablespace TS_TAB_PII_TMP,
  partition PART272
    tablespace TS_TAB_PII_TMP,
  partition PART273
    tablespace TS_TAB_PII_TMP,
  partition PART274
    tablespace TS_TAB_PII_TMP,
  partition PART275
    tablespace TS_TAB_PII_TMP,
  partition PART276
    tablespace TS_TAB_PII_TMP,
  partition PART277
    tablespace TS_TAB_PII_TMP,
  partition PART278
    tablespace TS_TAB_PII_TMP,
  partition PART279
    tablespace TS_TAB_PII_TMP,
  partition PART280
    tablespace TS_TAB_PII_TMP,
  partition PART281
    tablespace TS_TAB_PII_TMP,
  partition PART282
    tablespace TS_TAB_PII_TMP,
  partition PART283
    tablespace TS_TAB_PII_TMP,
  partition PART284
    tablespace TS_TAB_PII_TMP,
  partition PART285
    tablespace TS_TAB_PII_TMP,
  partition PART286
    tablespace TS_TAB_PII_TMP,
  partition PART287
    tablespace TS_TAB_PII_TMP,
  partition PART288
    tablespace TS_TAB_PII_TMP,
  partition PART289
    tablespace TS_TAB_PII_TMP,
  partition PART290
    tablespace TS_TAB_PII_TMP,
  partition PART291
    tablespace TS_TAB_PII_TMP,
  partition PART292
    tablespace TS_TAB_PII_TMP,
  partition PART293
    tablespace TS_TAB_PII_TMP,
  partition PART294
    tablespace TS_TAB_PII_TMP,
  partition PART295
    tablespace TS_TAB_PII_TMP,
  partition PART296
    tablespace TS_TAB_PII_TMP,
  partition PART297
    tablespace TS_TAB_PII_TMP,
  partition PART298
    tablespace TS_TAB_PII_TMP,
  partition PART299
    tablespace TS_TAB_PII_TMP,
  partition PART300
    tablespace TS_TAB_PII_TMP,
  partition PART301
    tablespace TS_TAB_PII_TMP,
  partition PART302
    tablespace TS_TAB_PII_TMP,
  partition PART303
    tablespace TS_TAB_PII_TMP,
  partition PART304
    tablespace TS_TAB_PII_TMP,
  partition PART305
    tablespace TS_TAB_PII_TMP,
  partition PART306
    tablespace TS_TAB_PII_TMP,
  partition PART307
    tablespace TS_TAB_PII_TMP,
  partition PART308
    tablespace TS_TAB_PII_TMP,
  partition PART309
    tablespace TS_TAB_PII_TMP,
  partition PART310
    tablespace TS_TAB_PII_TMP,
  partition PART311
    tablespace TS_TAB_PII_TMP,
  partition PART312
    tablespace TS_TAB_PII_TMP,
  partition PART313
    tablespace TS_TAB_PII_TMP,
  partition PART314
    tablespace TS_TAB_PII_TMP,
  partition PART315
    tablespace TS_TAB_PII_TMP,
  partition PART316
    tablespace TS_TAB_PII_TMP,
  partition PART317
    tablespace TS_TAB_PII_TMP,
  partition PART318
    tablespace TS_TAB_PII_TMP,
  partition PART319
    tablespace TS_TAB_PII_TMP,
  partition PART320
    tablespace TS_TAB_PII_TMP,
  partition PART321
    tablespace TS_TAB_PII_TMP,
  partition PART322
    tablespace TS_TAB_PII_TMP,
  partition PART323
    tablespace TS_TAB_PII_TMP,
  partition PART324
    tablespace TS_TAB_PII_TMP,
  partition PART325
    tablespace TS_TAB_PII_TMP,
  partition PART326
    tablespace TS_TAB_PII_TMP,
  partition PART327
    tablespace TS_TAB_PII_TMP,
  partition PART328
    tablespace TS_TAB_PII_TMP,
  partition PART329
    tablespace TS_TAB_PII_TMP,
  partition PART330
    tablespace TS_TAB_PII_TMP,
  partition PART331
    tablespace TS_TAB_PII_TMP,
  partition PART332
    tablespace TS_TAB_PII_TMP,
  partition PART333
    tablespace TS_TAB_PII_TMP,
  partition PART334
    tablespace TS_TAB_PII_TMP,
  partition PART335
    tablespace TS_TAB_PII_TMP,
  partition PART336
    tablespace TS_TAB_PII_TMP,
  partition PART337
    tablespace TS_TAB_PII_TMP,
  partition PART338
    tablespace TS_TAB_PII_TMP,
  partition PART339
    tablespace TS_TAB_PII_TMP,
  partition PART340
    tablespace TS_TAB_PII_TMP,
  partition PART341
    tablespace TS_TAB_PII_TMP,
  partition PART342
    tablespace TS_TAB_PII_TMP,
  partition PART343
    tablespace TS_TAB_PII_TMP,
  partition PART344
    tablespace TS_TAB_PII_TMP,
  partition PART345
    tablespace TS_TAB_PII_TMP,
  partition PART346
    tablespace TS_TAB_PII_TMP,
  partition PART347
    tablespace TS_TAB_PII_TMP,
  partition PART348
    tablespace TS_TAB_PII_TMP,
  partition PART349
    tablespace TS_TAB_PII_TMP,
  partition PART350
    tablespace TS_TAB_PII_TMP,
  partition PART351
    tablespace TS_TAB_PII_TMP,
  partition PART352
    tablespace TS_TAB_PII_TMP,
  partition PART353
    tablespace TS_TAB_PII_TMP,
  partition PART354
    tablespace TS_TAB_PII_TMP,
  partition PART355
    tablespace TS_TAB_PII_TMP,
  partition PART356
    tablespace TS_TAB_PII_TMP,
  partition PART357
    tablespace TS_TAB_PII_TMP,
  partition PART358
    tablespace TS_TAB_PII_TMP,
  partition PART359
    tablespace TS_TAB_PII_TMP,
  partition PART360
    tablespace TS_TAB_PII_TMP,
  partition PART361
    tablespace TS_TAB_PII_TMP,
  partition PART362
    tablespace TS_TAB_PII_TMP,
  partition PART363
    tablespace TS_TAB_PII_TMP,
  partition PART364
    tablespace TS_TAB_PII_TMP,
  partition PART365
    tablespace TS_TAB_PII_TMP,
  partition PART366
    tablespace TS_TAB_PII_TMP,
  partition PART367
    tablespace TS_TAB_PII_TMP,
  partition PART368
    tablespace TS_TAB_PII_TMP,
  partition PART369
    tablespace TS_TAB_PII_TMP,
  partition PART370
    tablespace TS_TAB_PII_TMP,
  partition PART371
    tablespace TS_TAB_PII_TMP,
  partition PART372
    tablespace TS_TAB_PII_TMP,
  partition PART373
    tablespace TS_TAB_PII_TMP,
  partition PART374
    tablespace TS_TAB_PII_TMP,
  partition PART375
    tablespace TS_TAB_PII_TMP,
  partition PART376
    tablespace TS_TAB_PII_TMP,
  partition PART377
    tablespace TS_TAB_PII_TMP,
  partition PART378
    tablespace TS_TAB_PII_TMP,
  partition PART379
    tablespace TS_TAB_PII_TMP,
  partition PART380
    tablespace TS_TAB_PII_TMP,
  partition PART381
    tablespace TS_TAB_PII_TMP,
  partition PART382
    tablespace TS_TAB_PII_TMP,
  partition PART383
    tablespace TS_TAB_PII_TMP,
  partition PART384
    tablespace TS_TAB_PII_TMP,
  partition PART385
    tablespace TS_TAB_PII_TMP,
  partition PART386
    tablespace TS_TAB_PII_TMP,
  partition PART387
    tablespace TS_TAB_PII_TMP,
  partition PART388
    tablespace TS_TAB_PII_TMP,
  partition PART389
    tablespace TS_TAB_PII_TMP,
  partition PART390
    tablespace TS_TAB_PII_TMP,
  partition PART391
    tablespace TS_TAB_PII_TMP,
  partition PART392
    tablespace TS_TAB_PII_TMP,
  partition PART393
    tablespace TS_TAB_PII_TMP,
  partition PART394
    tablespace TS_TAB_PII_TMP,
  partition PART395
    tablespace TS_TAB_PII_TMP,
  partition PART396
    tablespace TS_TAB_PII_TMP,
  partition PART397
    tablespace TS_TAB_PII_TMP,
  partition PART398
    tablespace TS_TAB_PII_TMP,
  partition PART399
    tablespace TS_TAB_PII_TMP,
  partition PART400
    tablespace TS_TAB_PII_TMP,
  partition PART401
    tablespace TS_TAB_PII_TMP,
  partition PART402
    tablespace TS_TAB_PII_TMP,
  partition PART403
    tablespace TS_TAB_PII_TMP,
  partition PART404
    tablespace TS_TAB_PII_TMP,
  partition PART405
    tablespace TS_TAB_PII_TMP,
  partition PART406
    tablespace TS_TAB_PII_TMP,
  partition PART407
    tablespace TS_TAB_PII_TMP,
  partition PART408
    tablespace TS_TAB_PII_TMP,
  partition PART409
    tablespace TS_TAB_PII_TMP,
  partition PART410
    tablespace TS_TAB_PII_TMP,
  partition PART411
    tablespace TS_TAB_PII_TMP,
  partition PART412
    tablespace TS_TAB_PII_TMP,
  partition PART413
    tablespace TS_TAB_PII_TMP,
  partition PART414
    tablespace TS_TAB_PII_TMP,
  partition PART415
    tablespace TS_TAB_PII_TMP,
  partition PART416
    tablespace TS_TAB_PII_TMP,
  partition PART417
    tablespace TS_TAB_PII_TMP,
  partition PART418
    tablespace TS_TAB_PII_TMP,
  partition PART419
    tablespace TS_TAB_PII_TMP,
  partition PART420
    tablespace TS_TAB_PII_TMP,
  partition PART421
    tablespace TS_TAB_PII_TMP,
  partition PART422
    tablespace TS_TAB_PII_TMP,
  partition PART423
    tablespace TS_TAB_PII_TMP,
  partition PART424
    tablespace TS_TAB_PII_TMP,
  partition PART425
    tablespace TS_TAB_PII_TMP,
  partition PART426
    tablespace TS_TAB_PII_TMP,
  partition PART427
    tablespace TS_TAB_PII_TMP,
  partition PART428
    tablespace TS_TAB_PII_TMP,
  partition PART429
    tablespace TS_TAB_PII_TMP,
  partition PART430
    tablespace TS_TAB_PII_TMP,
  partition PART431
    tablespace TS_TAB_PII_TMP,
  partition PART432
    tablespace TS_TAB_PII_TMP,
  partition PART433
    tablespace TS_TAB_PII_TMP,
  partition PART434
    tablespace TS_TAB_PII_TMP,
  partition PART435
    tablespace TS_TAB_PII_TMP,
  partition PART436
    tablespace TS_TAB_PII_TMP,
  partition PART437
    tablespace TS_TAB_PII_TMP,
  partition PART438
    tablespace TS_TAB_PII_TMP,
  partition PART439
    tablespace TS_TAB_PII_TMP,
  partition PART440
    tablespace TS_TAB_PII_TMP,
  partition PART441
    tablespace TS_TAB_PII_TMP,
  partition PART442
    tablespace TS_TAB_PII_TMP,
  partition PART443
    tablespace TS_TAB_PII_TMP,
  partition PART444
    tablespace TS_TAB_PII_TMP,
  partition PART445
    tablespace TS_TAB_PII_TMP,
  partition PART446
    tablespace TS_TAB_PII_TMP,
  partition PART447
    tablespace TS_TAB_PII_TMP,
  partition PART448
    tablespace TS_TAB_PII_TMP,
  partition PART449
    tablespace TS_TAB_PII_TMP,
  partition PART450
    tablespace TS_TAB_PII_TMP,
  partition PART451
    tablespace TS_TAB_PII_TMP,
  partition PART452
    tablespace TS_TAB_PII_TMP,
  partition PART453
    tablespace TS_TAB_PII_TMP,
  partition PART454
    tablespace TS_TAB_PII_TMP,
  partition PART455
    tablespace TS_TAB_PII_TMP,
  partition PART456
    tablespace TS_TAB_PII_TMP,
  partition PART457
    tablespace TS_TAB_PII_TMP,
  partition PART458
    tablespace TS_TAB_PII_TMP,
  partition PART459
    tablespace TS_TAB_PII_TMP,
  partition PART460
    tablespace TS_TAB_PII_TMP,
  partition PART461
    tablespace TS_TAB_PII_TMP,
  partition PART462
    tablespace TS_TAB_PII_TMP,
  partition PART463
    tablespace TS_TAB_PII_TMP,
  partition PART464
    tablespace TS_TAB_PII_TMP,
  partition PART465
    tablespace TS_TAB_PII_TMP,
  partition PART466
    tablespace TS_TAB_PII_TMP,
  partition PART467
    tablespace TS_TAB_PII_TMP,
  partition PART468
    tablespace TS_TAB_PII_TMP,
  partition PART469
    tablespace TS_TAB_PII_TMP,
  partition PART470
    tablespace TS_TAB_PII_TMP,
  partition PART471
    tablespace TS_TAB_PII_TMP,
  partition PART472
    tablespace TS_TAB_PII_TMP,
  partition PART473
    tablespace TS_TAB_PII_TMP,
  partition PART474
    tablespace TS_TAB_PII_TMP,
  partition PART475
    tablespace TS_TAB_PII_TMP,
  partition PART476
    tablespace TS_TAB_PII_TMP,
  partition PART477
    tablespace TS_TAB_PII_TMP,
  partition PART478
    tablespace TS_TAB_PII_TMP,
  partition PART479
    tablespace TS_TAB_PII_TMP,
  partition PART480
    tablespace TS_TAB_PII_TMP,
  partition PART481
    tablespace TS_TAB_PII_TMP,
  partition PART482
    tablespace TS_TAB_PII_TMP,
  partition PART483
    tablespace TS_TAB_PII_TMP,
  partition PART484
    tablespace TS_TAB_PII_TMP,
  partition PART485
    tablespace TS_TAB_PII_TMP,
  partition PART486
    tablespace TS_TAB_PII_TMP,
  partition PART487
    tablespace TS_TAB_PII_TMP,
  partition PART488
    tablespace TS_TAB_PII_TMP,
  partition PART489
    tablespace TS_TAB_PII_TMP,
  partition PART490
    tablespace TS_TAB_PII_TMP,
  partition PART491
    tablespace TS_TAB_PII_TMP,
  partition PART492
    tablespace TS_TAB_PII_TMP,
  partition PART493
    tablespace TS_TAB_PII_TMP,
  partition PART494
    tablespace TS_TAB_PII_TMP,
  partition PART495
    tablespace TS_TAB_PII_TMP,
  partition PART496
    tablespace TS_TAB_PII_TMP,
  partition PART497
    tablespace TS_TAB_PII_TMP,
  partition PART498
    tablespace TS_TAB_PII_TMP,
  partition PART499
    tablespace TS_TAB_PII_TMP,
  partition PART500
    tablespace TS_TAB_PII_TMP,
  partition PART501
    tablespace TS_TAB_PII_TMP,
  partition PART502
    tablespace TS_TAB_PII_TMP,
  partition PART503
    tablespace TS_TAB_PII_TMP,
  partition PART504
    tablespace TS_TAB_PII_TMP,
  partition PART505
    tablespace TS_TAB_PII_TMP,
  partition PART506
    tablespace TS_TAB_PII_TMP,
  partition PART507
    tablespace TS_TAB_PII_TMP,
  partition PART508
    tablespace TS_TAB_PII_TMP,
  partition PART509
    tablespace TS_TAB_PII_TMP,
  partition PART510
    tablespace TS_TAB_PII_TMP,
  partition PART511
    tablespace TS_TAB_PII_TMP,
  partition PART512
    tablespace TS_TAB_PII_TMP
);

prompt
prompt Creating table ID_TT_AUTHQUERY
prompt ==============================
prompt
create table ID_TT_AUTHQUERY
(
  NAME            VARCHAR2(30) not null,
  CERTNO          VARCHAR2(18) not null,
  QUERYRESULTCODE CHAR(1)
)
;

prompt
prompt Creating table ID_TT_CERTIFICATE
prompt ================================
prompt
create table ID_TT_CERTIFICATE
(
  PIN      NUMBER(16) not null,
  NAME     VARCHAR2(30) not null,
  CERTTYPE CHAR(1) not null,
  CERTNO   VARCHAR2(18) not null
)
;

prompt
prompt Creating table ID_TT_EMPLOYMENT
prompt ===============================
prompt
create table ID_TT_EMPLOYMENT
(
  PIN          NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  OCCUPATION   CHAR(1),
  COMPANY      VARCHAR2(80),
  INDUSTRY     CHAR(1),
  OCCADDRESS   VARCHAR2(60),
  OCCZIP       NUMBER(6),
  STARTYEAR    NUMBER(4),
  DUTY         NUMBER(1),
  CASTE        NUMBER(1),
  ANNUALINCOME NUMBER(10),
  RECID        CHAR(31) not null
)
partition by hash (PIN)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);

prompt
prompt Creating table ID_TT_EMPLOYMENT_1
prompt =================================
prompt
create table ID_TT_EMPLOYMENT_1
(
  PIN          NUMBER(16) not null,
  FINANCECODE  VARCHAR2(14) not null,
  OCCUPATION   CHAR(1),
  COMPANY      VARCHAR2(60),
  INDUSTRY     CHAR(1),
  OCCADDRESS   VARCHAR2(60),
  OCCZIP       NUMBER(6),
  STARTYEAR    NUMBER(4),
  DUTY         NUMBER(1),
  CASTE        NUMBER(1),
  ANNUALINCOME NUMBER(10),
  RECID        CHAR(31) not null
)
;

prompt
prompt Creating table ID_TT_ENDOWMENTPERSONINFO
prompt ========================================
prompt
create table ID_TT_ENDOWMENTPERSONINFO
(
  INSURANCEORGCODE VARCHAR2(14) not null,
  OCCUREDDATE      DATE not null,
  NAME             VARCHAR2(30) not null,
  CERTTYPE         VARCHAR2(1) not null,
  CERTNO           VARCHAR2(18) not null,
  SEX              NUMBER(1),
  BIRTHDATE        DATE,
  ENTERPRISENAME   VARCHAR2(80),
  ENTERPRISETYPE   VARCHAR2(1),
  ECONOMYTYPE      VARCHAR2(1),
  INDUSTRYCODE     CHAR(1),
  WORKDATE         DATE
)
;

prompt
prompt Creating table ID_TT_ENDOWMENTPERSONINFO_PAID
prompt =============================================
prompt
create table ID_TT_ENDOWMENTPERSONINFO_PAID
(
  OCCUREDDATE      DATE not null,
  INSURANCEORGCODE VARCHAR2(14) not null,
  NAME             VARCHAR2(30) not null,
  CERTTYPE         VARCHAR2(1) not null,
  CERTNO           VARCHAR2(18) not null,
  SEX              NUMBER(1),
  BIRTHDATE        DATE,
  ENTERPRISENAME   VARCHAR2(80),
  RETIREDDATE      DATE
)
;

prompt
prompt Creating table ID_TT_PERSON
prompt ===========================
prompt
create table ID_TT_PERSON
(
  PIN            NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  GENDER         NUMBER(1),
  BIRTHDAY       DATE,
  MARRIAGE       NUMBER(2),
  EDULEVEL       NUMBER(2),
  EDUDEGREE      NUMBER(1),
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSECERTTYPE CHAR(1),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  HOMETEL        VARCHAR2(25),
  MOBILETEL      VARCHAR2(16),
  OFFICETEL      VARCHAR2(25),
  ADDRESS        VARCHAR2(60),
  ZIP            NUMBER(6),
  RESIDENCE      VARCHAR2(60),
  RECID          CHAR(31) not null
)
partition by hash (PIN)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);

prompt
prompt Creating table ID_TT_PERSON_1
prompt =============================
prompt
create table ID_TT_PERSON_1
(
  PIN            NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14) not null,
  GENDER         NUMBER(1),
  BIRTHDAY       DATE,
  MARRIAGE       NUMBER(2),
  EDULEVEL       NUMBER(2),
  EDUDEGREE      NUMBER(1),
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSECERTTYPE CHAR(1),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  HOMETEL        VARCHAR2(25),
  MOBILETEL      VARCHAR2(16),
  OFFICETEL      VARCHAR2(25),
  ADDRESS        VARCHAR2(60),
  ZIP            NUMBER(6),
  RESIDENCE      VARCHAR2(60),
  RECID          CHAR(31) not null
)
;

prompt
prompt Creating table ID_TT_SETTLEMENTACCOUNTINFO
prompt ==========================================
prompt
create table ID_TT_SETTLEMENTACCOUNTINFO
(
  FURNISHERORG VARCHAR2(14) not null,
  DATEOPENED   DATE not null,
  TEL          VARCHAR2(25),
  ADDRESS      VARCHAR2(70),
  ZIP          NUMBER(6),
  NAME         VARCHAR2(30) not null,
  CERTTYPE     CHAR(1) not null,
  CERTNO       VARCHAR2(18) not null
)
;

prompt
prompt Creating table ID_TT_TEL_ACCEPTINFO
prompt ===================================
prompt
create table ID_TT_TEL_ACCEPTINFO
(
  DATEOPENED DATE not null,
  MSGID      NUMBER(10) not null,
  RECORDID   NUMBER(18) not null
)
;

prompt
prompt Creating table ID_TT_TEL_PERSONINFO
prompt ===================================
prompt
create table ID_TT_TEL_PERSONINFO
(
  NAME            VARCHAR2(30) not null,
  CERTTYPE        VARCHAR2(1) not null,
  CERTNO          VARCHAR2(18) not null,
  BUSINESSMANCODE CHAR(2) not null,
  AREACODE        CHAR(6) not null,
  TELNO           VARCHAR2(25),
  ADDRESS         VARCHAR2(60),
  MSGID           NUMBER(10) not null,
  RECORDID        NUMBER(18) not null
)
;

prompt
prompt Creating table ID_TT_TRADEINFO
prompt ==============================
prompt
create table ID_TT_TRADEINFO
(
  PIN        NUMBER(16) not null,
  DATEOPENED DATE not null,
  RECID      CHAR(31) not null
)
partition by hash (PIN)
(
  partition PART1
    tablespace TS_TAB_PII_TMP,
  partition PART2
    tablespace TS_TAB_PII_TMP,
  partition PART3
    tablespace TS_TAB_PII_TMP,
  partition PART4
    tablespace TS_TAB_PII_TMP,
  partition PART5
    tablespace TS_TAB_PII_TMP,
  partition PART6
    tablespace TS_TAB_PII_TMP,
  partition PART7
    tablespace TS_TAB_PII_TMP,
  partition PART8
    tablespace TS_TAB_PII_TMP,
  partition PART9
    tablespace TS_TAB_PII_TMP,
  partition PART10
    tablespace TS_TAB_PII_TMP,
  partition PART11
    tablespace TS_TAB_PII_TMP,
  partition PART12
    tablespace TS_TAB_PII_TMP,
  partition PART13
    tablespace TS_TAB_PII_TMP,
  partition PART14
    tablespace TS_TAB_PII_TMP,
  partition PART15
    tablespace TS_TAB_PII_TMP,
  partition PART16
    tablespace TS_TAB_PII_TMP
);

prompt
prompt Creating table ID_TT_TRADEINFO_1
prompt ================================
prompt
create table ID_TT_TRADEINFO_1
(
  PIN        NUMBER(16) not null,
  DATEOPENED DATE not null,
  RECID      CHAR(31) not null
)
;

prompt
prompt Creating table PERSON
prompt =====================
prompt
create table PERSON
(
  PERSONID       NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14),
  GENDER         NUMBER(1),
  BIRTHDAY       DATE,
  MARRIAGE       NUMBER(2),
  EDULEVEL       NUMBER(2),
  EDUDEGREE      NUMBER(1),
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  HOMETEL        VARCHAR2(25),
  MOBILETEL      VARCHAR2(16),
  OFFICETEL      VARCHAR2(25),
  EMAIL          VARCHAR2(30),
  ADDRESS        VARCHAR2(60),
  ZIP            CHAR(6),
  RESIDENCE      VARCHAR2(60),
  PIN            NUMBER(16) not null,
  MSGID          NUMBER(16),
  GETTIME        DATE not null,
  TRUST          NUMBER(1),
  HASHVALUE      CHAR(64),
  RECID          CHAR(64),
  CORRECTMSGID   NUMBER(16),
  RESERVED       VARCHAR2(15)
)
;

prompt
prompt Creating table PERSONCHECKINFO
prompt ==============================
prompt
create table PERSONCHECKINFO
(
  CERTNO            VARCHAR2(30) not null,
  NAME              VARCHAR2(30) not null,
  GETTIME           DATE not null,
  CERTNOCHECKRESULT CHAR(1)
)
;

prompt
prompt Creating table PERSON_HIS
prompt =========================
prompt
create table PERSON_HIS
(
  PERSONID       NUMBER(16) not null,
  FINANCECODE    VARCHAR2(14),
  GENDER         NUMBER(1),
  BIRTHDAY       DATE,
  MARRIAGE       NUMBER(2),
  EDULEVEL       NUMBER(2),
  EDUDEGREE      NUMBER(1),
  SPOUSENAME     VARCHAR2(30),
  SPOUSECERTTYPE CHAR(1),
  SPOUSECERTNO   VARCHAR2(18),
  SPOUSEOFFICE   VARCHAR2(60),
  SPOUSETEL      VARCHAR2(25),
  HOMETEL        VARCHAR2(25),
  MOBILETEL      VARCHAR2(16),
  OFFICETEL      VARCHAR2(25),
  EMAIL          VARCHAR2(30),
  ADDRESS        VARCHAR2(60),
  ZIP            CHAR(6),
  RESIDENCE      VARCHAR2(60),
  PIN            NUMBER(16) not null,
  MSGID          NUMBER(16),
  GETTIME        DATE not null,
  CHANGETIME     DATE not null,
  TRUST          NUMBER(1),
  HASHVALUE      CHAR(64),
  RECID          CHAR(64),
  CORRECTMSGID   NUMBER(16),
  RESERVED       VARCHAR2(15)
)
;

prompt
prompt Creating table PLAN_TABLE
prompt =========================
prompt
create table PLAN_TABLE
(
  STATEMENT_ID      VARCHAR2(30),
  PLAN_ID           NUMBER,
  TIMESTAMP         DATE,
  REMARKS           VARCHAR2(4000),
  OPERATION         VARCHAR2(30),
  OPTIONS           VARCHAR2(255),
  OBJECT_NODE       VARCHAR2(128),
  OBJECT_OWNER      VARCHAR2(30),
  OBJECT_NAME       VARCHAR2(30),
  OBJECT_ALIAS      VARCHAR2(65),
  OBJECT_INSTANCE   INTEGER,
  OBJECT_TYPE       VARCHAR2(30),
  OPTIMIZER         VARCHAR2(255),
  SEARCH_COLUMNS    NUMBER,
  ID                INTEGER,
  PARENT_ID         INTEGER,
  DEPTH             INTEGER,
  POSITION          INTEGER,
  COST              INTEGER,
  CARDINALITY       INTEGER,
  BYTES             INTEGER,
  OTHER_TAG         VARCHAR2(255),
  PARTITION_START   VARCHAR2(255),
  PARTITION_STOP    VARCHAR2(255),
  PARTITION_ID      INTEGER,
  OTHER             LONG,
  DISTRIBUTION      VARCHAR2(30),
  CPU_COST          INTEGER,
  IO_COST           INTEGER,
  TEMP_SPACE        INTEGER,
  ACCESS_PREDICATES VARCHAR2(4000),
  FILTER_PREDICATES VARCHAR2(4000),
  PROJECTION        VARCHAR2(4000),
  TIME              INTEGER,
  QBLOCK_NAME       VARCHAR2(30)
)
;

prompt
prompt Creating table SETTLEMENTACCOUNTINFO
prompt ====================================
prompt
create table SETTLEMENTACCOUNTINFO
(
  ACCOUNTS_ID  NUMBER(38) not null,
  BANKCODE     VARCHAR2(12) not null,
  ACCOUNT      VARCHAR2(32) not null,
  DATEOPENED   DATE not null,
  DATECLOSED   DATE,
  TEL          VARCHAR2(25),
  ADDRESS      VARCHAR2(70),
  ZIP          NUMBER(6),
  MSGID        NUMBER(16) not null,
  RECID        NUMBER(16) not null,
  GETTIME      DATE not null,
  CHANGETYPE   VARCHAR2(1) not null,
  CHANGEDATE   DATE not null,
  FURNISHERORG VARCHAR2(14),
  NAME         VARCHAR2(30) not null,
  CERTTYPE     CHAR(1) not null,
  CERTNO       VARCHAR2(18) not null
)
;
comment on table SETTLEMENTACCOUNTINFO
  is '���˽����˻���Ϣ';
comment on column SETTLEMENTACCOUNTINFO.ACCOUNTS_ID
  is '�˺�id';
comment on column SETTLEMENTACCOUNTINFO.BANKCODE
  is '�������д���';
comment on column SETTLEMENTACCOUNTINFO.ACCOUNT
  is 'Υ���˺�';
comment on column SETTLEMENTACCOUNTINFO.DATEOPENED
  is '��������';
comment on column SETTLEMENTACCOUNTINFO.DATECLOSED
  is '��������';
comment on column SETTLEMENTACCOUNTINFO.TEL
  is '�绰����';
comment on column SETTLEMENTACCOUNTINFO.ADDRESS
  is '��ס����ͨ�ţ���ַ';
comment on column SETTLEMENTACCOUNTINFO.ZIP
  is '��������';
comment on column SETTLEMENTACCOUNTINFO.MSGID
  is '���ı��';
comment on column SETTLEMENTACCOUNTINFO.RECID
  is '��¼��ʶ';
comment on column SETTLEMENTACCOUNTINFO.GETTIME
  is '��Ϣ��ȡʱ��';
comment on column SETTLEMENTACCOUNTINFO.CHANGETYPE
  is '�������';
comment on column SETTLEMENTACCOUNTINFO.CHANGEDATE
  is '���ʱ��';
comment on column SETTLEMENTACCOUNTINFO.FURNISHERORG
  is '�ϱ���������';
comment on column SETTLEMENTACCOUNTINFO.NAME
  is '����';
comment on column SETTLEMENTACCOUNTINFO.CERTTYPE
  is '֤������';
comment on column SETTLEMENTACCOUNTINFO.CERTNO
  is '֤������';

prompt
prompt Creating table TEL1_ACCEPTINFO
prompt ==============================
prompt
create table TEL1_ACCEPTINFO
(
  BUSINESSMANCODE CHAR(2),
  AREACODE        CHAR(6),
  TEL1ACCOUNT     VARCHAR2(20),
  OCCUREDDATE     DATE,
  TELTYPE         CHAR(2),
  TELNO           VARCHAR2(24),
  DATEOPENED      DATE,
  CURPAYSTAT      CHAR(1),
  SCHEDULEDAMT    CHAR(1),
  ACTUALPAYAMT    CHAR(1),
  RECENTPAYDATE   DATE,
  AMTPASTDUE      NUMBER(8),
  MAXAMTPASTDUE   NUMBER(8),
  MAXPASTDUEDATE  DATE,
  NAME            VARCHAR2(30),
  CERTTYPE        VARCHAR2(5),
  CERTNO          VARCHAR2(18),
  MSGID           NUMBER(10),
  RECORDID        NUMBER(18),
  LOADDATE        DATE,
  MONTH24FLAG     NUMBER(1),
  ERRORREASON     VARCHAR2(40)
)
;

prompt
prompt Creating table TEL1_ACCEPTINFO_HIS
prompt ==================================
prompt
create table TEL1_ACCEPTINFO_HIS
(
  BUSINESSMANCODE CHAR(2),
  AREACODE        CHAR(6),
  TEL1ACCOUNT     VARCHAR2(20),
  OCCUREDDATE     DATE not null,
  TELTYPE         CHAR(2) not null,
  TELNO           VARCHAR2(24),
  DATEOPENED      DATE not null,
  CURPAYSTAT      CHAR(1) not null,
  SCHEDULEDAMT    CHAR(1),
  ACTUALPAYAMT    CHAR(1),
  RECENTPAYDATE   DATE,
  AMTPASTDUE      NUMBER(8) not null,
  MAXAMTPASTDUE   NUMBER(8),
  MAXPASTDUEDATE  DATE,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        VARCHAR2(5),
  CERTNO          VARCHAR2(18) not null,
  MSGID           NUMBER(10) not null,
  RECORDID        NUMBER(18) not null,
  LOADDATE        DATE not null,
  MONTH24FLAG     NUMBER(1) not null,
  ERRORREASON     VARCHAR2(40)
)
;

prompt
prompt Creating table TEL1_PERSONINFO
prompt ==============================
prompt
create table TEL1_PERSONINFO
(
  BUSINESSMANCODE CHAR(2) not null,
  AREACODE        CHAR(6) not null,
  TEL1ACCOUNT     VARCHAR2(20) not null,
  OCCUREDDATE     DATE not null,
  IDCHECKSTAT     NUMBER(1) not null,
  TELNO           VARCHAR2(24),
  ADDRESS         VARCHAR2(60),
  PIDCHECKSTAT    CHAR(1),
  MSGID           NUMBER(10) not null,
  RECORDID        NUMBER(16) not null,
  LOADDATE        DATE not null,
  NEWFLAG         NUMBER(1) not null,
  NAME            VARCHAR2(30) not null,
  CERTTYPE        CHAR(1) not null,
  CERTNO          VARCHAR2(18) not null
)
;
comment on column TEL1_PERSONINFO.BUSINESSMANCODE
  is '01-�й����ţ�
02-�й���ͨ��
03-�й��ƶ���
04-�й���ͨ��
05-�й���ͨ��
06-�й���ͨ��
';
comment on column TEL1_PERSONINFO.OCCUREDDATE
  is '���ݷ�������';
comment on column TEL1_PERSONINFO.IDCHECKSTAT
  is '1-�ѽ��й�̨��ݺ�ʵ��
2-δ���й�̨��ݺ�ʵ��
';
comment on column TEL1_PERSONINFO.ADDRESS
  is '"ҵ������"��һλΪ1ʱ,��д�̶��绰װ����ַ��
"ҵ������"��һλΪ2ʱ����д��������ʱ�Ǽǵ�סլ��ַ�������ʵ����͵�ַ�����֤�ϵ�סַ�ȣ�
"ҵ������"��һλΪ3��4ʱ����д���뿪ͨ����ʱ��סլ��ַ��
"ҵ������"��һλΪ5ʱ����д���뿪ͨҵ��ʱ�Ǽǵ�סַ�����֤�ϵ�סַ��
"ҵ������"��һλΪ6ʱ����д��������һ�ֵ�ַ��Ϣ��
';
comment on column TEL1_PERSONINFO.PIDCHECKSTAT
  is '����֤������Ϊ0-���֤ʱ����������£�
1-ͨ����
2-δͨ����
0-δ���У�
����֤�����ͷ�0ʱ��ͳһ��дΪX��
';
comment on column TEL1_PERSONINFO.MSGID
  is '���ı��';
comment on column TEL1_PERSONINFO.RECORDID
  is '��¼ƫ����';
comment on column TEL1_PERSONINFO.LOADDATE
  is '����ʱ��';
comment on column TEL1_PERSONINFO.NEWFLAG
  is '������ʶ 1 ���� 0 ������';
comment on column TEL1_PERSONINFO.NAME
  is '����';
comment on column TEL1_PERSONINFO.CERTTYPE
  is '֤������
0-���֤��
1-���ڲ���
2-��  �գ�
3-����֤��
4-ʿ��֤��
5-�۰ľ��������ڵ�ͨ��֤��
6-̨��ͬ�������ڵ�ͨ��֤��
7-��ʱ���֤��
8-����˾���֤��
9-����֤��
X-����֤����
';
comment on column TEL1_PERSONINFO.CERTNO
  is '֤������';

prompt
prompt Creating table TEL1_PERSONINFO_1
prompt ================================
prompt
create table TEL1_PERSONINFO_1
(
  NAME            VARCHAR2(30) not null,
  CERTTYPE        VARCHAR2(5) not null,
  CERTNO          VARCHAR2(18) not null,
  BUSINESSMANCODE CHAR(2) not null,
  AREACODE        CHAR(6) not null,
  TEL1ACCOUNT     VARCHAR2(20) not null,
  OCCUREDDATE     DATE not null,
  IDCHECKSTAT     NUMBER(1) not null,
  TELNO           VARCHAR2(24),
  ADDRESS         VARCHAR2(60),
  PIDCHECKSTAT    CHAR(1),
  MSGID           NUMBER(10) not null,
  RECORDID        NUMBER(16) not null,
  LOADDATE        DATE default sysdate not null,
  NEWFLAG         NUMBER(1) not null,
  ROWNUMBER       NUMBER(6)
)
;
comment on column TEL1_PERSONINFO_1.NAME
  is '����';
comment on column TEL1_PERSONINFO_1.CERTTYPE
  is '֤������
0-���֤��
1-���ڲ���
2-��  �գ�
3-����֤��
4-ʿ��֤��
5-�۰ľ��������ڵ�ͨ��֤��
6-̨��ͬ�������ڵ�ͨ��֤��
7-��ʱ���֤��
8-����˾���֤��
9-����֤��
X-����֤����
';
comment on column TEL1_PERSONINFO_1.CERTNO
  is '֤������';
comment on column TEL1_PERSONINFO_1.BUSINESSMANCODE
  is '01-�й����ţ�
02-�й���ͨ��
03-�й��ƶ���
04-�й���ͨ��
05-�й���ͨ��
06-�й���ͨ��
';
comment on column TEL1_PERSONINFO_1.OCCUREDDATE
  is '���ݷ�������';
comment on column TEL1_PERSONINFO_1.IDCHECKSTAT
  is '1-�ѽ��й�̨��ݺ�ʵ��
2-δ���й�̨��ݺ�ʵ��
';
comment on column TEL1_PERSONINFO_1.ADDRESS
  is '"ҵ������"��һλΪ1ʱ,��д�̶��绰װ����ַ��
"ҵ������"��һλΪ2ʱ����д��������ʱ�Ǽǵ�סլ��ַ�������ʵ����͵�ַ�����֤�ϵ�סַ�ȣ�
"ҵ������"��һλΪ3��4ʱ����д���뿪ͨ����ʱ��סլ��ַ��
"ҵ������"��һλΪ5ʱ����д���뿪ͨҵ��ʱ�Ǽǵ�סַ�����֤�ϵ�סַ��
"ҵ������"��һλΪ6ʱ����д��������һ�ֵ�ַ��Ϣ��
';
comment on column TEL1_PERSONINFO_1.PIDCHECKSTAT
  is '����֤������Ϊ0-���֤ʱ����������£�
1-ͨ����
2-δͨ����
0-δ���У�
����֤�����ͷ�0ʱ��ͳһ��дΪX��
';
comment on column TEL1_PERSONINFO_1.MSGID
  is '���ı��';
comment on column TEL1_PERSONINFO_1.RECORDID
  is '��¼ƫ����';
comment on column TEL1_PERSONINFO_1.LOADDATE
  is '����ʱ��';
comment on column TEL1_PERSONINFO_1.NEWFLAG
  is '������ʶ 1 ���� 0 ������';

prompt
prompt Creating table TEMP_TEST
prompt ========================
prompt
create table TEMP_TEST
(
  DATEOPENED      DATE,
  TELNO           VARCHAR2(25),
  ADDRESS         VARCHAR2(60),
  NAME            VARCHAR2(30),
  CERTTYPE        VARCHAR2(5),
  CERTNO          VARCHAR2(18),
  BUSINESSMANCODE CHAR(2),
  AREACODE        CHAR(6)
)
;

prompt
prompt Creating table TEST
prompt ===================
prompt
create table TEST
(
  CRCPID   NUMBER,
  NAME     VARCHAR2(20),
  CERTTYPE VARCHAR2(10),
  CERTNO   NUMBER,
  NO       NUMBER(4)
)
;

prompt
prompt Creating table TRADEINFO
prompt ========================
prompt
create table TRADEINFO
(
  PIN        NUMBER(16) not null,
  DATEOPENED DATE not null,
  MSGID      NUMBER(16) not null,
  GETTIME    DATE not null,
  PERSONID   NUMBER(16) not null,
  RECID      CHAR(64) not null
)
;

prompt
prompt Creating table TRADEINFO_PAID
prompt =============================
prompt
create table TRADEINFO_PAID
(
  PIN        NUMBER(16) not null,
  DATEOPENED DATE not null,
  MSGID      NUMBER(16) not null,
  GETTIME    DATE not null,
  PERSONID   NUMBER(16) not null,
  RECID      CHAR(64) not null
)
;

prompt
prompt Creating table TRADEINFO_UNPAID
prompt ===============================
prompt
create table TRADEINFO_UNPAID
(
  PIN        NUMBER(16) not null,
  DATEOPENED DATE not null,
  MSGID      NUMBER(16) not null,
  GETTIME    DATE not null,
  PERSONID   NUMBER(16) not null,
  RECID      CHAR(64) not null
)
;

prompt
prompt Creating table TT
prompt =================
prompt
create table TT
(
  HAHA   NUMBER(2),
  HEIHEI VARCHAR2(4)
)
;

prompt
prompt Creating table T_ID_MN_ASKINFOEXCHANGE
prompt ======================================
prompt
create table T_ID_MN_ASKINFOEXCHANGE
(
  CRCPID      NUMBER(16) not null,
  FINANCECODE VARCHAR2(14) not null,
  UPDATETIME  DATE,
  RECORDTYPE  NUMBER(2) not null,
  DATEOPENED  DATE not null,
  SHOWTYPE    VARCHAR2(1),
  OPTTYPE     VARCHAR2(1),
  GLOBERECORD NUMBER(16) not null,
  ITEM1       CHAR(1),
  ITEM2       VARCHAR2(80),
  ITEM3       VARCHAR2(18),
  ITEM4       VARCHAR2(60),
  ITEM5       NUMBER(10),
  ITEM6       NUMBER(4),
  ITEM7       NUMBER(1),
  ITEM8       NUMBER(1),
  ITEM9       VARCHAR2(25),
  ITEM10      NUMBER(5),
  ITEM11      DATE
)
;

prompt
prompt Creating table T_ID_MN_ASKQUEUE
prompt ===============================
prompt
create table T_ID_MN_ASKQUEUE
(
  CRCPID     NUMBER(16) not null,
  UPDATETIME DATE not null,
  STATUS     CHAR(1) not null,
  UPDATEUSER VARCHAR2(32)
)
;

prompt
prompt Creating table T_IND_DELASKINFO
prompt ===============================
prompt
create table T_IND_DELASKINFO
(
  GLOBERECORD NUMBER(16) not null
)
;

prompt
prompt Creating sequence AAAA
prompt ======================
prompt
create sequence AAAA
minvalue 1
maxvalue 999999999999999999999999999
start with 20002
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_GLOBERECORD_ID
prompt ====================================
prompt
create sequence SEQ_GLOBERECORD_ID
minvalue 1
maxvalue 999999999999999
start with 4472001
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_MPROCEDURELOG_ID
prompt ======================================
prompt
create sequence SEQ_MPROCEDURELOG_ID
minvalue 1
maxvalue 999999999999999
start with 1
increment by 1
cache 20;

prompt
prompt Creating materialized view ID_QU_RECOMMEND
prompt ==========================================
prompt
create materialized view ID_QU_RECOMMEND
refresh force on demand
start with to_date('22-09-2008 16:50:38', 'dd-mm-yyyy hh24:mi:ss') next SYSDATE + 1/288   
as
select c13.*,
n.financecode wfinancecode,
n.dateopened  wdateopened,
n.workdate,
sysdate mdate
from

(select tt.crcpid, 
tt.financecode, 
tt.dateopened, 
tt.workdate
          from (select t.crcpid, 
t.financecode, 
t.dateopened, 
t.workdate,
                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_workdate t) tt
         where tt.rank = 1) n,
(select c12.*,
m.financecode tfinancecode,
m.dateopened  tdateopened,
m.tel, 
m.teltype
from

(select tt.crcpid, 
tt.financecode, 
tt.dateopened, 
tt.tel,
tt.teltype
          from (select t.crcpid, 
t.financecode, 
t.dateopened, 
t.tel,
t.teltype,

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_tel t) tt
         where tt.rank = 1) m,
(select c11.*,
l.financecode sfinancecode,
l.dateopened  sdateopened,
l.marriage, 
l.spousename, 
l.spousecerttype, 
l.spousecertno, 
l.spouseoffice, 
l.spousetel
from

(select tt.crcpid, 
tt.financecode, 
tt.dateopened, 
tt.marriage, 
tt.spousename, 
tt.spousecerttype, 
tt.spousecertno, 
tt.spouseoffice, 
tt.spousetel
          from (select t.crcpid, 
t.financecode, 
t.dateopened, 
t.marriage, 
t.spousename, 
t.spousecerttype, 
t.spousecertno, 
t.spouseoffice, 
t.spousetel,

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_spouse t) tt
         where tt.rank = 1) l,



(select c10.*,
k.financecode rfinancecode,
k.dateopened  rdateopened,
k.retireddate
from

(select tt.crcpid, 
tt.financecode, 
tt.dateopened, 
tt.retireddate
          from (select t.crcpid, 
t.financecode, 
t.dateopened, 
t.retireddate, 

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_retireddate t) tt
         where tt.rank = 1) k,

(select c9.*,
j.financecode kfinancecode,
j.dateopened  kdateopened,
j.residence  hukou_address
from

(select tt.crcpid, 
tt.financecode, 
tt.dateopened, 
tt.residence
          from (select t.crcpid, 
t.financecode, 
t.dateopened, 
t.residence, 

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_residence t) tt
         where tt.rank = 1) j,
(select c8.*,
i.financecode ofinancecode,
i.dateopened odateopened,
i.addresstype,
i.address,
i.zip,
i.city
from
(select tt.crcpid, 
tt.financecode, 
tt.dateopened, 
tt.addresstype, 
tt.address, 
tt.zip, 
tt.city
          from (select t.crcpid, 
t.financecode, 
t.dateopened, 
t.addresstype, 
t.address, 
t.zip, 
t.city, 

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_loc t) tt
         where tt.rank = 1) i,
(select c7.*,
h.financecode hfinancecode,
h.dateopened hdateopened,
h.rescondition,
h.residence,
h.reszip,
h.hometel
from

(select tt.crcpid, 
tt.financecode, 
tt.dateopened, 
tt.rescondition, 
tt.residence, 
tt.reszip, 
tt.hometel
          from (select t.crcpid, 
t.financecode, 
t.dateopened, 
t.rescondition, 
t.residence, 
t.reszip, 
t.hometel, 

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_home t) tt
         where tt.rank = 1) h,


(select c6. *,
       g.gender,
       g.financecode gfinancecode,
       g.dateopened gdateopened
  from (select tt.crcpid, tt.gender, tt.financecode, tt.dateopened
          from (select t.crcpid,
                       t.gender,
                       t.financecode,
                       t.dateopened,
                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_gender t) tt
         where tt.rank = 1) g,
       (select c5. *,
               f.financecode efinancecode,
               f.dateopened edateopened,
               f.company,
               f.enterprisetype,
               f.startyear,
               f.occupation,
               f.duty,
               f.caste,
               f.industry,
               f.occaddress,
               f.occzip
          from (select tt.crcpid,
                       tt.financecode,
                       tt.dateopened,
                       tt.company,
                       tt.enterprisetype,
                       tt.startyear,
                       tt.occupation,
                       tt.duty,
                       tt.caste,
                       tt.industry,
                       tt.occaddress,
                       tt.occzip
                  from (select t.crcpid,
                               t.financecode,
                               t.dateopened,
                               t.company,
                               t.enterprisetype,
                               t.startyear,
                               t.occupation,
                               t.duty,
                               t.caste,
                               t.industry,
                               t.occaddress,
                               t.occzip,
                               ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                          from id_qu_employment t) tt
                 where tt.rank = 1) f,
               (select c4. *,
                       e.edulevel,
                       e.financecode lfinancecode,
                       e.dateopened ldateopened
                  from (select tt.crcpid,
                               tt.edulevel,
                               tt.financecode,
                               tt.dateopened
                          from (select t.crcpid,
                                       t.edulevel,
                                       t.financecode,
                                       t.dateopened,
                                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                                  from id_qu_edulevel t) tt
                         where tt.rank = 1) e,
                       (select c3. *,
                               d.edudegree,
                               d.financecode dfinancecode,
                               d.dateopened ddateopened
                          from (select tt.crcpid,
                                       tt.edudegree,
                                       tt.financecode,
                                       tt.dateopened
                                  from (select t.crcpid,
                                               t.edudegree,
                                               t.financecode,
                                               t.dateopened,
                                               ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                                          from id_qu_edudegree t) tt
                                 where tt.rank = 1) d,
                               (select c2. *,
                                       b.birthday,
                                       b.financecode bfinancecode,
                                       b.dateopened bdateopenedfrom
                                  from (select tt.crcpid,
                                               tt.birthday,
                                               tt.financecode,
                                               tt.dateopened
                                          from (select t.crcpid,
                                                       t.birthday,
                                                       t.financecode,
                                                       t.dateopened,
                                                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                                                  from id_qu_birthday t) tt
                                         where tt.rank = 1) b,
                                       
                                       (select c1.crcpid,
                                               a.annualincome,
                                               a.financecode afinancecode,
                                               a.dateopened adateopened
                                          from (select tt.crcpid,
                                                       tt.annualincome,
                                                       tt.financecode,
                                                       tt.dateopened
                                                  from (select t.crcpid,
                                                               t.annualincome,
                                                               t.financecode,
                                                               t.dateopened,
                                                               ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                                                          from id_qu_annualincome t) tt
                                                 where tt.rank = 1) a,
                                               id_qu_certificate c1
                                         where a.crcpid(+) = c1.crcpid) c2
                                 where b.crcpid(+) = c2.crcpid) c3
                         where d.crcpid(+) = c3.crcpid) c4
                 where e.crcpid(+) = c4.crcpid) c5
         where f.crcpid(+) = c5.crcpid) c6
 where g.crcpid(+) = c6.crcpid) c7
 where h.crcpid(+)=c7.crcpid) c8
 where i.crcpid(+)=c8.crcpid)c9
  where j.crcpid(+)=c9.crcpid )c10
    where k.crcpid(+)=c10.crcpid )c11
   where l.crcpid(+)=c11.crcpid) c12   
  where m.crcpid(+)=c12.crcpid)c13
   where n.crcpid(+)=c13.crcpid
/

prompt
prompt Creating materialized view ID_QU_RECOMMEND_ADDRESS
prompt ==================================================
prompt
create materialized view ID_QU_RECOMMEND_ADDRESS
refresh force on demand
start with to_date('01-03-2009 14:11:19', 'dd-mm-yyyy hh24:mi:ss') next SYSDATE + 1/1440   
as
select tt.crcpid, 
tt.financecode, 
tt.dateopened, 
tt.addresstype, 
tt.address, 
tt.zip, 
tt.city
          from (select t.crcpid, 
t.financecode, 
t.dateopened, 
t.addresstype, 
t.address, 
t.zip, 
t.city, 

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_loc t) tt
         where tt.rank = 1
/

prompt
prompt Creating materialized view ID_QU_RECOMMEND_ANNAULINCOME
prompt =======================================================
prompt
create materialized view ID_QU_RECOMMEND_ANNAULINCOME
refresh force on demand
start with to_date('22-09-2008 16:50:19', 'dd-mm-yyyy hh24:mi:ss') next SYSDATE + 1/1440   
as
select tt.crcpid,
                                                       tt.annualincome,
                                                       tt.financecode,
                                                       tt.dateopened
                                                  from (select t.crcpid,
                                                               t.annualincome,
                                                               t.financecode,
                                                               t.dateopened,
                                                               ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                                                          from id_qu_annualincome t) tt
                                                 where tt.rank = 1
/

prompt
prompt Creating materialized view ID_QU_RECOMMEND_BASE
prompt ===============================================
prompt
create materialized view ID_QU_RECOMMEND_BASE
refresh force on demand
start with to_date('01-03-2009 14:13:42', 'dd-mm-yyyy hh24:mi:ss') next SYSDATE + 1/288 
as
select c13.*,
n.financecode wfinancecode,
n.dateopened  wdateopened,
n.workdate,
sysdate mdate
from

(select tt.crcpid,
tt.financecode,
tt.dateopened,
tt.workdate
          from (select t.crcpid,
t.financecode,
t.dateopened,
t.workdate,
                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_workdate t) tt
         where tt.rank = 1) n,


(select c10.*,
k.financecode rfinancecode,
k.dateopened  rdateopened,
k.retireddate
from

(select tt.crcpid,
tt.financecode,
tt.dateopened,
tt.retireddate
          from (select t.crcpid,
t.financecode,
t.dateopened,
t.retireddate,

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_retireddate t) tt
         where tt.rank = 1) k,

(select c9.*,
j.financecode kfinancecode,
j.dateopened  kdateopened,
j.residence  hukou_address
from

(select tt.crcpid,
tt.financecode,
tt.dateopened,
tt.residence
          from (select t.crcpid,
t.financecode,
t.dateopened,
t.residence,

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_residence t) tt
         where tt.rank = 1) j,


(select c6. *,
       g.gender,
       g.financecode gfinancecode,
       g.dateopened gdateopened
  from (select tt.crcpid, tt.gender, tt.financecode, tt.dateopened
          from (select t.crcpid,
                       t.gender,

                       t.financecode,
                       t.dateopened,
                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY decode(t.financecode,'certificate000','1','user0000000000''2','3'),repeatnum desc, dateopened desc) rank
                  from id_qu_gender t) tt
         where tt.rank = 1) g,

               (select c4. *,
                       e.edulevel,
                       e.financecode lfinancecode,
                       e.dateopened ldateopened
                  from (select tt.crcpid,
                               tt.edulevel,
                               tt.financecode,
                               tt.dateopened
                          from (select t.crcpid,
                                       t.edulevel,
                                       t.financecode,
                                       t.dateopened,
                                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                                  from id_qu_edulevel t) tt
                         where tt.rank = 1) e,
                       (select c3. *,
                               d.edudegree,
                               d.financecode dfinancecode,
                               d.dateopened ddateopened
                          from (select tt.crcpid,
                                       tt.edudegree,
                                       tt.financecode,
                                       tt.dateopened
                                  from (select t.crcpid,
                                               t.edudegree,
                                               t.financecode,
                                               t.dateopened,
                                               ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                                          from id_qu_edudegree t) tt
                                 where tt.rank = 1) d,
                               (select c2.crcpid,
                                       b.birthday,
                                       b.financecode bfinancecode,
                                       b.dateopened bdateopenedfrom
                                  from (select tt.crcpid,
                                               tt.birthday,
                                               tt.financecode,
                                               tt.dateopened
                                          from (select t.crcpid,
                                                       t.birthday,

                                                       t.financecode,
                                                       t.dateopened,
                                                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY decode(t.financecode,'certificate000','1','user0000000000''2','3'),repeatnum desc, dateopened desc) rank
                                                  from id_qu_birthday t) tt
                                         where tt.rank = 1) b,


                                               id_qu_certificate c2
                                 where b.crcpid(+) = c2.crcpid) c3
                         where d.crcpid(+) = c3.crcpid) c4
                 where e.crcpid(+) = c4.crcpid)  c6
 where g.crcpid(+) = c6.crcpid)  c9
  where j.crcpid(+)=c9.crcpid )c10
    where k.crcpid(+)=c10.crcpid ) c13
   where n.crcpid(+)=c13.crcpid
/

prompt
prompt Creating materialized view ID_QU_RECOMMEND_OCCUPATE
prompt ===================================================
prompt
create materialized view ID_QU_RECOMMEND_OCCUPATE
refresh force on demand
start with to_date('01-03-2009 14:11:19', 'dd-mm-yyyy hh24:mi:ss') next SYSDATE + 1/1440   
as
select tt.crcpid,
                       tt.financecode,
                       tt.dateopened,
                       tt.company,
                       tt.enterprisetype,
                       tt.startyear,
                       tt.occupation,
                       tt.duty,
                       tt.caste,
                       tt.industry,
                       tt.occaddress,
                       tt.occzip
                  from (select t.crcpid,
                               t.financecode,
                               t.dateopened,
                               t.company,
                               t.enterprisetype,
                               t.startyear,
                               t.occupation,
                               t.duty,
                               t.caste,
                               t.industry,
                               t.occaddress,
                               t.occzip,
                               ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                          from id_qu_employment t) tt
                 where tt.rank = 1
/

prompt
prompt Creating materialized view ID_QU_RECOMMEND_SPOUSE
prompt =================================================
prompt
create materialized view ID_QU_RECOMMEND_SPOUSE
refresh force on demand
start with to_date('01-03-2009 14:11:19', 'dd-mm-yyyy hh24:mi:ss') next SYSDATE + 1/1440   
as
select tt.crcpid, 
tt.financecode, 
tt.dateopened, 
tt.marriage, 
tt.spousename, 
tt.spousecerttype, 
tt.spousecertno, 
tt.spouseoffice, 
tt.spousetel
          from (select t.crcpid, 
t.financecode, 
t.dateopened, 
t.marriage, 
t.spousename, 
t.spousecerttype, 
t.spousecertno, 
t.spouseoffice, 
t.spousetel,

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_spouse t) tt
         where tt.rank = 1
/

prompt
prompt Creating materialized view ID_QU_RECOMMEND_TEL
prompt ==============================================
prompt
create materialized view ID_QU_RECOMMEND_TEL
refresh force on demand
start with to_date('01-03-2009 14:11:19', 'dd-mm-yyyy hh24:mi:ss') next SYSDATE + 1/1440   
as
select tt.crcpid, 
tt.financecode, 
tt.dateopened, 
tt.tel,
tt.teltype
          from (select t.crcpid, 
t.financecode, 
t.dateopened, 
t.tel,
t.teltype,

                       ROW_NUMBER() OVER(PARTITION BY crcpid ORDER BY repeatnum desc, dateopened desc) rank
                  from id_qu_tel t) tt
         where tt.rank = 1
/

prompt
prompt Creating package COMMON_UTIL
prompt ============================
prompt
create or replace package common_util is

  -- Author  : ����
  -- Created : 2008-3-5 17:44:37
  -- Purpose : �������������ṩ���÷�������

  -- д�洢������־
  PROCEDURE write_procedure_log(v_procedurename     varchar2,
                                v_resultflag        varchar2,
                                v_detail            varchar2);
  -- д��������
  
procedure output_exception_info;
end common_util;
/

prompt
prompt Creating procedure ASD
prompt ======================
prompt
create or replace procedure asd(haha in out type) is
begin
  
end asd;
/

prompt
prompt Creating procedure BATCHUPDATE
prompt ==============================
prompt
CREATE OR REPLACE PROCEDURE BATCHUPDATE IS
-- �迼��ǰ̨��������ʧ�ܵ����
    InitialSTATUS     CHAR(1);
    processingSTATUS     CHAR(1);
    outSTATUS     CHAR(1);
    v_updatenum number(16) default 0;
    v_updatestarttime date;
    v_updateendtime date;
BEGIN

    select sysdate into v_updatestarttime
    from dual;
    --���¿�ʼʱ��
    
    -- ��ʼ��������
    
    -- ǰ̨����״̬
    InitialSTATUS :='0';
    processingSTATUS:='1';
    outSTATUS:='2';
    
    --�������д���
    EXECUTE IMMEDIATE 'ALTER SESSION FORCE PARALLEL QUERY PARALLEL 4';
    EXECUTE IMMEDIATE 'ALTER SESSION FORCE PARALLEL DML PARALLEL 4';


    --��������״̬
    --��Ҫ��ȷ����״̬����ֵ�
    UPDATE ID_MN_ASKQUEUE T
    SET T.STATUS = processingSTATUS--ǰ̨���ڴ���
    WHERE T.STATUS = InitialSTATUS;

    COMMIT;
    
    select count(*) into v_updatenum 
    from ID_MN_ASKQUEUE t
    where t.status = processingSTATUS;
    --��������
    
   
        

    EXECUTE IMMEDIATE 'TRUNCATE TABLE T_ID_MN_ASKQUEUE';
    EXECUTE IMMEDIATE 'TRUNCATE TABLE ID_MN_ASKINFOEXCHANGE';
    EXECUTE IMMEDIATE 'TRUNCATE TABLE T_IND_DELASKINFO';
    EXECUTE IMMEDIATE 'TRUNCATE TABLE t_ID_MN_ASKINFOEXCHANGE';
    --��ʼ��������������ñ�


    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO T_ID_MN_ASKQUEUE
    (CRCPID, UPDATETIME, STATUS,UPDATEUSER)
    SELECT CRCPID, UPDATETIME, STATUS,UPDATEUSER 
    FROM ID_MN_ASKQUEUE T 
    WHERE T.STATUS = processingSTATUS;
    COMMIT;
    --��ȡ���ڴ������Ա��������

    

    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_MN_ASKINFOEXCHANGE
      (CRCPID,
       FINANCECODE,
       UPDATETIME,
       RECORDTYPE,
       DATEOPENED,
       GLOBERECORD,
       ITEM1,
       ITEM2,
       ITEM3,
       ITEM4,
       ITEM5,
       ITEM6,
       ITEM7,
       ITEM8,
       ITEM9,
       ITEM10,   -- �ظ���
       ITEM11)
      SELECT TS.CRCPID,
             ts.FINANCECODE,
             ts.UPDATETIME,
             ts.RECORDTYPE,
             ts.DATEOPENED,
             ts.GLOBERECORD,
             ts.ITEM1,
             ts.ITEM2,
             ts.ITEM3,
             ts.ITEM4,
             ts.ITEM5,
             ts.ITEM6,
             ts.ITEM7,
             ts.ITEM8,
             ts.ITEM9,
             DECODE(TS.RANK, 1, 3, 2),   -- �ظ���
             ts.ITEM11
        FROM (SELECT S.*,
                     ROW_NUMBER() OVER(PARTITION BY s.CRCPID, s.RECORDTYPE ORDER BY s.dateopened DESC) RANK
                FROM T_ID_MN_ASKQUEUE T, ID_MN_ASKINFO S
               WHERE T.CRCPID = S.CRCPID
                 AND T.UPDATETIME = S.UPDATETIME
                 AND S.OPTTYPE <> '0') TS; --������ɾ������
    COMMIT;
    --����Ч���������б�ʶ�Ƽ���Ϣ
    
    
    
    
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO T_IND_DELASKINFO
    SELECT S.GLOBERECORD
    FROM T_ID_MN_ASKQUEUE T, ID_MN_ASKINFO S
    WHERE T.CRCPID = S.CRCPID
      AND T.UPDATETIME = S.UPDATETIME
      AND S.OPTTYPE = '0';
    COMMIT;
    -- ��ȡɾ����Ϣ
    


    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        sysdate,  
        1, -- �Ա�
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        null,null,null,null,null,null,GENDER,null,null,
        DECODE(TS.RANK, 1, 3, 2),
        null
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE  S,
                     ID_QU_GENDER T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    commit;
    --�Ա�����

    --������������
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        2, -- ��������
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        null,null,null,null,null,null,null,null,null,
        DECODE(TS.RANK, 1, 3, 2),
        BIRTHDAY
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_BIRTHDAY T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    commit;
    
    
    --���ѧ������
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11      
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        3, -- ���ѧ��
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        null,null,null,null,null,EDULEVEL,null,null,null,
        DECODE(TS.RANK, 1, 3, 2),
        null
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_EDULEVEL T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    commit;    
    

    --���ѧλ����
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11          
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        4, -- ���ѧλ
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        null,null,null,null,null,null,EDUDEGREE,null,null,
        DECODE(TS.RANK, 1, 3, 2),
        null
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_EDUDEGREE T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    commit;    


    --�μӹ�����������
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11         
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        5, -- �μӹ�������
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        null,null,null,null,null,null,null,null,null,
        DECODE(TS.RANK, 1, 3, 2),
        WORKDATE
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_WORKDATE T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    commit;

    --������������
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11      
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        6, -- ��������
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        null,null,null,null,null,null,null,null,null,
        DECODE(TS.RANK, 1, 3, 2),
        RETIREDDATE
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_RETIREDDATE T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    commit;
    
    
    --������ַ����
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11         
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        7, -- ������ַ
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        null,null,null,RESIDENCE,null,null,null,null,null,
        DECODE(TS.RANK, 1, 3, 2),
        null
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_RESIDENCE T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    commit;    


    --�绰��Ϣ����
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        21, -- �绰��Ϣ
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        TELTYPE,TEL,null,null,null,null,null,null,null,
        DECODE(TS.RANK, 1, 3, 2),
        null
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_TEL T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    commit; 


    --��ַ��Ϣ����
    /*
        Item1	ͨѶ��ַ����
        Item2	
        Item3	
        Item4	ͨѶ��ַ
        Item5	ͨѶ��������
        Item6	
        Item7	
        Item8	
        Item9	����
        Item10	
        ITEM11 
    
    */
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11      
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        22, -- ��ַ��Ϣ
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        Addresstype,null,null,Address,ZIP,null,null,null,City,
        DECODE(TS.RANK, 1, 3, 2),
        null
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_LOC T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    commit; 


    --������Ϣ����
    /*
        Item1	��ס״��
        Item2	��ס��ַ
        Item3	
        Item4	סլ�绰
        Item5	��ס��ַ��������
        Item6	
        Item7	
        Item8	
        Item9	
        Item10	
        ITEM11	
    */
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11      
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        23, -- ������Ϣ
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        ResCondition,Residence,null,HomeTel,ResZIP,null,null,null,null,
        DECODE(TS.RANK, 1, 3, 2),
        null
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_HOME T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    commit; 


    --������Ϣ����
    /*
        Item1	��ż֤������
        Item2	��ż������λ
        Item3	��ż֤������
        Item4	��ż����
        Item5	
        Item6	����״��
        Item7	
        Item8	
        Item9	��ż��ϵ�绰
        Item10	
        ITEM11	
    */
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11        
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        24, -- ������Ϣ
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        SpouseCertType,SpouseOffice,SpouseCertNo,SpouseName,null,Marriage,null,null,SpouseTel,
        DECODE(TS.RANK, 1, 3, 2),
        null
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_SPOUSE T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    commit; 


    --��ҵ��Ϣ����
    /*
      Item1	ְҵ
      Item2	��λ����
      Item3	��λ������ҵ
      Item4	��λ��ַ
      Item5	��λ��������
      Item6	����λ������ʼ���
      Item7	����ְ��
      Item8	����ְ��
      Item9	��λ����
      Item10	�ظ���
      ITEM11	
    */
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        25, -- ��ҵ��Ϣ
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        Occupation,Company,Industry,OccAddress,OccZIP,StartYear,Duty,Caste,EnterpriseType,
        DECODE(TS.RANK, 1, 3, 2),
        null
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_EMPLOYMENT T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    commit; 
    

    --��������Ϣ����
    /*
        Item1	
        Item2	
        Item3	
        Item4	
        Item5	������
        Item6	
        Item7	
        Item8	
        Item9	
        Item10	
        ITEM11	
    */
    insert /*+ APPEND NOLOGGING PARALLEL */
    INTO t_ID_MN_ASKINFOEXCHANGE
      (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11      
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        null,  
        26, -- ��������Ϣ
        DATeOPENED,
        null,  
        null,  -- ���²�������
        GLOBERECORD,
        null,null,null,null,AnnualIncome,null,null,null,null,
        DECODE(TS.RANK, 1, 3, 2),
        null
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY t.CRCPID ORDER BY DATeOPENED DESC) RANK
                FROM 
                     T_ID_MN_ASKQUEUE S,
                     ID_QU_ANNUALINCOME T  -- ��pin�ϴ�������
               WHERE T.CRCPID = S.CRCPID
                 AND NOT exists
                     (SELECT 1
                        FROM T_IND_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    commit; 


    --- �����Ƽ���Ϣ
    merge into ID_MN_ASKINFOEXCHANGE t
    using
    (
      select * from t_ID_MN_ASKINFOEXCHANGE s where s.ITEM10 = 3  -- 
    ) s2
    on
    (
      t.CRCPID = s2.CRCPID
      and t.ITEM10 = s2.ITEM10
      and t.RECORDTYPE = s2.RECORDTYPE
     )
    WHEN MATCHED THEN
       UPDATE SET t.opttype = t.opttype
    WHEN NOT MATCHED THEN
       INSERT
       (
        CRCPID          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATeOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11      
       )
       VALUES
       (
          s2.CRCPID          ,
          s2.FINANCECODE ,
          s2.UPDATETIME ,  -- Ϊ��
          s2.RECORDTYPE ,
          s2.DATeOPENED   ,
          s2.SHOWTYPE     ,  -- Ϊ��
          s2.OPTTYPE      ,  -- Ϊ��
          s2.GLOBERECORD  ,
          s2.ITEM1        ,
          s2.ITEM2        ,
          s2.ITEM3        ,
          s2.ITEM4        ,
          s2.ITEM5        ,
          s2.ITEM6        ,
          s2.ITEM7        ,
          s2.ITEM8        ,
          s2.ITEM9        ,
          s2.ITEM10       ,
          s2.ITEM11  
       );       

    commit;



    --- ���Ϸ��Ƽ���Ϣ
    merge into ID_MN_ASKINFOEXCHANGE t
    using
    (
      select * from t_ID_MN_ASKINFOEXCHANGE s
    ) s2
    on 
    (
       t.GLOBERECORD = s2.GLOBERECORD
    )
    WHEN MATCHED THEN
       UPDATE SET t.opttype = t.opttype
    WHEN NOT MATCHED THEN
       INSERT
       (
          CRCPID          ,
          FINANCECODE ,
          UPDATETIME ,
          RECORDTYPE ,
          DATeOPENED   ,
          SHOWTYPE     ,
          OPTTYPE      ,
          GLOBERECORD  ,
          ITEM1        ,
          ITEM2        ,
          ITEM3        ,
          ITEM4        ,
          ITEM5        ,
          ITEM6        ,
          ITEM7        ,
          ITEM8        ,
          ITEM9        ,
          ITEM10       ,
          ITEM11  
       )
       VALUES
       (
          s2.CRCPID          ,
          s2.FINANCECODE ,
          s2.UPDATETIME ,  -- Ϊ��
          s2.RECORDTYPE ,
          s2.DATeOPENED   ,
          s2.SHOWTYPE     ,  -- Ϊ��
          s2.OPTTYPE      ,  -- Ϊ��
          s2.GLOBERECORD  ,
          s2.ITEM1        ,
          s2.ITEM2        ,
          s2.ITEM3        ,
          s2.ITEM4        ,
          s2.ITEM5        ,
          s2.ITEM6        ,
          s2.ITEM7        ,
          s2.ITEM8        ,
          s2.ITEM9        ,
          2       ,
          s2.ITEM11  
       );       
  
       
       
    commit;
    
    --������ʷ����
    --�����ǰԭ����Ա��ʷ������Ϣɾ����
    --�������������Ա��Ϣ���룻
    
    --�����Ա���Ϣ
    delete from ID_QU_GENDER t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_GENDER
      (
        CRCPID         ,
        FINANCECODE ,
        DATeOPENED  ,
        GENDER      ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM7,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 1;
    
    commit;
    
    
    --�������������Ϣ
    delete from ID_QU_BIRTHDAY t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_BIRTHDAY
      (
        CRCPID         ,
        FINANCECODE ,
        DATeOPENED  ,
        BIRTHDAY    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM11,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 2;
    
    commit;    
    
    
    --�������ѧ����Ϣ
    delete from ID_QU_EDULEVEL t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_EDULEVEL
      (
        CRCPID         ,
        FINANCECODE ,
        DATeOPENED  ,
        EDULEVEL    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM6,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 3;
    
    commit;   
    
    
    --�������ѧλ��Ϣ
    delete from ID_QU_EDUDEGREE t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_EDUDEGREE
      (
        CRCPID         ,
        FINANCECODE ,
        DATeOPENED  ,
        EDUDEGREE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM7,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 4;
    
    commit;       
    
    
    --����μӹ���������Ϣ
    delete from ID_QU_WORKDATE t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_WORKDATE
      (
        CRCPID         ,
        FINANCECODE ,
        DATeOPENED  ,
        WORKDATE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM11,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 5;
    
    commit;       
    
    
    --��������������Ϣ
    delete from ID_QU_RETIREDDATE t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_RETIREDDATE
      (
        CRCPID         ,
        FINANCECODE ,
        DATeOPENED  ,
        RETIREDDATE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM11,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 6;
    
    commit;      
    
    
    
    --��������ַ��Ϣ
    delete from ID_QU_RESIDENCE t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_RESIDENCE
      (
        CRCPID         ,
        FINANCECODE ,
        DATeOPENED  ,
        RESIDENCE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM4,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 7;
    
    commit;    
    
    
    --����绰��Ϣ
    delete from ID_QU_TEL t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_TEL
      (
          CRCPID         ,
          FINANCECODE ,
          DATeOPENED  ,
          TEL         ,
          TELTYPE     ,
          GLOBERECORD ,
          REPEATNUM   
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM2,
        ITEM1,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 21;
    
    commit;    
    
    
    --�����ַ��Ϣ
    delete from ID_QU_LOC t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_LOC
      (
        CRCPID         ,
        FINANCECODE ,
        DATeOPENED  ,
        ADDRESSTYPE ,
        ADDRESS     ,
        ZIP         ,
        CITY        ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM1,
        ITEM4,
        ITEM5,
        ITEM9,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 22;
    
    commit;    
    
    
    --��������Ϣ
    delete from ID_QU_HOME t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_HOME
      (
        CRCPID          ,
        FINANCECODE  ,
        DATeOPENED   ,
        RESCONDITION ,
        RESIDENCE    ,
        RESZIP       ,
        HOMETEL      ,
        GLOBERECORD  ,
        REPEATNUM    
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM1,
        ITEM2,
        ITEM5,
        ITEM4,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 23;
    
    commit;            
    
    
    --���������Ϣ
    delete from ID_QU_SPOUSE t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_SPOUSE
      (
        CRCPID            ,
        FINANCECODE    ,
        DATeOPENED     ,
        MARRIAGE       ,
        SPOUSENAME     ,
        SPOUSECERTTYPE ,
        SPOUSECERTNO   ,
        SPOUSEOFFICE   ,
        SPOUSETEL      ,
        GLOBERECORD    ,
        REPEATNUM       
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM6,
        ITEM4,
        ITEM1,
        ITEM3,
        ITEM2,
        ITEM9,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 24;
    
    commit;            
    
        
    --�����ҵ��Ϣ
    delete from ID_QU_EMPLOYMENT t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_EMPLOYMENT
      (
        CRCPID            ,
        FINANCECODE    ,
        DATeOPENED     ,
        COMPANY        ,
        ENTERPRISETYPE ,
        STARTYEAR      ,
        OCCUPATION     ,
        DUTY           ,
        CASTE          ,
        INDUSTRY       ,
        OCCADDRESS     ,
        OCCZIP         ,
        GLOBERECORD    ,
        REPEATNUM        
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM2,
        ITEM9,
        ITEM6,
        ITEM1,
        ITEM7,
        ITEM8,
        ITEM3,
        ITEM4,
        ITEM5,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 25;
    
    commit;                
            
    
    --������������Ϣ
    delete from ID_QU_ANNUALINCOME t
    where exists 
    (
       select 1
       from T_ID_MN_ASKQUEUE s
       where s.CRCPID = t.CRCPID
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_ANNUALINCOME
      (
        CRCPID          ,
        FINANCECODE  ,
        DATeOPENED   ,
        ANNUALINCOME ,
        GLOBERECORD  ,
        REPEATNUM           
      )
      SELECT 
        CRCPID,
        FINANCECODE,
        DATeOPENED,
        ITEM5,
        GLOBERECORD,
        ITEM10
       FROM ID_MN_ASKINFOEXCHANGE T WHERE T.RECORDTYPE = 26;
    
    commit;      

    
    --�ں�̨��¼��������
    --insert  ID_PD_ASKINFOEXCHANGE
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_ASKINFOEXCHANGE
      (CRCPID,
       FINANCECODE,
       UPDATETIME,
       RECORDTYPE,
       DATEOPENED,
       SHOWTYPE,
       OPTTYPE,
       GLOBERECORD,
       ITEM1,
       ITEM2,
       ITEM3,
       ITEM4,
       ITEM5,
       ITEM6,
       ITEM7,
       ITEM8,
       ITEM9,
       ITEM10,
       ITEM11)
      SELECT T.CRCPID,
             T.FINANCECODE,
             T.UPDATETIME,
             T.RECORDTYPE,
             T.DATeOPENED,
             T.SHOWTYPE,
             T.OPTTYPE,
             T.GLOBERECORD,
             T.ITEM1,
             T.ITEM2,
             T.ITEM3,
             T.ITEM4,
             T.ITEM5,
             T.ITEM6,
             T.ITEM7,
             T.ITEM8,
             T.ITEM9,
             T.ITEM10,
             T.ITEM11
        FROM ID_MN_ASKINFO T ,T_ID_MN_ASKQUEUE S
        WHERE T.CRCPID = S.CRCPID
          AND T.UPDATETIME = S.UPDATETIME;
        COMMIT;


    --insert  ID_PD_ASKQUEUE
    
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_DELASKINFO
    (GLOBERECORD)
    SELECT T.GLOBERECORD FROM ID_MN_ASKINFO T,ID_MN_ASKQUEUE S 
    WHERE T.CRCPID = S.CRCPID AND T.UPDATETIME = S.UPDATETIME AND S.STATUS = processingSTATUS 
                              AND T.OPTTYPE = 0;
    COMMIT;
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_ASKQUEUE
      (CRCPID, UPDATETIME, STATUS,UPDATEUSER)
      SELECT CRCPID, UPDATETIME, '0',UPDATEUSER FROM T_ID_MN_ASKQUEUE T;  -- ��̨δ����
    COMMIT;
    UPDATE ID_MN_ASKQUEUE T
    SET T.STATUS = outSTATUS        --ǰ̨�Ѵ���
    WHERE T.STATUS = processingSTATUS;

    COMMIT;

    select sysdate into v_updateendtime
    from dual;
    --���½���ʱ��
    
    
    insert into ID_MN_SYSTEMLOG 
    (operationtype,pno,pstarttime,pendtime,presult)
    values (4,v_updatenum,v_updatestarttime,v_updateendtime,'�ɹ�');
    commit;
EXCEPTION
    when others then
    select sysdate into v_updateendtime
    from dual;
    insert into ID_MN_SYSTEMLOG
    (operationtype,pno,pstarttime,pendtime,presult)
    values (4,v_updatenum,v_updatestarttime,v_updateendtime,'ʧ��');
    commit;


END BATCHUPDATE;
/

prompt
prompt Creating procedure CREATEINDEX
prompt ==============================
prompt
create or replace procedure CREATEINDEX is
begin
  
/*

--�����ӹ����ķ�������
create index IDX_AD_PIN          on ID_AD_pin        (mod)    local;
create index IDX_ad_certificate  on id_ad_certificate(crcpid) local;  
create index IDX_ad_employment   on id_ad_employment (crcpid) local;
create index IDX_ad_home         on id_ad_home       (crcpid) local;
create index IDX_ad_loc          on id_ad_loc        (crcpid) local;
create index IDX_ad_person       on id_ad_person     (crcpid) local;
create index IDX_ad_pin          on id_ad_pin        (crcpid) local;
create index IDX_ad_spouse       on id_ad_spouse     (crcpid) local;
create index IDX_ad_tel          on id_ad_tel        (crcpid) local;

--������̨��Ʒ���ķ�������
create index IDX_pd_annualincome     on id_pd_annualincome    (crcpid) local;
create index IDX_pd_askinfoexchange  on id_pd_askinfoexchange (crcpid) ;     
create index IDX_pd_askqueue         on id_pd_askqueue        (crcpid) ;     
create index IDX_pd_birthday         on id_pd_birthday        (crcpid) local;
create index IDX_pd_certificate      on id_pd_certificate     (crcpid) local;
create index IDX_pd_edudegree        on id_pd_edudegree       (crcpid) local;
create index IDX_pd_edulevel         on id_pd_edulevel        (crcpid) local;
create index IDX_pd_employment       on id_pd_employment      (crcpid) local;
create index IDX_pd_gender           on id_pd_gender          (crcpid) local;
create index IDX_pd_home             on id_pd_home            (crcpid) local;
create index IDX_pd_loc              on id_pd_loc             (crcpid) local;
create index IDX_pd_residence        on id_pd_residence       (crcpid) local;
create index IDX_pd_retireddate      on id_pd_retireddate     (crcpid) local;
create index IDX_pd_spouse           on id_pd_spouse          (crcpid) local;
create index IDX_pd_summary          on id_pd_summary         (crcpid) local;
create index IDX_pd_tel              on id_pd_tel             (crcpid) local;
create index IDX_pd_workdate         on id_pd_workdate        (crcpid) local;


--




*/
  null;
end CREATEINDEX;
/

prompt
prompt Creating procedure CREATEUDDATA
prompt ===============================
prompt
create or replace procedure createuddata is
v_updatetime date;
v_udcrcpid number(16) default 1297116733;
begin
  select current_date into v_updatetime 
  from dual;
  --����ʱ��
  
  
  insert into ID_MN_ASKQUEUE 
  (crcpid,updatetime,status,updateuser)
  values (v_udcrcpid,v_updatetime,'0','sdan');
  commit;
  --�����������
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,26,'0','2',t.dateopened,t.globerecord,
   null,null,null,null,t.annualincome,null,null,null,null,t.repeatnum,null
  from ID_QU_ANNUALINCOME t
  where t.crcpid = v_udcrcpid;
  commit;
  --������������Ϣ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,2,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,null,null,null,null,t.repeatnum,t.birthday
  from (select s.*,ROW_NUMBER() OVER(ORDER BY financecode desc,repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_BIRTHDAY s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ; 
  commit;
  --�����������
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,3,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,t.edudegree,null,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_EDUDEGREE s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --�������ѧ��
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,4,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,null,t.edulevel,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_EDULEVEL s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --�������ѧλ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,25,'0','2',t.dateopened,t.globerecord,
   t.occupation,t.company,t.industry,t.occaddress,t.occzip,t.startyear,t.duty,t.caste,
   t.enterprisetype,t.repeatnum,null
  from ID_QU_EMPLOYMENT t
  where t.crcpid = v_udcrcpid;
  commit;
  --�����ҵ��Ϣ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,1,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,null,t.gender,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY financecode desc,repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_GENDER s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --�����Ա�
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,23,'0','2',t.dateopened,t.globerecord,
   t.rescondition,t.residence,null,t.hometel,t.reszip,null,null,null,null,t.repeatnum,null
  from ID_QU_HOME t
  where t.crcpid = v_udcrcpid;
  commit;
  --���뷿����Ϣ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,22,'0','2',t.dateopened,t.globerecord,
   t.addresstype,null,null,t.address,t.zip,null,null,null,t.city,t.repeatnum,null
  from ID_QU_LOC t
  where t.crcpid = v_udcrcpid;
  commit;
  --������ϵ��ַ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,7,'1','2',t.dateopened,t.globerecord,
   null,null,null,t.residence,null,null,null,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_RESIDENCE s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --���뻧����ַ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,6,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,null,null,null,null,t.repeatnum,t.retireddate
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_RETIREDDATE s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --������������
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,24,'0','2',t.dateopened,t.globerecord,
   t.spousecerttype,t.spouseoffice,t.spousecertno,t.spousename,null,t.marriage,null,
   null,t.spousetel,t.repeatnum,null
  from ID_QU_SPOUSE t
  where t.crcpid = v_udcrcpid;
  commit;
  --���������Ϣ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,21,'0','2',t.dateopened,t.globerecord,
   t.teltype,t.tel,null,null,null,null,null,null,null,t.repeatnum,null
  from ID_QU_TEL t
  where t.crcpid = v_udcrcpid;
  commit;
  --����绰��Ϣ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,5,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,null,null,null,null,t.repeatnum,t.workdate
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_WORKDATE s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --���빤������
  
  
end createuddata;
/

prompt
prompt Creating procedure CREATEUD_REDATA
prompt ==================================
prompt
create or replace procedure createud_redata is
v_updatetime date;
v_udcrcpid number(16) default 59317301;
begin
  select current_date into v_updatetime 
  from dual;
  --����ʱ��
  
  
  insert into ID_MN_ASKQUEUE 
  (crcpid,updatetime,status,updateuser)
  values (v_udcrcpid,v_updatetime,'0','sdan');
  commit;
  --�����������
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,26,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,t.annualincome,null,null,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_ANNUALINCOME s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  
  commit;
  
  
  --������������Ϣ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,2,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,null,null,null,null,t.repeatnum,t.birthday
  from (select s.*,ROW_NUMBER() OVER(ORDER BY financecode desc,repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_BIRTHDAY s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ; 
  commit;
  --�����������
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,3,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,t.edudegree,null,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_EDUDEGREE s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --�������ѧ��
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,4,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,null,t.edulevel,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_EDULEVEL s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --�������ѧλ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,25,'1','2',t.dateopened,t.globerecord,
   t.occupation,t.company,t.industry,t.occaddress,t.occzip,t.startyear,t.duty,t.caste,
   t.enterprisetype,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_EMPLOYMENT s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --�����ҵ��Ϣ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,1,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,null,t.gender,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY financecode desc,repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_GENDER s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --�����Ա�
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,23,'1','2',t.dateopened,t.globerecord,
   t.rescondition,t.residence,null,t.hometel,t.reszip,null,null,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_HOME s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --���뷿����Ϣ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,22,'1','2',t.dateopened,t.globerecord,
   t.addresstype,null,null,t.address,t.zip,null,null,null,t.city,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_LOC s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --������ϵ��ַ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,7,'1','2',t.dateopened,t.globerecord,
   null,null,null,t.residence,null,null,null,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_RESIDENCE s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --���뻧����ַ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,6,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,null,null,null,null,t.repeatnum,t.retireddate
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_RETIREDDATE s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --������������
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,24,'1','2',t.dateopened,t.globerecord,
   t.spousecerttype,t.spouseoffice,t.spousecertno,t.spousename,null,t.marriage,null,
   null,t.spousetel,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_SPOUSE s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --���������Ϣ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,21,'1','2',t.dateopened,t.globerecord,
   t.teltype,t.tel,null,null,null,null,null,null,null,t.repeatnum,null
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_TEL s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --����绰��Ϣ
  
  insert into ID_MN_ASKINFO
  (CRCPID,FINANCECODE,UPDATETIME,RECORDTYPE,SHOWTYPE,OPTTYPE,DATEOPENED,GLOBERECORD,
   ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select v_udcrcpid,t.financecode,v_updatetime,5,'1','2',t.dateopened,t.globerecord,
   null,null,null,null,null,null,null,null,null,t.repeatnum,t.workdate
  from (select s.*,ROW_NUMBER() OVER(ORDER BY repeatnum desc,DATeOPENED DESC) RANK
        from ID_QU_WORKDATE s where s.crcpid = v_udcrcpid) t
  where t.rank = 1 ;
  commit;
  --���빤������
  
  
end createud_redata;
/

prompt
prompt Creating procedure PARTITIONFILTER
prompt ==================================
prompt
create or replace procedure partitionfilter(modnum number) is

begin


/*��Ȼ��Ϣ��*/
--����1
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part1)  a,ID_TT_TRADEINFO partition(part1) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����2
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part2)  a,ID_TT_TRADEINFO partition(part2) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����3

insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part3)  a,ID_TT_TRADEINFO partition(part3) b where a.pin=b.pin and a.recid=b.recid;
commit;

--����4

insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part4)  a,ID_TT_TRADEINFO partition(part4) b where a.pin=b.pin and a.recid=b.recid;
commit;

--����5

insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part5)  a,ID_TT_TRADEINFO partition(part5) b where a.pin=b.pin and a.recid=b.recid;
commit;

--����6
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part6)  a,ID_TT_TRADEINFO partition(part6) b where a.pin=b.pin and a.recid=b.recid;
commit;


--����7
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part7)  a,ID_TT_TRADEINFO partition(part7) b where a.pin=b.pin and a.recid=b.recid;
commit;


--����8
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part8)  a,ID_TT_TRADEINFO partition(part8) b where a.pin=b.pin and a.recid=b.recid;
commit;

--����9
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part9)  a,ID_TT_TRADEINFO partition(part9) b where a.pin=b.pin and a.recid=b.recid;
commit;

--����10
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part10)  a,ID_TT_TRADEINFO partition(part10) b where a.pin=b.pin and a.recid=b.recid;
commit;

--����11

insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part11)  a,ID_TT_TRADEINFO partition(part11) b where a.pin=b.pin and a.recid=b.recid;
commit;


--����12
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part12)  a,ID_TT_TRADEINFO partition(part12) b where a.pin=b.pin and a.recid=b.recid;
commit;


--����13
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part13)  a,ID_TT_TRADEINFO partition(part13) b where a.pin=b.pin and a.recid=b.recid;
commit;

--����14

insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part14)  a,ID_TT_TRADEINFO partition(part14) b where a.pin=b.pin and a.recid=b.recid;
commit;


--����15
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part15)  a,ID_TT_TRADEINFO partition(part15) b where a.pin=b.pin and a.recid=b.recid;
commit;


--����16

insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON partition(part16)  a,ID_TT_TRADEINFO partition(part16) b where a.pin=b.pin and a.recid=b.recid;
commit;


/*��ס��Ϣ��*/
--����1

insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part1) a left join ID_TT_PERSON partition(part1) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part1) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����2
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part2) a left join ID_TT_PERSON partition(part2) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part2) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����3
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part3) a left join ID_TT_PERSON partition(part3) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part3) s where t.pin=s.pin and t.recid=s.recid;
commit;

--����4
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part4) a left join ID_TT_PERSON partition(part4) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part4) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����5
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part5) a left join ID_TT_PERSON partition(part5) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part5) s where t.pin=s.pin and t.recid=s.recid;
commit;

--����6
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part6) a left join ID_TT_PERSON partition(part6) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part6) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����7
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part7) a left join ID_TT_PERSON partition(part7) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part7) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����8
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part8) a left join ID_TT_PERSON partition(part8) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part8) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����9

insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part9) a left join ID_TT_PERSON partition(part9) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part9) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����10
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part10) a left join ID_TT_PERSON partition(part10) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part10) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����11
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part11) a left join ID_TT_PERSON partition(part11) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part11) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����12
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part12) a left join ID_TT_PERSON partition(part12) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part12) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����13
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part13) a left join ID_TT_PERSON partition(part13) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part13) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����14
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part14) a left join ID_TT_PERSON partition(part14) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part14) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����15
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part15) a left join ID_TT_PERSON partition(part15) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part15) s where t.pin=s.pin and t.recid=s.recid;
commit;
--����16
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS partition(part16) a left join ID_TT_PERSON partition(part16) b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO partition(part16) s where t.pin=s.pin and t.recid=s.recid;
commit;

/*��ҵ��Ϣ��*/
--����1
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part1) a,ID_TT_TRADEINFO partition(part1) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����2
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part2) a,ID_TT_TRADEINFO partition(part2) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����3
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part3) a,ID_TT_TRADEINFO partition(part3) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����4
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part4) a,ID_TT_TRADEINFO partition(part4) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����5
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part5) a,ID_TT_TRADEINFO partition(part5) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����6
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part6) a,ID_TT_TRADEINFO partition(part6) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����7
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part7) a,ID_TT_TRADEINFO partition(part7) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����8
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part8) a,ID_TT_TRADEINFO partition(part8) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����9
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part9) a,ID_TT_TRADEINFO partition(part9) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����10
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part10) a,ID_TT_TRADEINFO partition(part10) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����11
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part11) a,ID_TT_TRADEINFO partition(part11) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����12
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part12) a,ID_TT_TRADEINFO partition(part12) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����13
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part13) a,ID_TT_TRADEINFO partition(part13) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����14
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part14) a,ID_TT_TRADEINFO partition(part14) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����15
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part15) a,ID_TT_TRADEINFO partition(part15) b where a.pin=b.pin and a.recid=b.recid;
commit;
--����16
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT partition(part16) a,ID_TT_TRADEINFO partition(part16) b where a.pin=b.pin and a.recid=b.recid;
commit;

end partitionfilter;
/

prompt
prompt Creating procedure FILTER
prompt =========================
prompt
create or replace procedure filter(modnum number) is
--v_i number(1);
begin

execute immediate 'truncate table ID_AD_AUTHQUERY' ;
execute immediate 'truncate table ID_AD_PIN';
execute immediate 'truncate table ID_AD_EMPLOYMENT';
execute immediate 'truncate table ID_AD_HOME';
execute immediate 'truncate table ID_AD_LOC';
execute immediate 'truncate table ID_AD_PERSON';
execute immediate 'truncate table ID_AD_SPOUSE';
execute immediate 'truncate table ID_AD_TEL';
execute immediate 'truncate table ID_TEMP_TEL_PERSONINFO';
execute immediate 'truncate table ID_ADTEMP_CERTIFICATE';
--��ʼ���ӹ���������

merge into ID_AD_CERTIFICATE t
using ID_TT_CERTIFICATE s
on (t.crcpid = s.pin)
when matched then 
update set t.name=s.name
when not matched then
insert (t.crcpid,t.name,t.certtype,t.certno) values (s.pin,s.name,s.certtype,s.certno);
commit;

insert into ID_AD_PIN (crcpid,mod) 
select pin,mod(pin,modnum) from ID_TT_CERTIFICATE;
commit;
--��Ա��ʶ��

insert /*+append nologging*/ into ID_AD_AUTHQUERY select distinct b.crcpid,a.QUERYRESULTCODE from ID_TT_AUTHQUERY a,ID_AD_CERTIFICATE b
where a.name=b.name and b.certno=a.certno and b.certtype='0' ;
commit;
--�����˲���������
/*insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid) values (pin)
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON a,ID_TT_TRADEINFO b where a.pin=b.pin and a.recid=b.recid;
commit;
\*��Ȼ��Ϣ��*\
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid) values (pin)
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS a left join ID_TT_PERSON b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO s where t.pin=s.pin and t.recid=s.recid;
commit;
\*��ס��Ϣ��*\
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid) values (pin)
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT a,ID_TT_TRADEINFO b where a.pin=b.pin and a.recid=b.recid;
commit;
\*��ҵ��Ϣ��*\*/

partitionfilter(modnum);

insert all
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)        
values (crcpid,furnisherorg,dateopened,address,zip,'1')
when tel is not null then into ID_AD_TEL (crcpid,financecode,dateopened,othertel)         
values (crcpid,furnisherorg,dateopened,tel)
when 1=1 then into ID_AD_PIN (crcpid,mod) values (crcpid,mod(crcpid,modnum))
select crcpid,furnisherorg,dateopened,address,zip,tel 
from ID_TT_SETTLEMENTACCOUNTINFO t,ID_AD_CERTIFICATE s where t.name=s.name and t.certno=s.certno and t.certtype=s.certtype ;
commit;
/*���˼����ʻ�*/
insert all
when company is not null and opendate is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype)  
values (pin,financecode,opendate,company,nature)
when tel is not null and opendate is not null then into ID_AD_TEL (crcpid,financecode,dateopened,officetel)        
values (pin,financecode,opendate,tel)
when opendate is not null then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select pin,financecode,opendate,company,nature,tel 
from ID_TT_ACT_FUND;
commit;
/*������*/
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,workdate)     
values (crcpid,InsuranceOrgCode,OccuredDate,sex,birthdate,workdate)
when enterprisename is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype,industry)
values (crcpid,InsuranceOrgCode,OccuredDate,enterprisename,nvl(enterprisetype,economytype),industrycode)
when 1=1 then into ID_AD_PIN (crcpid,mod) values (crcpid,mod(crcpid,modnum))
select crcpid,InsuranceOrgCode,OccuredDate,sex,birthdate,workdate,enterprisename,enterprisetype,economytype,industrycode 
from ID_TT_ENDOWMENTPERSONINFO a,ID_AD_CERTIFICATE b where a.name=b.name and a.certtype=b.certtype and a.certno=b.certno;
commit;
/*�籣�ɴ�*/
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,retireddate)     
values (crcpid,InsuranceOrgCode,nvl(retireddate,OccuredDate),sex,birthdate,retireddate)
when enterprisename is not null then into ID_AD_EMPLOYMENT  (crcpid,financecode,dateopened,company)
values (crcpid,InsuranceOrgCode,nvl(retireddate,OccuredDate),enterprisename)
when 1=1 then into ID_AD_PIN (crcpid,mod) values (crcpid,mod(crcpid,modnum))
select crcpid,InsuranceOrgCode,OccuredDate,sex,birthdate,retireddate,enterprisename 
from ID_TT_ENDOWMENTPERSONINFO_PAID a,ID_AD_CERTIFICATE b where a.name=b.name and a.certtype=b.certtype and a.certno=b.certno;
commit;
/*�籣����*/

insert /*+append*/ into ID_TEMP_TEL_PERSONINFO (dateopened,telno,Address,name,certtype,certno,BUSINESSMANCODE,AREACODE) 
select a.dateopened,b.telno,b.address,b.name,b.certtype,b.certno,b.businessmancode,b.areacode 
from ID_TT_TEL_ACCEPTINFO a,ID_TT_TEL_PERSONINFO b where a.msgid=b.msgid and a.recordid=b.recordid;
commit;

insert all
when telno is not null then into ID_AD_TEL (crcpid,financecode,dateopened,othertel)        
values (crcpid,'E3339'||BusinessmanCode||Areacode||'0',dateopened,telno)
when address is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,addresstype)
values (crcpid,'E3339'||BusinessmanCode||Areacode||'0',dateopened,address,'4')       
when 1=1 then into ID_AD_PIN (crcpid,mod) values (crcpid,mod(crcpid,modnum))
select s.crcpid,t.BusinessmanCode,t.Areacode,t.dateopened,t.telno,t.address 
from ID_AD_CERTIFICATE s,ID_TEMP_TEL_PERSONINFO t 
where t.name=s.name and t.certtype=s.certtype and t.certno=s.certno;
commit;
/*����*/

insert /*+append nologging*/ into ID_AD_PIN (crcpid,mod) select s.crcpid,mod(s.crcpid,modnum) from ID_PD_ASKINFOEXCHANGE s,ID_PD_ASKQUEUE t 
where s.crcpid=t.crcpid and s.updatetime=t.updatetime and t.status='1';
commit;
update ID_BA_ASKINFOEXCHANGE set item5 = null where crcpid in (select t.crcpid from ID_AD_CERTIFICATE t) 
and recordType=26 and item5 <100;
commit;
/*������Ϣ*/

--������



insert into ID_ADtemp_certificate select distinct crcpid,ptypecode from ID_AD_PIN;
commit;
--��Ա������ȥ��
merge into ID_ADtemp_certificate t
using ID_AD_AUTHQUERY s
on (t.crcpid = s.crcpid)
when matched then 
update set t.ptypecode= null
when not matched then
insert (t.crcpid,t.Ptypecode) values (s.crcpid,1);

commit;

execute immediate 'truncate table ID_AD_PIN';

insert into ID_AD_PIN (crcpid,PTYPECODE,mod) select crcpid,ptypecode,mod(crcpid,modnum) from ID_ADTEMP_CERTIFICATE;
commit;

--�����˲���

  execute immediate 'truncate table ID_BA_CERTIFICATE';
  execute immediate 'truncate table ID_BA_BIRTHDAY';
  execute immediate 'truncate table ID_BA_EMPLOYMENT';
  execute immediate 'truncate table ID_BA_HOME';
  execute immediate 'truncate table ID_BA_LOC';
  execute immediate 'truncate table ID_BA_EDUDEGREE';
  execute immediate 'truncate table ID_BA_EDULEVEL';
  execute immediate 'truncate table ID_BA_GENDER';
  execute immediate 'truncate table ID_BA_RESIDENCE';
  execute immediate 'truncate table ID_BA_RETIREDDATE';
  execute immediate 'truncate table ID_BA_SPOUSE';
  execute immediate 'truncate table ID_BA_TEL';
  execute immediate 'truncate table ID_BA_WORKDATE';
  execute immediate 'truncate table ID_BA_ANNUALINCOME';
  --��ջ�Ǩ��������

end filter;
/

prompt
prompt Creating procedure IMPORT_1
prompt ===========================
prompt
create or replace procedure import_1 is
begin
  insert /*+append*/ into ID_BA_BIRTHDAY (crcpid,financecode,dateopened,birthday,globerecord,repeatnum)
  select crcpid,financecode,dateopened,birthday,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_BIRTHDAY_1;
  commit;
  
  insert /*+append*/ into ID_BA_ANNUALINCOME (crcpid,financecode,dateopened,annualincome,globerecord,repeatnum)
  select crcpid,financecode,dateopened,annualincome,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_ANNUALINCOME_1;
  commit; 
  
  insert /*+append*/ into ID_BA_EDUDEGREE (crcpid,financecode,dateopened,edudegree,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edudegree,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDUDEGREE_1;
  commit;
  
  insert /*+append*/ into ID_BA_EDULEVEL (crcpid,financecode,dateopened,edulevel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edulevel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDULEVEL_1; 
  commit;
  
  insert /*+append*/ into ID_BA_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,globerecord,repeatnum)
  select crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EMPLOYMENT_1;
  commit;
  
  insert /*+append*/ into ID_BA_GENDER (crcpid,financecode,dateopened,gender,globerecord,repeatnum)
  select crcpid,financecode,dateopened,gender,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_GENDER_1;
  commit; 
  
  insert /*+append*/ into ID_BA_HOME (crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_HOME_1;
  commit;
  
  insert /*+append*/ into ID_BA_LOC (crcpid,financecode,dateopened,addresstype,address,zip,city,globerecord,repeatnum)
  select crcpid,financecode,dateopened,addresstype,address,zip,city,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_LOC_1;
  commit;
  
  insert /*+append*/ into ID_BA_RESIDENCE (crcpid,financecode,dateopened,residence,globerecord,repeatnum)
  select crcpid,financecode,dateopened,residence,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RESIDENCE_1;
  commit;
  
  insert /*+append*/ into ID_BA_RETIREDDATE (crcpid,financecode,dateopened,retireddate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,retireddate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RETIREDDATE_1;
  commit;
   
  insert /*+append*/ into ID_BA_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_SPOUSE_1;
  commit;
  
  insert /*+append*/ into ID_BA_TEL (crcpid,financecode,dateopened,tel,teltype,globerecord,repeatnum)
  select crcpid,financecode,dateopened,tel,teltype,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_TEL_1;
  commit;
  
  insert /*+append*/ into ID_BA_WORKDATE (crcpid,financecode,dateopened,workdate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,workdate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_WORKDATE_1;
  commit;
  
  insert /*+append*/ into ID_BA_CERTIFICATE (crcpid,name,certtype,certno,queryresultcode)
  select crcpid,name,certtype,certno,queryresultcode 
  from ID_PD_CERTIFICATE_1;
  commit;
  
  
  execute immediate 'truncate table ID_PD_CERTIFICATE_1';
  execute immediate 'truncate table ID_PD_BIRTHDAY_1';
  execute immediate 'truncate table ID_PD_ANNUALINCOME_1';
  execute immediate 'truncate table ID_PD_EDUDEGREE_1';
  execute immediate 'truncate table ID_PD_EDULEVEL_1';
  execute immediate 'truncate table ID_PD_EMPLOYMENT_1';
  execute immediate 'truncate table ID_PD_GENDER_1';
  execute immediate 'truncate table ID_PD_HOME_1';
  execute immediate 'truncate table ID_PD_LOC_1';
  execute immediate 'truncate table ID_PD_RESIDENCE_1';
  execute immediate 'truncate table ID_PD_RETIREDDATE_1';
  execute immediate 'truncate table ID_PD_SPOUSE_1';
  execute immediate 'truncate table ID_PD_TEL_1';
  execute immediate 'truncate table ID_PD_WORKDATE_1';
  
end import_1;
/

prompt
prompt Creating procedure IMPORT_2
prompt ===========================
prompt
create or replace procedure import_2 is
begin
  insert /*+append*/ into ID_BA_BIRTHDAY (crcpid,financecode,dateopened,birthday,globerecord,repeatnum)
  select crcpid,financecode,dateopened,birthday,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_BIRTHDAY_2;
  commit;
  
  insert /*+append*/ into ID_BA_ANNUALINCOME (crcpid,financecode,dateopened,annualincome,globerecord,repeatnum)
  select crcpid,financecode,dateopened,annualincome,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_ANNUALINCOME_2;
  commit; 
  
  insert /*+append*/ into ID_BA_EDUDEGREE (crcpid,financecode,dateopened,edudegree,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edudegree,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDUDEGREE_2;
  commit;
  
  insert /*+append*/ into ID_BA_EDULEVEL (crcpid,financecode,dateopened,edulevel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edulevel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDULEVEL_2; 
  commit;
  
  insert /*+append*/ into ID_BA_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,globerecord,repeatnum)
  select crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EMPLOYMENT_2;
  commit;
  
  insert /*+append*/ into ID_BA_GENDER (crcpid,financecode,dateopened,gender,globerecord,repeatnum)
  select crcpid,financecode,dateopened,gender,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_GENDER_2;
  commit; 
  
  insert /*+append*/ into ID_BA_HOME (crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_HOME_2;
  commit;
  
  insert /*+append*/ into ID_BA_LOC (crcpid,financecode,dateopened,addresstype,address,zip,city,globerecord,repeatnum)
  select crcpid,financecode,dateopened,addresstype,address,zip,city,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_LOC_2;
  commit;
  
  insert /*+append*/ into ID_BA_RESIDENCE (crcpid,financecode,dateopened,residence,globerecord,repeatnum)
  select crcpid,financecode,dateopened,residence,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RESIDENCE_2;
  commit;
  
  insert /*+append*/ into ID_BA_RETIREDDATE (crcpid,financecode,dateopened,retireddate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,retireddate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RETIREDDATE_2;
  commit;
   
  insert /*+append*/ into ID_BA_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_SPOUSE_2;
  commit;
  
  insert /*+append*/ into ID_BA_TEL (crcpid,financecode,dateopened,tel,teltype,globerecord,repeatnum)
  select crcpid,financecode,dateopened,tel,teltype,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_TEL_2;
  commit;
  
  insert /*+append*/ into ID_BA_WORKDATE (crcpid,financecode,dateopened,workdate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,workdate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_WORKDATE_2;
  commit;
  
  insert /*+append*/ into ID_BA_CERTIFICATE (crcpid,name,certtype,certno,queryresultcode)
  select crcpid,name,certtype,certno,queryresultcode 
  from ID_PD_CERTIFICATE_2;
  commit;
  
  
  execute immediate 'truncate table ID_PD_CERTIFICATE_2';
  execute immediate 'truncate table ID_PD_BIRTHDAY_2';
  execute immediate 'truncate table ID_PD_ANNUALINCOME_2';
  execute immediate 'truncate table ID_PD_EDUDEGREE_2';
  execute immediate 'truncate table ID_PD_EDULEVEL_2';
  execute immediate 'truncate table ID_PD_EMPLOYMENT_2';
  execute immediate 'truncate table ID_PD_GENDER_2';
  execute immediate 'truncate table ID_PD_HOME_2';
  execute immediate 'truncate table ID_PD_LOC_2';
  execute immediate 'truncate table ID_PD_RESIDENCE_2';
  execute immediate 'truncate table ID_PD_RETIREDDATE_2';
  execute immediate 'truncate table ID_PD_SPOUSE_2';
  execute immediate 'truncate table ID_PD_TEL_2';
  execute immediate 'truncate table ID_PD_WORKDATE_2';
  
end import_2;
/

prompt
prompt Creating procedure IMPORT_3
prompt ===========================
prompt
create or replace procedure import_3 is
begin
  insert /*+append*/ into ID_BA_BIRTHDAY (crcpid,financecode,dateopened,birthday,globerecord,repeatnum)
  select crcpid,financecode,dateopened,birthday,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_BIRTHDAY_3;
  commit;
  
  insert /*+append*/ into ID_BA_ANNUALINCOME (crcpid,financecode,dateopened,annualincome,globerecord,repeatnum)
  select crcpid,financecode,dateopened,annualincome,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_ANNUALINCOME_3;
  commit; 
  
  insert /*+append*/ into ID_BA_EDUDEGREE (crcpid,financecode,dateopened,edudegree,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edudegree,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDUDEGREE_3;
  commit;
  
  insert /*+append*/ into ID_BA_EDULEVEL (crcpid,financecode,dateopened,edulevel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edulevel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDULEVEL_3; 
  commit;
  
  insert /*+append*/ into ID_BA_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,globerecord,repeatnum)
  select crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EMPLOYMENT_3;
  commit;
  
  insert /*+append*/ into ID_BA_GENDER (crcpid,financecode,dateopened,gender,globerecord,repeatnum)
  select crcpid,financecode,dateopened,gender,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_GENDER_3;
  commit; 
  
  insert /*+append*/ into ID_BA_HOME (crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_HOME_3;
  commit;
  
  insert /*+append*/ into ID_BA_LOC (crcpid,financecode,dateopened,addresstype,address,zip,city,globerecord,repeatnum)
  select crcpid,financecode,dateopened,addresstype,address,zip,city,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_LOC_3;
  commit;
  
  insert /*+append*/ into ID_BA_RESIDENCE (crcpid,financecode,dateopened,residence,globerecord,repeatnum)
  select crcpid,financecode,dateopened,residence,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RESIDENCE_3;
  commit;
  
  insert /*+append*/ into ID_BA_RETIREDDATE (crcpid,financecode,dateopened,retireddate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,retireddate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RETIREDDATE_3;
  commit;
   
  insert /*+append*/ into ID_BA_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_SPOUSE_3;
  commit;
  
  insert /*+append*/ into ID_BA_TEL (crcpid,financecode,dateopened,tel,teltype,globerecord,repeatnum)
  select crcpid,financecode,dateopened,tel,teltype,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_TEL_3;
  commit;
  
  insert /*+append*/ into ID_BA_WORKDATE (crcpid,financecode,dateopened,workdate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,workdate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_WORKDATE_3;
  commit;
  
  insert /*+append*/ into ID_BA_CERTIFICATE (crcpid,name,certtype,certno,queryresultcode)
  select crcpid,name,certtype,certno,queryresultcode 
  from ID_PD_CERTIFICATE_3;
  commit;
  
  
  execute immediate 'truncate table ID_PD_CERTIFICATE_3';
  execute immediate 'truncate table ID_PD_BIRTHDAY_3';
  execute immediate 'truncate table ID_PD_ANNUALINCOME_3';
  execute immediate 'truncate table ID_PD_EDUDEGREE_3';
  execute immediate 'truncate table ID_PD_EDULEVEL_3';
  execute immediate 'truncate table ID_PD_EMPLOYMENT_3';
  execute immediate 'truncate table ID_PD_GENDER_3';
  execute immediate 'truncate table ID_PD_HOME_3';
  execute immediate 'truncate table ID_PD_LOC_3';
  execute immediate 'truncate table ID_PD_RESIDENCE_3';
  execute immediate 'truncate table ID_PD_RETIREDDATE_3';
  execute immediate 'truncate table ID_PD_SPOUSE_3';
  execute immediate 'truncate table ID_PD_TEL_3';
  execute immediate 'truncate table ID_PD_WORKDATE_3';
  
end import_3;
/

prompt
prompt Creating procedure IMPORT_4
prompt ===========================
prompt
create or replace procedure import_4 is
begin
  insert /*+append*/ into ID_BA_BIRTHDAY (crcpid,financecode,dateopened,birthday,globerecord,repeatnum)
  select crcpid,financecode,dateopened,birthday,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_BIRTHDAY_4;
  commit;
  
  insert /*+append*/ into ID_BA_ANNUALINCOME (crcpid,financecode,dateopened,annualincome,globerecord,repeatnum)
  select crcpid,financecode,dateopened,annualincome,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_ANNUALINCOME_4;
  commit; 
  
  insert /*+append*/ into ID_BA_EDUDEGREE (crcpid,financecode,dateopened,edudegree,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edudegree,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDUDEGREE_4;
  commit;
  
  insert /*+append*/ into ID_BA_EDULEVEL (crcpid,financecode,dateopened,edulevel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edulevel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDULEVEL_4; 
  commit;
  
  insert /*+append*/ into ID_BA_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,globerecord,repeatnum)
  select crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EMPLOYMENT_4;
  commit;
  
  insert /*+append*/ into ID_BA_GENDER (crcpid,financecode,dateopened,gender,globerecord,repeatnum)
  select crcpid,financecode,dateopened,gender,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_GENDER_4;
  commit; 
  
  insert /*+append*/ into ID_BA_HOME (crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_HOME_4;
  commit;
  
  insert /*+append*/ into ID_BA_LOC (crcpid,financecode,dateopened,addresstype,address,zip,city,globerecord,repeatnum)
  select crcpid,financecode,dateopened,addresstype,address,zip,city,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_LOC_4;
  commit;
  
  insert /*+append*/ into ID_BA_RESIDENCE (crcpid,financecode,dateopened,residence,globerecord,repeatnum)
  select crcpid,financecode,dateopened,residence,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RESIDENCE_4;
  commit;
  
  insert /*+append*/ into ID_BA_RETIREDDATE (crcpid,financecode,dateopened,retireddate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,retireddate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RETIREDDATE_4;
  commit;
   
  insert /*+append*/ into ID_BA_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_SPOUSE_4;
  commit;
  
  insert /*+append*/ into ID_BA_TEL (crcpid,financecode,dateopened,tel,teltype,globerecord,repeatnum)
  select crcpid,financecode,dateopened,tel,teltype,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_TEL_4;
  commit;
  
  insert /*+append*/ into ID_BA_WORKDATE (crcpid,financecode,dateopened,workdate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,workdate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_WORKDATE_4;
  commit;
  
  insert /*+append*/ into ID_BA_CERTIFICATE (crcpid,name,certtype,certno,queryresultcode)
  select crcpid,name,certtype,certno,queryresultcode 
  from ID_PD_CERTIFICATE_4;
  commit;
  
  
  execute immediate 'truncate table ID_PD_CERTIFICATE_4';
  execute immediate 'truncate table ID_PD_BIRTHDAY_4';
  execute immediate 'truncate table ID_PD_ANNUALINCOME_4';
  execute immediate 'truncate table ID_PD_EDUDEGREE_4';
  execute immediate 'truncate table ID_PD_EDULEVEL_4';
  execute immediate 'truncate table ID_PD_EMPLOYMENT_4';
  execute immediate 'truncate table ID_PD_GENDER_4';
  execute immediate 'truncate table ID_PD_HOME_4';
  execute immediate 'truncate table ID_PD_LOC_4';
  execute immediate 'truncate table ID_PD_RESIDENCE_4';
  execute immediate 'truncate table ID_PD_RETIREDDATE_4';
  execute immediate 'truncate table ID_PD_SPOUSE_4';
  execute immediate 'truncate table ID_PD_TEL_4';
  execute immediate 'truncate table ID_PD_WORKDATE_4';
  
end import_4;
/

prompt
prompt Creating procedure IMPORT_5
prompt ===========================
prompt
create or replace procedure import_5 is
begin
  insert /*+append*/ into ID_BA_BIRTHDAY (crcpid,financecode,dateopened,birthday,globerecord,repeatnum)
  select crcpid,financecode,dateopened,birthday,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_BIRTHDAY_5;
  commit;
  
  insert /*+append*/ into ID_BA_ANNUALINCOME (crcpid,financecode,dateopened,annualincome,globerecord,repeatnum)
  select crcpid,financecode,dateopened,annualincome,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_ANNUALINCOME_5;
  commit; 
  
  insert /*+append*/ into ID_BA_EDUDEGREE (crcpid,financecode,dateopened,edudegree,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edudegree,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDUDEGREE_5;
  commit;
  
  insert /*+append*/ into ID_BA_EDULEVEL (crcpid,financecode,dateopened,edulevel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edulevel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDULEVEL_5; 
  commit;
  
  insert /*+append*/ into ID_BA_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,globerecord,repeatnum)
  select crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EMPLOYMENT_5;
  commit;
  
  insert /*+append*/ into ID_BA_GENDER (crcpid,financecode,dateopened,gender,globerecord,repeatnum)
  select crcpid,financecode,dateopened,gender,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_GENDER_5;
  commit; 
  
  insert /*+append*/ into ID_BA_HOME (crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_HOME_5;
  commit;
  
  insert /*+append*/ into ID_BA_LOC (crcpid,financecode,dateopened,addresstype,address,zip,city,globerecord,repeatnum)
  select crcpid,financecode,dateopened,addresstype,address,zip,city,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_LOC_5;
  commit;
  
  insert /*+append*/ into ID_BA_RESIDENCE (crcpid,financecode,dateopened,residence,globerecord,repeatnum)
  select crcpid,financecode,dateopened,residence,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RESIDENCE_5;
  commit;
  
  insert /*+append*/ into ID_BA_RETIREDDATE (crcpid,financecode,dateopened,retireddate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,retireddate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RETIREDDATE_5;
  commit;
   
  insert /*+append*/ into ID_BA_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_SPOUSE_5;
  commit;
  
  insert /*+append*/ into ID_BA_TEL (crcpid,financecode,dateopened,tel,teltype,globerecord,repeatnum)
  select crcpid,financecode,dateopened,tel,teltype,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_TEL_5;
  commit;
  
  insert /*+append*/ into ID_BA_WORKDATE (crcpid,financecode,dateopened,workdate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,workdate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_WORKDATE_5;
  commit;
  
  insert /*+append*/ into ID_BA_CERTIFICATE (crcpid,name,certtype,certno,queryresultcode)
  select crcpid,name,certtype,certno,queryresultcode 
  from ID_PD_CERTIFICATE_5;
  commit;
  
  
  execute immediate 'truncate table ID_PD_CERTIFICATE_5';
  execute immediate 'truncate table ID_PD_BIRTHDAY_5';
  execute immediate 'truncate table ID_PD_ANNUALINCOME_5';
  execute immediate 'truncate table ID_PD_EDUDEGREE_5';
  execute immediate 'truncate table ID_PD_EDULEVEL_5';
  execute immediate 'truncate table ID_PD_EMPLOYMENT_5';
  execute immediate 'truncate table ID_PD_GENDER_5';
  execute immediate 'truncate table ID_PD_HOME_5';
  execute immediate 'truncate table ID_PD_LOC_5';
  execute immediate 'truncate table ID_PD_RESIDENCE_5';
  execute immediate 'truncate table ID_PD_RETIREDDATE_5';
  execute immediate 'truncate table ID_PD_SPOUSE_5';
  execute immediate 'truncate table ID_PD_TEL_5';
  execute immediate 'truncate table ID_PD_WORKDATE_5';
  
end import_5;
/

prompt
prompt Creating procedure IMPORT_6
prompt ===========================
prompt
create or replace procedure import_6 is
begin
  insert /*+append*/ into ID_BA_BIRTHDAY (crcpid,financecode,dateopened,birthday,globerecord,repeatnum)
  select crcpid,financecode,dateopened,birthday,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_BIRTHDAY_6;
  commit;
  
  insert /*+append*/ into ID_BA_ANNUALINCOME (crcpid,financecode,dateopened,annualincome,globerecord,repeatnum)
  select crcpid,financecode,dateopened,annualincome,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_ANNUALINCOME_6;
  commit; 
  
  insert /*+append*/ into ID_BA_EDUDEGREE (crcpid,financecode,dateopened,edudegree,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edudegree,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDUDEGREE_6;
  commit;
  
  insert /*+append*/ into ID_BA_EDULEVEL (crcpid,financecode,dateopened,edulevel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edulevel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDULEVEL_6; 
  commit;
  
  insert /*+append*/ into ID_BA_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,globerecord,repeatnum)
  select crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EMPLOYMENT_6;
  commit;
  
  insert /*+append*/ into ID_BA_GENDER (crcpid,financecode,dateopened,gender,globerecord,repeatnum)
  select crcpid,financecode,dateopened,gender,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_GENDER_6;
  commit; 
  
  insert /*+append*/ into ID_BA_HOME (crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_HOME_6;
  commit;
  
  insert /*+append*/ into ID_BA_LOC (crcpid,financecode,dateopened,addresstype,address,zip,city,globerecord,repeatnum)
  select crcpid,financecode,dateopened,addresstype,address,zip,city,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_LOC_6;
  commit;
  
  insert /*+append*/ into ID_BA_RESIDENCE (crcpid,financecode,dateopened,residence,globerecord,repeatnum)
  select crcpid,financecode,dateopened,residence,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RESIDENCE_6;
  commit;
  
  insert /*+append*/ into ID_BA_RETIREDDATE (crcpid,financecode,dateopened,retireddate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,retireddate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RETIREDDATE_6;
  commit;
   
  insert /*+append*/ into ID_BA_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_SPOUSE_6;
  commit;
  
  insert /*+append*/ into ID_BA_TEL (crcpid,financecode,dateopened,tel,teltype,globerecord,repeatnum)
  select crcpid,financecode,dateopened,tel,teltype,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_TEL_6;
  commit;
  
  insert /*+append*/ into ID_BA_WORKDATE (crcpid,financecode,dateopened,workdate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,workdate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_WORKDATE_6;
  commit;
  
  insert /*+append*/ into ID_BA_CERTIFICATE (crcpid,name,certtype,certno,queryresultcode)
  select crcpid,name,certtype,certno,queryresultcode 
  from ID_PD_CERTIFICATE_6;
  commit;
  
  
  execute immediate 'truncate table ID_PD_CERTIFICATE_6';
  execute immediate 'truncate table ID_PD_BIRTHDAY_6';
  execute immediate 'truncate table ID_PD_ANNUALINCOME_6';
  execute immediate 'truncate table ID_PD_EDUDEGREE_6';
  execute immediate 'truncate table ID_PD_EDULEVEL_6';
  execute immediate 'truncate table ID_PD_EMPLOYMENT_6';
  execute immediate 'truncate table ID_PD_GENDER_6';
  execute immediate 'truncate table ID_PD_HOME_6';
  execute immediate 'truncate table ID_PD_LOC_6';
  execute immediate 'truncate table ID_PD_RESIDENCE_6';
  execute immediate 'truncate table ID_PD_RETIREDDATE_6';
  execute immediate 'truncate table ID_PD_SPOUSE_6';
  execute immediate 'truncate table ID_PD_TEL_6';
  execute immediate 'truncate table ID_PD_WORKDATE_6';
  
end import_6;
/

prompt
prompt Creating procedure IMPORT_7
prompt ===========================
prompt
create or replace procedure import_7 is
begin
  insert /*+append*/ into ID_BA_BIRTHDAY (crcpid,financecode,dateopened,birthday,globerecord,repeatnum)
  select crcpid,financecode,dateopened,birthday,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_BIRTHDAY_7;
  commit;
  
  insert /*+append*/ into ID_BA_ANNUALINCOME (crcpid,financecode,dateopened,annualincome,globerecord,repeatnum)
  select crcpid,financecode,dateopened,annualincome,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_ANNUALINCOME_7;
  commit; 
  
  insert /*+append*/ into ID_BA_EDUDEGREE (crcpid,financecode,dateopened,edudegree,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edudegree,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDUDEGREE_7;
  commit;
  
  insert /*+append*/ into ID_BA_EDULEVEL (crcpid,financecode,dateopened,edulevel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edulevel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDULEVEL_7; 
  commit;
  
  insert /*+append*/ into ID_BA_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,globerecord,repeatnum)
  select crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EMPLOYMENT_7;
  commit;
  
  insert /*+append*/ into ID_BA_GENDER (crcpid,financecode,dateopened,gender,globerecord,repeatnum)
  select crcpid,financecode,dateopened,gender,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_GENDER_7;
  commit; 
  
  insert /*+append*/ into ID_BA_HOME (crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_HOME_7;
  commit;
  
  insert /*+append*/ into ID_BA_LOC (crcpid,financecode,dateopened,addresstype,address,zip,city,globerecord,repeatnum)
  select crcpid,financecode,dateopened,addresstype,address,zip,city,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_LOC_7;
  commit;
  
  insert /*+append*/ into ID_BA_RESIDENCE (crcpid,financecode,dateopened,residence,globerecord,repeatnum)
  select crcpid,financecode,dateopened,residence,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RESIDENCE_7;
  commit;
  
  insert /*+append*/ into ID_BA_RETIREDDATE (crcpid,financecode,dateopened,retireddate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,retireddate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RETIREDDATE_7;
  commit;
   
  insert /*+append*/ into ID_BA_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_SPOUSE_7;
  commit;
  
  insert /*+append*/ into ID_BA_TEL (crcpid,financecode,dateopened,tel,teltype,globerecord,repeatnum)
  select crcpid,financecode,dateopened,tel,teltype,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_TEL_7;
  commit;
  
  insert /*+append*/ into ID_BA_WORKDATE (crcpid,financecode,dateopened,workdate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,workdate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_WORKDATE_7;
  commit;
  
  insert /*+append*/ into ID_BA_CERTIFICATE (crcpid,name,certtype,certno,queryresultcode)
  select crcpid,name,certtype,certno,queryresultcode 
  from ID_PD_CERTIFICATE_7;
  commit;
  
  
  execute immediate 'truncate table ID_PD_CERTIFICATE_7';
  execute immediate 'truncate table ID_PD_BIRTHDAY_7';
  execute immediate 'truncate table ID_PD_ANNUALINCOME_7';
  execute immediate 'truncate table ID_PD_EDUDEGREE_7';
  execute immediate 'truncate table ID_PD_EDULEVEL_7';
  execute immediate 'truncate table ID_PD_EMPLOYMENT_7';
  execute immediate 'truncate table ID_PD_GENDER_7';
  execute immediate 'truncate table ID_PD_HOME_7';
  execute immediate 'truncate table ID_PD_LOC_7';
  execute immediate 'truncate table ID_PD_RESIDENCE_7';
  execute immediate 'truncate table ID_PD_RETIREDDATE_7';
  execute immediate 'truncate table ID_PD_SPOUSE_7';
  execute immediate 'truncate table ID_PD_TEL_7';
  execute immediate 'truncate table ID_PD_WORKDATE_7';
  
end import_7;
/

prompt
prompt Creating procedure IMPORT_8
prompt ===========================
prompt
create or replace procedure import_8 is
begin
  insert /*+append*/ into ID_BA_BIRTHDAY (crcpid,financecode,dateopened,birthday,globerecord,repeatnum)
  select crcpid,financecode,dateopened,birthday,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_BIRTHDAY_8;
  commit;
  
  insert /*+append*/ into ID_BA_ANNUALINCOME (crcpid,financecode,dateopened,annualincome,globerecord,repeatnum)
  select crcpid,financecode,dateopened,annualincome,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_ANNUALINCOME_8;
  commit; 
  
  insert /*+append*/ into ID_BA_EDUDEGREE (crcpid,financecode,dateopened,edudegree,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edudegree,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDUDEGREE_8;
  commit;
  
  insert /*+append*/ into ID_BA_EDULEVEL (crcpid,financecode,dateopened,edulevel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,edulevel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EDULEVEL_8; 
  commit;
  
  insert /*+append*/ into ID_BA_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,globerecord,repeatnum)
  select crcpid,financecode,dateopened,company,enterprisetype,startyear,occupation,duty,caste,industry,occaddress,occzip,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_EMPLOYMENT_8;
  commit;
  
  insert /*+append*/ into ID_BA_GENDER (crcpid,financecode,dateopened,gender,globerecord,repeatnum)
  select crcpid,financecode,dateopened,gender,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_GENDER_8;
  commit; 
  
  insert /*+append*/ into ID_BA_HOME (crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,rescondition,residence,reszip,hometel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_HOME_8;
  commit;
  
  insert /*+append*/ into ID_BA_LOC (crcpid,financecode,dateopened,addresstype,address,zip,city,globerecord,repeatnum)
  select crcpid,financecode,dateopened,addresstype,address,zip,city,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_LOC_8;
  commit;
  
  insert /*+append*/ into ID_BA_RESIDENCE (crcpid,financecode,dateopened,residence,globerecord,repeatnum)
  select crcpid,financecode,dateopened,residence,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RESIDENCE_8;
  commit;
  
  insert /*+append*/ into ID_BA_RETIREDDATE (crcpid,financecode,dateopened,retireddate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,retireddate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_RETIREDDATE_8;
  commit;
   
  insert /*+append*/ into ID_BA_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,globerecord,repeatnum)
  select crcpid,financecode,dateopened,marriage,spousename,spousecerttype,spousecertno,spouseoffice,spousetel,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_SPOUSE_8;
  commit;
  
  insert /*+append*/ into ID_BA_TEL (crcpid,financecode,dateopened,tel,teltype,globerecord,repeatnum)
  select crcpid,financecode,dateopened,tel,teltype,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_TEL_8;
  commit;
  
  insert /*+append*/ into ID_BA_WORKDATE (crcpid,financecode,dateopened,workdate,globerecord,repeatnum)
  select crcpid,financecode,dateopened,workdate,seq_globerecord_id.nextval,repeatnum 
  from ID_PD_WORKDATE_8;
  commit;
  
  insert /*+append*/ into ID_BA_CERTIFICATE (crcpid,name,certtype,certno,queryresultcode)
  select crcpid,name,certtype,certno,queryresultcode 
  from ID_PD_CERTIFICATE_8;
  commit;
  
  
  execute immediate 'truncate table ID_PD_CERTIFICATE_8';
  execute immediate 'truncate table ID_PD_BIRTHDAY_8';
  execute immediate 'truncate table ID_PD_ANNUALINCOME_8';
  execute immediate 'truncate table ID_PD_EDUDEGREE_8';
  execute immediate 'truncate table ID_PD_EDULEVEL_8';
  execute immediate 'truncate table ID_PD_EMPLOYMENT_8';
  execute immediate 'truncate table ID_PD_GENDER_8';
  execute immediate 'truncate table ID_PD_HOME_8';
  execute immediate 'truncate table ID_PD_LOC_8';
  execute immediate 'truncate table ID_PD_RESIDENCE_8';
  execute immediate 'truncate table ID_PD_RETIREDDATE_8';
  execute immediate 'truncate table ID_PD_SPOUSE_8';
  execute immediate 'truncate table ID_PD_TEL_8';
  execute immediate 'truncate table ID_PD_WORKDATE_8';
  
end import_8;
/

prompt
prompt Creating procedure IMPORT_PD
prompt ============================
prompt
create or replace procedure import_pd is

begin
    EXECUTE IMMEDIATE 'ALTER SESSION FORCE PARALLEL QUERY PARALLEL 4';
    EXECUTE IMMEDIATE 'ALTER SESSION FORCE PARALLEL DML PARALLEL 4';
      --������Ա��ʶ
    merge into ID_PD_CERTIFICATE t
    using ID_BA_CERTIFICATE s
    on (t.crcpid = s.crcpid)
    when matched then
    update set t.certtype = s.certtype
    when not matched then
    insert (t.crcpid,t.name,t.certtype,t.certno)
    values (s.crcpid,s.name,s.certtype,s.certno);
    
    commit;
    update ID_PD_CERTIFICATE t set t.queryresultcode = 1 
    where t.crcpid in 
    (select b.crcpid 
     from ID_AD_AUTHQUERY a,ID_PD_CERTIFICATE b 
     where a.crcpid = b.crcpid and a.queryresultcode = 1
    );
    commit;
  
    update ID_PD_CERTIFICATE t set t.queryresultcode = 2 
    where t.crcpid in  
    (select b.crcpid 
     from ID_AD_AUTHQUERY a,ID_PD_CERTIFICATE b 
     where a.crcpid = b.crcpid and a.queryresultcode = 2
    );
    commit;
  
    --���¹����˲���
  
    execute immediate 'truncate table ID_BA_CERTIFICATE';
    insert into ID_BA_CERTIFICATE (crcpid,NAME,CERTTYPE,CERTNO,QUERYRESULTCODE)
    select t.crcpid,t.name,t.certtype,t.certno,t.queryresultcode 
    from ID_PD_CERTIFICATE t,ID_AD_PIN s 
    where t.crcpid=s.crcpid;
    commit;   
    --��Ա��ʶ��Ǩ��
    
      --�����Ա���Ϣ
    delete from ID_PD_GENDER t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_GENDER
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        GENDER      ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        t.crcpid,t.financecode,t.dateopened,t.gender,t.globerecord,t.repeatnum
       FROM ID_BA_GENDER T ;
    
    commit;
    
    
    --�������������Ϣ
    delete from ID_PD_BIRTHDAY t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_BIRTHDAY
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        BIRTHDAY    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        t.crcpid,t.financecode,t.dateopened,t.birthday,t.globerecord,t.repeatnum
       FROM ID_BA_BIRTHDAY T ;
    
    commit;    
    
    
    --�������ѧ����Ϣ
    delete from ID_PD_EDULEVEL t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_EDULEVEL
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        EDULEVEL    ,
        GLOBERECORD ,
        REPEATNUM   
      )
     SELECT 
        t.crcpid,t.financecode,t.dateopened,t.edulevel,t.globerecord,t.repeatnum
       FROM ID_BA_EDULEVEL T ;
    
    commit;   
    
    
    --�������ѧλ��Ϣ
    delete from ID_PD_EDUDEGREE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_EDUDEGREE
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        EDUDEGREE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      
       SELECT 
        t.crcpid,t.financecode,t.dateopened,t.edudegree,t.globerecord,t.repeatnum
       FROM ID_BA_EDUDEGREE T ;
    
    commit;       
    
    
    --����μӹ���������Ϣ
    delete from ID_PD_WORKDATE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_WORKDATE
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        WORKDATE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        t.crcpid,t.financecode,t.dateopened,t.workdate,t.globerecord,t.repeatnum
       FROM ID_BA_WORKDATE T ;
    
    commit;       
    
    
    --��������������Ϣ
    delete from ID_PD_RETIREDDATE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_RETIREDDATE
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        RETIREDDATE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        t.crcpid,t.financecode,t.dateopened,t.retireddate,t.globerecord,t.repeatnum
       FROM ID_BA_RETIREDDATE T ;
    
    commit;      
    
    
    
    --��������ַ��Ϣ
    delete from ID_PD_RESIDENCE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_RESIDENCE
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        RESIDENCE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        crcpid,financecode,dateopened,residence,globerecord,repeatnum
       FROM ID_BA_RESIDENCE T ;
    
    commit;    
    
    
    --����绰��Ϣ
    delete from ID_PD_TEL t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_TEL
      (
          crcpid         ,
          FINANCECODE ,
          dateOPENED  ,
          TEL         ,
          TELTYPE     ,
          GLOBERECORD ,
          REPEATNUM   
      )
      SELECT 
        crcpid,financecode,dateopened,tel,teltype,globerecord,repeatnum
       FROM ID_BA_TEL T ;
    
    commit;    
    
    
    --�����ַ��Ϣ
    delete from ID_PD_LOC t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_LOC
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        ADDRESSTYPE ,
        ADDRESS     ,
        ZIP         ,
        CITY        ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        crcpid,financecode,dateopened,addresstype,address,zip,city,globerecord,repeatnum
       FROM ID_BA_LOC T ;
    
    commit;    
    
    
    --��������Ϣ
    delete from ID_PD_HOME t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_HOME
      (
        crcpid          ,
        FINANCECODE  ,
        dateOPENED   ,
        RESCONDITION ,
        RESIDENCE    ,
        RESZIP       ,
        HOMETEL      ,
        GLOBERECORD  ,
        REPEATNUM    
      )
      SELECT 
        crcpid          ,
        FINANCECODE  ,
        dateOPENED   ,
        RESCONDITION ,
        RESIDENCE    ,
        RESZIP       ,
        HOMETEL      ,
        GLOBERECORD  ,
        REPEATNUM
       FROM ID_BA_HOME T ;
    
    commit;            
    
    
    --���������Ϣ
    delete from ID_PD_SPOUSE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    ); 
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_SPOUSE
      (
        crcpid            ,
        FINANCECODE    ,
        dateOPENED     ,
        MARRIAGE       ,
        SPOUSENAME     ,
        SPOUSECERTTYPE ,
        SPOUSECERTNO   ,
        SPOUSEOFFICE   ,
        SPOUSETEL      ,
        GLOBERECORD    ,
        REPEATNUM       
      )
      SELECT 
        crcpid            ,
        FINANCECODE    ,
        dateOPENED     ,
        MARRIAGE       ,
        SPOUSENAME     ,
        SPOUSECERTTYPE ,
        SPOUSECERTNO   ,
        SPOUSEOFFICE   ,
        SPOUSETEL      ,
        GLOBERECORD    ,
        REPEATNUM
       FROM ID_BA_SPOUSE T ;
    
    commit;            
    
        
    --�����ҵ��Ϣ
    delete from ID_PD_EMPLOYMENT t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_EMPLOYMENT
      (
        crcpid            ,
        FINANCECODE    ,
        dateOPENED     ,
        COMPANY        ,
        ENTERPRISETYPE ,
        STARTYEAR      ,
        OCCUPATION     ,
        DUTY           ,
        CASTE          ,
        INDUSTRY       ,
        OCCADDRESS     ,
        OCCZIP         ,
        GLOBERECORD    ,
        REPEATNUM        
      )
      SELECT 
        crcpid            ,
        FINANCECODE    ,
        dateOPENED     ,
        COMPANY        ,
        ENTERPRISETYPE ,
        STARTYEAR      ,
        OCCUPATION     ,
        DUTY           ,
        CASTE          ,
        INDUSTRY       ,
        OCCADDRESS     ,
        OCCZIP         ,
        GLOBERECORD    ,
        REPEATNUM
       FROM ID_BA_EMPLOYMENT T ;
    
    commit;                
            
    
    --������������Ϣ
    delete from ID_PD_ANNUALINCOME t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_PD_ANNUALINCOME
      (
        crcpid          ,
        FINANCECODE  ,
        dateOPENED   ,
        ANNUALINCOME ,
        GLOBERECORD  ,
        REPEATNUM           
      )
      SELECT 
        crcpid          ,
        FINANCECODE  ,
        dateOPENED   ,
        ANNUALINCOME ,
        GLOBERECORD  ,
        REPEATNUM
       FROM ID_BA_ANNUALINCOME T ;
    
    commit;  
    
    insert into ID_PD_SUMMARY (crcpid,SUMMARY,CREATETIME)
    select crcpid,SUMMARY,CREATETIME
    from ID_PD_SUMMARY_1;
    commit;
    
    insert into ID_PD_SUMMARY (crcpid,SUMMARY,CREATETIME)
    select crcpid,SUMMARY,CREATETIME
    from ID_PD_SUMMARY_2; 
    commit;
    
    insert into ID_PD_SUMMARY (crcpid,SUMMARY,CREATETIME)
    select crcpid,SUMMARY,CREATETIME
    from ID_PD_SUMMARY_3;  
    commit;
      
    insert into ID_PD_SUMMARY (crcpid,SUMMARY,CREATETIME)
    select crcpid,SUMMARY,CREATETIME
    from ID_PD_SUMMARY_4;  
    commit;

    insert into ID_PD_SUMMARY (crcpid,SUMMARY,CREATETIME)
    select crcpid,SUMMARY,CREATETIME
    from ID_PD_SUMMARY_5;  
    commit;
    
    insert into ID_PD_SUMMARY (crcpid,SUMMARY,CREATETIME)
    select crcpid,SUMMARY,CREATETIME
    from ID_PD_SUMMARY_6;  
    commit;

    insert into ID_PD_SUMMARY (crcpid,SUMMARY,CREATETIME)
    select crcpid,SUMMARY,CREATETIME
    from ID_PD_SUMMARY_7;  
    commit;
    
    insert into ID_PD_SUMMARY (crcpid,SUMMARY,CREATETIME)
    select crcpid,SUMMARY,CREATETIME
    from ID_PD_SUMMARY_8;  
    commit;
    
    execute immediate 'truncate table ID_PD_SUMMARY_1'; 
    execute immediate 'truncate table ID_PD_SUMMARY_2';
    execute immediate 'truncate table ID_PD_SUMMARY_3'; 
    execute immediate 'truncate table ID_PD_SUMMARY_4';  
    execute immediate 'truncate table ID_PD_SUMMARY_5'; 
    execute immediate 'truncate table ID_PD_SUMMARY_6';
    execute immediate 'truncate table ID_PD_SUMMARY_7'; 
    execute immediate 'truncate table ID_PD_SUMMARY_8';
    
end import_pd;
/

prompt
prompt Creating procedure MOVEBACK
prompt ===========================
prompt
create or replace procedure moveback is
v_movebacknum number(16);
v_updatenum number(16) default 0;
v_updatestarttime date;
v_updateendtime date;
BEGIN
    EXECUTE IMMEDIATE 'ALTER SESSION FORCE PARALLEL QUERY PARALLEL 4';
    EXECUTE IMMEDIATE 'ALTER SESSION FORCE PARALLEL DML PARALLEL 4';
    
    select sysdate into v_updatestarttime
    from dual;
    
    select count(*) into v_movebacknum 
    from ID_BA_CERTIFICATE;
    
    UPDATE ID_PD_ASKQUEUE 
    SET STATUS = '2' 
    WHERE STATUS = '1';
    COMMIT;
    --�޸ĸ���״̬Ϊ�Ѵ���

    UPDATE ID_PD_ASKQUEUE T 
    SET T.STATUS = '3' 
    WHERE T.STATUS IN ('0','4') AND T.crcpid IN 
    (SELECT crcpid 
    FROM ID_AD_PIN 
    WHERE PTYPECODE IS NULL);  
    
    COMMIT;
    --ǰ̨���ڴ���
    
    
    select count(*) into v_updatenum 
    from ID_PD_ASKQUEUE T 
    where T.STATUS = '3';  
    --��ȡ���ڴ������Ա��������
    
    IF v_updatenum <> 0 THEN
    EXECUTE IMMEDIATE 'TRUNCATE TABLE ID_BA_ASKQUEUE';
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_ASKQUEUE
      (crcpid, updateTIME, STATUS)
      SELECT crcpid,MAX(updateTIME),STATUS FROM ID_PD_ASKQUEUE T WHERE T.STATUS = '3' GROUP BY crcpid,STATUS;
    
    
    COMMIT;

    --����Ч���������б�ʶ�Ƽ���Ϣ
    
    EXECUTE IMMEDIATE 'TRUNCATE TABLE ID_BA_ASKINFOEXCHANGE';
    INSERT /*+ APPEND NOLOGGING PARALLEL */ 
    INTO ID_BA_ASKINFOEXCHANGE
      (crcpid,
       FINANCECODE,
       UPDATETIME,
       RECORDTYPE,
       DATEOPENED,
       SHOWTYPE,
       OPTTYPE,
       GLOBERECORD,
       ITEM1,
       ITEM2,
       ITEM3,
       ITEM4,
       ITEM5,
       ITEM6,
       ITEM7,
       ITEM8,
       ITEM9,
       ITEM10,   -- �ظ���
       ITEM11)
      SELECT TS.crcpid,
             TS.FINANCECODE,
             TS.UPDATETIME,
             TS.RECORDTYPE,
             TS.DATEOPENED,
             TS.SHOWTYPE,
             TS.OPTTYPE,
             TS.GLOBERECORD,
             TS.ITEM1,
             TS.ITEM2,
             TS.ITEM3,
             TS.ITEM4,
             TS.ITEM5,
             TS.ITEM6,
             TS.ITEM7,
             TS.ITEM8,
             TS.ITEM9,
             DECODE(TS.RANK, 1, 3, 2),   -- �ظ���
             TS.ITEM11
        FROM (SELECT S.*,
                     ROW_NUMBER() OVER(PARTITION BY S.crcpid, S.RECORDTYPE ORDER BY S.DATEOPENED DESC) RANK
                FROM ID_BA_ASKQUEUE T, ID_PD_ASKINFOEXCHANGE S
               WHERE T.crcpid = S.crcpid
                 AND T.UPDATETIME = S.UPDATETIME
                 AND S.OPTTYPE <> '0') TS; --������ɾ������
    
    
    COMMIT;

   
   EXECUTE IMMEDIATE 'TRUNCATE TABLE ID_BA_PDASKINFOEXCHANGE';
    --�Ա�����
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (
        crcpid          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATEOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        crcpid,
        FINANCECODE,
        NULL,  
        1, -- �Ա�
        DATEOPENED,
        NULL,  
        NULL,  -- ���²�������
        GLOBERECORD,
        NULL,NULL,NULL,NULL,NULL,NULL,GENDER,NULL,NULL,
        DECODE(TS.RANK, 1, 3, 2),
        NULL
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM 
                     ID_BA_ASKQUEUE  S,
                     ID_BA_GENDER T  -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
                     (SELECT 1
                        FROM ID_BA_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    COMMIT;


    --������������
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (
        crcpid          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATEOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        crcpid,
        FINANCECODE,
        NULL,  
        2, -- ��������
        DATEOPENED,
        NULL,  
        NULL,  -- ���²�������
        GLOBERECORD,
        NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
        DECODE(TS.RANK, 1, 3, 2),
        BIRTHDAY
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM 
                     ID_BA_ASKQUEUE S,
                     ID_BA_BIRTHDAY T  -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
                     (SELECT 1
                        FROM ID_BA_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    COMMIT;
    
    
    --���ѧ������
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (
        crcpid          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATEOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        crcpid,
        FINANCECODE,
        NULL,  
        3, -- ���ѧ��
        DATEOPENED,
        NULL,  
        NULL,  -- ���²�������
        GLOBERECORD,
        NULL,NULL,NULL,NULL,NULL,EDULEVEL,NULL,NULL,NULL,
        DECODE(TS.RANK, 1, 3, 2),
        NULL
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM 
                     ID_BA_ASKQUEUE S,
                     ID_BA_EDULEVEL T  -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
                     (SELECT 1
                        FROM ID_BA_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    COMMIT;    
    

    --���ѧλ����
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (
        crcpid          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATEOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        crcpid,
        FINANCECODE,
        NULL,  
        4, -- ���ѧλ
        DATEOPENED,
        NULL,  
        NULL,  -- ���²�������
        GLOBERECORD,
        NULL,NULL,NULL,NULL,NULL,NULL,EDUDEGREE,NULL,NULL,
        DECODE(TS.RANK, 1, 3, 2),
        NULL
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM 
                     ID_BA_ASKQUEUE S,
                     ID_BA_EDUDEGREE T  -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
                     (SELECT 1
                        FROM ID_BA_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    COMMIT;    


    --�μӹ�����������
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (
        crcpid          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATEOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        crcpid,
        FINANCECODE,
        NULL,  
        5, -- �μӹ�������
        DATEOPENED,
        NULL,  
        NULL,  -- ���²�������
        GLOBERECORD,
        NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
        DECODE(TS.RANK, 1, 3, 2),
        WORKDATE
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM 
                     ID_BA_ASKQUEUE S,
                     ID_BA_WORKDATE T  -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
                     (SELECT 1
                        FROM ID_BA_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    COMMIT;

    --������������
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (
        crcpid          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATEOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        crcpid,
        FINANCECODE,
        NULL,  
        6, -- ��������
        DATEOPENED,
        NULL,  
        NULL,  -- ���²�������
        GLOBERECORD,
        NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,
        DECODE(TS.RANK, 1, 3, 2),
        RETIREDDATE
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM 
                     ID_BA_ASKQUEUE S,
                     ID_BA_RETIREDDATE T  -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
                     (SELECT 1
                        FROM ID_BA_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    COMMIT;
    
    
    --������ַ����
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (
        crcpid          ,
        FINANCECODE ,
        UPDATETIME ,
        RECORDTYPE ,
        DATEOPENED   ,
        SHOWTYPE     ,
        OPTTYPE      ,
        GLOBERECORD  ,
        ITEM1        ,
        ITEM2        ,
        ITEM3        ,
        ITEM4        ,
        ITEM5        ,
        ITEM6        ,
        ITEM7        ,
        ITEM8        ,
        ITEM9        ,
        ITEM10       ,
        ITEM11       
      )
      SELECT 
        crcpid,
        FINANCECODE,
        NULL,  
        7, -- ������ַ
        DATEOPENED,
        NULL,  
        NULL,  -- ���²�������
        GLOBERECORD,
        NULL,NULL,NULL,RESIDENCE,NULL,NULL,NULL,NULL,NULL,
        DECODE(TS.RANK, 1, 3, 2),
        NULL
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM 
                     ID_BA_ASKQUEUE S,
                     ID_BA_RESIDENCE T  -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
                     (SELECT 1
                        FROM ID_BA_DELASKINFO M  --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    COMMIT;    


    --�绰��Ϣ����
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (crcpid,
       FINANCECODE,
       UPDATETIME,
       RECORDTYPE,
       DATEOPENED,
       SHOWTYPE,
       OPTTYPE,
       GLOBERECORD,
       ITEM1,
       ITEM2,
       ITEM3,
       ITEM4,
       ITEM5,
       ITEM6,
       ITEM7,
       ITEM8,
       ITEM9,
       ITEM10,
       ITEM11)
      SELECT crcpid,
             FINANCECODE,
             NULL,
             21, -- �绰��Ϣ
             DATEOPENED,
             NULL,
             NULL, -- ���²�������
             GLOBERECORD,
             TELTYPE,
             TEL,
             NULL,
             NULL,
             NULL,
             NULL,
             NULL,
             NULL,
             NULL,
             DECODE(TS.RANK, 1, 3, 2),
             NULL
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM ID_BA_ASKQUEUE S, ID_BA_TEL T -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
               (SELECT 1
                        FROM ID_BA_DELASKINFO M --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;


    COMMIT; 


    --��ַ��Ϣ����
    /*
        ITEM1	ͨѶ��ַ����
        ITEM2	
        ITEM3	
        ITEM4	ͨѶ��ַ
        ITEM5	ͨѶ��������
        ITEM6	
        ITEM7	
        ITEM8	
        ITEM9	����
        ITEM10	
        ITEM11 
    
    */
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (crcpid,
       FINANCECODE,
       UPDATETIME,
       RECORDTYPE,
       DATEOPENED,
       SHOWTYPE,
       OPTTYPE,
       GLOBERECORD,
       ITEM1,
       ITEM2,
       ITEM3,
       ITEM4,
       ITEM5,
       ITEM6,
       ITEM7,
       ITEM8,
       ITEM9,
       ITEM10,
       ITEM11)
      SELECT crcpid,
             FINANCECODE,
             NULL,
             22, -- ��ַ��Ϣ
             DATEOPENED,
             NULL,
             NULL, -- ���²�������
             GLOBERECORD,
             ADDRESSTYPE,
             NULL,
             NULL,
             ADDRESS,
             ZIP,
             NULL,
             NULL,
             NULL,
             CITY,
             DECODE(TS.RANK, 1, 3, 2),
             NULL
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM ID_BA_ASKQUEUE S, ID_BA_LOC T -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
               (SELECT 1
                        FROM ID_BA_DELASKINFO M --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    COMMIT; 


    --������Ϣ����
    /*
        ITEM1	��ס״��
        ITEM2	��ס��ַ
        ITEM3	
        ITEM4	סլ�绰
        ITEM5	��ס��ַ��������
        ITEM6	
        ITEM7	
        ITEM8	
        ITEM9	
        ITEM10	
        ITEM11	
    */
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (crcpid,
       FINANCECODE,
       UPDATETIME,
       RECORDTYPE,
       DATEOPENED,
       SHOWTYPE,
       OPTTYPE,
       GLOBERECORD,
       ITEM1,
       ITEM2,
       ITEM3,
       ITEM4,
       ITEM5,
       ITEM6,
       ITEM7,
       ITEM8,
       ITEM9,
       ITEM10,
       ITEM11)
      SELECT crcpid,
             FINANCECODE,
             NULL,
             23, -- ������Ϣ
             DATEOPENED,
             NULL,
             NULL, -- ���²�������
             GLOBERECORD,
             RESCONDITION,
             RESIDENCE,
             NULL,
             HOMETEL,
             RESZIP,
             NULL,
             NULL,
             NULL,
             NULL,
             DECODE(TS.RANK, 1, 3, 2),
             NULL
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM ID_BA_ASKQUEUE S, ID_BA_HOME T -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
               (SELECT 1
                        FROM ID_BA_DELASKINFO M --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    COMMIT; 


    --������Ϣ����
    /*
        ITEM1	��ż֤������
        ITEM2	��ż������λ
        ITEM3	��ż֤������
        ITEM4	��ż����
        ITEM5	
        ITEM6	����״��
        ITEM7	
        ITEM8	
        ITEM9	��ż��ϵ�绰
        ITEM10	
        ITEM11	
    */
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (crcpid,
       FINANCECODE,
       UPDATETIME,
       RECORDTYPE,
       DATEOPENED,
       SHOWTYPE,
       OPTTYPE,
       GLOBERECORD,
       ITEM1,
       ITEM2,
       ITEM3,
       ITEM4,
       ITEM5,
       ITEM6,
       ITEM7,
       ITEM8,
       ITEM9,
       ITEM10,
       ITEM11)
      SELECT crcpid,
             FINANCECODE,
             NULL,
             24, -- ������Ϣ
             DATEOPENED,
             NULL,
             NULL, -- ���²�������
             GLOBERECORD,
             SPOUSECERTTYPE,
             SPOUSEOFFICE,
             SPOUSECERTNO,
             SPOUSENAME,
             NULL,
             MARRIAGE,
             NULL,
             NULL,
             SPOUSETEL,
             DECODE(TS.RANK, 1, 3, 2),
             NULL
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM ID_BA_ASKQUEUE S, ID_BA_SPOUSE T -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
               (SELECT 1
                        FROM ID_BA_DELASKINFO M --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    COMMIT; 


    --��ҵ��Ϣ����
    /*
      ITEM1	ְҵ
      ITEM2	��λ����
      ITEM3	��λ������ҵ
      ITEM4	��λ��ַ
      ITEM5	��λ��������
      ITEM6	����λ������ʼ���
      ITEM7	����ְ��
      ITEM8	����ְ��
      ITEM9	��λ����
      ITEM10	�ظ���
      ITEM11	
    */
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (crcpid,
       FINANCECODE,
       UPDATETIME,
       RECORDTYPE,
       DATEOPENED,
       SHOWTYPE,
       OPTTYPE,
       GLOBERECORD,
       ITEM1,
       ITEM2,
       ITEM3,
       ITEM4,
       ITEM5,
       ITEM6,
       ITEM7,
       ITEM8,
       ITEM9,
       ITEM10,
       ITEM11)
      SELECT crcpid,
             FINANCECODE,
             NULL,
             25, -- ��ҵ��Ϣ
             DATEOPENED,
             NULL,
             NULL, -- ���²�������
             GLOBERECORD,
             OCCUPATION,
             COMPANY,
             INDUSTRY,
             OCCADDRESS,
             OCCZIP,
             STARTYEAR,
             DUTY,
             CASTE,
             ENTERPRISETYPE,
             DECODE(TS.RANK, 1, 3, 2),
             NULL
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM ID_BA_ASKQUEUE S, ID_BA_EMPLOYMENT T -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
               (SELECT 1
                        FROM ID_BA_DELASKINFO M --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    COMMIT; 
    

    --��������Ϣ����
    /*
        ITEM1	
        ITEM2	
        ITEM3	
        ITEM4	
        ITEM5	������
        ITEM6	
        ITEM7	
        ITEM8	
        ITEM9	
        ITEM10	
        ITEM11	
    */
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_PDASKINFOEXCHANGE
      (crcpid,
       FINANCECODE,
       UPDATETIME,
       RECORDTYPE,
       DATEOPENED,
       SHOWTYPE,
       OPTTYPE,
       GLOBERECORD,
       ITEM1,
       ITEM2,
       ITEM3,
       ITEM4,
       ITEM5,
       ITEM6,
       ITEM7,
       ITEM8,
       ITEM9,
       ITEM10,
       ITEM11)
      SELECT crcpid,
             FINANCECODE,
             NULL,
             26, -- ��������Ϣ
             DATEOPENED,
             NULL,
             NULL, -- ���²�������
             GLOBERECORD,
             NULL,
             NULL,
             NULL,
             NULL,
             ANNUALINCOME,
             NULL,
             NULL,
             NULL,
             NULL,
             DECODE(TS.RANK, 1, 3, 2),
             NULL
        FROM (SELECT T.*,
                     ROW_NUMBER() OVER(PARTITION BY T.crcpid ORDER BY DATEOPENED DESC) RANK
                FROM ID_BA_ASKQUEUE S, ID_BA_ANNUALINCOME T -- ��crcpid�ϴ�������
               WHERE T.crcpid = S.crcpid
                 AND NOT EXISTS
               (SELECT 1
                        FROM ID_BA_DELASKINFO M --- ��������
                       WHERE M.GLOBERECORD = T.GLOBERECORD)) TS;

    COMMIT; 


    --- �����Ƽ���Ϣ
    MERGE INTO ID_BA_ASKINFOEXCHANGE T
    USING (SELECT * FROM ID_BA_PDASKINFOEXCHANGE S WHERE S.ITEM10 = 3  
           ) S2
    ON (T.crcpid = S2.crcpid AND T.ITEM10 = S2.ITEM10 AND T.RECORDTYPE = S2.RECORDTYPE)
    WHEN MATCHED THEN
      UPDATE SET T.SHOWTYPE = S2.SHOWTYPE
    WHEN NOT MATCHED THEN
      INSERT
        (crcpid,
         FINANCECODE,
         UPDATETIME,
         RECORDTYPE,
         DATEOPENED,
         SHOWTYPE,
         OPTTYPE,
         GLOBERECORD,
         ITEM1,
         ITEM2,
         ITEM3,
         ITEM4,
         ITEM5,
         ITEM6,
         ITEM7,
         ITEM8,
         ITEM9,
         ITEM10,
         ITEM11)
      VALUES
        (S2.crcpid,
         S2.FINANCECODE,
         S2.UPDATETIME, -- Ϊ��
         S2.RECORDTYPE,
         S2.DATEOPENED,
         S2.SHOWTYPE, -- Ϊ��
         S2.OPTTYPE, -- Ϊ��
         S2.GLOBERECORD,
         S2.ITEM1,
         S2.ITEM2,
         S2.ITEM3,
         S2.ITEM4,
         S2.ITEM5,
         S2.ITEM6,
         S2.ITEM7,
         S2.ITEM8,
         S2.ITEM9,
         S2.ITEM10,
         S2.ITEM11);

    COMMIT;



    --- ���Ϸ��Ƽ���Ϣ
    MERGE INTO ID_BA_ASKINFOEXCHANGE T
    USING (SELECT * FROM ID_BA_PDASKINFOEXCHANGE S ) S2
    ON (T.GLOBERECORD = S2.GLOBERECORD)
    WHEN MATCHED THEN
      UPDATE SET T.CRCPID = S2.CRCPID
    WHEN NOT MATCHED THEN
      INSERT
        (crcpid,
         FINANCECODE,
         UPDATETIME,
         RECORDTYPE,
         DATEOPENED,
         SHOWTYPE,
         OPTTYPE,
         GLOBERECORD,
         ITEM1,
         ITEM2,
         ITEM3,
         ITEM4,
         ITEM5,
         ITEM6,
         ITEM7,
         ITEM8,
         ITEM9,
         ITEM10,
         ITEM11)
      VALUES
        (S2.crcpid,
         S2.FINANCECODE,
         S2.UPDATETIME, -- Ϊ��
         S2.RECORDTYPE,
         S2.DATEOPENED,
         S2.SHOWTYPE, -- Ϊ��
         S2.OPTTYPE, -- Ϊ��
         S2.GLOBERECORD,
         S2.ITEM1,
         S2.ITEM2,
         S2.ITEM3,
         S2.ITEM4,
         S2.ITEM5,
         S2.ITEM6,
         S2.ITEM7,
         S2.ITEM8,
         S2.ITEM9,
         2,
         S2.ITEM11);
  
       
       
    COMMIT;
    
    --������ʷ����
    --�����ǰԭ����Ա��ʷ������Ϣɾ����
    --�������������Ա��Ϣ���룻
    
    --�����Ա���Ϣ
    DELETE FROM ID_BA_GENDER T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_GENDER
      (crcpid, FINANCECODE, DATEOPENED, GENDER, GLOBERECORD, REPEATNUM)
      SELECT crcpid, FINANCECODE, DATEOPENED, ITEM7, GLOBERECORD, ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 1;
    
    COMMIT;
    
    
    --�������������Ϣ
    DELETE FROM ID_BA_BIRTHDAY T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_BIRTHDAY
      (crcpid, FINANCECODE, DATEOPENED, BIRTHDAY, GLOBERECORD, REPEATNUM)
      SELECT crcpid, FINANCECODE, DATEOPENED, ITEM11, GLOBERECORD, ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 2;
    
    COMMIT;    
    
    
    --�������ѧ����Ϣ
    DELETE FROM ID_BA_EDULEVEL T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_EDULEVEL
      (crcpid, FINANCECODE, DATEOPENED, EDULEVEL, GLOBERECORD, REPEATNUM)
      SELECT crcpid, FINANCECODE, DATEOPENED, ITEM6, GLOBERECORD, ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 3;
    
    COMMIT;   
    
    
    --�������ѧλ��Ϣ
    DELETE FROM ID_BA_EDUDEGREE T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_EDUDEGREE
      (crcpid, FINANCECODE, DATEOPENED, EDUDEGREE, GLOBERECORD, REPEATNUM)
      SELECT crcpid, FINANCECODE, DATEOPENED, ITEM7, GLOBERECORD, ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 4;
    
    COMMIT;       
    
    
    --����μӹ���������Ϣ
    DELETE FROM ID_BA_WORKDATE T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_WORKDATE
      (crcpid, FINANCECODE, DATEOPENED, WORKDATE, GLOBERECORD, REPEATNUM)
      SELECT crcpid, FINANCECODE, DATEOPENED, ITEM11, GLOBERECORD, ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 5;
    
    COMMIT;       
    
    
    --��������������Ϣ
    DELETE FROM ID_BA_RETIREDDATE T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_RETIREDDATE
      (crcpid, FINANCECODE, DATEOPENED, RETIREDDATE, GLOBERECORD, REPEATNUM)
      SELECT crcpid, FINANCECODE, DATEOPENED, ITEM11, GLOBERECORD, ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 6;
    
    COMMIT;      
    
    
    
    --��������ַ��Ϣ
    DELETE FROM ID_BA_RESIDENCE T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_RESIDENCE
      (crcpid, FINANCECODE, DATEOPENED, RESIDENCE, GLOBERECORD, REPEATNUM)
      SELECT crcpid, FINANCECODE, DATEOPENED, ITEM4, GLOBERECORD, ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 7;
    
    COMMIT;    
    
    
    --����绰��Ϣ
    DELETE FROM ID_BA_TEL T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_TEL
      (crcpid, FINANCECODE, DATEOPENED, TEL, TELTYPE, GLOBERECORD, REPEATNUM)
      SELECT crcpid,
             FINANCECODE,
             DATEOPENED,
             ITEM2,
             ITEM1,
             GLOBERECORD,
             ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 21;
    
    COMMIT;    
    
    
    --�����ַ��Ϣ
    DELETE FROM ID_BA_LOC T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_LOC
      (crcpid,
       FINANCECODE,
       DATEOPENED,
       ADDRESSTYPE,
       ADDRESS,
       ZIP,
       CITY,
       GLOBERECORD,
       REPEATNUM)
      SELECT crcpid,
             FINANCECODE,
             DATEOPENED,
             ITEM1,
             ITEM4,
             ITEM5,
             ITEM9,
             GLOBERECORD,
             ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 22;
    
    COMMIT;    
    
    
    --��������Ϣ
    DELETE FROM ID_BA_HOME T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_HOME
      (crcpid,
       FINANCECODE,
       DATEOPENED,
       RESCONDITION,
       RESIDENCE,
       RESZIP,
       HOMETEL,
       GLOBERECORD,
       REPEATNUM)
      SELECT crcpid,
             FINANCECODE,
             DATEOPENED,
             ITEM1,
             ITEM2,
             ITEM5,
             ITEM4,
             GLOBERECORD,
             ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 23;
    
    COMMIT;            
    
    
    --���������Ϣ
    DELETE FROM ID_BA_SPOUSE T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_SPOUSE
      (crcpid,
       FINANCECODE,
       DATEOPENED,
       MARRIAGE,
       SPOUSENAME,
       SPOUSECERTTYPE,
       SPOUSECERTNO,
       SPOUSEOFFICE,
       SPOUSETEL,
       GLOBERECORD,
       REPEATNUM)
      SELECT crcpid,
             FINANCECODE,
             DATEOPENED,
             ITEM6,
             ITEM4,
             ITEM1,
             ITEM3,
             ITEM2,
             ITEM9,
             GLOBERECORD,
             ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 24;
    
    COMMIT;            
    
        
    --�����ҵ��Ϣ
    DELETE FROM ID_BA_EMPLOYMENT T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_EMPLOYMENT
      (crcpid,
       FINANCECODE,
       DATEOPENED,
       COMPANY,
       ENTERPRISETYPE,
       STARTYEAR,
       OCCUPATION,
       DUTY,
       CASTE,
       INDUSTRY,
       OCCADDRESS,
       OCCZIP,
       GLOBERECORD,
       REPEATNUM)
      SELECT crcpid,
             FINANCECODE,
             DATEOPENED,
             ITEM2,
             ITEM9,
             ITEM6,
             ITEM1,
             ITEM7,
             ITEM8,
             ITEM3,
             ITEM4,
             ITEM5,
             GLOBERECORD,
             ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 25;
    
    COMMIT;                
            
    
    --������������Ϣ
   DELETE FROM ID_BA_ANNUALINCOME T
     WHERE EXISTS (SELECT 1 FROM ID_BA_ASKQUEUE S WHERE S.crcpid = T.crcpid);
    
    COMMIT;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_BA_ANNUALINCOME
      (crcpid, FINANCECODE, DATEOPENED, ANNUALINCOME, GLOBERECORD, REPEATNUM)
      SELECT crcpid, FINANCECODE, DATEOPENED, ITEM5, GLOBERECORD, ITEM10
        FROM ID_BA_ASKINFOEXCHANGE T
       WHERE T.RECORDTYPE = 26;
    
    COMMIT;      



    UPDATE ID_PD_ASKQUEUE T
    SET T.STATUS = '4'        --ǰ̨�Ѵ���
    WHERE T.STATUS = '3';
    
    COMMIT;
    END IF;
      --������Ա��ʶ
    delete from ID_QU_CERTIFICATE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid 
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_CERTIFICATE
      (
        crcpid         ,
        NAME        ,
        CERTTYPE    ,
        CERTNO      ,
        QUERYRESULTCODE  
      )
      SELECT 
        *
       FROM ID_BA_CERTIFICATE T ;
    
    commit;
    
      --�����Ա���Ϣ
    delete from ID_QU_GENDER t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_GENDER
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        GENDER      ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        *
       FROM ID_BA_GENDER T ;
    
    commit;
    
    
    --�������������Ϣ
    delete from ID_QU_BIRTHDAY t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_BIRTHDAY
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        BIRTHDAY    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        *
       FROM ID_BA_BIRTHDAY T ;
    
    commit;    
    
    
    --�������ѧ����Ϣ
    delete from ID_QU_EDULEVEL t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_EDULEVEL
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        EDULEVEL    ,
        GLOBERECORD ,
        REPEATNUM   
      )
     SELECT 
        *
       FROM ID_BA_EDULEVEL T ;
    
    commit;   
    
    
    --�������ѧλ��Ϣ
    delete from ID_QU_EDUDEGREE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_EDUDEGREE
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        EDUDEGREE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      
       SELECT 
        *
       FROM ID_BA_EDUDEGREE T ;
    
    commit;       
    
    
    --����μӹ���������Ϣ
    delete from ID_QU_WORKDATE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_WORKDATE
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        WORKDATE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        *
       FROM ID_BA_WORKDATE T ;
    
    commit;       
    
    
    --��������������Ϣ
    delete from ID_QU_RETIREDDATE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_RETIREDDATE
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        RETIREDDATE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        *
       FROM ID_BA_RETIREDDATE T ;
    
    commit;      
    
    
    
    --��������ַ��Ϣ
    delete from ID_QU_RESIDENCE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_RESIDENCE
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        RESIDENCE    ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        *
       FROM ID_BA_RESIDENCE T ;
    
    commit;    
    
    
    --����绰��Ϣ
    delete from ID_QU_TEL t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_TEL
      (
          crcpid         ,
          FINANCECODE ,
          dateOPENED  ,
          TEL         ,
          TELTYPE     ,
          GLOBERECORD ,
          REPEATNUM   
      )
      SELECT 
        *
       FROM ID_BA_TEL T ;
    
    commit;    
    
    
    --�����ַ��Ϣ
    delete from ID_QU_LOC t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_LOC
      (
        crcpid         ,
        FINANCECODE ,
        dateOPENED  ,
        ADDRESSTYPE ,
        ADDRESS     ,
        ZIP         ,
        CITY        ,
        GLOBERECORD ,
        REPEATNUM   
      )
      SELECT 
        *
       FROM ID_BA_LOC T ;
    
    commit;    
    
    
    --��������Ϣ
    delete from ID_QU_HOME t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_HOME
      (
        crcpid          ,
        FINANCECODE  ,
        dateOPENED   ,
        RESCONDITION ,
        RESIDENCE    ,
        RESZIP       ,
        HOMETEL      ,
        GLOBERECORD  ,
        REPEATNUM    
      )
      SELECT 
        *
       FROM ID_BA_HOME T ;
    
    commit;            
    
    
    --���������Ϣ
    delete from ID_QU_SPOUSE t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    ); 
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_SPOUSE
      (
        crcpid            ,
        FINANCECODE    ,
        dateOPENED     ,
        MARRIAGE       ,
        SPOUSENAME     ,
        SPOUSECERTTYPE ,
        SPOUSECERTNO   ,
        SPOUSEOFFICE   ,
        SPOUSETEL      ,
        GLOBERECORD    ,
        REPEATNUM       
      )
      SELECT 
        *
       FROM ID_BA_SPOUSE T ;
    
    commit;            
    
        
    --�����ҵ��Ϣ
    delete from ID_QU_EMPLOYMENT t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_EMPLOYMENT
      (
        crcpid            ,
        FINANCECODE    ,
        dateOPENED     ,
        COMPANY        ,
        ENTERPRISETYPE ,
        STARTYEAR      ,
        OCCUPATION     ,
        DUTY           ,
        CASTE          ,
        INDUSTRY       ,
        OCCADDRESS     ,
        OCCZIP         ,
        GLOBERECORD    ,
        REPEATNUM        
      )
      SELECT 
        *
       FROM ID_BA_EMPLOYMENT T ;
    
    commit;                
            
    
    --������������Ϣ
    delete from ID_QU_ANNUALINCOME t
    where exists 
    (
       select 1
       from ID_AD_PIN s
       where s.crcpid = t.crcpid and s.Ptypecode is null
    );
    
    commit;
    
    INSERT /*+ APPEND NOLOGGING PARALLEL */
    INTO ID_QU_ANNUALINCOME
      (
        crcpid          ,
        FINANCECODE  ,
        dateOPENED   ,
        ANNUALINCOME ,
        GLOBERECORD  ,
        REPEATNUM           
      )
      SELECT 
        *
       FROM ID_BA_ANNUALINCOME T ;
    
    commit;  
        --����
        
    select sysdate into v_updateendtime
    from dual;
    
    insert into ID_MN_SYSTEMLOG 
    (operationtype,pno,pstarttime,pendtime,presult)
    values (3,v_movebacknum,v_updatestarttime,v_updateendtime,'�ɹ�');
    commit;
EXCEPTION
    when others then
    select sysdate into v_updateendtime
    from dual;
    insert into ID_MN_SYSTEMLOG
    (operationtype,pno,pstarttime,pendtime,presult)
    values (3,0,v_updatestarttime,v_updateendtime,'ʧ��');
    commit;


end moveback;
/

prompt
prompt Creating procedure RETRIEVE
prompt ===========================
prompt
create or replace procedure retrieve(modnum number) is
v_type char(1); --���γ�ȡ�ĳ�ȡ���� 0:�Ŵ����� 1��ȫ������
v_starttime date; --���γ�ȡ�ĳ�ȡ��ʼʱ��
v_endtime date; --���γ�ȡ�ĳ�ȡ��ֹʱ��
v_retrieveendtime date;
v_pno number(16);
begin

  execute immediate 'truncate table ID_TT_TRADEINFO'; 
  execute immediate 'truncate table ID_TT_PERSON'; 
  execute immediate 'truncate table ID_TT_ADDRESS';
  execute immediate 'truncate table ID_TT_EMPLOYMENT';
  execute immediate 'truncate table ID_TT_CERTIFICATE'; 
  execute immediate 'truncate table ID_TT_AUTHQUERY';
  execute immediate 'truncate table ID_BA_ASKQUEUE';  
  execute immediate 'truncate table ID_BA_ASKINFOEXCHANGE';
  execute immediate 'truncate table ID_TT_SETTLEMENTACCOUNTINFO'; 
  execute immediate 'truncate table ID_TT_ACT_FUND';
  execute immediate 'truncate table ID_TT_ENDOWMENTPERSONINFO';
  execute immediate 'truncate table ID_TT_ENDOWMENTPERSONINFO_PAID';
  execute immediate 'truncate table ID_TT_TEL_PERSONINFO'; 
  execute immediate 'truncate table ID_TT_TEL_ACCEPTINFO';
  --��ʼ����ȡ��������ñ�
  
  
  select t.tabletype into v_type 
  from (select row_number() over (order by endtime DESC) rank,s.tabletype,s.retrieveresulte 
        from ID_MN_DATALOG s) t 
  where t.Retrieveresulte is null
    and t.rank = 1;
  --ȡ���γ�ȡ�ĳ�ȡ����
  
  
  select t.Endtime into v_starttime 
  from 
  (select row_number() over (order by endtime DESC) rank,s.endtime 
   from ID_MN_DATALOG s 
   where s.Retrieveresulte = '0') t
  where t.rank = 1;
  --ȡ�Ŵ����ݵĳ�ȡ��ʼʱ��
  
  
  select t.endtime into v_endtime 
  from (select row_number() over (order by endtime DESC) rank,s.endtime,s.retrieveresulte
        from ID_MN_DATALOG s) t 
  where t.Retrieveresulte is null
    and t.rank = 1;
  --ȡ�Ŵ����ݵĳ�ȡ��ֹʱ��
  
  delete from ID_MN_DATALOG t 
  where t.retrieveresulte is null
    and t.endtime < v_endtime;
  commit;
  --ɾ�����ܴ��ڵĸ�����
  
  
  insert /*+append nologging*/ into ID_TT_TRADEINFO 
  (pin,RECID,DATEOPENED)
  select pin,substr(RECID,0,31),DATEOPENED 
  from TRADEINFO_UNPAID
  where gettime between v_starttime and v_endtime;  
  commit;

  insert /*+append nologging*/ into ID_TT_TRADEINFO 
  (pin,RECID,DATEOPENED)
  select pin,substr(RECID,0,31),DATEOPENED 
  from TRADEINFO_PAID
  where gettime between v_starttime and v_endtime;
  commit;
  
  insert /*+append nologging*/ into ID_TT_TRADEINFO 
  (pin,RECID,DATEOPENED)
  select pin,substr(RECID,0,31),DATEOPENED 
  from TRADEINFO
  where gettime between v_starttime and v_endtime;
  commit;
  --��ȡ���ϲ����ױ�


  insert /*+append nologging*/ into ID_TT_PERSON 
  (pin,FINANCECODE,GENDER,MARRIAGE,EDUDEGREE,EDULEVEL,SPOUSECERTTYPE,SPOUSENAME,
   SPOUSECERTNO,SPOUSEOFFICE,SPOUSETEL,MOBILETEL,OFFICETEL,ADDRESS,RESIDENCE,HOMETEL,
   BIRTHDAY,ZIP,RECID)
  select pin,
       FINANCECODE,
       decode(gender, 1, 1, 2, 2, null), 
       decode(marriage,10,1,20,2,21,2,22,2,23,2,30,3,40,4,null), 
       decode(edudegree, 0, 5, 1, 1, 2, 2, 3, 3, 4, 4,null) , 
       decode(edulevel,10,1,20,2,30,3,40,4,50,5,60,6,70,7,80,8,90,9,null) ,
       spousecerttype,spousename,SPOUSECERTNO,SPOUSEOFFICE,SPOUSETEL,MOBILETEL,OFFICETEL,
       decode(ADDRESS,'��ȱ',null,address),RESIDENCE,HOMETEL,
       case
       when birthday between to_date('18900101', 'yyyymmdd') and sysdate then
            birthday
            else
            null
       end case,
       decode(zip,'000000',null,'999999',null,zip),
       substr(recid,0,31) 
  from person 
  where gettime between v_starttime and v_endtime;
  commit;
  
  insert /*+append nologging*/ into ID_TT_PERSON 
  (pin,FINANCECODE,GENDER,MARRIAGE,EDUDEGREE,EDULEVEL,SPOUSECERTTYPE,SPOUSENAME,
   SPOUSECERTNO,SPOUSEOFFICE,SPOUSETEL,MOBILETEL,OFFICETEL,ADDRESS,RESIDENCE,HOMETEL,
   BIRTHDAY,ZIP,RECID)
  select pin,
       FINANCECODE,
       decode(gender, 1, 1, 2, 2, null), 
       decode(marriage,10,1,20,2,21,2,22,2,23,2,30,3,40,4,null), 
       decode(edudegree, 0, 5, 1, 1, 2, 2, 3, 3, 4, 4,null) , 
       decode(edulevel,10,1,20,2,30,3,40,4,50,5,60,6,70,7,80,8,90,9,null) ,
       spousecerttype,spousename,SPOUSECERTNO,SPOUSEOFFICE,SPOUSETEL,MOBILETEL,OFFICETEL,
       decode(ADDRESS,'��ȱ',null,address),RESIDENCE,HOMETEL,
       case
       when birthday between to_date('18900101', 'yyyymmdd') and sysdate then
            birthday
            else
            null
       end case,
       decode(zip,'000000',null,'999999',null,zip),
       substr(recid,0,31) 
  from person_his 
  where gettime between v_starttime and v_endtime;
  commit;
  --��ȡ���ϲ������ֱ�׼����Ա��
  
 
  insert /*+append nologging*/ into ID_TT_ADDRESS 
  (pin,FINANCECODE,RESCONDITION,RESIDENCE,RESZIP,RECID)
  select pin,FINANCECODE,decode(rescondition,'1','1','2','2',null),
       decode(Residence,'��ȱ',null,residence),
       decode(reszip,'000000',null,'999999',null,reszip),substr(recid,0,31)
  from address 
  where gettime between v_starttime and v_endtime;
  commit;
  
  insert /*+append nologging*/ into ID_TT_ADDRESS 
  (pin,FINANCECODE,RESCONDITION,RESIDENCE,RESZIP,RECID)
  select pin,FINANCECODE,decode(rescondition,'1','1','2','2',null),
       decode(Residence,'��ȱ',null,residence),
       decode(reszip,'000000',null,'999999',null,reszip),substr(recid,0,31)
  from address_his 
  where gettime between v_starttime and v_endtime;
  commit;
  --��ȡ���ϲ������ֱ�׼����ס��

 
  insert /*+append nologging*/ into ID_TT_EMPLOYMENT 
  (pin,financecode,DUTY,CASTE,OCCUPATION,INDUSTRY,
   STARTYEAR,OCCZIP,COMPANY,OCCADDRESS,ANNUALINCOME,RECID)
  select pin,
       FINANCECODE,
       decode(duty,1,1,2,2,3,3,4,4,null),
       decode(caste,1,1,2,2,3,3,0,4,null),
       decode(occupation,'0','1','1','2','3','3','4','4','5','5','6',6,'X','7','Y','8',null),
       decode(industry,'A','a','B','b','C','c','D','d','E','e','F','f','G','g','H','h','I','i',
                                  'J','j','K','k','L','l','M','m','N','n','O','o','P','p','Q','q',
                                  'R','r','S','s','T','t',null),
       case when startyear between 1890 and to_number(to_char(sysdate,'yyyy'))
            then startyear
            else null
       end case,
       decode(occzip,'000000',null,'999999',null,occzip),
       decode(COMPANY,'��ȱ',null,company),decode(OCCADDRESS,'��ȱ',null,occaddress),
       case when ANNUALINCOME < 100
            then null
            else ANNUALINCOME
       end case,
            substr(RECID,0,31)
  from employment 
  where gettime between v_starttime and v_endtime;
  commit;
  
  insert /*+append nologging*/ into ID_TT_EMPLOYMENT 
  (pin,financecode,DUTY,CASTE,OCCUPATION,INDUSTRY,
   STARTYEAR,OCCZIP,COMPANY,OCCADDRESS,ANNUALINCOME,RECID)
  select pin,
       FINANCECODE,
       decode(duty,1,1,2,2,3,3,4,4,null),
       decode(caste,1,1,2,2,3,3,0,4,null),
       decode(occupation,'0','1','1','2','3','3','4','4','5','5','6',6,'X','7','Y','8',null),
       decode(industry,'A','a','B','b','C','c','D','d','E','e','F','f','G','g','H','h','I','i',
                                  'J','j','K','k','L','l','M','m','N','n','O','o','P','p','Q','q',
                                  'R','r','S','s','T','t',null),
       case when startyear between 1890 and to_number(to_char(sysdate,'yyyy'))
            then startyear
            else null
       end case,
       decode(occzip,'000000',null,'999999',null,occzip),
       decode(COMPANY,'��ȱ',null,company),decode(OCCADDRESS,'��ȱ',null,occaddress),
       case when ANNUALINCOME < 100
            then null
            else ANNUALINCOME
       end case,
            substr(RECID,0,31)
  from employment_his 
  where gettime between v_starttime and v_endtime;
  commit;
  --��ȡ���ϲ������ֱ�׼����ҵ��
  

  insert /*+append  nologging*/ into ID_TT_CERTIFICATE 
  (pin,name,CERTTYPE,CERTNO)
  select PIN,NAME,CERTTYPE,CERTNO 
  from certificate 
  where gettime between v_starttime and v_endtime;
  commit;
  --��ȡ��Ա��ʶ��
  
   
  insert /*+append  nologging*/ into ID_TT_AUTHQUERY 
  (name,CERTNO,QUERYRESULTCODE)
  select name,CERTNO,decode(CertnoCheckResult,'1',1,'2',2,0) 
  from PersonCheckInfo 
  where GetTime between v_starttime and v_endtime;
  commit;  
  --��ȡ�����˲�����


  update ID_PD_ASKQUEUE 
  set Status='1' 
  where status in ('0','4') and updatetime between v_starttime and v_endtime;
  commit;
  
  insert /*+append nologging*/ into ID_BA_ASKQUEUE 
  (crcpid,UPDATETIME,STATUS)
  select crcpid,max(updatetime),'1' 
  from ID_PD_ASKQUEUE t 
  where t.status='1'
  group by t.crcpid,t.updatetime;  
  commit;
  
  insert /*+append nologging*/ into ID_BA_ASKINFOEXCHANGE 
  (crcpid,FINANCECODE,UPDATETIME,RECORDTYPE,DATEOPENED,SHOWTYPE,OPTTYPE,
   globerecord,ITEM1,ITEM2,ITEM3,ITEM4,ITEM5,ITEM6,ITEM7,ITEM8,ITEM9,ITEM10,ITEM11)
  select t.crcpid,t.FINANCECODE,t.UPDATETIME,t.RECORDTYPE,t.DATEOPENED,t.SHOWTYPE,t.OPTTYPE,
         t.globerecord,t.ITEM1,t.ITEM2,t.ITEM3,t.ITEM4,t.ITEM5,t.ITEM6,t.ITEM7,t.ITEM8,
         t.ITEM9,t.ITEM10,t.ITEM11 
  from ID_PD_ASKINFOEXCHANGE t,ID_BA_ASKQUEUE s 
  where s.crcpid=t.crcpid and s.updatetime=t.updatetime;
  commit;
  --������Ϣ��ȡ

     
  if v_type = '1' then --���Ŵ����ݳ�ȡ����
  select t.Endtime into v_starttime 
  from 
  (select row_number() over (order by endtime DESC) rank,s.endtime 
   from ID_MN_DATALOG s 
   where s.Retrieveresulte = '0' and s.tabletype = '1') t
  where t.rank = 1;
  --ȡ���Ŵ��ĳ�ȡ��ʼʱ��


  insert /*+append nologging*/ into ID_TT_SETTLEMENTACCOUNTINFO 
  (name,certno,certtype,furnisherorg,tel,address,dateopened,zip)
  select name,certno,certtype,bankcode,TEL,ADDRESS,dateopened,
      decode(zip,'000000',null,'999999',null,zip)
  from SETTLEMENTACCOUNTINFO 
  where gettime between v_starttime and v_endtime;
  commit;
  --��ȡ�����ֱ�׼�����˽����ʻ���

 
  insert /*+append  nologging*/ into ID_TT_ACT_FUND 
  (pin,financecode,company,tel,nature,opendate)
  select pin,FINANCECODE,COMPANY,TEL,
       decode(nature,'200','1','100','2','300','3','400','4','700','6','500','5',
                     '510','5','520','5','530','5','540','5','550','5','560','5',
                     '570','5','600','5','610','5','620','5','630','5','640','5',null),
       opendate
  from ACT_FUND 
  where gettime between v_starttime and v_endtime;
  commit;
  
  insert /*+append nologging*/ into ID_TT_ACT_FUND 
  (pin,financecode,company,tel,nature,opendate)
  select pin,FINANCECODE,COMPANY,TEL,
       decode(nature,'200','1','100','2','300','3','400','4','700','6','500','5',
                     '510','5','520','5','530','5','540','5','550','5','560','5',
                     '570','5','600','5','610','5','620','5','630','5','640','5',null),
       opendate
  from HIS_FUND 
  where gettime between v_starttime and v_endtime;
  commit;
  --��ȡ���ϲ������ֱ�׼���������
  

  insert /*+append  nologging*/ into ID_TT_ENDOWMENTPERSONINFO 
  (insuranceorgcode,name,occureddate,certtype,certno,sex,birthdate,
   enterprisename,enterprisetype,economytype,industrycode,workdate)
  select insuranceorgcode,name,occureddate,certtype,certno,
         decode(sex,'1',1,'2',2,null),
         case
             when birthdate between to_date('18900101', 'yyyymmdd') and sysdate then
             birthdate
             else
             null
         end case,enterprisename,
         decode(enterprisetype,'20','1','21','1','22','1','23','1','30','2','40','4','50','4','70',
         '4','10','5','99','5','60','6',null),
         decode(economytype,'100','5','110','5','120','5','130','5','140','5','141','5','142','5',
         '143','5','149','5','150','5','151','5','159','5','160','5','170','5','171','5','172','5',
         '173','5','174','5','179','5','190','5','200','5','210','5','220','5','230','5','240','5',
         '290','5','300','5','310','5','320','5','330','5','340','5','390','5','900','5','999','6',
         '175','6',null),
         decode(industrycode,'1','a','2','b','3','c','4','d','5','e','6','f','7','g','8','h','9','i',
         '10','j','11','k','12','l','13','m','14','n','15','o','16','p','17','q','18','r','19','s',
         '20','t',null),
         case
             when workdate between to_date('18900101', 'yyyymmdd') and sysdate then
                  workdate
                  else
                  null
         end case
  from EndowmentPersonInfo_acc
  where loaddate between v_starttime and v_endtime;
  commit;
  --��ȡ�����ֱ�׼���籣�ɴ�
  
 
  insert /*+append nologging*/ into ID_TT_ENDOWMENTPERSONINFO_PAID 
  (insuranceorgcode,name,OCCUREDDATE,CERTTYPE,certno,SEX,BIRTHDATE,enterprisename,RETIREDDATE)
  select insuranceorgcode,name,occureddate,certtype,certno,
         decode(sex,'1',1,'2',2,null),
         case
             when birthdate between to_date('18900101','yyyymmdd') and sysdate then
                  birthdate
                  else
                  null
         end case,enterprisename,
         case
             when retiredate between to_date('18900101','yyyymmdd') and sysdate then
                  retiredate
                  else
                  null
         end case
  from EndowmentPersonInfo_paid
  where loaddate between v_starttime and v_endtime;
  commit; 
  --��ȡ�����ֱ�׼���籣����
  

  insert /*+append  nologging*/ into ID_TT_TEL_PERSONINFO 
  (BusinessmanCode,Areacode,NAME,CERTTYPE,CERTNO,TELNO,ADDRESS,MSGID,RECORDID)
  select BusinessmanCode,Areacode,NAME,CERTTYPE,CERTNO,TELNO,ADDRESS,MSGID,RECORDID 
  from TEL1_PersonInfo 
  where loaddate between v_starttime and v_endtime;
  commit;
  --��ȡ�����ֱ�׼��������Ա��
  

  insert /*+append  nologging*/ into ID_TT_TEL_ACCEPTINFO 
  (DATEOPENED,MSGID,RECORDID)
  select DATEOPENED,MSGID,RECORDID 
  from TEL1_AcceptInfo 
  where loaddate between v_starttime and v_endtime;
  commit;
  
  insert /*+append nologging*/ into ID_TT_TEL_ACCEPTINFO 
  (DATEOPENED,MSGID,RECORDID)
  select DATEOPENED,MSGID,RECORDID 
  from TEL1_AcceptInfo_his
  where loaddate between v_starttime and v_endtime;
  commit;
  --��ȡ���ϲ����Žɷѱ�

  
end if;

execute immediate 'truncate table ID_AD_AUTHQUERY' ;
execute immediate 'truncate table ID_AD_PIN';
execute immediate 'truncate table ID_AD_EMPLOYMENT';
execute immediate 'truncate table ID_AD_HOME';
execute immediate 'truncate table ID_AD_LOC';
execute immediate 'truncate table ID_AD_PERSON';
execute immediate 'truncate table ID_AD_SPOUSE';
execute immediate 'truncate table ID_AD_TEL';
execute immediate 'truncate table ID_TEMP_TEL_PERSONINFO';
execute immediate 'truncate table ID_ADTEMP_CERTIFICATE';
--��ʼ���ӹ���������

merge into ID_AD_CERTIFICATE t
using ID_TT_CERTIFICATE s
on (t.crcpid = s.pin)
when matched then 
update set t.name=s.name
when not matched then
insert (t.crcpid,t.name,t.certtype,t.certno) values (s.pin,s.name,s.certtype,s.certno);
commit;

insert into ID_AD_PIN (crcpid,mod) 
select pin,mod(pin,modnum) from ID_TT_CERTIFICATE;
commit;
--��Ա��ʶ��

insert /*+append nologging*/ into ID_AD_AUTHQUERY select distinct b.crcpid,a.QUERYRESULTCODE from ID_TT_AUTHQUERY a,ID_AD_CERTIFICATE b
where a.name=b.name and b.certno=a.certno and b.certtype='0' ;
commit;
--�����˲���������
/*insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)     
values (pin,financecode,dateopened,gender,birthday,edulevel,edudegree,residence)
when marriage is not null then into ID_AD_SPOUSE (crcpid,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)     
values (pin,financecode,dateopened,marriage,spousename,spousecertno,spousecerttype,spouseoffice,spousetel)
when hometel is not null or mobiletel is not null or officetel  is not null  then into ID_AD_TEL (crcpid,financecode,dateopened,hometel,mobiletel,officetel)        
values (pin,financecode,dateopened,hometel,mobiletel,officetel)
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,Addresstype) 
values (pin,financecode,dateopened,address,zip,'1')
when 1=1 then into ID_AD_PIN (crcpid) values (pin)
select a.pin,a.financecode,b.dateopened,a.gender,a.birthday,a.edulevel,a.edudegree,a.residence,a.marriage,
a.spousename,a.spousecerttype,a.spousecertno,a.spousetel,a.spouseoffice,a.hometel,a.officetel,a.mobiletel,
a.address,a.zip  
from ID_TT_PERSON a,ID_TT_TRADEINFO b where a.pin=b.pin and a.recid=b.recid;
commit;
\*��Ȼ��Ϣ��*\
insert all
when rescondition is not null then into ID_AD_HOME (crcpid,financecode,dateopened,residence,reszip,rescondition,hometel)       
values (pin,financecode,dateopened,residence,reszip,rescondition,hometel)
when residence is not null or reszip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,residence,reszip,'2')
when 1=1 then into ID_AD_PIN (crcpid) values (pin)
select t.pin,t.financecode,s.dateopened,t.residence,t.reszip,t.rescondition,t.hometel 
from (select a.pin,a.financecode,a.residence,a.reszip,a.rescondition,b.hometel,a.recid 
from ID_TT_ADDRESS a left join ID_TT_PERSON b on a.recid=b.recid and a.pin=b.pin) t,ID_TT_TRADEINFO s where t.pin=s.pin and t.recid=s.recid;
commit;
\*��ס��Ϣ��*\
insert all
when company is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome) 
values (pin,financecode,dateopened,occupation,company,industry,OccAddress,OccZIP,startyear,duty,caste,annualincome)
when occaddress is not null or occzip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)
values (pin,financecode,dateopened,occaddress,occzip,'3')
when 1=1 then into ID_AD_PIN (crcpid) values (pin)
select a.pin,a.financecode,b.dateopened,a.occupation,a.company,a.industry,a.startyear,a.duty,a.caste,a.annualincome,a.occaddress,a.occzip 
from ID_TT_EMPLOYMENT a,ID_TT_TRADEINFO b where a.pin=b.pin and a.recid=b.recid;
commit;
\*��ҵ��Ϣ��*\*/

partitionfilter(modnum);

insert all
when address is not null or zip is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,zip,addresstype)        
values (crcpid,furnisherorg,dateopened,address,zip,'1')
when tel is not null then into ID_AD_TEL (crcpid,financecode,dateopened,othertel)         
values (crcpid,furnisherorg,dateopened,tel)
when 1=1 then into ID_AD_PIN (crcpid,mod) values (crcpid,mod(crcpid,modnum))
select crcpid,furnisherorg,dateopened,address,zip,tel 
from ID_TT_SETTLEMENTACCOUNTINFO t,ID_AD_CERTIFICATE s where t.name=s.name and t.certno=s.certno and t.certtype=s.certtype ;
commit;
/*���˼����ʻ�*/
insert all
when company is not null and opendate is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype)  
values (pin,financecode,opendate,company,nature)
when tel is not null and opendate is not null then into ID_AD_TEL (crcpid,financecode,dateopened,officetel)        
values (pin,financecode,opendate,tel)
when opendate is not null then into ID_AD_PIN (crcpid,mod) values (pin,mod(pin,modnum))
select pin,financecode,opendate,company,nature,tel 
from ID_TT_ACT_FUND;
commit;
/*������*/
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,workdate)     
values (crcpid,InsuranceOrgCode,OccuredDate,sex,birthdate,workdate)
when enterprisename is not null then into ID_AD_EMPLOYMENT (crcpid,financecode,dateopened,company,enterprisetype,industry)
values (crcpid,InsuranceOrgCode,OccuredDate,enterprisename,nvl(enterprisetype,economytype),industrycode)
when 1=1 then into ID_AD_PIN (crcpid,mod) values (crcpid,mod(crcpid,modnum))
select crcpid,InsuranceOrgCode,OccuredDate,sex,birthdate,workdate,enterprisename,enterprisetype,economytype,industrycode 
from ID_TT_ENDOWMENTPERSONINFO a,ID_AD_CERTIFICATE b where a.name=b.name and a.certtype=b.certtype and a.certno=b.certno;
commit;
/*�籣�ɴ�*/
insert all
when 1=1 then into ID_AD_PERSON (crcpid,financecode,dateopened,gender,birthday,retireddate)     
values (crcpid,InsuranceOrgCode,nvl(retireddate,OccuredDate),sex,birthdate,retireddate)
when enterprisename is not null then into ID_AD_EMPLOYMENT  (crcpid,financecode,dateopened,company)
values (crcpid,InsuranceOrgCode,nvl(retireddate,OccuredDate),enterprisename)
when 1=1 then into ID_AD_PIN (crcpid,mod) values (crcpid,mod(crcpid,modnum))
select crcpid,InsuranceOrgCode,OccuredDate,sex,birthdate,retireddate,enterprisename 
from ID_TT_ENDOWMENTPERSONINFO_PAID a,ID_AD_CERTIFICATE b where a.name=b.name and a.certtype=b.certtype and a.certno=b.certno;
commit;
/*�籣����*/

insert /*+append*/ into ID_TEMP_TEL_PERSONINFO (dateopened,telno,Address,name,certtype,certno,BUSINESSMANCODE,AREACODE) 
select a.dateopened,b.telno,b.address,b.name,b.certtype,b.certno,b.businessmancode,b.areacode 
from ID_TT_TEL_ACCEPTINFO a,ID_TT_TEL_PERSONINFO b where a.msgid=b.msgid and a.recordid=b.recordid;
commit;

insert all
when telno is not null then into ID_AD_TEL (crcpid,financecode,dateopened,othertel)        
values (crcpid,'E3339'||BusinessmanCode||Areacode||'0',dateopened,telno)
when address is not null then into ID_AD_LOC (crcpid,financecode,dateopened,address,addresstype)
values (crcpid,'E3339'||BusinessmanCode||Areacode||'0',dateopened,address,'4')       
when 1=1 then into ID_AD_PIN (crcpid,mod) values (crcpid,mod(crcpid,modnum))
select s.crcpid,t.BusinessmanCode,t.Areacode,t.dateopened,t.telno,t.address 
from ID_AD_CERTIFICATE s,ID_TEMP_TEL_PERSONINFO t 
where t.name=s.name and t.certtype=s.certtype and t.certno=s.certno;
commit;
/*����*/

insert /*+append nologging*/ into ID_AD_PIN (crcpid,mod) select s.crcpid,mod(s.crcpid,modnum) from ID_PD_ASKINFOEXCHANGE s,ID_PD_ASKQUEUE t 
where s.crcpid=t.crcpid and s.updatetime=t.updatetime and t.status='1';
commit;
update ID_BA_ASKINFOEXCHANGE set item5 = null where crcpid in (select t.crcpid from ID_AD_CERTIFICATE t) 
and recordType=26 and item5 <100;
commit;
/*������Ϣ*/

--������



insert into ID_ADtemp_certificate select distinct crcpid,ptypecode from ID_AD_PIN;
commit;
--��Ա������ȥ��
merge into ID_ADtemp_certificate t
using ID_AD_AUTHQUERY s
on (t.crcpid = s.crcpid)
when matched then 
update set t.ptypecode= null
when not matched then
insert (t.crcpid,t.Ptypecode) values (s.crcpid,1);

commit;

execute immediate 'truncate table ID_AD_PIN';

insert into ID_AD_PIN (crcpid,PTYPECODE,mod) select crcpid,ptypecode,mod(crcpid,modnum) 
from ID_ADTEMP_CERTIFICATE;
commit;

--�����˲���

  execute immediate 'truncate table ID_BA_CERTIFICATE';
  execute immediate 'truncate table ID_BA_BIRTHDAY';
  execute immediate 'truncate table ID_BA_EMPLOYMENT';
  execute immediate 'truncate table ID_BA_HOME';
  execute immediate 'truncate table ID_BA_LOC';
  execute immediate 'truncate table ID_BA_EDUDEGREE';
  execute immediate 'truncate table ID_BA_EDULEVEL';
  execute immediate 'truncate table ID_BA_GENDER';
  execute immediate 'truncate table ID_BA_RESIDENCE';
  execute immediate 'truncate table ID_BA_RETIREDDATE';
  execute immediate 'truncate table ID_BA_SPOUSE';
  execute immediate 'truncate table ID_BA_TEL';
  execute immediate 'truncate table ID_BA_WORKDATE';
  execute immediate 'truncate table ID_BA_ANNUALINCOME';
  --��ջ�Ǩ��������

select sysdate into v_retrieveendtime
from dual;

select count(*) into v_pno
from ID_AD_PIN;

update ID_MN_DATALOG t
set t.retrieveresulte = 0
where t.retrieveresulte is null;

insert into ID_MN_SYSTEMLOG
    (operationtype,pno,pstarttime,pendtime,presult)
    values (1,0,v_starttime,v_retrieveendtime,'�ɹ�');
commit;


/*exception
    when others then
    select sysdate into v_retrieveendtime
    from dual;
    
    insert into ID_MN_SYSTEMLOG
    (operationtype,pno,pstarttime,pendtime,presult)
    values (1,0,v_starttime,v_retrieveendtime,'ʧ��');
    
    update ID_MN_DATALOG t
    set t.retrieveresulte = 1
    where t.retrieveresulte is null;
    commit;
*/
end retrieve;
/

prompt
prompt Creating package body COMMON_UTIL
prompt =================================
prompt
create or replace package body common_util is


  /*========== д���ݳ�ȡ������ȴ洢������־ ==========*/

  PROCEDURE write_procedure_log(v_procedurename     varchar2,
                                v_resultflag        varchar2,
                                v_detail            varchar2) IS

    /*��������*/
  BEGIN

    /*д��־��Ϣ */
    INSERT INTO id_procedurelog
      (ID,                      --ϵͳ��־���к�
       ProcedureName,           --�洢��������
       ResultFlag,              --���״̬
       Detail,                  --��ϸ����
       OperateTime,             --����ʱ��
       Reserve1                 --Ԥ���ֶ�1
       )
    VALUES
      (seq_mprocedurelog_id.nextval,
       v_procedurename,
       v_resultflag,
       v_detail,
       sysdate,
       null);

    COMMIT;

    /*�쳣����*/
  EXCEPTION
    WHEN OTHERS THEN
                                          --�жϳ����쳣
      ROLLBACK;                           --�ع�
      RAISE;
  END;

 

  /*========== �쳣����������� ==========*/
procedure output_exception_info is



   --v_sql       varchar2(100);
   v_message   varchar2(200);

begin

     --�������
     /*v_sql := 'set serveroutput on';
     execute immediate v_sql;*/

/*     SET SERVEROUTPUT ON;*/

     v_message :='�洢����ִ�д����쳣��ֹ��ϸ�ڲμ��洢������־';

     Dbms_Output.put_line(v_message);


end;


end common_util;
/


spool off
