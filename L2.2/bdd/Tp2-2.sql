SELECT table_name FROM ALL_TABLES
WHERE OWNER='GILLES_HUBERT' and table_name like 'TP2_%';

SELECT COLUMN_NAME, TABLE_NAME FROM ALL_TAB_COLUMNS
WHERE OWNER='GILLES_HUBERT' and table_name like 'TP2_%';

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME FROM ALL_CONSTRAINTS
WHERE OWNER='GILLES_HUBERT' and table_name like 'TP2_%';

SELECT * FROM GILLES_HUBERT.TP2_APPARTENIR;
SELECT * FROM GILLES_HUBERT.TP2_CIRCUIT;
SELECT * FROM GILLES_HUBERT.TP2_COURSE;
SELECT * FROM GILLES_HUBERT.TP2_ECURIE;
SELECT * FROM GILLES_HUBERT.TP2_EFFECTUER;
SELECT * FROM GILLES_HUBERT.TP2_EFFECTUERQUALIFICATION;
SELECT * FROM GILLES_HUBERT.TP2_PILOTE;