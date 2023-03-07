DROP USER hrd CASCADE;
CREATE USER hrd 
IDENTIFIED BY hrd;
CREATE USER hrd
IDENTIFIED BY hrd;
GRANT CREATE SESSION TO hrd;
GRANT CREATE TABLE                      TO hrd;
GRANT CREATE VIEW                       TO hrd;
GRANT CREATE CLUSTER                    TO hrd;
GRANT ALTER SESSION                     TO hrd;
GRANT CREATE SEQUENCE                   TO hrd;
GRANT CREATE SYNONYM                    TO hrd;
GRANT CREATE DATABASE LINK              TO hrd;
GRANT CREATE DIMENSION                  TO hrd;
GRANT QUERY REWRITE                     TO hrd;
GRANT CREATE MATERIALIZED VIEW          TO hrd;
GRANT CREATE VIEW                       TO hrd;
ALTER USER hrd quota unlimited on SYSAUX;


DROP USER hrp CASCADE;
CREATE USER hrp 
IDENTIFIED BY hrp;
CREATE USER hrp
IDENTIFIED BY hrp;
GRANT CREATE SESSION TO hrp;
GRANT CREATE TABLE                      TO hrp;
GRANT CREATE VIEW                       TO hrp;
GRANT CREATE CLUSTER                    TO hrp;
GRANT ALTER SESSION                     TO hrp;
GRANT CREATE SEQUENCE                   TO hrp;
GRANT CREATE SYNONYM                    TO hrp;
GRANT CREATE DATABASE LINK              TO hrp;
GRANT CREATE DIMENSION                  TO hrp;
GRANT QUERY REWRITE                     TO hrp;
GRANT CREATE MATERIALIZED VIEW          TO hrp;
GRANT CREATE VIEW                       TO hrp;
ALTER USER hrp quota unlimited on SYSAUX;


EXIT;
