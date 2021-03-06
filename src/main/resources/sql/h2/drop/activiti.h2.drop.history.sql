DROP index ACT_IDX_HI_PRO_INST_END;
DROP index ACT_IDX_HI_PRO_I_BUSKEY;
DROP index ACT_IDX_HI_ACT_INST_START;
DROP index ACT_IDX_HI_ACT_INST_END;
DROP index ACT_IDX_HI_DETAIL_PROC_INST;
DROP index ACT_IDX_HI_DETAIL_ACT_INST;
DROP index ACT_IDX_HI_DETAIL_TIME;
DROP index ACT_IDX_HI_DETAIL_NAME;
DROP index ACT_IDX_HI_DETAIL_TASK_ID;

ALTER TABLE ACT_HI_PROCINST
    DROP CONSTRAINT ACT_UNIQ_HI_BUS_KEY;
    
DROP TABLE ACT_HI_PROCINST if EXISTS;
DROP TABLE ACT_HI_ACTINST if EXISTS;
DROP TABLE ACT_HI_TASKINST if EXISTS;
DROP TABLE ACT_HI_DETAIL if EXISTS;
DROP TABLE ACT_HI_COMMENT if EXISTS;
DROP TABLE ACT_HI_ATTACHMENT if EXISTS;
