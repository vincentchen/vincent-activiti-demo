DROP index ACT_IDX_EXEC_BUSKEY ON ACT_RU_EXECUTION;
DROP index ACT_IDX_TASK_CREATE ON ACT_RU_TASK;
DROP index ACT_IDX_IDENT_LNK_USER ON ACT_RU_IDENTITYLINK;
DROP index ACT_IDX_IDENT_LNK_GROUP ON ACT_RU_IDENTITYLINK;
DROP index ACT_IDX_VARIABLE_TASK_ID ON ACT_RU_VARIABLE;

ALTER TABLE ACT_GE_BYTEARRAY
    DROP FOREIGN KEY ACT_FK_BYTEARR_DEPL;

ALTER TABLE ACT_RU_EXECUTION
    DROP FOREIGN KEY ACT_FK_EXE_PROCINST;

ALTER TABLE ACT_RU_EXECUTION
    DROP FOREIGN KEY ACT_FK_EXE_PARENT;

ALTER TABLE ACT_RU_EXECUTION
    DROP FOREIGN KEY ACT_FK_EXE_SUPER;
    
ALTER TABLE ACT_RU_IDENTITYLINK
    DROP FOREIGN KEY ACT_FK_TSKASS_TASK;

ALTER TABLE ACT_RU_IDENTITYLINK
    DROP FOREIGN KEY ACT_FK_ATHRZ_PROCEDEF;
    
ALTER TABLE ACT_RU_TASK
	DROP FOREIGN KEY ACT_FK_TASK_EXE;

ALTER TABLE ACT_RU_TASK
	DROP FOREIGN KEY ACT_FK_TASK_PROCINST;
	
ALTER TABLE ACT_RU_TASK
	DROP FOREIGN KEY ACT_FK_TASK_PROCDEF;
    
ALTER TABLE ACT_RU_VARIABLE
    DROP FOREIGN KEY ACT_FK_VAR_EXE;
    
ALTER TABLE ACT_RU_VARIABLE
	DROP FOREIGN KEY ACT_FK_VAR_PROCINST;

ALTER TABLE ACT_RU_VARIABLE
    DROP FOREIGN KEY ACT_FK_VAR_BYTEARRAY;

ALTER TABLE ACT_RU_JOB
    DROP FOREIGN KEY ACT_FK_JOB_EXCEPTION;
    
ALTER TABLE ACT_RU_EVENT_SUBSCR
    DROP FOREIGN KEY ACT_FK_EVENT_EXEC;
    
DROP index ACT_IDX_ATHRZ_PROCEDEF ON ACT_RU_IDENTITYLINK;
DROP index ACT_IDX_EVENT_SUBSCR_CONFIG_ ON ACT_RU_EVENT_SUBSCR;
    
DROP TABLE if EXISTS ACT_GE_PROPERTY;
DROP TABLE if EXISTS ACT_RU_VARIABLE;
DROP TABLE if EXISTS ACT_GE_BYTEARRAY;
DROP TABLE if EXISTS ACT_RE_DEPLOYMENT;
DROP TABLE if EXISTS ACT_RU_IDENTITYLINK;
DROP TABLE if EXISTS ACT_RU_TASK;
DROP TABLE if EXISTS ACT_RE_PROCDEF;
DROP TABLE if EXISTS ACT_RU_EXECUTION;
DROP TABLE if EXISTS ACT_RU_JOB;
DROP TABLE if EXISTS ACT_RU_EVENT_SUBSCR;