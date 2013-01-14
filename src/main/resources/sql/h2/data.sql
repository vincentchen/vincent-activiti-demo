INSERT INTO ACT_ID_GROUP VALUES ('admin', 1, '管理员', 'security-role');
INSERT INTO ACT_ID_GROUP VALUES ('user', 1, '用户', 'security-role');
INSERT INTO ACT_ID_GROUP VALUES ('deptLeader', 1, '部门领导', 'assignment');
INSERT INTO ACT_ID_GROUP VALUES ('hr', 1, '人事', 'assignment');

INSERT INTO ACT_ID_USER VALUES ('admin', 1, 'Admin', 'Kad', 'admin@kad.com', '000000', '');
INSERT INTO ACT_ID_MEMBERSHIP VALUES ('admin', 'user');
INSERT INTO ACT_ID_MEMBERSHIP VALUES ('admin', 'admin');

INSERT INTO ACT_ID_USER VALUES ('kafeitu', 1, 'Henry', 'Yan', 'yanhonglei@gmail.com', '000000', '');
INSERT INTO ACT_ID_MEMBERSHIP VALUES ('kafeitu', 'admin');

INSERT INTO ACT_ID_USER VALUES ('hruser', 1, 'Lili', 'Zhang', 'hr@gmail.com', '000000', '');
INSERT INTO ACT_ID_MEMBERSHIP VALUES ('hruser', 'user');
INSERT INTO ACT_ID_MEMBERSHIP VALUES ('hruser', 'hr');

INSERT INTO ACT_ID_USER VALUES ('leaderuser', 1, 'Jhon', 'Li', 'leader@gmail.com', '000000', '');
INSERT INTO ACT_ID_MEMBERSHIP VALUES ('leaderuser', 'user');
INSERT INTO ACT_ID_MEMBERSHIP VALUES ('leaderuser', 'deptLeader');

UPDATE ACT_GE_PROPERTY
SET VALUE_ = '10'
WHERE NAME_ = 'next.dbid';