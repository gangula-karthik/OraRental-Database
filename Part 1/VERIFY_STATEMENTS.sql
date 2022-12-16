-- SQL STATEMENT TO VERIFY IF SEQUENCE EXISTS
SELECT SEQUENCE_NAME, INCREMENT_BY, LAST_NUMBER, CYCLE_FLAG, CACHE_SIZE
FROM USER_SEQUENCES;

-- SQL STATEMENT TO VERIFY IF PRIMARY KEY EXISTS
SELECT TABLE_NAME, CONSTRAINT_NAME, CONSTRAINT_TYPE, STATUS
FROM USER_CONSTRAINTS
where  TABLE_NAME like 'ORARENT_STAR_BILLINGS' AND CONSTRAINT_TYPE = 'F';

-- SQL STATEMENT TO VERIFY IF FOREIGN KEY EXISTS
SELECT table_name, constraint_name, constraint_type, status
FROM user_constraints
where table_name like 'ORARENT_STAR_BILLINGS' and constraint_type = 'R';


-- SQL STATEMENT TO VERIFY NOT NULL CONSTRAINTS
SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE, DATA_LENGTH, NULLABLE
FROM all_tab_columns
WHERE table_name LIKE 'ORARENT_%';  