CREATE TABLE ACT_HI_PROCINST (
    ID_ VARCHAR(64) NOT NULL,
    PROC_INST_ID_ VARCHAR(64) NOT NULL,
    BUSINESS_KEY_ VARCHAR(255),
    PROC_DEF_ID_ VARCHAR(64) NOT NULL,
    START_TIME_ datetime NOT NULL,
    END_TIME_ datetime,
    DURATION_ bigint,
    START_USER_ID_ VARCHAR(255),
    START_ACT_ID_ VARCHAR(255),
    END_ACT_ID_ VARCHAR(255),
    SUPER_PROCESS_INSTANCE_ID_ VARCHAR(64),
    DELETE_REASON_ VARCHAR(4000),
    PRIMARY KEY (ID_),
    UNIQUE (PROC_INST_ID_),
    UNIQUE ACT_UNIQ_HI_BUS_KEY (PROC_DEF_ID_, BUSINESS_KEY_)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_bin;

CREATE TABLE ACT_HI_ACTINST (
    ID_ VARCHAR(64) NOT NULL,
    PROC_DEF_ID_ VARCHAR(64) NOT NULL,
    PROC_INST_ID_ VARCHAR(64) NOT NULL,
    EXECUTION_ID_ VARCHAR(64) NOT NULL,
    ACT_ID_ VARCHAR(255) NOT NULL,
    ACT_NAME_ VARCHAR(255),
    ACT_TYPE_ VARCHAR(255) NOT NULL,
    ASSIGNEE_ VARCHAR(64),
    START_TIME_ datetime NOT NULL,
    END_TIME_ datetime,
    DURATION_ bigint,
    PRIMARY KEY (ID_)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_bin;

CREATE TABLE ACT_HI_TASKINST (
    ID_ VARCHAR(64) NOT NULL,
    PROC_DEF_ID_ VARCHAR(64),
    TASK_DEF_KEY_ VARCHAR(255),
    PROC_INST_ID_ VARCHAR(64),
    EXECUTION_ID_ VARCHAR(64),
    NAME_ VARCHAR(255),
    PARENT_TASK_ID_ VARCHAR(64),
    DESCRIPTION_ VARCHAR(4000),
    OWNER_ VARCHAR(64),
    ASSIGNEE_ VARCHAR(64),
    START_TIME_ datetime NOT NULL,
    END_TIME_ datetime,
    DURATION_ bigint,
    DELETE_REASON_ VARCHAR(4000),
    PRIORITY_ INTEGER,
    DUE_DATE_ datetime,
    PRIMARY KEY (ID_)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_bin;

CREATE TABLE ACT_HI_DETAIL (
    ID_ VARCHAR(64) NOT NULL,
    TYPE_ VARCHAR(255) NOT NULL,
    PROC_INST_ID_ VARCHAR(64) NOT NULL,
    EXECUTION_ID_ VARCHAR(64) NOT NULL,
    TASK_ID_ VARCHAR(64),
    ACT_INST_ID_ VARCHAR(64),
    NAME_ VARCHAR(255) NOT NULL,
    VAR_TYPE_ VARCHAR(255),
    REV_ INTEGER,
    TIME_ datetime NOT NULL,
    BYTEARRAY_ID_ VARCHAR(64),
    DOUBLE_ DOUBLE,
    LONG_ bigint,
    TEXT_ VARCHAR(4000),
    TEXT2_ VARCHAR(4000),
    PRIMARY KEY (ID_)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_bin;

CREATE TABLE ACT_HI_COMMENT (
    ID_ VARCHAR(64) NOT NULL,
    TYPE_ VARCHAR(255),
    TIME_ datetime NOT NULL,
    USER_ID_ VARCHAR(255),
    TASK_ID_ VARCHAR(64),
    PROC_INST_ID_ VARCHAR(64),
    ACTION_ VARCHAR(255),
    MESSAGE_ VARCHAR(4000),
    FULL_MSG_ LONGBLOB,
    PRIMARY KEY (ID_)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_bin;

CREATE TABLE ACT_HI_ATTACHMENT (
    ID_ VARCHAR(64) NOT NULL,
    REV_ INTEGER,
    USER_ID_ VARCHAR(255),
    NAME_ VARCHAR(255),
    DESCRIPTION_ VARCHAR(4000),
    TYPE_ VARCHAR(255),
    TASK_ID_ VARCHAR(64),
    PROC_INST_ID_ VARCHAR(64),
    URL_ VARCHAR(4000),
    CONTENT_ID_ VARCHAR(64),
    PRIMARY KEY (ID_)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE utf8_bin;

CREATE index ACT_IDX_HI_PRO_INST_END ON ACT_HI_PROCINST(END_TIME_);
CREATE index ACT_IDX_HI_PRO_I_BUSKEY ON ACT_HI_PROCINST(BUSINESS_KEY_);
CREATE index ACT_IDX_HI_ACT_INST_START ON ACT_HI_ACTINST(START_TIME_);
CREATE index ACT_IDX_HI_ACT_INST_END ON ACT_HI_ACTINST(END_TIME_);
CREATE index ACT_IDX_HI_DETAIL_PROC_INST ON ACT_HI_DETAIL(PROC_INST_ID_);
CREATE index ACT_IDX_HI_DETAIL_ACT_INST ON ACT_HI_DETAIL(ACT_INST_ID_);
CREATE index ACT_IDX_HI_DETAIL_TIME ON ACT_HI_DETAIL(TIME_);
CREATE index ACT_IDX_HI_DETAIL_NAME ON ACT_HI_DETAIL(NAME_);
CREATE index ACT_IDX_HI_DETAIL_TASK_ID ON ACT_HI_DETAIL(TASK_ID_);